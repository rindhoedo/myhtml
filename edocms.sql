/*
 Navicat Premium Dump SQL

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : edocms

 Target Server Type    : MariaDB
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 02/10/2025 00:23:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idmodulegroup` int(11) NULL DEFAULT NULL,
  `title` varchar(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `icon` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `path` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `position` decimal(10, 0) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES (1, 1, 'Server Status', 'fa fa-bar-chart-o', 'serverstatus', 1);
INSERT INTO `module` VALUES (2, 1, 'Network Status', 'fa fa-globe ', 'network', 2);
INSERT INTO `module` VALUES (3, 1, 'Domain Status', 'fa fa-link', 'domain', 3);
INSERT INTO `module` VALUES (4, 2, 'List Server', 'fa-solid fa-server', 'server', 1);
INSERT INTO `module` VALUES (5, 2, 'List Domain', 'fa-solid fa-book-atlas', 'listdomain', 2);
INSERT INTO `module` VALUES (6, 2, 'List IP', 'fa-solid fa-network-wired', 'listip', 3);
INSERT INTO `module` VALUES (7, 3, 'Notification Config', 'fa-regular fa-comment-dots', NULL, 0);
INSERT INTO `module` VALUES (9, 1, 'Database Status', 'fa-solid fa-database', 'db', 4);

-- ----------------------------
-- Table structure for modulegroup
-- ----------------------------
DROP TABLE IF EXISTS `modulegroup`;
CREATE TABLE `modulegroup`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `icon` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `position` decimal(10, 0) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of modulegroup
-- ----------------------------
INSERT INTO `modulegroup` VALUES (1, 'Dashboard', 'fa fa-home', 1);
INSERT INTO `modulegroup` VALUES (2, 'Enggine', 'fa fa-sitemap', 2);
INSERT INTO `modulegroup` VALUES (3, 'Options', 'fa fa-gears', 3);

-- ----------------------------
-- Table structure for server
-- ----------------------------
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `servername` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `subdomain` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ssl` date NULL DEFAULT NULL,
  `issuer` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `responsetime` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `storage` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `memory` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cpu` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lastcheck` datetime NULL DEFAULT NULL,
  `serverip` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '127.0.0.1',
  `storagepath` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of server
-- ----------------------------
INSERT INTO `server` VALUES (1, 'Server OMS', 'oms.artista.id', '2025-08-23', 'Let\'s Encrypt', '10.440', '12.56 MB', '70.78', '', '2025-09-14 21:50:02', '127.0.0.1', 'C:\\Project\\XAMPP\\htdocs\\SmartAdmin-master\\DEVELOPER\\HTML_version', 'SYSTEM');
INSERT INTO `server` VALUES (2, 'Shop Raceworks', 'shop.raceworks.id', '2025-11-28', 'Let\'s Encrypt', NULL, '0', '70.87', '29', '2025-09-14 21:50:05', '127.0.0.1', NULL, NULL);
INSERT INTO `server` VALUES (3, 'shop.mhperformance.id', 'shop.mhperformance.id', '2026-06-28', 'Sectigo Limited', NULL, '0', '70.95', '56', '2025-09-14 21:50:07', '127.0.0.1', NULL, NULL);
INSERT INTO `server` VALUES (4, 'shop.meduzza.id', 'shop.meduzza.id', '2025-06-27', 'Sectigo Limited', NULL, '0', '70.77', '', '2025-09-14 21:50:11', '127.0.0.1', NULL, 'SYSTEM');
INSERT INTO `server` VALUES (5, 'rosalyne.id.', 'rosalyne.id.', '2025-11-09', 'Let\'s Encrypt', NULL, '0', '70.73', '15', '2025-09-14 21:50:13', '127.0.0.1', NULL, NULL);
INSERT INTO `server` VALUES (6, 'riderspare.com', 'riderspare.com', '2025-12-02', 'Let\'s Encrypt', NULL, '0', '70.83', '28', '2025-09-14 21:50:15', '127.0.0.1', NULL, NULL);
INSERT INTO `server` VALUES (7, 'raceworks.id', 'raceworks.id', '2025-11-01', 'Sectigo Limited', NULL, '0', '70.64', '42', '2025-09-14 21:50:17', '127.0.0.1', NULL, NULL);
INSERT INTO `server` VALUES (8, 'poswell.artista.id', 'poswell.artista.id', '2025-10-28', 'Let\'s Encrypt', NULL, '0', '70.75', '30', '2025-09-14 21:50:19', '127.0.0.1', NULL, NULL);
INSERT INTO `server` VALUES (9, 'kiswara.co.id', 'kiswara.co.id', '2025-11-15', 'Google Trust Services', NULL, '0', '70.48', '', '2025-09-14 21:50:23', '127.0.0.1', NULL, 'SYSTEM');
INSERT INTO `server` VALUES (10, 'jurnal.artista.id', 'jurnal.artista.id', NULL, 'N/A', NULL, '0', '70.66', '4', '2025-09-14 21:50:46', '127.0.0.1', NULL, NULL);
INSERT INTO `server` VALUES (11, 'img.kiswara.id', 'img.kiswara.id', NULL, 'N/A', NULL, '0', '70.66', '8', '2025-09-14 21:50:48', '127.0.0.1', NULL, NULL);
INSERT INTO `server` VALUES (12, 'erp.cirlo.id', 'erp.cirlo.id', '2025-10-28', 'Let\'s Encrypt', NULL, '0', '70.66', '4', '2025-09-14 21:50:50', '127.0.0.1', NULL, NULL);
INSERT INTO `server` VALUES (13, 'dsp.artista.id', 'dsp.artista.id', '2025-11-09', 'Let\'s Encrypt', NULL, '0', '70.7', '39', '2025-09-14 21:50:52', '127.0.0.1', NULL, NULL);
INSERT INTO `server` VALUES (14, 'cirlotrip.id', 'cirlotrip.id', '2026-09-12', 'Sectigo Limited', NULL, '0', '70.73', '65', '2025-09-14 21:50:54', '127.0.0.1', NULL, NULL);
INSERT INTO `server` VALUES (15, 'cirlo.id', 'cirlo.id', '2025-11-09', 'Let\'s Encrypt', NULL, '0', '70.68', '23', '2025-09-14 21:50:56', '127.0.0.1', NULL, NULL);
INSERT INTO `server` VALUES (16, 'acadiakids.id', 'acadiakids.id', NULL, 'N/A', NULL, '0', '70.68', '3', '2025-09-14 21:50:58', '127.0.0.1', NULL, NULL);

-- ----------------------------
-- Table structure for tbldomain
-- ----------------------------
DROP TABLE IF EXISTS `tbldomain`;
CREATE TABLE `tbldomain`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `expire` date NULL DEFAULT NULL,
  `ssl` date NULL DEFAULT NULL,
  `issuer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbldomain
-- ----------------------------
INSERT INTO `tbldomain` VALUES (1, 'acadiakids.id', '2025-12-19', NULL, NULL);
INSERT INTO `tbldomain` VALUES (2, 'artista.co.id', '2026-08-23', NULL, NULL);
INSERT INTO `tbldomain` VALUES (3, 'artista.id', '2026-01-17', NULL, NULL);
INSERT INTO `tbldomain` VALUES (4, 'atracker.id', '2027-10-22', '2024-01-11', 'DigiCert Inc');
INSERT INTO `tbldomain` VALUES (5, 'cirlo.id', '2025-12-11', '2025-11-09', 'Let\'s Encrypt');
INSERT INTO `tbldomain` VALUES (6, 'cirlotrip.id', '2026-12-17', '2026-09-12', 'Sectigo Limited');
INSERT INTO `tbldomain` VALUES (7, 'eppos.id', '2025-10-31', NULL, NULL);
INSERT INTO `tbldomain` VALUES (8, 'jogjabikerendezvous.id', '2027-09-23', '2025-10-22', 'Let\'s Encrypt');
INSERT INTO `tbldomain` VALUES (9, 'jonnygadget.com', '2027-10-14', '2026-01-28', 'Sectigo Limited');
INSERT INTO `tbldomain` VALUES (10, 'kiswara.co.id', '2027-08-31', '2025-11-15', 'Google Trust Services');
INSERT INTO `tbldomain` VALUES (11, 'kiswara.com', '2025-11-21', NULL, NULL);
INSERT INTO `tbldomain` VALUES (12, 'kiswara.id', '2025-11-01', NULL, NULL);
INSERT INTO `tbldomain` VALUES (13, 'kiswara.net', '2026-02-14', '2025-10-21', 'Let\'s Encrypt');
INSERT INTO `tbldomain` VALUES (14, 'meduzza.id', '2027-05-21', '2025-11-12', 'Let\'s Encrypt');
INSERT INTO `tbldomain` VALUES (15, 'mhperformance.id', '2026-03-16', '2025-10-15', 'Let\'s Encrypt');
INSERT INTO `tbldomain` VALUES (16, 'oneway.id', '2025-11-12', NULL, NULL);
INSERT INTO `tbldomain` VALUES (17, 'oneway.my.id', '2027-10-12', NULL, NULL);
INSERT INTO `tbldomain` VALUES (18, 'poswell.id', '2025-10-31', NULL, NULL);
INSERT INTO `tbldomain` VALUES (19, 'raceworks.id', '2027-05-14', '2025-11-01', 'Sectigo Limited');
INSERT INTO `tbldomain` VALUES (20, 'riderspare.com', '2027-04-21', '2025-12-02', 'Let\'s Encrypt');
INSERT INTO `tbldomain` VALUES (21, 'rumahbuku.co.id', '2025-11-06', NULL, NULL);
INSERT INTO `tbldomain` VALUES (22, 'thebiffs.co', '2025-11-20', '2025-11-14', 'Google Trust Services');
INSERT INTO `tbldomain` VALUES (23, 'vape.co.id', '2026-02-14', NULL, NULL);
INSERT INTO `tbldomain` VALUES (24, 'vapor.co.id', '2026-02-28', '2025-10-13', 'Let\'s Encrypt');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `2fa` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lastlogin` datetime NULL DEFAULT NULL,
  `lastip` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'rindhoedo@gmail.com', 'e172dd95f4feb21412a692e73929961e', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for userakses
-- ----------------------------
DROP TABLE IF EXISTS `userakses`;
CREATE TABLE `userakses`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NULL DEFAULT NULL,
  `idmodule` int(11) NULL DEFAULT NULL,
  `akses` tinyint(1) NULL DEFAULT NULL COMMENT '0/null=no akses,1=view,2=full',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userakses
-- ----------------------------
INSERT INTO `userakses` VALUES (1, 1, 1, 2);
INSERT INTO `userakses` VALUES (2, 1, 2, 2);
INSERT INTO `userakses` VALUES (3, 1, 3, 2);
INSERT INTO `userakses` VALUES (4, 1, 4, 2);
INSERT INTO `userakses` VALUES (5, 1, 5, 2);
INSERT INTO `userakses` VALUES (6, 1, 6, 2);
INSERT INTO `userakses` VALUES (7, 1, 7, 2);
INSERT INTO `userakses` VALUES (9, 1, 9, 2);

SET FOREIGN_KEY_CHECKS = 1;
