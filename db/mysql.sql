DROP DATABASE IF EXISTS jspnxRul;

CREATE DATABASE jspnxRul default character set utf8mb4 collate utf8mb4_general_ci;

USE jspnxRul;

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yonghuming` varchar(200)  UNIQUE   COMMENT '用户名',
	`mima` varchar(200)    COMMENT '密码',
	`xingming` varchar(200)    COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`dianziyouxiang` varchar(200)    COMMENT '电子邮箱',
	`shenfenzhenghao` varchar(200)    COMMENT '身份证号',
	`youzhengbianhao` int    COMMENT '邮政编号',
	`shouhuodizhi` varchar(200)    COMMENT '收货地址',
	`gerenzhaopian` varchar(200)    COMMENT '个人照片',
	`money` float   default '0' COMMENT '余额',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,lianxidianhua,dianziyouxiang,shenfenzhenghao,youzhengbianhao,shouhuodizhi,gerenzhaopian,money) VALUES('用户1','123456','姓名1','男','020-89819991','773890001@qq.com','440300199101010001',1,'收货地址1','yonghu_gerenzhaopian1',1);
INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,lianxidianhua,dianziyouxiang,shenfenzhenghao,youzhengbianhao,shouhuodizhi,gerenzhaopian,money) VALUES('用户2','123456','姓名2','男','020-89819992','773890002@qq.com','440300199202020002',2,'收货地址2','yonghu_gerenzhaopian2',2);
INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,lianxidianhua,dianziyouxiang,shenfenzhenghao,youzhengbianhao,shouhuodizhi,gerenzhaopian,money) VALUES('用户3','123456','姓名3','男','020-89819993','773890003@qq.com','440300199303030003',3,'收货地址3','yonghu_gerenzhaopian3',3);


DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yuangongzhanghao` varchar(200)  UNIQUE   COMMENT '员工账号',
	`mima` varchar(200)    COMMENT '密码',
	`yuangongxingming` varchar(200)    COMMENT '员工姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`nianling` int    COMMENT '年龄',
	`bumen` varchar(200)    COMMENT '部门',
	`zhiwei` varchar(200)    COMMENT '职位',
	`shoujihaoma` varchar(200)    COMMENT '手机号码',
	`youxianghaoma` varchar(200)    COMMENT '邮箱号码',
	`shenfenzhenghao` varchar(200)    COMMENT '身份证号',
	`yuangongzhaopian` varchar(200)    COMMENT '员工照片',
	`money` float   default '0' COMMENT '余额',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工';

INSERT INTO yuangong(yuangongzhanghao,mima,yuangongxingming,xingbie,nianling,bumen,zhiwei,shoujihaoma,youxianghaoma,shenfenzhenghao,yuangongzhaopian,money) VALUES('员工1','123456','员工姓名1','男',1,'部门1','文员','020-89819991','773890001@qq.com','440300199101010001','yuangong_yuangongzhaopian1',1);
INSERT INTO yuangong(yuangongzhanghao,mima,yuangongxingming,xingbie,nianling,bumen,zhiwei,shoujihaoma,youxianghaoma,shenfenzhenghao,yuangongzhaopian,money) VALUES('员工2','123456','员工姓名2','男',2,'部门2','文员','020-89819992','773890002@qq.com','440300199202020002','yuangong_yuangongzhaopian2',2);
INSERT INTO yuangong(yuangongzhanghao,mima,yuangongxingming,xingbie,nianling,bumen,zhiwei,shoujihaoma,youxianghaoma,shenfenzhenghao,yuangongzhaopian,money) VALUES('员工3','123456','员工姓名3','男',3,'部门3','文员','020-89819993','773890003@qq.com','440300199303030003','yuangong_yuangongzhaopian3',3);


DROP TABLE IF EXISTS `jishuzhuanjia`;

CREATE TABLE `jishuzhuanjia` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`zhuanjiazhanghao` varchar(200)  UNIQUE   COMMENT '专家账号',
	`mima` varchar(200)    COMMENT '密码',
	`zhuanjiaxingming` varchar(200)    COMMENT '专家姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`zhuanjiajibie` varchar(200)    COMMENT '专家级别',
	`shoujihaoma` varchar(200)    COMMENT '手机号码',
	`youxianghaoma` varchar(200)    COMMENT '邮箱号码',
	`shenfenzhenghao` varchar(200)    COMMENT '身份证号',
	`zhuanjiazhaopian` varchar(200)    COMMENT '专家照片',
	`zhuanjiajieshao` longtext    COMMENT '专家介绍',
	`money` float   default '0' COMMENT '余额',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='技术专家';

