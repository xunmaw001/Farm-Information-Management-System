/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : jspnxrul

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 06/11/2020 08:45:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `isdefault` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604392761456 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '地址' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '2020-11-03 15:32:38', 1, '地址1', '收货人1', '电话1', '是否默认地址[是/否]1');
INSERT INTO `address` VALUES (2, '2020-11-03 15:32:38', 2, '地址2', '收货人2', '电话2', '是否默认地址[是/否]2');
INSERT INTO `address` VALUES (3, '2020-11-03 15:32:38', 3, '地址3', '收货人3', '电话3', '是否默认地址[是/否]3');
INSERT INTO `address` VALUES (1604392761455, '2020-11-03 16:39:21', 1604392707590, '广东省梅州市梅县区扶大镇鸡麻寨', '王五', '13800000000', '是');

-- ----------------------------
-- Table structure for bumenxinxi
-- ----------------------------
DROP TABLE IF EXISTS `bumenxinxi`;
CREATE TABLE `bumenxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bumenbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门编号',
  `bumenmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `bumenrenshu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门人数',
  `bangongshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '办公室',
  `fuzeren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `bumengonggao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '部门公告',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `bumenbianhao`(`bumenbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604393010162 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bumenxinxi
-- ----------------------------
INSERT INTO `bumenxinxi` VALUES (1604389774435, '2020-11-03 15:49:34', '1604389740', '管理部', '50', '恩华大厦208', '张三', '13800000000', '部门公告测试\r\n');
INSERT INTO `bumenxinxi` VALUES (1604389801453, '2020-11-03 15:50:01', '1604389778', '种植部', '60', '恩华大厦209', '李四', '13800000000', '部门公告测试\r\n');
INSERT INTO `bumenxinxi` VALUES (1604389831488, '2020-11-03 15:50:31', '1604389804', '销售部', '50', '恩华大厦207', '王五', '13800000000', '功能好多啊  我快写死了\r\n');
INSERT INTO `bumenxinxi` VALUES (1604393010161, '2020-11-03 16:43:29', '1604392993', '测试', '60', '恩华大厦109', '张三', '13800000000', '测试\r\n');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NULL DEFAULT NULL COMMENT '单价',
  `discountprice` float NULL DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604392797284 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1, '2020-11-03 15:32:38', '商品表名1', 1, 1, '商品名称1', 'cart_picture1', 1, 1, 1);
INSERT INTO `cart` VALUES (2, '2020-11-03 15:32:38', '商品表名2', 2, 2, '商品名称2', 'cart_picture2', 2, 2, 2);
INSERT INTO `cart` VALUES (3, '2020-11-03 15:32:38', '商品表名3', 3, 3, '商品名称3', 'cart_picture3', 3, 3, 3);
INSERT INTO `cart` VALUES (1604392609908, '2020-11-03 16:36:49', 'shangpinxinxi', 1604389878146, 1604390359628, '包菜', 'http://localhost:8080/jspnxRul/upload/1604390351391.jpg', 1, 200, 0);
INSERT INTO `cart` VALUES (1604392797283, '2020-11-03 16:39:57', 'shangpinxinxi', 1604392707590, 1604390385561, '大白菜', 'http://localhost:8080/jspnxRul/upload/1604390378528.jpg', 4, 20, 0);

-- ----------------------------
-- Table structure for chuanganqi
-- ----------------------------
DROP TABLE IF EXISTS `chuanganqi`;
CREATE TABLE `chuanganqi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `chuanganqimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传感器名称',
  `chuanganqizhuangtai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传感器状态',
  `zuigaoshuzhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最高数值',
  `zuidishuzhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最低数值',
  `chuanganqishuju` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '传感器数据',
  `dengjishijian` datetime NULL DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604551410291 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '传感器' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of chuanganqi
-- ----------------------------
INSERT INTO `chuanganqi` VALUES (1604551410290, '2020-11-05 12:43:29', '空气温度传感器', '正常运作', '100', '50', '空气温度：60', '2020-11-05 12:43:05');

-- ----------------------------
-- Table structure for chukujilu
-- ----------------------------
DROP TABLE IF EXISTS `chukujilu`;
CREATE TABLE `chukujilu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类别',
  `kucunshuliang` int(11) NULL DEFAULT NULL COMMENT '库存数量',
  `dengjiriqi` datetime NULL DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604393235011 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出库记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of chukujilu
-- ----------------------------
INSERT INTO `chukujilu` VALUES (1604390429079, '2020-11-03 16:00:28', '1604390334', '包菜', '蔬菜', 2000, '2020-11-03 16:00:21');
INSERT INTO `chukujilu` VALUES (1604393235010, '2020-11-03 16:47:14', '1604393164', '商品1', '蔬菜', 1111, '2020-11-03 16:47:08');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/jspnxRul/upload/1604389143696.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/jspnxRul/upload/1604389154830.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/jspnxRul/upload/1604389165087.jpg');
INSERT INTO `config` VALUES (4, 'picture4', 'http://localhost:8080/jspnxRul/upload/1604389173188.jpg');
INSERT INTO `config` VALUES (5, 'picture5', 'http://localhost:8080/jspnxRul/upload/1604389180394.jpg');
INSERT INTO `config` VALUES (6, 'homepage', 'http://localhost:8080/jspnxRul/upload/1604393353503.jpg');

-- ----------------------------
-- Table structure for discussshangpinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussshangpinxinxi`;
CREATE TABLE `discussshangpinxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604392792560 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品信息评论表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of discussshangpinxinxi
-- ----------------------------
INSERT INTO `discussshangpinxinxi` VALUES (1, '2020-11-03 15:32:39', 1, '评论内容1', 1);
INSERT INTO `discussshangpinxinxi` VALUES (2, '2020-11-03 15:32:39', 2, '评论内容2', 2);
INSERT INTO `discussshangpinxinxi` VALUES (3, '2020-11-03 15:32:39', 3, '评论内容3', 3);
INSERT INTO `discussshangpinxinxi` VALUES (1604392605697, '2020-11-03 16:36:45', 1604390359628, '终于做好了', 1604389878146);
INSERT INTO `discussshangpinxinxi` VALUES (1604392792559, '2020-11-03 16:39:51', 1604390385561, '这个蔬菜很棒啊', 1604392707590);

-- ----------------------------
-- Table structure for jishuzhuanjia
-- ----------------------------
DROP TABLE IF EXISTS `jishuzhuanjia`;
CREATE TABLE `jishuzhuanjia`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `zhuanjiazhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专家账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `zhuanjiaxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专家姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `zhuanjiajibie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专家级别',
  `shoujihaoma` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `youxianghaoma` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱号码',
  `shenfenzhenghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `zhuanjiazhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专家照片',
  `zhuanjiajieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '专家介绍',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zhuanjiazhanghao`(`zhuanjiazhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604392982210 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '技术专家' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jishuzhuanjia
-- ----------------------------
INSERT INTO `jishuzhuanjia` VALUES (1, '2020-11-03 15:32:34', '001', '001', '赵六', '男', '高级', '13800000000', '773890001@qq.com', '440300199101010001', 'http://localhost:8080/jspnxRul/upload/1604389665813.jpg', '专家介绍', 0);
INSERT INTO `jishuzhuanjia` VALUES (1604392982209, '2020-11-03 16:43:02', '006', '001', '测试', '女', '副教授', '13800000000', '773890001@qq.com', '441400000000000000', 'http://localhost:8080/jspnxRul/upload/1604392958842.png', '专家和员工都不能注册只能管理员添加 这样的逻辑才对', 0);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604393379163 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '新闻资讯' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1604392138083, '2020-11-03 16:28:57', '2020年11月3日郑州菜油期货行情早报', 'http://localhost:8080/jspnxRul/upload/1604392129403.jpeg', '11月3日，星期二，郑州商品交易所（CZCE）菜油期货主力OI2101合约，截止到9:00，开盘9698元，最新9706元，涨53元，最高9741元，最低9633元，昨结9653元。\r\n');
INSERT INTO `news` VALUES (1604392161054, '2020-11-03 16:29:20', '2020年11月3日大连黄豆期货行情早报', 'http://localhost:8080/jspnxRul/upload/1604392155433.jpg', '2020年11月3日，星期二，大连商品交易所（DCE）大豆主力a2101合约，截止9:00，开盘5112元，最新5095元，涨2元，最高5117元，最低5063元。\r\n');
INSERT INTO `news` VALUES (1604392190411, '2020-11-03 16:29:50', '2020年11月3日大连棕榈油期货行情早报', 'http://localhost:8080/jspnxRul/upload/1604392188032.gif', '2020年11月3日大连棕榈油期货行情早报\r\n');
INSERT INTO `news` VALUES (1604392204111, '2020-11-03 16:30:03', '2020年11月3日大连豆油期货行情早报', 'http://localhost:8080/jspnxRul/upload/1604392199227.png', '好累\r\n');
INSERT INTO `news` VALUES (1604393379162, '2020-11-03 16:49:38', '2020年11月3日大连黄豆期货行情早报', 'http://localhost:8080/jspnxRul/upload/1604393372438.png', '公告测试\r\n');

-- ----------------------------
-- Table structure for nongshijilu
-- ----------------------------
DROP TABLE IF EXISTS `nongshijilu`;
CREATE TABLE `nongshijilu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nongshileibie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '农事类别',
  `shucaizhonglei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '蔬菜种类',
  `fuzeren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `mianji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '面积',
  `shuliang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数量',
  `shijian` date NULL DEFAULT NULL COMMENT '时间',
  `xiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详情',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604393583544 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '农事记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nongshijilu
-- ----------------------------
INSERT INTO `nongshijilu` VALUES (1604391946989, '2020-11-03 16:25:46', '播种记录', '大白菜', '张三', '10公顷', '1000颗', '2020-11-03', '预计采摘时间在2020年12月3号');
INSERT INTO `nongshijilu` VALUES (1604391995337, '2020-11-03 16:26:34', '施肥记录', '大白菜', '张三', '10公顷', '1吨', '2020-11-04', '施肥：尿素');
INSERT INTO `nongshijilu` VALUES (1604393583543, '2020-11-03 16:53:02', '灌溉记录', '小白菜', '张三', '10公顷', '12000颗', '2020-11-03', '测试');

-- ----------------------------
-- Table structure for nongzixinxi
-- ----------------------------
DROP TABLE IF EXISTS `nongzixinxi`;
CREATE TABLE `nongzixinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `leibie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  `mingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `danjia` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单价',
  `shuliang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数量',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `guige` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '规格',
  `xiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详情',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604393127366 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '农资信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nongzixinxi
-- ----------------------------
INSERT INTO `nongzixinxi` VALUES (1604390103616, '2020-11-03 15:55:03', '化肥', '化肥1', '50', '300', 'http://localhost:8080/jspnxRul/upload/1604390090313.jpg', '200*600', '<img src=\"http://localhost:8080/jspnxRul/upload/1604390101807.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspnxRul/upload/1604390101807.jpg\">\r\n');
INSERT INTO `nongzixinxi` VALUES (1604390152851, '2020-11-03 15:55:51', '农机', '农机1', '3000', '3', 'http://localhost:8080/jspnxRul/upload/1604390144917.jpg', '测试', '测试\r\n');
INSERT INTO `nongzixinxi` VALUES (1604393127365, '2020-11-03 16:45:27', '传感器', '传感器1', '66666', '2', 'http://localhost:8080/jspnxRul/upload/1604393107125.png', '规格随便写', '功能太多啦 演示都好麻烦\r\n');

-- ----------------------------
-- Table structure for nongzuowuchanpin
-- ----------------------------
DROP TABLE IF EXISTS `nongzuowuchanpin`;
CREATE TABLE `nongzuowuchanpin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nongzuowubianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '农作物编号',
  `nongzuowumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '农作物名称',
  `nongzuowutupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '农作物图片',
  `fuzeren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `zhongzhimianji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '种植面积',
  `zhongzhishijian` date NULL DEFAULT NULL COMMENT '种植时间',
  `shengchanhuanjingshuju` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生产环境数据',
  `yujicaishoushijian` date NULL DEFAULT NULL COMMENT '预计采收时间',
  `yujichanliang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预计产量',
  `xiangqingbeizhu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详情备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nongzuowubianhao`(`nongzuowubianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604393551079 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '农作物产品' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nongzuowuchanpin
-- ----------------------------
INSERT INTO `nongzuowuchanpin` VALUES (1604390603355, '2020-11-03 16:03:22', '1604390517', '大白菜', 'http://localhost:8080/jspnxRul/upload/1604390529320.jpg', '张三', '10公顷', '2020-11-03', '温度xx 湿度xx 土质xx', '2020-12-03', '10吨', '可以上传图片文字 看你心情\r\n');
INSERT INTO `nongzuowuchanpin` VALUES (1604393551078, '2020-11-03 16:52:30', '1604393511', '小白菜', 'http://localhost:8080/jspnxRul/upload/1604393525755.jpg', '测试', '20公顷', '2020-11-03', '温度xx 湿度xx 土质xx', '2020-12-03', '1吨', '哈哈哈\r\n');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orderid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT 0 COMMENT '价格/积分',
  `discountprice` float NULL DEFAULT 0 COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT 0 COMMENT '总价格/总积分',
  `discounttotal` float NULL DEFAULT 0 COMMENT '折扣总价格',
  `type` int(11) NULL DEFAULT NULL COMMENT '支付类型（1：现金 2：积分）',
  `status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orderid`(`orderid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604392832653 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, '2020-11-03 15:32:38', '订单id1', '商品表名1', 1, 1, '商品名称1', 'orders_picture1', 1, 1, 1, 1, 1, 1, '状态1', '地址1');
INSERT INTO `orders` VALUES (2, '2020-11-03 15:32:38', '订单id2', '商品表名2', 2, 2, '商品名称2', 'orders_picture2', 2, 2, 2, 2, 2, 2, '状态2', '地址2');
INSERT INTO `orders` VALUES (3, '2020-11-03 15:32:38', '订单id3', '商品表名3', 3, 3, '商品名称3', 'orders_picture3', 3, 3, 3, 3, 3, 3, '状态3', '地址3');
INSERT INTO `orders` VALUES (1604392809308, '2020-11-03 16:40:08', '20201131640855758414', 'shangpinxinxi', 1604392707590, 1604390385561, '大白菜', 'http://localhost:8080/jspnxRul/upload/1604390378528.jpg', 5, 20, 20, 100, 100, 1, '已完成', '广东省梅州市梅县区扶大镇鸡麻寨');
INSERT INTO `orders` VALUES (1604392832652, '2020-11-03 16:40:31', '202011316403158208197', 'shangpinxinxi', 1604392707590, 1604390268344, '猕猴桃', 'http://localhost:8080/jspnxRul/upload/1604390241366.jpg', 3, 50, 50, 150, 150, 1, '已发货', '广东省梅州市梅县区扶大镇鸡麻寨');

-- ----------------------------
-- Table structure for rukujilu
-- ----------------------------
DROP TABLE IF EXISTS `rukujilu`;
CREATE TABLE `rukujilu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类别',
  `kucunshuliang` int(11) NULL DEFAULT NULL COMMENT '库存数量',
  `dengjiriqi` datetime NULL DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604393222252 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '入库记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rukujilu
-- ----------------------------
INSERT INTO `rukujilu` VALUES (1604390406370, '2020-11-03 16:00:06', '1604390189', '赣南脐橙', '瓜果', 500, '2020-11-03 15:15:58');
INSERT INTO `rukujilu` VALUES (1604393222251, '2020-11-03 16:47:01', '1604393164', '商品1', '蔬菜', 2222, '2020-11-03 16:46:53');

-- ----------------------------
-- Table structure for shangpinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE `shangpinfenlei`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinleibie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604393157575 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品分类' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shangpinfenlei
-- ----------------------------
INSERT INTO `shangpinfenlei` VALUES (1604390173515, '2020-11-03 15:56:12', '瓜果');
INSERT INTO `shangpinfenlei` VALUES (1604390178823, '2020-11-03 15:56:18', '蔬菜');
INSERT INTO `shangpinfenlei` VALUES (1604393157574, '2020-11-03 16:45:56', '水果');

-- ----------------------------
-- Table structure for shangpinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE `shangpinxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类别',
  `kucunshuliang` int(11) NULL DEFAULT NULL COMMENT '库存数量',
  `shangpintupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `shangpinxiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品详情',
  `thumbsupnum` int(11) NULL DEFAULT 0 COMMENT '赞',
  `crazilynum` int(11) NULL DEFAULT 0 COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `shangpinbianhao`(`shangpinbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604393204425 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shangpinxinxi
-- ----------------------------
INSERT INTO `shangpinxinxi` VALUES (1604390219853, '2020-11-03 15:56:59', '1604390189', '赣南脐橙', '瓜果', 1500, 'http://localhost:8080/jspnxRul/upload/1604390208717.jpg', '<img src=\"http://localhost:8080/jspnxRul/upload/1604390217514.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspnxRul/upload/1604390217514.jpg\">\r\n', 0, 0, 30);
INSERT INTO `shangpinxinxi` VALUES (1604390268344, '2020-11-03 15:57:47', '1604390223', '猕猴桃', '瓜果', 1000, 'http://localhost:8080/jspnxRul/upload/1604390241366.jpg', '<img src=\"http://localhost:8080/jspnxRul/upload/1604390259929.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspnxRul/upload/1604390259929.jpg\"><img src=\"http://localhost:8080/jspnxRul/upload/1604390263992.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspnxRul/upload/1604390263992.jpg\">\r\n', 1, 0, 50);
INSERT INTO `shangpinxinxi` VALUES (1604390359628, '2020-11-03 15:59:18', '1604390334', '包菜', '蔬菜', 1000, 'http://localhost:8080/jspnxRul/upload/1604390351391.jpg', '<img src=\"http://localhost:8080/jspnxRul/upload/1604390357530.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspnxRul/upload/1604390357530.jpg\">\r\n', 1, 0, 200);
INSERT INTO `shangpinxinxi` VALUES (1604390385561, '2020-11-03 15:59:45', '1604390363', '大白菜', '蔬菜', 600, 'http://localhost:8080/jspnxRul/upload/1604390378528.jpg', '<img src=\"http://localhost:8080/jspnxRul/upload/1604390384180.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspnxRul/upload/1604390384180.jpg\">\r\n', 1, 0, 20);
INSERT INTO `shangpinxinxi` VALUES (1604393204424, '2020-11-03 16:46:44', '1604393164', '商品1', '蔬菜', 7777, 'http://localhost:8080/jspnxRul/upload/1604393183709.jpg', '可以上传文字或者图片<img src=\"http://localhost:8080/jspnxRul/upload/1604393202485.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspnxRul/upload/1604393202485.jpg\">\r\n', 0, 0, 666);

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604392799016 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1, '2020-11-03 15:32:39', 1, 1, '表名1', '收藏名称1', 'storeup_picture1');
INSERT INTO `storeup` VALUES (2, '2020-11-03 15:32:39', 2, 2, '表名2', '收藏名称2', 'storeup_picture2');
INSERT INTO `storeup` VALUES (3, '2020-11-03 15:32:39', 3, 3, '表名3', '收藏名称3', 'storeup_picture3');
INSERT INTO `storeup` VALUES (1604392799015, '2020-11-03 16:39:58', 1604392707590, 1604390385561, 'shangpinxinxi', '大白菜', 'http://localhost:8080/jspnxRul/upload/1604390378528.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'abo', 'users', '管理员', 'y6g6rx3xfm8pmhx7dfnmezmnag04essz', '2020-11-03 15:37:34', '2020-11-05 13:48:41');
INSERT INTO `token` VALUES (2, 1604389878146, '001', 'yonghu', '用户', 'vpaamws4hlacpwjar7ap9931frgcyump', '2020-11-03 16:36:29', '2020-11-03 17:36:29');
INSERT INTO `token` VALUES (3, 1604392707590, '002', 'yonghu', '用户', 's70zzqfs4vk3oqgzz8bwq8trjs5s4vmn', '2020-11-03 16:38:35', '2020-11-03 17:41:09');
INSERT INTO `token` VALUES (4, 1, '001', 'jishuzhuanjia', '技术专家', '7xe7yu8bpticeo2mgbzusb9tzgtsr8ve', '2020-11-03 16:50:46', '2020-11-05 13:42:31');
INSERT INTO `token` VALUES (5, 1604389718078, '001', 'yuangong', '员工', 'rprdmo1hg7vbm0l3u0x5z8gfod745g1d', '2020-11-03 16:51:41', '2020-11-05 13:42:59');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'abo', 'abo', '管理员', '2020-11-03 15:32:39');
INSERT INTO `users` VALUES (2, 'fwy', 'fwy', '管理员', '2020-11-03 16:50:37');

-- ----------------------------
-- Table structure for xiaoshoutongji
-- ----------------------------
DROP TABLE IF EXISTS `xiaoshoutongji`;
CREATE TABLE `xiaoshoutongji`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `kehuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户姓名',
  `xiaoshoushuliang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销售数量',
  `xiaoshoujiage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销售价格',
  `xiaoshouriqi` date NULL DEFAULT NULL COMMENT '销售日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604393256307 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '销售统计' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xiaoshoutongji
-- ----------------------------
INSERT INTO `xiaoshoutongji` VALUES (1604390457988, '2020-11-03 16:00:57', '大白菜', '张三', '500', '6000', '2020-11-03');
INSERT INTO `xiaoshoutongji` VALUES (1604393256306, '2020-11-03 16:47:35', '包菜', '王五', '500', '6000', '2020-11-03');

-- ----------------------------
-- Table structure for xitonggonggao
-- ----------------------------
DROP TABLE IF EXISTS `xitonggonggao`;
CREATE TABLE `xitonggonggao`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gonggaobiaoti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告类型',
  `fabushijian` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `gonggaoneirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '公告内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604393461894 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统公告' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xitonggonggao
-- ----------------------------
INSERT INTO `xitonggonggao` VALUES (1604390504150, '2020-11-03 16:01:43', '我写的好累啊', '日常公告', '2020-11-03 16:01:08', '功能好多啊，光添加数据都好累啊\r\n');
INSERT INTO `xitonggonggao` VALUES (1604393289421, '2020-11-03 16:48:09', '我写的好累啊', '农机维护', '2020-11-03 16:47:48', '别催啦 在维护啦\r\n');
INSERT INTO `xitonggonggao` VALUES (1604393461893, '2020-11-03 16:51:01', '', '指导作业', '2020-11-03 16:50:51', '测试\r\n');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `shenfenzhenghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `youzhengbianhao` int(11) NULL DEFAULT NULL COMMENT '邮政编号',
  `shouhuodizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `gerenzhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个人照片',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604392707591 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1604389878146, '2020-11-03 15:51:18', '001', '001', '张三', '男', '13800000000', '123@qq.com', '440300199101010001', 5140000, 'xx省xx市xx县xx号', 'http://localhost:8080/jspnxRul/upload/1604389872217.jpg', 5000);
INSERT INTO `yonghu` VALUES (1604392707590, '2020-11-03 16:38:27', '002', '002', '王五', '男', '13800000000', '123@qq.com', '441400000000000000', 514000, 'xx省xx市xx县，背景图可以换', 'http://localhost:8080/jspnxRul/upload/1604392726762.png', 8750);

-- ----------------------------
-- Table structure for yuangong
-- ----------------------------
DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE `yuangong`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yuangongzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `nianling` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `bumen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `shoujihaoma` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `youxianghaoma` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱号码',
  `shenfenzhenghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `yuangongzhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工照片',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yuangongzhanghao`(`yuangongzhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604392933804 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yuangong
-- ----------------------------
INSERT INTO `yuangong` VALUES (1604389718078, '2020-11-03 15:48:38', '001', '001', '张三', '男', 29, '种植部', '农艺员', '', '773890001@qq.com', '441400000000000000', 'http://localhost:8080/jspnxRul/upload/1604389715228.jpg', 0);
INSERT INTO `yuangong` VALUES (1604392933803, '2020-11-03 16:42:13', '003', '001', '测试', '男', 23, '销售部', '文员', '13800000000', '773890001@qq.com', '441400000000000000', 'http://localhost:8080/jspnxRul/upload/1604392932369.png', 0);

-- ----------------------------
-- Table structure for zijintongji
-- ----------------------------
DROP TABLE IF EXISTS `zijintongji`;
CREATE TABLE `zijintongji`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nianfen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年份',
  `yuefen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '月份',
  `shangpinshouru` int(11) NULL DEFAULT NULL COMMENT '商品收入',
  `shourushixiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收入事项',
  `shourujine` int(11) NULL DEFAULT NULL COMMENT '收入金额',
  `huafeizhichu` int(11) NULL DEFAULT NULL COMMENT '化肥支出',
  `nongyaozhichu` int(11) NULL DEFAULT NULL COMMENT '农药支出',
  `nongjuweihu` int(11) NULL DEFAULT NULL COMMENT '农具维护',
  `nongjiweihu` int(11) NULL DEFAULT NULL COMMENT '农机维护',
  `chuanganqiweihu` int(11) NULL DEFAULT NULL COMMENT '传感器维护',
  `zhichushixiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支出事项',
  `zhichujine` int(11) NULL DEFAULT NULL COMMENT '支出金额',
  `jieyujine` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结余金额',
  `jieyuzhuangtai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结余状态',
  `dengjiriqi` datetime NULL DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1604393058670 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资金统计' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zijintongji
-- ----------------------------
INSERT INTO `zijintongji` VALUES (1604389982636, '2020-11-03 15:53:02', '2020', '十一月份', 562150, '中彩票啦', 300000, 5213, 2314, 2135, 2222, 2333, '彩票扣税', 23333, '824600', '盈利', '2020-11-03 15:15:03');
INSERT INTO `zijintongji` VALUES (1604393058669, '2020-11-03 16:44:18', '2020', '十一月份', 666666, '无', 0, 2333, 2333, 233, 2333, 233, '无', 0, '659201', '盈利', '2020-11-03 16:43:38');

SET FOREIGN_KEY_CHECKS = 1;
