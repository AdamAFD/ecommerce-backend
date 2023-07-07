from django.http import QueryDict
from django.shortcuts import render,get_object_or_404
from django.db.models import  Q,F
from rest_framework import status 
from decimal import Decimal 
from django.db.models import Min,Max
from django_filters.rest_framework import DjangoFilterBackend 
from .models import Product ,Brand ,Order,Customer ,Cart ,CartItem,OrderItems
from .serializers import ProductSerializer ,BrandSerializer ,CartSerializer,OrderSerializer,CartItemsSerializer,CreateOrderSerializer,AddCartItemSerializer,SalesSerializer,FilterSerializer,SimpleProductSerializer,CustomerSerializer,MakeOrderSerializer,SimpleOrderProduct
from rest_framework.generics import ListCreateAPIView,RetrieveUpdateAPIView,GenericAPIView,CreateAPIView ,DestroyAPIView,ListAPIView,RetrieveAPIView,RetrieveDestroyAPIView
from rest_framework.viewsets import ModelViewSet
from rest_framework.decorators import api_view
from rest_framework.response import Response 
from rest_framework.filters import SearchFilter
from rest_framework.viewsets import GenericViewSet
from rest_framework.mixins import UpdateModelMixin,RetrieveModelMixin,DestroyModelMixin,CreateModelMixin
# Create your views here.
class MainProductViewSet(ListCreateAPIView):
    lookup_field = 'id'
    # queryset = Product.objects.all()
    serializer_class = ProductSerializer 
    filter_backends = [DjangoFilterBackend]
    filterset_fields = {'price':['gt','lt']}

    def get_queryset(self):
        queryset = Product.objects.all()
        types = ["Perfumes", "Sunglasses", "Bracelet", "Watches", "Shoes", "T-shirts", "Blouse", "Pullover", "Jackets", "Pants", "Bags"]
        brands = ['zara', 'dior', 'rolex', 'nike', 'louis vuitton', 'rayban', 'adidas']
        genders = ['M', 'F', 'S']

        query_params = QueryDict(self.request.GET.urlencode())

        brand_filters = query_params.getlist("brand")
        type_filters = query_params.getlist("type")
        gender_filters = query_params.getlist("gender")

        if gender_filters:
            queryset = queryset.filter(gender__in=gender_filters)
        if brand_filters:
            queryset = queryset.filter(brand__brand_name__in=brand_filters)
        if type_filters:
            queryset = queryset.filter(type__in=type_filters)
        return queryset

    
class AllMenViewSet(ListAPIView):
    serializer_class = FilterSerializer 
    lookup_field = 'id'
    def get(self, request, args, **kwargs):
        if 'id' in kwargs:
            return self.retrieve(request,args, kwargs)
        return self.list(request, *args, kwargs)
    queryset =  Product.objects.filter(gender='M').all()
    def get_queryset(self):
        queryset=Product.objects.filter(gender='M')
        filter = self.request.query_params.get("filter")
        if filter:
            if filter=='Perfumes':
                filter='Accessories'
            return queryset.filter(gender='M').filter(category__category_name=filter)
        return queryset


class SalesViewSet(ListAPIView,RetrieveAPIView):
    serializer_class = FilterSerializer 
    lookup_field = 'id'
    def get(self, request, args, **kwargs):
        if 'id' in kwargs:
            return self.retrieve(request,args, kwargs)
        return self.list(request, *args, kwargs)
    queryset =  Product.objects.filter(gender='S').all()
    def get_queryset(self):
        queryset = Product.objects.filter(gender='S')
        # query_params = QueryDict(self.request.GET.urlencode())

        filter = self.request.query_params.get("filter")
        if filter:
            if filter=='Perfumes':
                filter='Accessories'
            return queryset.filter(gender='S').filter(category__category_name=filter)
        return queryset
#*************************women classes ********************

class AllWomenViewSet(ListAPIView):
    serializer_class = FilterSerializer 
    lookup_field = 'id'
    def get(self, request,args, kwargs):
        if 'id' in kwargs:
            return self.retrieve(request, *args, kwargs)
        return self.list(request, *args, **kwargs)
    queryset =  Product.objects.filter(gender='W').all()
    def get_queryset(self):
        queryset=Product.objects.filter(gender='W')
        # query_params = QueryDict(self.request.GET.urlencode())
        filter = self.request.query_params.get("filter")
        if filter:
            if filter=='Perfumes':
                filter='Accessories'
            return queryset.filter(gender='W').filter(category__category_name=filter)
        return queryset

