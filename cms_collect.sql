/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50639
Source Host           : localhost:3306
Source Database       : 1710e_cms

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2020-02-15 10:24:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cms_collect`
-- ----------------------------
DROP TABLE IF EXISTS `cms_collect`;
CREATE TABLE `cms_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(300) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_collect
-- ----------------------------
INSERT INTO `cms_collect` VALUES ('1', 'test收集', 'https://www.baidu.com', '217', '2020-02-15 09:31:58');
INSERT INTO `cms_collect` VALUES ('6', '海水淡化！我国已建成142个工程', 'http://127.0.0.1/articleDetail?id=94', '217', '2020-02-15 10:22:15');
