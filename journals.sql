/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100432
 Source Host           : localhost:3306
 Source Schema         : journals

 Target Server Type    : MySQL
 Target Server Version : 100432
 File Encoding         : 65001

 Date: 27/05/2024 19:28:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article_assigned
-- ----------------------------
DROP TABLE IF EXISTS `article_assigned`;
CREATE TABLE `article_assigned`  (
  `assigned_id` int NOT NULL AUTO_INCREMENT,
  `submission_id` int NULL DEFAULT NULL,
  `userid` int NULL DEFAULT NULL,
  PRIMARY KEY (`assigned_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of article_assigned
-- ----------------------------

-- ----------------------------
-- Table structure for article_author
-- ----------------------------
DROP TABLE IF EXISTS `article_author`;
CREATE TABLE `article_author`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `articleid` int NULL DEFAULT NULL,
  `auid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of article_author
-- ----------------------------
INSERT INTO `article_author` VALUES (27, 137, 41);
INSERT INTO `article_author` VALUES (28, 138, 41);
INSERT INTO `article_author` VALUES (29, 139, 41);
INSERT INTO `article_author` VALUES (30, 139, 42);
INSERT INTO `article_author` VALUES (31, 140, 42);
INSERT INTO `article_author` VALUES (32, 141, 41);
INSERT INTO `article_author` VALUES (33, 141, 42);
INSERT INTO `article_author` VALUES (34, 143, 41);
INSERT INTO `article_author` VALUES (35, 143, 42);
INSERT INTO `article_author` VALUES (36, 144, 47);
INSERT INTO `article_author` VALUES (37, 145, 42);
INSERT INTO `article_author` VALUES (38, 152, 41);
INSERT INTO `article_author` VALUES (39, 153, 54);
INSERT INTO `article_author` VALUES (40, 154, 42);
INSERT INTO `article_author` VALUES (41, 155, 41);
INSERT INTO `article_author` VALUES (42, 156, 41);
INSERT INTO `article_author` VALUES (43, 157, 42);
INSERT INTO `article_author` VALUES (44, 158, 54);
INSERT INTO `article_author` VALUES (52, 160, 41);
INSERT INTO `article_author` VALUES (53, 162, 41);
INSERT INTO `article_author` VALUES (54, 162, 42);
INSERT INTO `article_author` VALUES (55, 162, 54);
INSERT INTO `article_author` VALUES (56, 163, 41);
INSERT INTO `article_author` VALUES (57, 164, 41);
INSERT INTO `article_author` VALUES (58, 164, 42);
INSERT INTO `article_author` VALUES (59, 164, 54);
INSERT INTO `article_author` VALUES (60, 165, 42);
INSERT INTO `article_author` VALUES (61, 165, 54);
INSERT INTO `article_author` VALUES (62, 166, 41);
INSERT INTO `article_author` VALUES (63, 167, 41);
INSERT INTO `article_author` VALUES (64, 168, 41);
INSERT INTO `article_author` VALUES (65, 168, 42);
INSERT INTO `article_author` VALUES (66, 168, 54);
INSERT INTO `article_author` VALUES (67, 169, 41);
INSERT INTO `article_author` VALUES (68, 170, 41);
INSERT INTO `article_author` VALUES (69, 171, 41);
INSERT INTO `article_author` VALUES (71, NULL, 41);
INSERT INTO `article_author` VALUES (72, 172, 41);
INSERT INTO `article_author` VALUES (73, 173, 41);
INSERT INTO `article_author` VALUES (74, 173, 42);
INSERT INTO `article_author` VALUES (75, 173, 54);
INSERT INTO `article_author` VALUES (76, 174, 41);
INSERT INTO `article_author` VALUES (77, 174, 42);
INSERT INTO `article_author` VALUES (78, 174, 54);
INSERT INTO `article_author` VALUES (79, 175, 41);
INSERT INTO `article_author` VALUES (80, 176, 41);
INSERT INTO `article_author` VALUES (81, 177, 41);
INSERT INTO `article_author` VALUES (82, 178, 41);
INSERT INTO `article_author` VALUES (83, 179, 41);
INSERT INTO `article_author` VALUES (84, 180, 41);
INSERT INTO `article_author` VALUES (85, 181, 41);
INSERT INTO `article_author` VALUES (86, 182, 41);
INSERT INTO `article_author` VALUES (87, 183, 41);
INSERT INTO `article_author` VALUES (88, 184, 41);
INSERT INTO `article_author` VALUES (89, 184, 42);
INSERT INTO `article_author` VALUES (90, 185, 41);
INSERT INTO `article_author` VALUES (91, 185, 42);
INSERT INTO `article_author` VALUES (92, 186, 41);
INSERT INTO `article_author` VALUES (93, 187, 42);
INSERT INTO `article_author` VALUES (94, 188, 56);
INSERT INTO `article_author` VALUES (95, 189, 59);
INSERT INTO `article_author` VALUES (96, 189, 60);
INSERT INTO `article_author` VALUES (97, 189, 61);
INSERT INTO `article_author` VALUES (98, 190, 63);

-- ----------------------------
-- Table structure for article_submission
-- ----------------------------
DROP TABLE IF EXISTS `article_submission`;
CREATE TABLE `article_submission`  (
  `submission_id` int NOT NULL AUTO_INCREMENT,
  `auid` int NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `submission` bit(1) NULL DEFAULT NULL,
  `date_submitted` datetime NULL DEFAULT NULL,
  `payment` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `date_paid` int NULL DEFAULT NULL,
  `review` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `date_forwarded_review` datetime NULL DEFAULT NULL,
  `approved` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `date_approved` datetime NULL DEFAULT NULL,
  `layout` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `date_forwarded` datetime NULL DEFAULT NULL,
  `published` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `date_published` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`submission_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of article_submission
-- ----------------------------

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`  (
  `articleid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `abstract` longtext CHARACTER SET utf16 COLLATE utf16_general_ci NULL,
  `published` bit(1) NULL DEFAULT b'0',
  `filename` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `date_published` datetime NULL DEFAULT current_timestamp,
  `doi` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `volumeid` int NULL DEFAULT NULL,
  `userid` int NULL DEFAULT NULL,
  PRIMARY KEY (`articleid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 191 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES (187, 'A Proposed Conceptual Framework for the Integration of Agent-Based Microsimulation to Activity-Based Demand Models', NULL, '<p>Traffic patterns and related problems are changing due to population growth, calamities, among others. Transportation planning is crucial in finding solutions to these problems. Travel forecasting models such as activity-based demand and agent-based microsimulation ones are effective tools to simulate and evaluate transportation planning strategies. This paper aims to develop a framework in line with the advances and concepts from previous studies on transportation demand modelling. Numerous research from various countries in the past years that examine recent developments in agent-based microsimulation and activity-based travel demand models are investigated here. The integration of these models in the context of various scenario types are discussed. The findings and framework are envisaged to aid in the development of a microsimulation model that integrates both activity- and agent-based models.</p>', b'1', 'no_upload.jpg', '2024-05-22 00:36:48', 'https://doi.org/10.52751/GQKL6394', 11, 55);
INSERT INTO `articles` VALUES (188, 'Demystifying Nursing Knowledge Development: Issues, Solutions and Future Directions', NULL, '<p>Nursing has evolved from its historical roots, influenced by multiple factors such as knowledge from other disciplines, methods, and processes of knowledge generation and theory utilization. Issues arise because nurses recognize the need for knowledge-based practice and envisage the focus of knowledge generation and utilization from theoretical framing guiding their practice. The borrowed or unique knowledge-based practice is grounded in philosophical and theoretical frameworks advanced through paradigmatic viewpoints within the metaparadigms of nursing. Encompassing a framework in nursing is the concept of caring. Caring in nursing uniquely contributes to appreciating nursing as a discipline of knowledge and a practice profession. Suggested processes involve knowledge-based, evidence-based, and theory-based practices within a conceptual-theoretical-empirical system. Moreover, because there is yet a continuing search for a universal theory of nursing guiding global nursing care practice, nursing must have contended with the plurality of theories dictating varying ways of practicing nursing.</p>', b'1', 'Demystifying_Nursing_Knowledge_Development_Issues,_Solutions_and_Future_Directions.pdf', '2024-05-22 02:41:07', 'https://doi.org/10.52751/GUZC3553', 11, 55);
INSERT INTO `articles` VALUES (189, 'Communication Styles and Interpersonal Communications of Mobile Legends Bang-Bang (MLBB) Players', NULL, '<p>This study explored the Mobile Legends Bang-Bang (MLBB) players’ dominant communication styles and how their participation in this online game contributed to their interpersonal communications. The researchers utilized a 5-point Likert scale questionnaire based on Bourne’s (1995) Communication Styles and an open-ended questionnaire that elicited qualitative responses from the 30 respondents for the players’ interpersonal communications within family interactions. Data reveal that MLBB players often utilize the Aggressive Communication Style, given the nature of the game that involves competitiveness and quick decision making in order to win. In addition, Passive-Aggressive and Assertive Communication came close as other dominant styles since players could also be subtle in their aggression and at the same time positively straightforward in their communication to support or lead team members in defeating the game opponents. Data also show as revealed by the players’ siblings that the Interpersonal Communications of the MLBB players might have been strengthened in terms of displaying assertiveness, clarity and directness in communicating their thoughts and feelings to the family members. On the other hand MLBB engagements might also have weakened interpersonal communications as some of these players demonstrate aggressiveness which could include the use of harsh words in interacting with their siblings on certain occasions.</p>', b'1', 'submission_138_141_coverImage_en.png', '2024-05-22 02:55:38', 'https://doi.org/10.52751/AYJD8223', 11, 2);
INSERT INTO `articles` VALUES (190, 'Living Conditions and Academic Performance of Students Occupying Boarding Houses in Northern Mindanao', NULL, '<p>Learners\' academic performance is affected by a multifaceted array of aspects. This paper focused on the effects of the boarding houses\' environment on the educational performance of 279 students of Central Mindanao University from SY 2015-2016. Data concerning the students\' demographic profile, academic performance, and characteristics of their boarding houses were collected using a semi-structured questionnaire. They were evaluated statistically using mean, frequency counts, percentage, and Pearson Product Moment Correlation statistical tools. Statistical outcomes showed that more than half of the respondents were below 18 years old, females, enrolled in a BS degree in Agriculture, and single. Regarding religion, Catholics composed the majority of the respondents. The monthly allowance varies according to the parent\'s income, as the majority were academic scholars with grades below 2.20 and 2.19 for the school\'s two semesters. All variables relating to the features of the boarding houses were rated as satisfactory based on rental rate, health and sanitation, facilities, accessibility, safety and security, and policies implemented. Moreover, the study found that gender and scholarship type were significantly related to academic performance. Government and private institutions can use the identified factors as the basis for educational program planning and implementation to support the learners\' academic performance</p>', b'1', 'IT58-Final-Project.pdf', '2024-05-25 09:15:38', 'https://doi.org/10.52751/YRPZ9068', 12, 2);

-- ----------------------------
-- Table structure for authors
-- ----------------------------
DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors`  (
  `auid` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT 1,
  `title` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `userid` int NULL DEFAULT NULL,
  `author_firstname` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `author_lastname` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT current_timestamp,
  PRIMARY KEY (`auid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of authors
-- ----------------------------
INSERT INTO `authors` VALUES (56, 'soliven@gmail.com', 1, '1', 56, 'Mae Dayanne M.', 'Soliven', '2024-05-22 02:38:32');
INSERT INTO `authors` VALUES (58, 'minguita@gmail.com', 1, '1', 58, 'Caesarlica S. ', 'Minguita', '2024-05-22 02:42:26');
INSERT INTO `authors` VALUES (59, 'aboy@gmail.com', 1, '1', 59, 'Desty Anse A.', ' Aboy', '2024-05-22 02:53:13');
INSERT INTO `authors` VALUES (60, 's.genson.kylamarie@cmu.edu.ph', 1, '1', 60, 'Kyla Marie O.', 'Genson', '2024-05-22 02:53:46');
INSERT INTO `authors` VALUES (61, 's.turano.charity@cmu.edu.ph', 1, '1', 61, 'Charity T. ', 'Turano', '2024-05-22 02:54:25');
INSERT INTO `authors` VALUES (63, 'arroyo@gmail.com', 1, '1', 63, 'Rubie', ' Andoy Arroyo', '2024-05-25 09:14:42');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `roleid` int NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'author');
INSERT INTO `role` VALUES (2, 'evaluator');
INSERT INTO `role` VALUES (3, 'admin');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `userid` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `date_at` datetime NULL DEFAULT current_timestamp,
  `pword` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `roleid` int NULL DEFAULT NULL,
  `status` bit(1) NULL DEFAULT b'1',
  `date_created` datetime NULL DEFAULT current_timestamp,
  `profile_pic` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin1', 'admin1', 'admin1@gmail.com', '2024-05-19 18:19:50', 'e00cf25ad42683b3df678c61f42c6bda', 3, b'1', '2024-05-19 18:19:50', NULL);
INSERT INTO `users` VALUES (2, 'JOEMAR', 'AGUINEA', 's.aguinea.joemar@cmu.edu.ph', '2024-05-22 00:28:52', '827ccb0eea8a706c4c34a16891f84e7b', 3, b'1', '2024-05-22 00:28:52', NULL);
INSERT INTO `users` VALUES (56, 'Mae Dayanne M.', 'Soliven', 'soliven@gmail.com', '2024-05-22 02:38:32', 'b59c67bf196a4758191e42f76670ceba', 1, b'1', '2024-05-22 02:38:32', NULL);
INSERT INTO `users` VALUES (57, 'Enrico L,', 'Nacua', 'nacster@gmail.com', '2024-05-22 02:39:18', '4a7d1ed414474e4033ac29ccb8653d9b', 2, b'1', '2024-05-22 02:39:18', NULL);
INSERT INTO `users` VALUES (58, 'Caesarlica S. ', 'Minguita', 'minguita@gmail.com', '2024-05-22 02:42:26', 'b59c67bf196a4758191e42f76670ceba', 1, b'1', '2024-05-22 02:42:26', NULL);
INSERT INTO `users` VALUES (59, 'Desty Anse A.', ' Aboy', 'aboy@gmail.com', '2024-05-22 02:53:13', 'b59c67bf196a4758191e42f76670ceba', 1, b'1', '2024-05-22 02:53:13', NULL);
INSERT INTO `users` VALUES (60, 'Kyla Marie O.', 'Genson', 's.genson.kylamarie@cmu.edu.ph', '2024-05-22 02:53:46', 'b59c67bf196a4758191e42f76670ceba', 1, b'1', '2024-05-22 02:53:46', NULL);
INSERT INTO `users` VALUES (61, 'Charity T. ', 'Turano', 's.turano.charity@cmu.edu.ph', '2024-05-22 02:54:25', 'b59c67bf196a4758191e42f76670ceba', 1, b'1', '2024-05-22 02:54:25', NULL);
INSERT INTO `users` VALUES (63, 'Rubie', ' Andoy Arroyo', 'arroyo@gmail.com', '2024-05-25 09:14:42', 'dcddb75469b4b4875094e14561e573d8', 1, b'1', '2024-05-25 09:14:42', NULL);
INSERT INTO `users` VALUES (65, 'CMU', 'JS', 'cmujs@gmail.com', '2024-05-27 18:42:02', '4a7d1ed414474e4033ac29ccb8653d9b', 2, b'1', '2024-05-27 18:42:02', NULL);

-- ----------------------------
-- Table structure for volume
-- ----------------------------
DROP TABLE IF EXISTS `volume`;
CREATE TABLE `volume`  (
  `volumeid` int NOT NULL AUTO_INCREMENT,
  `vol_name` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf16 COLLATE utf16_general_ci NULL,
  `date_at` datetime NULL DEFAULT current_timestamp,
  `status` int NULL DEFAULT 0,
  PRIMARY KEY (`volumeid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of volume
-- ----------------------------
INSERT INTO `volume` VALUES (1, 'Volume 1', '<p>Vestibulum sit amet ornare felis. Nullam iaculis quam volutpat magna tincidunt, et euismod nisi euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor quam, luctus et nisi ac, rhoncus gravida lectus. Phasellus bibendum molestie tortor, id commodo elit tempus ac. Mauris et ex in libero egestas placerat. Nam sit amet lacinia arcu. Donec efficitur cursus dignissim.</p>', '2024-05-04 18:35:59', 1);
INSERT INTO `volume` VALUES (2, 'Volume 2', '<p>Vestibulum sit amet ornare felis. Nullam iaculis quam volutpat magna tincidunt, et euismod nisi euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor quam, luctus et nisi ac, rhoncus gravida lectus. Phasellus bibendum molestie tortor, id commodo elit tempus ac. Mauris et ex in libero egestas placerat. Nam sit amet lacinia arcu. Donec efficitur cursus dignissim.</p>', '2024-05-04 18:40:38', 1);
INSERT INTO `volume` VALUES (3, 'Volume 3', 'Vestibulum sit amet ornare felis. Nullam iaculis quam volutpat magna tincidunt, et euismod nisi euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor quam, luctus et nisi ac, rhoncus gravida lectus. Phasellus bibendum molestie tortor, id commodo elit tempus ac. Mauris et ex in libero egestas placerat. Nam sit amet lacinia arcu. Donec efficitur cursus dignissim.', '2024-05-04 18:40:54', 0);
INSERT INTO `volume` VALUES (4, 'Volume 4', '<p>Quisque et massa tristique, volutpat urna vel, hendrerit turpis. Cras hendrerit justo est, porta facilisis nunc tincidunt in. Cras sit amet odio sit amet turpis finibus laoreet eu sed sapien. Pellentesque sed congue nisl. Duis ultrices, dui quis blandit laoreet, massa nunc ultrices libero, id ultrices lectus urna sed orci. Nullam vehicula sed enim vel ornare. Vivamus risus tellus, tincidunt eget dapibus et, luctus et nisl. Integer quis efficitur arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec quis hendrerit turpis. Morbi tincidunt enim ut sapien dignissim luctus.</p>', '2024-05-07 20:20:00', 0);
INSERT INTO `volume` VALUES (5, 'Volume 5', '<p>Donec eleifend blandit massa, accumsan tempor ante consequat quis. Mauris in convallis lorem, ac ornare mi. Curabitur pretium vehicula ex eget condimentum. Vivamus vehicula dolor metus, at auctor mauris consectetur a. Vestibulum vel nisi eu turpis tempus cursus. Vestibulum at velit consequat, dapibus eros in, porttitor dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed tristique ornare lacinia. Morbi sollicitudin facilisis velit porta dapibus. Nunc vel mauris sed sem rhoncus tempus et at tortor. Nullam mollis dolor eu est consectetur, in eleifend sem tempus. Phasellus aliquam a tortor eleifend venenatis. Morbi non imperdiet leo.</p>', '2024-05-20 11:13:04', 0);
INSERT INTO `volume` VALUES (8, 'Volume 6', '<p>Donec eleifend blandit massa, accumsan tempor ante consequat quis. Mauris in convallis lorem, ac ornare mi. Curabitur pretium vehicula ex eget condimentum. Vivamus vehicula dolor metus, at auctor mauris consectetur a. Vestibulum vel nisi eu turpis tempus cursus. Vestibulum at velit consequat, dapibus eros in, porttitor dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed tristique ornare lacinia. Morbi sollicitudin facilisis velit porta dapibus. Nunc vel mauris sed sem rhoncus tempus et at tortor. Nullam mollis dolor eu est consectetur, in eleifend sem tempus. Phasellus aliquam a tortor eleifend venenatis. Morbi non imperdiet leo.</p>', '2024-05-21 12:09:37', 0);
INSERT INTO `volume` VALUES (9, 'Volume 5', '<p>Donec eleifend blandit massa, accumsan tempor ante consequat quis. Mauris in convallis lorem, ac ornare mi. Curabitur pretium vehicula ex eget condimentum. Vivamus vehicula dolor metus, at auctor mauris consectetur a. Vestibulum vel nisi eu turpis tempus cursus. Vestibulum at velit consequat, dapibus eros in, porttitor dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed tristique ornare lacinia. Morbi sollicitudin facilisis velit porta dapibus. Nunc vel mauris sed sem rhoncus tempus et at tortor. Nullam mollis dolor eu est consectetur, in eleifend sem tempus. Phasellus aliquam a tortor eleifend venenatis. Morbi non imperdiet leo.</p>', '2024-05-21 14:26:22', NULL);
INSERT INTO `volume` VALUES (11, ' VOL. 27 NO. 2 (2023) ', '<p>Vol. 27 No. 2 (2023) presents a diverse array of original articles covering various topics in research and analysis. Articles include investigations into communication styles among Mobile Legends Bang-Bang players, a proposed conceptual framework for integrating agent-based microsimulation into demand models, mining indigenous fruit trees for essential oils with antibacterial properties, geo-hazard assessment in Barangay Kiorao, adaptability of high school teachers during the pandemic, competency mapping in rural communities, Filipino soldiers\' well-being, nursing knowledge development, diet and sanitation assessment in Bukang liwayway, remote sensing for tree plantation characterization, and the prevalence of zoonotic gastrointestinal parasites in cattle. This issue contributes valuable insights across multiple disciplines and domains.&nbsp;</p>', '2024-05-22 00:35:07', 1);
INSERT INTO `volume` VALUES (12, 'Vol. 27 No. 1 (2023)', '<p>Learners\' academic performance is affected by a multifaceted array of aspects. This paper focused on the effects of the boarding houses\' environment on the educational performance of 279 students of Central Mindanao University from SY 2015-2016.</p>', '2024-05-25 09:13:48', 1);

SET FOREIGN_KEY_CHECKS = 1;
