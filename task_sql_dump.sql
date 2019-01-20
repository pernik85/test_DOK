/*
Navicat MySQL Data Transfer

Source Server         : hetzner2
Source Server Version : 50634
Source Host           : localhost:3306
Source Database       : reserv_db

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2017-02-22 14:22:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(7) unsigned NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `is_black` int(1) unsigned DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_comments_customers_id` (`customer_id`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', 'чушь!', '0', '2015-04-09');
INSERT INTO `comment` VALUES ('2', '1', 'погода хорошая, а я сижу за компом', '0', '2015-04-09');
INSERT INTO `comment` VALUES ('3', '2', 'Вы все рабы и *****', '1', '2015-04-10');
INSERT INTO `comment` VALUES ('4', '2', 'зачем мне квадрат?', '0', '2015-04-10');
INSERT INTO `comment` VALUES ('5', '2', 'С***а?', '1', '2015-04-15');
INSERT INTO `comment` VALUES ('6', '2', 'Кот умер? ** твою ****!', '1', '2015-04-18');
INSERT INTO `comment` VALUES ('7', '3', 'Ускорение равно гравитации', '0', '2015-04-19');
INSERT INTO `comment` VALUES ('8', '3', 'Равномерное движение относительно.', '0', '2015-04-21');
INSERT INTO `comment` VALUES ('9', '3', 'Нейтронных звезд не существует! Козлина', '1', '2015-04-28');
INSERT INTO `comment` VALUES ('10', '4', 'Зачем?', '0', '2015-04-29');
INSERT INTO `comment` VALUES ('11', '4', 'квантовая запутанность. ой, я выпил', '0', '2015-05-01');
INSERT INTO `comment` VALUES ('12', '4', 'Интерферентная картина', '0', '2015-05-02');
INSERT INTO `comment` VALUES ('13', '5', 'фоточку можно?', '0', '2015-05-05');
INSERT INTO `comment` VALUES ('14', '5', 'Купи слона, а?', '0', '2015-05-15');
INSERT INTO `comment` VALUES ('15', '5', 'Ану', '0', '2015-05-15');
INSERT INTO `comment` VALUES ('16', '6', 'сглаживание не применялось', '0', '2015-05-18');
INSERT INTO `comment` VALUES ('17', '5', 'Постоянная Планка', '0', '2015-05-18');
INSERT INTO `comment` VALUES ('18', '7', ')) с тебя пивасик', '0', '2015-05-20');
INSERT INTO `comment` VALUES ('19', '7', 'Корпускулярно-волновой дуализм', '0', '2015-05-24');
INSERT INTO `comment` VALUES ('21', '7', 'aaa', '0', '2015-05-24');
INSERT INTO `comment` VALUES ('22', '8', 'fuck off', '1', '2015-05-24');
INSERT INTO `comment` VALUES ('23', '8', '.рсам иди *****р', '1', '2015-05-25');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_id` (`id`),
  KEY `ix_name` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', 'Владимир');
INSERT INTO `customer` VALUES ('2', 'Дмитрий');
INSERT INTO `customer` VALUES ('3', 'Сигизмунд');
INSERT INTO `customer` VALUES ('4', 'Ярослав');
INSERT INTO `customer` VALUES ('5', 'Евгений');
INSERT INTO `customer` VALUES ('6', 'Николай');
INSERT INTO `customer` VALUES ('7', 'Павел');
INSERT INTO `customer` VALUES ('8', 'Александр');
INSERT INTO `customer` VALUES ('9', 'Петр');
INSERT INTO `customer` VALUES ('10', 'Михаил');

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `name` varchar(255) DEFAULT NULL,
  `qty` int(7) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of result
-- ----------------------------
INSERT INTO `result` VALUES ('PC', '1', 'gr1');
INSERT INTO `result` VALUES ('TV', '8', 'gr2');

-- ----------------------------
-- Table structure for table1
-- ----------------------------
DROP TABLE IF EXISTS `table1`;
CREATE TABLE `table1` (
  `pid` int(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of table1
-- ----------------------------
INSERT INTO `table1` VALUES ('1', 'PC');
INSERT INTO `table1` VALUES ('2', 'TV');

-- ----------------------------
-- Table structure for table2
-- ----------------------------
DROP TABLE IF EXISTS `table2`;
CREATE TABLE `table2` (
  `pid` int(7) DEFAULT NULL,
  `attr` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of table2
-- ----------------------------
INSERT INTO `table2` VALUES ('1', 'qty', '1');
INSERT INTO `table2` VALUES ('2', 'qty', '8');
INSERT INTO `table2` VALUES ('1', 'group', 'gr1');
INSERT INTO `table2` VALUES ('2', 'group', 'gr2');
SET FOREIGN_KEY_CHECKS=1;
