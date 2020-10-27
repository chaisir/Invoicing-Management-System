/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : db_jxcms

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2016-10-18 16:11:19
*/

CREATE DATABASE db_jxcms;
USE db_jxcms;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_gysinfo`
-- ----------------------------
DROP TABLE IF EXISTS `tb_gysinfo`;
CREATE TABLE `tb_gysinfo` (
  `id` varchar(50) NOT NULL,
  `name` varchar(60) NOT NULL,
  `jc` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `bianma` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `lian` varchar(50) DEFAULT NULL,
  `ltel` varchar(50) DEFAULT NULL,
  `yh` varchar(50) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_gysinfo
-- ----------------------------
INSERT INTO `tb_gysinfo` VALUES ('gys1007', '***供应商公司', 'GYS', '长春市二道区', '130031', '2132', '1111', '32121', '231231', '231213', '231231');
INSERT INTO `tb_gysinfo` VALUES ('gys1002', '新*纪文化百货商城', '新百', '吉林省辽源市', '1363', '0437-6930**', '52186**', '于X', '138686*****', '中国人民银行', 'y*@etang.com');
INSERT INTO `tb_gysinfo` VALUES ('gys1004', '吉林省明日*业有限公司', 'JLMRSY', '长春市东盛大街89号', '', '0431-4972**', '', 'ww', '', '', '');
INSERT INTO `tb_gysinfo` VALUES ('gys1005', '笔*有限公司', 'BHYXGS', '长在市', '1111', '1212', '2151', '毛皮', '44411', '8*@1*.com', '8885');

-- ----------------------------
-- Table structure for `tb_jsr`
-- ----------------------------
DROP TABLE IF EXISTS `tb_jsr`;
CREATE TABLE `tb_jsr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `sex` char(2) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `enable` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_jsr
-- ----------------------------
INSERT INTO `tb_jsr` VALUES ('3', 'lx', '女', '25', '136******', '0');
INSERT INTO `tb_jsr` VALUES ('4', 'liuxin', '男', '25', '136******', '1');