#********************************new ************************
class AddProductViewSet(CreateAPIView):
    # lookup_field = 'id'
    # def get(self,request,*args,**kwargs):
    #     if 'id' in kwargs:
    #         return self.retrieve(self,request,*args,**kwargs)
    #     return self.list(self,request,*args,**kwargs)
    queryset = Product.objects.all()
    serializer_class = SimpleProductSerializer 

class UpdateProductViewSet(ListAPIView,RetrieveUpdateAPIView):
    lookup_field = 'id'
    def get(self,request,*args,**kwargs):
        if 'id' in kwargs:
            return self.retrieve(self,request,*args,**kwargs)
        return self.list(self,request,*args,**kwargs)
    queryset = Product.objects.all()
    serializer_class = SimpleProductSerializer

class DeleteProductViewSet(DestroyAPIView,RetrieveAPIView):
    lookup_field = 'id'
    def get(self,request,*args,**kwargs):
        if 'id' in kwargs:
            return self.retrieve(self,request,*args,**kwargs)
        return self.list(self,request,*args,**kwargs)
    queryset = Product.objects.all()
    serializer_class = SimpleProductSerializer

class RegisterViewSet(ListCreateAPIView, RetrieveAPIView):
    queryset = Customer.objects.all()
    serializer_class = CustomerSerializer

    def create(self, request, *args, **kwargs):
        username = request.data.get('name')
        email = request.data.get('email')
        customer, created = Customer.objects.get_or_create(name=username, email=email)

        if created:
            serializer = self.get_serializer(customer)
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        else:
            return Response({"error": "Customer already exists"}, status=status.HTTP_400_BAD_REQUEST)

#**********************carts*****************
class CartViewSet(CreateModelMixin,RetrieveModelMixin,DestroyModelMixin,GenericViewSet):
    queryset = Cart.objects.prefetch_related('items__product').all()
    serializer_class = CartSerializer

class CartItemViewSet(ModelViewSet):
    def get_serializer_class(self):
        if self.request.method=='POST':
            return AddCartItemSerializer
        return CartItemsSerializer

    def get_serializer_context(self):
        return {'cart_id':self.kwargs['cart_pk']}
    
    def get_queryset(self):
        return CartItem.objects.filter(cart_id=self.kwargs['cart_pk']).select_related('product')
class LoginViewSet(ListCreateAPIView,RetrieveAPIView):
    def get_queryset(self):
        email = self.request.query_params['email']
        if email is not None:
            queryset = Customer.objects.filter(email=email)
            return queryset
        else:
            return Response({"Error":"No Customer With Given email"},stateus=status.HTTP_NOT_FOUNDED)
    serializer_class=CustomerSerializer
#******************Orders**************************************
class OrderViewsSet(ModelViewSet):
    def get_serializer_context(self):   
        return {'user_id':self.request.user.id}
    def create(self,request,*args,**kwargs):
        serializer = CreateOrderSerializer(data=request.data , context={'user_id':self.request.user.id}) 
        serializer.is_valid(raise_exception=True)
        order = serializer.save()
        serializer = OrderSerializer(order)
        return Response(serializer.data)
    def get_serializer_class(self):
        if self.request.method =='POST':
            return CreateOrderSerializer
        return OrderSerializer  
    def get_queryset(self):
        if self.request.user.is_staff:
            return Order.objects.all()                       #this for exception
        (customer,created) = Customer.objects.only('id').get_or_create(id=self.request.user.id) #return id of current user
        queryset= Order.objects.filter(customer_id=id)
        return queryset
# class MakeOrderViewSet(ListCreateAPIView):
#     serializer_class = SimpleOrderProduct 
#     def create(self, request, *args, **kwargs):
#         prod = request.data.get('product_id')
#         quantity = request.data.get("quantity")
#         orderitem = OrderItems.objects.create(product=prod,quantity=quantity)
#         serializer = SimpleOrderProduct(orderitem)
#         serializer.is_valid(raise_exception=True)
#         return Response(serializer.data)
#     queryset = Product.objects.all()