INSERT INTO jishuzhuanjia(zhuanjiazhanghao,mima,zhuanjiaxingming,xingbie,zhuanjiajibie,shoujihaoma,youxianghaoma,shenfenzhenghao,zhuanjiazhaopian,zhuanjiajieshao,money) VALUES('技术专家1','123456','专家姓名1','男','初级','020-89819991','773890001@qq.com','440300199101010001','jishuzhuanjia_zhuanjiazhaopian1','专家介绍1',1);
INSERT INTO jishuzhuanjia(zhuanjiazhanghao,mima,zhuanjiaxingming,xingbie,zhuanjiajibie,shoujihaoma,youxianghaoma,shenfenzhenghao,zhuanjiazhaopian,zhuanjiajieshao,money) VALUES('技术专家2','123456','专家姓名2','男','初级','020-89819992','773890002@qq.com','440300199202020002','jishuzhuanjia_zhuanjiazhaopian2','专家介绍2',2);
INSERT INTO jishuzhuanjia(zhuanjiazhanghao,mima,zhuanjiaxingming,xingbie,zhuanjiajibie,shoujihaoma,youxianghaoma,shenfenzhenghao,zhuanjiazhaopian,zhuanjiajieshao,money) VALUES('技术专家3','123456','专家姓名3','男','初级','020-89819993','773890003@qq.com','440300199303030003','jishuzhuanjia_zhuanjiazhaopian3','专家介绍3',3);


DROP TABLE IF EXISTS `bumenxinxi`;

CREATE TABLE `bumenxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`bumenbianhao` varchar(200)  UNIQUE   COMMENT '部门编号',
	`bumenmingcheng` varchar(200)    COMMENT '部门名称',
	`bumenrenshu` varchar(200)    COMMENT '部门人数',
	`bangongshi` varchar(200)    COMMENT '办公室',
	`fuzeren` varchar(200)    COMMENT '负责人',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`bumengonggao` longtext    COMMENT '部门公告',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门信息';

INSERT INTO bumenxinxi(bumenbianhao,bumenmingcheng,bumenrenshu,bangongshi,fuzeren,lianxidianhua,bumengonggao) VALUES('部门编号1','部门名称1','部门人数1','办公室1','负责人1','020-89819991','部门公告1');
INSERT INTO bumenxinxi(bumenbianhao,bumenmingcheng,bumenrenshu,bangongshi,fuzeren,lianxidianhua,bumengonggao) VALUES('部门编号2','部门名称2','部门人数2','办公室2','负责人2','020-89819992','部门公告2');
INSERT INTO bumenxinxi(bumenbianhao,bumenmingcheng,bumenrenshu,bangongshi,fuzeren,lianxidianhua,bumengonggao) VALUES('部门编号3','部门名称3','部门人数3','办公室3','负责人3','020-89819993','部门公告3');


DROP TABLE IF EXISTS `zijintongji`;

CREATE TABLE `zijintongji` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`nianfen` varchar(200)    COMMENT '年份',
	`yuefen` varchar(200)    COMMENT '月份',
	`shangpinshouru` int    COMMENT '商品收入',
	`shourushixiang` varchar(200)    COMMENT '收入事项',
	`shourujine` int    COMMENT '收入金额',
	`huafeizhichu` int    COMMENT '化肥支出',
	`nongyaozhichu` int    COMMENT '农药支出',
	`nongjuweihu` int    COMMENT '农具维护',
	`nongjiweihu` int    COMMENT '农机维护',
	`chuanganqiweihu` int    COMMENT '传感器维护',
	`zhichushixiang` varchar(200)    COMMENT '支出事项',
	`zhichujine` int    COMMENT '支出金额',
	`jieyujine` varchar(200)    COMMENT '结余金额',
	`jieyuzhuangtai` varchar(200)    COMMENT '结余状态',
	`dengjiriqi` datetime    COMMENT '登记日期',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资金统计';

INSERT INTO zijintongji(nianfen,yuefen,shangpinshouru,shourushixiang,shourujine,huafeizhichu,nongyaozhichu,nongjuweihu,nongjiweihu,chuanganqiweihu,zhichushixiang,zhichujine,jieyujine,jieyuzhuangtai,dengjiriqi) VALUES('年份1','一月份',1,'收入事项1',1,1,1,1,1,1,'支出事项1',1,'结余金额1','盈利',CURRENT_TIMESTAMP);
INSERT INTO zijintongji(nianfen,yuefen,shangpinshouru,shourushixiang,shourujine,huafeizhichu,nongyaozhichu,nongjuweihu,nongjiweihu,chuanganqiweihu,zhichushixiang,zhichujine,jieyujine,jieyuzhuangtai,dengjiriqi) VALUES('年份2','一月份',2,'收入事项2',2,2,2,2,2,2,'支出事项2',2,'结余金额2','盈利',CURRENT_TIMESTAMP);
INSERT INTO zijintongji(nianfen,yuefen,shangpinshouru,shourushixiang,shourujine,huafeizhichu,nongyaozhichu,nongjuweihu,nongjiweihu,chuanganqiweihu,zhichushixiang,zhichujine,jieyujine,jieyuzhuangtai,dengjiriqi) VALUES('年份3','一月份',3,'收入事项3',3,3,3,3,3,3,'支出事项3',3,'结余金额3','盈利',CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `nongzixinxi`;

CREATE TABLE `nongzixinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`leibie` varchar(200)    COMMENT '类别',
	`mingcheng` varchar(200)    COMMENT '名称',
	`danjia` varchar(200)    COMMENT '单价',
	`shuliang` varchar(200)    COMMENT '数量',
	`tupian` varchar(200)    COMMENT '图片',
	`guige` longtext    COMMENT '规格',
	`xiangqing` longtext    COMMENT '详情',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='农资信息';

