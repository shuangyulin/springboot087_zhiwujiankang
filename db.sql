/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootx2t46
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootx2t46` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootx2t46`;

/*Table structure for table `cailiaoleimu` */

DROP TABLE IF EXISTS `cailiaoleimu`;

CREATE TABLE `cailiaoleimu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cailiaoleimu` varchar(200) DEFAULT NULL COMMENT '材料类目',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='材料类目';

/*Data for the table `cailiaoleimu` */

insert  into `cailiaoleimu`(`id`,`addtime`,`cailiaoleimu`) values (101,'2021-05-12 20:04:43','材料类目1');
insert  into `cailiaoleimu`(`id`,`addtime`,`cailiaoleimu`) values (102,'2021-05-12 20:04:43','材料类目2');
insert  into `cailiaoleimu`(`id`,`addtime`,`cailiaoleimu`) values (103,'2021-05-12 20:04:43','材料类目3');
insert  into `cailiaoleimu`(`id`,`addtime`,`cailiaoleimu`) values (104,'2021-05-12 20:04:43','材料类目4');
insert  into `cailiaoleimu`(`id`,`addtime`,`cailiaoleimu`) values (105,'2021-05-12 20:04:43','材料类目5');
insert  into `cailiaoleimu`(`id`,`addtime`,`cailiaoleimu`) values (106,'2021-05-12 20:04:43','材料类目6');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='咨询专家';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (111,'2021-05-12 20:04:43',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (112,'2021-05-12 20:04:43',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (113,'2021-05-12 20:04:43',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (114,'2021-05-12 20:04:43',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (115,'2021-05-12 20:04:43',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (116,'2021-05-12 20:04:43',6,6,'提问6','回复6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootx2t46/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootx2t46/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootx2t46/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='植物健康论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (121,'2021-05-12 20:04:43','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (122,'2021-05-12 20:04:43','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (123,'2021-05-12 20:04:43','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (124,'2021-05-12 20:04:43','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (125,'2021-05-12 20:04:43','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (126,'2021-05-12 20:04:43','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `jishurenyuan` */

DROP TABLE IF EXISTS `jishurenyuan`;

CREATE TABLE `jishurenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jishurenzhanghao` varchar(200) NOT NULL COMMENT '技术人账号',
  `jishurenxingming` varchar(200) DEFAULT NULL COMMENT '技术人姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jishurenzhanghao` (`jishurenzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='技术人员';

/*Data for the table `jishurenyuan` */

insert  into `jishurenyuan`(`id`,`addtime`,`jishurenzhanghao`,`jishurenxingming`,`mima`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (21,'2021-05-12 20:04:43','技术人员1','技术人姓名1','123456','男','13823888881','773890001@qq.com','http://localhost:8080/springbootx2t46/upload/jishurenyuan_touxiang1.jpg');
insert  into `jishurenyuan`(`id`,`addtime`,`jishurenzhanghao`,`jishurenxingming`,`mima`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (22,'2021-05-12 20:04:43','技术人员2','技术人姓名2','123456','男','13823888882','773890002@qq.com','http://localhost:8080/springbootx2t46/upload/jishurenyuan_touxiang2.jpg');
insert  into `jishurenyuan`(`id`,`addtime`,`jishurenzhanghao`,`jishurenxingming`,`mima`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (23,'2021-05-12 20:04:43','技术人员3','技术人姓名3','123456','男','13823888883','773890003@qq.com','http://localhost:8080/springbootx2t46/upload/jishurenyuan_touxiang3.jpg');
insert  into `jishurenyuan`(`id`,`addtime`,`jishurenzhanghao`,`jishurenxingming`,`mima`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (24,'2021-05-12 20:04:43','技术人员4','技术人姓名4','123456','男','13823888884','773890004@qq.com','http://localhost:8080/springbootx2t46/upload/jishurenyuan_touxiang4.jpg');
insert  into `jishurenyuan`(`id`,`addtime`,`jishurenzhanghao`,`jishurenxingming`,`mima`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (25,'2021-05-12 20:04:43','技术人员5','技术人姓名5','123456','男','13823888885','773890005@qq.com','http://localhost:8080/springbootx2t46/upload/jishurenyuan_touxiang5.jpg');
insert  into `jishurenyuan`(`id`,`addtime`,`jishurenzhanghao`,`jishurenxingming`,`mima`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (26,'2021-05-12 20:04:43','技术人员6','技术人姓名6','123456','男','13823888886','773890006@qq.com','http://localhost:8080/springbootx2t46/upload/jishurenyuan_touxiang6.jpg');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='植物健康资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (131,'2021-05-12 20:04:43','标题1','简介1','http://localhost:8080/springbootx2t46/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (132,'2021-05-12 20:04:43','标题2','简介2','http://localhost:8080/springbootx2t46/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (133,'2021-05-12 20:04:43','标题3','简介3','http://localhost:8080/springbootx2t46/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (134,'2021-05-12 20:04:43','标题4','简介4','http://localhost:8080/springbootx2t46/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (135,'2021-05-12 20:04:43','标题5','简介5','http://localhost:8080/springbootx2t46/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (136,'2021-05-12 20:04:43','标题6','简介6','http://localhost:8080/springbootx2t46/upload/news_picture6.jpg','内容6');

/*Table structure for table `putongyuangong` */

DROP TABLE IF EXISTS `putongyuangong`;

CREATE TABLE `putongyuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='普通员工';

/*Data for the table `putongyuangong` */

insert  into `putongyuangong`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (11,'2021-05-12 20:04:43','普通员工1','用户姓名1','123456','男','13823888881','773890001@qq.com','http://localhost:8080/springbootx2t46/upload/putongyuangong_touxiang1.jpg');
insert  into `putongyuangong`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (12,'2021-05-12 20:04:43','普通员工2','用户姓名2','123456','男','13823888882','773890002@qq.com','http://localhost:8080/springbootx2t46/upload/putongyuangong_touxiang2.jpg');
insert  into `putongyuangong`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (13,'2021-05-12 20:04:43','普通员工3','用户姓名3','123456','男','13823888883','773890003@qq.com','http://localhost:8080/springbootx2t46/upload/putongyuangong_touxiang3.jpg');
insert  into `putongyuangong`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (14,'2021-05-12 20:04:43','普通员工4','用户姓名4','123456','男','13823888884','773890004@qq.com','http://localhost:8080/springbootx2t46/upload/putongyuangong_touxiang4.jpg');
insert  into `putongyuangong`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (15,'2021-05-12 20:04:43','普通员工5','用户姓名5','123456','男','13823888885','773890005@qq.com','http://localhost:8080/springbootx2t46/upload/putongyuangong_touxiang5.jpg');
insert  into `putongyuangong`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (16,'2021-05-12 20:04:43','普通员工6','用户姓名6','123456','男','13823888886','773890006@qq.com','http://localhost:8080/springbootx2t46/upload/putongyuangong_touxiang6.jpg');

/*Table structure for table `putongzhiwujianchadengji` */

DROP TABLE IF EXISTS `putongzhiwujianchadengji`;

CREATE TABLE `putongzhiwujianchadengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiwubianhao` varchar(200) DEFAULT NULL COMMENT '植物编号',
  `zhiwumingcheng` varchar(200) DEFAULT NULL COMMENT '植物名称',
  `zhiwuzhonglei` varchar(200) DEFAULT NULL COMMENT '植物种类',
  `zhiwujianjie` longtext COMMENT '植物简介',
  `zhiwujiankangzhuangkuang` longtext COMMENT '植物健康状况',
  `shijian` date DEFAULT NULL COMMENT '时间',
  `didian` varchar(200) DEFAULT NULL COMMENT '地点',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhiwubianhao` (`zhiwubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='普通植物检查登记';

/*Data for the table `putongzhiwujianchadengji` */

insert  into `putongzhiwujianchadengji`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`zhiwuzhonglei`,`zhiwujianjie`,`zhiwujiankangzhuangkuang`,`shijian`,`didian`,`tupian`) values (51,'2021-05-12 20:04:43','植物编号1','植物名称1','植物种类1','植物简介1','植物健康状况1','2021-05-12','地点1','http://localhost:8080/springbootx2t46/upload/putongzhiwujianchadengji_tupian1.jpg');
insert  into `putongzhiwujianchadengji`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`zhiwuzhonglei`,`zhiwujianjie`,`zhiwujiankangzhuangkuang`,`shijian`,`didian`,`tupian`) values (52,'2021-05-12 20:04:43','植物编号2','植物名称2','植物种类2','植物简介2','植物健康状况2','2021-05-12','地点2','http://localhost:8080/springbootx2t46/upload/putongzhiwujianchadengji_tupian2.jpg');
insert  into `putongzhiwujianchadengji`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`zhiwuzhonglei`,`zhiwujianjie`,`zhiwujiankangzhuangkuang`,`shijian`,`didian`,`tupian`) values (53,'2021-05-12 20:04:43','植物编号3','植物名称3','植物种类3','植物简介3','植物健康状况3','2021-05-12','地点3','http://localhost:8080/springbootx2t46/upload/putongzhiwujianchadengji_tupian3.jpg');
insert  into `putongzhiwujianchadengji`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`zhiwuzhonglei`,`zhiwujianjie`,`zhiwujiankangzhuangkuang`,`shijian`,`didian`,`tupian`) values (54,'2021-05-12 20:04:43','植物编号4','植物名称4','植物种类4','植物简介4','植物健康状况4','2021-05-12','地点4','http://localhost:8080/springbootx2t46/upload/putongzhiwujianchadengji_tupian4.jpg');
insert  into `putongzhiwujianchadengji`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`zhiwuzhonglei`,`zhiwujianjie`,`zhiwujiankangzhuangkuang`,`shijian`,`didian`,`tupian`) values (55,'2021-05-12 20:04:43','植物编号5','植物名称5','植物种类5','植物简介5','植物健康状况5','2021-05-12','地点5','http://localhost:8080/springbootx2t46/upload/putongzhiwujianchadengji_tupian5.jpg');
insert  into `putongzhiwujianchadengji`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`zhiwuzhonglei`,`zhiwujianjie`,`zhiwujiankangzhuangkuang`,`shijian`,`didian`,`tupian`) values (56,'2021-05-12 20:04:43','植物编号6','植物名称6','植物种类6','植物简介6','植物健康状况6','2021-05-12','地点6','http://localhost:8080/springbootx2t46/upload/putongzhiwujianchadengji_tupian6.jpg');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-12 20:04:43');

/*Table structure for table `zhenguizhiwujianchadengji` */

DROP TABLE IF EXISTS `zhenguizhiwujianchadengji`;

CREATE TABLE `zhenguizhiwujianchadengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiwubianhao` varchar(200) DEFAULT NULL COMMENT '植物编号',
  `zhiwumingcheng` varchar(200) DEFAULT NULL COMMENT '植物名称',
  `zhiwuzhonglei` varchar(200) DEFAULT NULL COMMENT '植物种类',
  `zhiwujianjie` longtext COMMENT '植物简介',
  `zhiwujiankangzhuangkuang` longtext COMMENT '植物健康状况',
  `shijian` date DEFAULT NULL COMMENT '时间',
  `didian` varchar(200) DEFAULT NULL COMMENT '地点',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhiwubianhao` (`zhiwubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='珍贵植物检查登记';

/*Data for the table `zhenguizhiwujianchadengji` */

insert  into `zhenguizhiwujianchadengji`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`zhiwuzhonglei`,`zhiwujianjie`,`zhiwujiankangzhuangkuang`,`shijian`,`didian`,`tupian`) values (61,'2021-05-12 20:04:43','植物编号1','植物名称1','植物种类1','植物简介1','植物健康状况1','2021-05-12','地点1','http://localhost:8080/springbootx2t46/upload/zhenguizhiwujianchadengji_tupian1.jpg');
insert  into `zhenguizhiwujianchadengji`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`zhiwuzhonglei`,`zhiwujianjie`,`zhiwujiankangzhuangkuang`,`shijian`,`didian`,`tupian`) values (62,'2021-05-12 20:04:43','植物编号2','植物名称2','植物种类2','植物简介2','植物健康状况2','2021-05-12','地点2','http://localhost:8080/springbootx2t46/upload/zhenguizhiwujianchadengji_tupian2.jpg');
insert  into `zhenguizhiwujianchadengji`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`zhiwuzhonglei`,`zhiwujianjie`,`zhiwujiankangzhuangkuang`,`shijian`,`didian`,`tupian`) values (63,'2021-05-12 20:04:43','植物编号3','植物名称3','植物种类3','植物简介3','植物健康状况3','2021-05-12','地点3','http://localhost:8080/springbootx2t46/upload/zhenguizhiwujianchadengji_tupian3.jpg');
insert  into `zhenguizhiwujianchadengji`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`zhiwuzhonglei`,`zhiwujianjie`,`zhiwujiankangzhuangkuang`,`shijian`,`didian`,`tupian`) values (64,'2021-05-12 20:04:43','植物编号4','植物名称4','植物种类4','植物简介4','植物健康状况4','2021-05-12','地点4','http://localhost:8080/springbootx2t46/upload/zhenguizhiwujianchadengji_tupian4.jpg');
insert  into `zhenguizhiwujianchadengji`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`zhiwuzhonglei`,`zhiwujianjie`,`zhiwujiankangzhuangkuang`,`shijian`,`didian`,`tupian`) values (65,'2021-05-12 20:04:43','植物编号5','植物名称5','植物种类5','植物简介5','植物健康状况5','2021-05-12','地点5','http://localhost:8080/springbootx2t46/upload/zhenguizhiwujianchadengji_tupian5.jpg');
insert  into `zhenguizhiwujianchadengji`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`zhiwuzhonglei`,`zhiwujianjie`,`zhiwujiankangzhuangkuang`,`shijian`,`didian`,`tupian`) values (66,'2021-05-12 20:04:43','植物编号6','植物名称6','植物种类6','植物简介6','植物健康状况6','2021-05-12','地点6','http://localhost:8080/springbootx2t46/upload/zhenguizhiwujianchadengji_tupian6.jpg');

/*Table structure for table `zhiwujibinganli` */

DROP TABLE IF EXISTS `zhiwujibinganli`;

CREATE TABLE `zhiwujibinganli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiwumingcheng` varchar(200) DEFAULT NULL COMMENT '植物名称',
  `zhiwuzhonglei` varchar(200) DEFAULT NULL COMMENT '植物种类',
  `zhiwujianjie` longtext COMMENT '植物简介',
  `jibingmingcheng` varchar(200) DEFAULT NULL COMMENT '疾病名称',
  `jibingzhengzhuang` longtext COMMENT '疾病症状',
  `fashengshijian` datetime DEFAULT NULL COMMENT '发生时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='植物疾病案例';

/*Data for the table `zhiwujibinganli` */

insert  into `zhiwujibinganli`(`id`,`addtime`,`zhiwumingcheng`,`zhiwuzhonglei`,`zhiwujianjie`,`jibingmingcheng`,`jibingzhengzhuang`,`fashengshijian`,`tupian`,`yonghuzhanghao`,`yonghuxingming`,`sfsh`,`shhf`) values (31,'2021-05-12 20:04:43','植物名称1','植物种类1','植物简介1','疾病名称1','疾病症状1','2021-05-12 20:04:43','http://localhost:8080/springbootx2t46/upload/zhiwujibinganli_tupian1.jpg','用户账号1','用户姓名1','是','');
insert  into `zhiwujibinganli`(`id`,`addtime`,`zhiwumingcheng`,`zhiwuzhonglei`,`zhiwujianjie`,`jibingmingcheng`,`jibingzhengzhuang`,`fashengshijian`,`tupian`,`yonghuzhanghao`,`yonghuxingming`,`sfsh`,`shhf`) values (32,'2021-05-12 20:04:43','植物名称2','植物种类2','植物简介2','疾病名称2','疾病症状2','2021-05-12 20:04:43','http://localhost:8080/springbootx2t46/upload/zhiwujibinganli_tupian2.jpg','用户账号2','用户姓名2','是','');
insert  into `zhiwujibinganli`(`id`,`addtime`,`zhiwumingcheng`,`zhiwuzhonglei`,`zhiwujianjie`,`jibingmingcheng`,`jibingzhengzhuang`,`fashengshijian`,`tupian`,`yonghuzhanghao`,`yonghuxingming`,`sfsh`,`shhf`) values (33,'2021-05-12 20:04:43','植物名称3','植物种类3','植物简介3','疾病名称3','疾病症状3','2021-05-12 20:04:43','http://localhost:8080/springbootx2t46/upload/zhiwujibinganli_tupian3.jpg','用户账号3','用户姓名3','是','');
insert  into `zhiwujibinganli`(`id`,`addtime`,`zhiwumingcheng`,`zhiwuzhonglei`,`zhiwujianjie`,`jibingmingcheng`,`jibingzhengzhuang`,`fashengshijian`,`tupian`,`yonghuzhanghao`,`yonghuxingming`,`sfsh`,`shhf`) values (34,'2021-05-12 20:04:43','植物名称4','植物种类4','植物简介4','疾病名称4','疾病症状4','2021-05-12 20:04:43','http://localhost:8080/springbootx2t46/upload/zhiwujibinganli_tupian4.jpg','用户账号4','用户姓名4','是','');
insert  into `zhiwujibinganli`(`id`,`addtime`,`zhiwumingcheng`,`zhiwuzhonglei`,`zhiwujianjie`,`jibingmingcheng`,`jibingzhengzhuang`,`fashengshijian`,`tupian`,`yonghuzhanghao`,`yonghuxingming`,`sfsh`,`shhf`) values (35,'2021-05-12 20:04:43','植物名称5','植物种类5','植物简介5','疾病名称5','疾病症状5','2021-05-12 20:04:43','http://localhost:8080/springbootx2t46/upload/zhiwujibinganli_tupian5.jpg','用户账号5','用户姓名5','是','');
insert  into `zhiwujibinganli`(`id`,`addtime`,`zhiwumingcheng`,`zhiwuzhonglei`,`zhiwujianjie`,`jibingmingcheng`,`jibingzhengzhuang`,`fashengshijian`,`tupian`,`yonghuzhanghao`,`yonghuxingming`,`sfsh`,`shhf`) values (36,'2021-05-12 20:04:43','植物名称6','植物种类6','植物简介6','疾病名称6','疾病症状6','2021-05-12 20:04:43','http://localhost:8080/springbootx2t46/upload/zhiwujibinganli_tupian6.jpg','用户账号6','用户姓名6','是','');

/*Table structure for table `zhiwujishufangan` */

DROP TABLE IF EXISTS `zhiwujishufangan`;

CREATE TABLE `zhiwujishufangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiwubianhao` varchar(200) DEFAULT NULL COMMENT '植物编号',
  `zhiwumingcheng` varchar(200) DEFAULT NULL COMMENT '植物名称',
  `zhiwujiankangzhuangkuang` longtext COMMENT '植物健康状况',
  `jiuzhifangan` longtext COMMENT '救治方案',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='植物技术方案';

/*Data for the table `zhiwujishufangan` */

insert  into `zhiwujishufangan`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`zhiwujiankangzhuangkuang`,`jiuzhifangan`,`tupian`) values (71,'2021-05-12 20:04:43','植物编号1','植物名称1','植物健康状况1','救治方案1','http://localhost:8080/springbootx2t46/upload/zhiwujishufangan_tupian1.jpg');
insert  into `zhiwujishufangan`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`zhiwujiankangzhuangkuang`,`jiuzhifangan`,`tupian`) values (72,'2021-05-12 20:04:43','植物编号2','植物名称2','植物健康状况2','救治方案2','http://localhost:8080/springbootx2t46/upload/zhiwujishufangan_tupian2.jpg');
insert  into `zhiwujishufangan`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`zhiwujiankangzhuangkuang`,`jiuzhifangan`,`tupian`) values (73,'2021-05-12 20:04:43','植物编号3','植物名称3','植物健康状况3','救治方案3','http://localhost:8080/springbootx2t46/upload/zhiwujishufangan_tupian3.jpg');
insert  into `zhiwujishufangan`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`zhiwujiankangzhuangkuang`,`jiuzhifangan`,`tupian`) values (74,'2021-05-12 20:04:43','植物编号4','植物名称4','植物健康状况4','救治方案4','http://localhost:8080/springbootx2t46/upload/zhiwujishufangan_tupian4.jpg');
insert  into `zhiwujishufangan`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`zhiwujiankangzhuangkuang`,`jiuzhifangan`,`tupian`) values (75,'2021-05-12 20:04:43','植物编号5','植物名称5','植物健康状况5','救治方案5','http://localhost:8080/springbootx2t46/upload/zhiwujishufangan_tupian5.jpg');
insert  into `zhiwujishufangan`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`zhiwujiankangzhuangkuang`,`jiuzhifangan`,`tupian`) values (76,'2021-05-12 20:04:43','植物编号6','植物名称6','植物健康状况6','救治方案6','http://localhost:8080/springbootx2t46/upload/zhiwujishufangan_tupian6.jpg');

/*Table structure for table `zhiwujiuzhicailiao` */

DROP TABLE IF EXISTS `zhiwujiuzhicailiao`;

CREATE TABLE `zhiwujiuzhicailiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cailiaobianhao` varchar(200) DEFAULT NULL COMMENT '材料编号',
  `cailiaomingcheng` varchar(200) DEFAULT NULL COMMENT '材料名称',
  `cailiaoleimu` varchar(200) DEFAULT NULL COMMENT '材料类目',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cailiaobianhao` (`cailiaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='植物救治材料';

/*Data for the table `zhiwujiuzhicailiao` */

insert  into `zhiwujiuzhicailiao`(`id`,`addtime`,`cailiaobianhao`,`cailiaomingcheng`,`cailiaoleimu`,`shuliang`,`tupian`) values (91,'2021-05-12 20:04:43','材料编号1','材料名称1','材料类目1',1,'http://localhost:8080/springbootx2t46/upload/zhiwujiuzhicailiao_tupian1.jpg');
insert  into `zhiwujiuzhicailiao`(`id`,`addtime`,`cailiaobianhao`,`cailiaomingcheng`,`cailiaoleimu`,`shuliang`,`tupian`) values (92,'2021-05-12 20:04:43','材料编号2','材料名称2','材料类目2',2,'http://localhost:8080/springbootx2t46/upload/zhiwujiuzhicailiao_tupian2.jpg');
insert  into `zhiwujiuzhicailiao`(`id`,`addtime`,`cailiaobianhao`,`cailiaomingcheng`,`cailiaoleimu`,`shuliang`,`tupian`) values (93,'2021-05-12 20:04:43','材料编号3','材料名称3','材料类目3',3,'http://localhost:8080/springbootx2t46/upload/zhiwujiuzhicailiao_tupian3.jpg');
insert  into `zhiwujiuzhicailiao`(`id`,`addtime`,`cailiaobianhao`,`cailiaomingcheng`,`cailiaoleimu`,`shuliang`,`tupian`) values (94,'2021-05-12 20:04:43','材料编号4','材料名称4','材料类目4',4,'http://localhost:8080/springbootx2t46/upload/zhiwujiuzhicailiao_tupian4.jpg');
insert  into `zhiwujiuzhicailiao`(`id`,`addtime`,`cailiaobianhao`,`cailiaomingcheng`,`cailiaoleimu`,`shuliang`,`tupian`) values (95,'2021-05-12 20:04:43','材料编号5','材料名称5','材料类目5',5,'http://localhost:8080/springbootx2t46/upload/zhiwujiuzhicailiao_tupian5.jpg');
insert  into `zhiwujiuzhicailiao`(`id`,`addtime`,`cailiaobianhao`,`cailiaomingcheng`,`cailiaoleimu`,`shuliang`,`tupian`) values (96,'2021-05-12 20:04:43','材料编号6','材料名称6','材料类目6',6,'http://localhost:8080/springbootx2t46/upload/zhiwujiuzhicailiao_tupian6.jpg');

/*Table structure for table `zhiwujiuzhiyongliaodengji` */

DROP TABLE IF EXISTS `zhiwujiuzhiyongliaodengji`;

CREATE TABLE `zhiwujiuzhiyongliaodengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiwubianhao` varchar(200) DEFAULT NULL COMMENT '植物编号',
  `zhiwumingcheng` varchar(200) DEFAULT NULL COMMENT '植物名称',
  `cailiaobianhao` longtext COMMENT '材料编号',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='植物救治用料登记';

/*Data for the table `zhiwujiuzhiyongliaodengji` */

insert  into `zhiwujiuzhiyongliaodengji`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`cailiaobianhao`,`shuliang`,`tupian`) values (81,'2021-05-12 20:04:43','植物编号1','植物名称1','材料编号1','数量1','http://localhost:8080/springbootx2t46/upload/zhiwujiuzhiyongliaodengji_tupian1.jpg');
insert  into `zhiwujiuzhiyongliaodengji`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`cailiaobianhao`,`shuliang`,`tupian`) values (82,'2021-05-12 20:04:43','植物编号2','植物名称2','材料编号2','数量2','http://localhost:8080/springbootx2t46/upload/zhiwujiuzhiyongliaodengji_tupian2.jpg');
insert  into `zhiwujiuzhiyongliaodengji`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`cailiaobianhao`,`shuliang`,`tupian`) values (83,'2021-05-12 20:04:43','植物编号3','植物名称3','材料编号3','数量3','http://localhost:8080/springbootx2t46/upload/zhiwujiuzhiyongliaodengji_tupian3.jpg');
insert  into `zhiwujiuzhiyongliaodengji`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`cailiaobianhao`,`shuliang`,`tupian`) values (84,'2021-05-12 20:04:43','植物编号4','植物名称4','材料编号4','数量4','http://localhost:8080/springbootx2t46/upload/zhiwujiuzhiyongliaodengji_tupian4.jpg');
insert  into `zhiwujiuzhiyongliaodengji`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`cailiaobianhao`,`shuliang`,`tupian`) values (85,'2021-05-12 20:04:43','植物编号5','植物名称5','材料编号5','数量5','http://localhost:8080/springbootx2t46/upload/zhiwujiuzhiyongliaodengji_tupian5.jpg');
insert  into `zhiwujiuzhiyongliaodengji`(`id`,`addtime`,`zhiwubianhao`,`zhiwumingcheng`,`cailiaobianhao`,`shuliang`,`tupian`) values (86,'2021-05-12 20:04:43','植物编号6','植物名称6','材料编号6','数量6','http://localhost:8080/springbootx2t46/upload/zhiwujiuzhiyongliaodengji_tupian6.jpg');

/*Table structure for table `zhiwuzhonglei` */

DROP TABLE IF EXISTS `zhiwuzhonglei`;

CREATE TABLE `zhiwuzhonglei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiwuzhonglei` varchar(200) DEFAULT NULL COMMENT '植物种类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='植物种类';

/*Data for the table `zhiwuzhonglei` */

insert  into `zhiwuzhonglei`(`id`,`addtime`,`zhiwuzhonglei`) values (41,'2021-05-12 20:04:43','植物种类1');
insert  into `zhiwuzhonglei`(`id`,`addtime`,`zhiwuzhonglei`) values (42,'2021-05-12 20:04:43','植物种类2');
insert  into `zhiwuzhonglei`(`id`,`addtime`,`zhiwuzhonglei`) values (43,'2021-05-12 20:04:43','植物种类3');
insert  into `zhiwuzhonglei`(`id`,`addtime`,`zhiwuzhonglei`) values (44,'2021-05-12 20:04:43','植物种类4');
insert  into `zhiwuzhonglei`(`id`,`addtime`,`zhiwuzhonglei`) values (45,'2021-05-12 20:04:43','植物种类5');
insert  into `zhiwuzhonglei`(`id`,`addtime`,`zhiwuzhonglei`) values (46,'2021-05-12 20:04:43','植物种类6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
