/*
Navicat MySQL Data Transfer

Source Server         : ed
Source Server Version : 50552
Source Host           : 119.29.2.209:3306
Source Database       : hewe_privilege

Target Server Type    : MYSQL
Target Server Version : 50552
File Encoding         : 65001

Date: 2017-07-20 17:42:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mgroup
-- ----------------------------
DROP TABLE IF EXISTS `mgroup`;
CREATE TABLE `mgroup` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `about` varchar(100) NOT NULL,
  `ctime` date NOT NULL,
  `utime` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mgroup_member
-- ----------------------------
DROP TABLE IF EXISTS `mgroup_member`;
CREATE TABLE `mgroup_member` (
  `mgroup_id` int(11) NOT NULL,
  `member_id` varchar(50) NOT NULL,
  `ctime` date NOT NULL,
  `utime` date NOT NULL,
  PRIMARY KEY (`mgroup_id`,`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mprivilege
-- ----------------------------
DROP TABLE IF EXISTS `mprivilege`;
CREATE TABLE `mprivilege` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `about` varchar(100) NOT NULL,
  `belong` int(11) NOT NULL,
  `operation` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mprivilege_member
-- ----------------------------
DROP TABLE IF EXISTS `mprivilege_member`;
CREATE TABLE `mprivilege_member` (
  `mprivilege_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `ctime` date NOT NULL,
  `utime` date NOT NULL,
  PRIMARY KEY (`mprivilege_id`,`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mprivilege_mgroup
-- ----------------------------
DROP TABLE IF EXISTS `mprivilege_mgroup`;
CREATE TABLE `mprivilege_mgroup` (
  `mprivilege_id` int(11) NOT NULL,
  `mgroup_id` int(11) NOT NULL,
  `ctime` date NOT NULL,
  `utime` date NOT NULL,
  PRIMARY KEY (`mprivilege_id`,`mgroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
