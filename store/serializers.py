from decimal import Decimal
from .models import Customer,Product,OrderItems,Brand ,Review,Order ,Cart,CartItem 
from rest_framework import serializers
class ProductSerializer(serializers.ModelSerializer):
    price = serializers.SerializerMethodField()
    price_after_sale =serializers.SerializerMethodField()
    brand = serializers.SerializerMethodField()
    size = serializers.SerializerMethodField()

    def get_size(self,product:Product):
        if product.size=='L':
            return "Large"
        elif product.size=='M':
            return "Medium"
        elif product.size=="S":
            return "Small"
    def get_brand(self,product:Product):
        return product.brand.brand_name
    def get_price_after_sale(self,product:Product):
        if product.gender =='S':
            return str(round(product.price * Decimal(0.7))) + ' EGP'
        else: return 
    def get_price(self,product:Product):
        return str(round(product.price,2)) +' EGP'
    data_filter = serializers.SerializerMethodField()
    def get_data_filter(self,product:Product):
        if product.gender=='S':
            return "Sales"
        elif product.gender == 'W':
            return 'Women'
        elif product.gender=='M':
            return 'Men'
    class Meta:
        model = Product 
        fields=['id','name','description','price','type','brand','data_filter','price_after_sale','size','color','image']

class FilterSerializer(serializers.ModelSerializer):
    price = serializers.SerializerMethodField()
    brand = serializers.SerializerMethodField()
    size= serializers.SerializerMethodField()
    price_after_sale = serializers.SerializerMethodField()
    def get_price_after_sale(self,product:Product):
        if product.gender=='S':
            return str(round(product.price*Decimal(0.7),2))+" EGP"
        else:
            return None
    def get_size(self,product:Product):
        if product.size=='L':
            return "Large"
        elif product.size=='M':
            return "Medium"
        elif product.size=="S":
            return "Small"
    def get_brand(self,product:Product):
        return product.brand.brand_name
    def get_price(self,product:Product):
        return str(round(product.price,2)) +' EGP'
    filter = serializers.SerializerMethodField()
    def get_filter(self,product:Product):
        if product.category.category_name=='    ':
            return 'Accessories'
        return product.category.category_name.capitalize()
    
    class Meta:
        model = Product 
        fields=['id','name','description','type','brand','category','price','size','filter','price_after_sale','color','image']
class BrandSerializer(serializers.ModelSerializer):
    class Meta:
        model = Brand 
        fields=['id','brand_name','image']

class SalesSerializer(serializers.ModelSerializer):
    price_after_sale =serializers.SerializerMethodField()
    price = serializers.SerializerMethodField()
    def get_price(self,product:Product):
        return str(product.price) +' EGP' 
    def get_price_after_sale(self,product:Product):
        return str(round(product.price* Decimal(0.7))) +' EGP'

    class Meta:
        model = Product 
        fields= ['id','name','description','type','brand','size','color','price','price_after_sale','image']

class ReviewSerializer(serializers.ModelSerializer):
    class Meta:
        model = Review
        fields = ['date','description','rate']
    def create(self, validated_data):
        product_id = self.context['product_id']
        return Review.objects.create(product_id=product_id, **validated_data)

#****************************cart serializer ***************************

class CartItemsSerializer(serializers.ModelSerializer):
    sub_total_price = serializers.SerializerMethodField()
    product = ProductSerializer(read_only=True)
    def get_sub_total_price(self,cart_item:CartItem):
        return str(cart_item.quantity*cart_item.product.price) + ' EGP'
    class Meta:
        model = CartItem 
        fields = ['id','product','quantity','sub_total_price']

class CartSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(read_only=True)
    items = CartItemsSerializer(many=True,read_only=True)
    total_price = serializers.SerializerMethodField()
    def get_total_price(self,cart:Cart):
        return str(sum(item.quantity * item.product.price for item in cart.items.all()))+" EGP"
    class Meta:
        model = Cart 
        fields = ['id','items','total_price']
