/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : pharmacy_online_public_cos

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 13/01/2025 08:22:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bulletin_info
-- ----------------------------
DROP TABLE IF EXISTS `bulletin_info`;
CREATE TABLE `bulletin_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容',
  `date` datetime(0) NULL DEFAULT NULL COMMENT '公告时间',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '图册',
  `rack_up` tinyint(0) NULL DEFAULT NULL COMMENT '上下架（0.下架 1.发布）',
  `type` tinyint(0) NULL DEFAULT NULL COMMENT '消息类型（1.画报 2.导购 3.新盘发布）',
  `publisher` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发布人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '公告信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bulletin_info
-- ----------------------------
INSERT INTO `bulletin_info` VALUES (1, '小日本计划用核污染土铺路种菜', '福岛第一核电站的地势西高东低，东部朝向太平洋，为防止地下水继续流入核电站所在建筑物的地下而导致核污水增加，东电公司将1568根冻结管以1米的间距插入地下30米深处，注入冷冻材料，并利用冷冻机使其冷却到零下30摄氏度，从而将周围地基冻住，形成一道冻土屏障', '2022-03-05 10:45:41', NULL, 1, 1, '管理员');
INSERT INTO `bulletin_info` VALUES (2, '小米高层再变动 卢伟冰卸任小米之家关联公司法人', '值得一提的是，这并不是小米集团近期首次发生高层人事变动。今年1月底，小米内部宣布集团副总裁常程因个人原因离职，小米手机产品部总经理将由手机部总裁曾学忠兼任。值得一提的是，这并不是小米集团近期首次发生高层人事变动。今年1月底，小米内部宣布集团副总裁常程因个人原因离职，小米手机产品部总经理将由手机部总裁曾学忠兼任。', '2022-03-05 10:55:19', NULL, 1, 1, '管理员');
INSERT INTO `bulletin_info` VALUES (4, '🐏Epic🐏', ' 本周 Epic 商店《大蜈蚣：充能版》《黑寡妇：充能版》《Epic Slayer Kit》迎来限免。', '2022-03-06 10:53:09', NULL, 1, 1, '管理员');
INSERT INTO `bulletin_info` VALUES (5, '苹果正式官宣 2022 春季发布会时间', '时间：3/8 10:00 a.m. PDT（北京时间 3/9 2:00 a.m.）首先依然逃不开 Mark Gurman 的爆料和预测，他表示本次发布会有望带来 iPhone SE 3 5G、iPad Air 5 以及 M2 Mac。我认为比较大的两个悬念就是，iPhone SE 3 是否继续采用老模具，以及 M2 Mac mini 是否会发布', '2022-03-06 10:54:07', NULL, 0, 1, '管理员');
INSERT INTO `bulletin_info` VALUES (6, '冬虫夏草', '我最近看到一句话，是俞敏洪老师说的，说如果没有女性和家庭，男人可能不在乎自己有没有钱，我觉得这句话说的真的太准确。看到这句话，我最先想到了父辈这一代人，就拿我父亲来说，其实这么多年回过头去看，我觉得他存在的价值就是一个家庭的供养机器，机器喜欢什么没有人知道，反正做好饭，桌子上摆啥，他吃啥，我们爱给他买什么，他穿什么，就算去外边玩，也很少有人征求他的意见，我们自己商量好就行了。这样的家庭定位和家庭地位适用于大部分男性，这也正是主流文明成功的秘诀，就是通过婚姻、家庭、后代捆绑男性，使男性从自由自在的不安稳因素变成可预测可掌握的社会劳动力。很多人觉得男人过了 35 岁或者 40 岁就开始认命了，不怎么折腾了，开始变得沉默，变得冷漠，开始循规蹈矩的工作生活了。但是其实这不叫认命，这叫黑化，就过了 35 岁以后，越来越多的男人开始不抽烟、不喝酒，不玩游戏，甚至连饭都会在公司吃，没有穿着要求，也没有特别的爱好。', '2022-10-19 21:41:33', 'SA1673779317143.jpg', 1, 1, '管理员');

-- ----------------------------
-- Table structure for drug_info
-- ----------------------------
DROP TABLE IF EXISTS `drug_info`;
CREATE TABLE `drug_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药品编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药品名称',
  `brand` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属品牌',
  `category` int(0) NULL DEFAULT NULL COMMENT '所属分类',
  `classification` int(0) NULL DEFAULT NULL COMMENT '药品类别',
  `common_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '通用名',
  `dosage_form` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '剂型',
  `usages` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用法',
  `applicable_symptoms` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '适用症状',
  `applicable_disease` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '适用疾病',
  `packing_list` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '包装清单',
  `dosage_use` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '使用剂量',
  `validity_period` int(0) NULL DEFAULT NULL COMMENT '有效期',
  `approval_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '批准文号',
  `manufacturer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生产企业',
  `unit_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `images` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药品图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '药品管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drug_info
-- ----------------------------
INSERT INTO `drug_info` VALUES (1, 'DG-1647250262672', '999感冒灵颗粒', '999', 2, 9, '感冒灵颗粒', '颗粒剂', '开水冲服。一次10g（1袋），一日3次。', '本品用于感冒引起的头痛，发热，鼻塞，流涕，咽痛', '感冒，发烧', '0.3g*12粒*2板', '开水冲服。一次10g（1袋），一日3次。', 24, '国药准字H10900089', '999', 14.90, '2023-01-29 23:08:25', 'SA1675004762794.jpg,SA1675004770567.jpg');
INSERT INTO `drug_info` VALUES (2, 'DG-1675692639465', '京都念慈菴蜜炼川贝枇杷膏', '京都念慈菴', 2, 1, '川贝枇杷膏', '煎膏剂', '口服', '本品用于伤风咳嗽、痰稠、痰多气喘、咽喉干痒及声音嘶哑。', '伤风咳嗽', '150ml', '口服，成人每日三次，每次一汤匙，小儿减半。', 36, 'ZC20160005', '京都念慈菴总厂有限公司', 38.90, '2023-02-06 22:10:39', 'SA1675692636505.jpg,SA1675692638311.jpg');
INSERT INTO `drug_info` VALUES (3, 'DG-1675771788785', '他达拉非进口双效片', '伟哥', 4, 9, '伟哥', '见包装', '口服', '遗精早泄', '见包装', '10粒/盒', '一次一粒', 36, NULL, '印度', 169.00, '2023-02-07 20:09:48', 'SA1675771784132.jpg,SA1675771787382.png');

-- ----------------------------
-- Table structure for enterprise_info
-- ----------------------------
DROP TABLE IF EXISTS `enterprise_info`;
CREATE TABLE `enterprise_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '功能供应商名称',
  `abbreviation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单位简称或代号',
  `credit_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '统一社会信用代码',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编码',
  `nature` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单位性质(1:企业单位;2:事业单位;3:社会团体;4:军队单位;5:机关单位;6:其它单位;7:个体经营)',
  `nature_two` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '二级企业单位性质',
  `status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经营状态(1:存续2:在业3:吊销4:注销5:迁入6:迁出7:停业8:清算)',
  `corporate_representative` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '法定代表人',
  `corporate_representative_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '法定代表人身份证号',
  `corporate_representative_phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '法定代表人电话',
  `registered_capital` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '注册资本（万元）',
  `registered_capital_currency` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '注册资金币种',
  `establishment_date` datetime(0) NULL DEFAULT NULL COMMENT '成立日期',
  `business_begin_date` datetime(0) NULL DEFAULT NULL COMMENT '营业期限始期',
  `business_end_date` datetime(0) NULL DEFAULT NULL COMMENT '营业期限止期',
  `registered_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '注册地址',
  `business_scope` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '经营范围',
  `source` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源(1:自主注册、2:邀请注册、3:企业维护)',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市',
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区',
  `en_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '英文企业名称',
  `industry` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属行业',
  `unit_description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单位简介',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `images` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '企业信息管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enterprise_info
-- ----------------------------
INSERT INTO `enterprise_info` VALUES (1, '西安航空发动机公司', 'XAHH', 'G000000001', 'EP-1676641948470', '企业单位', '企业单位', '在业', '王三', '142702200008274000', '15010339541', '500', '人民币', '2020-02-14 00:00:00', '2020-02-14 00:00:00', '2020-02-14 00:00:00', '北京市朝阳区小红门', '发动机', NULL, '陕西', NULL, NULL, NULL, NULL, '西安航空发动机有限公司（英语：Xi\'an Aero-Engine Corporation，(XAEC)）。简称西航公司或西航，创建于1958年，位于西安市未央区，是中国航空发动机集团所属大型航空发动机制造企业。', NULL, 'SA1676716056669.jpg');
INSERT INTO `enterprise_info` VALUES (11, '兰州航空发动机公司', 'LZHH', 'G000000002', 'EP-1676644303838', '企业单位', '企业单位', '在业', '王三', '142702200008274000', '15010339541', '50', '人民币', '2020-02-14 00:00:00', '2020-02-14 00:00:00', '2020-02-14 00:00:00', '北京市朝阳区小红门', NULL, NULL, '甘肃', '兰州', NULL, 'LZHH', '计算机', '拥有自主知识产权、专业从事无人机和通用航空轻型飞行器研发、生产及飞行培训为一体的高科技型企业，注册资本11500万元。经过多年的发展', NULL, NULL);

-- ----------------------------
-- Table structure for inventory_statistics
-- ----------------------------
DROP TABLE IF EXISTS `inventory_statistics`;
CREATE TABLE `inventory_statistics`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pharmacy_id` int(0) NULL DEFAULT NULL COMMENT '药房ID',
  `drug_id` int(0) NULL DEFAULT NULL COMMENT '药品ID',
  `quantity` int(0) NULL DEFAULT NULL COMMENT '数量',
  `storage_type` int(0) NULL DEFAULT NULL COMMENT '出入库（1.出库 2.入库）',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `custodian` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '保管人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '库存统计' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventory_statistics
-- ----------------------------
INSERT INTO `inventory_statistics` VALUES (1, 2, 1, 65, 2, '2023-02-10 17:27:09', NULL);
INSERT INTO `inventory_statistics` VALUES (2, 1, 1, 26, 2, '2023-02-11 12:02:15', 'STF-1675604254076');
INSERT INTO `inventory_statistics` VALUES (3, 1, 2, 13, 2, '2023-02-11 12:40:15', 'STF-1675604991544');
INSERT INTO `inventory_statistics` VALUES (4, 1, 3, 49, 2, '2023-02-11 12:40:15', 'STF-1675604991544');
INSERT INTO `inventory_statistics` VALUES (5, 2, 1, 63, 1, '2023-02-11 15:07:52', 'STF-1675604254076');
INSERT INTO `inventory_statistics` VALUES (6, 2, 1, 63, 1, '2023-02-11 15:14:28', 'STF-1675604991544');
INSERT INTO `inventory_statistics` VALUES (7, 1, 1, 5, 1, '2023-02-11 15:16:57', 'STF-1675604991544');
INSERT INTO `inventory_statistics` VALUES (8, 1, 1, 2, 1, '2023-03-19 12:37:55', 'STF-1675604991544');
INSERT INTO `inventory_statistics` VALUES (9, 1, 2, 1, 1, '2023-03-19 12:37:55', 'STF-1675604991544');
INSERT INTO `inventory_statistics` VALUES (10, 1, 3, 1, 1, '2023-03-19 12:37:55', 'STF-1675604991544');
INSERT INTO `inventory_statistics` VALUES (11, 1, 2, 1, 1, '2023-05-12 11:20:09', 'STF-1675604254076');
INSERT INTO `inventory_statistics` VALUES (12, 2, 1, 1, 2, '2023-10-18 22:19:57', NULL);
INSERT INTO `inventory_statistics` VALUES (13, 2, 1, 1, 2, '2023-10-18 22:56:52', NULL);
INSERT INTO `inventory_statistics` VALUES (14, 2, 2, 1, 2, '2023-10-18 22:56:52', NULL);
INSERT INTO `inventory_statistics` VALUES (15, 2, 1, 1, 1, '2025-01-12 10:09:33', 'STF-1675604991544');
INSERT INTO `inventory_statistics` VALUES (16, 2, 1, 1, 1, '2025-01-13 08:21:26', 'STF-1675604991544');

-- ----------------------------
-- Table structure for logistics_info
-- ----------------------------
DROP TABLE IF EXISTS `logistics_info`;
CREATE TABLE `logistics_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_id` int(0) NULL DEFAULT NULL COMMENT '订单ID',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '物流备注',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `current_logistics` int(0) NULL DEFAULT NULL COMMENT '是否为当前物流（0.否 1.是）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '配送物流信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logistics_info
-- ----------------------------
INSERT INTO `logistics_info` VALUES (1, 5, '订单正在揽收', '2023-02-11 15:24:02', 0);
INSERT INTO `logistics_info` VALUES (3, 5, '快递员正在派送。', '2023-02-11 15:36:17', 1);
INSERT INTO `logistics_info` VALUES (4, 14, '订单正在揽收', '2023-05-12 11:33:14', 1);
INSERT INTO `logistics_info` VALUES (5, 24, '发货', '2025-01-12 10:12:15', 1);

-- ----------------------------
-- Table structure for medication_info
-- ----------------------------
DROP TABLE IF EXISTS `medication_info`;
CREATE TABLE `medication_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '编号',
  `cause` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病因',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '所属用户',
  `check_issuer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '出具人',
  `check_agency` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '出具机构',
  `status` int(0) NULL DEFAULT 0 COMMENT '状态（0.未处理 1.已处理）',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `order_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属订单',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '处方标题',
  `images` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '电子处方' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of medication_info
-- ----------------------------
INSERT INTO `medication_info` VALUES (1, 'MED-1647250262672', '头晕恶心', 1, '张三', 'xxx', 1, '2023-10-15 22:19:04', '16975918617561', '20231015处方', 'SA1697379432283.jpg');
INSERT INTO `medication_info` VALUES (2, 'MED-1697722651417', '搭载11代和12代还有AMD处理器笔记本无法安装黑苹果系统，因为搭载NVIDIA独立显卡无线驱动，核显也是无解', 2, '张三', 'xxx', 1, '2023-10-19 21:37:31', '16977228375211', '20231019处方', 'SA1697722650495.jpg');
INSERT INTO `medication_info` VALUES (3, 'MED-1736645673445', '头晕恶心头晕反胃想吐的原因很多，最常见以下几种情况：1.高血压，血压突然升高时，会引起头晕的感觉，伴有恶心呕吐，常常伴有头部胀痛，经降压治疗症状可缓解', 2, '张三', '仁和药店', 1, '2025-01-12 09:34:33', '17366466723832', '头晕恶心', 'SA1736645672040.jpg');
INSERT INTO `medication_info` VALUES (4, 'MED-1736646837964', '躯体形式障碍是一种神秘而常见的神经症，其核心特征是对各种躯体症状的持久担忧或坚信', 2, 'xxxx', 'xxx', 1, '2025-01-12 09:53:57', '17366468683312', '长期头晕、恶心', 'SA1736646837026.jpg');
INSERT INTO `medication_info` VALUES (5, 'MED-1736647586735', '躯体形式障碍可分为：躯体化障碍、疑病障碍、未分化躯体形式障碍、躯体形式的疼痛障碍、躯体形式的自主神经功能紊乱以及其他躯体形式障碍，其中以躯体化障碍相关症状和疑病障碍最为常见。', 2, '李四', '症状与分类', 1, '2025-01-12 10:06:26', '17366476118822', '症状与分类', 'SA1736647585717.jpg');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `drug_id` int(0) NULL DEFAULT NULL COMMENT '购买药品',
  `quantity` int(0) NULL DEFAULT NULL COMMENT '购买数量',
  `unit_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `all_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '总价',
  `order_id` int(0) NULL DEFAULT NULL COMMENT '所属订单',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '订单详情' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (8, 1, 1, 14.90, 14.90, 5);
INSERT INTO `order_detail` VALUES (9, 2, 3, 38.90, 116.70, 6);
INSERT INTO `order_detail` VALUES (10, 3, 1, 169.00, 169.00, 6);
INSERT INTO `order_detail` VALUES (11, 1, 2, 14.90, 29.80, 7);
INSERT INTO `order_detail` VALUES (12, 1, 5, 14.90, 74.50, 8);
INSERT INTO `order_detail` VALUES (13, 1, 5, 14.90, 74.50, 9);
INSERT INTO `order_detail` VALUES (14, 1, 2, 14.90, 29.80, 10);
INSERT INTO `order_detail` VALUES (15, 2, 1, 38.90, 38.90, 10);
INSERT INTO `order_detail` VALUES (16, 3, 1, 169.00, 169.00, 10);
INSERT INTO `order_detail` VALUES (17, 1, 1, 14.90, 14.90, 11);
INSERT INTO `order_detail` VALUES (18, 1, 2, 14.90, 29.80, 12);
INSERT INTO `order_detail` VALUES (19, 2, 1, 38.90, 38.90, 12);
INSERT INTO `order_detail` VALUES (20, 3, 1, 169.00, 169.00, 12);
INSERT INTO `order_detail` VALUES (21, 1, 2, 14.90, 29.80, 13);
INSERT INTO `order_detail` VALUES (22, 2, 1, 38.90, 38.90, 14);
INSERT INTO `order_detail` VALUES (23, 1, 3, 14.90, 44.70, 15);
INSERT INTO `order_detail` VALUES (24, 1, 1, 14.90, 14.90, 16);
INSERT INTO `order_detail` VALUES (25, 2, 1, 38.90, 38.90, 16);
INSERT INTO `order_detail` VALUES (26, 1, 2, 14.90, 29.80, 18);
INSERT INTO `order_detail` VALUES (27, 1, 1, 14.90, 14.90, 19);
INSERT INTO `order_detail` VALUES (28, 3, 1, 169.00, 169.00, 21);
INSERT INTO `order_detail` VALUES (29, 1, 1, 14.90, 14.90, 22);
INSERT INTO `order_detail` VALUES (30, 1, 1, 14.90, 14.90, 23);
INSERT INTO `order_detail` VALUES (31, 1, 1, 14.90, 14.90, 24);

-- ----------------------------
-- Table structure for order_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `order_evaluate`;
CREATE TABLE `order_evaluate`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_id` int(0) NULL DEFAULT NULL COMMENT '订单ID',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '评价用户',
  `pharmacy_id` int(0) NULL DEFAULT NULL COMMENT '所属药店',
  `score` decimal(10, 2) NULL DEFAULT NULL COMMENT '评价分数',
  `content` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评价内容',
  `images` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评价图片',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '订单评价' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_evaluate
