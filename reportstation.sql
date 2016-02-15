/*
Navicat MySQL Data Transfer

Source Server         : mywork
Source Server Version : 50130
Source Host           : localhost:3306
Source Database       : reportstation

Target Server Type    : MYSQL
Target Server Version : 50130
File Encoding         : 65001

Date: 2016-02-15 15:46:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `areainfo`
-- ----------------------------
DROP TABLE IF EXISTS `areainfo`;
CREATE TABLE `areainfo` (
  `area_id` bigint(11) NOT NULL DEFAULT '0' COMMENT '行政单位编号',
  `name` varchar(20) DEFAULT NULL COMMENT '行政单位名称',
  `level` int(11) DEFAULT NULL COMMENT '行政单位级别',
  `parent_id` bigint(11) DEFAULT NULL COMMENT '父级行政单位',
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of areainfo
-- ----------------------------
INSERT INTO `areainfo` VALUES ('10000', 'China', '1', null);
INSERT INTO `areainfo` VALUES ('10001', '湖南省', '2', '10000');
INSERT INTO `areainfo` VALUES ('10002', '长沙', '3', '10001');
INSERT INTO `areainfo` VALUES ('10003', '株洲', '3', '10001');
INSERT INTO `areainfo` VALUES ('10004', '郴州', '3', '10001');
INSERT INTO `areainfo` VALUES ('10005', '衡阳', '3', '10001');
INSERT INTO `areainfo` VALUES ('10006', '邵阳', '3', '10001');
INSERT INTO `areainfo` VALUES ('10007', '永州', '3', '10001');
INSERT INTO `areainfo` VALUES ('10008', '湘西自治州', '3', '10001');
INSERT INTO `areainfo` VALUES ('10009', '张家界', '3', '10001');
INSERT INTO `areainfo` VALUES ('10010', '常德', '3', '10001');
INSERT INTO `areainfo` VALUES ('10011', '娄底', '3', '10001');
INSERT INTO `areainfo` VALUES ('10012', '益阳', '3', '10001');
INSERT INTO `areainfo` VALUES ('10013', '怀化', '3', '10001');
INSERT INTO `areainfo` VALUES ('10014', '岳阳', '3', '10001');
INSERT INTO `areainfo` VALUES ('10015', '江西省', '2', '10000');
INSERT INTO `areainfo` VALUES ('10016', '南昌市', '3', '10015');
INSERT INTO `areainfo` VALUES ('10017', '景德镇市', '3', '10015');

-- ----------------------------
-- Table structure for `caseattach`
-- ----------------------------
DROP TABLE IF EXISTS `caseattach`;
CREATE TABLE `caseattach` (
  `ca_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `tracking_no` varchar(20) DEFAULT NULL COMMENT '案件追踪号',
  `attach_name` varchar(20) DEFAULT NULL COMMENT '附件名',
  `attach_url` varchar(50) DEFAULT NULL COMMENT '访问路径',
  `attach_path` varchar(50) DEFAULT NULL COMMENT '保存路径',
  `attach_ext` varchar(20) DEFAULT NULL COMMENT 'attach_ext',
  `attach_file_name` varchar(50) DEFAULT NULL COMMENT '附件全名',
  `thumb` binary(255) DEFAULT NULL COMMENT '缩略图',
  `attach_size` bigint(20) DEFAULT NULL COMMENT '附件大小',
  PRIMARY KEY (`ca_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caseattach
-- ----------------------------

-- ----------------------------
-- Table structure for `casechangelog`
-- ----------------------------
DROP TABLE IF EXISTS `casechangelog`;
CREATE TABLE `casechangelog` (
  `cc_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录编号',
  `rc_id` bigint(20) DEFAULT NULL COMMENT '案件编号',
  `change_time` datetime DEFAULT NULL COMMENT '变更时间',
  `state_before` int(11) DEFAULT NULL COMMENT '变更前状态',
  `state_after` int(11) DEFAULT NULL COMMENT '变更后状态',
  `user_id` bigint(20) DEFAULT NULL COMMENT '操作人',
  `handler_before` int(11) DEFAULT NULL COMMENT '变更前处理公司',
  `handler_after` int(11) DEFAULT NULL COMMENT '变更后处理公司',
  PRIMARY KEY (`cc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of casechangelog
-- ----------------------------

-- ----------------------------
-- Table structure for `casecomment`
-- ----------------------------
DROP TABLE IF EXISTS `casecomment`;
CREATE TABLE `casecomment` (
  `cc_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '追加编号',
  `rc_id` bigint(20) DEFAULT NULL COMMENT '案例编号',
  `is_reporter` int(11) DEFAULT NULL COMMENT '追加标志',
  `user_id` bigint(20) DEFAULT NULL COMMENT '追加用户',
  `post_time` datetime DEFAULT NULL COMMENT '追加时间',
  `companyId` bigint(20) DEFAULT NULL COMMENT '进行追加的公司',
  `content` varchar(255) DEFAULT NULL COMMENT '追加内容',
  PRIMARY KEY (`cc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of casecomment
-- ----------------------------

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `company_id` int(10) NOT NULL COMMENT '企业编号',
  `company_name` varchar(20) NOT NULL COMMENT '企业名称',
  `description` varchar(50) DEFAULT NULL COMMENT '企业描述',
  `company_code` varchar(30) DEFAULT NULL COMMENT '企业代码',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `company_type` varchar(30) DEFAULT NULL COMMENT '企业类型',
  `company_state` varchar(30) DEFAULT NULL COMMENT '企业状态',
  `state_changed` datetime DEFAULT NULL COMMENT '企业状态最后变更时间',
  PRIMARY KEY (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', 'ztesoft', '很大', 'ZTE', null, '1', '2', null);

-- ----------------------------
-- Table structure for `companybranch`
-- ----------------------------
DROP TABLE IF EXISTS `companybranch`;
CREATE TABLE `companybranch` (
  `branch_id` bigint(10) NOT NULL COMMENT '企业分支编号',
  `company_id` bigint(10) DEFAULT NULL COMMENT '所属企业编号',
  `province` bigint(10) DEFAULT NULL COMMENT '所在省份',
  `city` bigint(10) DEFAULT NULL COMMENT '所在地市',
  `branch_name` varchar(30) DEFAULT NULL COMMENT '分支名称',
  `address` varchar(50) DEFAULT NULL COMMENT '分支地址',
  `phone` varchar(30) DEFAULT NULL COMMENT '联系电话',
  `contactor` varchar(30) DEFAULT NULL COMMENT '联系人名称',
  `post_code` varchar(30) DEFAULT NULL COMMENT '邮编',
  PRIMARY KEY (`branch_id`),
  KEY `fk` (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of companybranch
-- ----------------------------
INSERT INTO `companybranch` VALUES ('1', '1', '10001', '10002', '长沙办事处', '五一路', '13000000', null, null);
INSERT INTO `companybranch` VALUES ('2', '1', '10015', '10016', '南昌办事处', '解放路', '13800000', null, null);

-- ----------------------------
-- Table structure for `companyother`
-- ----------------------------
DROP TABLE IF EXISTS `companyother`;
CREATE TABLE `companyother` (
  `company_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '公司编号',
  `service_protocol` text COMMENT '公司协议（文本）',
  `sp_html` text COMMENT '公司协议（html）',
  `logo_url` varchar(50) DEFAULT NULL COMMENT 'LOGO访问路径',
  `logo_path` varchar(50) DEFAULT NULL COMMENT 'LOGO文件存放路径',
  `logo_height` int(11) DEFAULT NULL COMMENT 'LOGO高度',
  `logo_width` int(11) DEFAULT NULL COMMENT 'LOGO宽度',
  PRIMARY KEY (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of companyother
-- ----------------------------

-- ----------------------------
-- Table structure for `company_question`
-- ----------------------------
DROP TABLE IF EXISTS `company_question`;
CREATE TABLE `company_question` (
  `company_id` bigint(20) DEFAULT NULL,
  `quest_id` bigint(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_question
-- ----------------------------

-- ----------------------------
-- Table structure for `dictionarybean`
-- ----------------------------
DROP TABLE IF EXISTS `dictionarybean`;
CREATE TABLE `dictionarybean` (
  `dict_type` varchar(20) DEFAULT NULL COMMENT '字典值类型',
  `dict_name` varchar(50) DEFAULT NULL COMMENT '字典值名称',
  `dict_value` varchar(50) DEFAULT NULL COMMENT '字典值',
  `display_order` int(11) DEFAULT NULL COMMENT '字典值显示顺序',
  `dict_desc` varchar(50) DEFAULT NULL COMMENT '字典值描述'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dictionarybean
-- ----------------------------
INSERT INTO `dictionarybean` VALUES ('company', 'state', '1', '1', '正常');
INSERT INTO `dictionarybean` VALUES ('company', 'state', '2', '2', '待审核');
INSERT INTO `dictionarybean` VALUES ('user', 'state', '1', null, '正常');
INSERT INTO `dictionarybean` VALUES ('user', 'state', '2', null, '注销');
INSERT INTO `dictionarybean` VALUES ('user', 'state', '3', null, null);
INSERT INTO `dictionarybean` VALUES ('company', 'type', '1', null, '国有');
INSERT INTO `dictionarybean` VALUES ('company', 'type', '2', null, '民营');
INSERT INTO `dictionarybean` VALUES ('company', 'type', '3', null, '股份');

-- ----------------------------
-- Table structure for `generate_key`
-- ----------------------------
DROP TABLE IF EXISTS `generate_key`;
CREATE TABLE `generate_key` (
  `current_key` int(11) DEFAULT NULL,
  `next_key` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of generate_key
-- ----------------------------
INSERT INTO `generate_key` VALUES ('1004', '1005');

-- ----------------------------
-- Table structure for `questioninfo`
-- ----------------------------
DROP TABLE IF EXISTS `questioninfo`;
CREATE TABLE `questioninfo` (
  `quest_id` bigint(20) NOT NULL,
  `quest_key` varchar(50) DEFAULT '' COMMENT '问题索引',
  `quest` varchar(50) DEFAULT NULL COMMENT '问题',
  `quest_desc` varchar(50) DEFAULT NULL COMMENT '问题描述',
  `is_needed` int(11) DEFAULT NULL COMMENT '是否必填1:必填，0:非必填',
  PRIMARY KEY (`quest_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questioninfo
-- ----------------------------

-- ----------------------------
-- Table structure for `reportanswer`
-- ----------------------------
DROP TABLE IF EXISTS `reportanswer`;
CREATE TABLE `reportanswer` (
  `rd_Id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '记录编号',
  `rc_id` bigint(11) DEFAULT NULL COMMENT '案件id',
  `quest_key` varchar(50) DEFAULT NULL COMMENT '问题索引',
  `quest_value` varchar(50) DEFAULT NULL COMMENT '问题答复',
  PRIMARY KEY (`rd_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reportanswer
-- ----------------------------

-- ----------------------------
-- Table structure for `reportcase`
-- ----------------------------
DROP TABLE IF EXISTS `reportcase`;
CREATE TABLE `reportcase` (
  `rc_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `company_id` bigint(20) DEFAULT NULL COMMENT '案件所属公司',
  `branch_id` bigint(20) DEFAULT NULL COMMENT '案件所属分支',
  `report_id` bigint(20) DEFAULT NULL COMMENT '案件举报人',
  `handler_company` bigint(20) DEFAULT NULL COMMENT '当前处理公司',
  `rt_list` varchar(200) DEFAULT NULL COMMENT '所选举报类型列表',
  `case_state` varchar(30) DEFAULT NULL COMMENT '案件状态',
  `state_changed` datetime DEFAULT NULL COMMENT '最后修改时间',
  `access_code` varchar(20) DEFAULT NULL COMMENT '访问密码',
  `tracking_no` varchar(20) DEFAULT NULL COMMENT '追踪号',
  PRIMARY KEY (`rc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reportcase
-- ----------------------------
INSERT INTO `reportcase` VALUES ('1', '2016-02-15 15:46:32', '1', '0', '0', null, null, '0', null, 'ZT', 'ZT2016021001');

-- ----------------------------
-- Table structure for `reporter`
-- ----------------------------
DROP TABLE IF EXISTS `reporter`;
CREATE TABLE `reporter` (
  `reporter_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `id_name` varchar(30) DEFAULT NULL COMMENT '证件名称',
  `id_no` varchar(20) DEFAULT NULL COMMENT '证件号',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `best_contact` varchar(50) DEFAULT NULL COMMENT '最佳联系方式以及时间',
  PRIMARY KEY (`reporter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reporter
-- ----------------------------

-- ----------------------------
-- Table structure for `reporttype`
-- ----------------------------
DROP TABLE IF EXISTS `reporttype`;
CREATE TABLE `reporttype` (
  `rt_id` bigint(10) NOT NULL COMMENT '编号',
  `is_standard` int(10) DEFAULT NULL COMMENT '是否为标准类型：0标准，1非标准',
  `company_id` bigint(10) DEFAULT NULL COMMENT '举报类型标题',
  `rt_title` varchar(20) DEFAULT NULL COMMENT '举报企业编号',
  `rt_desc` varchar(50) DEFAULT NULL COMMENT '举报类型描述',
  PRIMARY KEY (`rt_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reporttype
-- ----------------------------
INSERT INTO `reporttype` VALUES ('1', '0', '1', '标题1', '内容1');
INSERT INTO `reporttype` VALUES ('2', '0', '1', '标题2', '内容2');
INSERT INTO `reporttype` VALUES ('3', '0', '1', '标题3', '内容3');
INSERT INTO `reporttype` VALUES ('4', '0', '1', '标题4', '内容4');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(10) NOT NULL COMMENT '用户编号',
  `userType` int(11) DEFAULT NULL COMMENT '用户类型',
  `login_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户登录名',
  `user_pwd` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户登录密码',
  `user_name` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户姓名',
  `company_id` int(10) DEFAULT NULL COMMENT '用户所属企业',
  `mobile` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电话',
  `work_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '工作证号码',
  `remark` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `state_changed` datetime DEFAULT NULL COMMENT '最后改变时间',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for `user2`
-- ----------------------------
DROP TABLE IF EXISTS `user2`;
CREATE TABLE `user2` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user2
-- ----------------------------
INSERT INTO `user2` VALUES ('1', 'gcx', '123');
INSERT INTO `user2` VALUES ('2', '123', '123');
INSERT INTO `user2` VALUES ('3', 'test', 'test');
INSERT INTO `user2` VALUES ('6', 'test1', 'test1');
INSERT INTO `user2` VALUES ('8', 'teset', 'test');
INSERT INTO `user2` VALUES ('10', 'junit', 'junit');
