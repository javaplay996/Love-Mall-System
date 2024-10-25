/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - aixinshangchengixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`aixinshangchengixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `aixinshangchengixitong`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(2,1,'收货人2','17703786902','地址2',1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(3,1,'收货人3','17703786903','地址3',1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(4,3,'收货人4','17703786904','地址4',1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(5,3,'收货人5','17703786905','地址5',1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(6,3,'收货人6','17703786906','地址6',1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(7,3,'收货人7','17703786907','地址7',1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(8,3,'收货人8','17703786908','地址8',1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(9,2,'收货人9','17703786909','地址9',1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(10,3,'收货人10','17703786910','地址10',1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(11,1,'收货人11','17703786911','地址11',1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(12,2,'收货人12','17703786912','地址12',1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(13,3,'收货人13','17703786913','地址13',1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(14,1,'收货人14','17703786914','地址14',1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-30 11:29:10'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-30 11:29:10'),(3,'yonghu_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-03-30 11:29:10'),(4,'yonghu_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-03-30 11:29:10'),(5,'yonghu_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-03-30 11:29:10'),(6,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-30 11:29:10'),(7,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-30 11:29:10'),(8,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-30 11:29:10'),(9,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-30 11:29:10'),(10,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-03-30 11:29:10'),(11,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-03-30 11:29:10'),(12,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-03-30 11:29:10'),(13,'shangpin_types','商品类型',4,'商品类型4',NULL,NULL,'2023-03-30 11:29:10'),(14,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-30 11:29:10'),(15,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-03-30 11:29:10'),(16,'shangpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-03-30 11:29:10'),(17,'shangpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-03-30 11:29:10'),(18,'shangpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-03-30 11:29:10'),(19,'shangpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-03-30 11:29:11'),(20,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-03-30 11:29:11'),(21,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-03-30 11:29:11'),(22,'juanzeng_yuyue_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-03-30 11:29:11'),(23,'juanzeng_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-03-30 11:29:11'),(24,'juanzeng_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-03-30 11:29:11'),(25,'qiye_yuyue_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-03-30 11:29:11'),(26,'qiye_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-03-30 11:29:11'),(27,'qiye_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-03-30 11:29:11');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qiye_id` int(11) DEFAULT NULL COMMENT '企业',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`qiye_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,NULL,'发布内容1',330,1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(2,'帖子标题2',3,NULL,NULL,'发布内容2',164,1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(3,'帖子标题3',1,NULL,NULL,'发布内容3',371,1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(4,'帖子标题4',3,NULL,NULL,'发布内容4',89,1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(5,'帖子标题5',2,NULL,NULL,'发布内容5',374,1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(6,'帖子标题6',1,NULL,NULL,'发布内容6',172,1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(7,'帖子标题7',3,NULL,NULL,'发布内容7',482,1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(8,'帖子标题8',1,NULL,NULL,'发布内容8',226,1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(9,'帖子标题9',3,NULL,NULL,'发布内容9',175,1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(10,'帖子标题10',3,NULL,NULL,'发布内容10',338,1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(11,'帖子标题11',3,NULL,NULL,'发布内容11',241,1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(12,'帖子标题12',2,NULL,NULL,'发布内容12',478,1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(13,'帖子标题13',3,NULL,NULL,'发布内容13',167,1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(14,'帖子标题14',3,NULL,NULL,'发布内容14',199,1,'2023-03-30 11:29:25','2023-03-30 11:29:25','2023-03-30 11:29:25'),(15,'帖子',1,NULL,NULL,'<p>帖子</p>',NULL,1,'2023-03-30 11:42:36',NULL,'2023-03-30 11:42:36'),(16,NULL,NULL,NULL,1,'丫丫',15,2,'2023-03-30 11:44:16',NULL,'2023-03-30 11:44:16');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-03-30 11:29:25','公告详情1','2023-03-30 11:29:25'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-03-30 11:29:25','公告详情2','2023-03-30 11:29:25'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-03-30 11:29:25','公告详情3','2023-03-30 11:29:25'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-03-30 11:29:25','公告详情4','2023-03-30 11:29:25'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-03-30 11:29:25','公告详情5','2023-03-30 11:29:25'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-03-30 11:29:25','公告详情6','2023-03-30 11:29:25'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-03-30 11:29:25','公告详情7','2023-03-30 11:29:25'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-03-30 11:29:25','公告详情8','2023-03-30 11:29:25'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-03-30 11:29:25','公告详情9','2023-03-30 11:29:25'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-03-30 11:29:25','公告详情10','2023-03-30 11:29:25'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-03-30 11:29:25','公告详情11','2023-03-30 11:29:25'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-03-30 11:29:25','公告详情12','2023-03-30 11:29:25'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-03-30 11:29:25','公告详情13','2023-03-30 11:29:25'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-03-30 11:29:25','公告详情14','2023-03-30 11:29:25');

/*Table structure for table `juanzeng_yuyue` */

DROP TABLE IF EXISTS `juanzeng_yuyue`;

CREATE TABLE `juanzeng_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `juanzeng_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `juanzeng_yuyue_text` longtext COMMENT '报名理由',
  `juanzeng_yuyue_photo` varchar(200) DEFAULT NULL COMMENT '捐赠照片',
  `juanzeng_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `juanzeng_yuyue_yesno_text` longtext COMMENT '审核回复',
  `juanzeng_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '捐赠时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='用户捐赠';

/*Data for the table `juanzeng_yuyue` */

insert  into `juanzeng_yuyue`(`id`,`juanzeng_yuyue_uuid_number`,`yonghu_id`,`juanzeng_yuyue_text`,`juanzeng_yuyue_photo`,`juanzeng_yuyue_yesno_types`,`juanzeng_yuyue_yesno_text`,`juanzeng_yuyue_shenhe_time`,`insert_time`,`create_time`) values (1,'1680146965253',3,'报名理由1','upload/juanzeng_yuyue1.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(2,'1680146965229',1,'报名理由2','upload/juanzeng_yuyue2.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(3,'1680146965230',1,'报名理由3','upload/juanzeng_yuyue3.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(4,'1680146965286',3,'报名理由4','upload/juanzeng_yuyue4.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(5,'1680146965247',3,'报名理由5','upload/juanzeng_yuyue5.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(6,'1680146965266',3,'报名理由6','upload/juanzeng_yuyue6.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(7,'1680146965307',1,'报名理由7','upload/juanzeng_yuyue7.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(8,'1680146965242',3,'报名理由8','upload/juanzeng_yuyue8.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(9,'1680146965265',3,'报名理由9','upload/juanzeng_yuyue9.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(10,'1680146965314',1,'报名理由10','upload/juanzeng_yuyue10.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(11,'1680146965217',2,'报名理由11','upload/juanzeng_yuyue11.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(12,'1680146965235',3,'报名理由12','upload/juanzeng_yuyue12.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(13,'1680146965260',3,'报名理由13','upload/juanzeng_yuyue13.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(14,'1680146965309',1,'报名理由14','upload/juanzeng_yuyue14.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(15,'1680147800542',1,'捐赠','upload/1680147808070.jpg',2,'同意之后可以在商品中新增','2023-03-30 11:45:51','2023-03-30 11:43:29','2023-03-30 11:43:29');

/*Table structure for table `qiye` */

DROP TABLE IF EXISTS `qiye`;

CREATE TABLE `qiye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `qiye_name` varchar(200) DEFAULT NULL COMMENT '企业姓名 Search111 ',
  `qiye_phone` varchar(200) DEFAULT NULL COMMENT '企业手机号',
  `qiye_photo` varchar(200) DEFAULT NULL COMMENT '企业头像',
  `qiye_email` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='企业';