-- ----------------------------
INSERT INTO `order_evaluate` VALUES (1, 5, 1, 1, 4.00, '服务很好', NULL, '2023-02-11 15:23:08');
INSERT INTO `order_evaluate` VALUES (2, 14, 2, 1, 5.00, '好！', 'SA1683863188456.jpg', '2023-05-12 11:47:05');

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '订单编号',
  `pharmacy_id` int(0) NULL DEFAULT NULL COMMENT '所属药店',
  `total_cost` decimal(10, 2) NULL DEFAULT NULL COMMENT '总价格',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '所属用户',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '购买时间',
  `logistics_id` int(0) NULL DEFAULT NULL COMMENT '物流信息',
  `order_status` int(0) NULL DEFAULT NULL COMMENT '订单状态（1.已下单 2.配送中 3.已收货）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标识（0.正常 1.删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '订单管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES (5, 'OR-1676088129904', 1, 15.90, 1, '2023-02-11 12:02:09', 1, 2, NULL);
INSERT INTO `order_info` VALUES (6, 'OR-1676090415761', 1, 286.70, NULL, '2023-02-11 12:40:15', NULL, 3, NULL);
INSERT INTO `order_info` VALUES (7, 'OR-1676099272821', 2, 30.80, NULL, '2023-02-11 15:07:52', NULL, 3, NULL);
INSERT INTO `order_info` VALUES (8, 'OR-1676099667903', 2, 75.50, NULL, '2023-02-11 15:14:27', NULL, 3, NULL);
INSERT INTO `order_info` VALUES (9, 'OR-1676099817311', 1, 75.50, NULL, '2023-02-11 15:16:57', NULL, 3, NULL);
INSERT INTO `order_info` VALUES (10, 'OR-1679200674987', 1, 238.70, NULL, '2023-03-19 12:37:54', NULL, 3, NULL);
INSERT INTO `order_info` VALUES (11, '16836405408771', 1, 14.90, 2, '2023-05-09 21:55:40', NULL, 0, NULL);
INSERT INTO `order_info` VALUES (12, '16836413705281', 1, 237.70, 2, '2023-05-09 22:09:30', NULL, 0, NULL);
INSERT INTO `order_info` VALUES (13, '16838599707741', 1, 29.80, 2, '2023-05-12 10:52:50', NULL, 0, NULL);
INSERT INTO `order_info` VALUES (14, '16838599772331', 1, 38.90, 2, '2023-05-12 10:52:57', NULL, 3, NULL);
INSERT INTO `order_info` VALUES (15, '16946981324461', 1, 44.70, 2, '2023-09-14 21:28:52', NULL, 0, NULL);
INSERT INTO `order_info` VALUES (16, '16970323093731', 1, 53.80, 2, '2023-10-11 21:51:49', NULL, 0, NULL);
INSERT INTO `order_info` VALUES (18, '16975913194861', 1, 29.80, NULL, '2023-10-18 09:08:39', NULL, 0, '0');
INSERT INTO `order_info` VALUES (19, '16975918617561', 1, 14.90, 1, '2023-10-18 09:17:41', NULL, 0, '0');
INSERT INTO `order_info` VALUES (21, '16977228375211', 1, 169.00, 2, '2023-10-19 21:40:37', NULL, 0, '0');
INSERT INTO `order_info` VALUES (22, '17366466723832', 2, 14.90, 2, '2025-01-12 09:51:12', NULL, 0, '0');
INSERT INTO `order_info` VALUES (23, '17366468683312', 2, 14.90, 2, '2025-01-12 09:54:28', NULL, 1, '0');
INSERT INTO `order_info` VALUES (24, '17366476118822', 2, 14.90, 2, '2025-01-12 10:06:51', NULL, 2, '0');

-- ----------------------------
-- Table structure for payment_record
-- ----------------------------
DROP TABLE IF EXISTS `payment_record`;
CREATE TABLE `payment_record`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '客户ID',
  `money` decimal(10, 2) NULL DEFAULT NULL COMMENT '缴纳费用',
  `order_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工单编号',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '缴纳时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '客户缴费记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_record
-- ----------------------------
INSERT INTO `payment_record` VALUES (3, NULL, NULL, 'OR-1676088129904', '2023-02-11 12:02:15');
INSERT INTO `payment_record` VALUES (4, NULL, NULL, 'OR-1676090415761', '2023-02-11 12:40:15');
INSERT INTO `payment_record` VALUES (5, NULL, 30.80, 'OR-1676099272821', '2023-02-11 15:07:52');
INSERT INTO `payment_record` VALUES (6, NULL, 75.50, 'OR-1676099667903', '2023-02-11 15:14:28');
INSERT INTO `payment_record` VALUES (7, NULL, 75.50, 'OR-1676099817311', '2023-02-11 15:16:57');
INSERT INTO `payment_record` VALUES (8, NULL, 238.70, 'OR-1679200674987', '2023-03-19 12:37:55');
INSERT INTO `payment_record` VALUES (9, 2, 38.90, '16838599772331', '2023-05-12 11:20:09');
INSERT INTO `payment_record` VALUES (10, 2, 14.90, '17366476118822', '2025-01-12 10:09:33');
INSERT INTO `payment_record` VALUES (11, 2, 14.90, '17366468683312', '2025-01-13 08:21:26');

-- ----------------------------
-- Table structure for pharmacy_info
-- ----------------------------
DROP TABLE IF EXISTS `pharmacy_info`;
CREATE TABLE `pharmacy_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药店名称',
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  `business_status` int(0) NULL DEFAULT NULL COMMENT '营业状态（1.营业中 2.歇业）',
  `qualification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资质照片',
  `longitude` decimal(20, 10) NULL DEFAULT NULL COMMENT '经度',
  `latitude` decimal(20, 10) NULL DEFAULT NULL COMMENT '纬度',
  `images` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺照片',
  `business_hours` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '营业时间',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `legal_person` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '法人姓名',
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `user_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '药店管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pharmacy_info
-- ----------------------------
INSERT INTO `pharmacy_info` VALUES (1, 'PM-1675349283695', '万民药房', '北京市朝阳区小红门后街', 1, NULL, 116.4688980000, 39.8357630000, 'SA1675349233097.png,SA1675349235653.png,SA1675349238312.png', '早10:00~晚20:00', '2023-02-02 22:48:03', '樊可', '15010399301', NULL);
INSERT INTO `pharmacy_info` VALUES (2, 'PM-1675602015713', '仁和大药房（亦庄点）', '北京市大兴区北环西路1号', 1, NULL, 116.4888890000, 39.8067060000, 'SA1675602011270.jpg,SA1675602013540.jpg', '早10:00~晚22:00', '2023-02-05 21:00:15', '吴卅', '13598741258', 18);

-- ----------------------------
-- Table structure for pharmacy_inventory
-- ----------------------------
DROP TABLE IF EXISTS `pharmacy_inventory`;
CREATE TABLE `pharmacy_inventory`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pharmacy_id` int(0) NULL DEFAULT NULL COMMENT '药店ID',
  `drug_id` int(0) NULL DEFAULT NULL COMMENT '药品ID',
  `reserve` int(0) NULL DEFAULT NULL COMMENT '库存数量',
  `shelf_status` int(0) NULL DEFAULT NULL COMMENT '上架状态（1.上架中 2.下架）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '药店库存' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pharmacy_inventory
-- ----------------------------
INSERT INTO `pharmacy_inventory` VALUES (1, 1, 1, 19, 1);
INSERT INTO `pharmacy_inventory` VALUES (2, 1, 2, 11, 1);
INSERT INTO `pharmacy_inventory` VALUES (3, 1, 3, 48, 1);
INSERT INTO `pharmacy_inventory` VALUES (4, 2, 1, 58, 1);
INSERT INTO `pharmacy_inventory` VALUES (5, 2, 2, 1, 1);

-- ----------------------------
-- Table structure for purchase_info
-- ----------------------------
DROP TABLE IF EXISTS `purchase_info`;
CREATE TABLE `purchase_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '采购单号',
  `supplier_id` int(0) NULL DEFAULT NULL COMMENT '供应商ID',
  `amount` int(0) NULL DEFAULT NULL COMMENT '采购金额',
  `purchaser` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '采购人',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '采购时间',
  `status` int(0) NULL DEFAULT 1 COMMENT '采购状态（1.运输中 2.已验收）',
  `logistics` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '采购物流',
  `purchase_drug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '采购药品',
  `total_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '总价格',
  `pharmacy_id` int(0) NULL DEFAULT NULL COMMENT '药店ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '药品采购' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_info
-- ----------------------------
INSERT INTO `purchase_info` VALUES (3, 'PUR-1697281049325', 1, 2, '张三', '2023-10-14 18:57:29', 2, '[{\"id\":null,\"orderId\":null,\"remark\":\"准备发货\",\"createDate\":\"2023-10-14T11:48:54.072Z\",\"currentLogistics\":null,\"orderCode\":null,\"userName\":null},{\"remark\":\"准备装货\",\"createDate\":\"2023-10-14T11:49:09.107Z\"}]', '[{\"drugId\":1,\"reserve\":1,\"brand\":\"999\",\"classification\":9,\"dosageForm\":\"颗粒剂\",\"unitPrice\":14.9},{\"drugId\":2,\"reserve\":1,\"brand\":\"京都念慈菴\",\"classification\":1,\"dosageForm\":\"煎膏剂\",\"unitPrice\":38.9}]', 53.80, 2);
INSERT INTO `purchase_info` VALUES (4, 'PUR-1697967219066', 11, 2, '李四', '2023-10-22 17:33:39', 1, '[{\"remark\":\"装货中\",\"createDate\":\"2023-10-22T09:34:04.089Z\"}]', '[{\"drugId\":2,\"reserve\":2,\"brand\":\"京都念慈菴\",\"classification\":1,\"dosageForm\":\"煎膏剂\",\"unitPrice\":38.9}]', 77.80, 2);

-- ----------------------------
-- Table structure for staff_info
-- ----------------------------
DROP TABLE IF EXISTS `staff_info`;
CREATE TABLE `staff_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `sex` int(0) NULL DEFAULT NULL COMMENT '性别（1.男 2.女）',
  `status` int(0) NULL DEFAULT NULL COMMENT '状态（1.在职 2.离职）',
  `dept_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属部门',
  `images` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '照片',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '所属账户',
  `pharmacy_id` int(0) NULL DEFAULT NULL,
  `is_admin` int(0) NULL DEFAULT NULL COMMENT '是否为店长（0.否 1.是）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '员工管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of staff_info
-- ----------------------------
INSERT INTO `staff_info` VALUES (1, 'STF-1675604254076', '丁真', 1, 1, NULL, 'SA1675604212612.jpg', '2023-02-05 21:37:34', NULL, 1, 0);
INSERT INTO `staff_info` VALUES (2, 'STF-1675604991544', '孙笑川', 1, 1, NULL, 'SA1675604990128.jpg', '2023-02-05 21:49:51', NULL, 2, 1);

