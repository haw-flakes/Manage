/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : management

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-07-22 17:48:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cux_todo_items
-- ----------------------------
DROP TABLE IF EXISTS `cux_todo_items`;
CREATE TABLE `cux_todo_items` (
  `TODO_ITEM_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '代办事项ID',
  `USER_ID` bigint(20) DEFAULT NULL COMMENT '属主用户',
  `TODO_ITEM_TITLE` varchar(250) NOT NULL COMMENT '代办事项标题',
  `TODO_ITEM_CONTENT` varchar(2000) DEFAULT NULL COMMENT '代办事项内容',
  `PRIORITY` varchar(10) NOT NULL DEFAULT 'LOW' COMMENT '优先级：LOW/MEDIUM/HIGH',
  `CREATION_DATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `LAST_UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `COMMENTS` varchar(2000) DEFAULT '' COMMENT '备注',
  `del` int(1) NOT NULL DEFAULT '1' COMMENT '1表示未删除，0表示已删除',
  PRIMARY KEY (`TODO_ITEM_ID`),
  KEY `foreign_key1` (`USER_ID`),
  CONSTRAINT `foreign_key1` FOREIGN KEY (`USER_ID`) REFERENCES `cux_users` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cux_todo_items
-- ----------------------------
INSERT INTO `cux_todo_items` VALUES ('1', '1', '托尔斯泰', '复活', 'LOW', '2017-07-22 13:23:39', null, '', '1');
INSERT INTO `cux_todo_items` VALUES ('2', '1', '泰勒', 'love story', 'high', '2017-07-22 16:02:00', null, null, '1');
INSERT INTO `cux_todo_items` VALUES ('3', '1', '2', '3', '2', '2017-07-22 17:05:33', '2017-07-22 17:05:33', null, '0');
INSERT INTO `cux_todo_items` VALUES ('4', '1', '32fweg', '32r', '223111', '2017-07-22 17:46:47', '2017-07-22 17:46:47', null, '0');

-- ----------------------------
-- Table structure for cux_users
-- ----------------------------
DROP TABLE IF EXISTS `cux_users`;
CREATE TABLE `cux_users` (
  `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USER_NAME` varchar(250) NOT NULL COMMENT '用户名称',
  `PASSWORD` varchar(30) NOT NULL COMMENT '用户密码',
  `SEX` varchar(1) DEFAULT '' COMMENT '性别(M-Male/F-Female)',
  `AGE` bigint(20) DEFAULT NULL COMMENT '年龄，必须1...200之间',
  `PHONE_NUMBER` varchar(30) DEFAULT NULL COMMENT '电话',
  `CREATION_DATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `LAST_UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `COMMENTS` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cux_users
-- ----------------------------
INSERT INTO `cux_users` VALUES ('1', 'wxt', '123', 'F', '21', '15671654007', '2017-07-21 19:32:05', '2017-07-22 17:48:00', '');
SET FOREIGN_KEY_CHECKS=1;
