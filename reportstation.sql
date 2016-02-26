/*
Navicat MySQL Data Transfer

Source Server         : MyDB
Source Server Version : 50530
Source Host           : localhost:3306
Source Database       : reportstation

Target Server Type    : MYSQL
Target Server Version : 50530
File Encoding         : 65001

Date: 2016-02-26 15:57:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for areainfo
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
INSERT INTO `areainfo` VALUES ('10018', '未知（省）', '2', '10000');
INSERT INTO `areainfo` VALUES ('10019', '未知（市）', '2', '10018');

-- ----------------------------
-- Table structure for caseattach
-- ----------------------------
DROP TABLE IF EXISTS `caseattach`;
CREATE TABLE `caseattach` (
  `ca_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `tracking_no` varchar(20) DEFAULT NULL COMMENT '案件追踪号',
  `attach_name` varchar(20) DEFAULT NULL COMMENT '附件名',
  `attach_url` varchar(300) DEFAULT NULL COMMENT '访问路径',
  `attach_path` varchar(300) DEFAULT NULL COMMENT '保存路径',
  `attach_ext` varchar(20) DEFAULT NULL COMMENT 'attach_ext',
  `attach_file_name` varchar(50) DEFAULT NULL COMMENT '附件全名',
  `thumb` binary(255) DEFAULT NULL COMMENT '缩略图',
  `attach_size` bigint(20) DEFAULT NULL COMMENT '附件大小',
  `state` int(11) DEFAULT NULL COMMENT '附件状态，0：临时，1：正常',
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ca_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caseattach
-- ----------------------------
INSERT INTO `caseattach` VALUES ('36', 'ZTE2016021084', 'Hydrangeas', '/reportStation/fileupload/file/ZTE2016021084/Hydrangeas.jpg', '/reportStation/fileupload/file/ZTE2016021084/', 'jpg', 'Hydrangeas.jpg', null, '595284', '1', '');
INSERT INTO `caseattach` VALUES ('37', 'hw2016021085', 'Desert', '/reportStation/fileupload/temp/hw2016021085/Desert.jpg', '/reportStation/fileupload/temp/hw2016021085/', 'jpg', 'Desert.jpg', null, '845941', '0', '');
INSERT INTO `caseattach` VALUES ('38', 'ZTE2016021087', 'Jellyfish', '/reportStation/fileupload/file/ZTE2016021087/Jellyfish.jpg', '/reportStation/fileupload/file/ZTE2016021087/', 'jpg', 'Jellyfish.jpg', null, '775702', '1', '');
INSERT INTO `caseattach` VALUES ('39', 'ZTE2016021087', 'Lighthouse', '/reportStation/fileupload/file/ZTE2016021087/Lighthouse.jpg', '/reportStation/fileupload/file/ZTE2016021087/', 'jpg', 'Lighthouse.jpg', null, '561276', '1', '');
INSERT INTO `caseattach` VALUES ('40', 'ZTE2016021088', 'Hydrangeas', '/reportStation/fileupload/temp/ZTE2016021088/Hydrangeas.jpg', '/reportStation/fileupload/temp/ZTE2016021088/', 'jpg', 'Hydrangeas.jpg', null, '595284', '0', '');
INSERT INTO `caseattach` VALUES ('41', 'ZTE2016021088', 'Koala', '/reportStation/fileupload/temp/ZTE2016021088/Koala.jpg', '/reportStation/fileupload/temp/ZTE2016021088/', 'jpg', 'Koala.jpg', null, '780831', '0', '');
INSERT INTO `caseattach` VALUES ('42', 'ZTE2016021092', 'Hydrangeas', '/reportStation/fileupload/temp/ZTE2016021092/Hydrangeas.jpg', '/reportStation/fileupload/temp/ZTE2016021092/', 'jpg', 'Hydrangeas.jpg', null, '595284', '0', '');
INSERT INTO `caseattach` VALUES ('43', 'hw2016021094', 'Desert', '/reportStation/fileupload/temp/hw2016021094/Desert.jpg', '/reportStation/fileupload/temp/hw2016021094/', 'jpg', 'Desert.jpg', null, '845941', '0', '');
INSERT INTO `caseattach` VALUES ('44', 'ZTE2016021095', 'Penguins', '/reportStation/fileupload/file/ZTE2016021095/Penguins.jpg', '/reportStation/fileupload/file/ZTE2016021095/', 'jpg', 'Penguins.jpg', null, '777835', '1', '');
INSERT INTO `caseattach` VALUES ('32', 'ZTE2016021078', 'Hydrangeas', '/reportStation/fileupload/file/ZTE2016021078/Hydrangeas.jpg', '/reportStation/fileupload/file/ZTE2016021078/', 'jpg', 'Hydrangeas.jpg', null, '595284', '1', '');
INSERT INTO `caseattach` VALUES ('33', 'ZTE2016021081', 'Koala', '/reportStation/fileupload/temp/ZTE2016021081/Koala.jpg', '/reportStation/fileupload/temp/ZTE2016021081/', 'jpg', 'Koala.jpg', null, '780831', '0', '');
INSERT INTO `caseattach` VALUES ('34', 'ZTE2016021082', 'Chrysanthemum', '/reportStation/fileupload/file/ZTE2016021082/Chrysanthemum.jpg', '/reportStation/fileupload/file/ZTE2016021082/', 'jpg', 'Chrysanthemum.jpg', null, '879394', '1', '');
INSERT INTO `caseattach` VALUES ('35', 'ZTE2016021083', 'Jellyfish', '/reportStation/fileupload/temp/ZTE2016021083/Jellyfish.jpg', '/reportStation/fileupload/temp/ZTE2016021083/', 'jpg', 'Jellyfish.jpg', null, '775702', '0', '');

-- ----------------------------
-- Table structure for casechangelog
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
-- Table structure for casecomment
-- ----------------------------
DROP TABLE IF EXISTS `casecomment`;
CREATE TABLE `casecomment` (
  `cc_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '追加编号',
  `rc_id` bigint(20) DEFAULT NULL COMMENT '案例编号',
  `is_reporter` int(11) DEFAULT NULL COMMENT '追加标志，0非举报人，1是举报人',
  `user_id` bigint(20) DEFAULT NULL COMMENT '追加用户',
  `post_time` datetime DEFAULT NULL COMMENT '追加时间',
  `company_id` bigint(20) DEFAULT NULL COMMENT '进行追加的公司',
  `content` varchar(255) DEFAULT NULL COMMENT '追加内容',
  PRIMARY KEY (`cc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of casecomment
-- ----------------------------

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `company_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '企业编号',
  `company_name` varchar(20) NOT NULL COMMENT '企业名称',
  `description` varchar(50) DEFAULT NULL COMMENT '企业描述',
  `company_code` varchar(30) DEFAULT NULL COMMENT '企业代码',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `company_type` varchar(30) DEFAULT NULL COMMENT '企业类型',
  `company_state` varchar(30) DEFAULT NULL COMMENT '企业状态',
  `state_changed` datetime DEFAULT NULL COMMENT '企业状态最后变更时间',
  PRIMARY KEY (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', 'ztesoft', '很大', 'ZTE', null, '1', '1', null);
INSERT INTO `company` VALUES ('2', 'huawei', '很牛', 'hw', null, '2', '1', null);
INSERT INTO `company` VALUES ('3', '大唐电信', '电信行业领导者', 'DTT', null, '1', '1', null);
INSERT INTO `company` VALUES ('4', '阿里巴巴', '电子商务', 'Alibaba', null, '3', '1', null);
INSERT INTO `company` VALUES ('5', '腾讯', '综合网络公司', 'Tencent', null, '3', '1', null);

-- ----------------------------
-- Table structure for companybranch
-- ----------------------------
DROP TABLE IF EXISTS `companybranch`;
CREATE TABLE `companybranch` (
  `branch_id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '企业分支编号',
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of companybranch
-- ----------------------------
INSERT INTO `companybranch` VALUES ('1', '1', '10001', '10002', '长沙办事处', '五一路', '13000000', null, null);
INSERT INTO `companybranch` VALUES ('2', '1', '10015', '10016', '南昌办事处', '解放路', '13800000', null, null);
INSERT INTO `companybranch` VALUES ('3', '2', '10018', '10019', '总部', '未知', '未知', '', '');
INSERT INTO `companybranch` VALUES ('4', '3', '10018', '10019', '总部', '未知', '未知', '', '');
INSERT INTO `companybranch` VALUES ('5', '4', '10018', '10019', '总部', '未知', '未知', '', '');
INSERT INTO `companybranch` VALUES ('6', '5', '10018', '10019', '总部', '未知', '未知', '', '');

-- ----------------------------
-- Table structure for companyother
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
-- Table structure for company_question
-- ----------------------------
DROP TABLE IF EXISTS `company_question`;
CREATE TABLE `company_question` (
  `company_id` bigint(20) DEFAULT NULL,
  `quest_id` bigint(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_question
-- ----------------------------
INSERT INTO `company_question` VALUES ('1', '1');
INSERT INTO `company_question` VALUES ('1', '2');
INSERT INTO `company_question` VALUES ('2', '2');
INSERT INTO `company_question` VALUES ('2', '1');
INSERT INTO `company_question` VALUES ('2', '3');
INSERT INTO `company_question` VALUES ('3', '1');
INSERT INTO `company_question` VALUES ('3', '2');
INSERT INTO `company_question` VALUES ('3', '3');
INSERT INTO `company_question` VALUES ('3', '4');
INSERT INTO `company_question` VALUES ('4', '1');
INSERT INTO `company_question` VALUES ('4', '2');
INSERT INTO `company_question` VALUES ('4', '3');
INSERT INTO `company_question` VALUES ('4', '4');
INSERT INTO `company_question` VALUES ('4', '5');
INSERT INTO `company_question` VALUES ('5', '1');
INSERT INTO `company_question` VALUES ('5', '2');
INSERT INTO `company_question` VALUES ('5', '3');
INSERT INTO `company_question` VALUES ('5', '4');
INSERT INTO `company_question` VALUES ('5', '5');
INSERT INTO `company_question` VALUES ('5', '6');
INSERT INTO `company_question` VALUES ('5', '7');
INSERT INTO `company_question` VALUES ('5', '8');
INSERT INTO `company_question` VALUES ('5', '9');
INSERT INTO `company_question` VALUES ('5', '10');
INSERT INTO `company_question` VALUES ('5', '11');
INSERT INTO `company_question` VALUES ('5', '12');
INSERT INTO `company_question` VALUES ('5', '13');

-- ----------------------------
-- Table structure for dictionarybean
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
INSERT INTO `dictionarybean` VALUES ('company.state', '正常', '1', '1', '正常');
INSERT INTO `dictionarybean` VALUES ('company.state', '待审核', '2', '2', '待审核');
INSERT INTO `dictionarybean` VALUES ('user.state', '正常', '1', null, '正常');
INSERT INTO `dictionarybean` VALUES ('user.state', '注销', '2', null, '注销');
INSERT INTO `dictionarybean` VALUES ('user.state', '待审核', '3', null, '待审核');
INSERT INTO `dictionarybean` VALUES ('company.type', '国有', '1', null, '国有');
INSERT INTO `dictionarybean` VALUES ('company.type', '民营', '2', null, '民营');
INSERT INTO `dictionarybean` VALUES ('company.type', '股份', '3', null, '股份');
INSERT INTO `dictionarybean` VALUES ('case.state', '发起', '0', '1', '发起案例');
INSERT INTO `dictionarybean` VALUES ('case.state', '处理中', '1', '2', '处理案例');
INSERT INTO `dictionarybean` VALUES ('case.state', '注销', '2', '3', '注销案例');
INSERT INTO `dictionarybean` VALUES ('user.type', '普通用户', '1', null, '普通用户只能有部分权限');
INSERT INTO `dictionarybean` VALUES ('user.type', '管理员', '2', null, '公司管理员用户，能使用后台管理中的部分功能');
INSERT INTO `dictionarybean` VALUES ('user.type', '超级管理员', '3', null, '超级管理员，能使用所有功能');

-- ----------------------------
-- Table structure for generate_key
-- ----------------------------
DROP TABLE IF EXISTS `generate_key`;
CREATE TABLE `generate_key` (
  `current_key` int(11) DEFAULT NULL,
  `next_key` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of generate_key
-- ----------------------------
INSERT INTO `generate_key` VALUES ('1096', '1097');

-- ----------------------------
-- Table structure for questioninfo
-- ----------------------------
DROP TABLE IF EXISTS `questioninfo`;
CREATE TABLE `questioninfo` (
  `quest_id` bigint(20) NOT NULL,
  `quest_key` varchar(50) DEFAULT '' COMMENT '问题索引',
  `quest` varchar(100) DEFAULT NULL COMMENT '问题',
  `quest_desc` varchar(100) DEFAULT NULL COMMENT '问题描述',
  `is_needed` int(11) DEFAULT NULL COMMENT '是否必填1:必填，0:非必填',
  PRIMARY KEY (`quest_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questioninfo
-- ----------------------------
INSERT INTO `questioninfo` VALUES ('1', 'quest_1', '您是 ${companyBranch.owner.companyName } 的员工吗？', '问题描述', '0');
INSERT INTO `questioninfo` VALUES ('2', 'quest_2', '请说明与此行为相关的人的身份', '例如：无名氏，内部审计主管，未知，晚间监督员', null);
INSERT INTO `questioninfo` VALUES ('3', 'quest_3', '您是否怀疑或知道监督或管理人员与此有关？', '不知道 / 不愿意透露,如果选择是，请指出是谁？', null);
INSERT INTO `questioninfo` VALUES ('4', 'quest_4', '管理人员注意到此问题了吗？', '是,否,不知道', null);
INSERT INTO `questioninfo` VALUES ('5', 'quest_5', '此事件的总体特征是什么？', '这仅为一般说明，稍后我们将询问详细情况。', null);
INSERT INTO `questioninfo` VALUES ('6', 'quest_6', '您估计这一行为的货币价值是多少？', null, null);
INSERT INTO `questioninfo` VALUES ('7', 'quest_7', '该事件或违规行为在哪里发生的？', '我们了解到该事件可能没有确切的发生地点，但如果事件有某些文档或业务交易的记录，请相应指明。', null);
INSERT INTO `questioninfo` VALUES ('8', 'quest_8', '请指出该事件发生的确切或大致时间：', '例如：2002 年 5 月 3 日，星期二；两周前；大约一个月以前', null);
INSERT INTO `questioninfo` VALUES ('9', 'quest_9', '您认为此问题持续了多少时间？', null, null);
INSERT INTO `questioninfo` VALUES ('10', 'quest_10', '您是如何发现此违规行为的？', null, null);
INSERT INTO `questioninfo` VALUES ('11', 'quest_11', '您先前是否报告过这一问题？', '如果答案为“是”，您是何时以何种方式向谁报告的？', null);
INSERT INTO `questioninfo` VALUES ('12', 'quest_12', '请指出试图隐藏此问题的人以及他们隐藏采取的步骤：', '请指出其姓名和职位。', null);
INSERT INTO `questioninfo` VALUES ('13', 'quest_13', '请提供关于所谓违规行为的所有细节，包括目击者的位置以及任何对于此情形的评估和最终解决有价值的其它信息。', '请花一些时间尽可能提供细节，但请小心不要提供泄漏您身份的细节，除非您自己愿意。如果您是唯一的知情人，了解这一点非常重要。', null);

-- ----------------------------
-- Table structure for reportanswer
-- ----------------------------
DROP TABLE IF EXISTS `reportanswer`;
CREATE TABLE `reportanswer` (
  `rd_Id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '记录编号',
  `rc_id` bigint(11) DEFAULT NULL COMMENT '案件id',
  `quest_key` varchar(50) DEFAULT NULL COMMENT '问题索引',
  `quest_value` varchar(50) DEFAULT NULL COMMENT '问题答复',
  PRIMARY KEY (`rd_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reportanswer
-- ----------------------------
INSERT INTO `reportanswer` VALUES ('17', '30', 'quest_1', 'true');
INSERT INTO `reportanswer` VALUES ('18', '30', 'quest_2', '张三,undefined,经理');
INSERT INTO `reportanswer` VALUES ('19', '31', 'quest_1', 'true');
INSERT INTO `reportanswer` VALUES ('20', '31', 'quest_2', '张三,undefined,经理');
INSERT INTO `reportanswer` VALUES ('21', '32', 'quest_1', 'true');
INSERT INTO `reportanswer` VALUES ('22', '32', 'quest_2', '张三,经理');
INSERT INTO `reportanswer` VALUES ('23', '33', 'quest_1', 'true');
INSERT INTO `reportanswer` VALUES ('24', '33', 'quest_2', '李四,经理');
INSERT INTO `reportanswer` VALUES ('25', '34', 'quest_1', 'true');
INSERT INTO `reportanswer` VALUES ('26', '34', 'quest_2', '张三,经理');

-- ----------------------------
-- Table structure for reportcase
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
  `case_state` int(30) DEFAULT NULL COMMENT '案件状态',
  `state_changed` datetime DEFAULT NULL COMMENT '最后修改时间',
  `access_code` varchar(50) DEFAULT NULL COMMENT '访问密码',
  `tracking_no` varchar(20) NOT NULL DEFAULT '' COMMENT '追踪号',
  PRIMARY KEY (`rc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reportcase
-- ----------------------------
INSERT INTO `reportcase` VALUES ('30', '2016-02-22 17:25:29', '1', '2', '8', null, '审计与账户管理', '0', null, '202cb962ac59075b964b07152d234b70', 'ZTE2016021078');
INSERT INTO `reportcase` VALUES ('31', '2016-02-22 17:38:46', '1', '1', '9', null, '审计与账户管理', '0', null, '202cb962ac59075b964b07152d234b70', 'ZTE2016021082');
INSERT INTO `reportcase` VALUES ('32', '2016-02-23 10:33:31', '1', '2', null, null, '审计与账户管理', '0', null, '123', 'ZTE2016021084');
INSERT INTO `reportcase` VALUES ('33', '2016-02-23 10:36:55', '1', '1', '10', null, '审计与账户管理', '0', null, '123', 'ZTE2016021087');
INSERT INTO `reportcase` VALUES ('34', '2016-02-23 12:03:43', '1', '2', null, null, '审计与账户管理', '0', null, '123', 'ZTE2016021095');

-- ----------------------------
-- Table structure for reporter
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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reporter
-- ----------------------------
INSERT INTO `reporter` VALUES ('8', '', 'undefined', '-请选择证件类型-', '', '', '');
INSERT INTO `reporter` VALUES ('9', '', 'undefined', '-请选择证件类型-', '', '', '');
INSERT INTO `reporter` VALUES ('10', '15364060309', '崔剑', '身份证', '43574983789543534', '43287943292@DSF.COM', '测试');

-- ----------------------------
-- Table structure for reporttype
-- ----------------------------
DROP TABLE IF EXISTS `reporttype`;
CREATE TABLE `reporttype` (
  `rt_id` bigint(10) NOT NULL COMMENT '编号',
  `is_standard` int(10) DEFAULT NULL COMMENT '是否为标准类型：0标准，1非标准',
  `company_id` bigint(10) DEFAULT NULL COMMENT '举报类型标题',
  `rt_title` varchar(20) DEFAULT NULL COMMENT '举报企业编号',
  `rt_desc` varchar(500) DEFAULT NULL COMMENT '举报类型描述',
  PRIMARY KEY (`rt_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reporttype
-- ----------------------------
INSERT INTO `reporttype` VALUES ('1', '0', '1', '审计与账户管理', '任何故意做出的与事实不符的信息报告，与内部或外部的审计人员互动过程中进行不正当的影响或表示独有的关心，或监视审计人员从事职权范围的活动。包括管理、审计或内部财务控制相关的值得质疑的运作（例如包括：逃税、谎报收入、谎报费用、谎报资产、滥用会计准则、不正当交易）。');
INSERT INTO `reporttype` VALUES ('2', '0', '1', '财务问题', '对财务文件、合同或报告的全部或任何部分进行篡改、编造、伪造或造假；制造虚假印象、省略重要事实或进行谎报；提供不准确的财务状况说明、内线交易或与内部财务管控相关的值得质疑的运作。\r\n对财务文件、合同或报告的全部或任何部分进行篡改、编造、伪造或造假；制造虚假印象、省略重要事实或进行谎报；提供不准确的财务状况说明、内线交易或与内部财务管控相关的值得质疑的运作。\r\n对财务文件、合同或报告的全部或任何部分进行篡改、编造、伪造或造假；制造虚假印象、省略重要事实或进行谎报；提供不准确的财务状况说明、内线交易或与内部财务管控相关的值得质疑的运作。');
INSERT INTO `reporttype` VALUES ('3', '0', '1', '银行业', '涉及有关可疑或不道德的银行业务。（例如： 洗钱、银行欺诈、挪用、修改、作假、篡改或伪造任何银行凭证、报表或记录；或与内部银行控制规章有关的可疑行为）');
INSERT INTO `reporttype` VALUES ('4', '0', '1', '反行賄', '涉及有关可疑或不道德的银行业务。（例如： 洗钱、银行欺诈、挪用、修改、作假、篡改或伪造任何银行凭证、报表或记录；或与内部银行控制规章有关的可疑行为）？');
INSERT INTO `reporttype` VALUES ('5', '0', '2', '审计与账户管理', '任何故意做出的与事实不符的信息报告，与内部或外部的审计人员互动过程中进行不正当的影响或表示独有的关心，或监视审计人员从事职权范围的活动。包括管理、审计或内部财务控制相关的值得质疑的运作（例如包括：逃税、谎报收入、谎报费用、谎报资产、滥用会计准则、不正当交易）。');
INSERT INTO `reporttype` VALUES ('6', '0', '2', '财务问题', '对财务文件、合同或报告的全部或任何部分进行篡改、编造、伪造或造假；制造虚假印象、省略重要事实或进行谎报；提供不准确的财务状况说明、内线交易或与内部财务管控相关的值得质疑的运作。\r\n对财务文件、合同或报告的全部或任何部分进行篡改、编造、伪造或造假；制造虚假印象、省略重要事实或进行谎报；提供不准确的财务状况说明、内线交易或与内部财务管控相关的值得质疑的运作。\r\n对财务文件、合同或报告的全部或任何部分进行篡改、编造、伪造或造假；制造虚假印象、省略重要事实或进行谎报；提供不准确的财务状况说明、内线交易或与内部财务管控相关的值得质疑的运作。');
INSERT INTO `reporttype` VALUES ('7', '0', '2', '银行业', '涉及有关可疑或不道德的银行业务。（例如： 洗钱、银行欺诈、挪用、修改、作假、篡改或伪造任何银行凭证、报表或记录；或与内部银行控制规章有关的可疑行为）');
INSERT INTO `reporttype` VALUES ('8', '0', '2', '反行賄', '涉及有关可疑或不道德的银行业务。（例如： 洗钱、银行欺诈、挪用、修改、作假、篡改或伪造任何银行凭证、报表或记录；或与内部银行控制规章有关的可疑行为）？');
INSERT INTO `reporttype` VALUES ('9', '0', '3', '审计与账户管理', '任何故意做出的与事实不符的信息报告，与内部或外部的审计人员互动过程中进行不正当的影响或表示独有的关心，或监视审计人员从事职权范围的活动。包括管理、审计或内部财务控制相关的值得质疑的运作（例如包括：逃税、谎报收入、谎报费用、谎报资产、滥用会计准则、不正当交易）。');
INSERT INTO `reporttype` VALUES ('10', '0', '3', '财务问题', '对财务文件、合同或报告的全部或任何部分进行篡改、编造、伪造或造假；制造虚假印象、省略重要事实或进行谎报；提供不准确的财务状况说明、内线交易或与内部财务管控相关的值得质疑的运作。\r\n对财务文件、合同或报告的全部或任何部分进行篡改、编造、伪造或造假；制造虚假印象、省略重要事实或进行谎报；提供不准确的财务状况说明、内线交易或与内部财务管控相关的值得质疑的运作。\r\n对财务文件、合同或报告的全部或任何部分进行篡改、编造、伪造或造假；制造虚假印象、省略重要事实或进行谎报；提供不准确的财务状况说明、内线交易或与');
INSERT INTO `reporttype` VALUES ('11', '0', '3', '银行业', '涉及有关可疑或不道德的银行业务。（例如： 洗钱、银行欺诈、挪用、修改、作假、篡改或伪造任何银行凭证、报表或记录；或与内部银行控制规章有关的可疑行为）');
INSERT INTO `reporttype` VALUES ('12', '0', '3', '反行賄', '涉及有关可疑或不道德的银行业务。（例如： 洗钱、银行欺诈、挪用、修改、作假、篡改或伪造任何银行凭证、报表或记录；或与内部银行控制规章有关的可疑行为）？');
INSERT INTO `reporttype` VALUES ('13', '0', '4', '不安全的工作条件', '未能满足在安全环境下执行全部职责的需要。有潜在伤害的区域。（范例包括：环境伤害、OSHA、EPA、主管指示、不负责的家务管理）');
INSERT INTO `reporttype` VALUES ('14', '0', '4', '会计或审计事务', '在认可会计常规监管下的业务及财政交易作不道德之系统记录和分析。（例如：收入、支出和资产的谎报、GAAP原则的滥用、虚假之交易项目。）');
INSERT INTO `reporttype` VALUES ('15', '0', '4', '伪造合同、报告或记录', '伪造记录包括为获取利益而修改、捏造、伪造或凭空制造全部或部分文档、合同或记录，或者不如实转达文档、合同或记录的内容。');
INSERT INTO `reporttype` VALUES ('16', '0', '4', '偷窃', '偷盗行为；特别是故意剥夺合法拥有人的个人财产而强制侵占和夺取');
INSERT INTO `reporttype` VALUES ('17', '0', '4', '利益冲突', '利益冲突定义为在公务员、雇员或专业人员等在私人或个人利益下足以对他或她的公务产生客观影响的情况。（范例包括：不正当的供应商关系、贿赂、滥用机密资料、不正当的客户关系）');
INSERT INTO `reporttype` VALUES ('18', '0', '4', '挪用', '以欺骗性的手段挪用（作为某人看管委托的财产）为某人自己使用（范例包括：登记错误、滥用资金和不正确运转现金）');
INSERT INTO `reporttype` VALUES ('19', '0', '4', '暴力或恐吓', '暴力是故意对人身或其财产造成不幸、伤害或损毁的表述。（范例包括：直接、隐藏、有条件、猛烈的行为）');
INSERT INTO `reporttype` VALUES ('20', '0', '4', '歧视或骚扰', '由于雇员的性别、宗教、种族或信仰而对他或她所作的未经允许和不受欢迎的言辞或身体行为。（范例包括：雇用偏见、分配偏见、不正当解聘、晋升偏见、教育决策偏见、不公正的赔偿、不正当的语言）');
INSERT INTO `reporttype` VALUES ('21', '0', '4', '滥用物质', '滥用物质定义为滥用包括酒精在内的合法和违法药品。（范例包括：可卡因、镇静剂、兴奋剂）');
INSERT INTO `reporttype` VALUES ('22', '0', '5', '蓄意破坏或损毁公共财务', '毁坏雇主（作为工具或材料的）财产或通过使工人不满意来阻碍生产（范例包括：设备毁坏、偷窃、降低工作速度、散播计算机病毒）');
INSERT INTO `reporttype` VALUES ('23', '0', '5', '证券违反', '触犯、违反条例；特别是违反证券行为定义的规则。（范例包括：知情人士交易）');
INSERT INTO `reporttype` VALUES ('24', '0', '5', '违反政策', '直接违反公司政策、程序、行为准则，和/或暗含的合同职责的主观或无意行为（范例包括：不泄露协议、雇用标准、安全、互联网使用、公司准则）。');
INSERT INTO `reporttype` VALUES ('25', '0', '5', '错误或不正当的行为', '故意做坏事；特别是故障违反法律或标准。');
INSERT INTO `reporttype` VALUES ('26', '0', '0', '审计与账户管理', '任何故意做出的与事实不符的信息报告，与内部或外部的审计人员互动过程中进行不正当的影响或表示独有的关心，或监视审计人员从事职权范围的活动。包括管理、审计或内部财务控制相关的值得质疑的运作（例如包括：逃税、谎报收入、谎报费用、谎报资产、滥用会计准则、不正当交易）。');
INSERT INTO `reporttype` VALUES ('27', '0', '0', '财务问题', '对财务文件、合同或报告的全部或任何部分进行篡改、编造、伪造或造假；制造虚假印象、省略重要事实或进行谎报；提供不准确的财务状况说明、内线交易或与内部财务管控相关的值得质疑的运作。\r\n对财务文件、合同或报告的全部或任何部分进行篡改、编造、伪造或造假；制造虚假印象、省略重要事实或进行谎报；提供不准确的财务状况说明、内线交易或与内部财务管控相关的值得质疑的运作。\r\n对财务文件、合同或报告的全部或任何部分进行篡改、编造、伪造或造假；制造虚假印象、省略重要事实或进行谎报；提供不准确的财务状况说明、内线交易或与');
INSERT INTO `reporttype` VALUES ('28', '0', '0', '银行业', '涉及有关可疑或不道德的银行业务。（例如： 洗钱、银行欺诈、挪用、修改、作假、篡改或伪造任何银行凭证、报表或记录；或与内部银行控制规章有关的可疑行为）');
INSERT INTO `reporttype` VALUES ('29', '0', '0', '反行賄', '涉及有关可疑或不道德的银行业务。（例如： 洗钱、银行欺诈、挪用、修改、作假、篡改或伪造任何银行凭证、报表或记录；或与内部银行控制规章有关的可疑行为）？');
INSERT INTO `reporttype` VALUES ('30', '0', '0', '不安全的工作条件', '未能满足在安全环境下执行全部职责的需要。有潜在伤害的区域。（范例包括：环境伤害、OSHA、EPA、主管指示、不负责的家务管理）');
INSERT INTO `reporttype` VALUES ('31', '0', '0', '会计或审计事务', '在认可会计常规监管下的业务及财政交易作不道德之系统记录和分析。（例如：收入、支出和资产的谎报、GAAP原则的滥用、虚假之交易项目。）');
INSERT INTO `reporttype` VALUES ('32', '0', '0', '伪造合同、报告或记录', '伪造记录包括为获取利益而修改、捏造、伪造或凭空制造全部或部分文档、合同或记录，或者不如实转达文档、合同或记录的内容。');
INSERT INTO `reporttype` VALUES ('33', '0', '0', '偷窃', '偷盗行为；特别是故意剥夺合法拥有人的个人财产而强制侵占和夺取');
INSERT INTO `reporttype` VALUES ('34', '0', '0', '利益冲突', '利益冲突定义为在公务员、雇员或专业人员等在私人或个人利益下足以对他或她的公务产生客观影响的情况。（范例包括：不正当的供应商关系、贿赂、滥用机密资料、不正当的客户关系）');
INSERT INTO `reporttype` VALUES ('35', '0', '0', '挪用', '以欺骗性的手段挪用（作为某人看管委托的财产）为某人自己使用（范例包括：登记错误、滥用资金和不正确运转现金）');
INSERT INTO `reporttype` VALUES ('36', '0', '0', '暴力或恐吓', '暴力是故意对人身或其财产造成不幸、伤害或损毁的表述。（范例包括：直接、隐藏、有条件、猛烈的行为）');
INSERT INTO `reporttype` VALUES ('37', '0', '0', '歧视或骚扰', '由于雇员的性别、宗教、种族或信仰而对他或她所作的未经允许和不受欢迎的言辞或身体行为。（范例包括：雇用偏见、分配偏见、不正当解聘、晋升偏见、教育决策偏见、不公正的赔偿、不正当的语言）');
INSERT INTO `reporttype` VALUES ('38', '0', '0', '滥用物质', '滥用物质定义为滥用包括酒精在内的合法和违法药品。（范例包括：可卡因、镇静剂、兴奋剂）');
INSERT INTO `reporttype` VALUES ('39', '0', '0', '蓄意破坏或损毁公共财务', '毁坏雇主（作为工具或材料的）财产或通过使工人不满意来阻碍生产（范例包括：设备毁坏、偷窃、降低工作速度、散播计算机病毒）');
INSERT INTO `reporttype` VALUES ('40', '0', '0', '证券违反', '触犯、违反条例；特别是违反证券行为定义的规则。（范例包括：知情人士交易）');
INSERT INTO `reporttype` VALUES ('41', '0', '0', '违反政策', '直接违反公司政策、程序、行为准则，和/或暗含的合同职责的主观或无意行为（范例包括：不泄露协议、雇用标准、安全、互联网使用、公司准则）。');
INSERT INTO `reporttype` VALUES ('42', '0', '0', '错误或不正当的行为', '故意做坏事；特别是故障违反法律或标准。');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `user_type` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户类型',
  `login_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户登录名',
  `user_pwd` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户登录密码',
  `user_name` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户姓名',
  `company_id` int(10) DEFAULT NULL COMMENT '用户所属企业',
  `mobile` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电话',
  `work_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '工作证号码',
  `remark` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `state_changed` datetime DEFAULT NULL COMMENT '最后改变时间',
  `user_state` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', 'gcx', '123', '春春', '1', '13142056476', 'NO123', null, null, '1');
INSERT INTO `user` VALUES ('2', '1', 'cuijian', '123', '剑哥', '0', '15364060309', '00001', null, null, '1');
INSERT INTO `user` VALUES ('3', '1', 'xiaoqiu', '123', '秋秋', '0', '53432432', '00002', null, null, '1');
INSERT INTO `user` VALUES ('4', '1', 'pan', '123', '潘老大', '0', '3413213213', '00003', 'BOSS', null, '1');
