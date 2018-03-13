/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : sampledb

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-03-08 17:24:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(32) NOT NULL COMMENT '用户名/昵称',
  `password` varchar(15) NOT NULL COMMENT '用户密码',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `accountStatus` char(1) DEFAULT NULL COMMENT '账号状态',
  `address` varchar(256) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Switch','123', '2017-01-09', '1', '1','北京市');
INSERT INTO `user` VALUES ('2', 'Kity','123', '2017-01-02', '2', '1','上海市');
INSERT INTO `user` VALUES ('3', '张三','123', '2016-12-13', '1', '1','广州市');
INSERT INTO `user` VALUES ('4', '李四','123', '2015-06-17', '2','1', '深圳市');
INSERT INTO `user` VALUES ('5', '王五','123', '2017-06-06', '1', '1','北京市');
INSERT INTO `user` VALUES ('6', '张张','123', '2014-01-02', '2', '1','北京市');

-- ----------------------------
-- Table structure for logininfo
-- ----------------------------
DROP TABLE IF EXISTS `logininfo`;
CREATE TABLE `logininfo` (
	id varchar(12) not null Comment '日志id',
	userId int(11) not null Comment '用户id',
	accessChannel varchar(100) Comment '用户访问途径',
	loginDate datetime Comment '登陆时间'
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

