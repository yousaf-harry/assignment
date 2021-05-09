/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : joyrid_lumen

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-05-09 01:45:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `geofences`
-- ----------------------------
DROP TABLE IF EXISTS `geofences`;
CREATE TABLE `geofences` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `boundry` geometry NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `geofences_name_unique` (`name`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of geofences
-- ----------------------------
INSERT INTO `geofences` VALUES ('3', 'Aldersgate', 'ff0000ff', '\0\0\0\0\0\0\0\0\0\0\0\0\0ж�\'=�I@���x���fɔ��I@���Bи���f�I@s��4ظ�E�N�\r�I@���%�5����K�I@����=��6�I@hj�2�и����L�I@KSy����L�,��I@���j︿7bk���I@�U������bw��I@�Q~�)������I@1�\"q\"/����E0��I@k��:e���\Z)l�I@ab1Ƃh���T�5Y�I@vg1�M��:�~rS�I@ٮU��k��ж�\'=�I@���x���', null, null);
INSERT INTO `geofences` VALUES ('4', 'Bassishaw', 'E05000003', '\0\0\0\0\0\0\0\0\0\0\0\0\0�eEIO�I@1B�\Z궿�(%J=�I@ �\n����wN�I@5v\"M��E���I@J�Q�N�����\0��I@˃(xň��j�����I@C�$��|������\n�I@Y�1Y���bAع\n�I@��ߵpķ�n�V��I@���x���fɔ��I@ٮU��k��ж�\'=�I@���.ⷿm�q8�I@�n����Xy-D�I@b�k�Է����G^�I@�F��4R���eEIO�I@1B�\Z궿', null, null);
INSERT INTO `geofences` VALUES ('5', 'Billingsgate', 'E05000004', '\0\0\0\0\0\0\0\0\0\0\0\0\05�z^�I@��j7ߴ�����I@�x� �ൿ]���I@[@8D�ϵ�|��4�I@qUgW엵�\Z)�1�I@>�k�|���f{{\\�I@5�%�N��.j�8[�I@/@����S�{�I@�q{\n�ⴿ�nʕ�I@��2�tܴ�j��r�I@��rF����/v�I@mM�	ۉ��z�{b�I@����줴�7��<�I@�L�o촿�uQ K�I@�F]z������8�I@\r�w�����\Z�I@P�\'����5�z^�I@��j7ߴ�', null, null);

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('9', '2021_05_06_034657_create_user_table', '1');
INSERT INTO `migrations` VALUES ('10', '2021_05_06_035829_create_vehicle_table', '1');
INSERT INTO `migrations` VALUES ('11', '2021_05_06_221816_create_geofences_table', '1');

-- ----------------------------
-- Table structure for `vehicles`
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` point NOT NULL,
  `geofences_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vehicles_email_unique` (`email`) USING HASH,
  KEY `vehicles_geofences_id_foreign` (`geofences_id`),
  SPATIAL KEY `vehicles_location_spatialindex` (`location`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of vehicles
-- ----------------------------
INSERT INTO `vehicles` VALUES ('3', 'yousaf3@gmail.com', '\0\0\0\0\0\0\0�h��i�I@�1[ʡ��', '3', '2021-05-08 12:35:30', '2021-05-09 00:25:52');
INSERT INTO `vehicles` VALUES ('4', 'yousaf4@gmail.com', '\0\0\0\0\0\0\05J/�0�I@��y\Z���', '5', '2021-05-08 13:01:18', '2021-05-09 01:44:38');
INSERT INTO `vehicles` VALUES ('12', 'yousaf15@gmail.com', '\0\0\0\0\0\0\0����I@������', '4', '2021-05-08 21:45:54', '2021-05-09 00:29:40');
INSERT INTO `vehicles` VALUES ('11', 'yousafharry@gmail.com', '\0\0\0\0\0\0\0�����I@�;�����', '5', '2021-05-08 17:15:21', '2021-05-09 01:29:01');
