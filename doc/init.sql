/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.6.16 : Database - vikingoa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vikingoa` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `vikingoa`;

/*Table structure for table `tbug` */

DROP TABLE IF EXISTS `tbug`;

CREATE TABLE `tbug` (
  `ID` varchar(36) NOT NULL,
  `CREATEDATETIME` datetime DEFAULT NULL,
  `MODIFYDATETIME` datetime DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `NOTE` longtext,
  `BUGTYPE_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_q8x2eyh7d65rv7vcd7iw2h8yf` (`BUGTYPE_ID`),
  CONSTRAINT `FK_q8x2eyh7d65rv7vcd7iw2h8yf` FOREIGN KEY (`BUGTYPE_ID`) REFERENCES `tbugtype` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbug` */

/*Table structure for table `tbugtype` */

DROP TABLE IF EXISTS `tbugtype`;

CREATE TABLE `tbugtype` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbugtype` */

insert  into `tbugtype`(`ID`,`NAME`) values ('0','错误'),('1','功能');

/*Table structure for table `tresource` */

DROP TABLE IF EXISTS `tresource`;

CREATE TABLE `tresource` (
  `ID` varchar(36) NOT NULL,
  `ICON` varchar(100) DEFAULT NULL,
  `NAME` varchar(100) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `SEQ` int(11) DEFAULT NULL,
  `URL` varchar(200) DEFAULT NULL,
  `PID` varchar(36) DEFAULT NULL,
  `TRESOURCETYPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_m0i6pj14hcg1mleojnl7igg6o` (`PID`),
  KEY `FK_6w0sgqbec1o81uqqjsmejg57p` (`TRESOURCETYPE_ID`),
  CONSTRAINT `FK_6w0sgqbec1o81uqqjsmejg57p` FOREIGN KEY (`TRESOURCETYPE_ID`) REFERENCES `tresourcetype` (`ID`),
  CONSTRAINT `FK_m0i6pj14hcg1mleojnl7igg6o` FOREIGN KEY (`PID`) REFERENCES `tresource` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tresource` */

insert  into `tresource`(`ID`,`ICON`,`NAME`,`REMARK`,`SEQ`,`URL`,`PID`,`TRESOURCETYPE_ID`) values ('buggl','bug','BUG管理',NULL,4,'/bugController/manager','xtgl','0'),('bugglAdd','bug_add','添加BUG',NULL,3,'/bugController/add','buggl','1'),('bugglAddPage','bug_add','添加BUG页面',NULL,2,'/bugController/addPage','buggl','1'),('bugglDateGrid','bug_link','BUG表格',NULL,1,'/bugController/dataGrid','buggl','1'),('bugglDelete','bug_delete','删除BUG',NULL,6,'/bugController/delete','buggl','1'),('bugglEdit','bug_edit','编辑BUG',NULL,5,'/bugController/edit','buggl','1'),('bugglEditPage','bug_edit','编辑BUG页面',NULL,4,'/bugController/editPage','buggl','1'),('bugglView','bug_link','查看BUG',NULL,7,'/bugController/view','buggl','1'),('chart','chart_bar','图表管理',NULL,7,NULL,NULL,'0'),('jeasyuiApi','book','EasyUI API',NULL,1000,'http://jeasyui.com/documentation',NULL,'0'),('jsgl','tux','角色管理',NULL,2,'/roleController/manager','xtgl','0'),('jsglAdd','wrench','添加角色',NULL,3,'/roleController/add','jsgl','1'),('jsglAddPage','wrench','添加角色页面',NULL,2,'/roleController/addPage','jsgl','1'),('jsglDelete','wrench','删除角色',NULL,6,'/roleController/delete','jsgl','1'),('jsglEdit','wrench','编辑角色',NULL,5,'/roleController/edit','jsgl','1'),('jsglEditPage','wrench','编辑角色页面',NULL,4,'/roleController/editPage','jsgl','1'),('jsglGrant','wrench','角色授权',NULL,8,'/roleController/grant','jsgl','1'),('jsglGrantPage','wrench','角色授权页面',NULL,7,'/roleController/grantPage','jsgl','1'),('jsglTreeGrid','wrench','角色表格',NULL,1,'/roleController/treeGrid','jsgl','1'),('sjygl','server_database','数据源管理',NULL,5,'/druidController/druid','xtgl','0'),('userCreateDatetimeChart','chart_curve','用户图表',NULL,1,'/chartController/userCreateDatetimeChart','chart','0'),('wjgl','server_database','文件管理',NULL,6,'','xtgl','1'),('wjglUpload','server_database','上传文件',NULL,2,'/fileController/upload','wjgl','1'),('wjglView','server_database','浏览服务器文件',NULL,1,'/fileController/fileManage','wjgl','1'),('xtgl','plugin','系统管理',NULL,0,NULL,NULL,'0'),('yhgl','status_online','用户管理',NULL,3,'/userController/manager','xtgl','0'),('yhglAdd','wrench','添加用户',NULL,3,'/userController/add','yhgl','1'),('yhglAddPage','wrench','添加用户页面',NULL,2,'/userController/addPage','yhgl','1'),('yhglBatchDelete','wrench','批量删除用户',NULL,7,'/userController/batchDelete','yhgl','1'),('yhglDateGrid','wrench','用户表格',NULL,1,'/userController/dataGrid','yhgl','1'),('yhglDelete','wrench','删除用户',NULL,6,'/userController/delete','yhgl','1'),('yhglEdit','wrench','编辑用户',NULL,5,'/userController/edit','yhgl','1'),('yhglEditPage','wrench','编辑用户页面',NULL,4,'/userController/editPage','yhgl','1'),('yhglEditPwd','wrench','用户修改密码',NULL,11,'/userController/editPwd','yhgl','1'),('yhglEditPwdPage','wrench','用户修改密码页面',NULL,10,'/userController/editPwdPage','yhgl','1'),('yhglGrant','wrench','用户授权',NULL,9,'/userController/grant','yhgl','1'),('yhglGrantPage','wrench','用户授权页面',NULL,8,'/userController/grantPage','yhgl','1'),('zygl','database_gear','资源管理','管理系统中所有的菜单或功能',1,'/resourceController/manager','xtgl','0'),('zyglAdd','wrench','添加资源',NULL,4,'/resourceController/add','zygl','1'),('zyglAddPage','wrench','添加资源页面',NULL,3,'/resourceController/addPage','zygl','1'),('zyglDelete','wrench','删除资源',NULL,7,'/resourceController/delete','zygl','1'),('zyglEdit','wrench','编辑资源',NULL,6,'/resourceController/edit','zygl','1'),('zyglEditPage','wrench','编辑资源页面',NULL,5,'/resourceController/editPage','zygl','1'),('zyglMenu','wrench','功能菜单',NULL,2,'/resourceController/tree','zygl','1'),('zyglTreeGrid','wrench','资源表格','显示资源列表',1,'/resourceController/treeGrid','zygl','1');