INSERT INTO nongzixinxi(leibie,mingcheng,danjia,shuliang,tupian,guige,xiangqing) VALUES('农作物','名称1','单价1','数量1','nongzixinxi_tupian1','规格1','详情1');
INSERT INTO nongzixinxi(leibie,mingcheng,danjia,shuliang,tupian,guige,xiangqing) VALUES('农作物','名称2','单价2','数量2','nongzixinxi_tupian2','规格2','详情2');
INSERT INTO nongzixinxi(leibie,mingcheng,danjia,shuliang,tupian,guige,xiangqing) VALUES('农作物','名称3','单价3','数量3','nongzixinxi_tupian3','规格3','详情3');


DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`shangpinleibie` varchar(200)    COMMENT '商品类别',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品分类';

INSERT INTO shangpinfenlei(shangpinleibie) VALUES('商品类别1');
INSERT INTO shangpinfenlei(shangpinleibie) VALUES('商品类别2');
INSERT INTO shangpinfenlei(shangpinleibie) VALUES('商品类别3');


DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`shangpinbianhao` varchar(200)  UNIQUE   COMMENT '商品编号',
	`shangpinmingcheng` varchar(200)    COMMENT '商品名称',
	`shangpinleibie` varchar(200)    COMMENT '商品类别',
	`kucunshuliang` int    COMMENT '库存数量',
	`shangpintupian` varchar(200)    COMMENT '商品图片',
	`shangpinxiangqing` longtext    COMMENT '商品详情',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	`price` float NOT NULL   COMMENT '价格',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品信息';

INSERT INTO shangpinxinxi(shangpinbianhao,shangpinmingcheng,shangpinleibie,kucunshuliang,shangpintupian,shangpinxiangqing,thumbsupnum,crazilynum,price) VALUES('商品编号1','商品名称1','商品类别1',1,'shangpinxinxi_shangpintupian1','商品详情1',1,1,1);
INSERT INTO shangpinxinxi(shangpinbianhao,shangpinmingcheng,shangpinleibie,kucunshuliang,shangpintupian,shangpinxiangqing,thumbsupnum,crazilynum,price) VALUES('商品编号2','商品名称2','商品类别2',2,'shangpinxinxi_shangpintupian2','商品详情2',2,2,2);
INSERT INTO shangpinxinxi(shangpinbianhao,shangpinmingcheng,shangpinleibie,kucunshuliang,shangpintupian,shangpinxiangqing,thumbsupnum,crazilynum,price) VALUES('商品编号3','商品名称3','商品类别3',3,'shangpinxinxi_shangpintupian3','商品详情3',3,3,3);


DROP TABLE IF EXISTS `rukujilu`;

