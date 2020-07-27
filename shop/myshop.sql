/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : myshop

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 26/07/2020 18:29:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `auth_permission` VALUES (25, 'Can add orders', 7, 'add_orders');
INSERT INTO `auth_permission` VALUES (26, 'Can change orders', 7, 'change_orders');
INSERT INTO `auth_permission` VALUES (27, 'Can delete orders', 7, 'delete_orders');
INSERT INTO `auth_permission` VALUES (28, 'Can view orders', 7, 'view_orders');
INSERT INTO `auth_permission` VALUES (29, 'Can add cart', 8, 'add_cart');
INSERT INTO `auth_permission` VALUES (30, 'Can change cart', 8, 'change_cart');
INSERT INTO `auth_permission` VALUES (31, 'Can delete cart', 8, 'delete_cart');
INSERT INTO `auth_permission` VALUES (32, 'Can view cart', 8, 'view_cart');
INSERT INTO `auth_permission` VALUES (33, 'Can add sub cat', 9, 'add_subcat');
INSERT INTO `auth_permission` VALUES (34, 'Can change sub cat', 9, 'change_subcat');
INSERT INTO `auth_permission` VALUES (35, 'Can delete sub cat', 9, 'delete_subcat');
INSERT INTO `auth_permission` VALUES (36, 'Can view sub cat', 9, 'view_subcat');
INSERT INTO `auth_permission` VALUES (37, 'Can add goods', 10, 'add_goods');
INSERT INTO `auth_permission` VALUES (38, 'Can change goods', 10, 'change_goods');
INSERT INTO `auth_permission` VALUES (39, 'Can delete goods', 10, 'delete_goods');
INSERT INTO `auth_permission` VALUES (40, 'Can view goods', 10, 'view_goods');
INSERT INTO `auth_permission` VALUES (41, 'Can add super cat', 11, 'add_supercat');
INSERT INTO `auth_permission` VALUES (42, 'Can change super cat', 11, 'change_supercat');
INSERT INTO `auth_permission` VALUES (43, 'Can delete super cat', 11, 'delete_supercat');
INSERT INTO `auth_permission` VALUES (44, 'Can view super cat', 11, 'view_supercat');
INSERT INTO `auth_permission` VALUES (45, 'Can add orders detail', 12, 'add_ordersdetail');
INSERT INTO `auth_permission` VALUES (46, 'Can change orders detail', 12, 'change_ordersdetail');
INSERT INTO `auth_permission` VALUES (47, 'Can delete orders detail', 12, 'delete_ordersdetail');
INSERT INTO `auth_permission` VALUES (48, 'Can view orders detail', 12, 'view_ordersdetail');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$180000$DjpqOP1JZ9M0$kq2KV60YfXg3rwv7Dhtid8ldYwj3SoCxxabLaUQxHMY=', '2020-07-25 09:37:49.967210', 1, 'qjt', '', '', '2024736591@qq.com', 1, 1, '2020-07-25 09:37:22.727975');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `group_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `action_flag` smallint(0) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (8, 'shops', 'cart');
INSERT INTO `django_content_type` VALUES (10, 'shops', 'goods');
INSERT INTO `django_content_type` VALUES (7, 'shops', 'orders');
INSERT INTO `django_content_type` VALUES (12, 'shops', 'ordersdetail');
INSERT INTO `django_content_type` VALUES (9, 'shops', 'subcat');
INSERT INTO `django_content_type` VALUES (11, 'shops', 'supercat');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-07-25 09:35:23.386737');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-07-25 09:35:23.610140');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-07-25 09:35:24.222503');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-07-25 09:35:24.374097');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-07-25 09:35:24.382076');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-07-25 09:35:24.544682');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-07-25 09:35:24.716182');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-07-25 09:35:24.745106');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-07-25 09:35:24.755112');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-07-25 09:35:24.822897');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-07-25 09:35:24.825890');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-07-25 09:35:24.834866');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-07-25 09:35:24.912658');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-07-25 09:35:24.994479');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-07-25 09:35:25.013388');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-07-25 09:35:25.023361');
INSERT INTO `django_migrations` VALUES (17, 'sessions', '0001_initial', '2020-07-25 09:35:25.056272');
INSERT INTO `django_migrations` VALUES (18, 'shops', '0001_initial', '2020-07-26 10:12:50.048805');
INSERT INTO `django_migrations` VALUES (19, 'shops', '0002_ordersdetail', '2020-07-26 10:16:03.780198');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('ch5e58boxs4rh5g619e6jzzas11mj2q9', 'M2MwNzJkYzEyODMyNDZhYWNjN2UzMmNhYWFkOGU5NjJjMmQ2NTA0ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYjFmZjlmMzY1OWVmMWEwYjI0ZTg1MjlmMTRiZjM3YmRlYmQ5MTQyIn0=', '2020-08-08 09:37:49.971200');

