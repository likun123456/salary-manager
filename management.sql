/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : management

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 19/05/2022 12:27:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user_clock
-- ----------------------------
DROP TABLE IF EXISTS `user_clock`;
CREATE TABLE `user_clock`  (
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `accountName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `clockYear` int(0) NOT NULL,
  `clockMonth` int(0) NOT NULL,
  `clockDay` int(0) NOT NULL,
  `clockTime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `user_clock_ibfk_1`(`accountName`) USING BTREE,
  CONSTRAINT `user_clock_ibfk_1` FOREIGN KEY (`accountName`) REFERENCES `user_info` (`accountName`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_clock
-- ----------------------------
INSERT INTO `user_clock` VALUES (30, 'zhangsan', '张三', 2022, 3, 3, '11:19:30');
INSERT INTO `user_clock` VALUES (31, 'lisi', '李四', 2022, 3, 3, '11:20:41');
INSERT INTO `user_clock` VALUES (32, 'zhangyu', '张裕', 2022, 3, 3, '11:23:26');
INSERT INTO `user_clock` VALUES (33, 'zll', '赵露露', 2022, 3, 3, '11:25:18');
INSERT INTO `user_clock` VALUES (34, 'zhangsan', '张三', 2020, 5, 25, '08:00:00');
INSERT INTO `user_clock` VALUES (35, 'zhangsan', '张三', 2021, 3, 3, '08:00:00');
INSERT INTO `user_clock` VALUES (36, 'ly', '刘宇', 2020, 5, 25, '08:00:00');
INSERT INTO `user_clock` VALUES (37, 'zhangsan', '张san', 2022, 3, 4, '12:20:23');
INSERT INTO `user_clock` VALUES (39, 'lisi', '李四', 2022, 3, 20, '20:47:37');
INSERT INTO `user_clock` VALUES (40, 'zhangyu', '张宇', 2022, 3, 20, '20:55:12');
INSERT INTO `user_clock` VALUES (41, 'zhangsan', '张三', 2022, 4, 27, '17:47:39');
INSERT INTO `user_clock` VALUES (42, 'lisi', '里斯', 2022, 4, 27, '20:52:02');
INSERT INTO `user_clock` VALUES (43, 'zhangsan', '张三', 2022, 5, 3, '16:40:27');
INSERT INTO `user_clock` VALUES (44, 'zhangsan', '张三', 2022, 5, 18, '11:45:42');
INSERT INTO `user_clock` VALUES (45, 'zhangsan', '张三', 2022, 5, 19, '11:59:30');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `accountName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `depart` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  UNIQUE INDEX `accountName`(`accountName`) USING BTREE,
  CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`accountName`) REFERENCES `user_login` (`accountName`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (7, 'zhangsan', '张三', '测试部', '山东省', '15263232363', '女', 25);
INSERT INTO `user_info` VALUES (8, 'lisi', '里斯', '测试部', '山东省', '15625896547', '男', 23);
INSERT INTO `user_info` VALUES (9, 'zhangyu', '张裕', '测试部', '河南省郑州市', '15256262623', '男', 26);
INSERT INTO `user_info` VALUES (11, 'gyy', '郭玉宇', '测试部', '河北省', '15896547896', '男', 26);
INSERT INTO `user_info` VALUES (12, 'zll', '赵露露', '测试部', '河南省', '1563232323', '女', 24);
INSERT INTO `user_info` VALUES (13, 'ly', '刘宇', '研发部', '郑州市', '15896547896', '男', 25);

-- ----------------------------
-- Table structure for user_leave
-- ----------------------------
DROP TABLE IF EXISTS `user_leave`;
CREATE TABLE `user_leave`  (
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `accountName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `leaveDate` date NULL DEFAULT NULL,
  `reason` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `days` int(0) NOT NULL,
  `result` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `user_leave_ibfk_1`(`accountName`) USING BTREE,
  CONSTRAINT `user_leave_ibfk_1` FOREIGN KEY (`accountName`) REFERENCES `user_info` (`accountName`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_leave
-- ----------------------------
INSERT INTO `user_leave` VALUES (25, 'zhangsan', '张三', '2022-03-04', '生病', 1, '不同意');
INSERT INTO `user_leave` VALUES (26, 'zhangyu', '张裕', '2022-03-05', '家里有事情', 2, '同意');
INSERT INTO `user_leave` VALUES (27, 'zhangsan', '张三', '2022-03-03', '去医院检查', 1, '未审批');
INSERT INTO `user_leave` VALUES (28, 'zhangsan', '张三', '2022-04-27', '生病', 1, '同意');
INSERT INTO `user_leave` VALUES (29, 'lisi', '里斯', '2022-04-27', '生病', 3, '不同意');
INSERT INTO `user_leave` VALUES (30, 'zhangsan', '张三', '2022-05-03', '家中有事', 5, '同意');
INSERT INTO `user_leave` VALUES (31, 'zhangsan', '张三', '2022-05-18', '生病', 4, '同意');
INSERT INTO `user_leave` VALUES (32, 'zhangsan', '张三', '2022-05-19', '家中有事', 2, '未审批');

-- ----------------------------
-- Table structure for user_login
-- ----------------------------
DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login`  (
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `accountName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userType` int(0) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  UNIQUE INDEX `accountName`(`accountName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_login
-- ----------------------------
INSERT INTO `user_login` VALUES (21, 'admin', '123456', 0);
INSERT INTO `user_login` VALUES (24, 'mty', '123456', 1);
INSERT INTO `user_login` VALUES (25, 'zhangsan', '123456', 2);
INSERT INTO `user_login` VALUES (26, 'lisi', '123456', 2);
INSERT INTO `user_login` VALUES (27, 'zhangyu', '123456', 2);
INSERT INTO `user_login` VALUES (28, 'gyy', '123456', 2);
INSERT INTO `user_login` VALUES (29, 'zll', '123456', 2);
INSERT INTO `user_login` VALUES (30, 'ly', '123456', 2);
INSERT INTO `user_login` VALUES (31, 'ldx', '123456', 1);
INSERT INTO `user_login` VALUES (32, '012345', '123456', 1);
INSERT INTO `user_login` VALUES (35, 'lll', '123456', 1);
INSERT INTO `user_login` VALUES (36, '987', '123456', 2);
INSERT INTO `user_login` VALUES (37, 'win', '123456', 1);
INSERT INTO `user_login` VALUES (38, 'dx', '123456', 1);
INSERT INTO `user_login` VALUES (39, '999', '123456', 1);
INSERT INTO `user_login` VALUES (41, 'bruce', 'bruce', 2);

-- ----------------------------
-- Table structure for user_salary
-- ----------------------------
DROP TABLE IF EXISTS `user_salary`;
CREATE TABLE `user_salary`  (
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `accountName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `year` int(0) NOT NULL,
  `month` int(0) NOT NULL,
  `salary` int(0) NULL DEFAULT NULL,
  `basic_salary` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '基本工资',
  `post_salary` int(0) NOT NULL DEFAULT 0 COMMENT '岗位工资',
  `performance_salary` int(0) NOT NULL DEFAULT 0 COMMENT '当月绩效',
  `social_security` int(0) NOT NULL DEFAULT 0 COMMENT '社保缴纳',
  `revenue` int(0) NOT NULL DEFAULT 0 COMMENT '税收',
  `leave` int(0) NOT NULL DEFAULT 0 COMMENT '请假扣除',
  `salaryDate` date NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `user_salary_ibfk_1`(`accountName`) USING BTREE,
  CONSTRAINT `user_salary_ibfk_1` FOREIGN KEY (`accountName`) REFERENCES `user_info` (`accountName`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_salary
-- ----------------------------
INSERT INTO `user_salary` VALUES (9, 'lisi', '李四', 2022, 2, 5000, 20220228, 0, 0, 0, 0, 0, NULL);
INSERT INTO `user_salary` VALUES (10, 'gyy', '郭玉宇', 2022, 2, 3000, 20220228, 0, 0, 0, 0, 0, NULL);
INSERT INTO `user_salary` VALUES (16, 'lisi', '里斯', 2022, 4, 6666, 20220430, 0, 0, 0, 0, 0, NULL);
INSERT INTO `user_salary` VALUES (21, 'zhangsan', '张三', 2022, 4, 6100, 1200, 3000, 2000, 50, 50, 0, '2022-04-30');
INSERT INTO `user_salary` VALUES (22, 'zhangsan', '张三', 2022, 5, 8700, 1200, 5000, 3000, 300, 100, 100, '2022-05-30');

SET FOREIGN_KEY_CHECKS = 1;
