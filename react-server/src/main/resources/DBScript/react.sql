/*
Navicat MySQL Data Transfer

Source Server         : 172.18.4.143
Source Server Version : 50722
Source Host           : 172.18.4.143:3306
Source Database       : react

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2020-03-11 09:35:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_category`
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category` (
  `f_id` varchar(32) NOT NULL COMMENT '主键id',
  `f_name` varchar(50) NOT NULL COMMENT '类别名称',
  `f_parent_id` varchar(32) NOT NULL COMMENT '上级类别id',
  `f_status` varchar(1) NOT NULL COMMENT '1-启用 0-停用',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES ('026f7de655fd11ea81ea005056893edb', '电脑', '0', '1');
INSERT INTO `t_category` VALUES ('1d25692f56b611ea81ea005056893edb', '笔记本', '026f7de655fd11ea81ea005056893edb', '1');
INSERT INTO `t_category` VALUES ('20e217a055fe11ea81ea005056893edb', '电视机', 'df1344b955fd11ea81ea005056893edb', '1');
INSERT INTO `t_category` VALUES ('20e21a5555fe11ea81ea005056893edb', '电冰箱', 'df1344b955fd11ea81ea005056893edb', '1');
INSERT INTO `t_category` VALUES ('20e21aad55fe11ea81ea005056893edb', '洗衣机', 'df1344b955fd11ea81ea005056893edb', '1');
INSERT INTO `t_category` VALUES ('20e21b6255fe11ea81ea005056893edb', '空调', 'df1344b955fd11ea81ea005056893edb', '1');
INSERT INTO `t_category` VALUES ('28b54e4d56b611ea81ea005056893edb', '台式机', '026f7de655fd11ea81ea005056893edb', '1');
INSERT INTO `t_category` VALUES ('2d93194a56b611ea81ea005056893edb', '一体机', '026f7de655fd11ea81ea005056893edb', '1');
INSERT INTO `t_category` VALUES ('8803404b55fd11ea81ea005056893edb', '图书', '0', '1');
INSERT INTO `t_category` VALUES ('df133df855fd11ea81ea005056893edb', '食品', '0', '1');
INSERT INTO `t_category` VALUES ('df1341bf55fd11ea81ea005056893edb', '服装', '0', '1');
INSERT INTO `t_category` VALUES ('df13424855fd11ea81ea005056893edb', '房产', '0', '1');
INSERT INTO `t_category` VALUES ('df1342ac55fd11ea81ea005056893edb', '玩具', '0', '1');
INSERT INTO `t_category` VALUES ('df13438055fd11ea81ea005056893edb', '箱包', '0', '1');
INSERT INTO `t_category` VALUES ('df1343ee55fd11ea81ea005056893edb', '居家', '0', '1');
INSERT INTO `t_category` VALUES ('df13446e55fd11ea81ea005056893edb', '母婴', '0', '1');
INSERT INTO `t_category` VALUES ('df1344b955fd11ea81ea005056893edb', '电器', '0', '1');
INSERT INTO `t_category` VALUES ('fbe9bd9d55fc11ea81ea005056893edb', '手机', '0', '1');

-- ----------------------------
-- Table structure for `t_chart`
-- ----------------------------
DROP TABLE IF EXISTS `t_chart`;
CREATE TABLE `t_chart` (
  `f_id` varchar(32) NOT NULL COMMENT '主键id',
  `f_title` varchar(100) DEFAULT NULL COMMENT '标题',
  `f_math` float DEFAULT NULL COMMENT '数学',
  `f_chinese` float DEFAULT NULL COMMENT '语文',
  `f_english` float DEFAULT NULL COMMENT '英语',
  `f_history` float DEFAULT NULL COMMENT '历史',
  `f_physical` float DEFAULT NULL COMMENT '物理',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_chart
-- ----------------------------
INSERT INTO `t_chart` VALUES ('2e39493662bd11ea81ea005056893edb', '蒲卉子', '78', '80', '60', '58', '87');
INSERT INTO `t_chart` VALUES ('351dae8662bd11ea81ea005056893edb', '彭雅琪', '90', '34', '44', '87', '90');
INSERT INTO `t_chart` VALUES ('3bdfb4b562bd11ea81ea005056893edb', '罗秋蒙', '100', '90', '80', '79', '98');
INSERT INTO `t_chart` VALUES ('41172d2162bd11ea81ea005056893edb', '邹诗雨', '65', '43', '67', '46', '80');
INSERT INTO `t_chart` VALUES ('4739db7462bd11ea81ea005056893edb', '刘强', '52.2', '46', '36', '38', '54');

-- ----------------------------
-- Table structure for `t_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `f_id` varchar(10) NOT NULL COMMENT '主键id',
  `f_title` varchar(25) NOT NULL COMMENT '菜单标题',
  `f_path` varchar(25) NOT NULL COMMENT '菜单key',
  `f_icon` varchar(25) NOT NULL COMMENT '菜单图标',
  `f_index` int(11) NOT NULL COMMENT '序号',
  `f_parent_id` varchar(10) DEFAULT NULL COMMENT '父菜单id',
  `f_is_enable` varchar(1) DEFAULT NULL COMMENT '是否有效 1-是 0-否',
  `f_is_public` varchar(1) NOT NULL DEFAULT '1' COMMENT '是否公开',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1000000', '首页', '/home', 'home', '1', '0', '1', '1');
INSERT INTO `t_menu` VALUES ('2000000', '用户管理', '/user', 'user', '2', '0', '1', '0');
INSERT INTO `t_menu` VALUES ('3000000', '角色管理', '/role', 'team', '3', '0', '1', '0');
INSERT INTO `t_menu` VALUES ('4000000', '产品管理', '/product-manage', 'control', '5', '0', '1', '0');
INSERT INTO `t_menu` VALUES ('4010000', '品类管理', '/product-manage/category', 'tag', '1', '4000000', '1', '0');
INSERT INTO `t_menu` VALUES ('4020000', '商品管理', '/product-manage/product', 'ordered-list', '2', '4000000', '1', '0');
INSERT INTO `t_menu` VALUES ('5000000', '数据分析', '/charts', 'area-chart', '6', '0', '1', '0');
INSERT INTO `t_menu` VALUES ('5010000', '饼图', '/charts/pie', 'pie-chart', '1', '5000000', '1', '0');
INSERT INTO `t_menu` VALUES ('5020000', '折线图', '/charts/line', 'line-chart', '2', '5000000', '1', '0');
INSERT INTO `t_menu` VALUES ('5030000', '柱状图', '/charts/bar', 'bar-chart', '3', '5000000', '1', '0');
INSERT INTO `t_menu` VALUES ('6000000', '系统管理', '/system', 'global', '7', '0', '1', '0');
INSERT INTO `t_menu` VALUES ('6010000', '参数配置', '/system/config', 'tool', '4', '6000000', '1', '0');
INSERT INTO `t_menu` VALUES ('7000000', '开发者工具', '/devlop', 'setting', '8', '0', '1', '0');
INSERT INTO `t_menu` VALUES ('7010000', 'git', '/devlop/git', 'github', '1', '7000000', '1', '0');

-- ----------------------------
-- Table structure for `t_product`
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `f_id` varchar(32) NOT NULL COMMENT '主键id',
  `f_name` varchar(50) NOT NULL COMMENT '类别名称',
  `f_price` decimal(10,0) NOT NULL COMMENT '价格',
  `f_desc` varchar(200) NOT NULL COMMENT '商品描述',
  `f_status` varchar(1) NOT NULL COMMENT '状态 1-在售 0-下架',
  `f_imgs` varchar(200) DEFAULT NULL COMMENT '图片',
  `f_detail` text COMMENT '详情',
  `f_parent_category` varchar(32) DEFAULT NULL COMMENT '一级分类',
  `f_category` varchar(32) DEFAULT NULL COMMENT '二级分类',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('2cc5e51d56d711ea81ea005056893edb', '联想', '4499', '联想(Lenovo)小新Pro13.3英寸全面屏超轻薄笔记本电脑(标压锐龙R5-3550H 16G 512G 2.5K QHD 100%sRGB)银', '1', 'ebe665f86276493ab2b3c1fcb4694ff4.jpg,a61571c35b344606b5e88895a514e497.jpg', '<p></p>\n<p><span style=\"color: red;\">笔记本</span></p>\n<p></p>\n<p>联想(<span style=\"color: red;\">Lenovo</span>)小新<span style=\"color: red;\">Pro13.3</span>英寸全面屏超轻薄笔记本电脑(标压锐龙<span style=\"color: red;\">R5-3550H 16G 512G 2.5K QHD 100%sRGB)</span>银</p>\n', '026f7de655fd11ea81ea005056893edb', '1d25692f56b611ea81ea005056893edb');
INSERT INTO `t_product` VALUES ('2e24f2c856d811ea81ea005056893edb', 'Apple', '10619', 'Apple 2019款 MacBook Pro 13.3【带触控栏】八代i5 8G 256G RP645显卡 银色 笔记本电脑 MUHR2CH/A', '1', '939ad684dfb440369890f475a4183d2b.jpg', '<p></p>\n<p><span style=\"color: red;\">笔记本</span></p>\n<p></p>\n<p>联想(<span style=\"color: red;\">Lenovo</span>)小新<span style=\"color: red;\">Pro13.3</span>英寸全面屏超轻薄笔记本电脑(标压锐龙<span style=\"color: red;\">R5-3550H 16G 512G 2.5K QHD 100%sRGB)</span>银</p>\n', '026f7de655fd11ea81ea005056893edb', '1d25692f56b611ea81ea005056893edb');
INSERT INTO `t_product` VALUES ('42db717b56d711ea81ea005056893edb', '戴尔', '45399', '戴尔DELL游匣G3 15.6英寸英特尔酷睿i5游戏笔记本电脑(i5-9300H 8G 512G GTX1650 4G 72色域 2年整机上门)', '1', null, '<div><p><span style=\'color:red\'>笔记本</span><p>\r\n<div>联想(<span style=\'color:red\'>Lenovo</span>)小新<span style=\'color:red\'>Pro13.3</span>英寸全面屏超轻薄笔记本电脑(标压锐龙<span style=\'color:red\'>R5-3550H 16G 512G 2.5K QHD 100%sRGB)</span>银</div></div>', '026f7de655fd11ea81ea005056893edb', '1d25692f56b611ea81ea005056893edb');
INSERT INTO `t_product` VALUES ('5b50b95056d711ea81ea005056893edb', '华为', '5999', '华为(HUAWEI)MateBook 13 2020款全面屏轻薄性能笔记本电脑 十代酷睿(i5 16G 512G MX250 触控屏 多屏协同)银', '1', null, '<div><p><span style=\'color:red\'>笔记本</span><p>\r\n<div>联想(<span style=\'color:red\'>Lenovo</span>)小新<span style=\'color:red\'>Pro13.3</span>英寸全面屏超轻薄笔记本电脑(标压锐龙<span style=\'color:red\'>R5-3550H 16G 512G 2.5K QHD 100%sRGB)</span>银</div></div>', '026f7de655fd11ea81ea005056893edb', '1d25692f56b611ea81ea005056893edb');
INSERT INTO `t_product` VALUES ('7bf1720c56d711ea81ea005056893edb', '小米', '4799', 'RedmiBook 14 增强版 全金属超轻薄(第十代英特尔酷睿i7-10510U 8G 512G SSD MX250 2G独显 支持手环疾速解锁 Office)游戏 银 笔记本 小米 红米', '1', null, '<div><p><span style=\'color:red\'>笔记本</span><p>\r\n<div>联想(<span style=\'color:red\'>Lenovo</span>)小新<span style=\'color:red\'>Pro13.3</span>英寸全面屏超轻薄笔记本电脑(标压锐龙<span style=\'color:red\'>R5-3550H 16G 512G 2.5K QHD 100%sRGB)</span>银</div></div>', '026f7de655fd11ea81ea005056893edb', '1d25692f56b611ea81ea005056893edb');
INSERT INTO `t_product` VALUES ('9391959f56d711ea81ea005056893edb', '宏碁', '3999', '宏碁(Acer)蜂鸟FUN微边框 14英寸 十代酷睿 轻薄本 高性能 网课利器 宏基笔记本电脑 (i5-10210U 8G 512GSSD MX250独显 IPS高清 长续航 wifi6 影音办公)', '1', null, '<div><p><span style=\'color:red\'>笔记本</span><p>\r\n<div>联想(<span style=\'color:red\'>Lenovo</span>)小新<span style=\'color:red\'>Pro13.3</span>英寸全面屏超轻薄笔记本电脑(标压锐龙<span style=\'color:red\'>R5-3550H 16G 512G 2.5K QHD 100%sRGB)</span>银</div></div>', '026f7de655fd11ea81ea005056893edb', '1d25692f56b611ea81ea005056893edb');
INSERT INTO `t_product` VALUES ('b8b9a85056d711ea81ea005056893edb', '惠普', '6299', '惠普(HP)暗影精灵5 15.6英寸高色域游戏笔记本电脑(i5-9300H 8G 512GSSD GTX1650 4G独显)', '1', null, '<div><p><span style=\'color:red\'>笔记本</span><p>\r\n<div>联想(<span style=\'color:red\'>Lenovo</span>)小新<span style=\'color:red\'>Pro13.3</span>英寸全面屏超轻薄笔记本电脑(标压锐龙<span style=\'color:red\'>R5-3550H 16G 512G 2.5K QHD 100%sRGB)</span>银</div></div>', '026f7de655fd11ea81ea005056893edb', '1d25692f56b611ea81ea005056893edb');
INSERT INTO `t_product` VALUES ('cd8e2baa56d711ea81ea005056893edb', '华硕', '6499', '华硕(ASUS) 飞行堡垒7 九代英特尔酷睿i7 120Hz高速屏游戏笔记本电脑(i7-9750H 8G 512SSD GTX1650)金属电竞', '1', null, '<div><p><span style=\'color:red\'>笔记本</span><p>\r\n<div>联想(<span style=\'color:red\'>Lenovo</span>)小新<span style=\'color:red\'>Pro13.3</span>英寸全面屏超轻薄笔记本电脑(标压锐龙<span style=\'color:red\'>R5-3550H 16G 512G 2.5K QHD 100%sRGB)</span>银</div></div>', '026f7de655fd11ea81ea005056893edb', '1d25692f56b611ea81ea005056893edb');
INSERT INTO `t_product` VALUES ('faba5f6656d711ea81ea005056893edb', '微软', '6988', '微软 Surface Pro 7 二合一平板电脑笔记本 | 12.3英寸 第十代酷睿i5 8G 128G SSD 亮铂金', '1', null, '<div><p><span style=\'color:red\'>笔记本</span><p>\r\n<div>联想(<span style=\'color:red\'>Lenovo</span>)小新<span style=\'color:red\'>Pro13.3</span>英寸全面屏超轻薄笔记本电脑(标压锐龙<span style=\'color:red\'>R5-3550H 16G 512G 2.5K QHD 100%sRGB)</span>银</div></div>', '026f7de655fd11ea81ea005056893edb', '1d25692f56b611ea81ea005056893edb');

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `f_id` varchar(32) NOT NULL COMMENT '主键id',
  `f_name` varchar(20) NOT NULL COMMENT '角色名称',
  `f_auth_id` varchar(32) DEFAULT NULL COMMENT '授权人',
  `f_auth_time` datetime DEFAULT NULL COMMENT '授权时间',
  `f_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('3f635979604c11ea81ea005056893edb', '技术支持', 'cad5e8c3557011ea81ea005056893edb', '2020-03-08 08:26:17', '2020-03-08 08:26:17');
INSERT INTO `t_role` VALUES ('7dd9815a5fb211ea81ea005056893edb', '系统管理员', 'cad5e8c3557011ea81ea005056893edb', '2020-03-08 12:59:53', '2020-03-08 08:26:17');
INSERT INTO `t_role` VALUES ('b3a7c582604b11ea81ea005056893edb', '测试', 'cad5e8c3557011ea81ea005056893edb', '2020-03-08 13:03:28', '2020-03-08 08:26:17');

-- ----------------------------
-- Table structure for `t_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `f_id` varchar(32) DEFAULT NULL COMMENT '主键id',
  `f_role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  `f_menu_id` varchar(32) DEFAULT NULL COMMENT '菜单id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('e08728f6604d11ea81ea005056893edb', '3f635979604c11ea81ea005056893edb', '1000000');
INSERT INTO `t_role_permission` VALUES ('e0887812604d11ea81ea005056893edb', '3f635979604c11ea81ea005056893edb', '2000000');
INSERT INTO `t_role_permission` VALUES ('e0898463604d11ea81ea005056893edb', '3f635979604c11ea81ea005056893edb', '3000000');
INSERT INTO `t_role_permission` VALUES ('e08a85a5604d11ea81ea005056893edb', '3f635979604c11ea81ea005056893edb', '4000000');
INSERT INTO `t_role_permission` VALUES ('e08bbbb0604d11ea81ea005056893edb', '3f635979604c11ea81ea005056893edb', '4010000');
INSERT INTO `t_role_permission` VALUES ('e08cb27e604d11ea81ea005056893edb', '3f635979604c11ea81ea005056893edb', '4020000');
INSERT INTO `t_role_permission` VALUES ('e08e69f5604d11ea81ea005056893edb', '3f635979604c11ea81ea005056893edb', '5000000');
INSERT INTO `t_role_permission` VALUES ('e0909e6f604d11ea81ea005056893edb', '3f635979604c11ea81ea005056893edb', '5010000');
INSERT INTO `t_role_permission` VALUES ('e09264ae604d11ea81ea005056893edb', '3f635979604c11ea81ea005056893edb', '5020000');
INSERT INTO `t_role_permission` VALUES ('e093cda6604d11ea81ea005056893edb', '3f635979604c11ea81ea005056893edb', '5030000');
INSERT INTO `t_role_permission` VALUES ('e09584a5604d11ea81ea005056893edb', '3f635979604c11ea81ea005056893edb', '6000000');
INSERT INTO `t_role_permission` VALUES ('e0969254604d11ea81ea005056893edb', '3f635979604c11ea81ea005056893edb', '6010000');
INSERT INTO `t_role_permission` VALUES ('e0975c27604d11ea81ea005056893edb', '3f635979604c11ea81ea005056893edb', '7000000');
INSERT INTO `t_role_permission` VALUES ('e0985b59604d11ea81ea005056893edb', '3f635979604c11ea81ea005056893edb', '7010000');
INSERT INTO `t_role_permission` VALUES ('e09936b2604d11ea81ea005056893edb', '3f635979604c11ea81ea005056893edb', 'all');
INSERT INTO `t_role_permission` VALUES ('a6095c8a60f911ea81ea005056893edb', '7dd9815a5fb211ea81ea005056893edb', '1000000');
INSERT INTO `t_role_permission` VALUES ('a60a3d8060f911ea81ea005056893edb', '7dd9815a5fb211ea81ea005056893edb', '2000000');
INSERT INTO `t_role_permission` VALUES ('a60b410d60f911ea81ea005056893edb', '7dd9815a5fb211ea81ea005056893edb', '3000000');
INSERT INTO `t_role_permission` VALUES ('a60c1c2c60f911ea81ea005056893edb', '7dd9815a5fb211ea81ea005056893edb', '4000000');
INSERT INTO `t_role_permission` VALUES ('a60cccca60f911ea81ea005056893edb', '7dd9815a5fb211ea81ea005056893edb', '4010000');
INSERT INTO `t_role_permission` VALUES ('a60d90dd60f911ea81ea005056893edb', '7dd9815a5fb211ea81ea005056893edb', '4020000');
INSERT INTO `t_role_permission` VALUES ('a60e8ae860f911ea81ea005056893edb', '7dd9815a5fb211ea81ea005056893edb', '5000000');
INSERT INTO `t_role_permission` VALUES ('a60f8f2d60f911ea81ea005056893edb', '7dd9815a5fb211ea81ea005056893edb', '5010000');
INSERT INTO `t_role_permission` VALUES ('a61029bd60f911ea81ea005056893edb', '7dd9815a5fb211ea81ea005056893edb', '5020000');
INSERT INTO `t_role_permission` VALUES ('a611008b60f911ea81ea005056893edb', '7dd9815a5fb211ea81ea005056893edb', '5030000');
INSERT INTO `t_role_permission` VALUES ('a611a11560f911ea81ea005056893edb', '7dd9815a5fb211ea81ea005056893edb', '6000000');
INSERT INTO `t_role_permission` VALUES ('a6125ff660f911ea81ea005056893edb', '7dd9815a5fb211ea81ea005056893edb', '6010000');
INSERT INTO `t_role_permission` VALUES ('a6132a7b60f911ea81ea005056893edb', '7dd9815a5fb211ea81ea005056893edb', '7000000');
INSERT INTO `t_role_permission` VALUES ('a613e2cd60f911ea81ea005056893edb', '7dd9815a5fb211ea81ea005056893edb', '7010000');
INSERT INTO `t_role_permission` VALUES ('25ca97d860fa11ea81ea005056893edb', 'b3a7c582604b11ea81ea005056893edb', '1000000');
INSERT INTO `t_role_permission` VALUES ('25cb565960fa11ea81ea005056893edb', 'b3a7c582604b11ea81ea005056893edb', '5000000');
INSERT INTO `t_role_permission` VALUES ('25cc4f6d60fa11ea81ea005056893edb', 'b3a7c582604b11ea81ea005056893edb', '5010000');
INSERT INTO `t_role_permission` VALUES ('25cd830d60fa11ea81ea005056893edb', 'b3a7c582604b11ea81ea005056893edb', '5020000');
INSERT INTO `t_role_permission` VALUES ('25ce9f0160fa11ea81ea005056893edb', 'b3a7c582604b11ea81ea005056893edb', '5030000');
INSERT INTO `t_role_permission` VALUES ('25cfa7c860fa11ea81ea005056893edb', 'b3a7c582604b11ea81ea005056893edb', '6000000');
INSERT INTO `t_role_permission` VALUES ('25d0bba060fa11ea81ea005056893edb', 'b3a7c582604b11ea81ea005056893edb', '6010000');

-- ----------------------------
-- Table structure for `t_upload`
-- ----------------------------
DROP TABLE IF EXISTS `t_upload`;
CREATE TABLE `t_upload` (
  `f_id` varchar(32) NOT NULL COMMENT '主键id',
  `f_file_name` varchar(50) NOT NULL COMMENT '文件名',
  `f_name` varchar(50) NOT NULL COMMENT '名称',
  `f_size` bigint(20) NOT NULL COMMENT '文件大小',
  `f_path` varchar(200) NOT NULL COMMENT '文件路径',
  `f_type` varchar(10) DEFAULT NULL COMMENT '类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_upload
-- ----------------------------
INSERT INTO `t_upload` VALUES ('ab497bc8efe342df83cd21e372f1ad4b', 'Desert.jpg', 'ab497bc8efe342df83cd21e372f1ad4b.jpg', '845941', 'E:\\my-react\\react-server\\img\\ab497bc8efe342df83cd21e372f1ad4b.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('1abbc7051f4645eaa589d40e8157c2ad', 'Desert.jpg', '1abbc7051f4645eaa589d40e8157c2ad.jpg', '845941', 'E:\\my-react\\react-server\\img\\1abbc7051f4645eaa589d40e8157c2ad.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('79ca4114727d457d88a316daf99ec9a2', 'Hydrangeas.jpg', '79ca4114727d457d88a316daf99ec9a2.jpg', '595284', 'E:\\my-react\\react-server\\img\\79ca4114727d457d88a316daf99ec9a2.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('85ce8cc1ab19408987834acc83343e8d', 'Koala.jpg', '85ce8cc1ab19408987834acc83343e8d.jpg', '780831', 'E:\\my-react\\react-server\\img\\85ce8cc1ab19408987834acc83343e8d.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('10c3ddd211c245518d2f40ab50a1a724', 'Koala.jpg', '10c3ddd211c245518d2f40ab50a1a724.jpg', '780831', 'E:\\my-react\\react-server\\img\\10c3ddd211c245518d2f40ab50a1a724.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('b0cbc318f49347259cadb4dfac4e5c42', 'Hydrangeas.jpg', 'b0cbc318f49347259cadb4dfac4e5c42.jpg', '595284', 'E:\\my-react\\react-server\\img\\b0cbc318f49347259cadb4dfac4e5c42.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('cfa9cd0376a14a27964f31de82fcc87c', 'Lighthouse.jpg', 'cfa9cd0376a14a27964f31de82fcc87c.jpg', '561276', 'E:\\my-react\\react-server\\img\\cfa9cd0376a14a27964f31de82fcc87c.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('17a2115f96984e65964b9f9d5bdb1ee9', 'Hydrangeas.jpg', '17a2115f96984e65964b9f9d5bdb1ee9.jpg', '595284', 'E:\\my-react\\react-server\\img\\17a2115f96984e65964b9f9d5bdb1ee9.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('a78a4944bf0540b2a42bf27c22a7475a', 'Hydrangeas.jpg', 'a78a4944bf0540b2a42bf27c22a7475a.jpg', '595284', 'E:\\my-react\\react-server\\img\\a78a4944bf0540b2a42bf27c22a7475a.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('669d76746d2549cb88a4f56d95d8e365', 'Koala.jpg', '669d76746d2549cb88a4f56d95d8e365.jpg', '780831', 'E:\\my-react\\react-server\\img\\669d76746d2549cb88a4f56d95d8e365.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('cbbf05378783438e9fdf9ad3b6fb29c7', 'Jellyfish.jpg', 'cbbf05378783438e9fdf9ad3b6fb29c7.jpg', '775702', 'E:\\my-react\\react-server\\img\\cbbf05378783438e9fdf9ad3b6fb29c7.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('192bf63cc57d46fc9cb88726bebe0123', 'Jellyfish.jpg', '192bf63cc57d46fc9cb88726bebe0123.jpg', '775702', 'E:\\my-react\\react-server\\img\\192bf63cc57d46fc9cb88726bebe0123.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('20fb764f7e514c58af78e9e0ffa64d3d', 'Hydrangeas.jpg', '20fb764f7e514c58af78e9e0ffa64d3d.jpg', '595284', 'E:\\my-react\\react-server\\img\\20fb764f7e514c58af78e9e0ffa64d3d.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('9b89ceed18c942868f62ca715026bc15', 'Koala.jpg', '9b89ceed18c942868f62ca715026bc15.jpg', '780831', 'E:\\my-react\\react-server\\img\\9b89ceed18c942868f62ca715026bc15.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('3bd1737f9d1e4a8aae916d19a3b114c3', 'Desert.jpg', '3bd1737f9d1e4a8aae916d19a3b114c3.jpg', '845941', 'E:\\my-react\\react-server\\img\\3bd1737f9d1e4a8aae916d19a3b114c3.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('5c043735d5b74077a7cf4ebc1ce591bb', 'Hydrangeas.jpg', '5c043735d5b74077a7cf4ebc1ce591bb.jpg', '595284', 'E:\\my-react\\react-server\\img\\5c043735d5b74077a7cf4ebc1ce591bb.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('dc492ee0f9264af5bb404ba0e9d90d3e', 'Jellyfish.jpg', 'dc492ee0f9264af5bb404ba0e9d90d3e.jpg', '775702', 'E:\\my-react\\react-server\\img\\dc492ee0f9264af5bb404ba0e9d90d3e.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('7c0106daa760461f8dc45a74c4c9de93', 'Hydrangeas.jpg', '7c0106daa760461f8dc45a74c4c9de93.jpg', '595284', 'E:\\my-react\\react-server\\img\\7c0106daa760461f8dc45a74c4c9de93.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('b785037746054193a508425650231610', 'Hydrangeas.jpg', 'b785037746054193a508425650231610.jpg', '595284', 'E:\\my-react\\react-server\\img\\b785037746054193a508425650231610.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('9c29e6da7ee34d47a2f1c63d77205960', 'Hydrangeas.jpg', '9c29e6da7ee34d47a2f1c63d77205960.jpg', '595284', 'E:\\my-react\\react-server\\img\\9c29e6da7ee34d47a2f1c63d77205960.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('b40a9833f73b47b9a4cedbe69c7747c4', 'Jellyfish.jpg', 'b40a9833f73b47b9a4cedbe69c7747c4.jpg', '775702', 'E:\\my-react\\react-server\\img\\b40a9833f73b47b9a4cedbe69c7747c4.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('58d4169eb8d24f068288fae99ebaa697', 'Hydrangeas.jpg', '58d4169eb8d24f068288fae99ebaa697.jpg', '595284', 'E:\\my-react\\react-server\\img\\58d4169eb8d24f068288fae99ebaa697.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('fdaf83a8fcaf4ef2bd6d6b4099d48c9a', 'Hydrangeas.jpg', 'fdaf83a8fcaf4ef2bd6d6b4099d48c9a.jpg', '595284', 'E:\\my-react\\react-server\\img\\fdaf83a8fcaf4ef2bd6d6b4099d48c9a.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('9860649ef8784bb191acccced3e0a09d', 'Hydrangeas.jpg', '9860649ef8784bb191acccced3e0a09d.jpg', '595284', 'E:\\my-react\\react-server\\img\\9860649ef8784bb191acccced3e0a09d.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('4b3e0b917be94714bc15702cbd7e6fec', 'timg.jpg', '4b3e0b917be94714bc15702cbd7e6fec.jpg', '14869', 'E:\\my-react\\react-server\\img\\4b3e0b917be94714bc15702cbd7e6fec.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('17b2a96267a74cc69e95870077f8e360', 'timg (1).jpg', '17b2a96267a74cc69e95870077f8e360.jpg', '11955', 'E:\\my-react\\react-server\\img\\17b2a96267a74cc69e95870077f8e360.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('ebe665f86276493ab2b3c1fcb4694ff4', 'timg (1).jpg', 'ebe665f86276493ab2b3c1fcb4694ff4.jpg', '11955', 'E:\\my-react\\react-server\\img\\ebe665f86276493ab2b3c1fcb4694ff4.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('a61571c35b344606b5e88895a514e497', 'timg.jpg', 'a61571c35b344606b5e88895a514e497.jpg', '14869', 'E:\\my-react\\react-server\\img\\a61571c35b344606b5e88895a514e497.jpg', 'jpg');
INSERT INTO `t_upload` VALUES ('939ad684dfb440369890f475a4183d2b', 'timg (1).jpg', '939ad684dfb440369890f475a4183d2b.jpg', '11955', 'E:\\my-react\\react-server\\img\\939ad684dfb440369890f475a4183d2b.jpg', 'jpg');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `f_id` varchar(32) NOT NULL COMMENT '主键id',
  `f_name` varchar(50) NOT NULL COMMENT '用户账号',
  `f_real_name` varchar(50) NOT NULL COMMENT '用户姓名',
  `f_sex` varchar(1) DEFAULT NULL COMMENT '性别 1-男 0-女',
  `f_passwd` varchar(64) NOT NULL COMMENT '密码',
  `f_phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `f_email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `f_create_time` datetime DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('cad5e8c3557011ea81ea005056893edb', 'admin', '系统管理员', null, 'admin', '10086', '10086@163.com', '2020-03-07 22:01:33');
INSERT INTO `t_user` VALUES ('da3f1c48557011ea81ea005056893edb', 'test', '测试', null, 'test', '10086', '10086@163.com', '2020-03-07 22:01:33');

-- ----------------------------
-- Table structure for `t_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `f_id` varchar(32) NOT NULL COMMENT '主键id',
  `f_user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `f_role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('27e114ad60e411ea81ea005056893edb', 'da3f1c48557011ea81ea005056893edb', 'b3a7c582604b11ea81ea005056893edb');
INSERT INTO `t_user_role` VALUES ('8d20947160e311ea81ea005056893edb', null, '7dd9815a5fb211ea81ea005056893edb');
INSERT INTO `t_user_role` VALUES ('b3a7c582604b11ea81ea005056893edb', 'cad5e8c3557011ea81ea005056893edb', '7dd9815a5fb211ea81ea005056893edb');
INSERT INTO `t_user_role` VALUES ('bab727ad60e311ea81ea005056893edb', null, '7dd9815a5fb211ea81ea005056893edb');
INSERT INTO `t_user_role` VALUES ('cb90f70d607711ea81ea005056893edb', 'cad5e8c3557011ea81ea005056893edb', 'b3a7c582604b11ea81ea005056893edb');
