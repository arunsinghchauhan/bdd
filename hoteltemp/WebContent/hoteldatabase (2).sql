/*
Navicat MySQL Data Transfer

Source Server         : fivestar
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : hoteldatabase

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2014-04-05 18:43:35
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `bookroominfo_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `bookroominfo_tbl`;
CREATE TABLE `bookroominfo_tbl` (
  `orderid` varchar(20) NOT NULL DEFAULT '',
  `roomno` varchar(11) DEFAULT NULL,
  `checkintime` datetime DEFAULT NULL,
  `checkouttime` datetime DEFAULT NULL,
  `customername` varchar(25) DEFAULT NULL,
  `idproof` varchar(15) DEFAULT NULL,
  `idnumber` varchar(15) NOT NULL DEFAULT '',
  `enterpin` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`orderid`,`idnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bookroominfo_tbl
-- ----------------------------
INSERT INTO `bookroominfo_tbl` VALUES ('C01395717911454', '101', '2014-03-26 00:00:00', '2014-03-27 00:00:00', 'Arun Chauhan', 'voter id', 'ZMR65798', '2154789856235475');
INSERT INTO `bookroominfo_tbl` VALUES ('C01396326556526', '101', '2014-04-02 00:00:00', '2014-04-03 00:00:00', 'ashok', 'driving license', '21211221', '2121212121212121');
INSERT INTO `bookroominfo_tbl` VALUES ('C01396412455109', '115', '2014-04-03 00:00:00', '2014-04-04 00:00:00', 'himanshu', 'passport', '2125454', '1234567891232124');
INSERT INTO `bookroominfo_tbl` VALUES ('C01396530711144', '101', '2014-04-04 00:00:00', '2014-04-05 00:00:00', 'ashok', 'passport', '12233xfc', '0987654321236789');

-- ----------------------------
-- Table structure for `cab1_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `cab1_tbl`;
CREATE TABLE `cab1_tbl` (
  `name` varchar(15) DEFAULT NULL,
  `email` varchar(30) NOT NULL DEFAULT '',
  `phone` int(11) NOT NULL DEFAULT '0',
  `address` varchar(15) DEFAULT NULL,
  `froms` varchar(40) DEFAULT NULL,
  `tos` varchar(40) DEFAULT NULL,
  `passenger` varchar(5) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `hour` varchar(5) DEFAULT NULL,
  `min` varchar(5) DEFAULT NULL,
  `period` varchar(5) DEFAULT NULL,
  `choosebank` varchar(30) DEFAULT NULL,
  `enterpin` varchar(20) DEFAULT NULL,
  `expirydate` varchar(15) DEFAULT NULL,
  `amount` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cab1_tbl
-- ----------------------------
INSERT INTO `cab1_tbl` VALUES ('ashok', 'ashok@gmail.com', '875454', 'shastri nagar', 'Indira Gandhi International Airport', 'Red Fort', '1-4', '04-04-2014', '13', '15', 'AM', 'Deutsche Bank', '212121545421', '25-04-2014', '4000');

-- ----------------------------
-- Table structure for `cabavailable_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `cabavailable_tbl`;
CREATE TABLE `cabavailable_tbl` (
  `sno` int(5) NOT NULL,
  `available` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cabavailable_tbl
-- ----------------------------
INSERT INTO `cabavailable_tbl` VALUES ('1', 'Yes');
INSERT INTO `cabavailable_tbl` VALUES ('2', 'Yes');
INSERT INTO `cabavailable_tbl` VALUES ('3', 'Yes');
INSERT INTO `cabavailable_tbl` VALUES ('4', 'Yes');

-- ----------------------------
-- Table structure for `customerinfo_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `customerinfo_tbl`;
CREATE TABLE `customerinfo_tbl` (
  `customername` varchar(25) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `city` varchar(11) DEFAULT NULL,
  `country` varchar(11) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `idproof` varchar(15) NOT NULL DEFAULT '',
  `idnumber` varchar(15) NOT NULL DEFAULT '',
  `email` varchar(25) DEFAULT NULL,
  `noofadult` varchar(5) DEFAULT NULL,
  `noof minor` varchar(5) DEFAULT NULL,
  `choosebank` varchar(40) DEFAULT NULL,
  `enterpin` varchar(20) DEFAULT NULL,
  `expirydate` varchar(20) DEFAULT NULL,
  `amount` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idproof`,`idnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customerinfo_tbl
-- ----------------------------
INSERT INTO `customerinfo_tbl` VALUES ('ashok', 'gorakhpur', 'baliya', 'india', '5545445123', 'driving license', '21211221', 'ashok@gmail.com', '2', '2', 'Dhanlaxmi Bank', '2121212121212121', '17-04-2024', '4000');
INSERT INTO `customerinfo_tbl` VALUES ('ashok', 'G 484 govindpuram', 'ghaziabad', 'india', '9953935677', 'passport', '12233xfc', 'ashok@gmail.com', '1', '2', 'Union Bank Of India', '0987654321236789', '26-04-2017', '4000');
INSERT INTO `customerinfo_tbl` VALUES ('himanshu', 'shastri nagar', 'ghaziabad', 'india', '9810915183', 'passport', '2125454', 'Guatam@gmail.com', '2', '2', 'Cosmos Bank', '1234567891232124', '25-04-2014', '4000');
INSERT INTO `customerinfo_tbl` VALUES ('nagma', 'razapur', 'gzb', 'india', '1221212121', 'rashan card', '215487', 'nagma@gmail.com', '2', '2', 'Allahabad Bank', '2154785623894570', '27-03-2031', '4000');
INSERT INTO `customerinfo_tbl` VALUES ('Arun Chauhan', 'shastri nagar', 'ghaziabad', 'india', '9971070638', 'voter id', 'ZMR65798', 'arun.chauhan008@gmail.com', '2', '2', 'Development Credit Bank', '2154789856235475', '20-03-2024', '4000');

-- ----------------------------
-- Table structure for `feedback_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `feedback_tbl`;
CREATE TABLE `feedback_tbl` (
  `feedback` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of feedback_tbl
-- ----------------------------
INSERT INTO `feedback_tbl` VALUES ('good wonder');
INSERT INTO `feedback_tbl` VALUES ('beauty & unbelieveable');
INSERT INTO `feedback_tbl` VALUES ('good');
INSERT INTO `feedback_tbl` VALUES ('very good');
INSERT INTO `feedback_tbl` VALUES ('it is a nice hotel');

-- ----------------------------
-- Table structure for `login_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `login_tbl`;
CREATE TABLE `login_tbl` (
  `userid` varchar(15) NOT NULL DEFAULT '',
  `password` varchar(15) DEFAULT NULL,
  `acounttype` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of login_tbl
-- ----------------------------
INSERT INTO `login_tbl` VALUES ('arun', 'arun', 'admin');
INSERT INTO `login_tbl` VALUES ('komal', 'komal', 'reception');
INSERT INTO `login_tbl` VALUES ('ayushi', 'ayushi', 'Reception');

-- ----------------------------
-- Table structure for `totalcab_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `totalcab_tbl`;
CREATE TABLE `totalcab_tbl` (
  `sno` int(10) DEFAULT NULL,
  `cabtype` varchar(20) DEFAULT NULL,
  `billperkm` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of totalcab_tbl
-- ----------------------------
INSERT INTO `totalcab_tbl` VALUES ('1', 'Verna', '10rs');
INSERT INTO `totalcab_tbl` VALUES ('2', 'Duster', '12rs');
INSERT INTO `totalcab_tbl` VALUES ('3', 'Alto', '8.0rs');
INSERT INTO `totalcab_tbl` VALUES ('4', 'Wagnor', '8.0rs');

-- ----------------------------
-- Table structure for `totalroom_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `totalroom_tbl`;
CREATE TABLE `totalroom_tbl` (
  `roomno` varchar(11) NOT NULL DEFAULT '0',
  `roomtype` varchar(11) DEFAULT NULL,
  `bedtype` varchar(11) DEFAULT NULL,
  `billperday` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`roomno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of totalroom_tbl
-- ----------------------------
INSERT INTO `totalroom_tbl` VALUES ('101', 'premium', 'single', '1500');
INSERT INTO `totalroom_tbl` VALUES ('102', 'busines', 'double', '2000');
INSERT INTO `totalroom_tbl` VALUES ('103', 'economic', 'single', '1000');
INSERT INTO `totalroom_tbl` VALUES ('104', 'premium', 'double', '2500');
INSERT INTO `totalroom_tbl` VALUES ('105', 'business', 'single', '1500');
INSERT INTO `totalroom_tbl` VALUES ('106', 'economic', 'double', '1200');
INSERT INTO `totalroom_tbl` VALUES ('107', 'premium', 'single', '1500');
INSERT INTO `totalroom_tbl` VALUES ('108', 'business', 'double', '2000');
INSERT INTO `totalroom_tbl` VALUES ('109', 'economic', 'single', '1000');
INSERT INTO `totalroom_tbl` VALUES ('110', 'premium', 'double', '2500');
INSERT INTO `totalroom_tbl` VALUES ('111', 'business', 'single', '1500');
INSERT INTO `totalroom_tbl` VALUES ('112', 'economic', 'double', '1200');
INSERT INTO `totalroom_tbl` VALUES ('113', 'premium', 'single', '1500');
INSERT INTO `totalroom_tbl` VALUES ('114', 'business', 'double', '2000');
INSERT INTO `totalroom_tbl` VALUES ('115', 'economic', 'single', '1000');
