/*
 Navicat Premium Data Transfer

 Source Server         : star
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : thesis

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 11/05/2019 21:29:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bill_of_materials
-- ----------------------------
DROP TABLE IF EXISTS `bill_of_materials`;
CREATE TABLE `bill_of_materials`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NULL DEFAULT NULL,
  `item` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `amount` decimal(10, 0) NULL DEFAULT NULL,
  `total` decimal(10, 0) NULL DEFAULT NULL,
  `paid` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bill_of_materials
-- ----------------------------
INSERT INTO `bill_of_materials` VALUES (1, 1, 'dfgfd', 3, 6, 18, NULL);
INSERT INTO `bill_of_materials` VALUES (3, 2, 'Wordpress', 12, 22, 264, NULL);
INSERT INTO `bill_of_materials` VALUES (4, 5, 'wegfg', 5, 23, 115, NULL);
INSERT INTO `bill_of_materials` VALUES (5, 7, 'Bucket', 10, 50, 500, NULL);
INSERT INTO `bill_of_materials` VALUES (6, 8, 'dsvvds', 5, 50, 250, NULL);
INSERT INTO `bill_of_materials` VALUES (8, 10, 'sdasd', 2, 4, 8, NULL);

-- ----------------------------
-- Table structure for cashflow
-- ----------------------------
DROP TABLE IF EXISTS `cashflow`;
CREATE TABLE `cashflow`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date_added` date NULL DEFAULT NULL,
  `amount` decimal(10, 0) NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `transaction_date` date NULL DEFAULT NULL,
  `project_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cashflow
-- ----------------------------
INSERT INTO `cashflow` VALUES (1, 'dfgdfg', '0000-00-00', -34, 'out', '2019-03-13', 1);
INSERT INTO `cashflow` VALUES (2, 'dfgdfgfgfg', '2019-03-15', 4545, 'OUT', '2019-03-22', 1);
INSERT INTO `cashflow` VALUES (3, '54545', '2019-03-15', 5, 'IN', '2019-03-23', 1);
INSERT INTO `cashflow` VALUES (4, 'Wordpress developer', '2019-03-15', 6, 'in', '2019-03-19', 2);
INSERT INTO `cashflow` VALUES (5, 'dfgdfg', '2019-03-15', 50, 'in', '2019-03-22', 2);
INSERT INTO `cashflow` VALUES (6, 'vdsvs', '2019-03-16', 43242, 'in', '2019-03-20', 5);
INSERT INTO `cashflow` VALUES (7, 'Bayad', '2019-03-16', 50, 'in', '2019-03-13', 7);
INSERT INTO `cashflow` VALUES (8, 'sfgs', '2019-03-16', 435, 'in', '2019-03-28', 8);
INSERT INTO `cashflow` VALUES (9, 'ngfg', '0000-00-00', 10, 'in', '2019-04-23', 9);
INSERT INTO `cashflow` VALUES (10, 'fgdsf', '2019-04-18', 342, 'in', '2019-04-08', 9);
INSERT INTO `cashflow` VALUES (11, 'fbd', '2019-04-18', 435643, 'in', '2019-04-02', 10);
INSERT INTO `cashflow` VALUES (12, 'For general purposes', '2019-04-18', 50, 'in', '2019-04-17', 11);

-- ----------------------------
-- Table structure for equipment
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO `equipment` VALUES (1, 'Excavator');
INSERT INTO `equipment` VALUES (2, 'Mixer');
INSERT INTO `equipment` VALUES (3, 'Bar Cutter');
INSERT INTO `equipment` VALUES (4, 'Dumptruck');
INSERT INTO `equipment` VALUES (5, 'Graders');
INSERT INTO `equipment` VALUES (6, 'Compactor');

-- ----------------------------
-- Table structure for gantt_chart
-- ----------------------------
DROP TABLE IF EXISTS `gantt_chart`;
CREATE TABLE `gantt_chart`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `activity` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date_added` date NULL DEFAULT NULL,
  `date_start` date NULL DEFAULT NULL,
  `date_end` date NULL DEFAULT NULL,
  `project_id` int(50) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gantt_chart
-- ----------------------------
INSERT INTO `gantt_chart` VALUES (2, 'ddfjgjg', '2019-03-15', '2019-03-16', '2019-03-22', 1, 0);
INSERT INTO `gantt_chart` VALUES (3, 'fdgdf', '2019-03-15', '2019-03-16', '2019-03-21', 1, 0);
INSERT INTO `gantt_chart` VALUES (4, 'php ', '2019-03-15', '2019-03-15', '2019-03-17', 2, 0);
INSERT INTO `gantt_chart` VALUES (5, 'Html', '2019-03-15', '2019-03-18', '2019-03-21', 2, 0);
INSERT INTO `gantt_chart` VALUES (6, 'Wordpress, React JS', '2019-03-15', '2019-03-17', '2019-03-22', 2, 0);
INSERT INTO `gantt_chart` VALUES (7, 'sfa', '2019-03-16', '2019-03-19', '2019-03-20', 5, 0);
INSERT INTO `gantt_chart` VALUES (8, 'Something', '2019-03-16', '2019-03-12', '2019-03-24', 7, 0);
INSERT INTO `gantt_chart` VALUES (9, 'something', '2019-03-16', '2019-03-04', '2019-03-25', 8, 0);
INSERT INTO `gantt_chart` VALUES (10, 'SOEMTHING', '2019-03-16', '2019-03-22', '2019-03-31', 8, 0);
INSERT INTO `gantt_chart` VALUES (11, 'CHUCHU', '2019-03-16', '2019-03-13', '2019-03-18', 8, 0);
INSERT INTO `gantt_chart` VALUES (12, 'General Technical Requirements', '2019-04-18', '2019-04-02', '2019-04-03', 9, 0);
INSERT INTO `gantt_chart` VALUES (15, 'Move In', '2019-04-18', '2019-04-19', '2019-04-28', 10, 0);
INSERT INTO `gantt_chart` VALUES (16, 'Concrete Works - Concrete Footing', '2019-04-18', '2019-04-01', '2019-04-30', 10, 0);
INSERT INTO `gantt_chart` VALUES (17, 'Move In', '2019-04-18', '2019-04-19', '2019-04-29', 9, 0);
INSERT INTO `gantt_chart` VALUES (18, 'Earthworks - Clearing and Grubbing', '2019-04-18', '2019-04-01', '2019-04-30', 11, 0);
INSERT INTO `gantt_chart` VALUES (19, 'General Technical Requirements', '2019-04-18', '2019-05-01', '2019-05-31', 11, 0);
INSERT INTO `gantt_chart` VALUES (20, 'General Technical Requirements', '2019-04-22', '2019-04-01', '2019-04-23', 16, 0);
INSERT INTO `gantt_chart` VALUES (21, 'Move In', '2019-04-22', '2019-04-17', '2019-04-30', 16, 0);
INSERT INTO `gantt_chart` VALUES (22, 'Earthworks - Clearing and Grubbing', '2019-04-22', '2019-04-16', '2019-04-30', 16, 0);
INSERT INTO `gantt_chart` VALUES (23, 'Earthworks - Backfilling and Compaction', '2019-04-22', '2019-04-29', '2019-04-30', 16, 0);
INSERT INTO `gantt_chart` VALUES (24, 'General Technical Requirements', '2019-04-22', '2019-04-01', '2019-04-30', 15, 0);
INSERT INTO `gantt_chart` VALUES (26, 'Earthworks - Embankment/Earth Fill', '2019-05-02', '2019-05-01', '2019-05-31', 16, 0);
INSERT INTO `gantt_chart` VALUES (27, 'Earthworks - Excavation for Foundation', '2019-05-02', '2019-05-08', '2019-05-28', 16, 0);
INSERT INTO `gantt_chart` VALUES (28, 'General Technical Requirements', '2019-05-02', '2019-05-17', '2019-06-27', 16, 0);
INSERT INTO `gantt_chart` VALUES (29, 'General Technical Requirements', '2019-05-02', '2019-05-09', '2019-05-31', 16, 0);
INSERT INTO `gantt_chart` VALUES (30, 'General Technical Requirements', '2019-05-02', '2019-05-03', '2019-05-31', 16, 0);
INSERT INTO `gantt_chart` VALUES (31, 'General Technical Requirements', '2019-05-02', '2019-05-09', '2019-05-31', 16, 0);
INSERT INTO `gantt_chart` VALUES (32, 'General Technical Requirements', '2019-05-02', '2019-06-15', '2019-06-30', 16, 0);
INSERT INTO `gantt_chart` VALUES (33, 'General Technical Requirements', '2019-05-02', '2019-05-16', '2019-05-31', 16, 0);
INSERT INTO `gantt_chart` VALUES (34, 'General Technical Requirements', '2019-05-02', '2019-05-03', '2019-05-31', 16, 0);
INSERT INTO `gantt_chart` VALUES (35, 'General Technical Requirements', '2019-05-02', '2019-05-16', '2019-07-25', 16, 0);
INSERT INTO `gantt_chart` VALUES (36, 'General Technical Requirements', '2019-05-04', '2019-05-02', '2019-05-22', 15, 32);
INSERT INTO `gantt_chart` VALUES (37, 'General Technical Requirements', '2019-05-11', '2019-05-01', '2019-06-01', 17, 1200);
INSERT INTO `gantt_chart` VALUES (38, 'CT - Floor Beam', '2019-05-11', '2019-05-31', '2019-06-30', 17, 320);

-- ----------------------------
-- Table structure for gantt_chart_resource
-- ----------------------------
DROP TABLE IF EXISTS `gantt_chart_resource`;
CREATE TABLE `gantt_chart_resource`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NULL DEFAULT NULL,
  `duration` int(11) NULL DEFAULT NULL,
  `rate` decimal(10, 0) NULL DEFAULT NULL,
  `total` decimal(10, 0) NULL DEFAULT NULL,
  `gantt_chart_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `resource_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `borrowed` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `gantt_chart_id`(`gantt_chart_id`) USING BTREE,
  INDEX `resource_id`(`resource_id`) USING BTREE,
  INDEX `project_id`(`project_id`) USING BTREE,
  CONSTRAINT `gantt_chart_resource_ibfk_1` FOREIGN KEY (`gantt_chart_id`) REFERENCES `gantt_chart` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `gantt_chart_resource_ibfk_2` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `gantt_chart_resource_ibfk_3` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gantt_chart_resource
-- ----------------------------
INSERT INTO `gantt_chart_resource` VALUES (32, 2, 50, 50, 5000, 24, 1, 15, '2019-05-09 00:53:59');
INSERT INTO `gantt_chart_resource` VALUES (34, 5, 100, 50, 25000, 24, 6, 15, '2019-05-09 00:53:59');
INSERT INTO `gantt_chart_resource` VALUES (35, 5, 10, 6, 300, 24, 9, 15, '2019-05-09 00:53:59');
INSERT INTO `gantt_chart_resource` VALUES (36, 3, 10, 30, 900, 38, 1, 17, '2019-05-11 18:01:12');
INSERT INTO `gantt_chart_resource` VALUES (37, 2, 12, 18, 432, 38, 2, 17, '2019-05-11 18:04:10');
INSERT INTO `gantt_chart_resource` VALUES (40, 9, 9, 9, 729, 38, 6, 17, '2019-05-11 18:13:56');

-- ----------------------------
-- Table structure for gantt_chart_resource1
-- ----------------------------
DROP TABLE IF EXISTS `gantt_chart_resource1`;
CREATE TABLE `gantt_chart_resource1`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NULL DEFAULT NULL,
  `duration` int(11) NULL DEFAULT NULL,
  `rate` decimal(10, 0) NULL DEFAULT NULL,
  `total` decimal(10, 0) NULL DEFAULT NULL,
  `gantt_chart_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `resource_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `borrowed` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `gantt_chart_id`(`gantt_chart_id`) USING BTREE,
  INDEX `resource_id`(`resource_id`) USING BTREE,
  INDEX `project_id`(`project_id`) USING BTREE,
  CONSTRAINT `gantt_chart_resource1_ibfk_1` FOREIGN KEY (`gantt_chart_id`) REFERENCES `gantt_chart` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `gantt_chart_resource1_ibfk_2` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `gantt_chart_resource1_ibfk_3` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gantt_chart_resource1
-- ----------------------------
INSERT INTO `gantt_chart_resource1` VALUES (1, 1, 1, 20, 1, 20, 1, 16, '2019-05-09 00:58:30');
INSERT INTO `gantt_chart_resource1` VALUES (2, 1, 1, 10, 1, 20, 2, 16, '2019-05-09 00:58:30');
INSERT INTO `gantt_chart_resource1` VALUES (3, 1, 1, 30, 1, 20, 3, 16, '2019-05-09 00:58:30');
INSERT INTO `gantt_chart_resource1` VALUES (8, 1, 1, 1, 1, 24, 1, 15, '2019-05-09 00:58:30');
INSERT INTO `gantt_chart_resource1` VALUES (9, 1, 1, 1, 1, 24, 2, 15, '2019-05-09 00:58:30');
INSERT INTO `gantt_chart_resource1` VALUES (10, 1, 1, 1, 1, 36, 1, 15, '2019-05-09 00:58:30');
INSERT INTO `gantt_chart_resource1` VALUES (11, 1, 1, 1, 1, 36, 2, 15, '2019-05-09 00:58:30');
INSERT INTO `gantt_chart_resource1` VALUES (13, 1, 1, 1, 1, 36, 2, 15, '2019-05-09 00:58:30');
INSERT INTO `gantt_chart_resource1` VALUES (14, 1, 1, 1, 1, 36, 1, 15, '2019-05-09 00:58:30');
INSERT INTO `gantt_chart_resource1` VALUES (15, 1, 1, 1, 1, 36, 1, 15, '2019-05-09 00:58:30');
INSERT INTO `gantt_chart_resource1` VALUES (16, 1, 1, 1, 1, 36, 1, 15, '2019-05-09 00:58:30');
INSERT INTO `gantt_chart_resource1` VALUES (17, 1, 1, 1, 1, 24, 1, 15, '2019-05-09 00:58:30');
INSERT INTO `gantt_chart_resource1` VALUES (22, 1, 1, 1, 1, 24, 2, 15, '2019-05-09 00:58:30');
INSERT INTO `gantt_chart_resource1` VALUES (23, 1, 1, 1, 1, 24, 3, 15, '2019-05-09 00:58:30');
INSERT INTO `gantt_chart_resource1` VALUES (24, 1, 1, 1, 1, 24, 1, 15, '2019-05-09 00:58:30');
INSERT INTO `gantt_chart_resource1` VALUES (25, 1, 1, 1, 1, 24, 1, 15, '2019-05-09 01:08:48');
INSERT INTO `gantt_chart_resource1` VALUES (26, 5, 1, 1, 1, 24, 2, 15, '2019-05-09 01:08:58');
INSERT INTO `gantt_chart_resource1` VALUES (27, 3, 1, 1, 1, 37, 3, 17, '2019-05-11 10:13:27');
INSERT INTO `gantt_chart_resource1` VALUES (28, 3, 1, 1, 1, 37, 3, 17, '2019-05-11 10:13:33');
INSERT INTO `gantt_chart_resource1` VALUES (29, 3, 1, 1, 1, 37, 3, 17, '2019-05-11 10:13:34');
INSERT INTO `gantt_chart_resource1` VALUES (30, 3, 1, 1, 1, 37, 3, 17, '2019-05-11 10:13:34');
INSERT INTO `gantt_chart_resource1` VALUES (31, 3, 1, 1, 1, 37, 3, 17, '2019-05-11 10:13:43');
INSERT INTO `gantt_chart_resource1` VALUES (52, 5, 1, 1, 1, 37, 2, 17, '2019-05-11 16:32:28');
INSERT INTO `gantt_chart_resource1` VALUES (53, 6, 1, 1, 1, 37, 5, 17, '2019-05-11 16:34:38');
INSERT INTO `gantt_chart_resource1` VALUES (54, 8, 1, 1, 1, 37, 3, 17, '2019-05-11 16:37:48');
INSERT INTO `gantt_chart_resource1` VALUES (55, 3, 1, 1, 1, 37, 6, 17, '2019-05-11 17:48:36');
INSERT INTO `gantt_chart_resource1` VALUES (56, 5, 1, 1, 1, 37, 1, 17, '2019-05-11 17:55:08');
INSERT INTO `gantt_chart_resource1` VALUES (57, 5, 1, 1, 1, 37, 1, 17, '2019-05-11 18:00:31');
INSERT INTO `gantt_chart_resource1` VALUES (58, 5, 1, 1, 1, 38, 1, 17, '2019-05-11 18:00:43');
INSERT INTO `gantt_chart_resource1` VALUES (59, 3, 1, 1, 1, 38, 6, 17, '2019-05-11 18:06:07');
INSERT INTO `gantt_chart_resource1` VALUES (60, 3, 1, 1, 1, 38, 4, 17, '2019-05-11 18:08:46');

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date_added` date NULL DEFAULT NULL,
  `date_start` date NULL DEFAULT NULL,
  `date_end` date NULL DEFAULT NULL,
  `duration` int(11) NULL DEFAULT NULL,
  `project_location` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of projects
-- ----------------------------
INSERT INTO `projects` VALUES (15, 'Sample w/ Location 4', '2019-04-22', '2019-04-02', '2019-04-30', 28, 'Location Edited');
INSERT INTO `projects` VALUES (16, 'Iligan Waterworks', '2019-04-22', '2019-04-01', '2019-04-30', 29, 'Diri Iligan');
INSERT INTO `projects` VALUES (17, 'Chart', '2019-05-11', '2019-05-09', '2019-06-10', 32, 'Chart');

-- ----------------------------
-- Table structure for resources
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of resources
-- ----------------------------
INSERT INTO `resources` VALUES (1, 'Engineer', 'E');
INSERT INTO `resources` VALUES (2, 'Owner', 'E');
INSERT INTO `resources` VALUES (3, 'Checker', 'E');
INSERT INTO `resources` VALUES (4, 'Foreman', 'M');
INSERT INTO `resources` VALUES (5, 'Carpenter', 'M');
INSERT INTO `resources` VALUES (6, 'Laborer', 'M');
INSERT INTO `resources` VALUES (7, 'Steel Fixer', 'M');
INSERT INTO `resources` VALUES (9, 'Electrician', 'M');
INSERT INTO `resources` VALUES (10, 'Plumber', 'M');
INSERT INTO `resources` VALUES (11, 'Mason', 'M');
INSERT INTO `resources` VALUES (12, 'Painter', 'M');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'user', '4f5cec75c744bd39b5126debbb7cffb8');
INSERT INTO `user` VALUES (2, 'test', 'cc03e747a6afbbcbf8be7668acfebee5');
INSERT INTO `user` VALUES (3, 'admin', '21232f297a57a5a743894a0e4a801fc3');

SET FOREIGN_KEY_CHECKS = 1;
