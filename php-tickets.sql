/*
 Navicat Premium Data Transfer

 Source Server         : J2EE
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : tickets

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 10/06/2021 22:42:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cinema_info
-- ----------------------------
DROP TABLE IF EXISTS `cinema_info`;
CREATE TABLE `cinema_info`  (
  `cinema_id` int(11) NOT NULL AUTO_INCREMENT,
  `cinema_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `cinema_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `grade` float(10, 5) NULL DEFAULT NULL,
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `cinema_pic` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`cinema_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cinema_info
-- ----------------------------
INSERT INTO `cinema_info` VALUES (1, '万达影城', '拱墅区杭行路666号万达广场5楼', 5.00000, '400-0806060', '/static/img/万达.jpg', '拱墅区');
INSERT INTO `cinema_info` VALUES (2, '新远国际影城', '下城区西湖文化广场8号（C区）', 5.00000, '0571-85001088', '/static/img/新远.jpg', '下城区');
INSERT INTO `cinema_info` VALUES (3, '德信影城', '滨江区滨文路422号文耀大厦3层', 5.00000, '0571-87678822', '/static/img/德信.jpg', '滨江区');

-- ----------------------------
-- Table structure for film_broadcast_info
-- ----------------------------
DROP TABLE IF EXISTS `film_broadcast_info`;
CREATE TABLE `film_broadcast_info`  (
  `film_broadcast_id` int(11) NOT NULL AUTO_INCREMENT,
  `film_id` int(11) NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `is_main_page` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`film_broadcast_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of film_broadcast_info
-- ----------------------------
INSERT INTO `film_broadcast_info` VALUES (1, 1, '/static/img/哆啦A梦.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (2, 2, '/static/img/速度与激情.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (3, 3, '/static/img/禁忌之地.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (4, 4, '/static/img/我要我们在一起.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (5, 5, '/static/img/悬崖之上.jpg', 0, 0);

-- ----------------------------
-- Table structure for film_info
-- ----------------------------
DROP TABLE IF EXISTS `film_info`;
CREATE TABLE `film_info`  (
  `film_id` int(11) NOT NULL AUTO_INCREMENT,
  `film_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `play_time` date NULL DEFAULT NULL,
  `director` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `actor` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `film_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `make_film_area` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `make_film_man` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `film_length` int(11) NULL DEFAULT NULL,
  `film_introduce` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `film_play_status` int(11) NULL DEFAULT NULL,
  `film_grace` float(10, 5) NULL DEFAULT NULL,
  PRIMARY KEY (`film_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of film_info
-- ----------------------------
INSERT INTO `film_info` VALUES (1, '伴我同行2', '2021-05-28', '山崎贵', '水田山葵,大原惠美,嘉数由美,木村昴', '动画', '日本', '八木龙一', 96, '时隔6年，动画电影“伴我同行”系列回归，同时本片也是该系列的终章。大雄为了实现奶奶看到妻子的愿望，想坐着时光机去未来参加他的婚礼，但爱情长跑50年终于要娶到静香的大雄竟然想逃婚…', 1, NULL);
INSERT INTO `film_info` VALUES (2, '速度与激情9', '2021-05-30', '林诣彬', '范·迪塞尔,米歇尔·罗德里格兹', '动作,冒险', '美国', '林诣彬', 142, '范·迪塞尔饰演的唐老大多姆·托莱多，与莱蒂和他的儿子小布莱恩，过上了远离纷扰的平静生活。然而他们也知道，安宁之下总潜藏着危机。这一次，为了保护他所爱的人，唐老大不得不直面...', 1, NULL);
INSERT INTO `film_info` VALUES (3, '寂静之地2', '2021-05-30', '约翰·卡拉辛斯基', '约翰·卡拉辛斯基,艾米莉·布朗特', '惊悚,剧情,悬疑', '美国', '美国', 97, '《寂静之地2》故事紧承上一部展开。在丈夫为保护家人牺牲后，伊芙琳（艾米莉·布朗特饰演）不得不独自带着孩子们（米莉森·西蒙斯、诺亚·尤佩饰演）面对全新的生存挑战。他们将被迫...', 1, NULL);
INSERT INTO `film_info` VALUES (4, '我要我们在一起 ', '2021-05-30', '沙漠', '屈楚萧,张婧仪,孙宁,张垚', '爱情,剧情', '中国大陆', '漠', 105, '你有没有爱过一个人，曾经拼了命，只为和TA在一起。十年前，差生吕钦扬当众告白凌一尧，两人从校园步入社会，为了让她幸福，他不惜以命相搏。然而金钱、房子、婚姻等现实的考验，却...', 1, NULL);
INSERT INTO `film_info` VALUES (5, '悬崖之上', '2021-05-30', '张艺谋', '于和伟,张译,秦海璐,朱亚文', '剧情,动作,悬疑', '中国大陆', '张艺谋', 120, '上世纪三十年代，四位曾在苏联接受特训的共产党特工组成任务小队，回国执行代号为“乌特拉”的秘密行动。由于叛徒的出卖，他们从跳伞降落的第一刻起， 就已置身于敌人布下的罗网之中...', 1, NULL);

-- ----------------------------
-- Table structure for film_times
-- ----------------------------
DROP TABLE IF EXISTS `film_times`;
CREATE TABLE `film_times`  (
  `film_times_id` int(11) NOT NULL AUTO_INCREMENT,
  `film_id` int(11) NULL DEFAULT NULL,
  `hall_id` int(11) NULL DEFAULT NULL,
  `film_date` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `film_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '例如：7:00-9:00',
  `film_price` float(70, 5) NULL DEFAULT NULL,
  `film_discount` float(70, 5) NULL DEFAULT NULL,
  `seat_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`film_times_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of film_times
-- ----------------------------
INSERT INTO `film_times` VALUES (1, 1, 1, '05-28', '7：00-9：00', 35.00000, NULL, 'aaaaaabbaaaa,abbaaabbaaaa,abaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,__aaaaaaaaaa');
INSERT INTO `film_times` VALUES (2, 1, 2, '05-31', '9：00-10：00', 35.00000, NULL, NULL);
INSERT INTO `film_times` VALUES (3, 1, 3, '05-28', '13：00-15：00', 35.00000, NULL, 'aaaaaaaaaaaa,aaaaaaaaaabb,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,__aaaaaaaaaa');
INSERT INTO `film_times` VALUES (4, 1, 2, '05-28', '9：00-10：00', 35.00000, NULL, NULL);
INSERT INTO `film_times` VALUES (5, 1, 5, '05-28', '9：00-10：00', 35.00000, NULL, NULL);
INSERT INTO `film_times` VALUES (6, 1, 1, '05-29', '7：00-9：00', 35.00000, NULL, NULL);
INSERT INTO `film_times` VALUES (7, 1, 6, '05-28', '7：00-9：00', 35.00000, NULL, NULL);
INSERT INTO `film_times` VALUES (8, 1, 7, '05-28', '9：00-10：00', 35.00000, NULL, NULL);
INSERT INTO `film_times` VALUES (9, 1, 6, '05-29', '7：00-9：00', 25.00000, NULL, NULL);
INSERT INTO `film_times` VALUES (10, 2, 1, '05-28', '7：00-9：00', 35.00000, NULL, '');
INSERT INTO `film_times` VALUES (11, 2, 2, '05-31', '9：00-10：00', 35.00000, NULL, NULL);
INSERT INTO `film_times` VALUES (12, 2, 3, '05-28', '13：00-15：00', 35.00000, NULL, NULL);
INSERT INTO `film_times` VALUES (13, 1, 1, '05-29', '9：00-10：00', 35.00000, NULL, '');
INSERT INTO `film_times` VALUES (14, 1, 3, '05-29', '13：00-15：00', 35.00000, NULL, NULL);
INSERT INTO `film_times` VALUES (15, 1, 1, '05-30', '9：00-10：00', 35.00000, NULL, '');
INSERT INTO `film_times` VALUES (16, 1, 3, '05-30', '13：00-15：00', 35.00000, NULL, NULL);

-- ----------------------------
-- Table structure for hall_info
-- ----------------------------
DROP TABLE IF EXISTS `hall_info`;
CREATE TABLE `hall_info`  (
  `hall_id` int(11) NOT NULL AUTO_INCREMENT,
  `hall_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `cinema_id` int(11) NULL DEFAULT NULL COMMENT '外键，来自电影院表的主键',
  `seat_info` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`hall_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hall_info
-- ----------------------------
INSERT INTO `hall_info` VALUES (1, 'Imax3D厅', 1, 'aaaaaaaaaaaa,abbaaabbaaaa,abaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,__aaaaaaaaaa');
INSERT INTO `hall_info` VALUES (2, 'Dobbly杜比厅', 1, 'aaaaaaaaaaaa,aaaaaaaaaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,__aaaaaaaaaa');
INSERT INTO `hall_info` VALUES (3, '激光厅', 1, 'aaaaaaaaaaaa,aaaaaaaaaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,__aaaaaaaaaa');
INSERT INTO `hall_info` VALUES (4, 'VIP会员厅', 1, 'aaaaaaaaaaaa,aaaaaaaaaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,__aaaaaaaaaa');
INSERT INTO `hall_info` VALUES (5, 'Imax3D厅', 1, 'aaaaaaaaaaaa,aaaaaaaaaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,__aaaaaaaaaa');
INSERT INTO `hall_info` VALUES (6, 'Dobbly杜比厅', 2, 'aaaaaaaaaaaa,aaaaaaaaaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,__aaaaaaaaaa');
INSERT INTO `hall_info` VALUES (7, '激光厅', 2, 'aaaaaaaaaaaa,aaaaaaaaaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,__aaaaaaaaaa');
INSERT INTO `hall_info` VALUES (8, 'VIP全景厅', 2, 'aaaaaaaaaaaa,aaaaaaaaaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,__aaaaaaaaaa');
INSERT INTO `hall_info` VALUES (9, 'Imax巨幕1号厅', 3, 'aaaaaaaaaaaa,aaaaaaaaaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,__aaaaaaaaaa');
INSERT INTO `hall_info` VALUES (10, 'Imax巨幕2号厅', 3, 'aaaaaaaaaaaa,aaaaaaaaaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,__aaaaaaaaaa');
INSERT INTO `hall_info` VALUES (11, '杜比Dobbly厅', 4, 'aaaaaaaaaaaa,aaaaaaaaaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,__aaaaaaaaaa');
INSERT INTO `hall_info` VALUES (12, 'VIP尊享厅', 2, 'aaaaaaaaaaaa,aaaaaaaaaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,aaaaaa_aaaaa,__aaaaaaaaaa');

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `order_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '保证唯一',
  `user_id` int(11) NULL DEFAULT NULL,
  `total` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `film_times_id` int(11) NULL DEFAULT NULL,
  `order_state` int(11) NULL DEFAULT 0,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES (11, 1, '70', 1, 2, '15268526658');
INSERT INTO `order_info` VALUES (12, 1, '70', 1, 2, '15268526658');
INSERT INTO `order_info` VALUES (13, 1, '140', 1, 1, '15268526658');
INSERT INTO `order_info` VALUES (14, 1, '70', 1, 0, '15268526658');
INSERT INTO `order_info` VALUES (21, 1, '70', 1, 1, '15268526658');
INSERT INTO `order_info` VALUES (22, 1, '35', 1, 1, '15268526658');
INSERT INTO `order_info` VALUES (23, 1, '70', 1, 1, '15268526658');

-- ----------------------------
-- Table structure for order_item_info
-- ----------------------------
DROP TABLE IF EXISTS `order_item_info`;
CREATE TABLE `order_item_info`  (
  `order_item_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `qr_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `pos_x` int(11) NULL DEFAULT NULL,
  `pos_y` int(11) NULL DEFAULT NULL,
  `price` float NULL DEFAULT NULL,
  PRIMARY KEY (`order_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_item_info
-- ----------------------------
INSERT INTO `order_item_info` VALUES (31, '11', '123', 1, 6, NULL);
INSERT INTO `order_item_info` VALUES (32, '11', '123', 1, 7, NULL);
INSERT INTO `order_item_info` VALUES (33, '12', '123', 3, 9, NULL);
INSERT INTO `order_item_info` VALUES (34, '12', '123', 3, 10, NULL);
INSERT INTO `order_item_info` VALUES (35, '13', '123', 5, 8, NULL);
INSERT INTO `order_item_info` VALUES (36, '13', '123', 5, 9, NULL);
INSERT INTO `order_item_info` VALUES (37, '13', '123', 5, 10, NULL);
INSERT INTO `order_item_info` VALUES (38, '13', '123', 5, 11, NULL);
INSERT INTO `order_item_info` VALUES (39, '14', '0', 2, 9, NULL);
INSERT INTO `order_item_info` VALUES (40, '14', '0', 2, 10, NULL);
INSERT INTO `order_item_info` VALUES (41, '15', '0', 2, 9, NULL);
INSERT INTO `order_item_info` VALUES (42, '15', '0', 2, 10, NULL);
INSERT INTO `order_item_info` VALUES (43, '16', '0', 2, 9, NULL);
INSERT INTO `order_item_info` VALUES (44, '16', '0', 2, 10, NULL);
INSERT INTO `order_item_info` VALUES (45, '17', '0', 2, 9, NULL);
INSERT INTO `order_item_info` VALUES (46, '17', '0', 2, 10, NULL);
INSERT INTO `order_item_info` VALUES (47, '18', '0', 4, 7, NULL);
INSERT INTO `order_item_info` VALUES (48, '19', '0', 4, 7, NULL);
INSERT INTO `order_item_info` VALUES (49, '20', '0', 4, 7, NULL);
INSERT INTO `order_item_info` VALUES (50, '21', '123', 0, 6, NULL);
INSERT INTO `order_item_info` VALUES (51, '21', '123', 0, 7, NULL);
INSERT INTO `order_item_info` VALUES (52, '22', '123', 5, 8, NULL);
INSERT INTO `order_item_info` VALUES (53, '23', '123', 1, 10, NULL);
INSERT INTO `order_item_info` VALUES (54, '23', '123', 1, 11, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `user_pwd` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `user_rank` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `user_exp` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'water127', '123', '15268526658', '1', '326', 1200);
INSERT INTO `user` VALUES (2, 'Gary', '123', '13721280543', '1', '0', 0);
INSERT INTO `user` VALUES (3, 'admin', '123', '15268526658', '1', '0', 0);

SET FOREIGN_KEY_CHECKS = 1;
