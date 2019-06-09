/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2019-06-09 09:49:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `Cno` char(4) NOT NULL,
  `Cname` char(40) NOT NULL,
  `Cpno` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Ccredit` smallint(6) NOT NULL,
  PRIMARY KEY (`Cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '数据库', '5', '4');
INSERT INTO `course` VALUES ('2', '数学', null, '2');
INSERT INTO `course` VALUES ('3', '信息系统', '1', '4');
INSERT INTO `course` VALUES ('4', '操作系统', '6', '3');
INSERT INTO `course` VALUES ('5', '数据结构', '7', '4');
INSERT INTO `course` VALUES ('6', 'PASCAL语言', '6', '4');

-- ----------------------------
-- Table structure for `sc`
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `Sno` char(9) NOT NULL,
  `Cno` char(4) NOT NULL,
  `Grade` smallint(6) NOT NULL,
  PRIMARY KEY (`Sno`,`Cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES ('201215121', '1', '92');
INSERT INTO `sc` VALUES ('201215121', '2', '85');
INSERT INTO `sc` VALUES ('201215121', '3', '88');
INSERT INTO `sc` VALUES ('201215122', '2', '90');
INSERT INTO `sc` VALUES ('201215122', '3', '80');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `Sno` char(9) NOT NULL,
  `Sname` char(20) NOT NULL,
  `Ssex` char(2) NOT NULL,
  `Sage` smallint(6) NOT NULL,
  `Sdept` char(20) NOT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('201215121', '李勇', '男', '20', 'CS');
INSERT INTO `student` VALUES ('201215122', '刘晨', '女', '19', 'CS');
INSERT INTO `student` VALUES ('201215123', '王敏', '女', '18', 'MA');
INSERT INTO `student` VALUES ('201215124', '张立', '男', '19', 'IS');