-- ----------------------------
-- Table structure for shops_cart
-- ----------------------------
DROP TABLE IF EXISTS `shops_cart`;
CREATE TABLE `shops_cart`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `number` int(0) NOT NULL,
  `addtime` datetime(6) NOT NULL,
  `subcat_id_id` int(0) NOT NULL,
  `user_id_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `shops_cart_subcat_id_id_e481d258_fk_shops_goods_id`(`subcat_id_id`) USING BTREE,
  INDEX `shops_cart_user_id_id_3e05fcba_fk_auth_user_id`(`user_id_id`) USING BTREE,
  CONSTRAINT `shops_cart_subcat_id_id_e481d258_fk_shops_goods_id` FOREIGN KEY (`subcat_id_id`) REFERENCES `shops_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shops_cart_user_id_id_3e05fcba_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shops_goods
-- ----------------------------
DROP TABLE IF EXISTS `shops_goods`;
CREATE TABLE `shops_goods`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `original_price` int(0) NOT NULL,
  `current_price` int(0) NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `views_count` int(0) NOT NULL,
  `is_sale` tinyint(1) NOT NULL,
  `is_new` tinyint(1) NOT NULL,
  `addtime` datetime(6) NOT NULL,
  `subcat_id_id` int(0) NOT NULL,
  `supercat_id_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `shops_goods_subcat_id_id_36f32730_fk_shops_subcat_id`(`subcat_id_id`) USING BTREE,
  INDEX `shops_goods_supercat_id_id_9bfdf17c_fk_shops_supercat_id`(`supercat_id_id`) USING BTREE,
  CONSTRAINT `shops_goods_subcat_id_id_36f32730_fk_shops_subcat_id` FOREIGN KEY (`subcat_id_id`) REFERENCES `shops_subcat` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shops_goods_supercat_id_id_9bfdf17c_fk_shops_supercat_id` FOREIGN KEY (`supercat_id_id`) REFERENCES `shops_supercat` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shops_orders
-- ----------------------------
DROP TABLE IF EXISTS `shops_orders`;
CREATE TABLE `shops_orders`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `recevie_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `recevie_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `recevie_tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `addtime` datetime(6) NOT NULL,
  `user_id_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `shops_orders_user_id_id_d3fe0654_fk_auth_user_id`(`user_id_id`) USING BTREE,
  CONSTRAINT `shops_orders_user_id_id_d3fe0654_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shops_ordersdetail
-- ----------------------------
DROP TABLE IF EXISTS `shops_ordersdetail`;
CREATE TABLE `shops_ordersdetail`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `number` int(0) NOT NULL,
  `goods_id_id` int(0) NOT NULL,
  `order_id_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `shops_ordersdetail_goods_id_id_ac4ff486_fk_shops_goods_id`(`goods_id_id`) USING BTREE,
  INDEX `shops_ordersdetail_order_id_id_0dad7d4d_fk_shops_orders_id`(`order_id_id`) USING BTREE,
  CONSTRAINT `shops_ordersdetail_goods_id_id_ac4ff486_fk_shops_goods_id` FOREIGN KEY (`goods_id_id`) REFERENCES `shops_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shops_ordersdetail_order_id_id_0dad7d4d_fk_shops_orders_id` FOREIGN KEY (`order_id_id`) REFERENCES `shops_orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shops_subcat
-- ----------------------------
DROP TABLE IF EXISTS `shops_subcat`;
CREATE TABLE `shops_subcat`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `addtime` datetime(6) NOT NULL,
  `super_cat_id_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `shops_subcat_super_cat_id_id_41eaade4_fk_shops_supercat_id`(`super_cat_id_id`) USING BTREE,
  CONSTRAINT `shops_subcat_super_cat_id_id_41eaade4_fk_shops_supercat_id` FOREIGN KEY (`super_cat_id_id`) REFERENCES `shops_supercat` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shops_supercat
-- ----------------------------
DROP TABLE IF EXISTS `shops_supercat`;
CREATE TABLE `shops_supercat`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `addtime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
