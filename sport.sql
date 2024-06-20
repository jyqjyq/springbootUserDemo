/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : sport

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 19/06/2024 23:18:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userpwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES (1, 'admin', '123456');

-- ----------------------------
-- Table structure for t_sport
-- ----------------------------
DROP TABLE IF EXISTS `t_sport`;
CREATE TABLE `t_sport`  (
  `h_id` int(11) NOT NULL AUTO_INCREMENT,
  `sport_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '运动名称',
  `publisher` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '管理员' COMMENT '发布人',
  `publish_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '发布时间',
  PRIMARY KEY (`h_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sport
-- ----------------------------
INSERT INTO `t_sport` VALUES (30, '篮球', 'wym', '2019-12-12 00:28:43');
INSERT INTO `t_sport` VALUES (31, '足球', 'wym', '2019-12-12 00:32:02');
INSERT INTO `t_sport` VALUES (32, '橄榄球', 'wym', '2019-12-12 00:36:46');

-- ----------------------------
-- Table structure for t_users
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users`  (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_phone_number` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户注册手机号码，用于找回密码',
  `u_nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '昵称',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `height` double NULL DEFAULT NULL COMMENT '身高',
  `weight` double NULL DEFAULT NULL COMMENT '体重',
  PRIMARY KEY (`u_id`) USING BTREE,
  UNIQUE INDEX `uniq`(`u_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES (3, 'test', '1234561', '1355673067', 'test', NULL, NULL, NULL);
INSERT INTO `t_users` VALUES (11, 'lzk', 'lzk', '18320495603', '李先生', NULL, NULL, NULL);
INSERT INTO `t_users` VALUES (13, 'test2', '123456', '1234214124', 'test', 111, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