/*Table structure for table `tresourcetype` */

DROP TABLE IF EXISTS `tresourcetype`;

CREATE TABLE `tresourcetype` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tresourcetype` */

insert  into `tresourcetype`(`ID`,`NAME`) values ('0','菜单'),('1','功能');

/*Table structure for table `trole` */

DROP TABLE IF EXISTS `trole`;

CREATE TABLE `trole` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `SEQ` int(11) DEFAULT NULL,
  `PID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_3qq9eyhwbhblv83lt270gxbik` (`PID`),
  CONSTRAINT `FK_3qq9eyhwbhblv83lt270gxbik` FOREIGN KEY (`PID`) REFERENCES `trole` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `trole` */

insert  into `trole`(`ID`,`NAME`,`REMARK`,`SEQ`,`PID`) values ('0','超管','超级管理员角色，拥有系统中所有的资源访问权限',0,NULL),('bugAdmin','BUG管理员',NULL,5,'0'),('guest','Guest','只拥有只看的权限',1,NULL),('jsAdmin','角色管理员',NULL,2,'0'),('sjyAdmin','数据源管理员',NULL,4,'0'),('yhAdmin','用户管理员',NULL,3,'0'),('zyAdmin','资源管理员',NULL,1,'0');

/*Table structure for table `trole_tresource` */

DROP TABLE IF EXISTS `trole_tresource`;

CREATE TABLE `trole_tresource` (
  `TROLE_ID` varchar(36) NOT NULL,
  `TRESOURCE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`TRESOURCE_ID`,`TROLE_ID`),
  KEY `FK_18oms8g4ib4h67dqx0f3fwaed` (`TRESOURCE_ID`),
  KEY `FK_aunc1ssqh18meky8cxl48i4m9` (`TROLE_ID`),
  CONSTRAINT `FK_aunc1ssqh18meky8cxl48i4m9` FOREIGN KEY (`TROLE_ID`) REFERENCES `trole` (`ID`),
  CONSTRAINT `FK_18oms8g4ib4h67dqx0f3fwaed` FOREIGN KEY (`TRESOURCE_ID`) REFERENCES `tresource` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `trole_tresource` */

