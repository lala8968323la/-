/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : yumai

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 23/01/2019 16:24:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for component_type
-- ----------------------------
DROP TABLE IF EXISTS `component_type`;
CREATE TABLE `component_type`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '元件类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of component_type
-- ----------------------------
INSERT INTO `component_type` VALUES (1, '电容');

-- ----------------------------
-- Table structure for orginal
-- ----------------------------
DROP TABLE IF EXISTS `orginal`;
CREATE TABLE `orginal`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` char(62) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '原件名称',
  `Foot_print` char(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '原件封装',
  `Major_factory` char(62) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主要生产厂家',
  `Purchase_price` decimal(8, 2) NOT NULL COMMENT '原件采购价格',
  `Input_shorthand` char(62) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '原件输入简写',
  `Surplus_quantity` mediumint(9) NOT NULL COMMENT '剩余数量',
  `Update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `Create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of orginal
-- ----------------------------
INSERT INTO `orginal` VALUES (1, '三叉戟', '神铁', '海神', 99.00, 'SXJ', 996, '2018-12-29 07:31:27', '0000-00-00 00:00:00');
INSERT INTO `orginal` VALUES (9, '金箍棒', '定海神针', '大禹', 999.00, 'ST', 999, NULL, '0000-00-00 00:00:00');
INSERT INTO `orginal` VALUES (13, '楚云飞', '幼斌', '汗血宝马', 333.00, 'CYF', 5, '0000-00-00 00:00:00', '2018-12-25 00:00:00');
INSERT INTO `orginal` VALUES (12, '六脉神剑', '神铁', '大理', 999.00, 'LM', 5, '0000-00-00 00:00:00', '2018-12-24 00:00:00');
INSERT INTO `orginal` VALUES (14, '李云龙', '幼斌', '意大利炮', 555.00, 'YDL', 5, '2018-12-26 06:39:53', '2018-12-25 00:00:00');
INSERT INTO `orginal` VALUES (16, '鼠标', '罗技', '罗技', 98.00, 'SB', 54, '2018-12-28 08:19:58', '2018-12-28 08:19:58');
INSERT INTO `orginal` VALUES (26, '电路板', 'PLCC', '广州', 95.00, 'TITLE', 321, '2019-01-19 03:04:35', '2019-01-19 03:04:35');
INSERT INTO `orginal` VALUES (28, '多选', 'BGA', '广州', 43.00, 'DX', 62, '2019-01-19 08:57:14', '2019-01-19 08:57:14');
INSERT INTO `orginal` VALUES (29, '多选1', 'DIPAuthor1Author2Author3', '多选1', 52.00, 'DX', 63, '2019-01-19 09:05:40', '2019-01-19 09:05:40');
INSERT INTO `orginal` VALUES (20, '还测试', '还测试', '还测试', 0.00, '还测试', 0, '2019-01-09 08:07:39', '2019-01-09 08:07:39');
INSERT INTO `orginal` VALUES (21, '测试', '测试', '测试', 0.00, '测试', 0, '2019-01-09 08:18:23', '2019-01-09 08:18:23');
INSERT INTO `orginal` VALUES (22, '测试3', '测试3', '测试3', 0.00, '测试3', 0, '2019-01-10 12:59:00', '2019-01-09 08:21:34');
INSERT INTO `orginal` VALUES (23, '测试8', 'BGA', '测试8', 0.00, '测试8', 0, '2019-01-11 04:56:18', '2019-01-09 08:32:07');
INSERT INTO `orginal` VALUES (24, '测试7', 'DIP', '测试7', 0.00, '测试6测试7', 0, '2019-01-11 04:55:14', '2019-01-11 04:50:00');
INSERT INTO `orginal` VALUES (25, '测试7', 'PLCC', '测试7', 0.00, '测试7', 0, '2019-01-11 04:50:38', '2019-01-11 04:50:38');
INSERT INTO `orginal` VALUES (27, '电阻', 'QFP', '广东', 378.00, 'DZ', 1938, '2019-01-19 03:10:24', '2019-01-19 03:10:24');
INSERT INTO `orginal` VALUES (36, '多选6', 'PLCC,TO,BGA,TO', '多选6', 36.00, 'DX', 85, '2019-01-21 03:41:37', '2019-01-21 03:41:37');

-- ----------------------------
-- Table structure for package_table
-- ----------------------------
DROP TABLE IF EXISTS `package_table`;
CREATE TABLE `package_table`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '封装',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of package_table
-- ----------------------------
INSERT INTO `package_table` VALUES (1, 'TO');
INSERT INTO `package_table` VALUES (2, 'DIP');
INSERT INTO `package_table` VALUES (3, 'PLCC');
INSERT INTO `package_table` VALUES (4, 'QFP');
INSERT INTO `package_table` VALUES (5, 'BGA');
INSERT INTO `package_table` VALUES (6, 'CSP');
INSERT INTO `package_table` VALUES (8, 'BBQ');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `Orginal_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '原件表主键ID',
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '产品名称',
  `Product_no` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '产品唯一编号',
  `Status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态:缺货,补货,正常',
  `Is_delete` tinyint(1) DEFAULT NULL COMMENT '是否已经删除,0,否；1,已删除',
  `Product_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品的实际大小图片，如进入该商品页时介绍商品属性所显示的大图片',
  `Product_thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '在前台显示的微缩图片，如在分类筛选时显示的小图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (56, '三叉戟,三叉戟,楚云飞,李云龙,李云龙,三叉戟,三叉戟,李云龙,三叉戟,三叉戟,三叉戟', '55', 'I123275904470092', '正常', 0, 'jin.jpg', '');
INSERT INTO `product` VALUES (51, '金箍棒,楚云飞,六脉神剑,鼠标,电路板,李云龙,三叉戟,三叉戟,李云龙,三叉戟,三叉戟', '11', 'I123255679040079', '正常', 0, '', '');
INSERT INTO `product` VALUES (44, '13', '亮剑1', 'I114482042966040', '正常', 1, 'san.jpg', 'jin.jpg');
INSERT INTO `product` VALUES (45, '13', '亮剑2', 'I114482906126059', '正常', 1, 'liu.jpg', 'jin.jpg');
INSERT INTO `product` VALUES (41, '1', '神神神奇', 'I111004397009058', '正常', 1, 'liu.jpg', 'liu.jpg');
INSERT INTO `product` VALUES (43, '13', '亮剑', 'I114481144216003', '正常', 1, 'liu.jpg', 'jin.jpg');
INSERT INTO `product` VALUES (52, '三叉戟,三叉戟,楚云飞,三叉戟,李云龙,三叉戟,李云龙,三叉戟,鼠标,三叉戟,三叉戟', '22', 'I123257185200065', '正常', 0, 'san.jpg', '');
INSERT INTO `product` VALUES (42, '13', '亮剑', 'I114473453086063', '正常', 1, 'san.jpg', 'liu.jpg');
INSERT INTO `product` VALUES (36, '12', '测试', 'I111966787429085', '补货', 1, 'jin.jpg', 'liu.jpg');
INSERT INTO `product` VALUES (46, '13', '亮剑3', 'I114484043766051', '正常', 1, 'liu.jpg', 'jin.jpg');
INSERT INTO `product` VALUES (47, '13', '亮剑4', 'I114485150076069', '正常', 1, 'liu.jpg', 'jin.jpg');
INSERT INTO `product` VALUES (48, '13', '亮剑5', 'I114486055026058', '正常', 1, 'san.jpg', 'liu.jpg');
INSERT INTO `product` VALUES (49, '12', '段誉', 'I114491889886070', '正常', 1, 'jin.jpg', 'liu.jpg');
INSERT INTO `product` VALUES (50, '18', '测试', 'I114596127856066', '正常', 1, 'liu.jpg', 'liu.jpg');
INSERT INTO `product` VALUES (53, '三叉戟,三叉戟,三叉戟,六脉神剑,李云龙,三叉戟,李云龙,三叉戟,李云龙,三叉戟,三叉戟', '33', 'I123259050260098', '正常', 0, 'liu.jpg', '');
INSERT INTO `product` VALUES (54, '三叉戟,三叉戟,李云龙,三叉戟,三叉戟,李云龙,三叉戟,李云龙,三叉戟,三叉戟,李云龙', '44', 'I123260963830027', '正常', 0, 'liu.jpg', '');
INSERT INTO `product` VALUES (55, '六脉神剑,三叉戟,三叉戟,楚云飞,六脉神剑,三叉戟,李云龙,三叉戟,李云龙,三叉戟,三叉戟', '44', 'I123264204720077', '正常', 0, '', '');
INSERT INTO `product` VALUES (57, '三叉戟,三叉戟,李云龙,三叉戟,三叉戟,三叉戟,三叉戟,李云龙,三叉戟,三叉戟,三叉戟', '66', 'I123284649040033', '正常', 0, 'jin.jpg', '');
INSERT INTO `product` VALUES (58, '1,1,14,1,1,1,14,1,1,1,1', '77', 'I123299754660037', '正常', 0, 'jin.jpg', '');
INSERT INTO `product` VALUES (59, '1,14,1,1,1,1,1,14,1,1,1', '88', 'I123300418340018', '正常', 0, 'jin.jpg', '');
INSERT INTO `product` VALUES (60, '1,14,1,1,1,14,1,1,1,1,1', '99', 'I123301968890063', '正常', 0, 'liu.jpg', '');

-- ----------------------------
-- Table structure for product_choice
-- ----------------------------
DROP TABLE IF EXISTS `product_choice`;
CREATE TABLE `product_choice`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `Orginal_id` int(11) DEFAULT NULL COMMENT '原件id',
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '产品名称',
  `Produc_num` smallint(5) DEFAULT NULL COMMENT '产品库存',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_choice
-- ----------------------------
INSERT INTO `product_choice` VALUES (1, 1, '定海神针', 53);
INSERT INTO `product_choice` VALUES (4, 12, '六六六', 34);
INSERT INTO `product_choice` VALUES (5, 17, '久久', 67);

-- ----------------------------
-- Table structure for product_inventory
-- ----------------------------
DROP TABLE IF EXISTS `product_inventory`;
CREATE TABLE `product_inventory`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `Product_id` int(11) DEFAULT NULL COMMENT '原件表主键ID',
  `Produc_num` smallint(5) DEFAULT NULL COMMENT '产品库存',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of product_inventory
-- ----------------------------
INSERT INTO `product_inventory` VALUES (2, 12, 33);

-- ----------------------------
-- Table structure for product_orginal
-- ----------------------------
DROP TABLE IF EXISTS `product_orginal`;
CREATE TABLE `product_orginal`  (
  `Parent_id` int(11) DEFAULT NULL COMMENT '产品ID',
  `Orginal_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '配件id',
  `Product_price` decimal(10, 2) DEFAULT NULL COMMENT '配件产品价格',
  PRIMARY KEY (`Orginal_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of product_orginal
-- ----------------------------
INSERT INTO `product_orginal` VALUES (12, 4, 42.00);
INSERT INTO `product_orginal` VALUES (4, 3, 44.00);
INSERT INTO `product_orginal` VALUES (13, 5, 56.00);

-- ----------------------------
-- Table structure for product_purchase
-- ----------------------------
DROP TABLE IF EXISTS `product_purchase`;
CREATE TABLE `product_purchase`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `Product_id` int(11) DEFAULT NULL COMMENT '产品id',
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '产品名称',
  `Produc_num` smallint(5) DEFAULT NULL COMMENT '产品库存',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_purchase
-- ----------------------------
INSERT INTO `product_purchase` VALUES (1, 1, '八核', 7);
INSERT INTO `product_purchase` VALUES (3, 44, '李幼斌', 99);

-- ----------------------------
-- Table structure for product_purchases
-- ----------------------------
DROP TABLE IF EXISTS `product_purchases`;
CREATE TABLE `product_purchases`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `product_purchase_id` int(11) DEFAULT NULL COMMENT '产品采购表主键ID',
  `Orginal_id` int(11) DEFAULT NULL COMMENT '原件id',
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '产品名称',
  `Produc_num` smallint(5) DEFAULT NULL COMMENT '产品库存',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_purchases
-- ----------------------------
INSERT INTO `product_purchases` VALUES (3, 3, 12, '后海', 52);
INSERT INTO `product_purchases` VALUES (2, 1, 12, '旗舰', 2);

-- ----------------------------
-- Table structure for product_put_in_storage
-- ----------------------------
DROP TABLE IF EXISTS `product_put_in_storage`;
CREATE TABLE `product_put_in_storage`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `Product_id` int(11) DEFAULT NULL COMMENT '产品主键ID',
  `Update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `Create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of product_put_in_storage
-- ----------------------------
INSERT INTO `product_put_in_storage` VALUES (3, 44, '2019-01-16 09:49:16', '2019-01-16 09:48:59');
INSERT INTO `product_put_in_storage` VALUES (2, 1, '2018-12-26 06:34:45', '2018-12-26 06:34:36');

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `Product_id` int(11) DEFAULT NULL COMMENT '产品主键ID',
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '产品名称',
  `payment` decimal(10, 2) NOT NULL COMMENT '销售额',
  `Update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `Create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sales
-- ----------------------------
INSERT INTO `sales` VALUES (1, 1, '六脉神剑', 33.00, '2018-12-26 02:53:11', '2018-12-26 02:53:11');
INSERT INTO `sales` VALUES (2, 3, '大力金刚掌', 45.00, '2018-12-25 00:00:00', '2018-12-25 00:00:00');
INSERT INTO `sales` VALUES (3, 5, '一阳指', 32.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `sales` VALUES (4, 6, '铁头功', 42.00, '2018-12-25 09:12:37', '2018-12-25 09:12:37');
INSERT INTO `sales` VALUES (6, 44, '完了', 88.00, '2019-01-16 09:58:19', '2019-01-16 09:58:19');

-- ----------------------------
-- Table structure for username
-- ----------------------------
DROP TABLE IF EXISTS `username`;
CREATE TABLE `username`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of username
-- ----------------------------
INSERT INTO `username` VALUES (1, '21232f297a57a5a743894a0e4a801fc3', 'f89ffda3025a51d118578d74e06077ca');

SET FOREIGN_KEY_CHECKS = 1;
