/*
Navicat MySQL Data Transfer

Source Server         : zhengdb
Source Server Version : 50540
Source Host           : 10.113.16.188:3306
Source Database       : pbdb

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-12-19 17:52:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pb_blog
-- ----------------------------
DROP TABLE IF EXISTS `pb_blog`;
CREATE TABLE `pb_blog` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT '主键ID',
  `BLOG_TITLE` varchar(100) NOT NULL COMMENT '博文标题',
  `CREATE_TIME` varchar(30) NOT NULL COMMENT '创建时间',
  `CATEGORY_ID` varchar(50) NOT NULL COMMENT '所属分类ID',
  `BLOG_CONTENT` longtext NOT NULL COMMENT '博文内容',
  `USER_ID` varchar(50) NOT NULL COMMENT '发布用户ID',
  PRIMARY KEY (`ID`),
  KEY `BLOG_FK_1` (`CATEGORY_ID`),
  KEY `BLOG_FK_2` (`USER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of pb_blog
-- ----------------------------

-- ----------------------------
-- Table structure for pb_category
-- ----------------------------
DROP TABLE IF EXISTS `pb_category`;
CREATE TABLE `pb_category` (
  `ID` varchar(50) NOT NULL COMMENT '主键ID',
  `CATEGORY_NAME` varchar(100) DEFAULT NULL COMMENT '分类名称',
  `BLOG_COUNT` int(11) NOT NULL DEFAULT '0' COMMENT '分类下的博文数量',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of pb_category
-- ----------------------------

-- ----------------------------
-- Table structure for pb_user
-- ----------------------------
DROP TABLE IF EXISTS `pb_user`;
CREATE TABLE `pb_user` (
  `ID` varchar(50) NOT NULL COMMENT '主键ID',
  `USER_PASSWORD` varchar(50) NOT NULL COMMENT '用户密码',
  `USER_NAME` varchar(50) NOT NULL COMMENT '用户名',
  `USER_MAIL` varchar(50) DEFAULT NULL COMMENT '用户邮箱',
  `USER_CITY` varchar(50) DEFAULT NULL COMMENT '用户所在城市',
  `USER_COUNTRY` varchar(50) DEFAULT NULL COMMENT '用户所在国家',
  `USER_GITHUB` varchar(100) DEFAULT NULL COMMENT '用户github地址',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of pb_user
-- ----------------------------