insert  into `trole_tresource`(`TROLE_ID`,`TRESOURCE_ID`) values ('0','buggl'),('bugAdmin','buggl'),('0','bugglAdd'),('bugAdmin','bugglAdd'),('0','bugglAddPage'),('bugAdmin','bugglAddPage'),('0','bugglDateGrid'),('bugAdmin','bugglDateGrid'),('0','bugglDelete'),('bugAdmin','bugglDelete'),('0','bugglEdit'),('bugAdmin','bugglEdit'),('0','bugglEditPage'),('bugAdmin','bugglEditPage'),('0','bugglView'),('bugAdmin','bugglView'),('0','chart'),('0','jeasyuiApi'),('guest','jeasyuiApi'),('0','jsgl'),('guest','jsgl'),('jsAdmin','jsgl'),('0','jsglAdd'),('jsAdmin','jsglAdd'),('0','jsglAddPage'),('jsAdmin','jsglAddPage'),('0','jsglDelete'),('jsAdmin','jsglDelete'),('0','jsglEdit'),('jsAdmin','jsglEdit'),('0','jsglEditPage'),('jsAdmin','jsglEditPage'),('0','jsglGrant'),('jsAdmin','jsglGrant'),('0','jsglGrantPage'),('jsAdmin','jsglGrantPage'),('0','jsglTreeGrid'),('guest','jsglTreeGrid'),('jsAdmin','jsglTreeGrid'),('0','sjygl'),('sjyAdmin','sjygl'),('0','userCreateDatetimeChart'),('0','wjgl'),('0','wjglUpload'),('0','wjglView'),('0','xtgl'),('guest','xtgl'),('0','yhgl'),('guest','yhgl'),('yhAdmin','yhgl'),('0','yhglAdd'),('yhAdmin','yhglAdd'),('0','yhglAddPage'),('yhAdmin','yhglAddPage'),('0','yhglBatchDelete'),('yhAdmin','yhglBatchDelete'),('0','yhglDateGrid'),('guest','yhglDateGrid'),('yhAdmin','yhglDateGrid'),('0','yhglDelete'),('yhAdmin','yhglDelete'),('0','yhglEdit'),('yhAdmin','yhglEdit'),('0','yhglEditPage'),('yhAdmin','yhglEditPage'),('0','yhglEditPwd'),('yhAdmin','yhglEditPwd'),('0','yhglEditPwdPage'),('yhAdmin','yhglEditPwdPage'),('0','yhglGrant'),('yhAdmin','yhglGrant'),('0','yhglGrantPage'),('yhAdmin','yhglGrantPage'),('0','zygl'),('guest','zygl'),('zyAdmin','zygl'),('0','zyglAdd'),('zyAdmin','zyglAdd'),('0','zyglAddPage'),('zyAdmin','zyglAddPage'),('0','zyglDelete'),('zyAdmin','zyglDelete'),('0','zyglEdit'),('zyAdmin','zyglEdit'),('0','zyglEditPage'),('zyAdmin','zyglEditPage'),('0','zyglMenu'),('zyAdmin','zyglMenu'),('0','zyglTreeGrid'),('guest','zyglTreeGrid'),('zyAdmin','zyglTreeGrid');

/*Table structure for table `tuser` */

DROP TABLE IF EXISTS `tuser`;

CREATE TABLE `tuser` (
  `ID` varchar(36) NOT NULL,
  `CREATEDATETIME` datetime DEFAULT NULL,
  `MODIFYDATETIME` datetime DEFAULT NULL,
  `NAME` varchar(100) NOT NULL,
  `PWD` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_doflky41g81kf7ydx6y0a99nm` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tuser` */

insert  into `tuser`(`ID`,`CREATEDATETIME`,`MODIFYDATETIME`,`NAME`,`PWD`) values ('0','2014-04-15 22:15:54',NULL,'孙宇','e10adc3949ba59abbe56e057f20f883e'),('1','2014-04-15 22:15:54',NULL,'admin1','e10adc3949ba59abbe56e057f20f883e'),('2','2014-04-15 22:15:54',NULL,'admin2','e10adc3949ba59abbe56e057f20f883e'),('3','2014-04-15 22:15:54',NULL,'admin3','e10adc3949ba59abbe56e057f20f883e'),('4','2014-04-15 22:15:54',NULL,'admin4','e10adc3949ba59abbe56e057f20f883e'),('5','2014-04-15 22:15:54',NULL,'admin5','e10adc3949ba59abbe56e057f20f883e'),('guest','2014-04-15 22:15:54',NULL,'guest','e10adc3949ba59abbe56e057f20f883e');

/*Table structure for table `tuser_trole` */

DROP TABLE IF EXISTS `tuser_trole`;

CREATE TABLE `tuser_trole` (
  `TUSER_ID` varchar(36) NOT NULL,
  `TROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`TROLE_ID`,`TUSER_ID`),
  KEY `FK_30t0khk63muiwisjpp0h7e57l` (`TROLE_ID`),
  KEY `FK_mipcojqd9xymdghov18fobf7e` (`TUSER_ID`),
  CONSTRAINT `FK_mipcojqd9xymdghov18fobf7e` FOREIGN KEY (`TUSER_ID`) REFERENCES `tuser` (`ID`),
  CONSTRAINT `FK_30t0khk63muiwisjpp0h7e57l` FOREIGN KEY (`TROLE_ID`) REFERENCES `trole` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tuser_trole` */

insert  into `tuser_trole`(`TUSER_ID`,`TROLE_ID`) values ('0','0'),('0','bugAdmin'),('5','bugAdmin'),('0','guest'),('guest','guest'),('0','jsAdmin'),('2','jsAdmin'),('0','sjyAdmin'),('4','sjyAdmin'),('0','yhAdmin'),('3','yhAdmin'),('0','zyAdmin'),('1','zyAdmin');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