-- ----------------------------
-- Table structure for `tb_khinfo`
-- ----------------------------
DROP TABLE IF EXISTS `tb_khinfo`;
CREATE TABLE `tb_khinfo` (
  `id` varchar(50) NOT NULL,
  `khname` varchar(50) DEFAULT NULL,
  `jian` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `bianma` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `lian` varchar(50) DEFAULT NULL,
  `ltel` varchar(50) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `xinhang` varchar(60) DEFAULT NULL,
  `hao` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_khinfo
-- ----------------------------
INSERT INTO `tb_khinfo` VALUES ('kh1001', '明日科技有限公司', '明日', '长春市东盛大街', '111111', '111111', '111111', '高经理', '544444', '888@**.com', '544554', '454545');
INSERT INTO `tb_khinfo` VALUES ('kh1002', '吉林省明日科技有限公司', '明日科技', '长春市二道区', '1111110', '52415', '54252', '高经理', '136524', 'mingrisoft@mingrisoft.com.cn', '建设银行', '231586');
INSERT INTO `tb_khinfo` VALUES ('kh1003', '五*缤纷', '五彩', '长春市', '122', '45644', '8888', '路路', '1000402', '0*@*4.com', '25250', '020202');
INSERT INTO `tb_khinfo` VALUES ('kh1004', '小小公司', 'XXGS', '长春市', '1010', '1111', '1111', '明子', '121212', '88*@.com', '8888', '88');

-- ----------------------------
-- Table structure for `tb_kucun`
-- ----------------------------
DROP TABLE IF EXISTS `tb_kucun`;
CREATE TABLE `tb_kucun` (
  `id` varchar(30) NOT NULL,
  `spname` varchar(50) NOT NULL,
  `jc` varchar(25) DEFAULT NULL,
  `cd` varchar(50) DEFAULT NULL,
  `gg` varchar(50) DEFAULT NULL,
  `bz` varchar(50) DEFAULT NULL,
  `dw` varchar(10) DEFAULT NULL,
  `dj` decimal(10,2) DEFAULT NULL,
  `kcsl` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_kucun
-- ----------------------------
INSERT INTO `tb_kucun` VALUES ('sp1005', '润*滴眼液', 'RZDYY', '山*正大福*达制药有限公司', '10ml/支', '纸盒', '盒', '40.00', '19400');
INSERT INTO `tb_kucun` VALUES ('sp1007', '铅笔', 'QB', '长春', '9*', '沿着', '铅笔厂', '10.00', '0');
INSERT INTO `tb_kucun` VALUES ('sp1008', '手工艺品', 'SAYP', '长春市', '1', '5', '长春', '23.00', '1099');
INSERT INTO `tb_kucun` VALUES ('sp1003', '碧**莉香型洗衣粉', 'BLMLXXXYF', '广**保洁公司', '350g', '塑包', '袋', '5.00', '6');
INSERT INTO `tb_kucun` VALUES ('sp1010', '航母', '航母', '美国', 'gbxxxxxx', 'gbxxxxxx', '艘', '20.00', '3');
INSERT INTO `tb_kucun` VALUES ('sp1002', '木吉他', '吉他', '中**海', 'HM2100', '盒', '把', '50.00', '60');

-- ----------------------------
-- Table structure for `tb_rkth_detail`
-- ----------------------------
DROP TABLE IF EXISTS `tb_rkth_detail`;
CREATE TABLE `tb_rkth_detail` (
  `rkthID` varchar(30) NOT NULL,
  `spid` varchar(50) NOT NULL,
  `dj` decimal(10,2) NOT NULL,
  `sl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_rkth_detail
-- ----------------------------
INSERT INTO `tb_rkth_detail` VALUES ('RT20050923001', 'sp1003', '3.50', '1');
INSERT INTO `tb_rkth_detail` VALUES ('RT20050926001', 'sp1003', '3.40', '10');
INSERT INTO `tb_rkth_detail` VALUES ('RT20051005002', 'sp1003', '3.40', '1');
INSERT INTO `tb_rkth_detail` VALUES ('RT20051005002', 'sp1002', '890.00', '1');
INSERT INTO `tb_rkth_detail` VALUES ('RT20071020001', 'sp1005', '431.00', '10');
INSERT INTO `tb_rkth_detail` VALUES ('RT20071020001', 'sp1004', '120.00', '2');
INSERT INTO `tb_rkth_detail` VALUES ('RT20071109001', 'sp1001', '101.00', '1000');
INSERT INTO `tb_rkth_detail` VALUES ('RT20071109002', 'sp1005', '40.00', '10');
INSERT INTO `tb_rkth_detail` VALUES ('RT20080403001', 'sp1002', '23.00', '462');
INSERT INTO `tb_rkth_detail` VALUES ('RT20080410005', 'sp1002', '432.00', '0');
INSERT INTO `tb_rkth_detail` VALUES ('RT20080521001', 'sp1007', '10.00', '5');

-- ----------------------------
-- Table structure for `tb_rkth_main`
-- ----------------------------
DROP TABLE IF EXISTS `tb_rkth_main`;
CREATE TABLE `tb_rkth_main` (
  `rkthID` varchar(30) NOT NULL,
  `pzs` float NOT NULL,
  `je` decimal(10,2) NOT NULL,
  `ysjl` varchar(50) DEFAULT NULL,
  `gysname` varchar(100) NOT NULL,
  `rtdate` datetime NOT NULL,
  `czy` varchar(30) NOT NULL,
  `jsr` varchar(30) NOT NULL,
  `jsfs` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_rkth_main
-- ----------------------------
INSERT INTO `tb_rkth_main` VALUES ('RT20050923001', '1', '3.50', '3.50', '新*纪文化百货商城', '2005-09-23 15:19:24', 'admin', 'wgh', '现金');
INSERT INTO `tb_rkth_main` VALUES ('RT20050926001', '1', '34.00', '0.00', '振撼*琴行', '2005-09-26 14:01:48', 'admin', 'wg', '现金');
INSERT INTO `tb_rkth_main` VALUES ('RT20051005001', '1', '3.40', '0.00', '振撼*琴行', '2005-10-05 09:09:34', 'admin', 'hj', '现金');
INSERT INTO `tb_rkth_main` VALUES ('RT20051005002', '2', '893.40', '0.00', '振撼*琴行', '2005-10-05 13:05:35', 'admin', 'wq', '现金');
INSERT INTO `tb_rkth_main` VALUES ('RT20071020001', '2', '4550.00', '33333', '振撼*琴行', '2007-10-20 09:10:49', 'mr', '33333', '现金');
INSERT INTO `tb_rkth_main` VALUES ('RT20071109001', '1', '101000.00', '合格', '振撼*琴行', '2007-11-09 14:32:39', 'mr', '00', '现金');
INSERT INTO `tb_rkth_main` VALUES ('RT20071109002', '1', '400.00', '质量有问题', '振撼*琴行', '2007-11-09 15:50:03', 'mr', '11', '现金');
INSERT INTO `tb_rkth_main` VALUES ('RT20080403001', '1', '10626.00', '4444', '新*纪文化百货商城', '2008-04-03 15:52:16', '', '44', '现金');
INSERT INTO `tb_rkth_main` VALUES ('RT20080410001', '1', '432.00', '1', '新*纪文化百货商城', '2008-04-10 10:33:51', '', '1', '现金');
INSERT INTO `tb_rkth_main` VALUES ('RT20080410002', '1', '0.00', '12', '新*纪文化百货商城', '2008-04-10 10:37:56', 'tsoft', '范德萨', '现金');
INSERT INTO `tb_rkth_main` VALUES ('RT20080410003', '1', '-432.00', '12', '新*纪文化百货商城', '2008-04-10 10:38:23', 'tsoft', '范德萨', '现金');
INSERT INTO `tb_rkth_main` VALUES ('RT20080521001', '1', '50.00', '合格', '新*纪文化百货商城', '2008-05-21 14:47:37', 'tsoft', '范德萨', '现金');
INSERT INTO `tb_rkth_main` VALUES ('RT20080410004', '1', '0.00', '12', '新*纪文化百货商城', '2008-04-10 10:39:13', 'tsoft', '范德萨', '现金');
INSERT INTO `tb_rkth_main` VALUES ('RT20080410005', '1', '0.00', '12', '新*纪文化百货商城', '2008-04-10 10:40:31', 'tsoft', '范德萨', '现金');

-- ----------------------------
-- Table structure for `tb_ruku_detail`
-- ----------------------------
DROP TABLE IF EXISTS `tb_ruku_detail`;
CREATE TABLE `tb_ruku_detail` (
  `rkID` varchar(30) NOT NULL,
  `spid` varchar(50) NOT NULL,
  `dj` decimal(10,2) NOT NULL,
  `sl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ruku_detail
-- ----------------------------
INSERT INTO `tb_ruku_detail` VALUES ('RK20071016001', 'sp1004', '12.00', '1142');
INSERT INTO `tb_ruku_detail` VALUES ('RK20071016001', 'sp1001', '10.00', '100');
INSERT INTO `tb_ruku_detail` VALUES ('RK20071016002', 'sp1001', '10.00', '400');
INSERT INTO `tb_ruku_detail` VALUES ('RK20071016003', 'sp1005', '10.00', '400');
INSERT INTO `tb_ruku_detail` VALUES ('RK20071016003', 'sp1001', '10.00', '500');
INSERT INTO `tb_ruku_detail` VALUES ('RK20071016004', 'sp1005', '10.00', '100');
INSERT INTO `tb_ruku_detail` VALUES ('RK20071016004', 'sp1001', '10.00', '10');
INSERT INTO `tb_ruku_detail` VALUES ('RK20071016005', 'sp1004', '10.00', '110');
INSERT INTO `tb_ruku_detail` VALUES ('RK20071016005', 'sp1005', '100.00', '1000');
INSERT INTO `tb_ruku_detail` VALUES ('RK20071016006', 'sp1004', '321.00', '432');
INSERT INTO `tb_ruku_detail` VALUES ('RK20071016006', 'sp1005', '432.00', '3330');
INSERT INTO `tb_ruku_detail` VALUES ('RK20071020001', 'sp1004', '12.00', '232');
INSERT INTO `tb_ruku_detail` VALUES ('RK20071109001', 'sp1002', '22.00', '22');
INSERT INTO `tb_ruku_detail` VALUES ('RK20071109002', 'sp1007', '10.00', '10');
INSERT INTO `tb_ruku_detail` VALUES ('RK20071109003', 'sp1005', '40.00', '100');
INSERT INTO `tb_ruku_detail` VALUES ('RK20071112001', 'sp1008', '10.00', '1000');
INSERT INTO `tb_ruku_detail` VALUES ('RK20080403001', 'sp1002', '43.00', '32');
INSERT INTO `tb_ruku_detail` VALUES ('RK20080403002', 'sp1002', '23.00', '430');
INSERT INTO `tb_ruku_detail` VALUES ('RK20080410007', 'sp1003', '3.00', '2');
INSERT INTO `tb_ruku_detail` VALUES ('RK20080410008', 'sp1002', '432.00', '432');
INSERT INTO `tb_ruku_detail` VALUES ('RK20080410009', 'sp1003', '0.00', '0');
INSERT INTO `tb_ruku_detail` VALUES ('RK20080521001', 'sp1007', '10.00', '10');
INSERT INTO `tb_ruku_detail` VALUES ('RK20100209001', 'sp1009', '1.00', '100');
INSERT INTO `tb_ruku_detail` VALUES ('RK20080410009', 'sp1007', '0.00', '0');
INSERT INTO `tb_ruku_detail` VALUES ('RK20160704001', 'sp1008', '20.00', '0');
INSERT INTO `tb_ruku_detail` VALUES ('RK20160704001', 'sp1008', '2.00', '0');
INSERT INTO `tb_ruku_detail` VALUES ('RK20160704002', 'sp1010', '20.00', '3');
INSERT INTO `tb_ruku_detail` VALUES ('RK20160714001', 'sp1002', '50.00', '60');
INSERT INTO `tb_ruku_detail` VALUES ('RK20161018001', 'sp1008', '23.00', '100');

-- ----------------------------
-- Table structure for `tb_ruku_main`
-- ----------------------------
DROP TABLE IF EXISTS `tb_ruku_main`;
CREATE TABLE `tb_ruku_main` (
  `rkID` varchar(30) NOT NULL,
  `pzs` int(11) NOT NULL,
  `je` decimal(10,2) NOT NULL,
  `ysjl` varchar(50) NOT NULL,
  `gysname` varchar(100) NOT NULL,
  `rkdate` datetime NOT NULL,
  `czy` varchar(30) NOT NULL,
  `jsr` varchar(30) NOT NULL,
  `jsfs` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ruku_main
-- ----------------------------
INSERT INTO `tb_ruku_main` VALUES ('RK20071016001', '2', '14704.00', '合格', '振撼*琴行', '2007-10-16 10:32:26', '测试人员', '某人', '现金');
INSERT INTO `tb_ruku_main` VALUES ('RK20071016002', '1', '4000.00', '合格', '振撼*琴行', '2007-10-16 10:39:28', '测试人员', '小小', '现金');
INSERT INTO `tb_ruku_main` VALUES ('RK20071016003', '2', '9000.00', '合格', '振撼*琴行', '2007-10-16 10:40:00', '测试人员', '小小', '现金');
INSERT INTO `tb_ruku_main` VALUES ('RK20071016004', '2', '1100.00', '1111', '振撼*琴行', '2007-10-16 10:42:18', '测试人员', '1111', '现金');
INSERT INTO `tb_ruku_main` VALUES ('RK20071016005', '2', '101100.00', 'fdsa', '振撼*琴行', '2007-10-16 10:45:14', '测试人员', 'fds', '现金');
INSERT INTO `tb_ruku_main` VALUES ('RK20071016006', '2', '1577232.00', 'fdsa', '振撼*琴行', '2007-10-16 10:45:31', '测试人员', 'fds', '现金');
INSERT INTO `tb_ruku_main` VALUES ('RK20071020001', '1', '2784.00', 'fff', '振撼*琴行', '2007-10-20 09:04:36', 'mr', 'lzw', '现金');
INSERT INTO `tb_ruku_main` VALUES ('RK20071109001', '1', '484.00', '合格', '新*纪文化百货商城', '2007-11-09 14:27:56', 'mr', '玲子', '现金');
INSERT INTO `tb_ruku_main` VALUES ('RK20071109002', '1', '100.00', '合格', '新*纪文化百货商城', '2007-11-09 14:28:24', 'mr', '玲子', '现金');
INSERT INTO `tb_ruku_main` VALUES ('RK20071109003', '1', '4000.00', '合格', '振撼*琴行', '2007-11-09 15:49:32', 'mr', '小百', '现金');
INSERT INTO `tb_ruku_main` VALUES ('RK20071112001', '1', '10000.00', '010', '吉林省明日*业有限公司', '2007-11-12 10:47:31', 'mr', '11', '现金');
INSERT INTO `tb_ruku_main` VALUES ('RK20080403001', '1', '1376.00', 'ds', '新*纪文化百货商城', '2008-04-03 00:00:00', 'null', 'ggf', '现金结款');
INSERT INTO `tb_ruku_main` VALUES ('RK20080403002', '1', '9890.00', 'ftf', '新*纪文化百货商城', '2008-04-03 00:00:00', '小陈', '33', '现金结款');
INSERT INTO `tb_ruku_main` VALUES ('RK20080410001', '1', '0.00', '23', '新*纪文化百货商城', '2008-04-10 00:00:00', '范德萨', '范德萨', '现金结款');
INSERT INTO `tb_ruku_main` VALUES ('RK20080410002', '1', '0.00', '543', '新*纪文化百货商城', '2008-04-10 00:00:00', '范德萨', '范德萨', '现金结款');
INSERT INTO `tb_ruku_main` VALUES ('RK20080410003', '1', '8.00', '111', '新*纪文化百货商城', '2008-04-10 00:00:00', '范德萨', '范德萨', '现金结款');
INSERT INTO `tb_ruku_main` VALUES ('RK20080410004', '1', '2795.00', '432', '新*纪文化百货商城', '2008-04-10 00:00:00', '范德萨', '范德萨', '现金结款');
INSERT INTO `tb_ruku_main` VALUES ('RK20080410007', '1', '6.00', '2321', '新*纪文化百货商城', '2008-04-10 00:00:00', '范德萨', '范德萨', '现金结款');
INSERT INTO `tb_ruku_main` VALUES ('RK20080410008', '1', '186624.00', '32', '新*纪文化百货商城', '2008-04-10 00:00:00', '范德萨', '范德萨', '现金结款');
INSERT INTO `tb_ruku_main` VALUES ('RK20080521001', '1', '100.00', '合格', '新*纪文化百货商城', '2008-05-21 00:00:00', '范德萨', '范德萨', '现金结款');
INSERT INTO `tb_ruku_main` VALUES ('RK20100209001', '1', '100.00', '10', '笔*有限公司', '2010-02-09 00:00:00', 'liuxin', 'liuxin', '现金结款');
INSERT INTO `tb_ruku_main` VALUES ('RK20080410005', '1', '0.00', 'g', '新*纪文化百货商城', '2008-04-10 00:00:00', '范德萨', '范德萨', '现金结款');
INSERT INTO `tb_ruku_main` VALUES ('RK20080410006', '1', '736.00', '111', '新*纪文化百货商城', '2008-04-10 00:00:00', '范德萨', '范德萨', '现金结款');
INSERT INTO `tb_ruku_main` VALUES ('RK20080410009', '2', '0.00', '22', '新*纪文化百货商城', '2008-04-10 00:00:00', '范德萨', '范德萨', '现金结款');
INSERT INTO `tb_ruku_main` VALUES ('RK20160704001', '2', '0.00', '正常', '吉林省明日*业有限公司', '2016-07-04 00:00:00', 'liuxin', 'liuxin', '现金结款');
INSERT INTO `tb_ruku_main` VALUES ('RK20160704002', '1', '60.00', '买了', '吉林省明日*业有限公司', '2016-07-04 00:00:00', 'liuxin', 'liuxin', '现金结款');
INSERT INTO `tb_ruku_main` VALUES ('RK20160714001', '1', '3000.00', '县城', '新*纪文化百货商城', '2016-07-14 00:00:00', 'liuxin', 'liuxin', '现金结款');
INSERT INTO `tb_ruku_main` VALUES ('RK20161018001', '1', '2300.00', '合格', '***供应商公司', '2016-10-18 00:00:00', 'liuxin', 'liuxin', '现金结款');

-- ----------------------------
-- Table structure for `tb_sell_detail`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_detail`;
CREATE TABLE `tb_sell_detail` (
  `sellID` varchar(30) NOT NULL,
  `spid` varchar(50) NOT NULL,
  `dj` decimal(10,2) NOT NULL,
  `sl` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sell_detail
-- ----------------------------
INSERT INTO `tb_sell_detail` VALUES ('XS20050923001', 'sp1003', '3.50', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20050923001', 'sp1001', '789.00', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20050923002', 'sp1003', '3.50', '2');
INSERT INTO `tb_sell_detail` VALUES ('XS20050926001', 'sp1005', '10.00', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20051004001', 'sp1005', '8.70', '2');
INSERT INTO `tb_sell_detail` VALUES ('XS20050104001', 'sp1002', '890.00', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20050104002', 'sp1002', '890.00', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20050120001', 'sp1002', '890.00', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20050220001', 'sp1002', '890.00', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20051004002', 'sp1002', '890.00', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20051004003', 'sp1005', '8.70', '2');
INSERT INTO `tb_sell_detail` VALUES ('XS20051004004', 'sp1003', '3.40', '4');
INSERT INTO `tb_sell_detail` VALUES ('XS20050309001', 'sp1001', '1500.00', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20050309002', 'sp1002', '890.00', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20050309002', 'sp1001', '1500.00', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20051005001', 'sp1001', '1500.00', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20051005002', 'sp1002', '890.00', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20051005002', 'sp1005', '8.70', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20051005003', 'sp1003', '3.40', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20051005004', 'sp1004', '790.00', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20051005004', 'sp1001', '1500.00', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20051006001', 'sp1003', '3.40', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20071016001', 'sp1004', '321.00', '16');
INSERT INTO `tb_sell_detail` VALUES ('XS20071017001', 'sp1004', '321.00', '1668');
INSERT INTO `tb_sell_detail` VALUES ('XS20071109001', 'sp1007', '10.00', '5');
INSERT INTO `tb_sell_detail` VALUES ('XS20071115001', 'sp1002', '22.00', '22');
INSERT INTO `tb_sell_detail` VALUES ('XS20080410003', 'sp1002', '432.00', '0');
INSERT INTO `tb_sell_detail` VALUES ('XS20080521001', 'sp1007', '10.00', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20150507001', 'sp1009', '1.00', '200');
INSERT INTO `tb_sell_detail` VALUES ('XS20150507002', 'sp1008', '10.00', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20150507002', 'sp1007', '10.00', '1');
INSERT INTO `tb_sell_detail` VALUES ('XS20150507002', 'sp1009', '1.00', '3');
INSERT INTO `tb_sell_detail` VALUES ('XS20160714001', 'sp1007', '10.00', '4');

-- ----------------------------
-- Table structure for `tb_sell_main`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_main`;
CREATE TABLE `tb_sell_main` (
  `sellID` varchar(30) NOT NULL,
  `pzs` int(11) NOT NULL,
  `je` decimal(10,2) NOT NULL,
  `ysjl` varchar(50) DEFAULT NULL,
  `khname` varchar(100) NOT NULL,
  `xsdate` datetime NOT NULL,
  `czy` varchar(30) NOT NULL,
  `jsr` varchar(30) NOT NULL,
  `jsfs` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sell_main
-- ----------------------------
INSERT INTO `tb_sell_main` VALUES ('XS20050104001', '1', '890.00', '100.00', '新*纪文化百货用品商城', '2005-01-04 15:27:48', 'admin', 'gh', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20050104002', '1', '890.00', '100.00', '新*纪文化百货用品商城', '2005-01-04 15:28:10', 'admin', 'wg', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20050120001', '1', '890.00', '200.00', '新*纪文化百货用品商城', '2005-01-20 15:28:51', 'admin', 'g', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20050220001', '1', '890.00', '100.00', '新*纪文化百货用品商城', '2005-02-20 15:29:31', 'admin', 'gh', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20050309001', '1', '1500.00', '0.00', '新*纪文化百货用品商城', '2005-03-09 15:42:32', 'admin', 'kk', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20050309002', '2', '2390.00', '2000.00', '新*纪文化百货用品商城', '2005-03-09 17:20:00', 'admin', '言', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20050923001', '2', '792.50', '792.50', '新*纪文化百货用品商城', '2005-09-23 13:12:45', 'admin', 'wgh', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20050923002', '1', '7.00', '7.00', '新*纪文化百货用品商城', '2005-09-23 13:13:04', 'admin', 'wgh', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20050926001', '1', '10.00', '10.00', '新*纪文化百货用品商城', '2005-09-26 13:58:30', 'admin', 'wgh', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20051004001', '1', '17.40', '17.40', '新*纪文化百货用品商城', '2005-10-04 13:19:03', 'admin', 'wgh', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20051004002', '1', '890.00', '0.00', '新*纪文化百货用品商城', '2005-10-04 15:30:04', 'admin', 'wgh', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20051004003', '1', '17.40', '0.00', '新*纪文化百货用品商城', '2005-10-04 15:30:23', 'admin', 'gh', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20051004004', '1', '13.60', '0.00', '新*纪文化百货用品商城', '2005-10-04 15:31:38', 'admin', 'w', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20051005001', '1', '1500.00', '0.00', '新*纪文化百货用品商城', '2005-10-05 08:24:02', 'admin', 'ttt', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20051005002', '2', '898.70', '0.00', '新*纪文化百货用品商城', '2005-10-05 08:24:28', 'admin', 'eee', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20051005003', '1', '3.40', '3.40', '新*纪文化百货用品商城', '2005-10-05 08:41:07', 'admin', 'ww', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20051005004', '2', '2290.00', '2000.00', '新*纪文化百货用品商城', '2005-10-05 08:42:29', 'admin', 'eutwin', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20051006001', '1', '3.40', '2.40', '新*纪文化百货用品商城', '2005-10-06 08:54:38', 'yan', 'yyy', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20071016001', '1', '5136.00', 'fds', '明日科技有限公司', '2007-10-16 17:00:08', '测试人员', '伙', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20071017001', '1', '535428.00', '4321', '明日科技有限公司', '2007-10-17 08:49:34', '测试人员', '4321', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20071109001', '1', '50.00', '合格', '明日科技有限公司', '2007-11-09 14:41:40', 'mr', '小刘', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20071115001', '1', '484.00', 'ggg', '明日科技有限公司', '2007-11-15 18:41:15', 'mr', '00', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20080410001', '2', '219024.00', 'e2', '明日科技有限公司', '2008-04-10 10:26:47', '', '范德萨', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20080410002', '1', '0.00', 'e2', '明日科技有限公司', '2008-04-10 10:27:51', '', '范德萨', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20080410003', '1', '0.00', 'e2', '明日科技有限公司', '2008-04-10 10:28:54', '', '范德萨', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20080521001', '1', '10.00', '10', '明日科技有限公司', '2008-05-21 14:57:55', 'tsoft', '范德萨', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20150507001', '1', '200.00', '测试是否会出库大于库存', '明日科技有限公司', '2015-05-07 15:44:33', 'tsoft', 'liuxin', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20150507002', '3', '23.00', '1111111111111', '明日科技有限公司', '2015-05-07 16:31:10', 'tsoft', 'liuxin', '现金');
INSERT INTO `tb_sell_main` VALUES ('XS20160714001', '1', '40.00', '1', '明日科技有限公司', '2016-07-14 11:38:28', 'tsoft', 'liuxin', '现金');

-- ----------------------------
-- Table structure for `tb_spinfo`
-- ----------------------------
DROP TABLE IF EXISTS `tb_spinfo`;
CREATE TABLE `tb_spinfo` (
  `id` varchar(50) NOT NULL,
  `spname` varchar(50) NOT NULL,
  `jc` varchar(50) DEFAULT NULL,
  `cd` varchar(60) DEFAULT NULL,
  `dw` varchar(50) NOT NULL,
  `gg` varchar(50) NOT NULL,
  `bz` varchar(50) DEFAULT NULL,
  `ph` varchar(50) DEFAULT NULL,
  `pzwh` varchar(50) DEFAULT NULL,
  `memo` varchar(90) DEFAULT NULL,
  `gysname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_spinfo
-- ----------------------------
INSERT INTO `tb_spinfo` VALUES ('sp1001', '电吉他', '吉他1', '中**连', '把', 'FD－3100', '盒', '56217', '23232', '无限延音功能、自带效果器', '新*纪文化百货商城');
INSERT INTO `tb_spinfo` VALUES ('sp1002', '木吉他', '吉他', '中**海', '把', 'HM2100', '盒', '32286', '875845624', '可接电', '新*纪文化百货商城');
INSERT INTO `tb_spinfo` VALUES ('sp1005', '润*滴眼液', 'RZDYY', '山*正大福*达制药有限公司', '盒', '10ml/支', '纸盒', '20040728', '鲁*消备字', '', '振撼*琴行');
INSERT INTO `tb_spinfo` VALUES ('sp1006', '电吉他', '电吉他', '电吉他', '电吉他', '电吉他', '', '', '', '', '');
INSERT INTO `tb_spinfo` VALUES ('sp1007', '铅笔', 'QB', '长春', '铅笔厂', '9*', '沿着', '14**', '222**', '无', '新*纪文化百货商城');
INSERT INTO `tb_spinfo` VALUES ('sp1008', '手工艺品', 'SAYP', '长春市', '长春', '1', '5', '25', '212', '很不错', '吉林省明日*业有限公司');
INSERT INTO `tb_spinfo` VALUES ('sp1009', '锅巴', '锅巴', '吉林', '袋', '200G/袋', '袋', '001', '2131213', '无', '笔*有限公司');
INSERT INTO `tb_spinfo` VALUES ('sp1010', '航母', '航母', '美国', '艘', 'gbxxxxxx', 'gbxxxxxx', 'gbxxxxxx', 'gbxxxxxx', '', '吉林省明日*业有限公司');

-- ----------------------------
-- Table structure for `tb_userlist`
-- ----------------------------
DROP TABLE IF EXISTS `tb_userlist`;
CREATE TABLE `tb_userlist` (
  `name` varchar(30) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_userlist
-- ----------------------------
INSERT INTO `tb_userlist` VALUES ('tsoft', '111');

-- ----------------------------
-- Table structure for `tb_xsth_detail`
-- ----------------------------
DROP TABLE IF EXISTS `tb_xsth_detail`;
CREATE TABLE `tb_xsth_detail` (
  `xsthID` varchar(30) NOT NULL,
  `spid` varchar(50) NOT NULL,
  `dj` decimal(10,2) NOT NULL,
  `sl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_xsth_detail
-- ----------------------------
INSERT INTO `tb_xsth_detail` VALUES ('XT20051005001', 'sp1004', '790.00', '1');
INSERT INTO `tb_xsth_detail` VALUES ('XT20051005002', 'sp1002', '890.00', '1');
INSERT INTO `tb_xsth_detail` VALUES ('XT20051005003', 'sp1002', '890.00', '1');
INSERT INTO `tb_xsth_detail` VALUES ('XT20051216001', 'sp1004', '790.00', '1');
INSERT INTO `tb_xsth_detail` VALUES ('XT20071017001', 'sp1005', '432.00', '4830');
INSERT INTO `tb_xsth_detail` VALUES ('XT20071017002', 'sp1005', '432.00', '9660');
INSERT INTO `tb_xsth_detail` VALUES ('XT20071109001', 'sp1007', '10.00', '1');
INSERT INTO `tb_xsth_detail` VALUES ('XT20080410001', 'sp1001', '151.00', '-1000');
INSERT INTO `tb_xsth_detail` VALUES ('XT20080521001', 'sp1007', '10.00', '1');

-- ----------------------------
-- Table structure for `tb_xsth_main`
-- ----------------------------
DROP TABLE IF EXISTS `tb_xsth_main`;
CREATE TABLE `tb_xsth_main` (
  `xsthID` varchar(30) NOT NULL,
  `pzs` int(11) NOT NULL,
  `je` decimal(10,2) NOT NULL,
  `ysjl` varchar(50) DEFAULT NULL,
  `khname` varchar(100) NOT NULL,
  `thdate` datetime NOT NULL,
  `czy` varchar(30) NOT NULL,
  `jsr` varchar(30) NOT NULL,
  `jsfs` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_xsth_main
-- ----------------------------
INSERT INTO `tb_xsth_main` VALUES ('XT20051005001', '1', '790.00', '0.00', '新*纪文化百货用品商城', '2005-10-05 13:17:31', 'admin', 'jh', '现金');
INSERT INTO `tb_xsth_main` VALUES ('XT20051005002', '1', '890.00', '90.00', '新*纪文化百货用品商城', '2005-10-05 13:25:52', 'admin', 'hj', '现金');
INSERT INTO `tb_xsth_main` VALUES ('XT20051005003', '1', '890.00', '0.00', '新*纪文化百货用品商城', '2005-10-05 13:32:38', 'admin', 'wgh', '现金');
INSERT INTO `tb_xsth_main` VALUES ('XT20051216001', '1', '790.00', '90.00', '新*纪文化百货用品商城', '2005-12-16 17:24:46', 'admin', 'kk', '现金');
INSERT INTO `tb_xsth_main` VALUES ('XT20071017001', '1', '2086560.00', '432', '明日科技有限公司', '2007-10-17 08:50:05', '测试人员', '432', '现金');
INSERT INTO `tb_xsth_main` VALUES ('XT20071017002', '1', '4173120.00', '432', '明日科技有限公司', '2007-10-17 08:50:12', '测试人员', '432', '现金');
INSERT INTO `tb_xsth_main` VALUES ('XT20071109001', '1', '10.00', '不合格', '明日科技有限公司', '2007-11-09 14:42:12', 'mr', '99', '现金');
INSERT INTO `tb_xsth_main` VALUES ('XT20080410001', '1', '-151000.00', '321', '明日科技有限公司', '2008-04-10 10:34:27', 'tsoft', '范德萨', '现金');
INSERT INTO `tb_xsth_main` VALUES ('XT20080521001', '1', '10.00', '10', '明日科技有限公司', '2008-05-21 14:58:18', 'tsoft', '范德萨', '现金');

-- ----------------------------
-- View structure for `v_rukuview`
-- ----------------------------
DROP VIEW IF EXISTS `v_rukuview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_rukuview` AS select `tb_ruku_main`.`rkID` AS `rkID`,`tb_ruku_detail`.`spid` AS `spid`,`tb_spinfo`.`spname` AS `spname`,`tb_spinfo`.`gg` AS `gg`,`tb_ruku_detail`.`dj` AS `dj`,`tb_ruku_detail`.`sl` AS `sl`,(`tb_ruku_detail`.`dj` * `tb_ruku_detail`.`sl`) AS `je`,`tb_spinfo`.`gysname` AS `gysname`,`tb_ruku_main`.`rkdate` AS `rkdate`,`tb_ruku_main`.`czy` AS `czy`,`tb_ruku_main`.`jsr` AS `jsr`,`tb_ruku_main`.`jsfs` AS `jsfs` from ((`tb_ruku_detail` join `tb_ruku_main` on((`tb_ruku_detail`.`rkID` = `tb_ruku_main`.`rkID`))) join `tb_spinfo` on((`tb_ruku_detail`.`spid` = `tb_spinfo`.`id`))) ;

-- ----------------------------
-- View structure for `v_sellview`
-- ----------------------------
DROP VIEW IF EXISTS `v_sellview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_sellview` AS select `tb_sell_main`.`sellID` AS `sellID`,`tb_spinfo`.`spname` AS `spname`,`tb_sell_detail`.`spid` AS `spid`,`tb_spinfo`.`gg` AS `gg`,`tb_sell_detail`.`dj` AS `dj`,`tb_sell_detail`.`sl` AS `sl`,(`tb_sell_detail`.`sl` * `tb_sell_detail`.`dj`) AS `je`,`tb_sell_main`.`khname` AS `khname`,`tb_sell_main`.`xsdate` AS `xsdate`,`tb_sell_main`.`czy` AS `czy`,`tb_sell_main`.`jsr` AS `jsr`,`tb_sell_main`.`jsfs` AS `jsfs` from ((`tb_sell_detail` join `tb_sell_main` on((`tb_sell_detail`.`sellID` = `tb_sell_main`.`sellID`))) join `tb_spinfo` on((`tb_sell_detail`.`spid` = `tb_spinfo`.`id`))) ;
