/*
 Navicat Premium Data Transfer

 Source Server         : store
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : store

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 07/07/2023 18:23:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id` ASC, `codename` ASC) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add brand', 7, 'add_brand');
INSERT INTO `auth_permission` VALUES (26, 'Can change brand', 7, 'change_brand');
INSERT INTO `auth_permission` VALUES (27, 'Can delete brand', 7, 'delete_brand');
INSERT INTO `auth_permission` VALUES (28, 'Can view brand', 7, 'view_brand');
INSERT INTO `auth_permission` VALUES (29, 'Can add category', 8, 'add_category');
INSERT INTO `auth_permission` VALUES (30, 'Can change category', 8, 'change_category');
INSERT INTO `auth_permission` VALUES (31, 'Can delete category', 8, 'delete_category');
INSERT INTO `auth_permission` VALUES (32, 'Can view category', 8, 'view_category');
INSERT INTO `auth_permission` VALUES (33, 'Can add customer', 9, 'add_customer');
INSERT INTO `auth_permission` VALUES (34, 'Can change customer', 9, 'change_customer');
INSERT INTO `auth_permission` VALUES (35, 'Can delete customer', 9, 'delete_customer');
INSERT INTO `auth_permission` VALUES (36, 'Can view customer', 9, 'view_customer');
INSERT INTO `auth_permission` VALUES (37, 'Can add order', 10, 'add_order');
INSERT INTO `auth_permission` VALUES (38, 'Can change order', 10, 'change_order');
INSERT INTO `auth_permission` VALUES (39, 'Can delete order', 10, 'delete_order');
INSERT INTO `auth_permission` VALUES (40, 'Can view order', 10, 'view_order');
INSERT INTO `auth_permission` VALUES (41, 'Can add product', 11, 'add_product');
INSERT INTO `auth_permission` VALUES (42, 'Can change product', 11, 'change_product');
INSERT INTO `auth_permission` VALUES (43, 'Can delete product', 11, 'delete_product');
INSERT INTO `auth_permission` VALUES (44, 'Can view product', 11, 'view_product');
INSERT INTO `auth_permission` VALUES (45, 'Can add review', 12, 'add_review');
INSERT INTO `auth_permission` VALUES (46, 'Can change review', 12, 'change_review');
INSERT INTO `auth_permission` VALUES (47, 'Can delete review', 12, 'delete_review');
INSERT INTO `auth_permission` VALUES (48, 'Can view review', 12, 'view_review');
INSERT INTO `auth_permission` VALUES (49, 'Can add order items', 13, 'add_orderitems');
INSERT INTO `auth_permission` VALUES (50, 'Can change order items', 13, 'change_orderitems');
INSERT INTO `auth_permission` VALUES (51, 'Can delete order items', 13, 'delete_orderitems');
INSERT INTO `auth_permission` VALUES (52, 'Can view order items', 13, 'view_orderitems');
INSERT INTO `auth_permission` VALUES (53, 'Can add cart', 14, 'add_cart');
INSERT INTO `auth_permission` VALUES (54, 'Can change cart', 14, 'change_cart');
INSERT INTO `auth_permission` VALUES (55, 'Can delete cart', 14, 'delete_cart');
INSERT INTO `auth_permission` VALUES (56, 'Can view cart', 14, 'view_cart');
INSERT INTO `auth_permission` VALUES (57, 'Can add cart item', 15, 'add_cartitem');
INSERT INTO `auth_permission` VALUES (58, 'Can change cart item', 15, 'change_cartitem');
INSERT INTO `auth_permission` VALUES (59, 'Can delete cart item', 15, 'delete_cartitem');
INSERT INTO `auth_permission` VALUES (60, 'Can view cart item', 15, 'view_cartitem');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$600000$mKBr1kdBDz1izEws9c6vqB$3rLRCcjWc/mopwVqytXP/cmqvOxkBpBaABWSepqpH6M=', '2023-07-07 12:38:21.815013', 1, 'ahmed', '', '', 'ahmed@domain.com', 1, 1, '2023-05-14 13:26:15.308146');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$600000$8FgBNICoKlZiJspIE5WbZo$NNHHORJuOrCnTuMZ07UBBxOzmIoZG3Sw3XkvvoIPypY=', '2023-05-19 17:37:20.491170', 1, 'admin0', '', '', 'admin0@domain.com', 1, 1, '2023-05-19 17:36:51.277791');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id` ASC, `group_id` ASC) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id` ASC) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_chk_1` CHECK (`action_flag` >= 0)
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (2, '2023-05-14 15:19:25.769451', '1', 'Review object (1)', 1, '[{\"added\": {}}]', 12, 2);
INSERT INTO `django_admin_log` VALUES (3, '2023-05-14 15:21:21.044952', '2', 'Review object (2)', 1, '[{\"added\": {}}]', 12, 2);
INSERT INTO `django_admin_log` VALUES (4, '2023-05-16 03:46:00.999689', '2', 'OrderItems object (2)', 3, '', 13, 2);
INSERT INTO `django_admin_log` VALUES (5, '2023-05-16 03:46:01.054542', '1', 'OrderItems object (1)', 3, '', 13, 2);
INSERT INTO `django_admin_log` VALUES (6, '2023-05-16 03:50:02.811415', '5', 'CartItem object (5)', 1, '[{\"added\": {}}]', 15, 2);
INSERT INTO `django_admin_log` VALUES (7, '2023-05-16 03:50:21.286617', '6', 'CartItem object (6)', 1, '[{\"added\": {}}]', 15, 2);
INSERT INTO `django_admin_log` VALUES (8, '2023-05-16 03:50:30.830416', '7', 'CartItem object (7)', 1, '[{\"added\": {}}]', 15, 2);
INSERT INTO `django_admin_log` VALUES (9, '2023-05-16 13:21:36.106775', '6', 'Order object (6)', 1, '[{\"added\": {}}]', 10, 2);
INSERT INTO `django_admin_log` VALUES (10, '2023-05-16 13:22:02.229613', '3', 'OrderItems object (3)', 1, '[{\"added\": {}}]', 13, 2);
INSERT INTO `django_admin_log` VALUES (11, '2023-05-16 13:22:16.172673', '4', 'OrderItems object (4)', 1, '[{\"added\": {}}]', 13, 2);
INSERT INTO `django_admin_log` VALUES (12, '2023-05-16 14:31:44.084931', '8', 'CartItem object (8)', 1, '[{\"added\": {}}]', 15, 2);
INSERT INTO `django_admin_log` VALUES (13, '2023-05-16 14:31:54.661180', '9', 'CartItem object (9)', 1, '[{\"added\": {}}]', 15, 2);
INSERT INTO `django_admin_log` VALUES (14, '2023-05-16 14:32:05.220157', '10', 'CartItem object (10)', 1, '[{\"added\": {}}]', 15, 2);
INSERT INTO `django_admin_log` VALUES (15, '2023-05-16 14:32:32.928638', '3', 'Cart object (3)', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (16, '2023-05-16 14:33:11.313741', '11', 'Order object (11)', 1, '[{\"added\": {}}]', 10, 2);
INSERT INTO `django_admin_log` VALUES (17, '2023-05-16 14:34:38.464856', '5', 'OrderItems object (5)', 1, '[{\"added\": {}}]', 13, 2);
INSERT INTO `django_admin_log` VALUES (18, '2023-05-20 05:26:25.924657', '1', 'admin', 3, '', 4, 3);
INSERT INTO `django_admin_log` VALUES (19, '2023-07-06 11:53:59.494865', '17', 'ahmed2354@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Email\", \"Password\"]}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (20, '2023-07-06 11:54:36.805873', '43', 'Order object (43)', 3, '', 10, 2);
INSERT INTO `django_admin_log` VALUES (21, '2023-07-06 11:54:51.955502', '8', '', 3, '', 9, 2);
INSERT INTO `django_admin_log` VALUES (22, '2023-07-06 11:54:52.003778', '2', '', 3, '', 9, 2);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label` ASC, `model` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'store', 'brand');
INSERT INTO `django_content_type` VALUES (14, 'store', 'cart');
INSERT INTO `django_content_type` VALUES (15, 'store', 'cartitem');
INSERT INTO `django_content_type` VALUES (8, 'store', 'category');
INSERT INTO `django_content_type` VALUES (9, 'store', 'customer');
INSERT INTO `django_content_type` VALUES (10, 'store', 'order');
INSERT INTO `django_content_type` VALUES (13, 'store', 'orderitems');
INSERT INTO `django_content_type` VALUES (11, 'store', 'product');
INSERT INTO `django_content_type` VALUES (12, 'store', 'review');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-05-11 08:51:44.555580');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-05-11 08:51:47.559216');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-05-11 08:51:48.269400');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-05-11 08:51:48.311222');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-11 08:51:48.353485');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-05-11 08:51:48.650634');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-05-11 08:51:48.858698');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-05-11 08:51:48.934859');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-05-11 08:51:48.960924');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-05-11 08:51:49.208091');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-05-11 08:51:49.232554');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-11 08:51:49.261261');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-05-11 08:51:49.538650');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-11 08:51:49.762599');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-05-11 08:51:50.010066');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-05-11 08:51:50.056366');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-11 08:51:50.293079');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2023-05-11 08:51:50.498367');
INSERT INTO `django_migrations` VALUES (19, 'store', '0001_initial', '2023-05-11 08:51:54.591889');
INSERT INTO `django_migrations` VALUES (20, 'store', '0002_remove_brand_product', '2023-05-11 09:14:45.873206');
INSERT INTO `django_migrations` VALUES (21, 'store', '0003_alter_brand_image_alter_product_image', '2023-05-12 06:42:25.755889');
INSERT INTO `django_migrations` VALUES (22, 'store', '0004_alter_brand_image_alter_product_image', '2023-05-12 06:44:21.843749');
INSERT INTO `django_migrations` VALUES (23, 'store', '0005_alter_brand_image_alter_product_image', '2023-05-12 06:53:46.204068');
INSERT INTO `django_migrations` VALUES (24, 'store', '0006_alter_product_image', '2023-05-13 06:51:29.295160');
INSERT INTO `django_migrations` VALUES (25, 'store', '0007_alter_brand_image_alter_product_image', '2023-05-13 06:59:09.744475');
INSERT INTO `django_migrations` VALUES (26, 'store', '0008_remove_order_order_time_alter_order_date_and_more', '2023-05-14 09:05:20.544779');
INSERT INTO `django_migrations` VALUES (27, 'store', '0009_alter_review_description', '2023-05-14 09:06:55.532996');
INSERT INTO `django_migrations` VALUES (28, 'store', '0010_alter_review_description_alter_review_rate', '2023-05-14 09:07:43.038233');
INSERT INTO `django_migrations` VALUES (29, 'store', '0011_review_customer', '2023-05-14 09:22:55.462544');
INSERT INTO `django_migrations` VALUES (30, 'store', '0012_alter_review_rate', '2023-05-14 10:16:40.810458');
INSERT INTO `django_migrations` VALUES (31, 'store', '0013_alter_orderitems_order', '2023-05-14 13:01:07.094048');
INSERT INTO `django_migrations` VALUES (32, 'store', '0014_cart_cartitem', '2023-05-15 20:58:23.564332');
INSERT INTO `django_migrations` VALUES (33, 'store', '0015_remove_order_product', '2023-05-15 23:31:39.692913');
INSERT INTO `django_migrations` VALUES (34, 'store', '0016_alter_orderitems_quantity', '2023-05-15 23:59:05.970141');
INSERT INTO `django_migrations` VALUES (35, 'store', '0017_rename_sex_product_gender', '2023-05-17 05:11:53.435247');
INSERT INTO `django_migrations` VALUES (36, 'store', '0018_rename_title_product_description', '2023-05-21 20:07:34.990713');
INSERT INTO `django_migrations` VALUES (37, 'store', '0019_product_sales', '2023-05-23 11:13:56.335590');
INSERT INTO `django_migrations` VALUES (38, 'store', '0020_alter_product_gender', '2023-06-01 05:24:59.516846');
INSERT INTO `django_migrations` VALUES (39, 'store', '0021_product_size', '2023-06-15 16:38:07.178518');
INSERT INTO `django_migrations` VALUES (40, 'store', '0022_product_color', '2023-06-15 16:39:26.214144');
INSERT INTO `django_migrations` VALUES (41, 'store', '0023_alter_product_size', '2023-06-15 16:45:22.957517');
INSERT INTO `django_migrations` VALUES (42, 'store', '0024_alter_product_size', '2023-06-18 22:11:48.940660');
INSERT INTO `django_migrations` VALUES (43, 'store', '0025_product_type', '2023-06-23 19:51:26.291869');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('65z1q1gsmuqlpl48xn6j4pwklv96k1se', '.eJxVjLsOAiEUBf-F2hDg8rS0328gwAVZNZAsu5Xx3w3JFtqemTlv4sOxV3-MvPkVyZUIcvndYkjP3CbAR2j3TlNv-7ZGOhV60kGXjvl1O92_gxpGnXXWmI1TELPlginNS0wouEwBgBkGKI3WkkVZUMjAoVgjImhwziVlLfl8AdsvNxg:1pyvhH:QJxyf0MvXBcE8YcU6XwtNABoOrH2Ffvd_sLFE1c_roI', '2023-05-30 14:30:39.673676');
INSERT INTO `django_session` VALUES ('7unsdedww0syqsb3827r5yjgbfpygmzg', '.eJxVjLsOAiEUBf-F2hDg8rS0328gwAVZNZAsu5Xx3w3JFtqemTlv4sOxV3-MvPkVyZUIcvndYkjP3CbAR2j3TlNv-7ZGOhV60kGXjvl1O92_gxpGnXXWmI1TELPlginNS0wouEwBgBkGKI3WkkVZUMjAoVgjImhwziVlLfl8AdsvNxg:1pzYR8:uYiaaDqpVCR2CpteoMl2fg7vsr4idpRoxgAm3rT7UJc', '2023-06-01 07:52:34.716183');
INSERT INTO `django_session` VALUES ('bej05ui1i138rwaxtxebm8hvxwgrigb0', '.eJxVjEEOwiAQRe_C2hDoQCku3XsGMswwUjVtUtqV8e7apAvd_vfef6mE21rT1sqSRlZn1anT75aRHmXaAd9xus2a5mldxqx3RR-06evM5Xk53L-Diq1-697bAQiA-i476wQDGbZRiiXK4lxAkmB8jAYEELwQ22A5DhAyFzHq_QHhWzgv:1q0HBw:MMM03WcbMURd2RozZi6tji7GQsImbQf-zekSs4Jw4qc', '2023-06-03 07:39:52.199609');
INSERT INTO `django_session` VALUES ('jvxahhgsswrih8zgladcasxyw58ka0ne', '.eJxVjEEOwiAQRe_C2hDoQCku3XsGMswwUjVtUtqV8e7apAvd_vfef6mE21rT1sqSRlZn1anT75aRHmXaAd9xus2a5mldxqx3RR-06evM5Xk53L-Diq1-697bAQiA-i476wQDGbZRiiXK4lxAkmB8jAYEELwQ22A5DhAyFzHq_QHhWzgv:1qHkj7:uWnZhFw48l6fd3AIlCvqPS1brMpG0mJAJYvc2U0XLSM', '2023-07-21 12:38:21.838215');

-- ----------------------------
-- Table structure for store_brand
-- ----------------------------
DROP TABLE IF EXISTS `store_brand`;
CREATE TABLE `store_brand`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_brand
-- ----------------------------
INSERT INTO `store_brand` VALUES (1, 'zara', 'store/images/zara.png');
INSERT INTO `store_brand` VALUES (2, 'adidas', 'store/images/addidas.png');
INSERT INTO `store_brand` VALUES (3, 'dior', 'store/images/dior.png');
INSERT INTO `store_brand` VALUES (4, 'rayban', 'store/images/Ray-Ban-logo.png');
INSERT INTO `store_brand` VALUES (6, 'rolex', 'store/images/download-removebg-preview_1_1.png');
INSERT INTO `store_brand` VALUES (7, 'louis vuitton', 'store/images/Louis_Vuitton_logo_and_wordmark_1.png');
INSERT INTO `store_brand` VALUES (8, 'nike', 'store/images/Nike-Logo_1.png');

-- ----------------------------
-- Table structure for store_cart
-- ----------------------------
DROP TABLE IF EXISTS `store_cart`;
CREATE TABLE `store_cart`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_cart
-- ----------------------------
INSERT INTO `store_cart` VALUES (3, '2023-05-16 14:32:32.927671');
INSERT INTO `store_cart` VALUES (4, '2023-05-16 14:38:37.524285');
INSERT INTO `store_cart` VALUES (9, '2023-05-19 16:32:20.477912');
INSERT INTO `store_cart` VALUES (16, '2023-05-21 10:13:22.779747');
INSERT INTO `store_cart` VALUES (17, '2023-05-21 13:03:49.358353');
INSERT INTO `store_cart` VALUES (18, '2023-05-21 13:23:18.196973');
INSERT INTO `store_cart` VALUES (22, '2023-06-30 20:05:00.047736');
INSERT INTO `store_cart` VALUES (25, '2023-07-03 19:27:21.943263');

-- ----------------------------
-- Table structure for store_cartitem
-- ----------------------------
DROP TABLE IF EXISTS `store_cartitem`;
CREATE TABLE `store_cartitem`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` smallint UNSIGNED NOT NULL,
  `cart_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `store_cartitem_cart_id_4f60ac05_fk_store_cart_id`(`cart_id` ASC) USING BTREE,
  INDEX `store_cartitem_product_id_4238d443_fk_store_product_id`(`product_id` ASC) USING BTREE,
  CONSTRAINT `store_cartitem_cart_id_4f60ac05_fk_store_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `store_cart` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `store_cartitem_product_id_4238d443_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `store_cartitem_chk_1` CHECK (`quantity` >= 0)
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_cartitem
-- ----------------------------
INSERT INTO `store_cartitem` VALUES (92, 12, 25, 235);
INSERT INTO `store_cartitem` VALUES (93, 4, 25, 222);
INSERT INTO `store_cartitem` VALUES (94, 2, 25, 212);
INSERT INTO `store_cartitem` VALUES (95, 6, 25, 232);

-- ----------------------------
-- Table structure for store_category
-- ----------------------------
DROP TABLE IF EXISTS `store_category`;
CREATE TABLE `store_category`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_category
-- ----------------------------
INSERT INTO `store_category` VALUES (1, 'clothes');
INSERT INTO `store_category` VALUES (2, 'perfumes');
INSERT INTO `store_category` VALUES (3, 'accessories');
INSERT INTO `store_category` VALUES (4, 'shoes');

-- ----------------------------
-- Table structure for store_customer
-- ----------------------------
DROP TABLE IF EXISTS `store_customer`;
CREATE TABLE `store_customer`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7778 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_customer
-- ----------------------------
INSERT INTO `store_customer` VALUES (1, 'hamdy', 'ahmedhamdy@domain.com', '512012');
INSERT INTO `store_customer` VALUES (2, '', '', '');
INSERT INTO `store_customer` VALUES (9, 'jimmy', 'ahmedgamal@gmail.com', '15151215');
INSERT INTO `store_customer` VALUES (10, 'fady', 'fadyessam@gmail.com', '484851');
INSERT INTO `store_customer` VALUES (11, 'ezzat', 'ahmedezzat', '525123');
INSERT INTO `store_customer` VALUES (12, 'hossam', 'hossammoharam@gmail.com', '2523947');
INSERT INTO `store_customer` VALUES (13, 'elnady', 'ahmedelnady@gmail.com', '55747875');
INSERT INTO `store_customer` VALUES (14, 'donga', 'bassamMohamed@gmail.com', '252437');
INSERT INTO `store_customer` VALUES (15, 'bedohany', 'bedohany@gmail.com`', '2352578');
INSERT INTO `store_customer` VALUES (16, 'sameh', 'samehosama@gmail.com', '');
INSERT INTO `store_customer` VALUES (17, 'ahmed2354@gmail.com', 'ahmed@domain.com', '2352234');

-- ----------------------------
-- Table structure for store_order
-- ----------------------------
DROP TABLE IF EXISTS `store_order`;
CREATE TABLE `store_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `payment_status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` datetime(6) NOT NULL,
  `customer_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `store_order_customer_id_13d6d43e_fk_store_customer_id`(`customer_id` ASC) USING BTREE,
  CONSTRAINT `store_order_customer_id_13d6d43e_fk_store_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `store_customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_order
-- ----------------------------
INSERT INTO `store_order` VALUES (44, 'C', '2023-07-06 11:55:39.588671', 2);

-- ----------------------------
-- Table structure for store_orderitems
-- ----------------------------
DROP TABLE IF EXISTS `store_orderitems`;
CREATE TABLE `store_orderitems`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` smallint UNSIGNED NOT NULL,
  `unit_price` decimal(6, 2) NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `store_orderitems_order_id_78989df1_fk_store_order_id`(`order_id` ASC) USING BTREE,
  INDEX `store_orderitems_product_id_8881d2a3_fk_store_product_id`(`product_id` ASC) USING BTREE,
  CONSTRAINT `store_orderitems_order_id_78989df1_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `store_orderitems_product_id_8881d2a3_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `store_orderitems_chk_1` CHECK (`quantity` >= 0)
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_orderitems
-- ----------------------------
INSERT INTO `store_orderitems` VALUES (61, 3, 760.00, 44, 128);
INSERT INTO `store_orderitems` VALUES (62, 2, 550.00, 44, 115);

-- ----------------------------
-- Table structure for store_product
-- ----------------------------
DROP TABLE IF EXISTS `store_product`;
CREATE TABLE `store_product`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` decimal(15, 2) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `brand_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  `sales` tinyint(1) NULL DEFAULT NULL,
  `size` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `store_product_brand_id_ec9e66ab_fk_store_brand_id`(`brand_id` ASC) USING BTREE,
  INDEX `store_product_category_id_574bae65_fk_store_category_id`(`category_id` ASC) USING BTREE,
  CONSTRAINT `store_product_brand_id_ec9e66ab_fk_store_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `store_brand` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `store_product_category_id_574bae65_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 559 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_product
-- ----------------------------
INSERT INTO `store_product` VALUES (62, 'new collection perfumes from jomalon', 190.00, 'jomalon perfume', 'store/images/Screenshot_2022-11-21_202441-removebg-preview_2_ImSXaRz.png', 'W', 3, 2, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (63, 'dior perfumes new collection from dior', 210.00, 'dior perfuems', 'store/images/41wmZzCneSL_3_3gpvuG4.png', 'M', 3, 2, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (64, 'dior perfumes new collection from dior', 230.00, 'dior perfumes luva', 'store/images/dior-removebg-preview_HVBOZhZ.png', 'W', 3, 2, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (65, 'suavage perfumes', 230.00, 'suvage perfumes', 'store/images/1_3We6XEI.png', 'S', 7, 2, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (66, 'date new collection perfumes for men', 250.00, 'date', 'store/images/images-removebg-preview_2_5_kzkAFww.png', 'M', 3, 2, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (67, 'vokon slight sunglasses', 250.00, 'vakon sunglass', 'store/images/2a92d765b9d531082e48810ccc46498d-removebg-preview.png', 'M', 4, 3, 1, NULL, NULL, 'Sunglasses');
INSERT INTO `store_product` VALUES (68, 'rayban squared slightly men sunglasses', 310.00, 'rayban sungalsses', 'store/images/4bc1f504d3bd2a197d7a6b9f791dc648-removebg-preview.png', 'M', 4, 3, 1, NULL, NULL, 'Sunglasses');
INSERT INTO `store_product` VALUES (69, 'rounded rayban sunglass', 260.00, 'rounded sunglass', 'store/images/23.png', 'M', 4, 3, 1, NULL, NULL, 'Sunglasses');
INSERT INTO `store_product` VALUES (70, 'rever rayban version sugnlasses', 204.00, 'rever sunglasses', 'store/images/db0137ae1645e22b0ce11d2072f8eb47-removebg-preview.png', 'M', 4, 3, 1, NULL, NULL, 'Sunglasses');
INSERT INTO `store_product` VALUES (71, 'rac n5 chanel perfume for women', 170.00, 'n5 chanel', 'store/images/photo-1541643600914-78b084683601-removebg-preview_6_63P8h6o.png', 'W', 3, 2, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (72, 'soubnabel new collection bracelte for women', 420.00, 'sounabe bracelete', 'store/images/Screenshot_2022-11-21_220008-removebg-preview_1_FNmZGYM.png', 'W', 7, 3, 1, NULL, NULL, 'Bracelet');
INSERT INTO `store_product` VALUES (73, 'gentelmen perfume new perfume version', 250.00, 'gentelman perfume', 'store/images/WhatsApp_Image_2023-05-21_at_9.46.22_PM-removebg-preview_1_tY89zz2.png', 'M', 3, 2, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (74, 'fossil watch grey for men', 460.00, 'fossil watch', 'store/images/WhatsApp_Image_2023-05-21_at_9.46.24_PM-removebg-preview_1.png', 'M', 6, 3, 1, NULL, 'grey', 'Watches');
INSERT INTO `store_product` VALUES (75, 'dior collection power perfumes', 257.00, 'dior collection', 'store/images/WhatsApp_Image_2023-05-21_at_9.46.29_PM__1_-removebg-preview_1_vNYIhus.png', 'W', 3, 2, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (76, 'pink rolex watch', 750.00, 'pink watch', 'store/images/WhatsApp_Image_2023-05-21_at_9.46.35_PM__1_-removebg-preview_1_4xTkXG9.png', 'W', 6, 3, 1, NULL, 'pink', 'Watches');
INSERT INTO `store_product` VALUES (77, 'pair sniker black for men', 250.00, 'simple sniker', 'store/images/1-1.png', 'M', 2, 4, 1, 'L', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (78, 'pair sniker black for men', 250.00, 'simple sniker', 'store/images/1-1_08cQCid.png', 'S', 2, 4, 1, 'L', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (79, 'pair sniker red for men', 250.00, 'simple sniker', 'store/images/1-2_G2qY0hL.png', 'M', 2, 4, 1, 'L', 'red', 'Shoes');
INSERT INTO `store_product` VALUES (81, 'pair snikers camel for men', 250.00, 'simple sniker', 'store/images/1-3_BMxcJ33.png', 'M', 2, 4, 1, 'L', 'camel', 'Shoes');
INSERT INTO `store_product` VALUES (83, 'pair snikers black for men', 250.00, 'simple sniker', 'store/images/0.png', 'M', 2, 4, 1, 'M', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (84, 'pair snikers black for men', 250.00, 'simple sniker', 'store/images/1-2_D7AM5qA.png', 'S', 2, 4, 1, 'M', 'red', 'Shoes');
INSERT INTO `store_product` VALUES (85, 'pair snikers red for men', 250.00, 'simple sniker', 'store/images/1-2_n6YDC9t.png', 'M', 2, 4, 1, 'M', 'red', 'Shoes');
INSERT INTO `store_product` VALUES (86, 'pair snikers camel for men', 250.00, 'simple sniker', 'store/images/1-3_ZIeig3b.png', 'M', 2, 4, 1, 'M', 'camel', 'Shoes');
INSERT INTO `store_product` VALUES (87, 'pair snikers black for men', 250.00, 'simple sniker', 'store/images/1-1_buYuqCN.png', 'M', 2, 4, 1, 'S', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (88, 'pair snikers red for men', 250.00, 'simple sniker', 'store/images/1-2_NutgoPD.png', 'M', 2, 4, 1, 'S', 'red', 'Shoes');
INSERT INTO `store_product` VALUES (89, 'pair snikers camel for men', 250.00, 'simple sniker', 'store/images/1-3_NYSup72.png', 'M', 2, 4, 1, 'S', 'camel', 'Shoes');
INSERT INTO `store_product` VALUES (90, 'pair snikers camel for men', 250.00, 'simple sniker', 'store/images/1-3_BOxR7ss.png', 'S', 2, 4, 1, 'S', 'camel', 'Shoes');
INSERT INTO `store_product` VALUES (91, 'beauty sweet shirt collection for woemen', 850.00, 'sweet shirt', 'store/images/2-1.png', 'W', 1, 1, 1, 'L', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (92, 'beauty sweet shirt collection for woemen', 850.00, 'sweet shirt', 'store/images/2-1_rkyYEA0.png', 'W', 1, 1, 1, 'M', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (93, 'beauty sweet shirt collection for woemen', 850.00, 'sweet shirt', 'store/images/2-1_DiaK7Id.png', 'W', 1, 1, 1, 'S', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (94, 'beauty sweet shirt collection for women', 850.00, 'sweet shirt', 'store/images/2-1_3fK9AXq.png', 'S', 1, 1, 1, 'L', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (95, 'beauty sweet shirt collection for woemen', 850.00, 'sweet shirt', 'store/images/2-2.png', 'W', 1, 1, 1, 'L', 'blue', 'T-shirts');
INSERT INTO `store_product` VALUES (96, 'beauty sweet shirt collection for woemen', 850.00, 'sweet shirt', 'store/images/2-2_hNSbYCg.png', 'W', 1, 1, 1, 'M', 'blue', 'T-shirts');
INSERT INTO `store_product` VALUES (97, 'beauty sweet shirt collection for woemen', 850.00, 'sweet shirt', 'store/images/2-2_73avKpe.png', 'W', 1, 1, 1, 'M', 'blue', 'T-shirts');
INSERT INTO `store_product` VALUES (98, 'beauty sweet shirt collection for woemen', 850.00, 'sweet shirt', 'store/images/2-2_knilPNh.png', 'W', 1, 1, 1, 'S', 'blue', 'T-shirts');
INSERT INTO `store_product` VALUES (99, 'beauty sweet shirt collection for woemen', 850.00, 'sweet shirt', 'store/images/2-2_SeWrlEF.png', 'S', 1, 1, 1, 'M', 'blue', 'T-shirts');
INSERT INTO `store_product` VALUES (100, 'beauty sweet shirt collection for woemen', 850.00, 'sweet shirt', 'store/images/2-3_Xmu3PU0.png', 'W', 1, 1, 1, 'L', 'pink', 'T-shirts');
INSERT INTO `store_product` VALUES (101, 'beauty sweet shirt collection for woemen', 850.00, 'sweet shirt', 'store/images/2-3_gJpRooq.png', 'W', 1, 1, 1, 'M', 'pink', 'T-shirts');
INSERT INTO `store_product` VALUES (102, 'beauty sweet shirt collection for woemen', 850.00, 'sweet shirt', 'store/images/2-3_fjpgHKn.png', 'W', 1, 1, 1, 'S', 'pink', 'T-shirts');
INSERT INTO `store_product` VALUES (103, 'mookup t-shirt made cotton collection', 320.00, 'mookup t-shirt', 'store/images/3-1.png', 'M', 1, 1, 1, 'L', 'black', 'T-shirts');
INSERT INTO `store_product` VALUES (104, 'mookup t-shirt made cotton collection', 320.00, 'mookup t-shirt', 'store/images/3-1_7RRRxuX.png', 'M', 1, 1, 1, 'M', 'black', 'T-shirts');
INSERT INTO `store_product` VALUES (105, 'mookup t-shirt made cotton collection', 320.00, 'mookup t-shirt', 'store/images/3-1_sS5TgTW.png', 'M', 1, 1, 1, 'S', 'black', 'T-shirts');
INSERT INTO `store_product` VALUES (106, 'mookup t-shirt made cotton collection', 320.00, 'mookup t-shirt', 'store/images/3-2.png', 'M', 1, 1, 1, 'L', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (107, 'mookup t-shirt made cotton collection', 320.00, 'mookup t-shirt', 'store/images/3-2_qFDo38J.png', 'M', 1, 1, 1, 'M', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (108, 'mookup t-shirt made cotton collection', 320.00, 'mookup t-shirt', 'store/images/3-2_STpVURN.png', 'M', 1, 1, 1, 'S', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (109, 'mookup t-shirt made cotton collection', 320.00, 'mookup t-shirt', 'store/images/3-3.png', 'M', 1, 1, 1, 'L', 'light blue', 'T-shirts');
INSERT INTO `store_product` VALUES (110, 'mookup t-shirt made cotton collection', 320.00, 'mookup t-shirt', 'store/images/3-3_o3zEPQ0.png', 'M', 1, 1, 1, 'M', 'light blue', 'T-shirts');
INSERT INTO `store_product` VALUES (111, 'mookup t-shirt made cotton collection', 320.00, 'mookup t-shirt', 'store/images/3-3_akhg5dy.png', 'M', 1, 1, 1, 'S', 'light blue', 'T-shirts');
INSERT INTO `store_product` VALUES (112, 'mookup t-shirt made cotton collection', 320.00, 'mookup t-shirt', 'store/images/3-1_ZmChJd2.png', 'S', 1, 1, 1, 'L', 'black', 'T-shirts');
INSERT INTO `store_product` VALUES (113, 'mookup t-shirt made cotton collection', 320.00, 'mookup t-shirt', 'store/images/3-2_mJO8NeR.png', 'S', 1, 1, 1, 'M', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (114, 'mookup t-shirt made cotton collection', 320.00, 'mookup t-shirt', 'store/images/3-3_B2NfWjV.png', 'S', 1, 1, 1, 'S', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (115, 'over size sweet shirt for men', 550.00, 'sweet shirt', 'store/images/7-1.png', 'M', 1, 1, 1, 'L', 'red', 'T-shirts');
INSERT INTO `store_product` VALUES (116, 'over size sweet shirt for men', 550.00, 'sweet shirt', 'store/images/7-1_lZuRld2.png', 'M', 1, 1, 1, 'M', 'red', 'T-shirts');
INSERT INTO `store_product` VALUES (118, 'over size sweet shirt for men', 550.00, 'sweet shirt', 'store/images/7-2.png', 'M', 1, 1, 1, 'L', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (119, 'over size sweet shirt for men', 550.00, 'sweet shirt', 'store/images/7-2_UckRuvs.png', 'M', 1, 1, 1, 'M', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (120, 'over size sweet shirt for men', 550.00, 'sweet shirt', 'store/images/7-2_Zlsbdz3.png', 'M', 1, 1, 1, 'S', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (121, 'over size sweet shirt for men', 550.00, 'sweet shirt', 'store/images/7-1_UcYZs8f.png', 'S', 1, 1, 1, 'L', 'red', 'T-shirts');
INSERT INTO `store_product` VALUES (122, 'over size sweet shirt for men', 550.00, 'sweet shirt', 'store/images/7-3.png', 'M', 1, 1, 1, 'L', 'blue', 'T-shirts');
INSERT INTO `store_product` VALUES (123, 'over size sweet shirt for men', 550.00, 'sweet shirt', 'store/images/7-3_vC1GK4Y.png', 'M', 1, 1, 1, 'M', 'blue', 'T-shirts');
INSERT INTO `store_product` VALUES (124, 'over size sweet shirt for men', 550.00, 'sweet shirt', 'store/images/7-3_MrUFK3Q.png', 'M', 1, 1, 1, 'S', 'blue', 'T-shirts');
INSERT INTO `store_product` VALUES (125, 'over size sweet shirt for men', 550.00, 'sweet shirt', 'store/images/7-2_8zrxvTm.png', 'S', 1, 1, 1, 'M', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (126, 'over size sweet shirt for men', 550.00, 'sweet shirt', 'store/images/7-3_2pCzPMR.png', 'S', 1, 1, 1, 'S', 'blue', 'T-shirts');
INSERT INTO `store_product` VALUES (127, 'wide sundress for women', 760.00, 'sundress', 'store/images/8-1_WkEDPzT.png', 'W', 1, 1, 1, 'L', 'red', 'Blouse');
INSERT INTO `store_product` VALUES (128, 'wide sundress for women', 760.00, 'sundress', 'store/images/8-1_ovlSq2S.png', 'W', 1, 1, 1, 'M', 'red', 'Blouse');
INSERT INTO `store_product` VALUES (129, 'wide sundress for women', 760.00, 'sundress', 'store/images/8-1_oYvSDJZ.png', 'W', 1, 1, 1, 'S', 'red', 'Blouse');
INSERT INTO `store_product` VALUES (130, 'wide sundress for women', 760.00, 'sundress', 'store/images/8-2.png', 'W', 1, 1, 1, 'L', 'blue', 'Blouse');
INSERT INTO `store_product` VALUES (131, 'wide sundress for women', 760.00, 'sundress', 'store/images/8-2_Yl5MiIS.png', 'W', 1, 1, 1, 'M', 'blue', 'Blouse');
INSERT INTO `store_product` VALUES (132, 'wide sundress for women', 760.00, 'sundress', 'store/images/8-2_SFA9OVd.png', 'W', 1, 1, 1, 'S', 'blue', 'Blouse');
INSERT INTO `store_product` VALUES (133, 'wide sundress for women', 760.00, 'sundress', 'store/images/8-3.png', 'W', 1, 1, 1, 'L', 'yellow', 'Blouse');
INSERT INTO `store_product` VALUES (134, 'wide sundress for women', 760.00, 'sundress', 'store/images/8-3_B36U9Ig.png', 'W', 1, 1, 1, 'M', 'yellow', 'Blouse');
INSERT INTO `store_product` VALUES (135, 'wide sundress for women', 760.00, 'sundress', 'store/images/8-3_Ez4DimY.png', 'W', 1, 1, 1, 'S', 'yellow', 'Blouse');
INSERT INTO `store_product` VALUES (136, 'wide sundress for women', 760.00, 'sundress', 'store/images/8-1_VVA39hi.png', 'S', 1, 1, 1, 'L', 'red', 'Blouse');
INSERT INTO `store_product` VALUES (137, 'wide sundress for women', 760.00, 'sundress', 'store/images/8-2_zgab4oX.png', 'S', 1, 1, 1, 'M', 'blue', 'Blouse');
INSERT INTO `store_product` VALUES (138, 'wide sundress for women', 760.00, 'sundress', 'store/images/8-3_Oug33Tn.png', 'S', 1, 1, 1, 'S', 'yellow', 'Blouse');
INSERT INTO `store_product` VALUES (139, 'pullover with sun badge on for men', 640.00, 'pullover men', 'store/images/9-1.png', 'M', 1, 1, 1, 'L', 'red', 'Pullover');
INSERT INTO `store_product` VALUES (140, 'pullover with sun badge on for men', 640.00, 'pullover men', 'store/images/9-1_3FILu8x.png', 'M', 1, 1, 1, 'M', 'red', 'Pullover');
INSERT INTO `store_product` VALUES (141, 'pullover with sun badge on for men', 640.00, 'pullover men', 'store/images/9-1_lHiwaxY.png', 'M', 1, 1, 1, 'S', 'red', 'Pullover');
INSERT INTO `store_product` VALUES (142, 'pullover with sun badge on for men', 640.00, 'pullover men', 'store/images/9-2.png', 'M', 1, 1, 1, 'L', 'yellow', 'Pullover');
INSERT INTO `store_product` VALUES (143, 'pullover with sun badge on for men', 640.00, 'pullover men', 'store/images/9-2_RwTb0b3.png', 'M', 1, 1, 1, 'M', 'yellow', 'Pullover');
INSERT INTO `store_product` VALUES (144, 'pullover with sun badge on for men', 640.00, 'pullover men', 'store/images/9-2_ZyL30m1.png', 'M', 1, 1, 1, 'S', 'yellow', 'Pullover');
INSERT INTO `store_product` VALUES (145, 'pullover with sun badge on for men', 640.00, 'pullover men', 'store/images/9-3.png', 'M', 1, 1, 1, 'L', 'blue', 'Pullover');
INSERT INTO `store_product` VALUES (146, 'pullover with sun badge on for men', 640.00, 'pullover men', 'store/images/9-3_kUO2fq6.png', 'M', 1, 1, 1, 'M', 'blue', 'Pullover');
INSERT INTO `store_product` VALUES (147, 'pullover with sun badge on for men', 640.00, 'pullover men', 'store/images/9-3_nV2JMZ4.png', 'M', 1, 1, 1, 'S', 'blue', 'Pullover');
INSERT INTO `store_product` VALUES (148, 'pullover with sun badge on for men', 640.00, 'pullover men', 'store/images/9-1_ka4hRQP.png', 'S', 1, 1, 1, 'L', 'red', 'Pullover');
INSERT INTO `store_product` VALUES (149, 'pullover with sun badge on for men', 640.00, 'pullover men', 'store/images/9-2_D9JC4nN.png', 'S', 1, 1, 1, 'M', 'yellow', 'Pullover');
INSERT INTO `store_product` VALUES (150, 'pullover with sun badge on for men', 640.00, 'pullover men', 'store/images/9-3_aDWdqsE.png', 'S', 1, 1, 1, 'S', 'blue', 'Pullover');
INSERT INTO `store_product` VALUES (151, 'jacket with buttons and flower badge in arms for women', 640.00, 'flower jacket', 'store/images/10-1.png', 'W', 1, 1, 1, 'L', 'blue', 'Jackets');
INSERT INTO `store_product` VALUES (152, 'jacket with buttons and flower badge in arms for women', 640.00, 'flower jacket', 'store/images/10-1_su2Ap4X.png', 'W', 1, 1, 1, 'M', 'blue', 'Jackets');
INSERT INTO `store_product` VALUES (153, 'jacket with buttons and flower badge in arms for women', 640.00, 'flower jacket', 'store/images/10-1_3jl3mlk.png', 'W', 1, 1, 1, 'S', 'blue', 'Jackets');
INSERT INTO `store_product` VALUES (154, 'jacket with buttons and flower badge in arms for women', 640.00, 'flower jacket', 'store/images/10-2.png', 'W', 1, 1, 1, 'L', 'yellow', 'Jackets');
INSERT INTO `store_product` VALUES (156, 'jacket with buttons and flower badge in arms for women', 640.00, 'flower jacket', 'store/images/10-2_28S2EGi.png', 'W', 1, 1, 1, 'S', 'yellow', 'Jackets');
INSERT INTO `store_product` VALUES (157, 'jacket with buttons and flower badge in arms for women', 640.00, 'flower jacket', 'store/images/10-3.png', 'W', 1, 1, 1, 'L', 'pink', 'Jackets');
INSERT INTO `store_product` VALUES (158, 'jacket with buttons and flower badge in arms for women', 640.00, 'flower jacket', 'store/images/10-3_ArlBHNC.png', 'W', 1, 1, 1, 'M', 'pink', 'Jackets');
INSERT INTO `store_product` VALUES (159, 'jacket with buttons and flower badge in arms for women', 640.00, 'flower jacket', 'store/images/103.png', 'W', 1, 1, 1, 'S', 'pink', 'Jackets');
INSERT INTO `store_product` VALUES (160, 'jacket with buttons and flower badge in arms for women', 640.00, 'flower jacket', 'store/images/10-1_AGurRf2.png', 'S', 1, 1, 1, 'L', 'blue', 'Jackets');
INSERT INTO `store_product` VALUES (161, 'jacket with buttons and flower badge in arms for women', 640.00, 'flower jacket', 'store/images/10-2_Rx3gNIw.png', 'S', 1, 1, 1, 'M', 'yellow', 'Jackets');
INSERT INTO `store_product` VALUES (162, 'jacket with buttons and flower badge in arms for women', 640.00, 'flower jacket', 'store/images/103_71q2hdm.png', 'S', 1, 1, 1, 'S', 'pink', 'Jackets');
INSERT INTO `store_product` VALUES (163, 'pullover with flowers pudge', 710.00, 'flower pullover', 'store/images/11-1.png', 'W', 1, 1, 1, 'L', 'green', 'Jackets');
INSERT INTO `store_product` VALUES (164, 'pullover with flowers pudge', 710.00, 'flower pullover', 'store/images/11-1_59aUaoi.png', 'W', 1, 1, 1, 'M', 'green', 'Jackets');
INSERT INTO `store_product` VALUES (165, 'pullover with flowers pudge', 710.00, 'flower pullover', 'store/images/11-1_Nf6ylwj.png', 'W', 1, 1, 1, 'S', 'green', 'Jackets');
INSERT INTO `store_product` VALUES (166, 'pullover with flowers pudge', 710.00, 'flower pullover', 'store/images/11-2.png', 'W', 1, 1, 1, 'L', 'pink', 'Jackets');
INSERT INTO `store_product` VALUES (167, 'pullover with flowers pudge', 710.00, 'flower pullover', 'store/images/11-2_wLT6zKh.png', 'W', 1, 1, 1, 'M', 'pink', 'Jackets');
INSERT INTO `store_product` VALUES (168, 'pullover with flowers pudge', 710.00, 'flower pullover', 'store/images/11-2_JTDUgaK.png', 'W', 1, 1, 1, 'S', 'pink', 'Jackets');
INSERT INTO `store_product` VALUES (169, 'pullover with flowers pudge', 710.00, 'flower pullover', 'store/images/11-3.png', 'W', 1, 1, 1, 'L', 'blue', 'Jackets');
INSERT INTO `store_product` VALUES (170, 'pullover with flowers pudge', 710.00, 'flower pullover', 'store/images/11-3_3qCO9Ey.png', 'W', 1, 1, 1, 'M', 'blue', 'Jackets');
INSERT INTO `store_product` VALUES (171, 'pullover with flowers pudge', 710.00, 'flower pullover', 'store/images/11-3_gK7fjqa.png', 'W', 1, 1, 1, 'S', 'blue', 'Jackets');
INSERT INTO `store_product` VALUES (172, 'pullover with flower badge', 710.00, 'flower pullover', 'store/images/11-1_j5vWtWw.png', 'S', 1, 1, 1, 'L', 'green', 'Jackets');
INSERT INTO `store_product` VALUES (173, 'pullover with flower badge', 710.00, 'flower pullover', 'store/images/11-2_AfQ5CDP.png', 'S', 1, 1, 1, 'M', 'pink', 'Jackets');
INSERT INTO `store_product` VALUES (174, 'pullover with flower badge', 710.00, 'flower pullover', 'store/images/11-3_TDA63LL.png', 'S', 1, 1, 1, 'S', 'blue', 'Jackets');
INSERT INTO `store_product` VALUES (175, 'plain pullover for women', 450.00, 'plain pullover', 'store/images/12-1.png', 'W', 1, 1, 1, 'L', 'grey', 'Pullover');
INSERT INTO `store_product` VALUES (176, 'plain pullover for women', 450.00, 'plain pullover', 'store/images/12-2.png', 'W', 1, 1, 1, 'M', 'grey', 'Pullover');
INSERT INTO `store_product` VALUES (177, 'plain pullover for women', 450.00, 'plain pullover', 'store/images/12-2_TWfhaxv.png', 'W', 1, 1, 1, 'S', 'grey', 'Pullover');
INSERT INTO `store_product` VALUES (178, 'plain pullover for women', 450.00, 'plain pullover', 'store/images/12-2_6JjAjoe.png', 'W', 1, 1, 1, 'L', 'green', 'Pullover');
INSERT INTO `store_product` VALUES (179, 'plain pullover for women', 450.00, 'plain pullover', 'store/images/12-1_J3tOoT7.png', 'W', 1, 1, 1, 'M', 'green', 'Pullover');
INSERT INTO `store_product` VALUES (180, 'plain pullover for women', 450.00, 'plain pullover', 'store/images/12-1_UCfgMa3.png', 'W', 1, 1, 1, 'S', 'green', 'Pullover');
INSERT INTO `store_product` VALUES (181, 'plain pullover for women', 450.00, 'plain pullover', 'store/images/12-3.png', 'W', 1, 1, 1, 'L', 'pink', 'Pullover');
INSERT INTO `store_product` VALUES (182, 'plain pullover for women', 450.00, 'plain pullover', 'store/images/12-3_ifxDGbb.png', 'W', 1, 1, 1, 'M', 'pink', 'Pullover');
INSERT INTO `store_product` VALUES (183, 'plain pullover for women', 450.00, 'plain pullover', 'store/images/12-3_fqHp4MI.png', 'W', 1, 1, 1, 'S', 'pink', 'Pullover');
INSERT INTO `store_product` VALUES (184, 'plain pullover for women', 450.00, 'plain pullover', 'store/images/12-1_NAiZDmm.png', 'S', 1, 1, 1, 'L', 'grey', 'Pullover');
INSERT INTO `store_product` VALUES (185, 'plain pullover for women', 450.00, 'plain pullover', 'store/images/12-1_nYHdccf.png', 'S', 1, 1, 1, 'M', 'green', 'Pullover');
INSERT INTO `store_product` VALUES (186, 'plain pullover for women', 450.00, 'plain pullover', 'store/images/12-3_oGVmNYy.png', 'S', 1, 1, 1, 'S', 'pink', 'Pullover');
INSERT INTO `store_product` VALUES (187, 'wavy oversize pullover for women', 500.00, 'wavy pullover', 'store/images/13-1.png', 'W', 1, 1, 1, 'L', 'green', 'Pullover');
INSERT INTO `store_product` VALUES (188, 'wavy oversize pullover for women', 500.00, 'wavy pullover', 'store/images/13-1_pcPrLop.png', 'W', 1, 1, 1, 'M', 'green', 'Pullover');
INSERT INTO `store_product` VALUES (189, 'wavy oversize pullover for women', 500.00, 'wavy pullover', 'store/images/13-1_MnrEh1G.png', 'W', 1, 1, 1, 'S', 'green', 'Pullover');
INSERT INTO `store_product` VALUES (190, 'wavy oversize pullover for women', 500.00, 'wavy pullover', 'store/images/13-2.png', 'W', 1, 1, 1, 'L', 'blue', 'Pullover');
INSERT INTO `store_product` VALUES (191, 'wavy oversize pullover for women', 500.00, 'wavy pullover', 'store/images/13-2_FGSSNo4.png', 'W', 1, 1, 1, 'M', 'blue', 'Pullover');
INSERT INTO `store_product` VALUES (192, 'wavy oversize pullover for women', 500.00, 'wavy pullover', 'store/images/13-2_P4hRAac.png', 'W', 1, 1, 1, 'S', 'blue', 'Pullover');
INSERT INTO `store_product` VALUES (193, 'wavy oversize pullover for women', 500.00, 'wavy pullover', 'store/images/13-3.png', 'W', 1, 1, 1, 'L', 'yellow', 'Pullover');
INSERT INTO `store_product` VALUES (194, 'wavy oversize pullover for women', 500.00, 'wavy pullover', 'store/images/13-3_DUwoszD.png', 'W', 1, 1, 1, 'M', 'yellow', 'Pullover');
INSERT INTO `store_product` VALUES (195, 'wavy oversize pullover for women', 500.00, 'wavy pullover', 'store/images/13-3_2eGkpyl.png', 'W', 1, 1, 1, 'S', 'yellow', 'Pullover');
INSERT INTO `store_product` VALUES (196, 'wavy oversize pullover for women', 500.00, 'wavy pullover', 'store/images/13-1_7mcqvAM.png', 'S', 1, 1, 1, 'L', 'green', 'Pullover');
INSERT INTO `store_product` VALUES (197, 'wavy oversize pullover for women', 500.00, 'wavy pullover', 'store/images/13-2_cR6VXTW.png', 'S', 1, 1, 1, 'M', 'blue', 'Pullover');
INSERT INTO `store_product` VALUES (198, 'wavy oversize pullover for women', 500.00, 'wavy pullover', 'store/images/13-3_Am0Wiv3.png', 'S', 1, 1, 1, 'S', 'yellow', 'Pullover');
INSERT INTO `store_product` VALUES (199, 'oversize los angeles cotton sweet shirt', 800.00, 'los angeles sweet shirt', 'store/images/15-1.png', 'M', 1, 1, 1, 'L', 'brown', 'T-shirts');
INSERT INTO `store_product` VALUES (200, 'oversize los angeles cotton sweet shirt', 800.00, 'los angeles sweet shirt', 'store/images/15-1_iJcwQcX.png', 'M', 1, 1, 1, 'M', 'brown', 'T-shirts');
INSERT INTO `store_product` VALUES (201, 'oversize los angeles cotton sweet shirt', 800.00, 'los angeles sweet shirt', 'store/images/15-1_7ouViqy.png', 'M', 1, 1, 1, 'S', 'brown', 'T-shirts');
INSERT INTO `store_product` VALUES (202, 'oversize los angeles cotton sweet shirt', 800.00, 'los angeles sweet shirt', 'store/images/15-2.png', 'M', 1, 1, 1, 'L', 'blue', 'T-shirts');
INSERT INTO `store_product` VALUES (203, 'oversize los angeles cotton sweet shirt', 800.00, 'los angeles sweet shirt', 'store/images/15-2_6TP62iN.png', 'M', 1, 1, 1, 'M', 'blue', 'T-shirts');
INSERT INTO `store_product` VALUES (204, 'oversize los angeles cotton sweet shirt', 800.00, 'los angeles sweet shirt', 'store/images/15-2_KWye2g1.png', 'M', 1, 1, 1, 'S', 'blue', 'T-shirts');
INSERT INTO `store_product` VALUES (205, 'oversize los angeles cotton sweet shirt', 800.00, 'los angeles sweet shirt', 'store/images/15-3.png', 'M', 1, 1, 1, 'L', 'red', 'T-shirts');
INSERT INTO `store_product` VALUES (206, 'oversize los angeles cotton sweet shirt', 800.00, 'los angeles sweet shirt', 'store/images/15-3_eQxVX26.png', 'M', 1, 1, 1, 'M', 'red', 'T-shirts');
INSERT INTO `store_product` VALUES (207, 'oversize los angeles cotton sweet shirt', 800.00, 'los angeles sweet shirt', 'store/images/15-3_9d4HWaD.png', 'M', 1, 1, 1, 'S', 'red', 'T-shirts');
INSERT INTO `store_product` VALUES (208, 'oversize los angeles cotton sweet shirt', 800.00, 'los angeles sweet shirt', 'store/images/15-1_FYnn0Wc.png', 'S', 1, 1, 1, 'L', 'brown', 'T-shirts');
INSERT INTO `store_product` VALUES (209, 'oversize los angeles cotton sweet shirt', 800.00, 'los angeles sweet shirt', 'store/images/15-2_aOTFNSK.png', 'S', 1, 1, 1, 'M', 'blue', 'T-shirts');
INSERT INTO `store_product` VALUES (210, 'oversize los angeles cotton sweet shirt', 800.00, 'los angeles sweet shirt', 'store/images/15-3_TSduz3t.png', 'S', 1, 1, 1, 'S', 'red', 'T-shirts');
INSERT INTO `store_product` VALUES (211, 'pants jeans for men', 400.00, 'jeans pants', 'store/images/17-1.png', 'M', 1, 1, 1, 'L', 'camel', 'Pants');
INSERT INTO `store_product` VALUES (212, 'pants jeans for men', 400.00, 'jeans pants', 'store/images/17-2m.png', 'M', 1, 1, 1, 'M', 'camel', 'Pants');
INSERT INTO `store_product` VALUES (213, 'pants jeans for men', 400.00, 'jeams pants', 'store/images/17-2m_3MO2nIc.png', 'M', 1, 1, 1, 'S', 'camel', 'Pants');
INSERT INTO `store_product` VALUES (214, 'pants jeans for men', 400.00, 'jeans pants', 'store/images/17-3.png', 'M', 1, 1, 1, 'L', 'grey', 'Pants');
INSERT INTO `store_product` VALUES (215, 'pants jeans for men', 400.00, 'jeans pants', 'store/images/17-1_XVJHtaX.png', 'M', 1, 1, 1, 'M', 'grey', 'Pants');
INSERT INTO `store_product` VALUES (216, 'pants jeans for men', 400.00, 'jeans pants', 'store/images/17-1_7Krr83h.png', 'M', 1, 1, 1, 'S', 'grey', 'Pants');
INSERT INTO `store_product` VALUES (217, 'pants jeans for men', 400.00, 'jeans pants', 'store/images/17-1_9TrECYz.png', 'S', 1, 1, 1, 'L', 'camel', 'Pants');
INSERT INTO `store_product` VALUES (218, 'pants jeans for men', 400.00, 'jeans pants', 'store/images/17-2_OzzcjPs.png', 'S', 1, 1, 1, 'M', 'red', 'Pants');
INSERT INTO `store_product` VALUES (219, 'pants jeans for men', 400.00, 'jeans pants', 'store/images/17-3_W9D3KUk.png', 'S', 1, 1, 1, 'S', 'grey', 'Pants');
INSERT INTO `store_product` VALUES (220, 'oversize wide cotton sweet shirt for men', 910.00, 'wide sweet shirt', 'store/images/1_37FbgkT.png', 'M', 1, 1, 1, 'L', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (221, 'oversize wide cotton sweet shirt for men', 910.00, 'wide sweet shirt', 'store/images/1_iOirJj8.png', 'M', 1, 1, 1, 'M', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (222, 'oversize wide cotton sweet shirt for men', 910.00, 'wide sweet shirt', 'store/images/1_M1oTxOe.png', 'M', 1, 1, 1, 'S', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (223, 'oversize wide cotton sweet shirt for men', 910.00, 'wide sweet shirt', 'store/images/19.png', 'M', 1, 1, 1, 'L', 'orange', 'T-shirts');
INSERT INTO `store_product` VALUES (224, 'oversize wide cotton sweet shirt for men', 910.00, 'wide sweet shirt', 'store/images/19_75jy7lo.png', 'M', 1, 1, 1, 'M', 'orange', 'T-shirts');
INSERT INTO `store_product` VALUES (225, 'oversize wide cotton sweet shirt for men', 910.00, 'wide sweet shirt', 'store/images/19_joiDrLX.png', 'M', 1, 1, 1, 'S', 'orange', 'T-shirts');
INSERT INTO `store_product` VALUES (226, 'oversize wide cotton sweet shirt for men', 910.00, 'wide sweet shirt', 'store/images/22.png', 'M', 1, 1, 1, 'L', 'red', 'T-shirts');
INSERT INTO `store_product` VALUES (227, 'oversize wide cotton sweet shirt for men', 910.00, 'wide sweet shirt', 'store/images/22_uUvvQQ4.png', 'M', 1, 1, 1, 'M', 'red', 'T-shirts');
INSERT INTO `store_product` VALUES (228, 'oversize wide cotton sweet shirt for men', 910.00, 'wide sweet shirt', 'store/images/22_JcsebZU.png', 'M', 1, 1, 1, 'S', 'red', 'T-shirts');
INSERT INTO `store_product` VALUES (229, 'oversize wide cotton sweet shirt for men', 910.00, 'wide sweet shirt', 'store/images/1_S7V5bwz.png', 'S', 1, 1, 1, 'L', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (230, 'oversize wide cotton sweet shirt for men', 910.00, 'wide sweet shirt', 'store/images/19_L3FrBSS.png', 'S', 1, 1, 1, 'M', 'orange', 'T-shirts');
INSERT INTO `store_product` VALUES (231, 'oversize wide cotton sweet shirt for men', 910.00, 'wide sweet shirt', 'store/images/22_tTgixpy.png', 'S', 1, 1, 1, 'S', 'red', 'T-shirts');
INSERT INTO `store_product` VALUES (232, 'hoddie wide cotton sweet shirt for men', 910.00, 'hoddie sweet shirt', 'store/images/2_moFUYmO.png', 'M', 1, 1, 1, 'L', 'white', 'T-shirts');
INSERT INTO `store_product` VALUES (233, 'hoddie wide cotton sweet shirt for men', 910.00, 'hoddie sweet shirt', 'store/images/2_Hk9V6LA.png', 'M', 1, 1, 1, 'M', 'white', 'T-shirts');
INSERT INTO `store_product` VALUES (234, 'hoddie wide cotton sweet shirt for men', 910.00, 'hoddie sweet shirt', 'store/images/2_C5ojfI9.png', 'M', 1, 1, 1, 'S', 'white', 'T-shirts');
INSERT INTO `store_product` VALUES (235, 'hoddie wide cotton sweet shirt for men', 910.00, 'hoddie sweet shirt', 'store/images/23_LevPXKX.png', 'M', 1, 1, 1, 'L', 'black', 'T-shirts');
INSERT INTO `store_product` VALUES (236, 'hoddie wide cotton sweet shirt for men', 910.00, 'hoddie sweet shirt', 'store/images/23_POmRCtQ.png', 'M', 1, 1, 1, 'M', 'black', 'T-shirts');
INSERT INTO `store_product` VALUES (237, 'hoddie wide cotton sweet shirt for men', 910.00, 'hoddie sweet shirt', 'store/images/23_gWZf33i.png', 'M', 1, 1, 1, 'S', 'black', 'T-shirts');
INSERT INTO `store_product` VALUES (238, 'hoddie wide cotton sweet shirt for men', 910.00, 'hoddie sweet shirt', 'store/images/233.png', 'M', 1, 1, 1, 'L', 'yellow', 'T-shirts');
INSERT INTO `store_product` VALUES (239, 'hoddie wide cotton sweet shirt for men', 910.00, 'hoddie sweet shirt', 'store/images/233_9Txo55T.png', 'M', 1, 1, 1, 'M', 'yellow', 'T-Shirts');
INSERT INTO `store_product` VALUES (240, 'hoddie wide cotton sweet shirt for men', 910.00, 'hoddie sweet shirt', 'store/images/2333.png', 'M', 1, 1, 1, 'S', 'yellow', 'T-shirts');
INSERT INTO `store_product` VALUES (241, 'hoddie wide cotton sweet shirt for men', 910.00, 'hoddie sweet shirt', 'store/images/2_qUFJHIk.png', 'S', 1, 1, 1, 'L', 'white', 'T-shirts');
INSERT INTO `store_product` VALUES (242, 'hoddie wide cotton sweet shirt for men', 910.00, 'hoddie sweet shirt', 'store/images/23_E3LLTy8.png', 'S', 1, 1, 1, 'M', 'black', 'T-shirts');
INSERT INTO `store_product` VALUES (243, 'hoddie wide cotton sweet shirt for men', 910.00, 'hoddie sweet shirt', 'store/images/2333_3tZrAU6.png', 'S', 1, 1, 1, 'S', 'yellow', 'T-shirts');
INSERT INTO `store_product` VALUES (244, 'pants with double pockets in front', 470.00, 'pants with pocket', 'store/images/3.png', 'S', 2, 1, 1, 'L', 'grey', 'Pants');
INSERT INTO `store_product` VALUES (245, 'pants with double pockets in front', 470.00, 'pants with pocket', 'store/images/3_t9igomo.png', 'S', 2, 1, 1, 'M', 'grey', 'Pants');
INSERT INTO `store_product` VALUES (246, 'pants with double pockets in front', 470.00, 'pants with pocket', 'store/images/3_Sljp54O.png', 'S', 2, 1, 1, 'S', 'grey', 'Pants');
INSERT INTO `store_product` VALUES (247, 'pants with double pockets in front', 470.00, 'pants with pocket', 'store/images/18.png', 'M', 2, 1, 1, 'L', 'camel', 'Pants');
INSERT INTO `store_product` VALUES (248, 'pants with double pockets in front', 470.00, 'pants with pocket', 'store/images/18_Qmr4oBQ.png', 'M', 2, 1, 1, 'M', 'camel', 'Pants');
INSERT INTO `store_product` VALUES (249, 'pants with double pockets in front', 470.00, 'pants with pocket', 'store/images/18_q9oZ8vY.png', 'M', 2, 1, 1, 'S', 'camel', 'Pants');
INSERT INTO `store_product` VALUES (250, 'pants with double pockets in front', 470.00, 'pants with pocket', 'store/images/24.png', 'M', 2, 1, 1, 'L', 'black', 'Pants');
INSERT INTO `store_product` VALUES (251, 'pants with double pockets in front', 470.00, 'pants with pocket', 'store/images/24_h9QMEgU.png', 'M', 2, 1, 1, 'M', 'black', 'Pants');
INSERT INTO `store_product` VALUES (252, 'pants with double pockets in front', 470.00, 'pants with pocket', 'store/images/24_9SjMvpT.png', 'M', 2, 1, 1, 'S', 'black', 'Pants');
INSERT INTO `store_product` VALUES (253, 'pants with double pockets in front', 470.00, 'pants with pocket', 'store/images/3_0TWgpvI.png', 'S', 2, 1, 1, 'L', 'grey', 'Pants');
INSERT INTO `store_product` VALUES (254, 'pants with double pockets in front', 470.00, 'pants with pocket', 'store/images/18_Fa9rxfC.png', 'S', 2, 1, 1, 'M', 'camel', 'Pants');
INSERT INTO `store_product` VALUES (255, 'pants with double pockets in front', 470.00, 'pants with pocket', 'store/images/24_m6F1hck.png', 'S', 2, 1, 1, 'S', 'black', 'Pants');
INSERT INTO `store_product` VALUES (256, 'pants with verticle lines for women', 420.00, 'pants with lines', 'store/images/4.png', 'W', 1, 1, 1, 'L', 'black', 'Pants');
INSERT INTO `store_product` VALUES (257, 'pants with verticle lines for women', 420.00, 'pants with lines', 'store/images/13.png', 'W', 1, 1, 1, 'L', 'light blue', 'Pants');
INSERT INTO `store_product` VALUES (258, 'pants with verticle lines for women', 420.00, 'pants with lines', 'store/images/4_d9VKL51.png', 'W', 1, 1, 1, 'S', 'black', 'Pants');
INSERT INTO `store_product` VALUES (259, 'pants with verticle lines for women', 420.00, 'pants with lines', 'store/images/12.png', 'W', 1, 1, 1, 'L', 'blue', 'Pants');
INSERT INTO `store_product` VALUES (260, 'pants with verticle lines for women', 420.00, 'pants with lines', 'store/images/12_ouzTT9f.png', 'W', 1, 1, 1, 'M', 'blue', 'Pants');
INSERT INTO `store_product` VALUES (261, 'pants with verticle lines for women', 420.00, 'pants with lines', 'store/images/12_9E8fICZ.png', 'W', 1, 1, 1, 'S', 'blue', 'Pants');
INSERT INTO `store_product` VALUES (262, 'pants with verticle lines for women', 420.00, 'pants with lines', 'store/images/14.png', 'W', 1, 1, 1, 'S', 'light blue', 'Pants');
INSERT INTO `store_product` VALUES (263, 'pants with verticle lines for women', 420.00, 'pants with lines', 'store/images/13_x2bjJnx.png', 'W', 1, 1, 1, 'M', 'light blue', 'Pants');
INSERT INTO `store_product` VALUES (264, 'pants with verticle lines for women', 420.00, 'pants with lines', 'store/images/13_dXu0COF.png', 'W', 1, 1, 1, 'S', 'light blue', 'Pants');
INSERT INTO `store_product` VALUES (265, 'pants with verticle lines for women', 420.00, 'pants with lines', 'store/images/4_PqqKWUv.png', 'S', 1, 1, 1, 'L', 'black', 'Pants');
INSERT INTO `store_product` VALUES (266, 'pants with verticle lines for women', 420.00, 'pants with lines', 'store/images/12_X1cZTPf.png', 'S', 1, 1, 1, 'M', 'blue', 'Pants');
INSERT INTO `store_product` VALUES (267, 'pants with verticle lines for women', 420.00, 'pants with lines', 'store/images/13_pWTNOeR.png', 'S', 1, 1, 1, 'S', 'light blue', 'Pants');
INSERT INTO `store_product` VALUES (268, 'oversize wide pants for men', 610.00, 'oversize pants', 'store/images/5.png', 'M', 2, 1, 1, 'L', 'blue', 'Pants');
INSERT INTO `store_product` VALUES (269, 'oversize wide pants for men', 610.00, 'oversize pants', 'store/images/5_D6Hmmxn.png', 'M', 2, 1, 1, 'M', 'blue', 'Pants');
INSERT INTO `store_product` VALUES (270, 'oversize wide pants for men', 610.00, 'oversize pants', 'store/images/5_Rd02xcO.png', 'M', 2, 1, 1, 'S', 'blue', 'Pants');
INSERT INTO `store_product` VALUES (271, 'oversize wide pants for men', 610.00, 'oversize pants', 'store/images/9.png', 'M', 2, 1, 1, 'L', 'yellow', 'Pants');
INSERT INTO `store_product` VALUES (272, 'oversize wide pants for men', 610.00, 'oversize pants', 'store/images/9_lACJY7k.png', 'M', 2, 1, 1, 'M', 'yellow', 'Pants');
INSERT INTO `store_product` VALUES (273, 'oversize wide pants for men', 610.00, 'oversize pants', 'store/images/9_WTT5Sjx.png', 'M', 2, 1, 1, 'S', 'yellow', 'Pants');
INSERT INTO `store_product` VALUES (274, 'oversize wide pants for men', 610.00, 'oversize pants', 'store/images/11.png', 'M', 2, 1, 1, 'L', 'orange', 'Pants');
INSERT INTO `store_product` VALUES (275, 'oversize wide pants for men', 610.00, 'oversize pants', 'store/images/11_58ZtmIC.png', 'M', 2, 1, 1, 'M', 'orange', 'Pants');
INSERT INTO `store_product` VALUES (276, 'oversize wide pants for men', 610.00, 'oversize pants', 'store/images/11_9hDLXu5.png', 'M', 2, 1, 1, 'S', 'orange', 'Pants');
INSERT INTO `store_product` VALUES (277, 'oversize wide pants for men', 610.00, 'oversize pants', 'store/images/5_OtrvG3O.png', 'S', 2, 1, 1, 'L', 'blue', 'Pants');
INSERT INTO `store_product` VALUES (278, 'oversize wide pants for men', 610.00, 'oversize pants', 'store/images/9_e0DL50N.png', 'S', 2, 1, 1, 'M', 'yellow', 'Pants');
INSERT INTO `store_product` VALUES (279, 'oversize wide pants for men', 610.00, 'oversize pants', 'store/images/11_dmoZQq5.png', 'S', 2, 1, 1, 'S', 'orange', 'Pants');
INSERT INTO `store_product` VALUES (280, 'long wide skilrt for women', 800.00, 'long skirt', 'store/images/6.png', 'W', 1, 1, 1, 'L', 'black', 'Blouse');
INSERT INTO `store_product` VALUES (281, 'long wide skilrt for women', 800.00, 'long skirt', 'store/images/6_epLSftF.png', 'W', 1, 1, 1, 'M', 'black', 'Blouse');
INSERT INTO `store_product` VALUES (282, 'long wide skilrt for women', 800.00, 'long skirt', 'store/images/6_8VyPuso.png', 'W', 1, 1, 1, 'S', 'black', 'Blouse');
INSERT INTO `store_product` VALUES (283, 'long wide skilrt for women', 800.00, 'long skirt', 'store/images/6j.png', 'W', 1, 1, 1, 'L', 'blue', 'Blouse');
INSERT INTO `store_product` VALUES (284, 'long wide skilrt for women', 800.00, 'long skirt', 'store/images/6j_k85oTpl.png', 'W', 1, 1, 1, 'M', 'blue', 'Blouse');
INSERT INTO `store_product` VALUES (285, 'long wide skilrt for women', 800.00, 'long skirt', 'store/images/6j_vBQmzUn.png', 'W', 1, 1, 1, 'S', 'blue', 'Blouse');
INSERT INTO `store_product` VALUES (286, 'long wide skilrt for women', 800.00, 'long skirt', 'store/images/6jj.png', 'W', 1, 1, 1, 'L', 'azure', 'Blouse');
INSERT INTO `store_product` VALUES (287, 'long wide skirt for women', 800.00, 'long skirt', 'store/images/6jjj.png', 'W', 1, 1, 1, 'M', 'azure', 'Blouse');
INSERT INTO `store_product` VALUES (288, 'long wide skirt for women', 800.00, 'long skirt', 'store/images/6jj_otyv4Cx.png', 'W', 1, 1, 1, 'S', 'azure', 'Blouse');
INSERT INTO `store_product` VALUES (289, 'long wide skirt for women', 800.00, 'long skirt', 'store/images/6_ZCt2nnX.png', 'S', 1, 1, 1, 'L', 'black', 'Blouse');
INSERT INTO `store_product` VALUES (290, 'long wide skirt for women', 800.00, 'long skirt', 'store/images/6j_ASWa149.png', 'S', 1, 1, 1, 'M', 'blue', 'Blouse');
INSERT INTO `store_product` VALUES (291, 'long wide skirt for women', 800.00, 'long skirt', 'store/images/6jj_id7M7oS.png', 'S', 1, 1, 1, 'S', 'azure', 'Blouse');
INSERT INTO `store_product` VALUES (292, 'women dress wide decolte style for women', 1100.00, 'women dress', 'store/images/7.png', 'W', 1, 1, 1, 'L', 'black', 'Blouse');
INSERT INTO `store_product` VALUES (293, 'women dress wide decolte style for women', 1100.00, 'women dress', 'store/images/7_26TU92a.png', 'W', 1, 1, 1, 'M', 'black', 'Blouse');
INSERT INTO `store_product` VALUES (294, 'women dress wide decolte style for women', 1100.00, 'women dress', 'store/images/7_9la9f5W.png', 'W', 1, 1, 1, 'S', 'black', 'Blouse');
INSERT INTO `store_product` VALUES (295, 'women dress wide decolte style for women', 1100.00, 'women dress', 'store/images/16.png', 'W', 1, 1, 1, 'L', 'white', 'Blouse');
INSERT INTO `store_product` VALUES (296, 'women dress wide decolte style for women', 1100.00, 'women dress', 'store/images/16_HaMH7Eh.png', 'W', 1, 1, 1, 'M', 'white', 'Blouse');
INSERT INTO `store_product` VALUES (297, 'women dress wide decolte style for women', 1100.00, 'women dress', 'store/images/16_Fzo7qSC.png', 'W', 1, 1, 1, 'S', 'white', 'Blouse');
INSERT INTO `store_product` VALUES (298, 'women dress wide decolte style for women', 1100.00, 'women dress', 'store/images/163.png', 'W', 1, 1, 1, 'L', 'yellow', 'Blouse');
INSERT INTO `store_product` VALUES (299, 'women dress wide decolte style for women', 1100.00, 'women dress', 'store/images/161.png', 'W', 1, 1, 1, 'M', 'yellow', 'Blouse');
INSERT INTO `store_product` VALUES (300, 'women dress wide decolte style for women', 1100.00, 'women dress', 'store/images/161_DTWofci.png', 'W', 1, 1, 1, 'M', 'yellow', 'Blouse');
INSERT INTO `store_product` VALUES (301, 'women dress wide decolte style for women', 1100.00, 'women dress', 'store/images/1633.png', 'W', 1, 1, 1, 'S', 'yellow', 'Blouse');
INSERT INTO `store_product` VALUES (302, 'women dress wide decolte style for women', 1100.00, 'women dress', 'store/images/7_ovoebW1.png', 'S', 1, 1, 1, 'L', 'black', 'Blouse');
INSERT INTO `store_product` VALUES (303, 'women dress wide decolte style for women', 1100.00, 'women dress', 'store/images/16_w0VCXjn.png', 'S', 1, 1, 1, 'M', 'white', 'Blouse');
INSERT INTO `store_product` VALUES (304, 'women dress wide decolte style for women', 1100.00, 'women dress', 'store/images/1633_jGDNh3D.png', 'S', 1, 1, 1, 'S', 'yellow', 'Blouse');
INSERT INTO `store_product` VALUES (305, 'women large lines wide t-shirt', 290.00, 't-shirt lined', 'store/images/8_qrEvv8K.png', 'W', 1, 1, 1, 'L', 'brown', 'T-shirts');
INSERT INTO `store_product` VALUES (306, 'women large lines wide t-shirt', 290.00, 't-shirt lined', 'store/images/8_oKaUiaF.png', 'W', 1, 1, 1, 'M', 'brown', 'T-shirts');
INSERT INTO `store_product` VALUES (307, 'women large lines wide t-shirt', 290.00, 't-shirt lined', 'store/images/8_SDRBeF5.png', 'W', 1, 1, 1, 'S', 'brown', 'T-shirts');
INSERT INTO `store_product` VALUES (308, 'women large lines wide t-shirt', 290.00, 't-shirt lined', 'store/images/20.png', 'W', 1, 1, 1, 'L', 'red', 'T-shirts');
INSERT INTO `store_product` VALUES (309, 'women large lines wide t-shirt', 290.00, 't-shirt lined', 'store/images/20_qSgYTDN.png', 'W', 1, 1, 1, 'M', 'red', 'T-shirts');
INSERT INTO `store_product` VALUES (310, 'women large lines wide t-shirt', 290.00, 't-shirt lined', 'store/images/20_zVyjYnK.png', 'W', 1, 1, 1, 'S', 'red', 'T-shirts');
INSERT INTO `store_product` VALUES (311, 'women large lines wide t-shirt', 290.00, 't-shirt lined', 'store/images/21.png', 'W', 1, 1, 1, 'L', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (312, 'women large lines wide t-shirt', 290.00, 't-shirt lined', 'store/images/21_na4Cvxf.png', 'W', 1, 1, 1, 'M', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (313, 'women large lines wide t-shirt', 290.00, 't-shirt lined', 'store/images/21_GN9AanM.png', 'W', 1, 1, 1, 'S', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (314, 'women large lines wide t-shirt', 290.00, 't-shirt lined', 'store/images/8_rVtMEsF.png', 'S', 1, 1, 1, 'L', 'brown', 'T-shirts');
INSERT INTO `store_product` VALUES (315, 'women large lines wide t-shirt', 290.00, 't-shirt lined', 'store/images/20_zjnFlbW.png', 'S', 1, 1, 1, 'M', 'red', 'T-shirts');
INSERT INTO `store_product` VALUES (316, 'women large lines wide t-shirt', 290.00, 't-shirt lined', 'store/images/21_ovq6ZWT.png', 'S', 1, 1, 1, 'S', 'green', 'T-shirts');
INSERT INTO `store_product` VALUES (317, 'women from skirt', 690.00, 'form skirt', 'store/images/10.png', 'W', 1, 1, 1, 'L', 'brown', 'Blouse');
INSERT INTO `store_product` VALUES (318, 'women from skirt', 690.00, 'form skirt', 'store/images/10_rxDou2O.png', 'W', 1, 1, 1, 'M', 'brown', 'Blouse');
INSERT INTO `store_product` VALUES (319, 'women from skirt', 690.00, 'form skirt', 'store/images/10_IUUvnMU.png', 'W', 1, 1, 1, 'S', 'brown', 'Blouse');
INSERT INTO `store_product` VALUES (320, 'women from skirt', 690.00, 'form skirt', 'store/images/10j.png', 'W', 1, 1, 1, 'L', 'pink', 'Blouse');
INSERT INTO `store_product` VALUES (321, 'women from skirt', 690.00, 'form skirt', 'store/images/10j_miR11yq.png', 'W', 1, 1, 1, 'M', 'pink', 'Blouse');
INSERT INTO `store_product` VALUES (322, 'women from skirt', 690.00, 'form skirt', 'store/images/10jj.png', 'W', 1, 1, 1, 'S', 'pink', 'Blouse');
INSERT INTO `store_product` VALUES (323, 'women from skirt', 690.00, 'form skirt', 'store/images/10jj_A3dGfjO.png', 'W', 1, 1, 1, 'L', 'blue', 'Blouse');
INSERT INTO `store_product` VALUES (324, 'women from skirt', 690.00, 'form skirt', 'store/images/10jj_oUi4ZFk.png', 'W', 1, 1, 1, 'M', 'blue', 'Blouse');
INSERT INTO `store_product` VALUES (325, 'women from skirt', 690.00, 'form skirt', 'store/images/10j_7z6bqWa.png', 'W', 1, 1, 1, 'S', 'blue', 'Blouse');
INSERT INTO `store_product` VALUES (326, 'women from skirt', 690.00, 'form skirt', 'store/images/10_L8Miivg.png', 'S', 1, 1, 1, 'L', 'brown', 'Blouse');
INSERT INTO `store_product` VALUES (327, 'women from skirt', 690.00, 'form skirt', 'store/images/10j_bwzGcYP.png', 'S', 1, 1, 1, 'M', 'pink', 'Blouse');
INSERT INTO `store_product` VALUES (328, 'women from skirt', 690.00, 'form skirt', 'store/images/10j_tnYpL8w.png', 'S', 1, 1, 1, 'S', 'blue', 'Blouse');
INSERT INTO `store_product` VALUES (329, 'formal plain pants', 300.00, 'plain pants', 'store/images/14_3OY70MU.png', 'W', 1, 1, 1, 'L', 'light blue', 'Pants');
INSERT INTO `store_product` VALUES (330, 'formal plain pants', 300.00, 'plain pants', 'store/images/14_efO21Cp.png', 'W', 1, 1, 1, 'M', 'light blue', 'Pants');
INSERT INTO `store_product` VALUES (331, 'formal plain pants', 300.00, 'plain pants', 'store/images/14_x8to5ly.png', 'W', 1, 1, 1, 'S', 'light blue', 'Pants');
INSERT INTO `store_product` VALUES (332, 'formal plain pants', 300.00, 'plain pants', 'store/images/15.png', 'W', 1, 1, 1, 'L', 'black', 'Pants');
INSERT INTO `store_product` VALUES (333, 'formal plain pants', 300.00, 'plain pants', 'store/images/15_dB0mNxl.png', 'W', 1, 1, 1, 'M', 'black', 'Pants');
INSERT INTO `store_product` VALUES (334, 'formal plain pants', 300.00, 'plain pants', 'store/images/15_k3iOmnc.png', 'W', 1, 1, 1, 'S', 'black', 'Pants');
INSERT INTO `store_product` VALUES (335, 'formal plain pants', 300.00, 'plain pants', 'store/images/17.png', 'W', 1, 1, 1, 'L', 'brown', 'Pants');
INSERT INTO `store_product` VALUES (336, 'formal plain pants', 300.00, 'plain pants', 'store/images/17_pkgux06.png', 'W', 1, 1, 1, 'M', 'brown', 'Pants');
INSERT INTO `store_product` VALUES (337, 'formal plain pants', 300.00, 'plain pants', 'store/images/17_3r0QzZB.png', 'W', 1, 1, 1, 'S', 'brown', 'Pants');
INSERT INTO `store_product` VALUES (339, 'heels for women', 720.00, 'women heels', 'store/images/1-1_bBEvZKM.png', 'W', 8, 1, 1, 'M', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (340, 'heels for women', 720.00, 'women heels', 'store/images/1-1_7c6WQEK.png', 'W', 8, 4, 1, 'M', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (341, 'heels for women', 720.00, 'women heels', 'store/images/1-1_DNadefx.png', 'W', 8, 4, 1, 'S', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (342, 'heels for women', 720.00, 'women heels', 'store/images/1-2_sqXaGPG.png', 'W', 8, 4, 1, 'L', 'red', 'Shoes');
INSERT INTO `store_product` VALUES (343, 'heels for women', 720.00, 'women heels', 'store/images/1-2_H2JLKXK.png', 'W', 8, 4, 1, 'M', 'red', 'Shoes');
INSERT INTO `store_product` VALUES (344, 'heels for women', 720.00, 'women heels', 'store/images/1-2_PbpUEZS.png', 'W', 8, 4, 1, 'S', 'red', 'Shoes');
INSERT INTO `store_product` VALUES (345, 'heels for women', 720.00, 'women heels', 'store/images/1-3_FcdCtue.png', 'W', 8, 4, 1, 'L', 'blue', 'Shoes');
INSERT INTO `store_product` VALUES (346, 'heels for women', 720.00, 'women heels', 'store/images/1-3_Cjbwcsa.png', 'W', 8, 4, 1, 'M', 'blue', 'Shoes');
INSERT INTO `store_product` VALUES (347, 'heels for women', 720.00, 'women heels', 'store/images/1-3_38Dbtns.png', 'W', 8, 4, 1, 'S', 'blue', 'Shoes');
INSERT INTO `store_product` VALUES (348, 'high formal women heels', 720.00, 'high heels', 'store/images/2-1_dTsur8S.png', 'W', 8, 4, 1, 'L', 'red', 'Shoes');
INSERT INTO `store_product` VALUES (349, 'high formal women heels', 720.00, 'high heels', 'store/images/2-1_oBXUvUB.png', 'W', 8, 4, 1, 'M', 'red', 'Shoes');
INSERT INTO `store_product` VALUES (350, 'high formal women heels', 720.00, 'high heels', 'store/images/2-1_A3gm8ec.png', 'W', 8, 4, 1, 'M', 'red', 'Shoes');
INSERT INTO `store_product` VALUES (351, 'high formal women heels', 720.00, 'high heels', 'store/images/2-1_n9Xug2V.png', 'W', 8, 4, 1, 'S', 'red', 'Shoes');
INSERT INTO `store_product` VALUES (352, 'high formal women heels', 720.00, 'high heels', 'store/images/2-2_gCTArgw.png', 'W', 8, 4, 1, 'L', 'azure', 'Shoes');
INSERT INTO `store_product` VALUES (353, 'high formal women heels', 720.00, 'high heels', 'store/images/2-2_lIxesHb.png', 'W', 8, 4, 1, 'M', 'azure', 'Shoes');
INSERT INTO `store_product` VALUES (354, 'high formal women heels', 720.00, 'women heels', 'store/images/1-3_iyMpran.png', 'W', 8, 4, 1, 'S', 'blue', 'Shoes');
INSERT INTO `store_product` VALUES (355, 'high formal women heels', 720.00, 'high heels', 'store/images/1-1_YZlz6C0.png', 'S', 8, 4, 1, 'L', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (356, 'heels for women', 720.00, 'women heels', 'store/images/1-2_uhDGGpP.png', 'S', 8, 4, 1, 'M', 'red', 'Shoes');
INSERT INTO `store_product` VALUES (357, 'heels for women', 720.00, 'women heels', 'store/images/1-3_wYJmMDP.png', 'S', 8, 4, 1, 'S', 'blue', 'Shoes');
INSERT INTO `store_product` VALUES (358, 'high formal women heels', 720.00, 'high heels', 'store/images/2-1_0fCKix5.png', 'S', 8, 4, 1, 'L', 'red', 'Shoes');
INSERT INTO `store_product` VALUES (359, 'high formal women heels', 720.00, 'high heels', 'store/images/2-2_NfIOkJm.png', 'S', 8, 4, 1, 'M', 'azure', 'Shoes');
INSERT INTO `store_product` VALUES (360, 'sportive sniker for women', 1000.00, 'sport sniker', 'store/images/3-3_FhNohKQ.png', 'W', 8, 4, 1, 'L', 'white', 'Shoes');
INSERT INTO `store_product` VALUES (361, 'sportive sniker for women', 1000.00, 'sport sniker', 'store/images/3-3_ptAAeTM.png', 'W', 8, 4, 1, 'M', 'white', 'Shoes');
INSERT INTO `store_product` VALUES (362, 'sportive sniker for women', 1000.00, 'sport sniker', 'store/images/3-3_MJ9cAXo.png', 'W', 8, 4, 1, 'S', 'white', 'Shoes');
INSERT INTO `store_product` VALUES (363, 'sportive sniker for women', 1000.00, 'sport sniker', 'store/images/3-1_WkiNobk.png', 'W', 8, 4, 1, 'L', 'pink', 'Shoes');
INSERT INTO `store_product` VALUES (364, 'sportive sniker for women', 1000.00, 'sport sniker', 'store/images/3-1_ocGwzZq.png', 'W', 8, 4, 1, 'L', 'pink', 'Shoes');
INSERT INTO `store_product` VALUES (365, 'sportive sniker for women', 1000.00, 'sport sniker', 'store/images/3-1_Ci688CC.png', 'W', 8, 4, 1, 'M', 'pink', 'Shoes');
INSERT INTO `store_product` VALUES (366, 'sportive sniker for women', 1000.00, 'sport sniker', 'store/images/3-1_frn9AYu.png', 'W', 8, 4, 1, 'S', 'pink', 'Shoes');
INSERT INTO `store_product` VALUES (367, 'sportive sniker for women', 1000.00, 'sport sniker', 'store/images/3-3_N46UVyV.png', 'W', 8, 4, 1, 'L', 'azure', 'Shoes');
INSERT INTO `store_product` VALUES (368, 'sportive sniker for women', 1000.00, 'sport sniker', 'store/images/3-3_gJuKPcX.png', 'W', 8, 4, 1, 'M', 'azure', 'Shoes');
INSERT INTO `store_product` VALUES (369, 'sportive sniker for women', 1000.00, 'sport sniker', 'store/images/3-3_AiS5ksu.png', 'W', 8, 4, 1, 'S', 'azure', 'Shoes');
INSERT INTO `store_product` VALUES (370, 'sportive sniker for women', 1000.00, 'sport sniker', 'store/images/3-2_JXUd7sg.png', 'S', 8, 4, 1, 'L', 'white', 'Shoes');
INSERT INTO `store_product` VALUES (371, 'sportive sniker for women', 1000.00, 'sport sniker', 'store/images/3-1_zzJ4g2V.png', 'S', 8, 4, 1, 'M', 'pink', 'Shoes');
INSERT INTO `store_product` VALUES (372, 'sportive sniker for women', 1000.00, 'sport sniker', 'store/images/3-3_LCBXCRE.png', 'S', 8, 4, 1, 'S', 'azure', 'Shoes');
INSERT INTO `store_product` VALUES (373, 'formal shoes for men', 980.00, 'fromal shoes', 'store/images/4-1.png', 'M', 1, 4, 1, 'L', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (374, 'formal shoes for men', 980.00, 'fromal shoes', 'store/images/4-1_grNQS5A.png', 'M', 1, 4, 1, 'M', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (375, 'formal shoes for men', 980.00, 'fromal shoes', 'store/images/4-1_FJ7E8oy.png', 'M', 1, 4, 1, 'S', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (376, 'formal shoes for men', 980.00, 'fromal shoes', 'store/images/6-1.png', 'M', 1, 4, 1, 'L', 'camel', 'Shoes');
INSERT INTO `store_product` VALUES (377, 'formal shoes for men', 980.00, 'fromal shoes', 'store/images/6-1_XOOqqug.png', 'M', 1, 4, 1, 'M', 'camel', 'Shoes');
INSERT INTO `store_product` VALUES (378, 'formal shoes for men', 980.00, 'fromal shoes', 'store/images/6-1_sPgrzmr.png', 'M', 1, 4, 1, 'S', 'camel', 'Shoes');
INSERT INTO `store_product` VALUES (379, 'formal shoes for men', 980.00, 'fromal shoes', 'store/images/4-1_XjA8tMq.png', 'S', 1, 4, 1, 'L', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (380, 'formal shoes for men', 980.00, 'fromal shoes', 'store/images/6-1_phuSDCL.png', 'S', 1, 4, 1, 'L', 'camel', 'Shoes');
INSERT INTO `store_product` VALUES (381, 'long boot for women', 1200.00, 'boot', 'store/images/7-2_b4ZIiVr.png', 'W', 8, 4, 1, 'L', 'white', 'Shoes');
INSERT INTO `store_product` VALUES (382, 'long boot for women', 1200.00, 'boot', 'store/images/7-2_8KWslpq.png', 'W', 8, 4, 1, 'M', 'white', 'Shoes');
INSERT INTO `store_product` VALUES (383, 'long boot for women', 1200.00, 'boot', 'store/images/7-2_fc3n7rh.png', 'W', 8, 4, 1, 'S', 'white', 'Shoes');
INSERT INTO `store_product` VALUES (384, 'long boot for women', 1200.00, 'boot', 'store/images/7-1_HrnEPIv.png', 'W', 8, 4, 1, 'L', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (385, 'long boot for women', 1200.00, 'boot', 'store/images/7-1_p56JQLx.png', 'W', 8, 4, 1, 'M', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (386, 'long boot for women', 1200.00, 'boot', 'store/images/7-1_KoWdMlZ.png', 'W', 8, 4, 1, 'S', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (387, 'long boot for women', 1200.00, 'boot', 'store/images/7-1_iZ6pNJ8.png', 'S', 8, 4, 1, 'L', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (388, 'long boot for women', 1200.00, 'boot', 'store/images/7-2_Zpqw1Bo.png', 'S', 8, 4, 1, 'L', 'white', 'Shoes');
INSERT INTO `store_product` VALUES (389, 'collection formal heels', 720.00, 'formal heels', 'store/images/5-2.png', 'W', 8, 4, 1, 'L', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (390, 'collection formal heels', 720.00, 'formal heels', 'store/images/5-2_N06dcjf.png', 'W', 8, 4, 1, 'M', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (391, 'collection formal heels', 720.00, 'formal heels', 'store/images/5-2_X8UhPkk.png', 'W', 8, 4, 1, 'S', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (392, 'collection formal heels', 720.00, 'formal heels', 'store/images/5-2_ZWFZatQ.png', 'W', 8, 4, 1, 'S', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (393, 'collection formal heels', 720.00, 'formal heels', 'store/images/5-1.png', 'W', 8, 4, 1, 'L', 'pink', 'Shoes');
INSERT INTO `store_product` VALUES (394, 'collection formal heels', 720.00, 'formal heels', 'store/images/5-1_0MuJNzL.png', 'W', 8, 4, 1, 'M', 'pink', 'Shoes');
INSERT INTO `store_product` VALUES (395, 'collection formal heels', 720.00, 'formal heels', 'store/images/5-1_tiTnxEh.png', 'W', 8, 4, 1, 'S', 'pink', 'Shoes');
INSERT INTO `store_product` VALUES (396, 'collection formal heels', 720.00, 'formal heels', 'store/images/5-1_9NqgZdQ.png', 'S', 8, 4, 1, 'L', 'pink', 'Shoes');
INSERT INTO `store_product` VALUES (397, 'collection formal heels', 720.00, 'formal heels', 'store/images/5-2_9CaNDLv.png', 'S', 8, 4, 1, 'L', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (398, 'nike cap B/W', 110.00, 'cap', 'store/images/10-2_0bY7W0E.png', 'M', 8, 1, 1, 'L', 'white', 'Bags');
INSERT INTO `store_product` VALUES (399, 'nike cap B/W', 110.00, 'cap', 'store/images/10-2_A9dEwVq.png', 'M', 8, 1, 1, 'M', 'white', 'Bags');
INSERT INTO `store_product` VALUES (400, 'nike cap B/W', 110.00, 'cap', 'store/images/10-2_RnUob3N.png', 'M', 8, 1, 1, 'S', 'white', 'Bags');
INSERT INTO `store_product` VALUES (401, 'nike cap B/W', 110.00, 'cap', 'store/images/10-1_wpbvwY0.png', 'M', 8, 1, 1, 'L', 'black', 'Bags');
INSERT INTO `store_product` VALUES (402, 'nike cap B/W', 110.00, 'cap', 'store/images/10-1_IpCPVim.png', 'M', 8, 1, 1, 'M', 'black', 'Bags');
INSERT INTO `store_product` VALUES (403, 'nike cap B/W', 110.00, 'cap', 'store/images/10-1_ugyReQ0.png', 'M', 8, 1, 1, 'S', 'black', 'Bags');
INSERT INTO `store_product` VALUES (404, 'long sniker from addias', 830.00, 'long sniker', '', 'M', 2, 4, 1, 'L', 'white', 'Shoes');
INSERT INTO `store_product` VALUES (405, 'long sniker from addias', 830.00, 'long sniker', 'store/images/11-1_B82anPr.png', 'M', 2, 4, 1, 'M', 'white', 'Shoes');
INSERT INTO `store_product` VALUES (406, 'long sniker from addias', 830.00, 'long sniker', 'store/images/11-2_JXpT4KB.png', 'M', 2, 4, 1, 'S', 'white', 'Shoes');
INSERT INTO `store_product` VALUES (407, 'long sniker from addias', 830.00, 'long sniker', 'store/images/11-2_VLMEe63.png', 'M', 2, 4, 1, 'L', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (408, 'long sniker from addias', 830.00, 'long sniker', 'store/images/11-2_aIQhSQn.png', 'M', 2, 4, 1, 'M', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (409, 'long sniker from addias', 830.00, 'long sniker', 'store/images/11-1_TDoFq6H.png', 'M', 2, 4, 1, 'S', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (410, 'long sniker from addias', 830.00, 'long sniker', 'store/images/11-2_2NcLQOH.png', 'S', 2, 4, 1, 'L', 'black', 'Shoes');
INSERT INTO `store_product` VALUES (411, 'long sniker from addias', 830.00, 'long sniker', 'store/images/11-1_RZp2gwz.png', 'S', 2, 4, 1, 'M', 'white', 'Shoes');
INSERT INTO `store_product` VALUES (412, 'hoddie sweet shirt', 790.00, 'sweet shirt', 'store/images/9-1_v4uiLWb.png', 'M', 1, 1, 1, 'L', 'white', 'T-shirts');
INSERT INTO `store_product` VALUES (413, 'hoddie sweet shirt', 790.00, 'sweet shirt', 'store/images/9-1_N3YSs3R.png', 'M', 1, 1, 1, 'M', 'white', 'T-shirts');
INSERT INTO `store_product` VALUES (414, 'hoddie sweet shirt', 790.00, 'sweet shirt', 'store/images/9-1_k0x09Em.png', 'M', 1, 1, 1, 'S', 'white', 'T-shirts');
INSERT INTO `store_product` VALUES (415, 'hoddie sweet shirt', 790.00, 'sweet shirt', 'store/images/9-2_J521jDC.png', 'M', 1, 1, 1, 'L', 'black', 'T-shirts');
INSERT INTO `store_product` VALUES (416, 'hoddie sweet shirt', 790.00, 'sweet shirt', 'store/images/9-2_M1kk917.png', 'M', 1, 1, 1, 'M', 'black', 'T-shirts');
INSERT INTO `store_product` VALUES (417, 'hoddie sweet shirt', 790.00, 'sweet shirt', 'store/images/9-2_rzQKtUd.png', 'M', 1, 1, 1, 'S', 'black', 'T-shirts');
INSERT INTO `store_product` VALUES (418, 'hoddie sweet shirt', 790.00, 'sweet shirt', 'store/images/9-3_nwUeEh5.png', 'M', 1, 1, 1, 'L', 'camel', 'T-shirts');
INSERT INTO `store_product` VALUES (419, 'hoddie sweet shirt', 790.00, 'sweet shirt', 'store/images/9-3_rCNqzcw.png', 'M', 1, 1, 1, 'M', 'camel', 'T-shirts');
INSERT INTO `store_product` VALUES (420, 'hoddie sweet shirt', 790.00, 'sweet shirt', 'store/images/9-3_tcB6a2l.png', 'M', 1, 1, 1, 'S', 'camel', 'T-shirts');
INSERT INTO `store_product` VALUES (421, 'hoddie sweet shirt', 790.00, 'sweet shirt', 'store/images/9-1_IJ0LTzf.png', 'S', 1, 1, 1, 'L', 'white', 'T-shirts');
INSERT INTO `store_product` VALUES (422, 'hoddie sweet shirt', 790.00, 'sweet shirt', 'store/images/9-2_gMh0AxS.png', 'S', 1, 1, 1, 'M', 'black', 'T-shirts');
INSERT INTO `store_product` VALUES (423, 'hoddie sweet shirt', 790.00, 'sweet shirt', 'store/images/9-3_1JSi1ay.png', 'S', 1, 1, 1, 'S', 'camel', 'T-shirts');
INSERT INTO `store_product` VALUES (424, 'new collection perfumes from jomalon', 190.00, 'jomalon perfume', 'store/images/Screenshot_2022-11-21_202441-removebg-preview_2_KoInVE2.png', 'S', 3, 2, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (425, 'dior perfumes new collection from dior', 210.00, 'dior perfumes', 'store/images/41wmZzCneSL_3_dPDp1cs.png', 'S', 3, 2, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (426, 'dior perfumes new collection from dior', 230.00, 'dior perfumes luva', 'store/images/dior-removebg-preview_iWrIF7U.png', 'S', 3, 2, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (427, 'suavage perfumes', 230.00, 'suvage perfumes', 'store/images/images__2_-removebg-preview_3_d1sWc4e.png', 'S', 7, 2, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (428, 'date new collection perfumes for men', 250.00, 'date', 'store/images/images-removebg-preview_2_5_pbMwfjp.png', 'S', 3, 2, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (429, 'vokon slight sunglasses', 250.00, 'vakon sunglass', 'store/images/2a92d765b9d531082e48810ccc46498d-removebg-preview_PJFSP3K.png', 'S', 4, 3, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (430, 'rayban squared sligthly men sunglasses', 310.00, 'rayban sungalsses', 'store/images/4bc1f504d3bd2a197d7a6b9f791dc648-removebg-preview_YikOmmz.png', 'S', 4, 3, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (431, 'rounded rayban sunglass', 260.00, 'rounded sunglass', 'store/images/55b8804f78fc3df23d3441c4ff6019dd-removebg-preview.png', 'S', 4, 1, 1, NULL, NULL, 'Sunglasses');
INSERT INTO `store_product` VALUES (432, 'rever rayban version sugnlasses', 204.00, 'rever sunglasses', 'store/images/db0137ae1645e22b0ce11d2072f8eb47-removebg-preview_bFpdr15.png', 'S', 4, 1, 1, NULL, NULL, 'Sunglasses');
INSERT INTO `store_product` VALUES (433, 'rac n5 chanel perfume for women', 170.00, 'n5 chanel', 'store/images/photo-1541643600914-78b084683601-removebg-preview_6_U1dWiUw.png', 'S', 3, 2, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (434, 'soubnabel new collection bracelte for women', 420.00, 'sounabe bracelete', 'store/images/Screenshot_2022-11-21_220008-removebg-preview_1_Tcmznt1.png', 'S', 7, 3, 1, NULL, NULL, 'Bracelet');
INSERT INTO `store_product` VALUES (435, 'gentelmen perfume new perfume version', 250.00, 'gentelman perfume', 'store/images/WhatsApp_Image_2023-05-21_at_9.46.22_PM-removebg-preview_1_nuNorbN.png', 'S', 3, 2, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (436, 'fossil watch grey for men', 460.00, 'fossil watch', 'store/images/WhatsApp_Image_2023-05-21_at_9.46.24_PM-removebg-preview_1_UUV4yyL.png', 'S', 6, 3, 1, NULL, 'grey', 'Watches');
INSERT INTO `store_product` VALUES (437, 'dior collection power perfumes', 257.00, 'dior collection', 'store/images/WhatsApp_Image_2023-05-21_at_9.46.29_PM__1_-removebg-preview_1_MP3Sfae.png', 'S', 3, 2, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (438, 'pink rolex watch', 750.00, 'pink watch', 'store/images/WhatsApp_Image_2023-05-21_at_9.46.35_PM__1_-removebg-preview_1_NvYuOd8.png', 'S', 6, 3, 1, NULL, 'pink', 'Watches');
INSERT INTO `store_product` VALUES (448, 'plain off white smart watch', 560.00, 'smart watch', 'store/images/5-2_Trr7rZL.png', 'M', 6, 3, 1, NULL, 'white', 'Watches');
INSERT INTO `store_product` VALUES (449, 'cwatch bracelet for plain color for men', 90.00, 'cwatchy bracelet', 'store/images/2_PPayjdm.png', 'M', 7, 3, 1, NULL, 'blue', 'Bracelet');
INSERT INTO `store_product` VALUES (450, 'cwatch bracelet for plain color for men', 90.00, 'cwatchy bracelet', 'store/images/3_5CbCEUt.png', 'M', 7, 3, 1, NULL, 'red', 'Bracelet');
INSERT INTO `store_product` VALUES (451, 'niaue pure silver bracelete', 890.00, 'niuae bracelet', 'store/images/4_bhc3eJ3.png', 'W', 7, 3, 1, NULL, 'silver', 'Bracelet');
INSERT INTO `store_product` VALUES (452, 'aw watch for women', 520.00, 'aw watch', 'store/images/5_rrIB9kr.png', 'W', 6, 3, 1, NULL, 'silver', 'Watches');
INSERT INTO `store_product` VALUES (453, 'aw watch for women', 520.00, 'aw watch', 'store/images/46.png', 'W', 6, 3, 1, NULL, 'gold', 'Watches');
INSERT INTO `store_product` VALUES (454, 'fossil pink watch for women', 820.00, 'fossil watch', 'store/images/43.png', 'W', 6, 3, 1, NULL, 'pink', 'Watches');
INSERT INTO `store_product` VALUES (455, 'blue or chanel', 440.00, 'blue or chanel', 'store/images/7_VJzGlP7.png', 'M', 3, 2, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (456, 'orange lods bracelet', 75.00, 'lods bracelet', 'store/images/10_pW15PTd.png', 'M', 7, 3, 1, NULL, 'orange', 'Bracelet');
INSERT INTO `store_product` VALUES (457, 'wauy dark green watch', 660.00, 'wauy watch', 'store/images/16_4cCVqYC.png', 'M', 6, 3, 1, NULL, 'dark green', 'Watches');
INSERT INTO `store_product` VALUES (458, 'mvmt brown watch for men', 860.00, 'mvmt watch', 'store/images/21_893vClH.png', 'M', 6, 3, 1, NULL, 'dark brown', 'Watches');
INSERT INTO `store_product` VALUES (459, 'pam bracelet pure silver for men', 650.00, 'pam bracelete', 'store/images/34.png', 'W', 7, 3, 1, NULL, 'silver', 'Bracelet');
INSERT INTO `store_product` VALUES (460, 'pam bracelet pure silver for men', 650.00, 'pam bracelete', 'store/images/42.png', 'W', 7, 3, 1, NULL, 'gold', 'Bracelet');
INSERT INTO `store_product` VALUES (461, 'cwatch bracelet for plain color for men', 90.00, 'cwatchy bracelet', 'store/images/2_uKNBshi.png', 'S', 7, 3, 1, NULL, 'blue', 'Bracelet');
INSERT INTO `store_product` VALUES (462, 'niaue pure silver bracelete', 890.00, 'niuae bracelet', 'store/images/4_oB55XdN.png', 'S', 7, 3, 1, NULL, 'silver', 'Bracelet');
INSERT INTO `store_product` VALUES (463, 'blue or chane', 440.00, 'blue or chanel', 'store/images/7_OfC8aa6.png', 'S', 3, 2, 1, NULL, NULL, 'Perfumes');
INSERT INTO `store_product` VALUES (464, 'aw watch for women', 520.00, 'aw watch', 'store/images/5_EEWS3OH.png', 'S', 3, 3, 1, NULL, 'silver', 'Watches');
INSERT INTO `store_product` VALUES (465, 'mvmt brown watch for men', 860.00, 'mvmt watch', 'store/images/21_g9IkExG.png', 'S', 6, 3, 1, NULL, 'brown', 'Watches');
INSERT INTO `store_product` VALUES (466, 'fossil pink watch for women', 820.00, 'fossil watch', 'store/images/43_ykOfGmH.png', 'S', 6, 3, 1, NULL, 'pink', 'Watches');
INSERT INTO `store_product` VALUES (467, 'fossil pink watch for women', 820.00, 'fossil watch', 'store/images/43_qRCn0qt.png', 'S', 6, 3, 1, NULL, 'pink', 'Watches');
INSERT INTO `store_product` VALUES (468, 'brad silver bags for men', 510.00, 'brad bags', 'store/images/1_2zKk2Mu.png', 'M', 7, 3, 1, NULL, 'silver', 'Bags');
INSERT INTO `store_product` VALUES (469, 'long black coat for men', 1120.00, 'coat for men', 'store/images/4_9Cnv5qf.png', 'M', 1, 1, 1, 'L', 'black', 'Jackets');
INSERT INTO `store_product` VALUES (470, 'long black coat for men', 1120.00, 'coat for men', 'store/images/2_tmFJFoI.png', 'M', 1, 1, 1, 'M', 'black', 'Jackets');
INSERT INTO `store_product` VALUES (471, 'long black coat for men', 1120.00, 'coat for men', 'store/images/2_39YDAlV.png', 'M', 1, 1, 1, 'M', 'black', 'Jackets');
INSERT INTO `store_product` VALUES (472, 'sivel  back bag for men', 630.00, 'sivel back bag', 'store/images/5_QmHDgl0.png', 'M', 1, 3, 1, NULL, 'black', 'Bags');
INSERT INTO `store_product` VALUES (473, 'hand light bag for men', 740.00, 'hand bag for men', 'store/images/6_8iJfx0d.png', 'M', 2, 3, 1, NULL, 'black', 'Bags');
INSERT INTO `store_product` VALUES (474, 'camel with intern draw for men', 880.00, 'jacket for men', 'store/images/8_pM7Q4hx.png', 'M', 1, 1, 1, 'L', 'camel', 'Jackets');
INSERT INTO `store_product` VALUES (475, 'camel with intern draw for men', 880.00, 'jacket for men', 'store/images/5_04x00Gr.png', 'M', 1, 1, 1, 'M', 'camel', 'Jackets');
INSERT INTO `store_product` VALUES (476, 'camel with intern draw for men', 880.00, 'jacket for men', 'store/images/5_dmJuJXU.png', 'M', 1, 1, 1, 'S', 'camel', 'Jackets');
INSERT INTO `store_product` VALUES (477, 'black jacket bubbled for men', 900.00, 'black jacket for men', 'store/images/6_BHwgALf.png', 'M', 1, 1, 1, 'S', 'black', 'Jackets');
INSERT INTO `store_product` VALUES (478, 'black jacket bubbled for men', 900.00, 'black jacket for men', 'store/images/6_KVSxNtS.png', 'M', 1, 1, 1, 'M', 'black', 'Jackets');
INSERT INTO `store_product` VALUES (479, 'black jacket bubbled for men', 900.00, 'black jacket for men', 'store/images/9_V1fDSPc.png', 'M', 1, 1, 1, 'L', 'black', 'Jackets');
INSERT INTO `store_product` VALUES (480, 'vertil wide bag', 750.00, 'vertil bag', 'store/images/11_pLqpqYx.png', 'M', 1, 3, 1, NULL, 'silver', 'Bags');
INSERT INTO `store_product` VALUES (481, 'wilo laptop bag for men', 870.00, 'wilo bag', 'store/images/12_Jp9RcHE.png', 'M', 1, 3, 1, NULL, 'white', 'Bags');
INSERT INTO `store_product` VALUES (482, 'nike light back bag for men', 520.00, 'nike bag', 'store/images/13_3PQ7qM6.png', 'M', 8, 3, 1, NULL, 'black', 'Bags');
INSERT INTO `store_product` VALUES (483, 'oversize jacket for men', 770.00, 'oversize jacket', 'store/images/14_4ftddR1.png', 'M', 1, 1, 1, 'L', 'silver', 'Jackets');
INSERT INTO `store_product` VALUES (484, 'oversize jacket for men', 770.00, 'oversize jacket', 'store/images/10_ZRxy7WG.png', 'M', 1, 1, 1, 'M', 'silver', 'Jackets');
INSERT INTO `store_product` VALUES (485, 'oversize jacket for men', 770.00, 'oversize jacket', 'store/images/10_vi3UEQO.png', 'M', 1, 1, 1, 'S', 'silver', 'Jackets');
INSERT INTO `store_product` VALUES (486, 'brad silver bags for men', 510.00, 'brad bags', 'store/images/1_uUeAu5A.png', 'S', 8, 3, 1, NULL, 'silver', 'Bags');
INSERT INTO `store_product` VALUES (487, 'long black coat for men', 1120.00, 'coat for men', 'store/images/4_Pj1OAOP.png', 'S', 1, 1, 1, NULL, 'black', 'Jackets');
INSERT INTO `store_product` VALUES (488, 'sivel  back bag for men', 472.00, 'sivel  bag', 'store/images/5_3i1qSZQ.png', 'S', 1, 3, 1, NULL, 'black', 'Bags');
INSERT INTO `store_product` VALUES (489, 'hand light bag for men', 740.00, 'hand bag for men', 'store/images/6_EfEmFBL.png', 'S', 2, 3, 1, NULL, 'black', 'Bags');
INSERT INTO `store_product` VALUES (490, 'camel with intern draw for men', 880.00, 'jacket for men', 'store/images/8_jzDRgl7.png', 'S', 1, 1, 1, 'L', 'camel', 'Jackets');
INSERT INTO `store_product` VALUES (491, 'black jacket bubbled for men', 900.00, 'black jacket for men', 'store/images/9_viPevfa.png', 'S', 1, 1, 1, 'L', 'black', 'Jackets');
INSERT INTO `store_product` VALUES (492, 'vertil wide bag', 750.00, 'vertil bag', 'store/images/11_hqMxEoQ.png', 'S', 1, 3, 1, NULL, 'silver', 'Bags');
INSERT INTO `store_product` VALUES (493, 'wilo laptop bag for men', 870.00, 'wilo bag', 'store/images/12_NxLI2YN.png', 'S', 1, 1, 1, NULL, 'white', 'Bags');
INSERT INTO `store_product` VALUES (494, 'nike light back bag for men', 520.00, 'nike bag', 'store/images/13_cJQBBoB.png', 'S', 8, 3, 1, NULL, 'black', 'Bags');
INSERT INTO `store_product` VALUES (495, 'oversize jacket for men', 770.00, 'oversize jacket', 'store/images/14_MB09HqJ.png', 'S', 1, 1, 1, 'L', 'silver', 'Jackets');
INSERT INTO `store_product` VALUES (496, 'nike black wide bag', 890.00, 'nike wide bag', 'store/images/15_XhjzLlF.png', 'M', 8, 3, 1, NULL, 'black', 'Bags');
INSERT INTO `store_product` VALUES (497, 'nike black wide bag', 890.00, 'nike wide bag', 'store/images/15_e7MzOOt.png', 'S', 8, 3, 1, NULL, 'black', 'Bags');
INSERT INTO `store_product` VALUES (498, 'nike black wide bag', 890.00, 'nike wide bag', 'store/images/18_ZYCprTR.png', 'M', 8, 3, 1, NULL, 'grey', 'Bags');
INSERT INTO `store_product` VALUES (499, 'djono plain back bag', 720.00, 'djono bag', 'store/images/17_m5kWpkR.png', 'M', 8, 3, 1, NULL, 'black', 'Bags');
INSERT INTO `store_product` VALUES (500, 'plain black nike light bag', 320.00, 'nike light bag', 'store/images/19_4cX07Vz.png', 'M', 8, 3, 1, NULL, 'black', 'Bags');
INSERT INTO `store_product` VALUES (501, 'bubble plain jacket for women', 910.00, 'bubble jacket for women', 'store/images/20_jOV0xPv.png', 'W', 1, 1, 1, 'L', 'black', 'Jackets');
INSERT INTO `store_product` VALUES (502, 'bubble plain jacket for women', 910.00, 'bubble jacket for women', 'store/images/15_xux0yTc.png', 'W', 1, 1, 1, 'M', 'black', 'Jackets');
INSERT INTO `store_product` VALUES (503, 'bubble plain jacket for women', 910.00, 'bubble jacket for women', 'store/images/15_d1C7Gc9.png', 'W', 1, 1, 1, 'S', 'black', 'Jackets');
INSERT INTO `store_product` VALUES (504, 'bubble plain jacket for women', 910.00, 'bubble jacket for women', 'store/images/26_VcFkvHg.png', 'W', 1, 1, 1, 'L', 'gold', 'Jackets');
INSERT INTO `store_product` VALUES (505, 'bubble plain jacket for women', 910.00, 'bubble jacket for women', 'store/images/21_LE9VVaA.png', 'W', 1, 1, 1, 'M', 'gold', 'Jackets');
INSERT INTO `store_product` VALUES (506, 'bublbe plain jacket for women', 910.00, 'bubble jacket for women', 'store/images/36_R2qo3c0.png', 'W', 1, 1, 1, 'S', 'gold', 'Jackets');
INSERT INTO `store_product` VALUES (507, 'bubble plain jacket for women', 910.00, 'bubble jacket for women', 'store/images/44.png', 'W', 1, 1, 1, 'L', 'camel', 'Jackets');
INSERT INTO `store_product` VALUES (508, 'bubble plain jacket for women', 910.00, 'bubble jacket for women', 'store/images/36.png', 'W', 1, 1, 1, 'M', 'camel', 'Jackets');
INSERT INTO `store_product` VALUES (509, 'bubble plain jacket for women', 910.00, 'bubble jacket for women', 'store/images/36_ciJmgeW.png', 'W', 1, 1, 1, 'S', 'camel', 'Jackets');
INSERT INTO `store_product` VALUES (510, 'bubble plain jacket for women', 910.00, 'bubble jacket for women', 'store/images/20_azypEf7.png', 'S', 1, 1, 1, 'L', 'black', 'Jackets');
INSERT INTO `store_product` VALUES (511, 'bubble plain jacket for women', 910.00, 'bubble jacket for women', 'store/images/21_WCbTgsO.png', 'S', 1, 1, 1, 'M', 'gold', 'Jackets');
INSERT INTO `store_product` VALUES (512, 'bubble plain jacket for women', 910.00, 'bubble jacket for women', 'store/images/36_OxvG55D.png', 'S', 1, 1, 1, 'S', 'camel', 'Jackets');
INSERT INTO `store_product` VALUES (513, 'plain women back bag', 220.00, 'women back bag', 'store/images/21_JcBbVsK.png', 'W', 1, 3, 1, NULL, 'black', 'Bags');
INSERT INTO `store_product` VALUES (514, 'plain women back bag', 220.00, 'women back bag', 'store/images/21_SASkaXE.png', 'S', 1, 3, 1, NULL, 'black', 'Bags');
INSERT INTO `store_product` VALUES (515, 'black zip up jacket for men', 1300.00, 'back jacket for men', 'store/images/25.png', 'M', 1, 1, 1, 'L', 'black', 'Jackets');
INSERT INTO `store_product` VALUES (516, 'black zip up jacket for men', 1300.00, 'back jacket for men', 'store/images/20_MaI8joM.png', 'M', 1, 1, 1, 'M', 'black', 'Jackets');
INSERT INTO `store_product` VALUES (517, 'black zip up jacket for men', 1300.00, 'back jacket for men', 'store/images/20_u46OJSm.png', 'M', 1, 1, 1, 'S', 'black', 'Jackets');
INSERT INTO `store_product` VALUES (518, 'nike back bag with small logo at the top', 200.00, 'nike bags', 'store/images/27.png', 'M', 8, 3, 1, NULL, 'black', 'Bags');
INSERT INTO `store_product` VALUES (519, 'plain hand bag for women', 450.00, 'hand bag for women', 'store/images/22_ez7k9o2.png', 'W', 1, 3, 1, NULL, 'black', 'Bags');
INSERT INTO `store_product` VALUES (520, 'plain hand bag for women', 450.00, 'hand bag for women', 'store/images/30.png', 'W', 1, 3, 1, NULL, 'camel', 'Bags');
INSERT INTO `store_product` VALUES (521, 'plain hand bag for women', 450.00, 'hand bag for women', '', 'S', 1, 3, 1, NULL, 'camel', 'Bags');
INSERT INTO `store_product` VALUES (522, 'plain hand bag for women', 550.00, 'hand bag for women', 'store/images/23_x1HftUV.png', 'W', 1, 3, 1, NULL, 'pink', 'Bags');
INSERT INTO `store_product` VALUES (523, 'plain hand bag for women', 550.00, 'hand bag for women', 'store/images/31.png', 'W', 1, 3, 1, NULL, 'black', 'Bags');
INSERT INTO `store_product` VALUES (524, 'plain hand bag with thick hand for women', 400.00, 'hand bag for women', 'store/images/28.png', 'W', 1, 3, 1, NULL, 'black', 'Bags');
INSERT INTO `store_product` VALUES (525, 'back bag with button for women', 410.00, 'women bags', 'store/images/29.png', 'W', 1, 3, 1, NULL, 'black', 'Bags');
INSERT INTO `store_product` VALUES (526, 'stylish hand bag for women', 710.00, 'stylish hand bag', 'store/images/33.png', 'W', 1, 3, 1, NULL, 'green', 'Bags');
INSERT INTO `store_product` VALUES (527, 'stylish hand bag for women', 710.00, 'stylish hand bag', 'store/images/36_7VZHmh3.png', 'W', 1, 3, 1, NULL, 'yellow', 'Bags');
INSERT INTO `store_product` VALUES (528, 'stylish hand bag for women', 710.00, 'stylish hand bag', '', 'S', 1, 3, 1, NULL, 'yellow', 'Bags');
INSERT INTO `store_product` VALUES (529, 'stylish hand bag for women', 710.00, 'stylish hand bag', 'store/images/46_wVjYOLL.png', 'S', 1, 3, 1, NULL, 'pink', 'Bags');
INSERT INTO `store_product` VALUES (530, 'stylish hand bag for women', 710.00, 'stylish hand bag', 'store/images/46_CNv05Jj.png', 'W', 1, 3, 1, NULL, 'pink', 'Bags');
INSERT INTO `store_product` VALUES (531, 'sportive wide bag for women', 890.00, 'wide bag', 'store/images/45_67ShZv2.png', 'W', 8, 3, 1, NULL, 'pink', 'Bags');
INSERT INTO `store_product` VALUES (532, 'sportive wide bag for women', 890.00, 'wide bag', 'store/images/41_oF4VIEq.png', 'W', 8, 3, 1, NULL, 'green', 'Bags');
INSERT INTO `store_product` VALUES (533, 'stylish back bag for women', 599.00, 'stylish back bag', 'store/images/40.png', 'W', 1, 3, 1, NULL, 'green', 'Bags');
INSERT INTO `store_product` VALUES (534, 'stylish back bag for women', 599.00, 'nike back bag', 'store/images/38.png', 'W', 8, 3, 1, NULL, 'camel', 'Bags');
INSERT INTO `store_product` VALUES (535, 'sportive wide bag for women', 890.00, 'wide bag', 'store/images/35.png', 'M', 8, 3, 1, NULL, 'light blue', 'Bags');
INSERT INTO `store_product` VALUES (536, 'sportive wide bag for women', 890.00, 'wide bag', 'store/images/35_N3sQ1gj.png', 'S', 8, 3, 1, NULL, 'light blue', 'Bags');
INSERT INTO `store_product` VALUES (537, 'women jacket with square patterns', 1400.00, 'women jacket', 'store/images/37.png', 'W', 1, 1, 1, 'L', 'red', 'Jackets');
INSERT INTO `store_product` VALUES (538, 'women jacket with square patterns', 1400.00, 'women jacket', 'store/images/31_m0KueD6.png', 'W', 1, 1, 1, 'M', 'red', 'Jackets');
INSERT INTO `store_product` VALUES (539, 'women jacket with square patterns', 1400.00, 'women jacket', 'store/images/31_Beb1BZH.png', 'W', 1, 1, 1, 'S', 'red', 'Jackets');
INSERT INTO `store_product` VALUES (540, 'women jacket with square patterns', 1400.00, 'women jacket', 'store/images/37_nqTCqNK.png', 'S', 1, 1, 1, 'L', 'red', 'Jackets');
INSERT INTO `store_product` VALUES (541, 'women jacket with point patterns', 1400.00, 'women jacket', 'store/images/39.png', 'W', 1, 1, 1, 'L', 'pink', 'Jackets');
INSERT INTO `store_product` VALUES (542, 'women jacket with point patterns', 1400.00, 'women jacket', 'store/images/33_ZGko0Fy.png', 'W', 1, 1, 1, 'M', 'pink', 'Jackets');
INSERT INTO `store_product` VALUES (543, 'women jacket with point patterns', 1400.00, 'women jacket', 'store/images/33_PXhmUVi.png', 'W', 1, 1, 1, 'S', 'pink', 'Jackets');
INSERT INTO `store_product` VALUES (544, 'women jacket with point patterns', 1400.00, 'women jacket', 'store/images/39_Hw9BziD.png', 'S', 1, 1, 1, 'S', 'pink', 'Jackets');
INSERT INTO `store_product` VALUES (545, 'women pullover with two front bocket', 1500.00, 'women pullover', 'store/images/47.png', 'W', 1, 1, 1, 'L', 'brown', 'Pullover');
INSERT INTO `store_product` VALUES (546, 'women pullover with two front bocket', 1500.00, 'women pullover', 'store/images/47_AoaMXeo.png', 'S', 1, 1, 1, 'L', 'brown', 'Pullover');
INSERT INTO `store_product` VALUES (547, 'women pullover with two front bocket', 1500.00, 'women pullover', 'store/images/39_4PgFfla.png', 'W', 1, 1, 1, 'M', 'brown', 'Pullover');
INSERT INTO `store_product` VALUES (548, 'women pullover with two front bocket', 1500.00, 'women pullover', 'store/images/39_sUe4IwD.png', 'W', 1, 1, 1, 'S', 'brown', 'Pullover');
INSERT INTO `store_product` VALUES (549, 'pinky sunglass for women', 500.00, 'pinky sungalsses', 'store/images/5cec465e5b3ea6d30bf53a0135468417-removebg-preview_gQbGaqe.png', 'W', 4, 3, 1, NULL, 'pink', 'Sunglasses');
INSERT INTO `store_product` VALUES (550, 'sunglass with gold frame for women', 530.00, 'gold sungalsses', 'store/images/8c920ce6945a559e4777e8e9322b0fc2-removebg-preview_Rspnvw3.png', 'W', 4, 3, 1, NULL, 'gold', 'Sunglasses');
INSERT INTO `store_product` VALUES (551, 'sunglass with gold frame for women', 530.00, 'gold sungalsses', '', 'S', 4, 3, 1, NULL, 'gold', 'Sunglasses');
INSERT INTO `store_product` VALUES (552, 'interflaction sungalss for women', 495.00, 'white sunglasses', 'store/images/9bcdbabedea13d2af7727db92db5cb94-removebg-preview_99zHoIf.png', 'W', 4, 3, 1, NULL, 'white', 'Sunglasses');
INSERT INTO `store_product` VALUES (553, 'transparence sunglasses with gold frame', 595.00, 'transparence sungalsses', 'store/images/9bcdbabedea13d2af7727db92db5cb94-removebg-preview_hXSxoZn.png', 'W', 4, 3, 1, NULL, 'gold', 'Sunglasses');
INSERT INTO `store_product` VALUES (554, 'transparence sunglasses with gold frame', 595.00, 'transparence sungalsses', 'store/images/9bcdbabedea13d2af7727db92db5cb94.jpg', 'S', 4, 3, 1, NULL, 'gold', 'Sunglasses');
INSERT INTO `store_product` VALUES (555, 'blue transparence sunglasses with gold frame', 200.00, 'blue transparence sungalsses', 'store/images/aad613cfcb13bb16c0cf8d041929df42-removebg-preview.png', 'W', 4, 3, 1, NULL, 'blue', 'Sunglasses');
INSERT INTO `store_product` VALUES (556, 'gold sunglasses with tiger frame', 350.00, 'golden sungaless', 'store/images/da033fa1616623dc9a4db159df86aea7-removebg-preview.png', 'W', 4, 3, 1, NULL, 'gold', 'Sunglasses');
INSERT INTO `store_product` VALUES (557, 'gold sunglasses with tiger frame', 350.00, 'golden sungaless', 'store/images/da033fa1616623dc9a4db159df86aea7.jpg', 'S', 4, 3, 1, NULL, 'gold', 'Sunglasses');

-- ----------------------------
-- Table structure for store_review
-- ----------------------------
DROP TABLE IF EXISTS `store_review`;
CREATE TABLE `store_review`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rate` smallint UNSIGNED NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` date NOT NULL,
  `product_id` bigint NOT NULL,
  `customer_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `store_review_product_id_abc413b2_fk_store_product_id`(`product_id` ASC) USING BTREE,
  INDEX `store_review_customer_id_8a20ccc2_fk_store_customer_id`(`customer_id` ASC) USING BTREE,
  CONSTRAINT `store_review_customer_id_8a20ccc2_fk_store_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `store_customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `store_review_product_id_abc413b2_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `store_review_chk_1` CHECK (`rate` >= 0)
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_review
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