CREATE TABLE `rukujilu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`shangpinmingcheng` varchar(200)    COMMENT '商品名称',
	`shangpinleibie` varchar(200)    COMMENT '商品类别',
	`kucunshuliang` int    COMMENT '库存数量',
	`dengjiriqi` datetime    COMMENT '登记日期',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='入库记录';

INSERT INTO rukujilu(shangpinbianhao,shangpinmingcheng,shangpinleibie,kucunshuliang,dengjiriqi) VALUES('商品编号1','商品名称1','商品类别1',1,CURRENT_TIMESTAMP);
INSERT INTO rukujilu(shangpinbianhao,shangpinmingcheng,shangpinleibie,kucunshuliang,dengjiriqi) VALUES('商品编号2','商品名称2','商品类别2',2,CURRENT_TIMESTAMP);
INSERT INTO rukujilu(shangpinbianhao,shangpinmingcheng,shangpinleibie,kucunshuliang,dengjiriqi) VALUES('商品编号3','商品名称3','商品类别3',3,CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `chukujilu`;

CREATE TABLE `chukujilu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`shangpinmingcheng` varchar(200)    COMMENT '商品名称',
	`shangpinleibie` varchar(200)    COMMENT '商品类别',
	`kucunshuliang` int    COMMENT '库存数量',
	`dengjiriqi` datetime    COMMENT '登记日期',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='出库记录';

