/*
Navicat MySQL Data Transfer

Source Server         : sss
Source Server Version : 50013
Source Host           : localhost:3306
Source Database       : hiet_db

Target Server Type    : MYSQL
Target Server Version : 50013
File Encoding         : 65001

Date: 2013-07-08 12:23:39
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `faculty_registration_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `faculty_registration_tbl`;
CREATE TABLE `faculty_registration_tbl` (
  `facultyid` varchar(12) NOT NULL default '',
  `firstName` varchar(100) default NULL,
  `middleName` varchar(100) default NULL,
  `lastName` varchar(100) default NULL,
  `dob` varchar(20) default NULL,
  `doj` varchar(20) default NULL,
  `email` varchar(100) default NULL,
  `phone` varchar(12) default NULL,
  `address` varchar(200) default NULL,
  `designation` varchar(40) default NULL,
  `pin` varchar(12) default NULL,
  `department` varchar(12) default NULL,
  `hdegree` varchar(40) default NULL,
  `experience` varchar(30) default NULL,
  PRIMARY KEY  (`facultyid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of faculty_registration_tbl
-- ----------------------------
INSERT INTO `faculty_registration_tbl` VALUES ('11', 'weeqweqwe', 'qwe', 'eqwe', 'qewq', '32', '23', '32', '23', '223', '324', 'CS', null, null);
INSERT INTO `faculty_registration_tbl` VALUES ('12', 'Dave', 'Michal', 'eqwe', 'qewq', '32', 'dave@gmail.com', '32', '23', '223', '324', 'CS', null, null);
INSERT INTO `faculty_registration_tbl` VALUES ('13', 'Dave', 'Michal', 'eqwe', 'qewq', '32', 'dave@gmail.com', '32', '23', '223', '324', 'CS', null, null);
INSERT INTO `faculty_registration_tbl` VALUES ('14', 'Mike', 'Kumar', 'eqwe', 'qewq', '32', 'mike@gmail.com', '32', '23', '223', '324', 'CS', null, null);
INSERT INTO `faculty_registration_tbl` VALUES ('15', 'Mike', 'Kumar', 'eqwe', 'qewq', '32', 'mike@gmail.com', '32', '23', '223', '324', 'CS', null, null);
INSERT INTO `faculty_registration_tbl` VALUES ('2', 'weeqweqwe', 'qwe', 'eqwe', 'qewq', '32', '23', '32', '23', '223', '324', 'CS', null, null);
INSERT INTO `faculty_registration_tbl` VALUES ('21323', 'weeqweqwe', 'qwe', 'eqwe', 'qewq', '32', '23', '32', '23', '223', '324', 'CS', null, null);
INSERT INTO `faculty_registration_tbl` VALUES ('3', 'weeqweqwe', 'qwe', 'eqwe', 'qewq', '32', '23', '32', '23', '223', '324', 'CS', null, null);
INSERT INTO `faculty_registration_tbl` VALUES ('3213', 'mkyong', 'Yadav', 'Kumar', '12-12-1221', '12-12-1221', 'nagendra.yadav.niit@gmail.com', '1929292', 'Delhi', 'Ganga ', '1233', 'CS', null, null);
INSERT INTO `faculty_registration_tbl` VALUES ('34234', 'weeqweqwe', 'qwe', 'eqwe', 'qewq', '32', '23', '32', '23', '223', '324', 'CS', null, null);
INSERT INTO `faculty_registration_tbl` VALUES ('4', 'weeqweqwe', 'qwe', 'eqwe', 'qewq', '32', '23', '32', '23', '223', '324', 'CS', null, null);
INSERT INTO `faculty_registration_tbl` VALUES ('444', 'mkyong', 'kk', 'yy', '07/09/2013', '12/02/2020', 'mkyong@gmail.com', '191919', 'H022', 'Lec', '891818', 'CS', 'MS', '5 Years');
INSERT INTO `faculty_registration_tbl` VALUES ('5', 'weeqweqwe', 'qwe', 'eqwe', 'qewq', '32', '23', '32', '23', '223', '324', 'CS', null, null);
INSERT INTO `faculty_registration_tbl` VALUES ('6', 'weeqweqwe', 'qwe', 'eqwe', 'qewq', '32', '23', '32', '23', '223', '324', 'CS', null, null);
INSERT INTO `faculty_registration_tbl` VALUES ('7', 'weeqweqwe', 'qwe', 'eqwe', 'qewq', '32', '23', '32', '23', '223', '324', 'CS', null, null);
INSERT INTO `faculty_registration_tbl` VALUES ('8', 'weeqweqwe', 'qwe', 'eqwe', 'qewq', '32', '23', '32', '23', '223', '324', 'CS', null, null);
INSERT INTO `faculty_registration_tbl` VALUES ('9', 'weeqweqwe', 'qwe', 'eqwe', 'qewq', '32', '23', '32', '23', '223', '324', 'CS', null, null);
