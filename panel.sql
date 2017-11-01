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
INSERT INTO `airport` VALUES ('A', '新疆', '阿尔玛塔', '阿尔玛塔');
INSERT INTO `airport` VALUES ('AAT', '新疆', '阿泰勒', '阿泰勒');
INSERT INTO `airport` VALUES ('AKU', '新疆', '阿克苏', '阿克苏');
INSERT INTO `airport` VALUES ('AQG', '安徽', '安庆', '大龙山');
INSERT INTO `airport` VALUES ('BAV', '内蒙古', '包头', '包头');
INSERT INTO `airport` VALUES ('BHY', '广西', '北海', '福成');
INSERT INTO `airport` VALUES ('BSD', '云南', '保山', '香格里拉/迪文');
INSERT INTO `airport` VALUES ('CAN', '广东', '广州', '白云');
INSERT INTO `airport` VALUES ('CDG', '湖南', '常德', '桃花源');
INSERT INTO `airport` VALUES ('CGO', '河南', '郑州', '新郊');
INSERT INTO `airport` VALUES ('CGQ', '吉林', '长春', '大房身');
INSERT INTO `airport` VALUES ('CHG', '辽宁', '朝阳', '朝阳');
INSERT INTO `airport` VALUES ('CIH', '山西', '长治', '王村');
INSERT INTO `airport` VALUES ('CKG', '重庆', '重庆', '江北');
INSERT INTO `airport` VALUES ('CSX', '湖南', '长沙', '黄花');
INSERT INTO `airport` VALUES ('CTU', '四川', '成都', '双流');
INSERT INTO `airport` VALUES ('CZX', '江苏', '常州', '牵牛');
INSERT INTO `airport` VALUES ('DDG', '辽宁', '丹东', '浪头');
INSERT INTO `airport` VALUES ('DIG', '云南', '中甸', '中甸');
INSERT INTO `airport` VALUES ('DLC', '辽宁', '大连', '周水子');
INSERT INTO `airport` VALUES ('DLU', '云南', '大理', '大理');
INSERT INTO `airport` VALUES ('DNH', '甘肃', '敦煌', '敦煌');
INSERT INTO `airport` VALUES ('DYG', '湖南', '张家界', '荷花');
INSERT INTO `airport` VALUES ('ENH', '湖北', '恩施', '许家坪');
INSERT INTO `airport` VALUES ('ENY', '陕西', '延安', '二十里铺');
INSERT INTO `airport` VALUES ('FOC', '福建', '福州', '长乐');
INSERT INTO `airport` VALUES ('GYS', '四川', '广元', '莱坝');
INSERT INTO `airport` VALUES ('HAK', '海南', '海口', '美兰');
INSERT INTO `airport` VALUES ('HET', '内蒙古', '呼和浩特', '白塔');
INSERT INTO `airport` VALUES ('HFE', '安徽', '合肥', '骆岗');
INSERT INTO `airport` VALUES ('HGH', '浙江', '杭州', '萧山');
INSERT INTO `airport` VALUES ('HLD', '内蒙古', '海拉尔', '东山');
INSERT INTO `airport` VALUES ('HNY', '湖南', '衡阳', '南岳');
INSERT INTO `airport` VALUES ('HRB', '黑龙江', '哈尔滨', '阎家岗');
INSERT INTO `airport` VALUES ('HSN', '浙江', '舟山', '朱家尖');
INSERT INTO `airport` VALUES ('HTN', '新疆', '和田', '和田');
INSERT INTO `airport` VALUES ('HYN', '浙江', '黄岩', '路桥');
INSERT INTO `airport` VALUES ('HZG', '陕西', '汉中', '西关');
INSERT INTO `airport` VALUES ('INC', '宁夏', '银川', '河东');
INSERT INTO `airport` VALUES ('IQN', '新疆', '且末', '且末');
INSERT INTO `airport` VALUES ('JDZ', '江西', '景德镇', '罗家');
INSERT INTO `airport` VALUES ('JHG', '云南', '景洪', '景洪版纳');
INSERT INTO `airport` VALUES ('JIL', '吉林', '吉林', '二台子');
INSERT INTO `airport` VALUES ('JIU', '江西', '九江', '九江');
INSERT INTO `airport` VALUES ('JJN', '福建', '晋江', '泉州');
INSERT INTO `airport` VALUES ('JMU', '黑龙江', '佳木斯', '东郊');
INSERT INTO `airport` VALUES ('JNG', '山东', '济宁', '曲阜');
INSERT INTO `airport` VALUES ('JNZ', '辽宁', '锦州', '锦州');
INSERT INTO `airport` VALUES ('JUZ', '浙江', '衢州', '衢州');
INSERT INTO `airport` VALUES ('JZH', '四川', '九寨沟', '黄龙');
INSERT INTO `airport` VALUES ('KCA', '新疆', '库车', '库车');
INSERT INTO `airport` VALUES ('KHG', '新疆', '喀什', '喀什');
INSERT INTO `airport` VALUES ('KHN', '江西', '南昌', '昌北');
INSERT INTO `airport` VALUES ('KMG', '云南', '昆明', '巫家坝');
INSERT INTO `airport` VALUES ('KOW', '江西', '赣州', '黄金');
INSERT INTO `airport` VALUES ('KRL', '新疆', '库尔勒', '库尔勒');
INSERT INTO `airport` VALUES ('KWE', '贵州', '贵阳', '龙洞堡');
INSERT INTO `airport` VALUES ('KWL', '广西', '桂林', '两江');
INSERT INTO `airport` VALUES ('LHW', '甘肃', '兰州', '中川');
INSERT INTO `airport` VALUES ('LJG', '云南', '丽江', '三义');
INSERT INTO `airport` VALUES ('LUM', '云南', '德宏芒市', '芒市');
INSERT INTO `airport` VALUES ('LXA', '西藏', '拉萨', '贡嘎');
INSERT INTO `airport` VALUES ('LYA', '河南', '洛阳', '洛阳');
INSERT INTO `airport` VALUES ('LYG', '江苏', '连云港', '白塔埠');
INSERT INTO `airport` VALUES ('LYI', '山东', '临沂', '临沂');
INSERT INTO `airport` VALUES ('LZH', '广西', '柳州', '白莲');
INSERT INTO `airport` VALUES ('LZO', '四川', '泸州', '蓝田');
INSERT INTO `airport` VALUES ('MDG', '黑龙江', '牡丹江', '海浪');
INSERT INTO `airport` VALUES ('MIG', '四川', '绵阳', '南郊');
INSERT INTO `airport` VALUES ('MXZ', '广东', '梅县', '梅县');
INSERT INTO `airport` VALUES ('NDG', '黑龙江', '齐齐哈尔', '三家子');
INSERT INTO `airport` VALUES ('NGB', '浙江', '宁波', '栎社');
INSERT INTO `airport` VALUES ('NKG', '江苏', '南京', '禄口');
INSERT INTO `airport` VALUES ('NNG', '广西', '南宁', '吴墟');
INSERT INTO `airport` VALUES ('NNY', '河南', '南阳', '姜营');
INSERT INTO `airport` VALUES ('NTG', '江苏', '南通', '兴东');
INSERT INTO `airport` VALUES ('PEK', '北京', '北京', '首都');
INSERT INTO `airport` VALUES ('PVG', '上海', '上海', '浦东');
INSERT INTO `airport` VALUES ('SHA', '上海', '上海', '红桥');
INSERT INTO `airport` VALUES ('SHE', '辽宁', '沈阳', '桃仙');
INSERT INTO `airport` VALUES ('SHP', '河北', '秦皇岛', '山海关');
INSERT INTO `airport` VALUES ('SHS', '湖北', '沙市', '沙市');
INSERT INTO `airport` VALUES ('SIA', '陕西', '西安', '咸阳');
INSERT INTO `airport` VALUES ('SJW', '河北', '石家庄', '正定');
INSERT INTO `airport` VALUES ('SWA', '广东', '汕头', '外砂');
INSERT INTO `airport` VALUES ('SYX', '海南', '三亚', '凤凰');
INSERT INTO `airport` VALUES ('SZX', '广东', '深圳', '宝安');
INSERT INTO `airport` VALUES ('TAO', '山东', '青岛', '流亭');
INSERT INTO `airport` VALUES ('TCG', '新疆', '塔城', '塔城');
INSERT INTO `airport` VALUES ('TEN', '贵州', '铜仁', '大兴');
INSERT INTO `airport` VALUES ('TNA', '山东', '济南', '遥墙');
INSERT INTO `airport` VALUES ('TSN', '天津', '天津', '滨海');
INSERT INTO `airport` VALUES ('TXN', '安徽', '黄山', '屯溪');
INSERT INTO `airport` VALUES ('TYN', '山西', '太原', '武宿');
INSERT INTO `airport` VALUES ('URC', '新疆', '乌鲁木齐', '地窝堡');
INSERT INTO `airport` VALUES ('WEF', '山东', '潍坊', '文登');
INSERT INTO `airport` VALUES ('WEH', '山东', '威海', '大水泊');
INSERT INTO `airport` VALUES ('WNZ', '浙江', '温州', '永强');
INSERT INTO `airport` VALUES ('WUH', '湖北', '武汉', '天河');
INSERT INTO `airport` VALUES ('WUS', '福建', '武夷山', '武夷山');
INSERT INTO `airport` VALUES ('WUX', '江苏', '无锡', '硕放');
INSERT INTO `airport` VALUES ('WXN', '四川', '万县', '梁平');
INSERT INTO `airport` VALUES ('XFN', '湖北', '襄樊', '刘集');
INSERT INTO `airport` VALUES ('XIC', '四川', '西昌', '青山');
INSERT INTO `airport` VALUES ('XIL', '内蒙古', '锡林浩特', '锡林浩特');
INSERT INTO `airport` VALUES ('XMN', '福建', '厦门', '高崎');
INSERT INTO `airport` VALUES ('XUE', '江苏', '徐州', '观音');
INSERT INTO `airport` VALUES ('YBP', '四川', '宜宾', '莱坝');
INSERT INTO `airport` VALUES ('YCU', '山西', '运城', '关公');
INSERT INTO `airport` VALUES ('YIH', '湖北', '宜昌', '三峡');
INSERT INTO `airport` VALUES ('YIN', '新疆', '伊宁', '伊宁');
INSERT INTO `airport` VALUES ('YIW', '浙江', '义乌', '义乌');
INSERT INTO `airport` VALUES ('YNJ', '吉林', '延吉', '朝阳川');
INSERT INTO `airport` VALUES ('YNT', '山东', '烟台', '莱沂');
INSERT INTO `airport` VALUES ('YNZ', '江苏', '盐城', '南洋');
INSERT INTO `airport` VALUES ('ZHA', '广东', '湛江', '湛江');
INSERT INTO `airport` VALUES ('ZUH', '广东', '珠海', '三灶');

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
