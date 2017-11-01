/*
Navicat MySQL Data Transfer

Source Server         : PassPort
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : airport

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-10-31 14:07:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aircraft
-- ----------------------------
DROP TABLE IF EXISTS `aircraft`;
CREATE TABLE `aircraft` (
  `air_num` varchar(255) NOT NULL,
  `max_voy` int(11) DEFAULT NULL,
  `mod_a` int(11) DEFAULT NULL,
  `mod_b` int(11) DEFAULT NULL,
  `mod_c` int(11) DEFAULT NULL,
  PRIMARY KEY (`air_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aircraft
-- ----------------------------
INSERT INTO `aircraft` VALUES ('A310-300', '12780', '12', '32', '250');
INSERT INTO `aircraft` VALUES ('A318-100', '6000', '4', '10', '120');
INSERT INTO `aircraft` VALUES ('A318-200', '6000', '4', '10', '120');
INSERT INTO `aircraft` VALUES ('A319-100', '6800', '6', '12', '140');
INSERT INTO `aircraft` VALUES ('A340-100', '14000', '18', '42', '400');
INSERT INTO `aircraft` VALUES ('A340-200', '14000', '18', '42', '400');
INSERT INTO `aircraft` VALUES ('A340-300', '14000', '18', '42', '400');
INSERT INTO `aircraft` VALUES ('A350-100', '15000', '10', '30', '320');
INSERT INTO `aircraft` VALUES ('A350-200', '15000', '10', '30', '320');
INSERT INTO `aircraft` VALUES ('A380-100', '15700', '20', '36', '600');
INSERT INTO `aircraft` VALUES ('A380-200', '15700', '20', '36', '600');
INSERT INTO `aircraft` VALUES ('A380-300', '15700', '20', '36', '600');
INSERT INTO `aircraft` VALUES ('A380-400', '15700', '20', '36', '600');
INSERT INTO `aircraft` VALUES ('A380-500', '15700', '20', '36', '600');
INSERT INTO `aircraft` VALUES ('A380-600', '15700', '20', '36', '600');
INSERT INTO `aircraft` VALUES ('B707-100', '6310', '4', '10', '150');
INSERT INTO `aircraft` VALUES ('B707-200', '6310', '4', '10', '150');
INSERT INTO `aircraft` VALUES ('B717-100', '3815', '2', '8', '100');
INSERT INTO `aircraft` VALUES ('B727-100', '4635', '2', '8', '121');

-- ----------------------------
-- Table structure for airline
-- ----------------------------
DROP TABLE IF EXISTS `airline`;
CREATE TABLE `airline` (
  `al_id` int(11) NOT NULL,
  `al_from` varchar(255) DEFAULT NULL,
  `al_to` varchar(255) DEFAULT NULL,
  `al_mileage` float DEFAULT NULL,
  PRIMARY KEY (`al_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of airline
-- ----------------------------
INSERT INTO `airline` VALUES ('100110', 'MXZ', 'BSD', '3000');
INSERT INTO `airline` VALUES ('100111', 'GHY', 'CKG', '3000');
INSERT INTO `airline` VALUES ('100112', 'GYS', 'FOC', '1300');
INSERT INTO `airline` VALUES ('100113', 'FOC', 'GYS', '1000');
INSERT INTO `airline` VALUES ('100114', 'HZG', 'HYN', '2500');
INSERT INTO `airline` VALUES ('100115', 'JHG', 'JDZ', '1300');
INSERT INTO `airline` VALUES ('100116', 'JZH', 'JMU', '3000');
INSERT INTO `airline` VALUES ('100117', 'JZH', 'JDZ', '1600');
INSERT INTO `airline` VALUES ('100118', 'KWE', 'KRL', '1200');
INSERT INTO `airline` VALUES ('100119', 'LYG', 'LYI', '2300');
INSERT INTO `airline` VALUES ('100120', 'SHE', 'MIG', '4000');
INSERT INTO `airline` VALUES ('100121', 'MIG', 'NNY', '800');

-- ----------------------------
-- Table structure for airport
-- ----------------------------
DROP TABLE IF EXISTS `airport`;
CREATE TABLE `airport` (
  `ap_code` varchar(255) NOT NULL,
  `ap_area` varchar(255) DEFAULT NULL,
  `ap_city` varchar(255) DEFAULT NULL,
  `ap_airportname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ap_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of airport
-- ----------------------------
INSERT INTO `airport` VALUES ('A', '�½�', '��������', '��������');
INSERT INTO `airport` VALUES ('AAT', '�½�', '��̩��', '��̩��');
INSERT INTO `airport` VALUES ('AKU', '�½�', '������', '������');
INSERT INTO `airport` VALUES ('AQG', '����', '����', '����ɽ');
INSERT INTO `airport` VALUES ('BAV', '���ɹ�', '��ͷ', '��ͷ');
INSERT INTO `airport` VALUES ('BHY', '����', '����', '����');
INSERT INTO `airport` VALUES ('BSD', '����', '��ɽ', '�������/����');
INSERT INTO `airport` VALUES ('CAN', '�㶫', '����', '����');
INSERT INTO `airport` VALUES ('CDG', '����', '����', '�һ�Դ');
INSERT INTO `airport` VALUES ('CGO', '����', '֣��', '�½�');
INSERT INTO `airport` VALUES ('CGQ', '����', '����', '����');
INSERT INTO `airport` VALUES ('CHG', '����', '����', '����');
INSERT INTO `airport` VALUES ('CIH', 'ɽ��', '����', '����');
INSERT INTO `airport` VALUES ('CKG', '����', '����', '����');
INSERT INTO `airport` VALUES ('CSX', '����', '��ɳ', '�ƻ�');
INSERT INTO `airport` VALUES ('CTU', '�Ĵ�', '�ɶ�', '˫��');
INSERT INTO `airport` VALUES ('CZX', '����', '����', 'ǣţ');
INSERT INTO `airport` VALUES ('DDG', '����', '����', '��ͷ');
INSERT INTO `airport` VALUES ('DIG', '����', '�е�', '�е�');
INSERT INTO `airport` VALUES ('DLC', '����', '����', '��ˮ��');
INSERT INTO `airport` VALUES ('DLU', '����', '����', '����');
INSERT INTO `airport` VALUES ('DNH', '����', '�ػ�', '�ػ�');
INSERT INTO `airport` VALUES ('DYG', '����', '�żҽ�', '�ɻ�');
INSERT INTO `airport` VALUES ('ENH', '����', '��ʩ', '���ƺ');
INSERT INTO `airport` VALUES ('ENY', '����', '�Ӱ�', '��ʮ����');
INSERT INTO `airport` VALUES ('FOC', '����', '����', '����');
INSERT INTO `airport` VALUES ('GYS', '�Ĵ�', '��Ԫ', '����');
INSERT INTO `airport` VALUES ('HAK', '����', '����', '����');
INSERT INTO `airport` VALUES ('HET', '���ɹ�', '���ͺ���', '����');
INSERT INTO `airport` VALUES ('HFE', '����', '�Ϸ�', '���');
INSERT INTO `airport` VALUES ('HGH', '�㽭', '����', '��ɽ');
INSERT INTO `airport` VALUES ('HLD', '���ɹ�', '������', '��ɽ');
INSERT INTO `airport` VALUES ('HNY', '����', '����', '����');
INSERT INTO `airport` VALUES ('HRB', '������', '������', '�ּҸ�');
INSERT INTO `airport` VALUES ('HSN', '�㽭', '��ɽ', '��Ҽ�');
INSERT INTO `airport` VALUES ('HTN', '�½�', '����', '����');
INSERT INTO `airport` VALUES ('HYN', '�㽭', '����', '·��');
INSERT INTO `airport` VALUES ('HZG', '����', '����', '����');
INSERT INTO `airport` VALUES ('INC', '����', '����', '�Ӷ�');
INSERT INTO `airport` VALUES ('IQN', '�½�', '��ĩ', '��ĩ');
INSERT INTO `airport` VALUES ('JDZ', '����', '������', '�޼�');
INSERT INTO `airport` VALUES ('JHG', '����', '����', '�������');
INSERT INTO `airport` VALUES ('JIL', '����', '����', '��̨��');
INSERT INTO `airport` VALUES ('JIU', '����', '�Ž�', '�Ž�');
INSERT INTO `airport` VALUES ('JJN', '����', '����', 'Ȫ��');
INSERT INTO `airport` VALUES ('JMU', '������', '��ľ˹', '����');
INSERT INTO `airport` VALUES ('JNG', 'ɽ��', '����', '����');
INSERT INTO `airport` VALUES ('JNZ', '����', '����', '����');
INSERT INTO `airport` VALUES ('JUZ', '�㽭', '����', '����');
INSERT INTO `airport` VALUES ('JZH', '�Ĵ�', '��կ��', '����');
INSERT INTO `airport` VALUES ('KCA', '�½�', '�⳵', '�⳵');
INSERT INTO `airport` VALUES ('KHG', '�½�', '��ʲ', '��ʲ');
INSERT INTO `airport` VALUES ('KHN', '����', '�ϲ�', '����');
INSERT INTO `airport` VALUES ('KMG', '����', '����', '�׼Ұ�');
INSERT INTO `airport` VALUES ('KOW', '����', '����', '�ƽ�');
INSERT INTO `airport` VALUES ('KRL', '�½�', '�����', '�����');
INSERT INTO `airport` VALUES ('KWE', '����', '����', '������');
INSERT INTO `airport` VALUES ('KWL', '����', '����', '����');
INSERT INTO `airport` VALUES ('LHW', '����', '����', '�д�');
INSERT INTO `airport` VALUES ('LJG', '����', '����', '����');
INSERT INTO `airport` VALUES ('LUM', '����', '�º�â��', 'â��');
INSERT INTO `airport` VALUES ('LXA', '����', '����', '����');
INSERT INTO `airport` VALUES ('LYA', '����', '����', '����');
INSERT INTO `airport` VALUES ('LYG', '����', '���Ƹ�', '������');
INSERT INTO `airport` VALUES ('LYI', 'ɽ��', '����', '����');
INSERT INTO `airport` VALUES ('LZH', '����', '����', '����');
INSERT INTO `airport` VALUES ('LZO', '�Ĵ�', '����', '����');
INSERT INTO `airport` VALUES ('MDG', '������', 'ĵ����', '����');
INSERT INTO `airport` VALUES ('MIG', '�Ĵ�', '����', '�Ͻ�');
INSERT INTO `airport` VALUES ('MXZ', '�㶫', '÷��', '÷��');
INSERT INTO `airport` VALUES ('NDG', '������', '�������', '������');
INSERT INTO `airport` VALUES ('NGB', '�㽭', '����', '����');
INSERT INTO `airport` VALUES ('NKG', '����', '�Ͼ�', '»��');
INSERT INTO `airport` VALUES ('NNG', '����', '����', '����');
INSERT INTO `airport` VALUES ('NNY', '����', '����', '��Ӫ');
INSERT INTO `airport` VALUES ('NTG', '����', '��ͨ', '�˶�');
INSERT INTO `airport` VALUES ('PEK', '����', '����', '�׶�');
INSERT INTO `airport` VALUES ('PVG', '�Ϻ�', '�Ϻ�', '�ֶ�');
INSERT INTO `airport` VALUES ('SHA', '�Ϻ�', '�Ϻ�', '����');
INSERT INTO `airport` VALUES ('SHE', '����', '����', '����');
INSERT INTO `airport` VALUES ('SHP', '�ӱ�', '�ػʵ�', 'ɽ����');
INSERT INTO `airport` VALUES ('SHS', '����', 'ɳ��', 'ɳ��');
INSERT INTO `airport` VALUES ('SIA', '����', '����', '����');
INSERT INTO `airport` VALUES ('SJW', '�ӱ�', 'ʯ��ׯ', '����');
INSERT INTO `airport` VALUES ('SWA', '�㶫', '��ͷ', '��ɰ');
INSERT INTO `airport` VALUES ('SYX', '����', '����', '���');
INSERT INTO `airport` VALUES ('SZX', '�㶫', '����', '����');
INSERT INTO `airport` VALUES ('TAO', 'ɽ��', '�ൺ', '��ͤ');
INSERT INTO `airport` VALUES ('TCG', '�½�', '����', '����');
INSERT INTO `airport` VALUES ('TEN', '����', 'ͭ��', '����');
INSERT INTO `airport` VALUES ('TNA', 'ɽ��', '����', 'ңǽ');
INSERT INTO `airport` VALUES ('TSN', '���', '���', '����');
INSERT INTO `airport` VALUES ('TXN', '����', '��ɽ', '��Ϫ');
INSERT INTO `airport` VALUES ('TYN', 'ɽ��', '̫ԭ', '����');
INSERT INTO `airport` VALUES ('URC', '�½�', '��³ľ��', '���ѱ�');
INSERT INTO `airport` VALUES ('WEF', 'ɽ��', 'Ϋ��', '�ĵ�');
INSERT INTO `airport` VALUES ('WEH', 'ɽ��', '����', '��ˮ��');
INSERT INTO `airport` VALUES ('WNZ', '�㽭', '����', '��ǿ');
INSERT INTO `airport` VALUES ('WUH', '����', '�人', '���');
INSERT INTO `airport` VALUES ('WUS', '����', '����ɽ', '����ɽ');
INSERT INTO `airport` VALUES ('WUX', '����', '����', '˶��');
INSERT INTO `airport` VALUES ('WXN', '�Ĵ�', '����', '��ƽ');
INSERT INTO `airport` VALUES ('XFN', '����', '�差', '����');
INSERT INTO `airport` VALUES ('XIC', '�Ĵ�', '����', '��ɽ');
INSERT INTO `airport` VALUES ('XIL', '���ɹ�', '���ֺ���', '���ֺ���');
INSERT INTO `airport` VALUES ('XMN', '����', '����', '����');
INSERT INTO `airport` VALUES ('XUE', '����', '����', '����');
INSERT INTO `airport` VALUES ('YBP', '�Ĵ�', '�˱�', '����');
INSERT INTO `airport` VALUES ('YCU', 'ɽ��', '�˳�', '�ع�');
INSERT INTO `airport` VALUES ('YIH', '����', '�˲�', '��Ͽ');
INSERT INTO `airport` VALUES ('YIN', '�½�', '����', '����');
INSERT INTO `airport` VALUES ('YIW', '�㽭', '����', '����');
INSERT INTO `airport` VALUES ('YNJ', '����', '�Ӽ�', '������');
INSERT INTO `airport` VALUES ('YNT', 'ɽ��', '��̨', '����');
INSERT INTO `airport` VALUES ('YNZ', '����', '�γ�', '����');
INSERT INTO `airport` VALUES ('ZHA', '�㶫', 'տ��', 'տ��');
INSERT INTO `airport` VALUES ('ZUH', '�㶫', '�麣', '����');

-- ----------------------------
-- Table structure for branch
-- ----------------------------
DROP TABLE IF EXISTS `branch`;
CREATE TABLE `branch` (
  `bra_id` int(11) NOT NULL,
  `bra_name` varchar(255) DEFAULT NULL,
  `bra_addr` varchar(255) DEFAULT NULL,
  `bra_tel` varchar(255) DEFAULT NULL,
  `bra_pro` varchar(255) DEFAULT NULL,
  `bra_city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of branch
-- ----------------------------

-- ----------------------------
-- Table structure for businessrecord
-- ----------------------------
DROP TABLE IF EXISTS `businessrecord`;
CREATE TABLE `businessrecord` (
  `br_num` int(11) NOT NULL,
  `br_time` datetime DEFAULT NULL,
  `br_type` varchar(255) DEFAULT NULL,
  `bra_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `br_money` int(11) DEFAULT NULL,
  `br_balance_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`br_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of businessrecord
-- ----------------------------

-- ----------------------------
-- Table structure for classdiscount
-- ----------------------------
DROP TABLE IF EXISTS `classdiscount`;
CREATE TABLE `classdiscount` (
  `cd_type` varchar(255) NOT NULL,
  `cd_re` float DEFAULT NULL,
  PRIMARY KEY (`cd_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classdiscount
-- ----------------------------

-- ----------------------------
-- Table structure for construst
-- ----------------------------
DROP TABLE IF EXISTS `construst`;
CREATE TABLE `construst` (
  `con_type` varchar(255) NOT NULL,
  `con_minsax` int(11) DEFAULT NULL,
  `con_maxsax` int(11) DEFAULT NULL,
  PRIMARY KEY (`con_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of construst
-- ----------------------------

-- ----------------------------
-- Table structure for flight
-- ----------------------------
DROP TABLE IF EXISTS `flight`;
CREATE TABLE `flight` (
  `flight_num` int(11) NOT NULL AUTO_INCREMENT,
  `flight_date` datetime DEFAULT NULL,
  `flight_cabinClassF` int(11) DEFAULT NULL,
  `flight_cabinClassC` int(255) DEFAULT NULL,
  `flight_cabinClassY` int(11) DEFAULT NULL,
  `sd_re` float DEFAULT NULL,
  `flightscheduler_num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`flight_num`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flight
-- ----------------------------
INSERT INTO `flight` VALUES ('1', '2017-07-01 09:00:00', '3', '2', '17', '0.85', 'TL1707');
INSERT INTO `flight` VALUES ('2', '2017-10-28 08:00:00', '20', '30', '20', '0.5', 'TL2010');
INSERT INTO `flight` VALUES ('3', '2017-10-26 01:00:00', '12', '24', '12', '0.9', 'TL2017');

-- ----------------------------
-- Table structure for flightcopy
-- ----------------------------
DROP TABLE IF EXISTS `flightcopy`;
CREATE TABLE `flightcopy` (
  `copy_number` int(11) NOT NULL,
  `copy_date` varchar(255) DEFAULT NULL,
  `flight_number` varchar(255) DEFAULT NULL,
  `fgt_first_seats` int(11) DEFAULT NULL,
  `fgt_buiness_seats` int(255) DEFAULT NULL,
  `fgt_economy_seats` int(11) DEFAULT NULL,
  `fgt_season_discount` float(255,0) DEFAULT NULL,
  `real_price` float(11,0) DEFAULT NULL,
  `fpn_start_airport` varchar(255) DEFAULT NULL,
  `fpn_tag_airport` varchar(255) DEFAULT NULL,
  `fpn_leave_time` varchar(255) DEFAULT NULL,
  `fpn_reach_time` varchar(255) DEFAULT NULL,
  `fpn_plan_type` varchar(255) DEFAULT NULL,
  `sold_first_class_seats` int(11) DEFAULT NULL,
  `sold_business_seats` int(11) DEFAULT NULL,
  `sold_plain_seats` int(11) DEFAULT NULL,
  PRIMARY KEY (`copy_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flightcopy
-- ----------------------------

-- ----------------------------
-- Table structure for flightscheduler
-- ----------------------------
DROP TABLE IF EXISTS `flightscheduler`;
CREATE TABLE `flightscheduler` (
  `flightscheduler_num` varchar(7) NOT NULL,
  `flight_startDate` date DEFAULT NULL,
  `flight_endDate` date DEFAULT NULL,
  `flight_airLine` varchar(6) DEFAULT NULL,
  `flight_departure` time DEFAULT NULL,
  `flight_arrival` time DEFAULT NULL,
  `air_num` varchar(255) DEFAULT NULL,
  `flight_scheduler` varchar(7) DEFAULT NULL,
  `flight_fullPrice` float(255,0) DEFAULT NULL,
  `flight_manager` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`flightscheduler_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flightscheduler
-- ----------------------------
INSERT INTO `flightscheduler` VALUES ('TL1707', '2017-07-01', '2010-01-14', '100114', '09:00:00', '11:00:00', 'A310-300', '0011010', '5000', null);
INSERT INTO `flightscheduler` VALUES ('TL2017', '2017-07-01', '2017-09-30', '100112', '09:30:00', '10:30:00', 'A310-300', '0110110', '4000', 'zhangjihua');

-- ----------------------------
-- Table structure for fueloil
-- ----------------------------
DROP TABLE IF EXISTS `fueloil`;
CREATE TABLE `fueloil` (
  `fo_type` varchar(255) NOT NULL,
  `fo_minsax` int(11) DEFAULT NULL,
  `fo_maxsax` int(11) DEFAULT NULL,
  PRIMARY KEY (`fo_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fueloil
-- ----------------------------

-- ----------------------------
-- Table structure for handlog
-- ----------------------------
DROP TABLE IF EXISTS `handlog`;
CREATE TABLE `handlog` (
  `hl_num` int(11) NOT NULL,
  `hl_date` datetime DEFAULT NULL,
  `hl_event` varchar(255) DEFAULT NULL,
  `hl_reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hl_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of handlog
-- ----------------------------

-- ----------------------------
-- Table structure for month
-- ----------------------------
DROP TABLE IF EXISTS `month`;
CREATE TABLE `month` (
  `bui_month_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_record_no` int(11) DEFAULT NULL,
  `deal_record` int(255) DEFAULT NULL,
  `return_ticket_record` int(11) DEFAULT NULL,
  `update_record` int(11) DEFAULT NULL,
  `total_record_fee` float DEFAULT NULL,
  `book_ticket_fee` float(255,0) DEFAULT NULL,
  `return_ticket_fee` float(255,0) DEFAULT NULL,
  `change_record_fee` float(255,0) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bui_month_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of month
-- ----------------------------

-- ----------------------------
-- Table structure for passengerdiscount
-- ----------------------------
DROP TABLE IF EXISTS `passengerdiscount`;
CREATE TABLE `passengerdiscount` (
  `pd_type` varchar(255) NOT NULL,
  `pd_re` float DEFAULT NULL,
  PRIMARY KEY (`pd_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of passengerdiscount
-- ----------------------------

-- ----------------------------
-- Table structure for popedom
-- ----------------------------
DROP TABLE IF EXISTS `popedom`;
CREATE TABLE `popedom` (
  `pop_id` int(11) NOT NULL,
  `pop_name` varchar(255) DEFAULT NULL,
  `pop_value` int(255) DEFAULT NULL,
  PRIMARY KEY (`pop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of popedom
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `rol_id` int(11) NOT NULL,
  `rol_name` varchar(255) DEFAULT NULL,
  `rol_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for role_popedom
-- ----------------------------
DROP TABLE IF EXISTS `role_popedom`;
CREATE TABLE `role_popedom` (
  `rol_id` int(11) DEFAULT NULL,
  `pop_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_popedom
-- ----------------------------

-- ----------------------------
-- Table structure for seasondiscount
-- ----------------------------
DROP TABLE IF EXISTS `seasondiscount`;
CREATE TABLE `seasondiscount` (
  `sd_type` varchar(255) NOT NULL,
  `sd_re` float DEFAULT NULL,
  PRIMARY KEY (`sd_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seasondiscount
-- ----------------------------

-- ----------------------------
-- Table structure for systemlog
-- ----------------------------
DROP TABLE IF EXISTS `systemlog`;
CREATE TABLE `systemlog` (
  `sl_num` int(11) NOT NULL,
  `sl_date` datetime DEFAULT NULL,
  `sl_event` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sl_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of systemlog
-- ----------------------------

-- ----------------------------
-- Table structure for ticketorder
-- ----------------------------
DROP TABLE IF EXISTS `ticketorder`;
CREATE TABLE `ticketorder` (
  `ord_id` int(11) NOT NULL,
  `br_num` int(11) DEFAULT NULL,
  `flight_number` varchar(255) DEFAULT NULL,
  `passenger_name` varchar(255) DEFAULT NULL,
  `certification_number` varchar(255) DEFAULT NULL,
  `ord_date` datetime DEFAULT NULL,
  `cd_type` varchar(255) DEFAULT NULL,
  `pd_type` varchar(255) DEFAULT NULL,
  `ord_price` float(10,2) DEFAULT NULL,
  `bra_id` int(11) DEFAULT NULL,
  `ord_rol_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ticketorder
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `rol_name` varchar(255) DEFAULT NULL,
  `pop_value` int(255) DEFAULT NULL,
  `bra_id` int(255) DEFAULT NULL,
  `user_tel` varchar(255) DEFAULT NULL,
  `user_province` varchar(255) DEFAULT NULL,
  `user_city` varchar(255) DEFAULT NULL,
  `user_secret` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `rol_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------

-- ----------------------------
-- Table structure for year
-- ----------------------------
DROP TABLE IF EXISTS `year`;
CREATE TABLE `year` (
  `bui_year_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_record_no` int(11) DEFAULT NULL,
  `deal_record` int(255) DEFAULT NULL,
  `return_ticket_record` int(11) DEFAULT NULL,
  `update_record` int(11) DEFAULT NULL,
  `total_record_fee` float DEFAULT NULL,
  `book_ticket_fee` float(255,0) DEFAULT NULL,
  `return_ticket_fee` float(255,0) DEFAULT NULL,
  `change_record_fee` float(255,0) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bui_year_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of year
-- ----------------------------
