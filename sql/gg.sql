/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : gg

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-11-29 17:55:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_cus_article`
-- ----------------------------
DROP TABLE IF EXISTS `t_cus_article`;
CREATE TABLE `t_cus_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) NOT NULL,
  `catalog` varchar(45) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cus_article
-- ----------------------------
INSERT INTO `t_cus_article` VALUES ('10', '1', 'java', 'java web基础', '准备工作', '<p><a href=\"https://www.eclipse.org/downloads/\" target=\"_blank\">1:下载eclipse</a>&nbsp;编译器</p>\r\n\r\n<p><a href=\"http://maven.apache.org/download.cgi\">2：下载maven</a>&nbsp;工程管理工具</p>\r\n', '2016-11-29 11:01:26', '2016-11-29 12:51:17', '准备好eclipse，maven等');
INSERT INTO `t_cus_article` VALUES ('11', '1', 'java', 'java web基础', '新建java web工程', '<p>1 新建一个文件夹（名字自取，我这里叫javaweb），打开eclipse，选择该文件夹为工作空间。</p>\r\n\r\n<p><img alt=\"\" src=\"/gw/uploadImage/eclipse-choose-workspace.bmp\" style=\"height:319px; width:625px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2 eclipse配置为自己下载的maven：&nbsp;Windows -&gt; Preference</p>\r\n\r\n<p><img alt=\"\" src=\"/gw/uploadImage/eclipse-maven-setting.bmp\" style=\"height:525px; width:625px\" /></p>\r\n\r\n<p>3 用maven新建java web工程&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/gw/uploadImage/maven_newproject.bmp\" style=\"height:361px; width:400px\" />&nbsp;&nbsp;<img alt=\"\" src=\"/gw/uploadImage/maven_group_artifact.bmp\" style=\"height:361px; width:400px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4 完成，但有俩个小问题：</p>\r\n\r\n<p>&nbsp; 1：工程目录看起来怪怪的，没有src/main/java及src/test/java文件夹&nbsp;</p>\r\n\r\n<p>&nbsp; 2：index.jsp 报错</p>\r\n\r\n<p><img alt=\"\" src=\"/gw/uploadImage/maven_on_created.bmp\" style=\"height:450px; width:500px\" /></p>\r\n\r\n<p>解决问题1：eclipse右上角可以选择视图，切换到java视图，修改工程jdk为1.7</p>\r\n\r\n<p><img alt=\"\" src=\"/gw/uploadImage/change-jdk.bmp\" style=\"height:715px; width:1035px\" /></p>\r\n\r\n<p>使用maven配置jdk更简单，修改pom.xml -&gt;&nbsp;右键项目 -&gt; Maven -&gt; Update Project...</p>\r\n\r\n<p><img alt=\"\" src=\"/gw/uploadImage/maven-compile-plugin.bmp\" style=\"height:383px; width:800px\" /></p>\r\n\r\n<p>解决问题2：添加servlet jar包，jsp文件就不报错了</p>\r\n\r\n<p><img alt=\"\" src=\"/gw/uploadImage/maven-servlet-jar.bmp\" style=\"height:553px; width:1088px\" /></p>\r\n\r\n<p>Q:我怎么知道pom.xml中的dependency如何填写？</p>\r\n\r\n<p>&nbsp; 通过<a href=\"http://mvnrepository.com/\" target=\"_blank\">maven资源检索</a>来获取，比如搜索servlet</p>\r\n\r\n<p><img alt=\"\" src=\"/gw/uploadImage/maven_repo.bmp\" style=\"height:405px; width:980px\" />&nbsp;&nbsp;<img alt=\"\" src=\"/gw/uploadImage/maven_servlet.bmp\" style=\"height:576px; width:1572px\" /></p>\r\n\r\n<p>总结：工程建完，下一步可以开发了<img alt=\"smiley\" src=\"http://localhost:8086/gw/ckeditor/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" /><img alt=\"smiley\" src=\"http://localhost:8086/gw/ckeditor/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" /><img alt=\"smiley\" src=\"http://localhost:8086/gw/ckeditor/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" /><img alt=\"smiley\" src=\"http://localhost:8086/gw/ckeditor/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" /><img alt=\"smiley\" src=\"http://localhost:8086/gw/ckeditor/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" /><img alt=\"smiley\" src=\"http://localhost:8086/gw/ckeditor/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" /><img alt=\"smiley\" src=\"http://localhost:8086/gw/ckeditor/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" /><img alt=\"smiley\" src=\"http://localhost:8086/gw/ckeditor/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" /><img alt=\"smiley\" src=\"http://localhost:8086/gw/ckeditor/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" /><img alt=\"smiley\" src=\"http://localhost:8086/gw/ckeditor/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2016-11-29 13:43:32', '2016-11-29 14:55:38', '使用maven搭建');
INSERT INTO `t_cus_article` VALUES ('12', '1', 'java', 'java web基础', 'springmvc搭建', '<h2>Why Springmvc&nbsp;</h2>\r\n\r\n<h2>如何使用?</h2>\r\n\r\n<p>1：pom中添加spring-mvc依赖</p>\r\n\r\n<p>&nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"/gw/uploadImage/spring-dependencies.bmp\" style=\"height:498px; width:800px\" /></p>\r\n\r\n<p>2：在resources文件夹中添加文件spring-mvc.xml</p>\r\n\r\n<blockquote>\r\n<p><!--?xml version=\"1.0\" encoding=\"UTF-8\"?--><br />\r\n&nbsp;&nbsp; &nbsp;xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;&nbsp;<br />\r\n&nbsp;&nbsp; &nbsp;xmlns=&quot;http://www.springframework.org/schema/beans&quot;<br />\r\n&nbsp;&nbsp; &nbsp;xmlns:context=&quot;http://www.springframework.org/schema/context&quot;<br />\r\n&nbsp;&nbsp; &nbsp;xmlns:mvc=&quot;http://www.springframework.org/schema/mvc&quot;<br />\r\n&nbsp;&nbsp; &nbsp;xsi:schemaLocation=&quot;http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans-4.0.xsd<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;http://www.springframework.org/schema/context http://www.springframework.org/schema/context/spring-context-4.0.xsd<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;http://www.springframework.org/schema/mvc http://www.springframework.org/schema/mvc/spring-mvc-4.0.xsd&quot;&gt;</p>\r\n\r\n<p><br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<!-- 前缀 --><br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<!-- 后缀 --><br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />\r\n&nbsp;&nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n\r\n<p>3: 修改web.xml</p>\r\n\r\n<blockquote>\r\n<p>&lt;!DOCTYPE web-app PUBLIC<br />\r\n&nbsp;&quot;-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN&quot;<br />\r\n&nbsp;&quot;http://java.sun.com/dtd/web-app_2_3.dtd&quot; &gt;</p>\r\n\r\n<p>&lt;web-app&gt;<br />\r\n&nbsp; &lt;display-name&gt;Archetype Created Web Application&lt;/display-name&gt;<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &lt;servlet&gt;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;servlet-name&gt;springServlet&lt;/servlet-name&gt;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;servlet-class&gt;org.springframework.web.servlet.DispatcherServlet&lt;/servlet-class&gt;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;init-param&gt;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;param-name&gt;contextConfigLocation&lt;/param-name&gt;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;param-value&gt;classpath:spring-mvc.xml&lt;/param-value&gt;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;/init-param&gt;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;load-on-startup&gt;1&lt;/load-on-startup&gt;<br />\r\n&nbsp;&nbsp; &nbsp;&lt;/servlet&gt;<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\n&nbsp;&nbsp; &nbsp;&lt;servlet-mapping&gt;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;servlet-name&gt;springServlet&lt;/servlet-name&gt;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;url-pattern&gt;/&lt;/url-pattern&gt;<br />\r\n&nbsp;&nbsp; &nbsp;&lt;/servlet-mapping&gt;<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\n&lt;/web-app&gt;<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp; &nbsp;</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n', '2016-11-29 16:43:33', '2016-11-29 17:27:42', '不知道说什么了');