INSERT INTO chukujilu(shangpinbianhao,shangpinmingcheng,shangpinleibie,kucunshuliang,dengjiriqi) VALUES('商品编号1','商品名称1','商品类别1',1,CURRENT_TIMESTAMP);
INSERT INTO chukujilu(shangpinbianhao,shangpinmingcheng,shangpinleibie,kucunshuliang,dengjiriqi) VALUES('商品编号2','商品名称2','商品类别2',2,CURRENT_TIMESTAMP);
INSERT INTO chukujilu(shangpinbianhao,shangpinmingcheng,shangpinleibie,kucunshuliang,dengjiriqi) VALUES('商品编号3','商品名称3','商品类别3',3,CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `xiaoshoutongji`;

CREATE TABLE `xiaoshoutongji` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`shangpinmingcheng` varchar(200)    COMMENT '商品名称',
	`kehuxingming` varchar(200)    COMMENT '客户姓名',
	`xiaoshoushuliang` varchar(200)    COMMENT '销售数量',
	`xiaoshoujiage` varchar(200)    COMMENT '销售价格',
	`xiaoshouriqi` date    COMMENT '销售日期',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售统计';

INSERT INTO xiaoshoutongji(shangpinmingcheng,kehuxingming,xiaoshoushuliang,xiaoshoujiage,xiaoshouriqi) VALUES('商品名称1','客户姓名1','销售数量1','销售价格1',CURRENT_TIMESTAMP);
INSERT INTO xiaoshoutongji(shangpinmingcheng,kehuxingming,xiaoshoushuliang,xiaoshoujiage,xiaoshouriqi) VALUES('商品名称2','客户姓名2','销售数量2','销售价格2',CURRENT_TIMESTAMP);
INSERT INTO xiaoshoutongji(shangpinmingcheng,kehuxingming,xiaoshoushuliang,xiaoshoujiage,xiaoshouriqi) VALUES('商品名称3','客户姓名3','销售数量3','销售价格3',CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`gonggaobiaoti` varchar(200)    COMMENT '公告标题',
	`gonggaoleixing` varchar(200)    COMMENT '公告类型',
	`fabushijian` datetime    COMMENT '发布时间',
	`gonggaoneirong` longtext    COMMENT '公告内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统公告';

INSERT INTO xitonggonggao(gonggaobiaoti,gonggaoleixing,fabushijian,gonggaoneirong) VALUES('公告标题1','日常公告',CURRENT_TIMESTAMP,'公告内容1');
INSERT INTO xitonggonggao(gonggaobiaoti,gonggaoleixing,fabushijian,gonggaoneirong) VALUES('公告标题2','日常公告',CURRENT_TIMESTAMP,'公告内容2');
INSERT INTO xitonggonggao(gonggaobiaoti,gonggaoleixing,fabushijian,gonggaoneirong) VALUES('公告标题3','日常公告',CURRENT_TIMESTAMP,'公告内容3');


DROP TABLE IF EXISTS `nongzuowuchanpin`;

CREATE TABLE `nongzuowuchanpin` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`nongzuowubianhao` varchar(200)  UNIQUE   COMMENT '农作物编号',
	`nongzuowumingcheng` varchar(200)    COMMENT '农作物名称',
	`nongzuowutupian` varchar(200)    COMMENT '农作物图片',
	`fuzeren` varchar(200)    COMMENT '负责人',
	`zhongzhimianji` varchar(200)    COMMENT '种植面积',
	`zhongzhishijian` date    COMMENT '种植时间',
	`shengchanhuanjingshuju` varchar(200)    COMMENT '生产环境数据',
	`yujicaishoushijian` date    COMMENT '预计采收时间',
	`yujichanliang` varchar(200)    COMMENT '预计产量',
	`xiangqingbeizhu` longtext    COMMENT '详情备注',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='农作物产品';

INSERT INTO nongzuowuchanpin(nongzuowubianhao,nongzuowumingcheng,nongzuowutupian,fuzeren,zhongzhimianji,zhongzhishijian,shengchanhuanjingshuju,yujicaishoushijian,yujichanliang,xiangqingbeizhu) VALUES('农作物编号1','农作物名称1','nongzuowuchanpin_nongzuowutupian1','负责人1','种植面积1',CURRENT_TIMESTAMP,'生产环境数据1',CURRENT_TIMESTAMP,'预计产量1','详情备注1');
INSERT INTO nongzuowuchanpin(nongzuowubianhao,nongzuowumingcheng,nongzuowutupian,fuzeren,zhongzhimianji,zhongzhishijian,shengchanhuanjingshuju,yujicaishoushijian,yujichanliang,xiangqingbeizhu) VALUES('农作物编号2','农作物名称2','nongzuowuchanpin_nongzuowutupian2','负责人2','种植面积2',CURRENT_TIMESTAMP,'生产环境数据2',CURRENT_TIMESTAMP,'预计产量2','详情备注2');
INSERT INTO nongzuowuchanpin(nongzuowubianhao,nongzuowumingcheng,nongzuowutupian,fuzeren,zhongzhimianji,zhongzhishijian,shengchanhuanjingshuju,yujicaishoushijian,yujichanliang,xiangqingbeizhu) VALUES('农作物编号3','农作物名称3','nongzuowuchanpin_nongzuowutupian3','负责人3','种植面积3',CURRENT_TIMESTAMP,'生产环境数据3',CURRENT_TIMESTAMP,'预计产量3','详情备注3');


DROP TABLE IF EXISTS `nongshijilu`;

CREATE TABLE `nongshijilu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`nongshileibie` varchar(200)    COMMENT '农事类别',
	`shucaizhonglei` varchar(200)    COMMENT '蔬菜种类',
	`fuzeren` varchar(200)    COMMENT '负责人',
	`mianji` varchar(200)    COMMENT '面积',
	`shuliang` varchar(200)    COMMENT '数量',
	`shijian` date    COMMENT '时间',
	`xiangqing` longtext    COMMENT '详情',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='农事记录';

INSERT INTO nongshijilu(nongshileibie,shucaizhonglei,fuzeren,mianji,shuliang,shijian,xiangqing) VALUES('播种记录','蔬菜种类1','负责人1','面积1','数量1',CURRENT_TIMESTAMP,'详情1');
INSERT INTO nongshijilu(nongshileibie,shucaizhonglei,fuzeren,mianji,shuliang,shijian,xiangqing) VALUES('播种记录','蔬菜种类2','负责人2','面积2','数量2',CURRENT_TIMESTAMP,'详情2');
INSERT INTO nongshijilu(nongshileibie,shucaizhonglei,fuzeren,mianji,shuliang,shijian,xiangqing) VALUES('播种记录','蔬菜种类3','负责人3','面积3','数量3',CURRENT_TIMESTAMP,'详情3');


DROP TABLE IF EXISTS `chuanganqi`;

CREATE TABLE `chuanganqi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`chuanganqimingcheng` varchar(200)    COMMENT '传感器名称',
	`chuanganqizhuangtai` varchar(200)    COMMENT '传感器状态',
	`zuigaoshuzhi` varchar(200)    COMMENT '最高数值',
	`zuidishuzhi` varchar(200)    COMMENT '最低数值',
	`chuanganqishuju` longtext    COMMENT '传感器数据',
	`dengjishijian` datetime    COMMENT '登记时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='传感器';

INSERT INTO chuanganqi(chuanganqimingcheng,chuanganqizhuangtai,zuigaoshuzhi,zuidishuzhi,chuanganqishuju,dengjishijian) VALUES('空气温度传感器','正常运作','最高数值1','最低数值1','传感器数据1',CURRENT_TIMESTAMP);
INSERT INTO chuanganqi(chuanganqimingcheng,chuanganqizhuangtai,zuigaoshuzhi,zuidishuzhi,chuanganqishuju,dengjishijian) VALUES('空气温度传感器','正常运作','最高数值2','最低数值2','传感器数据2',CURRENT_TIMESTAMP);
INSERT INTO chuanganqi(chuanganqimingcheng,chuanganqizhuangtai,zuigaoshuzhi,zuidishuzhi,chuanganqishuju,dengjishijian) VALUES('空气温度传感器','正常运作','最高数值3','最低数值3','传感器数据3',CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`tablename` varchar(200)   default 'shangpinxinxi' COMMENT '商品表名',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`goodid` bigint NOT NULL   COMMENT '商品id',
	`goodname` varchar(200)    COMMENT '商品名称',
	`picture` varchar(200)    COMMENT '图片',
	`buynumber` int NOT NULL   COMMENT '购买数量',
	`price` float    COMMENT '单价',
	`discountprice` float    COMMENT '会员价',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名1',1,1,'商品名称1','cart_picture1',1,1,1);
INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名2',2,2,'商品名称2','cart_picture2',2,2,2);
INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名3',3,3,'商品名称3','cart_picture3',3,3,3);


DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`orderid` varchar(200) NOT NULL UNIQUE   COMMENT '订单id',
	`tablename` varchar(200)   default 'shangpinxinxi' COMMENT '商品表名',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`goodid` bigint NOT NULL   COMMENT '商品id',
	`goodname` varchar(200)    COMMENT '商品名称',
	`picture` varchar(200)    COMMENT '商品图片',
	`buynumber` int NOT NULL   COMMENT '购买数量',
	`price` float NOT NULL  default '0' COMMENT '价格/积分',
	`discountprice` float   default '0' COMMENT '折扣价格',
	`total` float NOT NULL  default '0' COMMENT '总价格/总积分',
	`discounttotal` float   default '0' COMMENT '折扣总价格',
	`type` int    COMMENT '支付类型（1：现金 2：积分）',
	`status` varchar(200)    COMMENT '状态',
	`address` varchar(200)    COMMENT '地址',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

INSERT INTO orders(orderid,tablename,userid,goodid,goodname,picture,buynumber,price,discountprice,total,discounttotal,type,status,address) VALUES('订单id1','商品表名1',1,1,'商品名称1','orders_picture1',1,1,1,1,1,1,'状态1','地址1');
INSERT INTO orders(orderid,tablename,userid,goodid,goodname,picture,buynumber,price,discountprice,total,discounttotal,type,status,address) VALUES('订单id2','商品表名2',2,2,'商品名称2','orders_picture2',2,2,2,2,2,2,'状态2','地址2');
INSERT INTO orders(orderid,tablename,userid,goodid,goodname,picture,buynumber,price,discountprice,total,discounttotal,type,status,address) VALUES('订单id3','商品表名3',3,3,'商品名称3','orders_picture3',3,3,3,3,3,3,'状态3','地址3');


DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`address` varchar(200) NOT NULL   COMMENT '地址',
	`name` varchar(200) NOT NULL   COMMENT '收货人',
	`phone` varchar(200) NOT NULL   COMMENT '电话',
	`isdefault` varchar(200) NOT NULL   COMMENT '是否默认地址[是/否]',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地址';

INSERT INTO address(userid,address,name,phone,isdefault) VALUES(1,'地址1','收货人1','电话1','是否默认地址[是/否]1');
INSERT INTO address(userid,address,name,phone,isdefault) VALUES(2,'地址2','收货人2','电话2','是否默认地址[是/否]2');
INSERT INTO address(userid,address,name,phone,isdefault) VALUES(3,'地址3','收货人3','电话3','是否默认地址[是/否]3');


DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(1,1,'表名1','收藏名称1','storeup_picture1');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(2,2,'表名2','收藏名称2','storeup_picture2');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(3,3,'表名3','收藏名称3','storeup_picture3');


DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

INSERT INTO news(title,picture,content) VALUES('标题1','news_picture1','内容1');
INSERT INTO news(title,picture,content) VALUES('标题2','news_picture2','内容2');
INSERT INTO news(title,picture,content) VALUES('标题3','news_picture3','内容3');


DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

INSERT INTO discussshangpinxinxi(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussshangpinxinxi(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussshangpinxinxi(refid,content,userid) VALUES(3,'评论内容3',3);



DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name) values(1,'picture1');
insert into config(id,name) values(2,'picture2');
insert into config(id,name) values(3,'picture3');
insert into config(id,name) values(4,'picture4');
insert into config(id,name) values(5,'picture5');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

