/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : quartz_spring_demo

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-02-15 10:23:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `task_schedule_job`
-- ----------------------------
DROP TABLE IF EXISTS `task_schedule_job`;
CREATE TABLE `task_schedule_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `job_name` varchar(255) DEFAULT NULL,
  `job_group` varchar(255) DEFAULT NULL,
  `job_status` varchar(255) DEFAULT NULL,
  `cron_expression` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `bean_class` varchar(255) DEFAULT NULL,
  `is_concurrent` varchar(255) DEFAULT NULL COMMENT '1',
  `spring_id` varchar(255) DEFAULT NULL,
  `method_name` varchar(255) NOT NULL,
  PRIMARY KEY (`job_id`),
  UNIQUE KEY `name_group` (`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_schedule_job
-- ----------------------------
INSERT INTO `task_schedule_job` VALUES ('1', null, '2016-02-15 10:18:35', 'test', 'test', '0', '0/1 * * * * ?', 'test', 'com.caohaibing.quartz.task.TaskTest', '0', null, 'run1');
INSERT INTO `task_schedule_job` VALUES ('2', null, '2014-04-25 14:17:19', 'test1', 'test', '0', '0/5 * * * * ?', 'test2', null, '1', 'taskTest', 'run');
INSERT INTO `task_schedule_job` VALUES ('10', '2014-04-25 16:52:17', '2016-02-15 10:19:34', '中间', '1111', '0', '0/1 * * * * ?', 'xxx', 'com.caohaibing.quartz.task.TaskTest', '1', '', 'run');