-- ----------------------------
-- Table structure for `t_cus_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_cus_user`;
CREATE TABLE `t_cus_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `nick_name` varchar(100) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cus_user
-- ----------------------------
INSERT INTO `t_cus_user` VALUES ('17', '替你', 'st', '123456', '2016-11-17 17:55:55', '110', '1@1.com');
INSERT INTO `t_cus_user` VALUES ('18', 'ted', 'st', '123456', '2016-11-17 17:56:16', '110', '1@1.com');
INSERT INTO `t_cus_user` VALUES ('19', '对对对', 'st', '123456', '2016-11-17 17:56:52', '110', '1@1.com');
INSERT INTO `t_cus_user` VALUES ('26', '多个', 'st', '123456', '2016-11-17 18:01:05', '110', '1@1.com');
INSERT INTO `t_cus_user` VALUES ('27', 'www', 'www', 'www', '2016-11-18 10:47:53', '111', '1@1.com');
INSERT INTO `t_cus_user` VALUES ('30', 'ted', 'st', '123456', '2016-11-21 16:24:47', '110', '1@1.com');
INSERT INTO `t_cus_user` VALUES ('31', 'ted', 'st', '123456', '2016-11-21 16:32:10', '110', '1@1.com');
INSERT INTO `t_cus_user` VALUES ('32', 'ted', 'st', '123456', '2016-11-23 11:03:57', '110', '1@1.com');
INSERT INTO `t_cus_user` VALUES ('33', 'ted', 'st', '123456', '2016-11-23 11:04:12', '110', '1@1.com');
INSERT INTO `t_cus_user` VALUES ('34', 'ted', 'st', '123456', '2016-11-23 11:06:21', '110', '1@1.com');
INSERT INTO `t_cus_user` VALUES ('35', 'ted', 'st', '123456', '2016-11-28 09:50:12', '110', '1@1.com');
INSERT INTO `t_cus_user` VALUES ('36', 'ted', 'st', '123456', '2016-11-28 10:18:50', '110', '1@1.com');
INSERT INTO `t_cus_user` VALUES ('37', 'ted', 'st', '123456', '2016-11-28 13:39:20', '110', '1@1.com');
INSERT INTO `t_cus_user` VALUES ('38', 'ted', 'st', '123456', '2016-11-28 13:41:22', '110', '1@1.com');
INSERT INTO `t_cus_user` VALUES ('39', 'ted', 'st', '123456', '2016-11-28 13:45:14', '110', '1@1.com');
INSERT INTO `t_cus_user` VALUES ('40', 'ted', 'st', '123456', '2016-11-28 13:46:00', '110', '1@1.com');
INSERT INTO `t_cus_user` VALUES ('41', 'ted', 'st', '123456', '2016-11-28 13:47:26', '110', '1@1.com');
INSERT INTO `t_cus_user` VALUES ('42', 'ted', 'st', '123456', '2016-11-28 13:48:44', '110', '1@1.com');
INSERT INTO `t_cus_user` VALUES ('43', 'ted', 'st', '123456', '2016-11-28 14:02:33', '110', '1@1.com');
