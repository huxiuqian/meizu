/*
Navicat MySQL Data Transfer

Source Server         : huxiuqian
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : meizu

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-09-27 11:01:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `addressid` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址ID',
  `userid` int(11) NOT NULL COMMENT '用户ID',
  `address` varchar(50) NOT NULL COMMENT '收货地址',
  `telphone` varchar(50) NOT NULL COMMENT '收货电话',
  PRIMARY KEY (`addressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------

-- ----------------------------
-- Table structure for health
-- ----------------------------
DROP TABLE IF EXISTS `health`;
CREATE TABLE `health` (
  `healthid` int(11) NOT NULL AUTO_INCREMENT COMMENT '智能电器ID',
  `healthname` varchar(50) NOT NULL COMMENT '智能电器名称',
  `healthtypeid` int(11) NOT NULL COMMENT '智能电器类型ID',
  `healthcolor` varchar(255) NOT NULL COMMENT '智能电器颜色',
  `healthprice` int(11) NOT NULL COMMENT '智能电器价格',
  `healthimage` varchar(100) NOT NULL COMMENT '智能电器图片',
  `healthfunction` varchar(255) NOT NULL COMMENT '智能电器功能',
  `healthcapacity` varchar(255) NOT NULL COMMENT '智能电器容量（限智能厨房用具）',
  PRIMARY KEY (`healthid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of health
-- ----------------------------

-- ----------------------------
-- Table structure for healthtype
-- ----------------------------
DROP TABLE IF EXISTS `healthtype`;
CREATE TABLE `healthtype` (
  `healthtypeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '智能电器类别ID',
  `healthtypename` varchar(255) NOT NULL COMMENT '智能电器类别名称',
  PRIMARY KEY (`healthtypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of healthtype
-- ----------------------------
INSERT INTO `healthtype` VALUES ('1', '魅族盒子');
INSERT INTO `healthtype` VALUES ('2', '体脂秤');
INSERT INTO `healthtype` VALUES ('3', '养生壶');
INSERT INTO `healthtype` VALUES ('4', '靠谱煲');

-- ----------------------------
-- Table structure for network
-- ----------------------------
DROP TABLE IF EXISTS `network`;
CREATE TABLE `network` (
  `networkid` int(2) NOT NULL AUTO_INCREMENT COMMENT '网络类型',
  `netname` varchar(20) NOT NULL COMMENT '网络名称',
  PRIMARY KEY (`networkid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of network
-- ----------------------------
INSERT INTO `network` VALUES ('1', '移动版');
INSERT INTO `network` VALUES ('2', '联通版');
INSERT INTO `network` VALUES ('3', '电信版');
INSERT INTO `network` VALUES ('4', '全网通');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `ordernum` int(11) NOT NULL COMMENT '订单号',
  `userid` int(11) NOT NULL COMMENT '用户ID',
  `phoneid` int(11) DEFAULT NULL COMMENT '手机ID',
  `phonecount` int(11) DEFAULT NULL COMMENT '手机数量',
  `healthid` int(11) DEFAULT NULL COMMENT '智能电器ID',
  `healthcount` int(11) DEFAULT NULL COMMENT '智能电器数量',
  `pastsid` int(11) DEFAULT NULL COMMENT '配件ID',
  `pastscount` int(11) DEFAULT NULL COMMENT '配件数量',
  `addressid` int(11) NOT NULL COMMENT '收货地址ID',
  `ordercount` int(50) NOT NULL COMMENT '订单数量',
  `orderprice` int(11) NOT NULL COMMENT '订单总金额',
  `ordertime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '订单时间',
  `delivery` varchar(50) NOT NULL COMMENT '1为订单配送，0为未配送',
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for parts
-- ----------------------------
DROP TABLE IF EXISTS `parts`;
CREATE TABLE `parts` (
  `partsid` int(11) NOT NULL AUTO_INCREMENT COMMENT '配件ID',
  `partsname` varchar(255) NOT NULL COMMENT '配件型号',
  `partstypeid` int(11) NOT NULL COMMENT '配件类别',
  `partsprice` int(11) NOT NULL COMMENT '配件价格',
  `partscolor` varchar(255) NOT NULL COMMENT '配件颜色',
  `partsimage` varchar(255) NOT NULL COMMENT '配件图片',
  `partslength` double DEFAULT NULL COMMENT '配件长度（限耳机、数据线）',
  `partsbattery` varchar(255) DEFAULT NULL COMMENT '电池容量（限移动电源）',
  PRIMARY KEY (`partsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parts
-- ----------------------------

-- ----------------------------
-- Table structure for partstype
-- ----------------------------
DROP TABLE IF EXISTS `partstype`;
CREATE TABLE `partstype` (
  `partstypeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '配件类型ID',
  `partstypename` varchar(255) NOT NULL COMMENT '配件类型名称',
  PRIMARY KEY (`partstypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of partstype
-- ----------------------------
INSERT INTO `partstype` VALUES ('1', '手机壳');
INSERT INTO `partstype` VALUES ('2', '耳机');
INSERT INTO `partstype` VALUES ('3', '手机贴膜');
INSERT INTO `partstype` VALUES ('4', '魅族手环');

-- ----------------------------
-- Table structure for phone
-- ----------------------------
DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone` (
  `phoneid` int(2) NOT NULL AUTO_INCREMENT COMMENT '手机编号',
  `networkid` int(2) NOT NULL COMMENT '网络类型',
  `pname` varchar(20) NOT NULL COMMENT '手机名称',
  `version` varchar(20) NOT NULL COMMENT '版本信息',
  `storage` int(10) NOT NULL COMMENT '内存',
  `price` int(10) NOT NULL COMMENT '价格',
  `describe` varchar(100) NOT NULL COMMENT '广告词',
  `imgpath` varchar(100) NOT NULL COMMENT '图片',
  `color` varchar(20) NOT NULL COMMENT '颜色',
  `size` varchar(20) NOT NULL COMMENT '屏幕尺寸',
  `system` varchar(20) NOT NULL COMMENT '系统',
  PRIMARY KEY (`phoneid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phone
-- ----------------------------
INSERT INTO `phone` VALUES ('1', '1', '魅蓝2', '公开版', '16', '599', '时尚之选', 'img/phone/1506415290190.png', '经典白', '5.5英寸', 'Flyme 5 (基于YunOS)');
INSERT INTO `phone` VALUES ('2', '4', '魅族 PRO 7', '公开版', '128', '2499', '双瞳如小窗，佳景观历历', 'img/phone/1506416478622.jpg', '香槟金', '5.2英寸', 'Flyme 6');
INSERT INTO `phone` VALUES ('3', '4', '魅蓝 Note6', '标配版', '32', '1499', '极速性能，极速双摄', 'img/phone/1506416711690.jpg', '孔雀青', '5.5英寸', 'Flyme 6');
INSERT INTO `phone` VALUES ('4', '4', '魅蓝 6', '公开版', '16', '699', '忠于体验，打磨颜值', 'img/phone/1506417095821.jpg', '磨砂黑', '5.2英寸', 'Flyme 6');
INSERT INTO `phone` VALUES ('5', '4', '魅族 MX6', '公开版', '32', '1599', '相由心生，美不自胜', 'img/phone/1506417235521.jpg', '玫瑰金', '5.5英寸', 'Flyme 5');
INSERT INTO `phone` VALUES ('6', '4', '魅族 PRO 5', '公开版', '64', '2799', '经典神机，值得拥有', 'img/phone/1506429392047.png', '月光银', '5.7英寸', 'Flyme 4.5');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '用户密码',
  `realname` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `sex` varchar(50) DEFAULT NULL COMMENT '性别',
  `age` int(10) DEFAULT NULL COMMENT '年龄',
  `residence` varchar(50) DEFAULT NULL COMMENT '现居地',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `tel` varchar(50) NOT NULL COMMENT '联系电话',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'zs1111', '222222', '张三', '男', '22', '山东济宁', '145214@qq.com', '17862181102');
INSERT INTO `users` VALUES ('2', 'zhaoliu', '111111', '赵六', '女', '22', '三道杠', '145214@qq.com', '14521452145');
INSERT INTO `users` VALUES ('3', 'lisi111', '111111', 'lisi', '男', '20', '123124134', '145214@qq.com', '17862181093');
INSERT INTO `users` VALUES ('4', 'wangwu', '111111', 'wangwu', '男', '21', 'afaggagag', '145214@qq.com', '15552837521');
INSERT INTO `users` VALUES ('5', '6666666', '111111', 'liuliuliu', '女', '21', 'sgag', '124235@qq.com', '14736541145');
INSERT INTO `users` VALUES ('6', 'huxiuqian', '111111', '11', '男', '18', '1111', '1111@11', '15069705561');
