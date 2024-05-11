/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmkta83
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmkta83` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmkta83`;

/*Table structure for table `bianji` */

DROP TABLE IF EXISTS `bianji`;

CREATE TABLE `bianji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianjizhanghao` varchar(200) NOT NULL COMMENT '编辑账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `bianjixingming` varchar(200) NOT NULL COMMENT '编辑姓名',
  `nianling` int(11) NOT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianjizhanghao` (`bianjizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621503346047 DEFAULT CHARSET=utf8 COMMENT='编辑';

/*Data for the table `bianji` */

insert  into `bianji`(`id`,`addtime`,`bianjizhanghao`,`mima`,`bianjixingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (21,'2021-05-20 17:28:39','编辑1','123456','编辑姓名1',1,'男','13823888881','http://localhost:8080/ssmkta83/upload/bianji_zhaopian1.jpg');
insert  into `bianji`(`id`,`addtime`,`bianjizhanghao`,`mima`,`bianjixingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (22,'2021-05-20 17:28:39','编辑2','123456','编辑姓名2',2,'男','13823888882','http://localhost:8080/ssmkta83/upload/bianji_zhaopian2.jpg');
insert  into `bianji`(`id`,`addtime`,`bianjizhanghao`,`mima`,`bianjixingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (23,'2021-05-20 17:28:39','编辑3','123456','编辑姓名3',3,'男','13823888883','http://localhost:8080/ssmkta83/upload/bianji_zhaopian3.jpg');
insert  into `bianji`(`id`,`addtime`,`bianjizhanghao`,`mima`,`bianjixingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (24,'2021-05-20 17:28:39','编辑4','123456','编辑姓名4',4,'男','13823888884','http://localhost:8080/ssmkta83/upload/bianji_zhaopian4.jpg');
insert  into `bianji`(`id`,`addtime`,`bianjizhanghao`,`mima`,`bianjixingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (25,'2021-05-20 17:28:39','编辑5','123456','编辑姓名5',5,'男','13823888885','http://localhost:8080/ssmkta83/upload/bianji_zhaopian5.jpg');
insert  into `bianji`(`id`,`addtime`,`bianjizhanghao`,`mima`,`bianjixingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (26,'2021-05-20 17:28:39','编辑6','123456','编辑姓名6',6,'男','13823888886','http://localhost:8080/ssmkta83/upload/bianji_zhaopian6.jpg');
insert  into `bianji`(`id`,`addtime`,`bianjizhanghao`,`mima`,`bianjixingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (1621503346046,'2021-05-20 17:35:46','22','22','个会',22,'男','11122233456','http://localhost:8080/ssmkta83/upload/1621503482870.jpg');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmkta83/upload/1621503272531.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmkta83/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmkta83/upload/picture3.jpg');

/*Table structure for table `discusswenzhangzhanshi` */

DROP TABLE IF EXISTS `discusswenzhangzhanshi`;

CREATE TABLE `discusswenzhangzhanshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621503364156 DEFAULT CHARSET=utf8 COMMENT='文章展示评论表';

/*Data for the table `discusswenzhangzhanshi` */

insert  into `discusswenzhangzhanshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-05-20 17:28:39',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusswenzhangzhanshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (92,'2021-05-20 17:28:39',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusswenzhangzhanshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (93,'2021-05-20 17:28:39',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusswenzhangzhanshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (94,'2021-05-20 17:28:39',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusswenzhangzhanshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (95,'2021-05-20 17:28:39',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusswenzhangzhanshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (96,'2021-05-20 17:28:39',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discusswenzhangzhanshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1621503364155,'2021-05-20 17:36:03',51,1621503336352,'11','发给地方给对方','');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621503360937 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1621503360936,'2021-05-20 17:36:00',1621503336352,51,'wenzhangzhanshi','标题1','http://localhost:8080/ssmkta83/upload/wenzhangzhanshi_fengmian1.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1621503049047,'1','yonghu','用户','rt4r3lsjtn2z0u266m7cx9h8ha16xhhn','2021-05-20 17:30:57','2021-05-20 18:30:57');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1,'abo','users','管理员','vxdtkhju67tbbn8z0vb9qgy2dao23803','2021-05-20 17:31:10','2021-05-20 18:32:17');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1621503336352,'11','yonghu','用户','4ul16jm3su7pg5q7v139kv5i9g81ctf3','2021-05-20 17:35:52','2021-05-20 18:38:37');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1621503346046,'22','bianji','编辑','kq8nwmkja7pbrjlbqbqw2jtm9coh4458','2021-05-20 17:37:16','2021-05-20 18:37:17');

/*Table structure for table `tongzhigonggao` */

DROP TABLE IF EXISTS `tongzhigonggao`;

CREATE TABLE `tongzhigonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621503263104 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `tongzhigonggao` */

insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (71,'2021-05-20 17:28:39','标题1','简介1','内容1','2021-05-20','http://localhost:8080/ssmkta83/upload/tongzhigonggao_fengmian1.jpg');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (72,'2021-05-20 17:28:39','标题2','简介2','内容2','2021-05-20','http://localhost:8080/ssmkta83/upload/tongzhigonggao_fengmian2.jpg');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (73,'2021-05-20 17:28:39','标题3','简介3','内容3','2021-05-20','http://localhost:8080/ssmkta83/upload/tongzhigonggao_fengmian3.jpg');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (74,'2021-05-20 17:28:39','标题4','简介4','内容4','2021-05-20','http://localhost:8080/ssmkta83/upload/tongzhigonggao_fengmian4.jpg');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (75,'2021-05-20 17:28:39','标题5','简介5','内容5','2021-05-20','http://localhost:8080/ssmkta83/upload/tongzhigonggao_fengmian5.jpg');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (76,'2021-05-20 17:28:39','标题6','简介6','内容6','2021-05-20','http://localhost:8080/ssmkta83/upload/tongzhigonggao_fengmian6.jpg');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (1621503263103,'2021-05-20 17:34:22','士大夫都是士大夫','梵蒂冈地方鬼地方个地方广发电饭锅发的方法方法反反复复付反反复复付芳芳芳芳芳芳芳芳发','<p>梵蒂冈地方鬼地方个地方广发电饭锅发的方法方法反反复复付反反复复付芳芳芳芳芳芳芳芳发梵蒂冈地方鬼地方个地方广发电饭锅发的方法方法反反复复付反反复复付芳芳芳芳芳芳芳芳发</p><p><img src=\"http://localhost:8080/ssmkta83/upload/1621503259437.jpg\"></p><p><br></p><p><img src=\"http://localhost:8080/ssmkta83/upload/1621503261300.jpg\"></p><p><br></p><p><br></p>','2021-05-14','http://localhost:8080/ssmkta83/upload/1621503249332.jpg');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-20 17:28:39');

/*Table structure for table `wenzhangfenlei` */

DROP TABLE IF EXISTS `wenzhangfenlei`;

CREATE TABLE `wenzhangfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangfenlei` varchar(200) DEFAULT NULL COMMENT '文章分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621503171148 DEFAULT CHARSET=utf8 COMMENT='文章分类';

/*Data for the table `wenzhangfenlei` */

insert  into `wenzhangfenlei`(`id`,`addtime`,`wenzhangfenlei`) values (41,'2021-05-20 17:28:39','武侠');
insert  into `wenzhangfenlei`(`id`,`addtime`,`wenzhangfenlei`) values (42,'2021-05-20 17:28:39','文章分类2');
insert  into `wenzhangfenlei`(`id`,`addtime`,`wenzhangfenlei`) values (43,'2021-05-20 17:28:39','文章分类3');
insert  into `wenzhangfenlei`(`id`,`addtime`,`wenzhangfenlei`) values (44,'2021-05-20 17:28:39','文章分类4');
insert  into `wenzhangfenlei`(`id`,`addtime`,`wenzhangfenlei`) values (45,'2021-05-20 17:28:39','文章分类5');
insert  into `wenzhangfenlei`(`id`,`addtime`,`wenzhangfenlei`) values (46,'2021-05-20 17:28:39','文章分类6');
insert  into `wenzhangfenlei`(`id`,`addtime`,`wenzhangfenlei`) values (1621503171147,'2021-05-20 17:32:50','玄幻');

/*Table structure for table `wenzhanggaochou` */

DROP TABLE IF EXISTS `wenzhanggaochou`;

CREATE TABLE `wenzhanggaochou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `wenzhangzishu` int(11) DEFAULT NULL COMMENT '文章字数',
  `danjia` float DEFAULT NULL COMMENT '单价',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `piaoju` varchar(200) DEFAULT NULL COMMENT '票据',
  `bianjizhanghao` varchar(200) DEFAULT NULL COMMENT '编辑账号',
  `bianjixingming` varchar(200) DEFAULT NULL COMMENT '编辑姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621503500529 DEFAULT CHARSET=utf8 COMMENT='文章稿酬';

/*Data for the table `wenzhanggaochou` */

insert  into `wenzhanggaochou`(`id`,`addtime`,`zhanghao`,`xingming`,`wenzhangzishu`,`danjia`,`zongjia`,`dengjishijian`,`piaoju`,`bianjizhanghao`,`bianjixingming`,`ispay`,`userid`) values (61,'2021-05-20 17:28:39','账号1','姓名1',1,1,'总价1','2021-05-20','http://localhost:8080/ssmkta83/upload/wenzhanggaochou_piaoju1.jpg','编辑账号1','编辑姓名1','未支付',1);
insert  into `wenzhanggaochou`(`id`,`addtime`,`zhanghao`,`xingming`,`wenzhangzishu`,`danjia`,`zongjia`,`dengjishijian`,`piaoju`,`bianjizhanghao`,`bianjixingming`,`ispay`,`userid`) values (62,'2021-05-20 17:28:39','账号2','姓名2',2,2,'总价2','2021-05-20','http://localhost:8080/ssmkta83/upload/wenzhanggaochou_piaoju2.jpg','编辑账号2','编辑姓名2','未支付',2);
insert  into `wenzhanggaochou`(`id`,`addtime`,`zhanghao`,`xingming`,`wenzhangzishu`,`danjia`,`zongjia`,`dengjishijian`,`piaoju`,`bianjizhanghao`,`bianjixingming`,`ispay`,`userid`) values (63,'2021-05-20 17:28:39','账号3','姓名3',3,3,'总价3','2021-05-20','http://localhost:8080/ssmkta83/upload/wenzhanggaochou_piaoju3.jpg','编辑账号3','编辑姓名3','未支付',3);
insert  into `wenzhanggaochou`(`id`,`addtime`,`zhanghao`,`xingming`,`wenzhangzishu`,`danjia`,`zongjia`,`dengjishijian`,`piaoju`,`bianjizhanghao`,`bianjixingming`,`ispay`,`userid`) values (64,'2021-05-20 17:28:39','账号4','姓名4',4,4,'总价4','2021-05-20','http://localhost:8080/ssmkta83/upload/wenzhanggaochou_piaoju4.jpg','编辑账号4','编辑姓名4','未支付',4);
insert  into `wenzhanggaochou`(`id`,`addtime`,`zhanghao`,`xingming`,`wenzhangzishu`,`danjia`,`zongjia`,`dengjishijian`,`piaoju`,`bianjizhanghao`,`bianjixingming`,`ispay`,`userid`) values (65,'2021-05-20 17:28:39','账号5','姓名5',5,5,'总价5','2021-05-20','http://localhost:8080/ssmkta83/upload/wenzhanggaochou_piaoju5.jpg','编辑账号5','编辑姓名5','未支付',5);
insert  into `wenzhanggaochou`(`id`,`addtime`,`zhanghao`,`xingming`,`wenzhangzishu`,`danjia`,`zongjia`,`dengjishijian`,`piaoju`,`bianjizhanghao`,`bianjixingming`,`ispay`,`userid`) values (66,'2021-05-20 17:28:39','账号6','姓名6',6,6,'总价6','2021-05-20','http://localhost:8080/ssmkta83/upload/wenzhanggaochou_piaoju6.jpg','编辑账号6','编辑姓名6','未支付',6);
insert  into `wenzhanggaochou`(`id`,`addtime`,`zhanghao`,`xingming`,`wenzhangzishu`,`danjia`,`zongjia`,`dengjishijian`,`piaoju`,`bianjizhanghao`,`bianjixingming`,`ispay`,`userid`) values (1621503500528,'2021-05-20 17:38:20','11','士大夫',111,111,'12321','2021-05-20','http://localhost:8080/ssmkta83/upload/1621503498524.jpg','22','个会','已支付',1621503346046);

/*Table structure for table `wenzhangzhanshi` */

DROP TABLE IF EXISTS `wenzhangzhanshi`;

CREATE TABLE `wenzhangzhanshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `wenzhangfenlei` varchar(200) DEFAULT NULL COMMENT '文章分类',
  `neirong` longtext COMMENT '内容',
  `bianjishijian` date DEFAULT NULL COMMENT '编辑时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bianjizhanghao` varchar(200) DEFAULT NULL COMMENT '编辑账号',
  `bianjixingming` varchar(200) DEFAULT NULL COMMENT '编辑姓名',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621503471685 DEFAULT CHARSET=utf8 COMMENT='文章展示';

/*Data for the table `wenzhangzhanshi` */

insert  into `wenzhangzhanshi`(`id`,`addtime`,`biaoti`,`wenzhangfenlei`,`neirong`,`bianjishijian`,`fengmian`,`zhanghao`,`xingming`,`bianjizhanghao`,`bianjixingming`,`clicktime`,`clicknum`,`userid`) values (51,'2021-05-20 17:28:39','标题1','文章分类1','内容1','2021-05-20','http://localhost:8080/ssmkta83/upload/wenzhangzhanshi_fengmian1.jpg','账号1','姓名1','编辑账号1','编辑姓名1','2021-05-20 17:39:01',8,1);
insert  into `wenzhangzhanshi`(`id`,`addtime`,`biaoti`,`wenzhangfenlei`,`neirong`,`bianjishijian`,`fengmian`,`zhanghao`,`xingming`,`bianjizhanghao`,`bianjixingming`,`clicktime`,`clicknum`,`userid`) values (52,'2021-05-20 17:28:39','标题2','文章分类2','内容2','2021-05-20','http://localhost:8080/ssmkta83/upload/wenzhangzhanshi_fengmian2.jpg','账号2','姓名2','编辑账号2','编辑姓名2','2021-05-20 17:28:39',2,2);
insert  into `wenzhangzhanshi`(`id`,`addtime`,`biaoti`,`wenzhangfenlei`,`neirong`,`bianjishijian`,`fengmian`,`zhanghao`,`xingming`,`bianjizhanghao`,`bianjixingming`,`clicktime`,`clicknum`,`userid`) values (53,'2021-05-20 17:28:39','标题3','文章分类3','内容3','2021-05-20','http://localhost:8080/ssmkta83/upload/wenzhangzhanshi_fengmian3.jpg','账号3','姓名3','编辑账号3','编辑姓名3','2021-05-20 17:36:09',4,3);
insert  into `wenzhangzhanshi`(`id`,`addtime`,`biaoti`,`wenzhangfenlei`,`neirong`,`bianjishijian`,`fengmian`,`zhanghao`,`xingming`,`bianjizhanghao`,`bianjixingming`,`clicktime`,`clicknum`,`userid`) values (54,'2021-05-20 17:28:39','标题4','文章分类4','内容4','2021-05-20','http://localhost:8080/ssmkta83/upload/wenzhangzhanshi_fengmian4.jpg','账号4','姓名4','编辑账号4','编辑姓名4','2021-05-20 17:28:39',4,4);
insert  into `wenzhangzhanshi`(`id`,`addtime`,`biaoti`,`wenzhangfenlei`,`neirong`,`bianjishijian`,`fengmian`,`zhanghao`,`xingming`,`bianjizhanghao`,`bianjixingming`,`clicktime`,`clicknum`,`userid`) values (55,'2021-05-20 17:28:39','标题5','文章分类5','内容5','2021-05-20','http://localhost:8080/ssmkta83/upload/wenzhangzhanshi_fengmian5.jpg','账号5','姓名5','编辑账号5','编辑姓名5','2021-05-20 17:28:39',5,5);
insert  into `wenzhangzhanshi`(`id`,`addtime`,`biaoti`,`wenzhangfenlei`,`neirong`,`bianjishijian`,`fengmian`,`zhanghao`,`xingming`,`bianjizhanghao`,`bianjixingming`,`clicktime`,`clicknum`,`userid`) values (56,'2021-05-20 17:28:39','标题6','文章分类6','内容6','2021-05-20','http://localhost:8080/ssmkta83/upload/wenzhangzhanshi_fengmian6.jpg','账号6','姓名6','编辑账号6','编辑姓名6','2021-05-20 17:28:39',6,6);
insert  into `wenzhangzhanshi`(`id`,`addtime`,`biaoti`,`wenzhangfenlei`,`neirong`,`bianjishijian`,`fengmian`,`zhanghao`,`xingming`,`bianjizhanghao`,`bianjixingming`,`clicktime`,`clicknum`,`userid`) values (1621503471684,'2021-05-20 17:37:50','第三方是发送到','玄幻','第三方都是发送到第三方都是发送到第三方都是发送到第三方都是发送到第三方都是发送到第三方都是发送到第三方都是发送到第三方都是发送到第三方都是发送到第三方都是发送到第三方都是发送到','2021-05-18','http://localhost:8080/ssmkta83/upload/1621503387370.jpg','11','士大夫','22','个会','2021-05-20 17:38:53',3,1621503346046);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) NOT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621503336353 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (11,'2021-05-20 17:28:39','用户1','123456','姓名1',1,'男','13823888881','http://localhost:8080/ssmkta83/upload/yonghu_zhaopian1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (12,'2021-05-20 17:28:39','用户2','123456','姓名2',2,'男','13823888882','http://localhost:8080/ssmkta83/upload/yonghu_zhaopian2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (13,'2021-05-20 17:28:39','用户3','123456','姓名3',3,'男','13823888883','http://localhost:8080/ssmkta83/upload/yonghu_zhaopian3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (14,'2021-05-20 17:28:39','用户4','123456','姓名4',4,'男','13823888884','http://localhost:8080/ssmkta83/upload/yonghu_zhaopian4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (15,'2021-05-20 17:28:39','用户5','123456','姓名5',5,'男','13823888885','http://localhost:8080/ssmkta83/upload/yonghu_zhaopian5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (16,'2021-05-20 17:28:39','用户6','123456','姓名6',6,'男','13823888886','http://localhost:8080/ssmkta83/upload/yonghu_zhaopian6.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (1621503336352,'2021-05-20 17:35:36','11','11','士大夫',11,'男','11122211111','http://localhost:8080/ssmkta83/upload/1621503416916.jpg');

/*Table structure for table `yonghuwenzhang` */

DROP TABLE IF EXISTS `yonghuwenzhang`;

CREATE TABLE `yonghuwenzhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `wenzhangfenlei` varchar(200) DEFAULT NULL COMMENT '文章分类',
  `neirong` longtext COMMENT '内容',
  `bianjishijian` date DEFAULT NULL COMMENT '编辑时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bianjizhanghao` varchar(200) DEFAULT NULL COMMENT '编辑账号',
  `bianjixingming` varchar(200) DEFAULT NULL COMMENT '编辑姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621503403294 DEFAULT CHARSET=utf8 COMMENT='用户文章';

/*Data for the table `yonghuwenzhang` */

insert  into `yonghuwenzhang`(`id`,`addtime`,`biaoti`,`wenzhangfenlei`,`neirong`,`bianjishijian`,`fengmian`,`zhanghao`,`xingming`,`bianjizhanghao`,`bianjixingming`,`sfsh`,`shhf`,`userid`) values (31,'2021-05-20 17:28:39','标题1','文章分类1','内容1','2021-05-20','http://localhost:8080/ssmkta83/upload/yonghuwenzhang_fengmian1.jpg','账号1','姓名1','编辑账号1','编辑姓名1','是','',1);
insert  into `yonghuwenzhang`(`id`,`addtime`,`biaoti`,`wenzhangfenlei`,`neirong`,`bianjishijian`,`fengmian`,`zhanghao`,`xingming`,`bianjizhanghao`,`bianjixingming`,`sfsh`,`shhf`,`userid`) values (32,'2021-05-20 17:28:39','标题2','文章分类2','内容2','2021-05-20','http://localhost:8080/ssmkta83/upload/yonghuwenzhang_fengmian2.jpg','账号2','姓名2','编辑账号2','编辑姓名2','是','',2);
insert  into `yonghuwenzhang`(`id`,`addtime`,`biaoti`,`wenzhangfenlei`,`neirong`,`bianjishijian`,`fengmian`,`zhanghao`,`xingming`,`bianjizhanghao`,`bianjixingming`,`sfsh`,`shhf`,`userid`) values (33,'2021-05-20 17:28:39','标题3','文章分类3','内容3','2021-05-20','http://localhost:8080/ssmkta83/upload/yonghuwenzhang_fengmian3.jpg','账号3','姓名3','编辑账号3','编辑姓名3','是','',3);
insert  into `yonghuwenzhang`(`id`,`addtime`,`biaoti`,`wenzhangfenlei`,`neirong`,`bianjishijian`,`fengmian`,`zhanghao`,`xingming`,`bianjizhanghao`,`bianjixingming`,`sfsh`,`shhf`,`userid`) values (34,'2021-05-20 17:28:39','标题4','文章分类4','内容4','2021-05-20','http://localhost:8080/ssmkta83/upload/yonghuwenzhang_fengmian4.jpg','账号4','姓名4','编辑账号4','编辑姓名4','是','',4);
insert  into `yonghuwenzhang`(`id`,`addtime`,`biaoti`,`wenzhangfenlei`,`neirong`,`bianjishijian`,`fengmian`,`zhanghao`,`xingming`,`bianjizhanghao`,`bianjixingming`,`sfsh`,`shhf`,`userid`) values (35,'2021-05-20 17:28:39','标题5','文章分类5','内容5','2021-05-20','http://localhost:8080/ssmkta83/upload/yonghuwenzhang_fengmian5.jpg','账号5','姓名5','编辑账号5','编辑姓名5','是','',5);
insert  into `yonghuwenzhang`(`id`,`addtime`,`biaoti`,`wenzhangfenlei`,`neirong`,`bianjishijian`,`fengmian`,`zhanghao`,`xingming`,`bianjizhanghao`,`bianjixingming`,`sfsh`,`shhf`,`userid`) values (36,'2021-05-20 17:28:39','标题6','文章分类6','内容6','2021-05-20','http://localhost:8080/ssmkta83/upload/yonghuwenzhang_fengmian6.jpg','账号6','姓名6','编辑账号6','编辑姓名6','是','',6);
insert  into `yonghuwenzhang`(`id`,`addtime`,`biaoti`,`wenzhangfenlei`,`neirong`,`bianjishijian`,`fengmian`,`zhanghao`,`xingming`,`bianjizhanghao`,`bianjixingming`,`sfsh`,`shhf`,`userid`) values (1621503403293,'2021-05-20 17:36:42','第三方是发送到','玄幻','第三方都是发送到第三方都是发送到第三方都是发送到第三方都是发送到第三方都是发送到第三方都是发送到第三方都是发送到第三方都是发送到第三方都是发送到第三方都是发送到第三方都是发送到','2021-05-18','http://localhost:8080/ssmkta83/upload/1621503387370.jpg','11','士大夫','22','个会','是','士大夫的法国德国地方地方个',1621503336352);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