/*Data for the table `qiye` */

insert  into `qiye`(`id`,`username`,`password`,`qiye_name`,`qiye_phone`,`qiye_photo`,`qiye_email`,`create_time`) values (1,'a1','123456','企业姓名1','17703786901','upload/qiye1.jpg','1@qq.com','2023-03-30 11:29:25'),(2,'a2','123456','企业姓名2','17703786902','upload/qiye2.jpg','2@qq.com','2023-03-30 11:29:25'),(3,'a3','123456','企业姓名3','17703786903','upload/qiye3.jpg','3@qq.com','2023-03-30 11:29:25');

/*Table structure for table `qiye_yuyue` */

DROP TABLE IF EXISTS `qiye_yuyue`;

CREATE TABLE `qiye_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiye_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `qiye_id` int(11) DEFAULT NULL COMMENT '公益企业',
  `qiye_yuyue_text` longtext COMMENT '报名理由',
  `qiye_yuyue_photo` varchar(200) DEFAULT NULL COMMENT '捐赠照片',
  `qiye_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `qiye_yuyue_yesno_text` longtext COMMENT '审核回复',
  `qiye_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '捐赠时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公益企业捐赠';

/*Data for the table `qiye_yuyue` */

insert  into `qiye_yuyue`(`id`,`qiye_yuyue_uuid_number`,`qiye_id`,`qiye_yuyue_text`,`qiye_yuyue_photo`,`qiye_yuyue_yesno_types`,`qiye_yuyue_yesno_text`,`qiye_yuyue_shenhe_time`,`insert_time`,`create_time`) values (1,'1680146965242',3,'报名理由1','upload/qiye_yuyue1.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(2,'1680146965309',2,'报名理由2','upload/qiye_yuyue2.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(3,'1680146965271',2,'报名理由3','upload/qiye_yuyue3.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(4,'1680146965298',2,'报名理由4','upload/qiye_yuyue4.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(5,'1680146965255',1,'报名理由5','upload/qiye_yuyue5.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(6,'1680146965291',2,'报名理由6','upload/qiye_yuyue6.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(7,'1680146965280',1,'报名理由7','upload/qiye_yuyue7.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(8,'1680146965294',3,'报名理由8','upload/qiye_yuyue8.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(9,'1680146965280',2,'报名理由9','upload/qiye_yuyue9.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(10,'1680146965251',3,'报名理由10','upload/qiye_yuyue10.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(11,'1680146965240',1,'报名理由11','upload/qiye_yuyue11.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(12,'1680146965290',2,'报名理由12','upload/qiye_yuyue12.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(13,'1680146965257',2,'报名理由13','upload/qiye_yuyue13.jpg',1,NULL,NULL,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(14,'1680146965236',3,'报名理由14','upload/qiye_yuyue14.jpg',3,'不行','2023-03-30 11:46:03','2023-03-30 11:29:25','2023-03-30 11:29:25');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `shangpin_content` longtext COMMENT '商品介绍 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_new_money`,`shangpin_clicknum`,`shangpin_content`,`shangpin_delete`,`insert_time`,`create_time`) values (1,'商品名称1','1680146965314','upload/shangpin1.jpg',2,101,'314.84',28,'商品介绍1',1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(2,'商品名称2','1680146965229','upload/shangpin2.jpg',2,102,'253.00',261,'商品介绍2',1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(3,'商品名称3','1680146965259','upload/shangpin3.jpg',2,103,'189.73',280,'商品介绍3',1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(4,'商品名称4','1680146965267','upload/shangpin4.jpg',1,104,'191.20',122,'商品介绍4',1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(5,'商品名称5','1680146965281','upload/shangpin5.jpg',1,105,'40.01',47,'商品介绍5',1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(6,'商品名称6','1680146965227','upload/shangpin6.jpg',3,105,'50.39',230,'商品介绍6',1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(7,'商品名称7','1680146965290','upload/shangpin7.jpg',4,107,'26.53',84,'商品介绍7',1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(8,'商品名称8','1680146965302','upload/shangpin8.jpg',1,108,'265.19',118,'商品介绍8',1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(9,'商品名称9','1680146965231','upload/shangpin9.jpg',4,109,'145.53',231,'商品介绍9',1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(10,'商品名称10','1680146965277','upload/shangpin10.jpg',4,1010,'150.13',364,'商品介绍10',1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(11,'商品名称11','1680146965297','upload/shangpin11.jpg',2,1011,'393.35',73,'商品介绍11',1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(12,'商品名称12','1680146965249','upload/shangpin12.jpg',3,1012,'430.09',340,'商品介绍12',1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(13,'商品名称13','1680146965234','upload/shangpin13.jpg',4,1013,'192.60',161,'商品介绍13',1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(14,'商品名称14','1680146965256','upload/shangpin14.jpg',1,1014,'279.14',233,'商品介绍14',1,'2023-03-30 11:29:25','2023-03-30 11:29:25');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(2,2,1,1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(3,3,2,1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(4,4,2,1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(5,5,1,1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(6,6,2,1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(7,7,2,1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(8,8,3,1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(9,9,1,1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(10,10,3,1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(11,11,3,1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(13,13,1,1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(14,14,1,1,'2023-03-30 11:29:25','2023-03-30 11:29:25'),(15,12,1,1,'2023-03-30 11:42:23','2023-03-30 11:42:23');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评价内容1','2023-03-30 11:29:25','回复信息1','2023-03-30 11:29:25','2023-03-30 11:29:25'),(2,2,1,'评价内容2','2023-03-30 11:29:25','回复信息2','2023-03-30 11:29:25','2023-03-30 11:29:25'),(3,3,1,'评价内容3','2023-03-30 11:29:25','回复信息3','2023-03-30 11:29:25','2023-03-30 11:29:25'),(4,4,1,'评价内容4','2023-03-30 11:29:25','回复信息4','2023-03-30 11:29:25','2023-03-30 11:29:25'),(5,5,2,'评价内容5','2023-03-30 11:29:25','回复信息5','2023-03-30 11:29:25','2023-03-30 11:29:25'),(6,6,2,'评价内容6','2023-03-30 11:29:25','回复信息6','2023-03-30 11:29:25','2023-03-30 11:29:25'),(7,7,3,'评价内容7','2023-03-30 11:29:25','回复信息7','2023-03-30 11:29:25','2023-03-30 11:29:25'),(8,8,2,'评价内容8','2023-03-30 11:29:25','回复信息8','2023-03-30 11:29:25','2023-03-30 11:29:25'),(9,9,1,'评价内容9','2023-03-30 11:29:25','回复信息9','2023-03-30 11:29:25','2023-03-30 11:29:25'),(10,10,2,'评价内容10','2023-03-30 11:29:25','回复信息10','2023-03-30 11:29:25','2023-03-30 11:29:25'),(11,11,2,'评价内容11','2023-03-30 11:29:25','回复信息11','2023-03-30 11:29:25','2023-03-30 11:29:25'),(12,12,3,'评价内容12','2023-03-30 11:29:25','回复信息12','2023-03-30 11:29:25','2023-03-30 11:29:25'),(13,13,3,'评价内容13','2023-03-30 11:29:25','回复信息13','2023-03-30 11:29:25','2023-03-30 11:29:25'),(14,14,3,'评价内容14','2023-03-30 11:29:25','回复信息14','2023-03-30 11:29:25','2023-03-30 11:29:25'),(15,6,1,'666','2023-03-30 11:44:55','谢谢','2023-03-30 11:45:06','2023-03-30 11:44:55');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_courier_name`,`shangpin_order_courier_number`,`shangpin_order_types`,`insert_time`,`create_time`) values (1,'1680147775890',2,6,1,1,'50.39','111','2022233',105,'2023-03-30 11:42:56','2023-03-30 11:42:56');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','w61j7j5b8hyqx8kb928mho3qfihkemdx','2023-03-30 11:32:54','2023-03-30 12:50:01'),(2,1,'a1','yonghu','用户','n7yk48jvy07bu18ebt6oxqc59b75195l','2023-03-30 11:36:01','2023-03-30 12:42:12'),(3,1,'a1','qiye','企业','32dvi2h0pdubwuapjmjid5dokj3lxz2i','2023-03-30 11:46:17','2023-03-30 12:46:17');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-30 11:29:10');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `yonghu_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`yonghu_yesno_types`,`sex_types`,`new_money`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,2,'180.87','1@qq.com','2023-03-30 11:29:25'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',3,1,'919.34','2@qq.com','2023-03-30 11:29:25'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,2,'264.99','3@qq.com','2023-03-30 11:29:25'),(4,'a4','123456','a4','17666222222','410008199502214535',NULL,1,2,'0.00','4@qq.com','2023-03-30 11:41:54');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