-- ----------------------------
-- Table structure for stock_alert_info
-- ----------------------------
DROP TABLE IF EXISTS `stock_alert_info`;
CREATE TABLE `stock_alert_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(0) NULL DEFAULT NULL COMMENT '药店ID',
  `durg_id` int(0) NULL DEFAULT NULL COMMENT '药品ID',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `status` int(0) NULL DEFAULT 0 COMMENT '已读状态（0.未读 1.已读）',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '库存预警' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stock_alert_info
-- ----------------------------
INSERT INTO `stock_alert_info` VALUES (1, 1, 2, '药品【京都念慈菴蜜炼川贝枇杷膏】库存数量为 11, 请尽快补货', 1, '2023-10-16 23:04:40');

-- ----------------------------
-- Table structure for t_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept`  (
  `DEPT_ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `PARENT_ID` bigint(0) NOT NULL COMMENT '上级部门ID',
  `DEPT_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名称',
  `ORDER_NUM` double(20, 0) NULL DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`DEPT_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_dept
-- ----------------------------
INSERT INTO `t_dept` VALUES (1, 0, '开发部', 1, '2018-01-04 15:42:26', '2019-01-05 21:08:27');
INSERT INTO `t_dept` VALUES (2, 1, '开发一部', 1, '2018-01-04 15:42:34', '2019-01-18 00:59:37');
INSERT INTO `t_dept` VALUES (3, 1, '开发二部', 2, '2018-01-04 15:42:29', '2019-01-05 14:09:39');
INSERT INTO `t_dept` VALUES (4, 0, '市场部', 2, '2018-01-04 15:42:36', '2019-01-23 06:27:56');
INSERT INTO `t_dept` VALUES (5, 0, '人事部', 3, '2018-01-04 15:42:32', '2019-01-23 06:27:59');
INSERT INTO `t_dept` VALUES (6, 0, '测试部', 4, '2018-01-04 15:42:38', '2019-01-17 08:15:47');

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict`  (
  `DICT_ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典ID',
  `KEYY` bigint(0) NOT NULL COMMENT '键',
  `VALUEE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '值',
  `FIELD_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段名称',
  `TABLE_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表名',
  PRIMARY KEY (`DICT_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES (1, 0, '男', 'ssex', 't_user');
INSERT INTO `t_dict` VALUES (2, 1, '女', 'ssex', 't_user');
INSERT INTO `t_dict` VALUES (3, 2, '保密', 'ssex', 't_user');
INSERT INTO `t_dict` VALUES (4, 1, '有效', 'status', 't_user');
INSERT INTO `t_dict` VALUES (5, 0, '锁定', 'status', 't_user');
INSERT INTO `t_dict` VALUES (6, 0, '菜单', 'type', 't_menu');
INSERT INTO `t_dict` VALUES (7, 1, '按钮', 'type', 't_menu');
INSERT INTO `t_dict` VALUES (30, 0, '正常', 'status', 't_job');
INSERT INTO `t_dict` VALUES (31, 1, '暂停', 'status', 't_job');
INSERT INTO `t_dict` VALUES (32, 0, '成功', 'status', 't_job_log');
INSERT INTO `t_dict` VALUES (33, 1, '失败', 'status', 't_job_log');

-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS `t_job`;
CREATE TABLE `t_job`  (
  `JOB_ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `BEAN_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '方法名',
  `PARAMS` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `CRON_EXPRESSION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cron表达式',
  `STATUS` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务状态  0：正常  1：暂停',
  `REMARK` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`JOB_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_job
-- ----------------------------
INSERT INTO `t_job` VALUES (1, 'testTask', 'test', 'mrbird', '0/1 * * * * ?1', '1', '有参任务调度测试', '2018-02-24 16:26:14');
INSERT INTO `t_job` VALUES (2, 'testTask', 'test1', NULL, '0/10 * * * * ?', '1', '无参任务调度测试', '2018-02-24 17:06:23');
INSERT INTO `t_job` VALUES (3, 'testTask', 'test', 'hello world', '0/1 * * * * ?', '1', '有参任务调度测试,每隔一秒触发', '2018-02-26 09:28:26');
INSERT INTO `t_job` VALUES (11, 'testTask', 'test2', NULL, '0/5 * * * * ?', '1', '测试异常', '2018-02-26 11:15:30');

-- ----------------------------
-- Table structure for t_job_log
-- ----------------------------
DROP TABLE IF EXISTS `t_job_log`;
CREATE TABLE `t_job_log`  (
  `LOG_ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `JOB_ID` bigint(0) NOT NULL COMMENT '任务id',
  `BEAN_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '方法名',
  `PARAMS` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `STATUS` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `ERROR` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '失败信息',
  `TIMES` decimal(11, 0) NULL DEFAULT NULL COMMENT '耗时(单位：毫秒)',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`LOG_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2502 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_job_log
-- ----------------------------
INSERT INTO `t_job_log` VALUES (2450, 3, 'testTask', 'test', 'hello world', '0', NULL, 2, '2018-03-20 15:31:52');
INSERT INTO `t_job_log` VALUES (2451, 3, 'testTask', 'test', 'hello world', '0', NULL, 0, '2018-03-20 15:31:53');
INSERT INTO `t_job_log` VALUES (2452, 3, 'testTask', 'test', 'hello world', '0', NULL, 2, '2018-03-20 15:31:54');
INSERT INTO `t_job_log` VALUES (2453, 3, 'testTask', 'test', 'hello world', '0', NULL, 1, '2018-03-20 15:31:55');
INSERT INTO `t_job_log` VALUES (2454, 3, 'testTask', 'test', 'hello world', '0', NULL, 0, '2018-03-20 15:31:56');
INSERT INTO `t_job_log` VALUES (2455, 3, 'testTask', 'test', 'hello world', '0', NULL, 1, '2018-03-20 15:31:57');
INSERT INTO `t_job_log` VALUES (2456, 3, 'testTask', 'test', 'hello world', '0', NULL, 1, '2018-03-20 15:31:59');
INSERT INTO `t_job_log` VALUES (2457, 3, 'testTask', 'test', 'hello world', '0', NULL, 1, '2018-03-20 15:31:59');
INSERT INTO `t_job_log` VALUES (2458, 3, 'testTask', 'test', 'hello world', '0', NULL, 1, '2018-03-20 15:32:00');
INSERT INTO `t_job_log` VALUES (2459, 3, 'testTask', 'test', 'hello world', '0', NULL, 0, '2018-03-20 15:32:01');
INSERT INTO `t_job_log` VALUES (2460, 3, 'testTask', 'test', 'hello world', '0', NULL, 5, '2018-03-20 15:32:02');
INSERT INTO `t_job_log` VALUES (2461, 3, 'testTask', 'test', 'hello world', '0', NULL, 1, '2018-03-20 15:32:03');
INSERT INTO `t_job_log` VALUES (2462, 3, 'testTask', 'test', 'hello world', '0', NULL, 1, '2018-03-20 15:32:04');
INSERT INTO `t_job_log` VALUES (2463, 3, 'testTask', 'test', 'hello world', '0', NULL, 1, '2018-03-20 15:32:05');
INSERT INTO `t_job_log` VALUES (2464, 3, 'testTask', 'test', 'hello world', '0', NULL, 1, '2018-03-20 15:32:06');
INSERT INTO `t_job_log` VALUES (2465, 11, 'testTask', 'test2', NULL, '1', 'java.lang.NoSuchMethodException: cc.mrbird.job.task.TestTask.test2()', 0, '2018-03-20 15:32:26');
INSERT INTO `t_job_log` VALUES (2466, 2, 'testTask', 'test1', NULL, '0', NULL, 1, '2018-04-02 15:26:40');
INSERT INTO `t_job_log` VALUES (2467, 2, 'testTask', 'test1', NULL, '0', NULL, 1, '2018-04-02 15:26:50');
INSERT INTO `t_job_log` VALUES (2468, 2, 'testTask', 'test1', NULL, '0', NULL, 1, '2018-04-02 15:27:20');
INSERT INTO `t_job_log` VALUES (2469, 2, 'testTask', 'test1', NULL, '0', NULL, 3, '2018-04-02 17:29:20');
INSERT INTO `t_job_log` VALUES (2476, 1, 'testTask', 'test', 'mrbird', '0', NULL, 1, '2019-01-06 08:25:00');
INSERT INTO `t_job_log` VALUES (2477, 11, 'testTask', 'test2', NULL, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', 0, '2019-01-06 08:25:25');
INSERT INTO `t_job_log` VALUES (2478, 1, 'testTask', 'test', 'mrbird', '0', NULL, 1, '2019-01-06 08:40:15');
INSERT INTO `t_job_log` VALUES (2479, 1, 'testTask', 'test', 'mrbird', '0', NULL, 1, '2019-01-06 08:40:15');
INSERT INTO `t_job_log` VALUES (2480, 1, 'testTask', 'test', 'mrbird', '0', NULL, 1, '2019-01-06 08:40:15');
INSERT INTO `t_job_log` VALUES (2481, 1, 'testTask', 'test', 'mrbird', '0', NULL, 1, '2019-01-06 08:40:15');
INSERT INTO `t_job_log` VALUES (2482, 1, 'testTask', 'test', 'mrbird', '0', NULL, 0, '2019-01-06 08:40:15');
INSERT INTO `t_job_log` VALUES (2483, 1, 'testTask', 'test', 'mrbird', '0', NULL, 1, '2019-01-06 08:40:15');
INSERT INTO `t_job_log` VALUES (2484, 1, 'testTask', 'test', 'mrbird', '0', NULL, 0, '2019-01-06 08:40:15');
INSERT INTO `t_job_log` VALUES (2485, 1, 'testTask', 'test', 'mrbird', '0', NULL, 0, '2019-01-06 08:40:15');
INSERT INTO `t_job_log` VALUES (2486, 1, 'testTask', 'test', 'mrbird', '0', NULL, 0, '2019-01-06 08:40:15');
INSERT INTO `t_job_log` VALUES (2487, 1, 'testTask', 'test', 'mrbird', '0', NULL, 0, '2019-01-06 08:40:15');
INSERT INTO `t_job_log` VALUES (2488, 1, 'testTask', 'test', 'mrbird', '0', NULL, 1, '2019-01-06 08:40:16');
INSERT INTO `t_job_log` VALUES (2489, 1, 'testTask', 'test', 'mrbird', '0', NULL, 0, '2019-01-06 08:40:17');
INSERT INTO `t_job_log` VALUES (2490, 1, 'testTask', 'test', 'mrbird', '0', NULL, 1, '2019-01-06 08:40:18');
INSERT INTO `t_job_log` VALUES (2491, 1, 'testTask', 'test', 'mrbird', '0', NULL, 0, '2019-01-06 08:40:19');
INSERT INTO `t_job_log` VALUES (2492, 1, 'testTask', 'test', 'mrbird', '0', NULL, 1, '2019-01-06 08:40:20');
INSERT INTO `t_job_log` VALUES (2493, 1, 'testTask', 'test', 'mrbird', '0', NULL, 0, '2019-01-06 08:40:21');
INSERT INTO `t_job_log` VALUES (2494, 1, 'testTask', 'test', 'mrbird', '0', NULL, 0, '2019-01-06 08:40:22');
INSERT INTO `t_job_log` VALUES (2495, 11, 'testTask', 'test2', NULL, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', 2, '2019-01-06 08:40:36');
INSERT INTO `t_job_log` VALUES (2496, 11, 'testTask', 'test2', NULL, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', 0, '2019-01-06 08:40:36');
INSERT INTO `t_job_log` VALUES (2497, 11, 'testTask', 'test2', NULL, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', 1, '2019-01-06 08:40:40');
INSERT INTO `t_job_log` VALUES (2498, 2, 'testTask', 'test1', NULL, '0', NULL, 1, '2019-01-06 11:36:20');
INSERT INTO `t_job_log` VALUES (2499, 1, 'testTask', 'test', 'mrbird', '0', NULL, 30, '2019-01-22 05:41:01');
INSERT INTO `t_job_log` VALUES (2500, 1, 'testTask', 'test', 'mrbird', '0', NULL, 9, '2019-01-23 06:28:58');
INSERT INTO `t_job_log` VALUES (2501, 1, 'testTask', 'test', 'mrbird', '0', NULL, 12, '2019-01-24 05:39:59');

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
  `ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作用户',
  `OPERATION` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '操作内容',
  `TIME` decimal(11, 0) NULL DEFAULT NULL COMMENT '耗时',
  `METHOD` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '操作方法',
  `PARAMS` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '方法参数',
  `IP` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作者IP',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作地点',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1903 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES (1815, 'mrbird', '删除用户', 301, 'cc.mrbird.febs.system.controller.UserController.deleteUsers()', ' userIds: \"11\"', '127.0.0.1', '2019-01-23 06:26:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1816, 'mrbird', '修改菜单/按钮', 170, 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=2, parentId=0, menuName=系统监控, path=/monitor, component=PageView, perms=null, icon=dashboard, type=0, orderNum=2.0, createTime=null, modifyTime=Wed Jan 23 14:27:12 CST 2019, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:27:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1817, 'mrbird', '修改部门', 90, 'cc.mrbird.febs.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=4, parentId=0, deptName=市场部, orderNum=2.0, createTime=null, modifyTime=Wed Jan 23 14:27:55 CST 2019, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:27:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1818, 'mrbird', '修改部门', 596, 'cc.mrbird.febs.system.controller.DeptController.updateDept()', ' dept: \"Dept(deptId=5, parentId=0, deptName=人事部, orderNum=3.0, createTime=null, modifyTime=Wed Jan 23 14:27:59 CST 2019, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:28:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1819, 'mrbird', '执行定时任务', 146, 'cc.mrbird.febs.job.controller.JobController.runJob()', ' jobId: \"1\"', '127.0.0.1', '2019-01-23 06:28:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1820, 'mrbird', '新增菜单/按钮', 160, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=130, parentId=3, menuName=导出Excel, path=null, component=null, perms=user:export, icon=null, type=1, orderNum=null, createTime=Wed Jan 23 14:35:15 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:35:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1821, 'mrbird', '新增菜单/按钮', 255, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=131, parentId=4, menuName=导出Excel, path=null, component=null, perms=role:export, icon=null, type=1, orderNum=null, createTime=Wed Jan 23 14:35:36 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:35:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1822, 'mrbird', '新增菜单/按钮', 172, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=132, parentId=5, menuName=导出Excel, path=null, component=null, perms=menu:export, icon=null, type=1, orderNum=null, createTime=Wed Jan 23 14:36:04 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:36:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1823, 'mrbird', '新增菜单/按钮', 188, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=133, parentId=6, menuName=导出Excel, path=null, component=null, perms=dept:export, icon=null, type=1, orderNum=null, createTime=Wed Jan 23 14:36:24 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:36:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1824, 'mrbird', '新增菜单/按钮', 186, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=134, parentId=64, menuName=导出Excel, path=null, component=null, perms=dict:export, icon=null, type=1, orderNum=null, createTime=Wed Jan 23 14:36:43 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:36:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1825, 'mrbird', '新增菜单/按钮', 160, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=135, parentId=3, menuName=密码重置, path=null, component=null, perms=user:reset, icon=null, type=1, orderNum=null, createTime=Wed Jan 23 14:36:59 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:37:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1826, 'mrbird', '新增菜单/按钮', 181, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=136, parentId=10, menuName=导出Excel, path=null, component=null, perms=log:export, icon=null, type=1, orderNum=null, createTime=Wed Jan 23 14:37:26 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:37:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1827, 'mrbird', '新增菜单/按钮', 146, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=137, parentId=102, menuName=导出Excel, path=null, component=null, perms=job:export, icon=null, type=1, orderNum=null, createTime=Wed Jan 23 14:37:59 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:37:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1828, 'mrbird', '新增菜单/按钮', 164, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=138, parentId=109, menuName=导出Excel, path=null, component=null, perms=jobLog:export, icon=null, type=1, orderNum=null, createTime=Wed Jan 23 14:38:32 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:38:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1829, 'mrbird', '修改角色', 3132, 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=管理员, remark=管理员, createTime=null, modifyTime=Wed Jan 23 14:45:28 CST 2019, createTimeFrom=null, createTimeTo=null, menuId=1,3,11,12,13,4,14,15,16,5,17,18,19,6,20,21,22,64,65,66,67,2,8,23,10,24,113,121,122,124,123,125,101,102,103,104,105,106,107,108,109,110,58,59,61,81,82,83,127,128,129,130,135,131,132,133,134,136,137,138)\"', '127.0.0.1', '2019-01-23 06:45:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1830, 'mrbird', '修改角色', 1730, 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=2, roleName=注册用户, remark=只可查看不可操作, createTime=null, modifyTime=Wed Jan 23 15:31:07 CST 2019, createTimeFrom=null, createTimeTo=null, menuId=3,1,4,5,6,64,2,8,10,113,121,122,124,123,125,101,102,109,58,59,61,81,82,83,127,128,129)\"', '127.0.0.1', '2019-01-23 07:31:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1831, 'mrbird', '修改角色', 1997, 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=2, roleName=注册用户, remark=可查看，新增，导出, createTime=null, modifyTime=Wed Jan 23 15:32:20 CST 2019, createTimeFrom=null, createTimeTo=null, menuId=3,1,4,5,6,64,2,8,10,113,121,122,124,123,125,101,102,109,58,59,61,81,82,83,127,128,129,130,14,17,132,20,133,65,134,136,103,137,138)\"', '127.0.0.1', '2019-01-23 07:32:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1832, 'mrbird', '新增角色', 1428, 'cc.mrbird.febs.system.controller.RoleController.addRole()', ' role: \"Role(roleId=72, roleName=普通用户, remark=只可查看，好可怜哦, createTime=Wed Jan 23 15:33:20 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null, menuId=1,3,4,5,6,64,2,8,10,113,121,122,124,123,127,101,102,109,58,59,61,81,82,83,128,129)\"', '127.0.0.1', '2019-01-23 07:33:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1833, 'mrbird', '新增用户', 338, 'cc.mrbird.febs.system.controller.UserController.addUser()', ' user: \"User(userId=12, username=jack, password=552649f10640385d0728a80a4242893e, deptId=6, deptName=null, email=jack@hotmail.com, mobile=null, status=1, createTime=Wed Jan 23 15:34:05 CST 2019, modifyTime=null, lastLoginTime=null, ssex=0, description=null, avatar=default.jpg, roleId=72, roleName=null, sortField=null, sortOrder=null, createTimeFrom=null, createTimeTo=null, id=null)\"', '127.0.0.1', '2019-01-23 07:34:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1834, 'mrbird', '修改角色', 2160, 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=2, roleName=注册用户, remark=可查看，新增，导出, createTime=null, modifyTime=Wed Jan 23 15:37:08 CST 2019, createTimeFrom=null, createTimeTo=null, menuId=3,1,4,5,6,64,2,8,10,113,121,122,124,123,125,101,102,109,58,59,61,81,82,83,127,128,129,130,14,17,132,20,133,65,134,136,103,137,138,131)\"', '127.0.0.1', '2019-01-23 07:37:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1835, 'mrbird', '新增角色', 169, 'cc.mrbird.febs.system.controller.RoleController.addRole()', ' role: \"Role(roleId=73, roleName=测试xss, remark=<style>body{background:red !important}</style>, createTime=Wed Jan 23 15:47:04 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null, menuId=1,3)\"', '127.0.0.1', '2019-01-23 07:47:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1836, 'mrbird', '删除角色', 54, 'cc.mrbird.febs.system.controller.RoleController.deleteRoles()', ' roleIds: \"73\"', '218.104.237.213', '2019-01-24 03:03:41', '中国|华东|福建省|福州市|联通');
INSERT INTO `t_log` VALUES (1837, 'mrbird', '修改用户', 39, 'cc.mrbird.febs.system.controller.UserController.updateUser()', ' user: \"User(userId=12, username=jack, password=null, deptId=6, deptName=null, email=jack@hotmail.com, mobile=null, status=1, createTime=null, modifyTime=Thu Jan 24 11:08:00 CST 2019, lastLoginTime=null, ssex=0, description=null, avatar=null, roleId=72, roleName=null, sortField=null, sortOrder=null, createTimeFrom=null, createTimeTo=null, id=null)\"', '218.104.237.213', '2019-01-24 03:08:01', '中国|华东|福建省|福州市|联通');
INSERT INTO `t_log` VALUES (1838, 'mrbird', '执行定时任务', 41, 'cc.mrbird.febs.job.controller.JobController.runJob()', ' jobId: \"1\"', '218.104.237.213', '2019-01-24 05:39:59', '中国|华东|福建省|福州市|联通');
INSERT INTO `t_log` VALUES (1839, 'mrbird', '新增菜单/按钮', 12, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=139, parentId=0, menuName=系统管理, path=/manage, component=PageView, perms=null, icon=appstore, type=0, orderNum=6.0, createTime=Sun Jan 15 13:07:51 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-01-15 13:07:52', '');
INSERT INTO `t_log` VALUES (1840, 'mrbird', '新增菜单/按钮', 6, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=140, parentId=139, menuName=公告管理, path=/manage/bulletin, component=manage/bulletin/Bulletin, perms=null, icon=null, type=0, orderNum=1.0, createTime=Sun Jan 15 13:10:23 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-01-15 13:10:23', '');
INSERT INTO `t_log` VALUES (1841, 'mrbird', '新增菜单/按钮', 7, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=141, parentId=139, menuName=药品管理, path=/manage/drug, component=manage/drug/Drug, perms=null, icon=null, type=0, orderNum=2.0, createTime=Sun Jan 15 13:11:08 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-01-15 13:11:08', '');
INSERT INTO `t_log` VALUES (1842, 'mrbird', '新增菜单/按钮', 6, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=142, parentId=139, menuName=库存统计, path=/manage/inventory, component=manage/inventory/Inventory, perms=null, icon=null, type=0, orderNum=3.0, createTime=Sun Jan 15 13:12:25 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-01-15 13:12:25', '');
INSERT INTO `t_log` VALUES (1843, 'mrbird', '新增菜单/按钮', 6, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=143, parentId=139, menuName=物流信息, path=/manage/logistics, component=manage/logistics/Logistics, perms=null, icon=null, type=0, orderNum=4.0, createTime=Sun Jan 15 13:13:05 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-01-15 13:13:06', '');
INSERT INTO `t_log` VALUES (1844, 'mrbird', '新增菜单/按钮', 6, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=144, parentId=139, menuName=订单详情, path=/manage/detail, component=manage/detail/Detail, perms=null, icon=null, type=0, orderNum=5.0, createTime=Sun Jan 15 13:14:14 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-01-15 13:14:14', '');
INSERT INTO `t_log` VALUES (1845, 'mrbird', '新增菜单/按钮', 8, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=145, parentId=139, menuName=订单评价, path=/manage/evaluate, component=manage/evaluate/Evaluate, perms=null, icon=null, type=0, orderNum=6.0, createTime=Sun Jan 15 13:16:12 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-01-15 13:16:13', '');
INSERT INTO `t_log` VALUES (1846, 'mrbird', '新增菜单/按钮', 6, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=146, parentId=139, menuName=订单信息, path=/manage/order, component=manage/order/Order, perms=null, icon=null, type=0, orderNum=7.0, createTime=Sun Jan 15 13:17:09 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-01-15 13:17:10', '');
INSERT INTO `t_log` VALUES (1847, 'mrbird', '新增菜单/按钮', 5, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=147, parentId=139, menuName=缴费记录, path=/manage/payment, component=manage/payment/Payment, perms=null, icon=null, type=0, orderNum=8.0, createTime=Sun Jan 15 13:19:31 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-01-15 13:19:32', '');
INSERT INTO `t_log` VALUES (1848, 'mrbird', '新增菜单/按钮', 6, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=148, parentId=139, menuName=药店管理, path=/manage/pharmacy, component=manage/pharmacy/Pharmacy, perms=null, icon=null, type=0, orderNum=9.0, createTime=Sun Jan 15 13:21:54 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-01-15 13:21:55', '');
INSERT INTO `t_log` VALUES (1849, 'mrbird', '新增菜单/按钮', 6, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=149, parentId=139, menuName=药店库存, path=/manage/pharmacyInventory, component=manage/pharmacyInventory/inventory, perms=null, icon=null, type=0, orderNum=10.0, createTime=Sun Jan 15 13:22:46 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-01-15 13:22:46', '');
INSERT INTO `t_log` VALUES (1850, 'mrbird', '新增菜单/按钮', 4, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=150, parentId=139, menuName=员工管理, path=/manage/staff, component=manage/staff/Staff, perms=null, icon=null, type=0, orderNum=11.0, createTime=Sun Jan 15 13:23:21 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-01-15 13:23:22', '');
INSERT INTO `t_log` VALUES (1851, 'mrbird', '新增菜单/按钮', 6, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=151, parentId=139, menuName=用户管理, path=/manage/user, component=manage/user/User, perms=null, icon=null, type=0, orderNum=12.0, createTime=Sun Jan 15 13:23:54 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-01-15 13:23:54', '');
INSERT INTO `t_log` VALUES (1852, 'mrbird', '新增角色', 34, 'cc.mrbird.febs.system.controller.RoleController.addRole()', ' role: \"Role(roleId=74, roleName=超级管理员, remark=, createTime=Sun Jan 15 13:24:16 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null, menuId=139,140,141,142,143,144,145,146,147,148,149,150,151)\"', '127.0.0.1', '2023-01-15 13:24:17', '');
INSERT INTO `t_log` VALUES (1853, 'mrbird', '新增菜单/按钮', 5, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=152, parentId=0, menuName=数据统计, path=/statistics, component=PageView, perms=null, icon=project, type=0, orderNum=7.0, createTime=Sun Jan 15 13:26:03 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-01-15 13:26:03', '');
INSERT INTO `t_log` VALUES (1854, 'mrbird', '新增菜单/按钮', 5, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=153, parentId=152, menuName=销售排行, path=/statistics/sale, component=statistics/sale/Sale, perms=null, icon=null, type=0, orderNum=1.0, createTime=Sun Jan 15 13:26:53 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-01-15 13:26:53', '');
INSERT INTO `t_log` VALUES (1855, 'mrbird', '新增菜单/按钮', 4, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=154, parentId=152, menuName=员工统计, path=/statistics/staff, component=statistics/staff/Staff, perms=null, icon=null, type=0, orderNum=2.0, createTime=Sun Jan 15 13:27:22 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-01-15 13:27:23', '');
INSERT INTO `t_log` VALUES (1856, 'mrbird', '修改角色', 44, 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=74, roleName=超级管理员, remark=, createTime=null, modifyTime=Sun Jan 15 13:27:34 CST 2023, createTimeFrom=null, createTimeTo=null, menuId=139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154)\"', '127.0.0.1', '2023-01-15 13:27:35', '');
INSERT INTO `t_log` VALUES (1857, 'mrbird', '新增用户', 18, 'cc.mrbird.febs.system.controller.UserController.addUser()', ' user: \"User(userId=13, username=admin, password=3ee4a28b103216fa2d140d1979297910, deptId=null, deptName=null, email=null, mobile=null, status=1, createTime=Sun Jan 15 13:27:54 CST 2023, modifyTime=null, lastLoginTime=null, ssex=2, description=null, avatar=default.jpg, roleId=74, roleName=null, sortField=null, sortOrder=null, createTimeFrom=null, createTimeTo=null, id=null)\"', '127.0.0.1', '2023-01-15 13:27:55', '');
INSERT INTO `t_log` VALUES (1858, 'mrbird', '修改菜单/按钮', 18, 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=149, parentId=139, menuName=药店库存, path=/manage/pharmacyInventory, component=manage/pharmacyInventory/Inventory, perms=null, icon=null, type=0, orderNum=10.0, createTime=null, modifyTime=Sun Feb 05 20:54:10 CST 2023, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-02-05 20:54:11', '');
INSERT INTO `t_log` VALUES (1859, 'mrbird', '修改菜单/按钮', 9, 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=149, parentId=139, menuName=药店库存, path=/manage/pharmacyInventory, component=manage/inventory/Inventory, perms=null, icon=null, type=0, orderNum=10.0, createTime=null, modifyTime=Sun Feb 05 20:54:36 CST 2023, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-02-05 20:54:36', '');
INSERT INTO `t_log` VALUES (1860, 'mrbird', '修改菜单/按钮', 18, 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=142, parentId=139, menuName=库存统计, path=/manage/statistics, component=manage/statistics/Statistics, perms=null, icon=null, type=0, orderNum=3.0, createTime=null, modifyTime=Fri Feb 10 17:18:50 CST 2023, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-02-10 17:18:51', '');
INSERT INTO `t_log` VALUES (1861, 'mrbird', '修改角色', 65, 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=74, roleName=超级管理员, remark=, createTime=null, modifyTime=Tue Feb 14 20:24:11 CST 2023, createTimeFrom=null, createTimeTo=null, menuId=139,140,141,142,143,144,145,146,147,148,149,150,151,152,153)\"', '127.0.0.1', '2023-02-14 20:24:12', '');
INSERT INTO `t_log` VALUES (1862, 'mrbird', '新增菜单/按钮', 10, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=155, parentId=0, menuName=我的信息, path=/user, component=PageView, perms=null, icon=appstore, type=0, orderNum=8.0, createTime=Tue Apr 25 21:00:06 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-04-25 21:00:07', '');
INSERT INTO `t_log` VALUES (1863, 'mrbird', '新增菜单/按钮', 4, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=156, parentId=155, menuName=个人信息, path=/user/personal, component=user/personal/Personal, perms=null, icon=, type=0, orderNum=1.0, createTime=Tue Apr 25 21:02:29 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-04-25 21:02:30', '');
INSERT INTO `t_log` VALUES (1864, 'mrbird', '新增菜单/按钮', 5, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=157, parentId=155, menuName=我的订单, path=/user/order, component=user/order/Order, perms=null, icon=null, type=0, orderNum=2.0, createTime=Tue Apr 25 21:10:04 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-04-25 21:10:05', '');
INSERT INTO `t_log` VALUES (1865, 'mrbird', '新增菜单/按钮', 4, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=158, parentId=155, menuName=缴费记录, path=/user/record, component=user/record/Record, perms=null, icon=null, type=0, orderNum=3.0, createTime=Tue Apr 25 21:11:05 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-04-25 21:11:06', '');
INSERT INTO `t_log` VALUES (1866, 'mrbird', '新增菜单/按钮', 5, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=159, parentId=155, menuName=订单评价, path=/user/evaluate, component=user/evaluate/Evaluate, perms=null, icon=null, type=0, orderNum=4.0, createTime=Tue Apr 25 21:11:33 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-04-25 21:11:34', '');
INSERT INTO `t_log` VALUES (1867, 'mrbird', '新增角色', 17, 'cc.mrbird.febs.system.controller.RoleController.addRole()', ' role: \"Role(roleId=75, roleName=用户, remark=, createTime=Tue Apr 25 21:11:51 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null, menuId=155,156,157,158,159)\"', '127.0.0.1', '2023-04-25 21:11:52', '');
INSERT INTO `t_log` VALUES (1868, 'mrbird', '新增菜单/按钮', 9, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=160, parentId=155, menuName=药品购买, path=/user/cart, component=user/cart/Cart, perms=null, icon=, type=0, orderNum=5.0, createTime=Sat May 06 23:06:45 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-05-06 23:06:46', '');
INSERT INTO `t_log` VALUES (1869, 'mrbird', '修改角色', 30, 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=75, roleName=用户, remark=, createTime=null, modifyTime=Sat May 06 23:06:53 CST 2023, createTimeFrom=null, createTimeTo=null, menuId=155,156,157,158,159,160)\"', '127.0.0.1', '2023-05-06 23:06:54', '');
INSERT INTO `t_log` VALUES (1870, 'mrbird', '新增用户', 18, 'cc.mrbird.febs.system.controller.UserController.addUser()', ' user: \"User(userId=14, username=fank, password=19706f85f729c34626ae29c29d55cac5, deptId=null, deptName=null, email=null, mobile=null, status=1, createTime=Sat May 06 23:07:14 CST 2023, modifyTime=null, lastLoginTime=null, ssex=2, description=null, avatar=default.jpg, roleId=75, roleName=null, sortField=null, sortOrder=null, createTimeFrom=null, createTimeTo=null, id=null)\"', '127.0.0.1', '2023-05-06 23:07:14', '');
INSERT INTO `t_log` VALUES (1871, 'mrbird', '新增菜单/按钮', 11, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=161, parentId=155, menuName=支付结果, path=/user/pay, component=user/pay/Pay, perms=null, icon=, type=0, orderNum=6.0, createTime=Thu May 11 12:19:31 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-05-11 12:19:32', '');
INSERT INTO `t_log` VALUES (1872, 'mrbird', '修改角色', 38, 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=75, roleName=用户, remark=, createTime=null, modifyTime=Fri May 12 10:47:40 CST 2023, createTimeFrom=null, createTimeTo=null, menuId=155,156,157,158,159,160,161)\"', '127.0.0.1', '2023-05-12 10:47:41', '');
INSERT INTO `t_log` VALUES (1873, 'mrbird', '新增菜单/按钮', 10, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=162, parentId=139, menuName=管理员管理, path=/manage/admin, component=manage/admin/Admin, perms=null, icon=, type=0, orderNum=13.0, createTime=Fri Oct 06 10:01:15 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-10-06 10:01:16', '');
INSERT INTO `t_log` VALUES (1874, 'mrbird', '修改角色', 63, 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=74, roleName=超级管理员, remark=, createTime=null, modifyTime=Fri Oct 06 10:01:32 CST 2023, createTimeFrom=null, createTimeTo=null, menuId=139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,162)\"', '127.0.0.1', '2023-10-06 10:01:32', '');
INSERT INTO `t_log` VALUES (1875, 'admin', '新增用户', 30, 'cc.mrbird.febs.system.controller.UserController.addUser()', ' user: \"User(userId=16, username=admin1, password=d20a4a23fabcaf29967ede1fdb955072, deptId=null, deptName=null, email=null, mobile=null, status=1, createTime=Fri Oct 06 10:19:35 CST 2023, modifyTime=null, lastLoginTime=null, ssex=1, description=null, avatar=default.jpg, roleId=74, roleName=null, sortField=null, sortOrder=null, createTimeFrom=null, createTimeTo=null, id=null)\"', '127.0.0.1', '2023-10-06 10:19:36', '');
INSERT INTO `t_log` VALUES (1876, 'admin', '新增用户', 14, 'cc.mrbird.febs.system.controller.UserController.addUser()', ' user: \"User(userId=17, username=admin2, password=980a012ecce52a36809052132cf99247, deptId=-1, deptName=null, email=null, mobile=null, status=1, createTime=Fri Oct 06 10:21:12 CST 2023, modifyTime=null, lastLoginTime=null, ssex=1, description=null, avatar=default.jpg, roleId=74, roleName=null, sortField=null, sortOrder=null, createTimeFrom=null, createTimeTo=null, id=null)\"', '127.0.0.1', '2023-10-06 10:21:12', '');
INSERT INTO `t_log` VALUES (1877, 'mrbird', '新增菜单/按钮', 9, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=163, parentId=0, menuName=供应采购, path=/supply, component=PageView, perms=null, icon=, type=0, orderNum=6.0, createTime=Fri Oct 13 22:05:00 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-10-13 22:05:01', '');
INSERT INTO `t_log` VALUES (1878, 'mrbird', '新增菜单/按钮', 6, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=164, parentId=163, menuName=供应商管理, path=/supply/enterprise, component=supply/enterprise/Enterprise, perms=null, icon=null, type=0, orderNum=1.0, createTime=Fri Oct 13 22:08:34 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-10-13 22:08:35', '');
INSERT INTO `t_log` VALUES (1879, 'mrbird', '修改菜单/按钮', 18, 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=163, parentId=0, menuName=供应采购, path=/supply, component=PageView, perms=null, icon=file-word, type=0, orderNum=6.0, createTime=null, modifyTime=Fri Oct 13 22:08:50 CST 2023, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-10-13 22:08:50', '');
INSERT INTO `t_log` VALUES (1880, 'mrbird', '新增菜单/按钮', 5, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=165, parentId=163, menuName=电子处方, path=/supply/medication, component=supply/medication/Medication, perms=null, icon=null, type=0, orderNum=2.0, createTime=Fri Oct 13 22:10:51 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-10-13 22:10:51', '');
INSERT INTO `t_log` VALUES (1881, 'mrbird', '新增菜单/按钮', 9, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=166, parentId=163, menuName=药品采购, path=/supply/purchase, component=supply/purchase/Purchase, perms=null, icon=null, type=0, orderNum=3.0, createTime=Fri Oct 13 22:11:52 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-10-13 22:11:52', '');
INSERT INTO `t_log` VALUES (1882, 'mrbird', '新增菜单/按钮', 4, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=167, parentId=163, menuName=库房预警, path=/supply/alert, component=supply/alert/Alert, perms=null, icon=null, type=0, orderNum=4.0, createTime=Fri Oct 13 22:12:27 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-10-13 22:12:28', '');
INSERT INTO `t_log` VALUES (1883, 'mrbird', '新增菜单/按钮', 4, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=168, parentId=152, menuName=销售统计, path=/statistcs/sale, component=statistcs/sale/Sale, perms=null, icon=null, type=0, orderNum=3.0, createTime=Fri Oct 13 22:14:42 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-10-13 22:14:43', '');
INSERT INTO `t_log` VALUES (1884, 'mrbird', '修改角色', 75, 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=74, roleName=超级管理员, remark=, createTime=null, modifyTime=Fri Oct 13 22:15:07 CST 2023, createTimeFrom=null, createTimeTo=null, menuId=139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,162,168,163,164,165,167,166)\"', '127.0.0.1', '2023-10-13 22:15:07', '');
INSERT INTO `t_log` VALUES (1885, 'mrbird', '修改菜单/按钮', 22, 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=165, parentId=139, menuName=电子处方, path=/supply/medication, component=supply/medication/Medication, perms=null, icon=null, type=0, orderNum=2.0, createTime=null, modifyTime=Thu Oct 19 21:34:01 CST 2023, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-10-19 21:34:02', '');
INSERT INTO `t_log` VALUES (1886, 'mrbird', '修改菜单/按钮', 18, 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=167, parentId=139, menuName=库房预警, path=/supply/alert, component=supply/alert/Alert, perms=null, icon=null, type=0, orderNum=4.0, createTime=null, modifyTime=Thu Oct 19 21:34:13 CST 2023, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-10-19 21:34:13', '');
INSERT INTO `t_log` VALUES (1887, 'mrbird', '新增菜单/按钮', 9, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=169, parentId=155, menuName=药品处方, path=/user/medication, component=user/medication/Medication, perms=null, icon=, type=0, orderNum=3.0, createTime=Thu Oct 19 21:35:23 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-10-19 21:35:23', '');
INSERT INTO `t_log` VALUES (1888, 'mrbird', '修改角色', 43, 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=75, roleName=用户, remark=, createTime=null, modifyTime=Thu Oct 19 21:35:33 CST 2023, createTimeFrom=null, createTimeTo=null, menuId=155,156,157,158,159,160,161,169)\"', '127.0.0.1', '2023-10-19 21:35:34', '');
INSERT INTO `t_log` VALUES (1889, 'mrbird', '修改菜单/按钮', 23, 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=168, parentId=152, menuName=销售统计, path=/statistics/rank, component=statistics/rank/Rank, perms=null, icon=null, type=0, orderNum=3.0, createTime=null, modifyTime=Sat Oct 21 17:16:48 CST 2023, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-10-21 17:16:48', '');
INSERT INTO `t_log` VALUES (1890, 'mrbird', '新增菜单/按钮', 9, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=170, parentId=163, menuName=采购物流, path=/supply/logistics, component=supply/logistics/Logistics, perms=null, icon=, type=0, orderNum=3.0, createTime=Sun Oct 22 09:28:02 CST 2023, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2023-10-22 09:28:03', '');
INSERT INTO `t_log` VALUES (1891, 'mrbird', '修改角色', 88, 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=74, roleName=超级管理员, remark=, createTime=null, modifyTime=Sun Oct 22 09:28:13 CST 2023, createTimeFrom=null, createTimeTo=null, menuId=139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,162,168,163,164,165,167,166,170)\"', '127.0.0.1', '2023-10-22 09:28:13', '');
INSERT INTO `t_log` VALUES (1892, 'mrbird', '新增菜单/按钮', 10, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=171, parentId=0, menuName=店内管理, path=/doctor, component=PageView, perms=null, icon=scan, type=0, orderNum=9.0, createTime=Sat Jan 11 20:18:59 CST 2025, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2025-01-11 20:19:00', '');
INSERT INTO `t_log` VALUES (1893, 'mrbird', '新增菜单/按钮', 5, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=172, parentId=171, menuName=电子处方, path=/doctor/medication, component=doctor/medication/Medication, perms=null, icon=null, type=0, orderNum=1.0, createTime=Sat Jan 11 20:20:28 CST 2025, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2025-01-11 20:20:28', '');
INSERT INTO `t_log` VALUES (1894, 'mrbird', '新增菜单/按钮', 5, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=173, parentId=171, menuName=库存统计, path=/doctor/statistics, component=doctor/statistics/Statistics, perms=null, icon=null, type=0, orderNum=2.0, createTime=Sat Jan 11 20:21:00 CST 2025, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2025-01-11 20:21:00', '');
INSERT INTO `t_log` VALUES (1895, 'mrbird', '新增菜单/按钮', 5, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=174, parentId=171, menuName=订单物流, path=/doctor/logistics, component=doctor/logistics/Logistics, perms=null, icon=null, type=0, orderNum=3.0, createTime=Sat Jan 11 20:21:36 CST 2025, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2025-01-11 20:21:37', '');
INSERT INTO `t_log` VALUES (1896, 'mrbird', '新增菜单/按钮', 5, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=175, parentId=171, menuName=订单管理, path=/doctor/order, component=doctor/order/Order, perms=null, icon=null, type=0, orderNum=4.0, createTime=Sat Jan 11 20:22:11 CST 2025, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2025-01-11 20:22:11', '');
INSERT INTO `t_log` VALUES (1897, 'mrbird', '新增菜单/按钮', 6, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=176, parentId=171, menuName=订单评价, path=/doctor/evaluate, component=doctor/evaluate/Evaluate, perms=null, icon=null, type=0, orderNum=5.0, createTime=Sat Jan 11 20:22:43 CST 2025, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2025-01-11 20:22:44', '');
INSERT INTO `t_log` VALUES (1898, 'mrbird', '新增菜单/按钮', 7, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=177, parentId=171, menuName=店内库存, path=/doctor/pharmacyInventory, component=doctor/pharmacyInventory/PharmacyInventory, perms=null, icon=null, type=0, orderNum=6.0, createTime=Sat Jan 11 20:23:24 CST 2025, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2025-01-11 20:23:25', '');
INSERT INTO `t_log` VALUES (1899, 'mrbird', '新增菜单/按钮', 6, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=178, parentId=171, menuName=员工管理, path=/doctor/staff, component=doctor/staff/Staff, perms=null, icon=null, type=0, orderNum=7.0, createTime=Sat Jan 11 20:23:55 CST 2025, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2025-01-11 20:23:56', '');
INSERT INTO `t_log` VALUES (1900, 'mrbird', '新增角色', 25, 'cc.mrbird.febs.system.controller.RoleController.addRole()', ' role: \"Role(roleId=76, roleName=药店医生, remark=, createTime=Sat Jan 11 20:24:20 CST 2025, modifyTime=null, createTimeFrom=null, createTimeTo=null, menuId=171,172,173,174,175,176,177,178)\"', '127.0.0.1', '2025-01-11 20:24:21', '');
INSERT INTO `t_log` VALUES (1901, 'mrbird', '新增用户', 34, 'cc.mrbird.febs.system.controller.UserController.addUser()', ' user: \"User(userId=18, username=fkkk, password=5fd41b097acb41c642139202bb04df6e, deptId=null, deptName=null, email=null, mobile=null, status=1, createTime=Sat Jan 11 22:07:15 CST 2025, modifyTime=null, lastLoginTime=null, ssex=2, description=null, avatar=default.jpg, roleId=76, roleName=null, sortField=null, sortOrder=null, createTimeFrom=null, createTimeTo=null, id=null)\"', '127.0.0.1', '2025-01-11 22:07:16', '');
INSERT INTO `t_log` VALUES (1902, 'mrbird', '修改菜单/按钮', 22, 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=177, parentId=171, menuName=店内库存, path=/doctor/inventory, component=doctor/inventory/Inventory, perms=null, icon=null, type=0, orderNum=6.0, createTime=null, modifyTime=Sat Jan 11 23:01:37 CST 2025, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2025-01-11 23:01:38', '');

-- ----------------------------
-- Table structure for t_login_log
-- ----------------------------
DROP TABLE IF EXISTS `t_login_log`;
CREATE TABLE `t_login_log`  (
  `USERNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `LOGIN_TIME` datetime(0) NOT NULL COMMENT '登录时间',
  `LOCATION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录地点',
  `IP` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_login_log
-- ----------------------------
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-12 03:18:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-10 03:18:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-09 03:18:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-11 03:18:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-12 04:23:45', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-15 03:31:18', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-15 03:36:28', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-15 06:05:36', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-15 08:44:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-15 09:02:42', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-15 09:24:21', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-15 09:25:16', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-15 10:14:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-15 10:48:59', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-14 11:02:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-13 11:02:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-15 11:02:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 01:20:24', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 02:25:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 03:25:11', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 03:44:23', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 05:44:05', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 05:51:12', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-16 05:51:21', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 05:54:03', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 06:18:57', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 06:31:19', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 07:32:02', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 01:10:42', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 02:21:12', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 06:07:00', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 06:45:24', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 06:46:40', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 06:54:23', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 06:54:53', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 06:55:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 07:38:37', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 07:39:14', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 07:40:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 07:41:41', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-17 07:42:53', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-17 07:43:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 08:13:29', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 08:39:56', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 09:26:19', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 09:26:58', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 09:30:15', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbirdd', '2019-01-17 10:31:40', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('jack', '2019-01-17 10:41:14', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('abcd', '2019-01-17 10:47:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('abcd', '2019-01-17 10:48:06', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('abcd', '2019-01-17 10:48:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('abcd', '2019-01-17 10:51:35', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('wuyouzhugu', '2019-01-17 10:54:56', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 10:56:53', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 10:59:15', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 10:59:53', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 11:01:54', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 11:08:43', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 11:12:55', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 11:13:21', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 00:56:15', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 01:21:54', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 01:33:06', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 02:03:32', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 02:27:12', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 02:36:26', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 02:41:49', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 02:53:12', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 02:56:00', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 03:00:35', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 05:36:02', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 05:57:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 06:50:27', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 07:09:37', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 08:57:02', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 09:00:06', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 01:13:17', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 01:14:42', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 01:50:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 02:05:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 02:06:52', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 02:11:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 02:12:13', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 02:12:27', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 02:33:21', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 02:40:19', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 03:05:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 03:16:03', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 05:43:32', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 05:44:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 06:47:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 06:49:51', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 07:48:30', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 07:50:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 07:55:22', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 07:57:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 08:35:07', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 08:58:37', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 11:05:26', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 00:47:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 01:02:23', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 01:38:19', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 02:39:18', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 05:39:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 05:44:25', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 06:04:18', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 06:04:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 06:13:00', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 06:13:17', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-22 06:13:43', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-22 06:14:41', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-22 06:15:10', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('hello', '2019-01-22 06:15:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('hello', '2019-01-22 06:17:19', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('hello', '2019-01-22 06:18:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 06:19:03', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 06:20:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 07:04:26', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 07:06:07', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 07:06:57', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 08:37:28', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 10:29:50', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-23 00:50:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-23 01:51:42', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-23 02:58:49', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-23 06:11:14', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-23 06:46:30', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-23 06:48:25', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-23 06:51:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-23 07:30:25', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-23 07:34:28', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('jack', '2019-01-23 07:35:56', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-23 07:36:46', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 01:30:13', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 01:42:03', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 01:48:10', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 01:50:12', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 01:50:28', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 02:57:48', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 03:02:53', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-24 03:14:51', '中国|华东|福建省|厦门市|电信', '120.36.172.239');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 03:41:10', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 05:38:30', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 08:50:44', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('jack', '2019-01-24 08:52:03', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-24 08:52:31', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 11:12:33', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-24 11:24:04', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 11:47:56', '中国|华东|福建省|福州市|电信', '27.155.195.27');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-24 11:48:28', '中国|华东|福建省|福州市|电信', '27.155.195.27');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-28 01:53:06', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-28 01:53:58', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-28 01:54:09', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2023-01-14 15:55:03', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2023-01-14 15:57:14', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2023-01-14 18:17:43', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2023-01-15 12:51:01', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-01-15 15:04:11', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-01-15 18:41:20', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-01-16 22:29:20', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-01-28 21:00:02', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-01-28 22:36:43', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-01-29 22:08:45', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-01-29 23:11:25', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-01-31 08:10:32', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-01 21:12:21', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-02 20:30:31', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-02 21:31:24', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-02 22:46:16', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-05 14:44:53', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-05 20:04:26', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2023-02-05 20:53:38', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-05 20:54:42', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-05 21:58:19', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2023-02-05 22:37:06', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-05 22:38:28', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-06 21:04:09', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-06 22:08:55', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-07 19:55:13', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-07 22:43:14', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-08 21:19:22', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-08 22:20:55', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-09 23:30:52', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-10 17:15:33', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2023-02-10 17:16:02', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-10 17:19:02', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-10 22:58:32', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-11 00:02:46', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-11 01:15:59', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-11 11:46:34', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-11 12:50:55', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-11 14:57:27', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-11 17:04:00', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-12 12:20:18', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-13 21:18:06', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-13 22:18:24', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-14 20:22:47', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2023-02-14 20:23:04', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-14 20:24:21', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-14 23:08:44', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-15 20:30:18', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-02-15 21:13:35', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-03-19 12:29:39', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-04-25 20:58:47', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2023-04-25 20:58:52', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-04-25 21:25:27', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-05-06 22:59:00', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2023-05-06 23:03:13', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-06 23:11:14', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-07 09:03:34', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-07 10:33:24', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-07 11:34:31', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-07 13:05:45', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-07 20:19:54', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-07 21:40:37', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-08 21:18:38', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-05-08 21:48:10', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-08 21:48:33', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-09 21:32:32', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-11 09:22:25', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-11 12:16:39', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2023-05-11 12:18:06', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-12 00:01:04', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-12 09:27:36', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-12 10:46:52', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2023-05-12 10:47:22', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-12 10:47:45', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-12 10:51:39', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-05-12 11:20:32', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-12 11:33:37', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-05-12 11:50:15', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-12 12:02:36', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('test', '2023-05-12 12:04:45', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-12 12:06:04', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-05-12 12:08:17', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-05-12 12:08:31', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-07-04 21:25:09', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-07-04 21:25:48', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-07-04 21:27:33', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-09-14 21:21:58', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-09-14 21:22:05', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-09-14 21:24:54', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-09-14 21:27:11', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-09-14 21:29:53', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-06 09:42:17', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2023-10-06 10:00:10', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-06 10:06:17', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-11 21:43:48', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-10-11 21:50:06', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-11 21:54:21', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-11 22:13:51', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-11 22:20:59', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-10-11 22:21:06', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2023-10-13 22:02:47', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-13 22:15:16', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-14 00:03:22', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-14 00:03:24', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2023-10-14 00:03:49', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-14 00:05:21', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-14 08:28:46', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-14 18:13:11', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-14 19:22:27', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-15 22:15:12', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-16 21:58:17', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-16 23:04:12', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-18 09:01:52', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-18 20:59:22', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-18 22:19:03', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-19 21:15:55', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2023-10-19 21:32:23', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-10-19 21:35:42', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2023-10-19 21:37:42', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-19 21:37:47', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2023-10-19 21:40:49', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-19 21:41:51', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-21 16:45:45', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2023-10-21 17:15:46', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-21 17:17:39', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-22 09:26:25', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2023-10-22 09:27:01', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-22 09:37:45', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-22 17:04:46', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2023-10-22 17:17:15', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2025-01-11 20:12:52', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('test', '2025-01-11 20:15:23', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2025-01-11 20:15:36', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2025-01-11 20:16:32', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2025-01-11 20:16:49', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2025-01-11 20:17:53', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2025-01-11 22:01:28', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fkkk', '2025-01-11 22:08:10', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2025-01-11 23:00:55', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fkkk', '2025-01-11 23:01:43', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fkkk', '2025-01-12 09:30:30', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2025-01-12 09:32:57', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fkkk', '2025-01-12 09:34:56', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2025-01-12 09:51:29', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fkkk', '2025-01-12 09:54:04', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2025-01-12 10:04:40', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fkkk', '2025-01-12 10:06:33', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2025-01-12 10:06:57', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fkkk', '2025-01-12 10:09:41', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2025-01-12 21:51:17', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('admin', '2025-01-13 08:16:01', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fkkk', '2025-01-13 08:19:18', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('fank', '2025-01-13 08:20:00', '', '127.0.0.1');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `MENU_ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `PARENT_ID` bigint(0) NOT NULL COMMENT '上级菜单ID',
  `MENU_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单/按钮名称',
  `PATH` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对应路由path',
  `COMPONENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对应路由组件component',
  `PERMS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `ICON` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `TYPE` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型 0菜单 1按钮',
  `ORDER_NUM` double(20, 0) NULL DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime(0) NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`MENU_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 179 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (1, 0, '系统管理', '/system', 'PageView', NULL, 'appstore-o', '0', 1, '2017-12-27 16:39:07', '2019-01-05 11:13:14');
INSERT INTO `t_menu` VALUES (2, 0, '系统监控', '/monitor', 'PageView', NULL, 'dashboard', '0', 2, '2017-12-27 16:45:51', '2019-01-23 06:27:12');
INSERT INTO `t_menu` VALUES (3, 1, '用户管理', '/system/user', 'system/user/User', 'user:view', '', '0', 1, '2017-12-27 16:47:13', '2019-01-22 06:45:55');
INSERT INTO `t_menu` VALUES (4, 1, '角色管理', '/system/role', 'system/role/Role', 'role:view', '', '0', 2, '2017-12-27 16:48:09', '2018-04-25 09:01:12');
INSERT INTO `t_menu` VALUES (5, 1, '菜单管理', '/system/menu', 'system/menu/Menu', 'menu:view', '', '0', 3, '2017-12-27 16:48:57', '2018-04-25 09:01:30');
INSERT INTO `t_menu` VALUES (6, 1, '部门管理', '/system/dept', 'system/dept/Dept', 'dept:view', '', '0', 4, '2017-12-27 16:57:33', '2018-04-25 09:01:40');
INSERT INTO `t_menu` VALUES (8, 2, '在线用户', '/monitor/online', 'monitor/Online', 'user:online', '', '0', 1, '2017-12-27 16:59:33', '2018-04-25 09:02:04');
INSERT INTO `t_menu` VALUES (10, 2, '系统日志', '/monitor/systemlog', 'monitor/SystemLog', 'log:view', '', '0', 2, '2017-12-27 17:00:50', '2018-04-25 09:02:18');
INSERT INTO `t_menu` VALUES (11, 3, '新增用户', '', '', 'user:add', NULL, '1', NULL, '2017-12-27 17:02:58', NULL);
INSERT INTO `t_menu` VALUES (12, 3, '修改用户', '', '', 'user:update', NULL, '1', NULL, '2017-12-27 17:04:07', NULL);
INSERT INTO `t_menu` VALUES (13, 3, '删除用户', '', '', 'user:delete', NULL, '1', NULL, '2017-12-27 17:04:58', NULL);
INSERT INTO `t_menu` VALUES (14, 4, '新增角色', '', '', 'role:add', NULL, '1', NULL, '2017-12-27 17:06:38', NULL);
INSERT INTO `t_menu` VALUES (15, 4, '修改角色', '', '', 'role:update', NULL, '1', NULL, '2017-12-27 17:06:38', NULL);
INSERT INTO `t_menu` VALUES (16, 4, '删除角色', '', '', 'role:delete', NULL, '1', NULL, '2017-12-27 17:06:38', NULL);
INSERT INTO `t_menu` VALUES (17, 5, '新增菜单', '', '', 'menu:add', NULL, '1', NULL, '2017-12-27 17:08:02', NULL);
INSERT INTO `t_menu` VALUES (18, 5, '修改菜单', '', '', 'menu:update', NULL, '1', NULL, '2017-12-27 17:08:02', NULL);
INSERT INTO `t_menu` VALUES (19, 5, '删除菜单', '', '', 'menu:delete', NULL, '1', NULL, '2017-12-27 17:08:02', NULL);
INSERT INTO `t_menu` VALUES (20, 6, '新增部门', '', '', 'dept:add', NULL, '1', NULL, '2017-12-27 17:09:24', NULL);
INSERT INTO `t_menu` VALUES (21, 6, '修改部门', '', '', 'dept:update', NULL, '1', NULL, '2017-12-27 17:09:24', NULL);
INSERT INTO `t_menu` VALUES (22, 6, '删除部门', '', '', 'dept:delete', NULL, '1', NULL, '2017-12-27 17:09:24', NULL);
INSERT INTO `t_menu` VALUES (23, 8, '踢出用户', '', '', 'user:kickout', NULL, '1', NULL, '2017-12-27 17:11:13', NULL);
INSERT INTO `t_menu` VALUES (24, 10, '删除日志', '', '', 'log:delete', NULL, '1', NULL, '2017-12-27 17:11:45', NULL);
INSERT INTO `t_menu` VALUES (58, 0, '网络资源', '/web', 'PageView', NULL, 'compass', '0', 4, '2018-01-12 15:28:48', '2018-01-22 19:49:26');
INSERT INTO `t_menu` VALUES (59, 58, '天气查询', '/web/weather', 'web/Weather', 'weather:view', '', '0', 1, '2018-01-12 15:40:02', '2019-01-22 05:43:19');
INSERT INTO `t_menu` VALUES (61, 58, '每日一文', '/web/dailyArticle', 'web/DailyArticle', 'article:view', '', '0', 2, '2018-01-15 17:17:14', '2019-01-22 05:43:27');
INSERT INTO `t_menu` VALUES (64, 1, '字典管理', '/system/dict', 'system/dict/Dict', 'dict:view', '', '0', 5, '2018-01-18 10:38:25', '2018-04-25 09:01:50');
INSERT INTO `t_menu` VALUES (65, 64, '新增字典', '', '', 'dict:add', NULL, '1', NULL, '2018-01-18 19:10:08', NULL);
INSERT INTO `t_menu` VALUES (66, 64, '修改字典', '', '', 'dict:update', NULL, '1', NULL, '2018-01-18 19:10:27', NULL);
INSERT INTO `t_menu` VALUES (67, 64, '删除字典', '', '', 'dict:delete', NULL, '1', NULL, '2018-01-18 19:10:47', NULL);
INSERT INTO `t_menu` VALUES (81, 58, '影视资讯', '/web/movie', 'EmptyPageView', NULL, NULL, '0', 3, '2018-01-22 14:12:59', '2019-01-22 05:43:35');
INSERT INTO `t_menu` VALUES (82, 81, '正在热映', '/web/movie/hot', 'web/MovieHot', 'movie:hot', '', '0', 1, '2018-01-22 14:13:47', '2019-01-22 05:43:52');
INSERT INTO `t_menu` VALUES (83, 81, '即将上映', '/web/movie/coming', 'web/MovieComing', 'movie:coming', '', '0', 2, '2018-01-22 14:14:36', '2019-01-22 05:43:58');
INSERT INTO `t_menu` VALUES (101, 0, '任务调度', '/job', 'PageView', NULL, 'clock-circle-o', '0', 3, '2018-01-11 15:52:57', NULL);
INSERT INTO `t_menu` VALUES (102, 101, '定时任务', '/job/job', 'quartz/job/Job', 'job:view', '', '0', 1, '2018-02-24 15:53:53', '2019-01-22 05:42:50');
INSERT INTO `t_menu` VALUES (103, 102, '新增任务', '', '', 'job:add', NULL, '1', NULL, '2018-02-24 15:55:10', NULL);
INSERT INTO `t_menu` VALUES (104, 102, '修改任务', '', '', 'job:update', NULL, '1', NULL, '2018-02-24 15:55:53', NULL);
INSERT INTO `t_menu` VALUES (105, 102, '删除任务', '', '', 'job:delete', NULL, '1', NULL, '2018-02-24 15:56:18', NULL);
INSERT INTO `t_menu` VALUES (106, 102, '暂停任务', '', '', 'job:pause', NULL, '1', NULL, '2018-02-24 15:57:08', NULL);
INSERT INTO `t_menu` VALUES (107, 102, '恢复任务', '', '', 'job:resume', NULL, '1', NULL, '2018-02-24 15:58:21', NULL);
INSERT INTO `t_menu` VALUES (108, 102, '立即执行任务', '', '', 'job:run', NULL, '1', NULL, '2018-02-24 15:59:45', NULL);
INSERT INTO `t_menu` VALUES (109, 101, '调度日志', '/job/log', 'quartz/log/JobLog', 'jobLog:view', '', '0', 2, '2018-02-24 16:00:45', '2019-01-22 05:42:59');
INSERT INTO `t_menu` VALUES (110, 109, '删除日志', '', '', 'jobLog:delete', NULL, '1', NULL, '2018-02-24 16:01:21', NULL);
INSERT INTO `t_menu` VALUES (113, 2, 'Redis监控', '/monitor/redis/info', 'monitor/RedisInfo', 'redis:view', '', '0', 3, '2018-06-28 14:29:42', NULL);
INSERT INTO `t_menu` VALUES (121, 2, '请求追踪', '/monitor/httptrace', 'monitor/Httptrace', NULL, NULL, '0', 4, '2019-01-18 02:30:29', NULL);
INSERT INTO `t_menu` VALUES (122, 2, '系统信息', '/monitor/system', 'EmptyPageView', NULL, NULL, '0', 5, '2019-01-18 02:31:48', '2019-01-18 02:39:46');
INSERT INTO `t_menu` VALUES (123, 122, 'Tomcat信息', '/monitor/system/tomcatinfo', 'monitor/TomcatInfo', NULL, NULL, '0', 2, '2019-01-18 02:32:53', '2019-01-18 02:46:57');
INSERT INTO `t_menu` VALUES (124, 122, 'JVM信息', '/monitor/system/jvminfo', 'monitor/JvmInfo', NULL, NULL, '0', 1, '2019-01-18 02:33:30', '2019-01-18 02:46:51');
INSERT INTO `t_menu` VALUES (127, 122, '服务器信息', '/monitor/system/info', 'monitor/SystemInfo', NULL, NULL, '0', 3, '2019-01-21 07:53:43', '2019-01-21 07:57:00');
INSERT INTO `t_menu` VALUES (128, 0, '其他模块', '/others', 'PageView', NULL, 'coffee', '0', 5, '2019-01-22 06:49:59', '2019-01-22 06:50:13');
INSERT INTO `t_menu` VALUES (129, 128, '导入导出', '/others/excel', 'others/Excel', NULL, NULL, '0', 1, '2019-01-22 06:51:36', '2019-01-22 07:06:45');
INSERT INTO `t_menu` VALUES (130, 3, '导出Excel', NULL, NULL, 'user:export', NULL, '1', NULL, '2019-01-23 06:35:16', NULL);
INSERT INTO `t_menu` VALUES (131, 4, '导出Excel', NULL, NULL, 'role:export', NULL, '1', NULL, '2019-01-23 06:35:36', NULL);
INSERT INTO `t_menu` VALUES (132, 5, '导出Excel', NULL, NULL, 'menu:export', NULL, '1', NULL, '2019-01-23 06:36:05', NULL);
INSERT INTO `t_menu` VALUES (133, 6, '导出Excel', NULL, NULL, 'dept:export', NULL, '1', NULL, '2019-01-23 06:36:25', NULL);
INSERT INTO `t_menu` VALUES (134, 64, '导出Excel', NULL, NULL, 'dict:export', NULL, '1', NULL, '2019-01-23 06:36:43', NULL);
INSERT INTO `t_menu` VALUES (135, 3, '密码重置', NULL, NULL, 'user:reset', NULL, '1', NULL, '2019-01-23 06:37:00', NULL);
INSERT INTO `t_menu` VALUES (136, 10, '导出Excel', NULL, NULL, 'log:export', NULL, '1', NULL, '2019-01-23 06:37:27', NULL);
INSERT INTO `t_menu` VALUES (137, 102, '导出Excel', NULL, NULL, 'job:export', NULL, '1', NULL, '2019-01-23 06:37:59', NULL);
INSERT INTO `t_menu` VALUES (138, 109, '导出Excel', NULL, NULL, 'jobLog:export', NULL, '1', NULL, '2019-01-23 06:38:32', NULL);
INSERT INTO `t_menu` VALUES (139, 0, '系统管理', '/manage', 'PageView', NULL, 'appstore', '0', 6, '2023-01-15 13:07:52', NULL);
INSERT INTO `t_menu` VALUES (140, 139, '公告管理', '/manage/bulletin', 'manage/bulletin/Bulletin', NULL, NULL, '0', 1, '2023-01-15 13:10:23', NULL);
INSERT INTO `t_menu` VALUES (141, 139, '药品管理', '/manage/drug', 'manage/drug/Drug', NULL, NULL, '0', 2, '2023-01-15 13:11:08', NULL);
INSERT INTO `t_menu` VALUES (142, 139, '库存统计', '/manage/statistics', 'manage/statistics/Statistics', NULL, NULL, '0', 3, '2023-01-15 13:12:25', '2023-02-10 17:18:51');
INSERT INTO `t_menu` VALUES (143, 139, '物流信息', '/manage/logistics', 'manage/logistics/Logistics', NULL, NULL, '0', 4, '2023-01-15 13:13:06', NULL);
INSERT INTO `t_menu` VALUES (144, 139, '订单详情', '/manage/detail', 'manage/detail/Detail', NULL, NULL, '0', 5, '2023-01-15 13:14:14', NULL);
INSERT INTO `t_menu` VALUES (145, 139, '订单评价', '/manage/evaluate', 'manage/evaluate/Evaluate', NULL, NULL, '0', 6, '2023-01-15 13:16:13', NULL);
INSERT INTO `t_menu` VALUES (146, 139, '订单信息', '/manage/order', 'manage/order/Order', NULL, NULL, '0', 7, '2023-01-15 13:17:10', NULL);
INSERT INTO `t_menu` VALUES (147, 139, '缴费记录', '/manage/payment', 'manage/payment/Payment', NULL, NULL, '0', 8, '2023-01-15 13:19:32', NULL);
INSERT INTO `t_menu` VALUES (148, 139, '药店管理', '/manage/pharmacy', 'manage/pharmacy/Pharmacy', NULL, NULL, '0', 9, '2023-01-15 13:21:55', NULL);
INSERT INTO `t_menu` VALUES (149, 139, '药店库存', '/manage/pharmacyInventory', 'manage/inventory/Inventory', NULL, NULL, '0', 10, '2023-01-15 13:22:46', '2023-02-05 20:54:36');
INSERT INTO `t_menu` VALUES (150, 139, '员工管理', '/manage/staff', 'manage/staff/Staff', NULL, NULL, '0', 11, '2023-01-15 13:23:22', NULL);
INSERT INTO `t_menu` VALUES (151, 139, '用户管理', '/manage/user', 'manage/user/User', NULL, NULL, '0', 12, '2023-01-15 13:23:54', NULL);
INSERT INTO `t_menu` VALUES (152, 0, '数据统计', '/statistics', 'PageView', NULL, 'project', '0', 7, '2023-01-15 13:26:03', NULL);
INSERT INTO `t_menu` VALUES (153, 152, '销售排行', '/statistics/sale', 'statistics/sale/Sale', NULL, NULL, '0', 1, '2023-01-15 13:26:53', NULL);
INSERT INTO `t_menu` VALUES (154, 152, '员工统计', '/statistics/staff', 'statistics/staff/Staff', NULL, NULL, '0', 2, '2023-01-15 13:27:23', NULL);
INSERT INTO `t_menu` VALUES (155, 0, '我的信息', '/user', 'PageView', NULL, 'appstore', '0', 8, '2023-04-25 21:00:07', NULL);
INSERT INTO `t_menu` VALUES (156, 155, '个人信息', '/user/personal', 'user/personal/Personal', NULL, '', '0', 1, '2023-04-25 21:02:30', NULL);
INSERT INTO `t_menu` VALUES (157, 155, '我的订单', '/user/order', 'user/order/Order', NULL, NULL, '0', 2, '2023-04-25 21:10:05', NULL);
INSERT INTO `t_menu` VALUES (158, 155, '缴费记录', '/user/record', 'user/record/Record', NULL, NULL, '0', 3, '2023-04-25 21:11:06', NULL);
INSERT INTO `t_menu` VALUES (159, 155, '订单评价', '/user/evaluate', 'user/evaluate/Evaluate', NULL, NULL, '0', 4, '2023-04-25 21:11:34', NULL);
INSERT INTO `t_menu` VALUES (160, 155, '药品购买', '/user/cart', 'user/cart/Cart', NULL, '', '0', 5, '2023-05-06 23:06:46', NULL);
INSERT INTO `t_menu` VALUES (161, 155, '支付结果', '/user/pay', 'user/pay/Pay', NULL, '', '0', 6, '2023-05-11 12:19:32', NULL);
INSERT INTO `t_menu` VALUES (162, 139, '管理员管理', '/manage/admin', 'manage/admin/Admin', NULL, '', '0', 13, '2023-10-06 10:01:16', NULL);
INSERT INTO `t_menu` VALUES (163, 0, '供应采购', '/supply', 'PageView', NULL, 'file-word', '0', 6, '2023-10-13 22:05:01', '2023-10-13 22:08:50');
INSERT INTO `t_menu` VALUES (164, 163, '供应商管理', '/supply/enterprise', 'supply/enterprise/Enterprise', NULL, NULL, '0', 1, '2023-10-13 22:08:35', NULL);
INSERT INTO `t_menu` VALUES (165, 139, '电子处方', '/supply/medication', 'supply/medication/Medication', NULL, NULL, '0', 2, '2023-10-13 22:10:51', '2023-10-19 21:34:02');
INSERT INTO `t_menu` VALUES (166, 163, '药品采购', '/supply/purchase', 'supply/purchase/Purchase', NULL, NULL, '0', 3, '2023-10-13 22:11:52', NULL);
INSERT INTO `t_menu` VALUES (167, 139, '库房预警', '/supply/alert', 'supply/alert/Alert', NULL, NULL, '0', 4, '2023-10-13 22:12:28', '2023-10-19 21:34:13');
INSERT INTO `t_menu` VALUES (168, 152, '销售统计', '/statistics/rank', 'statistics/rank/Rank', NULL, NULL, '0', 3, '2023-10-13 22:14:43', '2023-10-21 17:16:48');
INSERT INTO `t_menu` VALUES (169, 155, '药品处方', '/user/medication', 'user/medication/Medication', NULL, '', '0', 3, '2023-10-19 21:35:23', NULL);
INSERT INTO `t_menu` VALUES (170, 163, '采购物流', '/supply/logistics', 'supply/logistics/Logistics', NULL, '', '0', 3, '2023-10-22 09:28:03', NULL);
INSERT INTO `t_menu` VALUES (171, 0, '店内管理', '/doctor', 'PageView', NULL, 'scan', '0', 9, '2025-01-11 20:19:00', NULL);
INSERT INTO `t_menu` VALUES (172, 171, '电子处方', '/doctor/medication', 'doctor/medication/Medication', NULL, NULL, '0', 1, '2025-01-11 20:20:28', NULL);
INSERT INTO `t_menu` VALUES (173, 171, '库存统计', '/doctor/statistics', 'doctor/statistics/Statistics', NULL, NULL, '0', 2, '2025-01-11 20:21:00', NULL);
INSERT INTO `t_menu` VALUES (174, 171, '订单物流', '/doctor/logistics', 'doctor/logistics/Logistics', NULL, NULL, '0', 3, '2025-01-11 20:21:37', NULL);
INSERT INTO `t_menu` VALUES (175, 171, '订单管理', '/doctor/order', 'doctor/order/Order', NULL, NULL, '0', 4, '2025-01-11 20:22:11', NULL);
INSERT INTO `t_menu` VALUES (176, 171, '订单评价', '/doctor/evaluate', 'doctor/evaluate/Evaluate', NULL, NULL, '0', 5, '2025-01-11 20:22:44', NULL);
INSERT INTO `t_menu` VALUES (177, 171, '店内库存', '/doctor/inventory', 'doctor/inventory/Inventory', NULL, NULL, '0', 6, '2025-01-11 20:23:25', '2025-01-11 23:01:38');
INSERT INTO `t_menu` VALUES (178, 171, '员工管理', '/doctor/staff', 'doctor/staff/Staff', NULL, NULL, '0', 7, '2025-01-11 20:23:56', NULL);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `ROLE_ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `ROLE_NAME` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `CREATE_TIME` datetime(0) NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ROLE_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '管理员', '管理员', '2017-12-27 16:23:11', '2019-01-23 06:45:29');
INSERT INTO `t_role` VALUES (2, '注册用户', '可查看，新增，导出', '2019-01-04 14:11:28', '2019-01-23 07:37:08');
INSERT INTO `t_role` VALUES (72, '普通用户', '只可查看，好可怜哦', '2019-01-23 07:33:20', NULL);
INSERT INTO `t_role` VALUES (74, '超级管理员', '', '2023-01-15 13:24:17', '2023-10-22 09:28:13');
INSERT INTO `t_role` VALUES (75, '用户', '', '2023-04-25 21:11:52', '2023-10-19 21:35:34');
INSERT INTO `t_role` VALUES (76, '药店医生', '', '2025-01-11 20:24:21', NULL);

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu`  (
  `ROLE_ID` bigint(0) NOT NULL,
  `MENU_ID` bigint(0) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES (1, 1);
INSERT INTO `t_role_menu` VALUES (1, 3);
INSERT INTO `t_role_menu` VALUES (1, 11);
INSERT INTO `t_role_menu` VALUES (1, 12);
INSERT INTO `t_role_menu` VALUES (1, 13);
INSERT INTO `t_role_menu` VALUES (1, 4);
INSERT INTO `t_role_menu` VALUES (1, 14);
INSERT INTO `t_role_menu` VALUES (1, 15);
INSERT INTO `t_role_menu` VALUES (1, 16);
INSERT INTO `t_role_menu` VALUES (1, 5);
INSERT INTO `t_role_menu` VALUES (1, 17);
INSERT INTO `t_role_menu` VALUES (1, 18);
INSERT INTO `t_role_menu` VALUES (1, 19);
INSERT INTO `t_role_menu` VALUES (1, 6);
INSERT INTO `t_role_menu` VALUES (1, 20);
INSERT INTO `t_role_menu` VALUES (1, 21);
INSERT INTO `t_role_menu` VALUES (1, 22);
INSERT INTO `t_role_menu` VALUES (1, 64);
INSERT INTO `t_role_menu` VALUES (1, 65);
INSERT INTO `t_role_menu` VALUES (1, 66);
INSERT INTO `t_role_menu` VALUES (1, 67);
INSERT INTO `t_role_menu` VALUES (1, 2);
INSERT INTO `t_role_menu` VALUES (1, 8);
INSERT INTO `t_role_menu` VALUES (1, 23);
INSERT INTO `t_role_menu` VALUES (1, 10);
INSERT INTO `t_role_menu` VALUES (1, 24);
INSERT INTO `t_role_menu` VALUES (1, 113);
INSERT INTO `t_role_menu` VALUES (1, 121);
INSERT INTO `t_role_menu` VALUES (1, 122);
INSERT INTO `t_role_menu` VALUES (1, 124);
INSERT INTO `t_role_menu` VALUES (1, 123);
INSERT INTO `t_role_menu` VALUES (1, 125);
INSERT INTO `t_role_menu` VALUES (1, 101);
INSERT INTO `t_role_menu` VALUES (1, 102);
INSERT INTO `t_role_menu` VALUES (1, 103);
INSERT INTO `t_role_menu` VALUES (1, 104);
INSERT INTO `t_role_menu` VALUES (1, 105);
INSERT INTO `t_role_menu` VALUES (1, 106);
INSERT INTO `t_role_menu` VALUES (1, 107);
INSERT INTO `t_role_menu` VALUES (1, 108);
INSERT INTO `t_role_menu` VALUES (1, 109);
INSERT INTO `t_role_menu` VALUES (1, 110);
INSERT INTO `t_role_menu` VALUES (1, 58);
INSERT INTO `t_role_menu` VALUES (1, 59);
INSERT INTO `t_role_menu` VALUES (1, 61);
INSERT INTO `t_role_menu` VALUES (1, 81);
INSERT INTO `t_role_menu` VALUES (1, 82);
INSERT INTO `t_role_menu` VALUES (1, 83);
INSERT INTO `t_role_menu` VALUES (1, 127);
INSERT INTO `t_role_menu` VALUES (1, 128);
INSERT INTO `t_role_menu` VALUES (1, 129);
INSERT INTO `t_role_menu` VALUES (1, 130);
INSERT INTO `t_role_menu` VALUES (1, 135);
INSERT INTO `t_role_menu` VALUES (1, 131);
INSERT INTO `t_role_menu` VALUES (1, 132);
INSERT INTO `t_role_menu` VALUES (1, 133);
INSERT INTO `t_role_menu` VALUES (1, 134);
INSERT INTO `t_role_menu` VALUES (1, 136);
INSERT INTO `t_role_menu` VALUES (1, 137);
INSERT INTO `t_role_menu` VALUES (1, 138);
INSERT INTO `t_role_menu` VALUES (72, 1);
INSERT INTO `t_role_menu` VALUES (72, 3);
INSERT INTO `t_role_menu` VALUES (72, 4);
INSERT INTO `t_role_menu` VALUES (72, 5);
INSERT INTO `t_role_menu` VALUES (72, 6);
INSERT INTO `t_role_menu` VALUES (72, 64);
INSERT INTO `t_role_menu` VALUES (72, 2);
INSERT INTO `t_role_menu` VALUES (72, 8);
INSERT INTO `t_role_menu` VALUES (72, 10);
INSERT INTO `t_role_menu` VALUES (72, 113);
INSERT INTO `t_role_menu` VALUES (72, 121);
INSERT INTO `t_role_menu` VALUES (72, 122);
INSERT INTO `t_role_menu` VALUES (72, 124);
INSERT INTO `t_role_menu` VALUES (72, 123);
INSERT INTO `t_role_menu` VALUES (72, 127);
INSERT INTO `t_role_menu` VALUES (72, 101);
INSERT INTO `t_role_menu` VALUES (72, 102);
INSERT INTO `t_role_menu` VALUES (72, 109);
INSERT INTO `t_role_menu` VALUES (72, 58);
INSERT INTO `t_role_menu` VALUES (72, 59);
INSERT INTO `t_role_menu` VALUES (72, 61);
INSERT INTO `t_role_menu` VALUES (72, 81);
INSERT INTO `t_role_menu` VALUES (72, 82);
INSERT INTO `t_role_menu` VALUES (72, 83);
INSERT INTO `t_role_menu` VALUES (72, 128);
INSERT INTO `t_role_menu` VALUES (72, 129);
INSERT INTO `t_role_menu` VALUES (2, 3);
INSERT INTO `t_role_menu` VALUES (2, 1);
INSERT INTO `t_role_menu` VALUES (2, 4);
INSERT INTO `t_role_menu` VALUES (2, 5);
INSERT INTO `t_role_menu` VALUES (2, 6);
INSERT INTO `t_role_menu` VALUES (2, 64);
INSERT INTO `t_role_menu` VALUES (2, 2);
INSERT INTO `t_role_menu` VALUES (2, 8);
INSERT INTO `t_role_menu` VALUES (2, 10);
INSERT INTO `t_role_menu` VALUES (2, 113);
INSERT INTO `t_role_menu` VALUES (2, 121);
INSERT INTO `t_role_menu` VALUES (2, 122);
INSERT INTO `t_role_menu` VALUES (2, 124);
INSERT INTO `t_role_menu` VALUES (2, 123);
INSERT INTO `t_role_menu` VALUES (2, 125);
INSERT INTO `t_role_menu` VALUES (2, 101);
INSERT INTO `t_role_menu` VALUES (2, 102);
INSERT INTO `t_role_menu` VALUES (2, 109);
INSERT INTO `t_role_menu` VALUES (2, 58);
INSERT INTO `t_role_menu` VALUES (2, 59);
INSERT INTO `t_role_menu` VALUES (2, 61);
INSERT INTO `t_role_menu` VALUES (2, 81);
INSERT INTO `t_role_menu` VALUES (2, 82);
INSERT INTO `t_role_menu` VALUES (2, 83);
INSERT INTO `t_role_menu` VALUES (2, 127);
INSERT INTO `t_role_menu` VALUES (2, 128);
INSERT INTO `t_role_menu` VALUES (2, 129);
INSERT INTO `t_role_menu` VALUES (2, 130);
INSERT INTO `t_role_menu` VALUES (2, 14);
INSERT INTO `t_role_menu` VALUES (2, 17);
INSERT INTO `t_role_menu` VALUES (2, 132);
INSERT INTO `t_role_menu` VALUES (2, 20);
INSERT INTO `t_role_menu` VALUES (2, 133);
INSERT INTO `t_role_menu` VALUES (2, 65);
INSERT INTO `t_role_menu` VALUES (2, 134);
INSERT INTO `t_role_menu` VALUES (2, 136);
INSERT INTO `t_role_menu` VALUES (2, 103);
INSERT INTO `t_role_menu` VALUES (2, 137);
INSERT INTO `t_role_menu` VALUES (2, 138);
INSERT INTO `t_role_menu` VALUES (2, 131);
INSERT INTO `t_role_menu` VALUES (75, 155);
INSERT INTO `t_role_menu` VALUES (75, 156);
INSERT INTO `t_role_menu` VALUES (75, 157);
INSERT INTO `t_role_menu` VALUES (75, 158);
INSERT INTO `t_role_menu` VALUES (75, 159);
INSERT INTO `t_role_menu` VALUES (75, 160);
INSERT INTO `t_role_menu` VALUES (75, 161);
INSERT INTO `t_role_menu` VALUES (75, 169);
INSERT INTO `t_role_menu` VALUES (74, 139);
INSERT INTO `t_role_menu` VALUES (74, 140);
INSERT INTO `t_role_menu` VALUES (74, 141);
INSERT INTO `t_role_menu` VALUES (74, 142);
INSERT INTO `t_role_menu` VALUES (74, 143);
INSERT INTO `t_role_menu` VALUES (74, 144);
INSERT INTO `t_role_menu` VALUES (74, 145);
INSERT INTO `t_role_menu` VALUES (74, 146);
INSERT INTO `t_role_menu` VALUES (74, 147);
INSERT INTO `t_role_menu` VALUES (74, 148);
INSERT INTO `t_role_menu` VALUES (74, 149);
INSERT INTO `t_role_menu` VALUES (74, 150);
INSERT INTO `t_role_menu` VALUES (74, 151);
INSERT INTO `t_role_menu` VALUES (74, 152);
INSERT INTO `t_role_menu` VALUES (74, 153);
INSERT INTO `t_role_menu` VALUES (74, 162);
INSERT INTO `t_role_menu` VALUES (74, 168);
INSERT INTO `t_role_menu` VALUES (74, 163);
INSERT INTO `t_role_menu` VALUES (74, 164);
INSERT INTO `t_role_menu` VALUES (74, 165);
INSERT INTO `t_role_menu` VALUES (74, 167);
INSERT INTO `t_role_menu` VALUES (74, 166);
INSERT INTO `t_role_menu` VALUES (74, 170);
INSERT INTO `t_role_menu` VALUES (76, 171);
INSERT INTO `t_role_menu` VALUES (76, 172);
INSERT INTO `t_role_menu` VALUES (76, 173);
INSERT INTO `t_role_menu` VALUES (76, 174);
INSERT INTO `t_role_menu` VALUES (76, 175);
INSERT INTO `t_role_menu` VALUES (76, 176);
INSERT INTO `t_role_menu` VALUES (76, 177);
INSERT INTO `t_role_menu` VALUES (76, 178);

-- ----------------------------
-- Table structure for t_test
-- ----------------------------
DROP TABLE IF EXISTS `t_test`;
CREATE TABLE `t_test`  (
  `FIELD1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FIELD2` int(0) NOT NULL,
  `FIELD3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CREATE_TIME` datetime(0) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_test
-- ----------------------------
INSERT INTO `t_test` VALUES ('字段1', 1, 'mrbird@gmail.com', '2019-01-22 16:26:51');
INSERT INTO `t_test` VALUES ('字段1', 1, 'mrbird0@gmail.com', '2019-01-23 03:01:03');
INSERT INTO `t_test` VALUES ('字段1', 2, 'mrbird1@gmail.com', '2019-01-23 03:01:03');
INSERT INTO `t_test` VALUES ('字段1', 3, 'mrbird2@gmail.com', '2019-01-23 03:01:03');
INSERT INTO `t_test` VALUES ('字段1', 4, 'mrbird3@gmail.com', '2019-01-23 03:01:03');
INSERT INTO `t_test` VALUES ('字段1', 5, 'mrbird4@gmail.com', '2019-01-23 03:01:03');
INSERT INTO `t_test` VALUES ('字段1', 10, 'mrbird9@gmail.com', '2019-01-23 03:01:03');
INSERT INTO `t_test` VALUES ('字段1', 1, 'mrbird0@gmail.com', '2019-01-23 03:03:49');
INSERT INTO `t_test` VALUES ('字段1', 2, 'mrbird1@gmail.com', '2019-01-23 03:03:49');
INSERT INTO `t_test` VALUES ('字段1', 3, 'mrbird2@gmail.com', '2019-01-23 03:03:49');
INSERT INTO `t_test` VALUES ('字段1', 4, 'mrbird3@gmail.com', '2019-01-23 03:03:49');
INSERT INTO `t_test` VALUES ('字段1', 5, 'mrbird4@gmail.com', '2019-01-23 03:03:49');
INSERT INTO `t_test` VALUES ('字段1', 10, 'mrbird9@gmail.com', '2019-01-23 03:03:49');
INSERT INTO `t_test` VALUES ('字段1', 1, 'mrbird0@gmail.com', '2019-01-23 03:07:47');
INSERT INTO `t_test` VALUES ('字段1', 2, 'mrbird1@gmail.com', '2019-01-23 03:07:47');
INSERT INTO `t_test` VALUES ('字段1', 3, 'mrbird2@gmail.com', '2019-01-23 03:07:47');
INSERT INTO `t_test` VALUES ('字段1', 4, 'mrbird3@gmail.com', '2019-01-23 03:07:47');
INSERT INTO `t_test` VALUES ('字段1', 5, 'mrbird4@gmail.com', '2019-01-23 03:07:47');
INSERT INTO `t_test` VALUES ('字段1', 6, 'mrbird5@gmail.com', '2019-01-23 03:07:47');
INSERT INTO `t_test` VALUES ('字段1', 1, 'mrbird0@gmail.com', '2019-01-23 03:08:09');
INSERT INTO `t_test` VALUES ('字段1', 2, 'mrbird1@gmail.com', '2019-01-23 03:08:09');
INSERT INTO `t_test` VALUES ('字段1', 3, 'mrbird2@gmail.com', '2019-01-23 03:08:09');
INSERT INTO `t_test` VALUES ('字段1', 4, 'mrbird3@gmail.com', '2019-01-23 03:08:09');
INSERT INTO `t_test` VALUES ('字段1', 5, 'mrbird4@gmail.com', '2019-01-23 03:08:09');
INSERT INTO `t_test` VALUES ('字段1', 10, 'mrbird9@gmail.com', '2019-01-23 03:08:09');
INSERT INTO `t_test` VALUES ('字段1', 1, 'mrbird0@gmail.com', '2019-01-23 03:19:52');
INSERT INTO `t_test` VALUES ('字段1', 2, 'mrbird1@gmail.com', '2019-01-23 03:19:52');
INSERT INTO `t_test` VALUES ('字段1', 3, 'mrbird2@gmail.com', '2019-01-23 03:19:52');
INSERT INTO `t_test` VALUES ('字段1', 4, 'mrbird3@gmail.com', '2019-01-23 03:19:52');
INSERT INTO `t_test` VALUES ('字段1', 5, 'mrbird4@gmail.com', '2019-01-23 03:19:52');
INSERT INTO `t_test` VALUES ('字段1', 6, 'mrbird5@gmail.com', '2019-01-23 03:19:52');
INSERT INTO `t_test` VALUES ('字段1', 1, 'mrbird0@gmail.com', '2019-01-23 03:20:56');
INSERT INTO `t_test` VALUES ('字段1', 2, 'mrbird1@gmail.com', '2019-01-23 03:20:56');
INSERT INTO `t_test` VALUES ('字段1', 3, 'mrbird2@gmail.com', '2019-01-23 03:20:56');
INSERT INTO `t_test` VALUES ('字段1', 4, 'mrbird3@gmail.com', '2019-01-23 03:20:56');
INSERT INTO `t_test` VALUES ('字段1', 5, 'mrbird4@gmail.com', '2019-01-23 03:20:56');
INSERT INTO `t_test` VALUES ('字段1', 6, 'mrbird5@gmail.com', '2019-01-23 03:20:56');
INSERT INTO `t_test` VALUES ('字段1', 1, 'mrbird0@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', 2, 'mrbird1@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', 3, 'mrbird2@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', 4, 'mrbird3@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', 5, 'mrbird4@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', 6, 'mrbird5@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', 7, 'mrbird6@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', 8, 'mrbird7@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', 9, 'mrbird8@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', 11, 'mrbird10@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', 12, 'mrbird11@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', 14, 'mrbird13@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', 15, 'mrbird14@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', 16, 'mrbird15@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', 18, 'mrbird17@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', 19, 'mrbird18@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', 20, 'mrbird19@gmail.com', '2019-01-23 06:12:38');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `USER_ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `DEPT_ID` bigint(0) NULL DEFAULT NULL COMMENT '部门ID',
  `EMAIL` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `MOBILE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `STATUS` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态 0锁定 1有效',
  `CREATE_TIME` datetime(0) NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `LAST_LOGIN_TIME` datetime(0) NULL DEFAULT NULL COMMENT '最近访问时间',
  `SSEX` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别 0男 1女 2保密',
  `DESCRIPTION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `AVATAR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`USER_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'mrbird', '94f860c4bbfeb2f49c84e321fdda4b07', 1, 'mrbird123@hotmail.com', '13455533233', '1', '2017-12-27 15:47:19', '2019-01-17 02:34:19', '2025-01-11 23:00:55', '2', '我是帅比作者。', 'ubnKSIfAJTxIgXOKlciN.png');
INSERT INTO `t_user` VALUES (2, 'scott', '7b44a5363e3fd52435beb472e1d2b91f', 6, 'scott@qq.com', '15134627380', '1', '2017-12-29 16:16:39', '2019-01-18 00:59:09', '2019-01-28 01:54:09', '0', '我是scott，嗯嗯', 'jZUIxmJycoymBprLOUbT.png');
INSERT INTO `t_user` VALUES (12, 'jack', '552649f10640385d0728a80a4242893e', 6, 'jack@hotmail.com', NULL, '1', '2019-01-23 07:34:05', '2019-01-24 03:08:01', '2019-01-24 08:52:03', '0', NULL, 'default.jpg');
INSERT INTO `t_user` VALUES (13, 'admin', '3ee4a28b103216fa2d140d1979297910', -1, NULL, NULL, '1', '2023-01-15 13:27:55', NULL, '2025-01-13 08:16:01', '2', NULL, 'default.jpg');
INSERT INTO `t_user` VALUES (14, 'fank', '19706f85f729c34626ae29c29d55cac5', NULL, NULL, NULL, '1', '2023-05-06 23:07:14', NULL, '2025-01-13 08:20:00', '2', NULL, 'default.jpg');
INSERT INTO `t_user` VALUES (15, 'test', '1c9a231a07da290d3286500bdd5fe8a9', NULL, NULL, NULL, '1', '2023-05-12 12:04:43', NULL, '2025-01-11 20:15:23', '2', '注册用户', 'default.jpg');
INSERT INTO `t_user` VALUES (16, 'admin1', 'd20a4a23fabcaf29967ede1fdb955072', -1, NULL, NULL, '1', '2023-10-06 10:19:36', NULL, NULL, '1', NULL, 'default.jpg');
INSERT INTO `t_user` VALUES (17, 'admin2', '980a012ecce52a36809052132cf99247', -1, NULL, NULL, '1', '2023-10-06 10:21:12', NULL, NULL, '1', NULL, 'default.jpg');
INSERT INTO `t_user` VALUES (18, 'fkkk', '5fd41b097acb41c642139202bb04df6e', NULL, NULL, NULL, '1', '2025-01-11 22:07:16', NULL, '2025-01-13 08:19:18', '2', NULL, 'default.jpg');

-- ----------------------------
-- Table structure for t_user_config
-- ----------------------------
DROP TABLE IF EXISTS `t_user_config`;
CREATE TABLE `t_user_config`  (
  `USER_ID` bigint(0) NOT NULL COMMENT '用户ID',
  `THEME` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统主题 dark暗色风格，light明亮风格',
  `LAYOUT` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统布局 side侧边栏，head顶部栏',
  `MULTI_PAGE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '页面风格 1多标签页 0单页',
  `FIX_SIDERBAR` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '页面滚动是否固定侧边栏 1固定 0不固定',
  `FIX_HEADER` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '页面滚动是否固定顶栏 1固定 0不固定',
  `COLOR` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主题颜色 RGB值',
  PRIMARY KEY (`USER_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_config
-- ----------------------------
INSERT INTO `t_user_config` VALUES (1, 'light', 'side', '1', '1', '1', 'rgb(24, 144, 255)');
INSERT INTO `t_user_config` VALUES (2, 'light', 'head', '0', '1', '1', 'rgb(24, 144, 255)');
INSERT INTO `t_user_config` VALUES (12, 'dark', 'side', '1', '1', '1', 'rgb(66, 185, 131)');
INSERT INTO `t_user_config` VALUES (13, 'light', 'head', '0', '1', '1', 'rgb(250, 173, 20)');
INSERT INTO `t_user_config` VALUES (14, 'dark', 'side', '1', '1', '1', 'rgb(47, 84, 235)');
INSERT INTO `t_user_config` VALUES (15, 'light', 'side', '0', '1', '1', 'rgb(66, 185, 131)');
INSERT INTO `t_user_config` VALUES (16, 'light', 'side', '0', '1', '1', 'rgb(66, 185, 131)');
INSERT INTO `t_user_config` VALUES (17, 'light', 'side', '0', '1', '1', 'rgb(66, 185, 131)');
INSERT INTO `t_user_config` VALUES (18, 'dark', 'side', '0', '1', '1', 'rgb(250, 173, 20)');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `USER_ID` bigint(0) NOT NULL COMMENT '用户ID',
  `ROLE_ID` bigint(0) NOT NULL COMMENT '角色ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES (1, 1);
INSERT INTO `t_user_role` VALUES (2, 2);
INSERT INTO `t_user_role` VALUES (12, 72);
INSERT INTO `t_user_role` VALUES (13, 74);
INSERT INTO `t_user_role` VALUES (14, 75);
INSERT INTO `t_user_role` VALUES (15, 75);
INSERT INTO `t_user_role` VALUES (16, 74);
INSERT INTO `t_user_role` VALUES (17, 74);
INSERT INTO `t_user_role` VALUES (18, 76);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '会员编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `mail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '省份',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '市区',
  `area` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '区',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '详细地址',
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '所属账户',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `is_member` int(0) NULL DEFAULT 0 COMMENT '是否为会员（0.否 1.是）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, 'US-1647250262671', '悲伤的橘子树', '125884621@qq.com', '15010399301', '北京', '北京', '朝阳区', '鸿博家园一期B', 12, '2023-02-08 23:11:16', 1);
INSERT INTO `user_info` VALUES (2, 'US-1647250262672', '孙笑川', '', '186123321', '浙江省', '浙江省绍兴市', '越城区', '中国浙江省绍兴市越城区马臻路147号 邮政编码: 312005', 14, '2023-05-06 23:11:05', NULL);
INSERT INTO `user_info` VALUES (3, 'U-1683864283062', '测试一号', NULL, NULL, NULL, NULL, NULL, NULL, 15, '2023-05-12 12:04:43', NULL);

SET FOREIGN_KEY_CHECKS = 1;