#*****************add**************
class SimpleProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = Product 
        fields = ['id','name','description','price','brand','category','type','size','gender','image']
class AddCartItemSerializer(serializers.ModelSerializer):
    product = ProductSerializer
    product_id=serializers.IntegerField()
    def validate_product_id(self, value):
        if not Product.objects.filter(pk=value).exists():
            raise serializers.ValidationError(
                'No product with the given ID was found.')
        return value
    def save(self,**kwargs):
        cart_id = self.context['cart_id']
        product_id = self.validated_data['product_id']
        quantity = self.validated_data['quantity']
        try:
            cartitems = CartItem.objects.get(cart_id=cart_id,product_id=product_id)
            cartitems.quantity+=quantity
            cartitems.save()
            self.instance = cartitems
        except CartItem.DoesNotExist:
            self.instance = CartItem.objects.create(cart_id=cart_id,**self.validated_data)
        return self.instance
    class Meta:
        model = CartItem
        fields = ['id','product_id','quantity']
#******************order**********************************

class OrderItemsSerializer(serializers.ModelSerializer):
    product = ProductSerializer()
    class Meta:
        model = OrderItems
        fields = ['id','unit_price','product','quantity']

# class OrderSerializer(serializers.ModelSerializer):
#     items = OrderItemsSerializer(many=True)
#     customer = CustomerSerializer()
#     class Meta:
#         model = Order 
#         fields=['id','date','customer','items']                                                                                                 

#*************create order **************

class CreateOrderSerializer(serializers.Serializer):
    cart_id = serializers.IntegerField()
    def validate_cart_id(self,cart_id):
        if not Cart.objects.filter(pk=cart_id).exists():
            raise serializers.ValidationError('No cart with given id')
        if CartItem.objects.filter(cart_id=cart_id).count()==0:
            raise serializers.ValidationError("Your Cart is Empty")
        return cart_id
    def save(self,**kwargs):
        # customer = Customer.objects.get(pk = self.context['user_id'])     
        (customer,created) = Customer.objects.get_or_create(id=self.context['user_id'])
        order = Order.objects.create(customer=customer)
        cart_item = CartItem.objects.select_related('product')\
        .filter(cart_id = self.validated_data['cart_id'])
        order_item = [
            OrderItems(
                order=order,
                product=item.product,
                unit_price=item.product.price,
                quantity=item.quantity
            ) for item in cart_item
        ]

        Cart.objects.filter(pk=self.validated_data['cart_id']).delete()

        return order
class CustomerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Customer 
        fields = ["id",'name','email']
# class LoginSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = Customer 
#         fields= ['email']

class MakeOrderSerializer(serializers.Serializer):
    customer_id = serializers.IntegerField()
    def validate_cust_id(self,value):
        if not Customer.objects.filter(id=value).exists():
            raise serializers.ValidationError("No Customer with given id")
        return value 
    def save(self,**kwargs):
            
            # customer = Customer.objects.get(pk = self.context['user_id'])     
            order = Order.objects.create(ccustomer_id = self.validated_data['customer_id'])
            cart_item = CartItem.objects.select_related('product')
            order_item = [
                OrderItems(
                    order=order,
                    product=item.product,
                    unit_price=item.product.price,
                    quantity=item.quantity
                ) for item in cart_item
            ]
            return OrderItems.objects.bulk_create(order_item)

class OrderSerializer(serializers.ModelSerializer):
    items = OrderItemsSerializer(many=True)
    total_price =serializers.SerializerMethodField()
    def get_total_price(self,order:Order):
        return str(sum([item.quantity * item.product.price for item in order.items.all()]))+' EGP'
    customer = CustomerSerializer()
    class Meta:
        model = Order 
        fields=['id','date','customer','items','total_price']     

class SimpleOrderProduct(serializers.ModelSerializer):
    quantity = serializers.SerializerMethodField()
    class Meta:
        model = Product 
        fields = ['id','name','quantity']