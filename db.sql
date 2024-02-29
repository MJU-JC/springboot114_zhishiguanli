/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootuaaa4
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootuaaa4` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootuaaa4`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootuaaa4/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootuaaa4/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootuaaa4/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discusszhishixinxi` */

DROP TABLE IF EXISTS `discusszhishixinxi`;

CREATE TABLE `discusszhishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='知识信息评论表';

/*Data for the table `discusszhishixinxi` */

insert  into `discusszhishixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (51,'2021-05-16 21:27:59',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusszhishixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (52,'2021-05-16 21:27:59',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusszhishixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (53,'2021-05-16 21:27:59',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusszhishixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (54,'2021-05-16 21:27:59',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusszhishixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (55,'2021-05-16 21:27:59',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusszhishixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (56,'2021-05-16 21:27:59',6,6,'用户名6','评论内容6','回复内容6');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','hpcfgsn52jdul9ufk163udql8pb44l5o','2021-05-16 21:29:52','2021-05-16 22:29:52');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-16 21:27:59');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`) values (11,'2021-05-16 21:27:59','用户1','123456','姓名1','http://localhost:8080/springbootuaaa4/upload/yonghu_touxiang1.jpg','男','13823888881');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`) values (12,'2021-05-16 21:27:59','用户2','123456','姓名2','http://localhost:8080/springbootuaaa4/upload/yonghu_touxiang2.jpg','男','13823888882');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`) values (13,'2021-05-16 21:27:59','用户3','123456','姓名3','http://localhost:8080/springbootuaaa4/upload/yonghu_touxiang3.jpg','男','13823888883');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`) values (14,'2021-05-16 21:27:59','用户4','123456','姓名4','http://localhost:8080/springbootuaaa4/upload/yonghu_touxiang4.jpg','男','13823888884');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`) values (15,'2021-05-16 21:27:59','用户5','123456','姓名5','http://localhost:8080/springbootuaaa4/upload/yonghu_touxiang5.jpg','男','13823888885');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`) values (16,'2021-05-16 21:27:59','用户6','123456','姓名6','http://localhost:8080/springbootuaaa4/upload/yonghu_touxiang6.jpg','男','13823888886');

/*Table structure for table `zhishifenlei` */

DROP TABLE IF EXISTS `zhishifenlei`;

CREATE TABLE `zhishifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhishifenlei` varchar(200) NOT NULL COMMENT '知识分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhishifenlei` (`zhishifenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='知识分类';

/*Data for the table `zhishifenlei` */

insert  into `zhishifenlei`(`id`,`addtime`,`zhishifenlei`) values (21,'2021-05-16 21:27:59','知识分类1');
insert  into `zhishifenlei`(`id`,`addtime`,`zhishifenlei`) values (22,'2021-05-16 21:27:59','知识分类2');
insert  into `zhishifenlei`(`id`,`addtime`,`zhishifenlei`) values (23,'2021-05-16 21:27:59','知识分类3');
insert  into `zhishifenlei`(`id`,`addtime`,`zhishifenlei`) values (24,'2021-05-16 21:27:59','知识分类4');
insert  into `zhishifenlei`(`id`,`addtime`,`zhishifenlei`) values (25,'2021-05-16 21:27:59','知识分类5');
insert  into `zhishifenlei`(`id`,`addtime`,`zhishifenlei`) values (26,'2021-05-16 21:27:59','知识分类6');

/*Table structure for table `zhishixinxi` */

DROP TABLE IF EXISTS `zhishixinxi`;

CREATE TABLE `zhishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhishibiaoti` varchar(200) NOT NULL COMMENT '知识标题',
  `zhishifenlei` varchar(200) NOT NULL COMMENT '知识分类',
  `biaoqian` varchar(200) NOT NULL COMMENT '标签',
  `fengmiantu` varchar(200) NOT NULL COMMENT '封面图',
  `zhishijianjie` longtext COMMENT '知识简介',
  `zhishishipin` varchar(200) DEFAULT NULL COMMENT '知识视频',
  `zhishifujian` varchar(200) DEFAULT NULL COMMENT '知识附件',
  `zhishineirong` longtext COMMENT '知识内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='知识信息';

/*Data for the table `zhishixinxi` */

insert  into `zhishixinxi`(`id`,`addtime`,`zhishibiaoti`,`zhishifenlei`,`biaoqian`,`fengmiantu`,`zhishijianjie`,`zhishishipin`,`zhishifujian`,`zhishineirong`,`faburiqi`,`clicktime`,`clicknum`) values (31,'2021-05-16 21:27:59','知识标题1','知识分类1','标签1','http://localhost:8080/springbootuaaa4/upload/zhishixinxi_fengmiantu1.jpg','知识简介1','','','知识内容1','2021-05-16','2021-05-16 21:27:59',1);
insert  into `zhishixinxi`(`id`,`addtime`,`zhishibiaoti`,`zhishifenlei`,`biaoqian`,`fengmiantu`,`zhishijianjie`,`zhishishipin`,`zhishifujian`,`zhishineirong`,`faburiqi`,`clicktime`,`clicknum`) values (32,'2021-05-16 21:27:59','知识标题2','知识分类2','标签2','http://localhost:8080/springbootuaaa4/upload/zhishixinxi_fengmiantu2.jpg','知识简介2','','','知识内容2','2021-05-16','2021-05-16 21:27:59',2);
insert  into `zhishixinxi`(`id`,`addtime`,`zhishibiaoti`,`zhishifenlei`,`biaoqian`,`fengmiantu`,`zhishijianjie`,`zhishishipin`,`zhishifujian`,`zhishineirong`,`faburiqi`,`clicktime`,`clicknum`) values (33,'2021-05-16 21:27:59','知识标题3','知识分类3','标签3','http://localhost:8080/springbootuaaa4/upload/zhishixinxi_fengmiantu3.jpg','知识简介3','','','知识内容3','2021-05-16','2021-05-16 21:27:59',3);
insert  into `zhishixinxi`(`id`,`addtime`,`zhishibiaoti`,`zhishifenlei`,`biaoqian`,`fengmiantu`,`zhishijianjie`,`zhishishipin`,`zhishifujian`,`zhishineirong`,`faburiqi`,`clicktime`,`clicknum`) values (34,'2021-05-16 21:27:59','知识标题4','知识分类4','标签4','http://localhost:8080/springbootuaaa4/upload/zhishixinxi_fengmiantu4.jpg','知识简介4','','','知识内容4','2021-05-16','2021-05-16 21:27:59',4);
insert  into `zhishixinxi`(`id`,`addtime`,`zhishibiaoti`,`zhishifenlei`,`biaoqian`,`fengmiantu`,`zhishijianjie`,`zhishishipin`,`zhishifujian`,`zhishineirong`,`faburiqi`,`clicktime`,`clicknum`) values (35,'2021-05-16 21:27:59','知识标题5','知识分类5','标签5','http://localhost:8080/springbootuaaa4/upload/zhishixinxi_fengmiantu5.jpg','知识简介5','','','知识内容5','2021-05-16','2021-05-16 21:27:59',5);
insert  into `zhishixinxi`(`id`,`addtime`,`zhishibiaoti`,`zhishifenlei`,`biaoqian`,`fengmiantu`,`zhishijianjie`,`zhishishipin`,`zhishifujian`,`zhishineirong`,`faburiqi`,`clicktime`,`clicknum`) values (36,'2021-05-16 21:27:59','知识标题6','知识分类6','标签6','http://localhost:8080/springbootuaaa4/upload/zhishixinxi_fengmiantu6.jpg','知识简介6','','','知识内容6','2021-05-16','2021-05-16 21:27:59',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
