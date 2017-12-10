/*
MySQL Data Transfer
Source Host: localhost
Source Database: db_xsxx
Target Host: localhost
Target Database: db_xsxx
Date: 2012/4/5 2:10:27
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL,
  `userName` varchar(50) default NULL,
  `userPw` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_banji
-- ----------------------------
CREATE TABLE `t_banji` (
  `banji_id` int(11) NOT NULL,
  `banji_bianhao` varchar(50) default NULL,
  `banji_name` varchar(50) default NULL,
  `banji_ruxuenianfen` varchar(50) default NULL,
  `zhuanye_id` int(11) default NULL,
  `xibie_id` int(11) default NULL,
  `xuyuan_id` int(11) default NULL,
  `banji_del` varchar(50) default NULL,
  `banji_one1` varchar(50) default NULL,
  `banji_one2` varchar(50) default NULL,
  `banji_one3` varchar(50) default NULL,
  `banji_one4` varchar(50) default NULL,
  `banji_one5` datetime default NULL,
  `banji_one6` datetime default NULL,
  `banji_one7` int(11) default NULL,
  `banji_one8` int(11) default NULL,
  PRIMARY KEY  (`banji_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_chengji
-- ----------------------------
CREATE TABLE `t_chengji` (
  `chengji_id` int(11) NOT NULL,
  `stu_id` int(11) default NULL,
  `kecheng_id` int(11) default NULL,
  `kaoshifenshu` int(11) default NULL,
  `kaoshishijian` varchar(50) default NULL,
  `kaoshileixing` varchar(50) default NULL,
  `chengji_addUser` varchar(50) default NULL,
  `chengji_one1` varchar(50) default NULL,
  `chengji_one2` varchar(50) default NULL,
  `chengji_one3` varchar(50) default NULL,
  `chengji_one4` varchar(50) default NULL,
  `chengji_one5` datetime default NULL,
  `chengji_one6` datetime default NULL,
  `chengji_one7` int(11) default NULL,
  `chengji_one8` int(11) default NULL,
  PRIMARY KEY  (`chengji_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_gonggao
-- ----------------------------
CREATE TABLE `t_gonggao` (
  `gonggao_id` int(11) NOT NULL,
  `gonggao_title` varchar(50) default NULL,
  `gonggao_content` text,
  `gonggao_data` varchar(50) default NULL,
  `gonggao_fabuzhe` varchar(255) default NULL,
  `gonggao_del` varchar(50) default NULL,
  `gonggao_one1` varchar(50) default NULL,
  `gonggao_one2` varchar(50) default NULL,
  `gonggao_one3` varchar(50) default NULL,
  `gonggao_one4` varchar(50) default NULL,
  `gonggao_one5` datetime default NULL,
  `gonggao_one6` datetime default NULL,
  `gonggao_one7` int(11) default NULL,
  `gonggao_one8` int(11) default NULL,
  PRIMARY KEY  (`gonggao_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_kecheng
-- ----------------------------
CREATE TABLE `t_kecheng` (
  `kecheng_id` int(11) NOT NULL,
  `kecheng_bianhao` varchar(50) default NULL,
  `kecheng_name` varchar(50) default NULL,
  `kecheng_xueshi` varchar(50) default NULL,
  `kecheng_leixing` int(11) default NULL,
  `kecheng_del` varchar(50) default NULL,
  `kecheng_o1` varchar(50) default NULL,
  `kecheng_o2` varchar(50) default NULL,
  `kecheng_o3` varchar(50) default NULL,
  `kecheng_o4` int(11) default NULL,
  `kecheng_o5` int(11) default NULL,
  `kecheng_o6` datetime default NULL,
  `kecheng_o7` datetime default NULL,
  `kecheng_o8` bigint(20) default NULL,
  `kecheng_o9` bigint(20) default NULL,
  PRIMARY KEY  (`kecheng_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_stu
-- ----------------------------
CREATE TABLE `t_stu` (
  `stu_id` int(11) NOT NULL,
  `stu_xuehao` varchar(50) default NULL,
  `stu_realname` varchar(50) default NULL,
  `stu_sex` varchar(50) default NULL,
  `stu_age` varchar(50) default NULL,
  `stu_card` varchar(50) default NULL,
  `banji_id` int(11) default NULL,
  `zhuanye_id` int(11) default NULL,
  `xibie_id` int(11) default NULL,
  `xuyuan_id` int(11) default NULL,
  `login_name` varchar(50) default NULL,
  `login_pw` varchar(50) default NULL,
  `stu_del` varchar(50) default NULL,
  `stu_one1` varchar(50) default NULL,
  `stu_one2` varchar(50) default NULL,
  `stu_one3` varchar(50) default NULL,
  `stu_one4` varchar(50) default NULL,
  `stu_one5` datetime default NULL,
  `stu_one6` datetime default NULL,
  `stu_one7` int(11) default NULL,
  `stu_one8` int(11) default NULL,
  PRIMARY KEY  (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_tea
-- ----------------------------
CREATE TABLE `t_tea` (
  `tea_id` int(11) NOT NULL,
  `tea_bianhao` varchar(50) default NULL,
  `tea_realname` varchar(50) default NULL,
  `tea_sex` varchar(50) default NULL,
  `tea_age` varchar(50) default NULL,
  `tea_tel` varchar(50) default NULL,
  `tea_address` varchar(50) default NULL,
  `tea_jianli` text,
  `kecheng_id` int(11) default NULL,
  `xibie_id` int(11) default NULL,
  `xuyuan_id` int(11) default NULL,
  `login_name` varchar(50) default NULL,
  `login_pw` varchar(50) default NULL,
  `tea_del` varchar(50) default NULL,
  `tea_one1` varchar(50) default NULL,
  `tea_one2` varchar(50) default NULL,
  `tea_one3` varchar(50) default NULL,
  `tea_one4` varchar(50) default NULL,
  `tea_one5` datetime default NULL,
  `tea_one6` datetime default NULL,
  `tea_one7` int(11) default NULL,
  `tea_one8` int(11) default NULL,
  PRIMARY KEY  (`tea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_xibie
-- ----------------------------
CREATE TABLE `t_xibie` (
  `xibie_id` int(11) NOT NULL,
  `xibie_bianhao` varchar(50) default NULL,
  `xibie_name` varchar(50) default NULL,
  `xibie_jianjie` text,
  `xibie_del` varchar(50) default NULL,
  `xuyuanId` int(11) default NULL,
  `xibie_one1` varchar(50) default NULL,
  `xibie_one2` varchar(50) default NULL,
  `xibie_one3` varchar(50) default NULL,
  `xibie_one4` varchar(50) default NULL,
  `xibie_one5` int(11) default NULL,
  `xibie_one6` int(11) default NULL,
  `xibie_one7` datetime default NULL,
  `xibie_one8` datetime default NULL,
  PRIMARY KEY  (`xibie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_xuyuan
-- ----------------------------
CREATE TABLE `t_xuyuan` (
  `xuyuan_id` int(11) NOT NULL,
  `xuyuan_bianhao` varchar(50) default NULL,
  `xuyuan_name` varchar(50) default NULL,
  `xuyuan_jianjie` text,
  `xuyuan_del` varchar(50) default NULL,
  `xuyuan_one1` varchar(50) default NULL,
  `xuyuan_one2` varchar(50) default NULL,
  `xuyuan_one3` varchar(50) default NULL,
  `xuyuan_one4` varchar(50) default NULL,
  `xuyuan_one5` int(11) default NULL,
  `xuyuan_one6` int(11) default NULL,
  `xuyuan_one7` datetime default NULL,
  `xuyuan_one8` datetime default NULL,
  PRIMARY KEY  (`xuyuan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_zhuanye
-- ----------------------------
CREATE TABLE `t_zhuanye` (
  `zhuanye_id` int(11) NOT NULL,
  `zhuanye_bianhao` varchar(50) default NULL,
  `zhuanye_name` varchar(50) default NULL,
  `zhuanye_jieshao` text,
  `zhuanye_del` varchar(50) default NULL,
  `xibie_id` int(11) default NULL,
  `xuyuan_id` int(11) default NULL,
  `zhuanye_one1` varchar(50) default NULL,
  `zhuanye_one2` varchar(50) default NULL,
  `zhuanye_one3` varchar(50) default NULL,
  `zhuanye_one4` varchar(50) default NULL,
  `zhuanye_one5` int(11) default NULL,
  `zhuanye_one6` int(11) default NULL,
  `zhuanye_one7` datetime default NULL,
  `zhuanye_one8` datetime default NULL,
  PRIMARY KEY  (`zhuanye_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'a', 'a');
INSERT INTO `t_banji` VALUES ('1', '001', '计机机专业一班', '2011-03-09', '1', '1', '1', 'no', null, null, null, null, null, null, null, null);
INSERT INTO `t_chengji` VALUES ('1', '1', '2', '80', '2012-04-13', '2012上学期模拟考试', 'tian', null, null, null, null, null, null, null, null);
INSERT INTO `t_chengji` VALUES ('2', '1', '1', '99', '2012-04-04', '2012上半年测试考试', 'zhao', null, null, null, null, null, null, null, null);
INSERT INTO `t_gonggao` VALUES ('1', '清明放假通知', '清明放假通知，1-3号，忘周知', '2012-4-5 1:09:50', '系统管理员', 'no', null, null, null, null, null, null, null, null);
INSERT INTO `t_gonggao` VALUES ('2', '测试公告测试公告测试公告', '测试公告测试公告测试公告测试公告测试公告测试公告', '2012-4-5 2:05:12', '系统管理员', 'no', null, null, null, null, null, null, null, null);
INSERT INTO `t_kecheng` VALUES ('1', '001', '大学英语', '42', '6', 'no', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_kecheng` VALUES ('2', '002', '会计电算化', '40', '1', 'no', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_stu` VALUES ('1', '19', '易锋平', '女', '23', '3713234585522445', '1', '1', '1', '1', 'yi', 'yi', 'no', null, null, null, null, null, null, null, null);
INSERT INTO `t_stu` VALUES ('2', '123', '刘光亮', '男', '25', '3713231332222', '1', '1', '1', '1', 'liu', 'liu', 'no', null, null, null, null, null, null, null, null);
INSERT INTO `t_tea` VALUES ('1', '001', '赵老师', '男', '52', '13999999999', '北京路', '好老师', '1', '1', '1', 'zhao', '000000', 'no', '大学英语', null, null, null, null, null, null, null);
INSERT INTO `t_tea` VALUES ('2', '002', '田老师', '男', '24', '13555555555', '上海路', '好老师', '2', '2', '1', 'tian', '000000', 'no', '会计电算化', null, null, null, null, null, null, null);
INSERT INTO `t_xibie` VALUES ('1', '001', '经济学---会计', '计算科学系\r\n', 'no', '1', null, null, null, null, null, null, null, null);
INSERT INTO `t_xibie` VALUES ('2', '002', '工商企业管理', '外语系', 'no', '1', null, null, null, null, null, null, null, null);
INSERT INTO `t_xuyuan` VALUES ('1', '001', '清华学院', '清华学院学院', 'no', null, null, null, null, null, null, null, null);
INSERT INTO `t_zhuanye` VALUES ('1', '001', '计算机专业', '计算机专业', 'no', '1', '1', null, null, null, null, null, null, null, null);
