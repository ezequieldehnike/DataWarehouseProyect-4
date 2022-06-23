/*
Navicat Premium Data Transfer

Source Server         : datawarehouse
Source Server Type    : MySQL
Source Server Version : 100420
Source Host           : localhost:3306
Source Schema         : datawarehouse

Target Server Type    : MySQL
Target Server Version : 100420
File Encoding         : 65001

Date: 09/06/2022 23:12:24
*/

CREATE DATABASE datawarehouse;
USE datawarehouse; 

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for contactos
-- ----------------------------
DROP TABLE IF EXISTS `contactos`;
CREATE TABLE `contactos`  (
  `id` int NOT NULL,
  `nombre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `apellido` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pais` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `region` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `compania` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cargo` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `canal_preferido` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contactos
-- ----------------------------
INSERT INTO `contactos` VALUES (1, 'Ezequiel', 'Dehnike', 'ezequieldehnike@gmai', '123456789', 'Argentina', 'America', 'Dehnike company', 'Desarrollador Full Stack', 'Email,Whatsapp,Facebook');
INSERT INTO `contactos` VALUES (3, 'Magali', 'Salles', 'salles@ma.com', '515159', 'Argentina', 'America', 'Zulman company', 'Desarrollador Full Stack', 'Telefono,Email');
INSERT INTO `contactos` VALUES (4, 'Victor', 'Rueda', 'Victor@rueda.com', '1165132789', 'Vanuatu', 'America', 'company meli', 'Afilador', 'Whatsapp');
INSERT INTO `contactos` VALUES (11, 'Valeria', 'Ansal', 'val@ansal.com', '23456789', 'Argentina', 'America', 'Coopertec', 'Despachante', 'Telefono,Email');
INSERT INTO `contactos` VALUES (32, 'Alberto', 'Rosales', 'al@rosales.com', '3551615616', 'Spain', 'Europa', 'Air Europa', 'Piloto', 'Facebook,Twitter');
INSERT INTO `contactos` VALUES (33, 'Silvio', 'Sullman', 'sil@sull.com', '616516', 'Italy', 'Europa', 'Miller', 'Vendedor', 'Email,Facebook');
INSERT INTO `contactos` VALUES (37, 'Williams', 'Morris', 'sil@sull.com', '56156156156', 'Anguila', 'America', 'Cigarreta', 'Pastelero', 'Whatsapp');

-- ----------------------------
-- Table structure for paises
-- ----------------------------
DROP TABLE IF EXISTS `paises`;
CREATE TABLE `paises`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `region` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sub_region` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2338 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paises
-- ----------------------------
INSERT INTO `paises` VALUES (1, 'Afghanistan', 'Asia', 'Southern Asia');
INSERT INTO `paises` VALUES (2, 'Aland Islands', 'Europa', 'Northern Europe');
INSERT INTO `paises` VALUES (3, 'Algeria', 'Africa', 'Northern Africa');
INSERT INTO `paises` VALUES (4, 'Albania', 'Europa', 'Southern Europe');
INSERT INTO `paises` VALUES (5, 'American Samoa', 'Oceonia', 'Polynesia');
INSERT INTO `paises` VALUES (6, 'Andorra', 'Europa', 'Southern Europe');
INSERT INTO `paises` VALUES (7, 'Angola', 'Africa', 'Middle Africa');
INSERT INTO `paises` VALUES (8, 'Anguilla', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (9, 'Antarctica', 'Polar', '');
INSERT INTO `paises` VALUES (10, 'Antigua and Barbuda', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (11, 'Argentina', 'America', 'South America');
INSERT INTO `paises` VALUES (12, 'Armenia', 'Asia', 'Western Asia');
INSERT INTO `paises` VALUES (13, 'Aruba', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (14, 'Australia', 'Oceania', 'Australia and New Zealand');
INSERT INTO `paises` VALUES (15, 'Austria', 'Europa', 'Western europe');
INSERT INTO `paises` VALUES (16, 'Azerbaijan', 'Asia', 'Western Asia');
INSERT INTO `paises` VALUES (17, 'Bahamas', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (18, 'Bahrain', 'Asia', 'Western Asia');
INSERT INTO `paises` VALUES (19, 'Bangladesh', 'Asia', 'Southern Asia');
INSERT INTO `paises` VALUES (20, 'Barbados', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (21, 'Belarus', 'Europa', 'Easter Europe');
INSERT INTO `paises` VALUES (22, 'Belgium', 'Europa', 'Western Europe');
INSERT INTO `paises` VALUES (23, 'Belize', 'America', 'Northen America');
INSERT INTO `paises` VALUES (24, 'Benin', 'Africa', 'Western Africa');
INSERT INTO `paises` VALUES (25, 'Bermuda', 'America', 'Northern America');
INSERT INTO `paises` VALUES (26, 'Bhutan                                            ', 'Asia', 'Southern Asia');
INSERT INTO `paises` VALUES (27, 'Bolivia (Plurinational State of)                  ', 'America', 'Southern America');
INSERT INTO `paises` VALUES (28, 'BonaireSint Eustatius and Saba                    ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (29, 'Bosnia and Herzegovina                            ', 'Europa', 'Southern Europe');
INSERT INTO `paises` VALUES (30, 'Botswana                                          ', 'Africa', 'Southern Africa');
INSERT INTO `paises` VALUES (31, 'Bouvet Island                                     ', '', '');
INSERT INTO `paises` VALUES (32, 'Brazil                                            ', 'America', 'South America');
INSERT INTO `paises` VALUES (33, 'British Indian Ocean Territory                    ', 'Arica', 'Eastern Africa');
INSERT INTO `paises` VALUES (34, 'United States Minor Outlying Islands              ', 'America', 'Northen America');
INSERT INTO `paises` VALUES (35, 'Virgin Islands (British)                          ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (36, 'Virgin Islands (U.S.)                             ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (37, 'Brunei Darussalam                                 ', 'Asia', 'South-Eastern Asia');
INSERT INTO `paises` VALUES (38, 'Bulgaria                                          ', 'Europa', 'Eastern Europe');
INSERT INTO `paises` VALUES (39, 'Burkina Faso                                      ', 'Africa', 'Wester Africa');
INSERT INTO `paises` VALUES (40, 'Burundi                                           ', 'Africa', 'Easter Asia');
INSERT INTO `paises` VALUES (41, 'Cambodia                                          ', 'Asia', 'South-Eastern Asia');
INSERT INTO `paises` VALUES (42, 'Cameroon                                          ', 'Africa', 'Middle Africa');
INSERT INTO `paises` VALUES (43, 'Canada                                            ', 'America', 'northen America');
INSERT INTO `paises` VALUES (44, 'Cabo Verde                                        ', 'Africa', 'Western Africa');
INSERT INTO `paises` VALUES (45, 'Cayman Islands                                    ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (46, 'Central African Republic                          ', 'Africa', 'Middle Africa');
INSERT INTO `paises` VALUES (47, 'Chad                                              ', 'Africa', 'Middle Africa');
INSERT INTO `paises` VALUES (48, 'Chile                                             ', 'America', 'South America');
INSERT INTO `paises` VALUES (49, 'China                                             ', 'Asia', 'Easter Asia');
INSERT INTO `paises` VALUES (50, 'Christmas Island                                  ', 'Oceania', 'Australia and New Zealand');
INSERT INTO `paises` VALUES (51, 'Cocos (Keeling) Islands                           ', 'Oceania', 'Australia and New Zealand');
INSERT INTO `paises` VALUES (52, 'Colombia                                          ', 'America', 'South America');
INSERT INTO `paises` VALUES (53, 'Comoros                                           ', 'Africa', 'Easter AFrtica');
INSERT INTO `paises` VALUES (54, 'Congo                                             ', 'Africa', 'Middle Africa');
INSERT INTO `paises` VALUES (55, 'Congo (Democratic Republic of the)                ', 'Africa', 'Middle Africa');
INSERT INTO `paises` VALUES (56, 'Cook Islands                                      ', 'Oceania', 'Polynesia');
INSERT INTO `paises` VALUES (57, 'Costa Rica                                        ', 'America', 'Central America');
INSERT INTO `paises` VALUES (58, 'Croatia                                           ', 'Europa', 'Southern Europe');
INSERT INTO `paises` VALUES (59, 'Cuba                                              ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (60, 'Cura?ao                                           ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (61, 'Cyprus                                            ', 'Europa', 'Southern Europe');
INSERT INTO `paises` VALUES (62, 'Czech Republic                                    ', 'Europa', 'Easter Europe');
INSERT INTO `paises` VALUES (63, 'Denmark                                           ', 'Europa', 'Northern Europe');
INSERT INTO `paises` VALUES (64, 'Djibouti                                          ', 'Africa', 'Eastern Africa');
INSERT INTO `paises` VALUES (65, 'Dominica                                          ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (66, 'Dominican Republic                                ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (67, 'Ecuador                                           ', 'America', 'South America');
INSERT INTO `paises` VALUES (68, 'Egypt                                             ', 'Africa', 'Northern Africa');
INSERT INTO `paises` VALUES (69, 'El Salvador                                       ', 'America', 'Central America');
INSERT INTO `paises` VALUES (70, 'Equatorial Guinea                                 ', 'Africa', 'Middle Africa');
INSERT INTO `paises` VALUES (71, 'Eritrea                                           ', 'Africa', 'Eastern Arica ');
INSERT INTO `paises` VALUES (72, 'Estonia                                           ', 'Europa', 'Northern Europe');
INSERT INTO `paises` VALUES (73, 'Ethiopia                                          ', 'Africa', 'Easter Africa');
INSERT INTO `paises` VALUES (74, 'Falkland Islands (Malvinas)                       ', 'America', 'South America');
INSERT INTO `paises` VALUES (75, 'Faroe Islands                                     ', 'Europa', 'Northern Eurore');
INSERT INTO `paises` VALUES (76, 'Fiji                                              ', 'Oceania', 'Melanesia');
INSERT INTO `paises` VALUES (77, 'Finland                                           ', 'Europa', 'Northern Europe');
INSERT INTO `paises` VALUES (78, 'France                                            ', 'Europa', 'Wester Europe');
INSERT INTO `paises` VALUES (79, 'French Guiana                                     ', 'America', 'South America');
INSERT INTO `paises` VALUES (80, 'French Polynesia                                  ', 'Oceania', 'Polynesia');
INSERT INTO `paises` VALUES (81, 'French Southern Territories                       ', 'Africa', 'Southern Africa');
INSERT INTO `paises` VALUES (82, 'Gabon                                             ', 'Africa', 'Middle Africa');
INSERT INTO `paises` VALUES (83, 'Gambia                                            ', 'Africa', 'Wester Europe');
INSERT INTO `paises` VALUES (84, 'Georgia                                           ', 'Asia', 'Wester Africa');
INSERT INTO `paises` VALUES (85, 'Germany                                           ', 'Europa', 'Wester Europe');
INSERT INTO `paises` VALUES (86, 'Ghana                                             ', 'Africa', 'Wester Africa');
INSERT INTO `paises` VALUES (87, 'Gibraltar                                         ', 'Europa', 'Southern Europe');
INSERT INTO `paises` VALUES (88, 'Greece                                            ', 'Europa', 'Southern Europe');
INSERT INTO `paises` VALUES (89, 'Greenland                                         ', 'America', 'Northern America');
INSERT INTO `paises` VALUES (90, 'Grenada                                           ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (91, 'Guadeloupe                                        ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (92, 'Guam                                              ', 'Oceania', 'MIcronesia');
INSERT INTO `paises` VALUES (93, 'Guatemala                                         ', 'America', 'Central America');
INSERT INTO `paises` VALUES (94, 'Guernsey                                          ', 'Europa', 'Northern Europe');
INSERT INTO `paises` VALUES (95, 'Guinea                                            ', 'Africa', 'Wester Africa');
INSERT INTO `paises` VALUES (96, 'Guinea-Bissau                                     ', 'Africa', 'Wester Africa');
INSERT INTO `paises` VALUES (97, 'Guyana                                            ', 'America', 'South America');
INSERT INTO `paises` VALUES (98, 'Haiti                                             ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (99, 'Heard Island and McDonald Islands                 ', '', '');
INSERT INTO `paises` VALUES (100, 'Holy See                                          ', 'Europa', 'Southern Europe');
INSERT INTO `paises` VALUES (101, 'Honduras                                          ', 'America', 'Central America');
INSERT INTO `paises` VALUES (102, 'Hong Kong                                         ', 'Asia', 'Eastern Asia');
INSERT INTO `paises` VALUES (103, 'Hungary                                           ', 'Europa', 'Eastern Europe');
INSERT INTO `paises` VALUES (104, 'Iceland                                           ', 'Europa', 'Northern Europe');
INSERT INTO `paises` VALUES (105, 'India                                             ', 'Asia', 'Southern Asia');
INSERT INTO `paises` VALUES (106, 'Indonesia                                         ', 'Asia', 'South_Eastern Asia');
INSERT INTO `paises` VALUES (107, 'C?te d\\Ivoire                                     ', 'Africa', 'Wester Africa');
INSERT INTO `paises` VALUES (108, 'Iran (Islamic Republic of)                        ', 'Asia', 'Southern Asia');
INSERT INTO `paises` VALUES (109, 'Iraq                                              ', 'Asia', 'Wester Asia');
INSERT INTO `paises` VALUES (110, 'Ireland                                           ', 'Europa', 'Northern Europe');
INSERT INTO `paises` VALUES (111, 'Isle of Man                                       ', 'Europa', 'Northern Europe');
INSERT INTO `paises` VALUES (112, 'Israel                                            ', 'Asia', 'Wester Asia');
INSERT INTO `paises` VALUES (113, 'Italy                                             ', 'Europa', 'Southern Europe');
INSERT INTO `paises` VALUES (114, 'Jamaica                                           ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (115, 'Japan                                             ', 'Asia', 'Easter Asia');
INSERT INTO `paises` VALUES (116, 'Jersey                                            ', 'Europa', 'Northern Europe');
INSERT INTO `paises` VALUES (117, 'Jordan                                            ', 'Asia', 'Wester Asia');
INSERT INTO `paises` VALUES (118, 'Kazakhstan                                        ', 'Asia', 'Central Asia');
INSERT INTO `paises` VALUES (119, 'Kenya                                             ', 'Africa', 'Easter Africa');
INSERT INTO `paises` VALUES (120, 'Kiribati                                          ', 'Oceania', 'Micronesia');
INSERT INTO `paises` VALUES (121, 'Kuwait                                            ', 'Asia', 'Wester Asia');
INSERT INTO `paises` VALUES (122, 'Kyrgyzstan                                        ', 'Asia', 'Central Asia');
INSERT INTO `paises` VALUES (123, 'Lao People\\s Democratic Republic                  ', 'Asia', 'South_Eastern Asia');
INSERT INTO `paises` VALUES (124, 'Latvia                                            ', 'Europa', 'Northern Europe');
INSERT INTO `paises` VALUES (125, 'Lebanon                                           ', 'Asia', 'Wester Asia');
INSERT INTO `paises` VALUES (126, 'Lesotho                                           ', 'Africa', 'Southern Africa');
INSERT INTO `paises` VALUES (127, 'Liberia                                           ', 'Africa', 'Western Africa');
INSERT INTO `paises` VALUES (128, 'Libya                                             ', 'Africa', 'Northern Africa');
INSERT INTO `paises` VALUES (129, 'Liechtenstein                                     ', 'Europa', 'Western Europe');
INSERT INTO `paises` VALUES (130, 'Lithuania                                         ', 'Europa', 'Northern Europe');
INSERT INTO `paises` VALUES (131, 'Luxembourg                                        ', 'Europa', 'Western Africa');
INSERT INTO `paises` VALUES (132, 'Macao                                             ', 'Asia', 'Eastern Asia');
INSERT INTO `paises` VALUES (133, 'Macedonia (the former Yugoslav Republic of)       ', 'Europa', 'Southern Europe');
INSERT INTO `paises` VALUES (134, 'Madagascar                                        ', 'Africa', 'Easter Africa');
INSERT INTO `paises` VALUES (135, 'Malawi                                            ', 'Africa', 'Easter Africa');
INSERT INTO `paises` VALUES (136, 'Malaysia                                          ', 'Asia', 'South_Eastern Asia');
INSERT INTO `paises` VALUES (137, 'Maldives                                          ', 'Asia', 'Southern Asia');
INSERT INTO `paises` VALUES (138, 'Mali                                              ', 'Africa', 'Wester Africa');
INSERT INTO `paises` VALUES (139, 'Malta                                             ', 'Europa', 'Southern Europe');
INSERT INTO `paises` VALUES (140, 'Marshall Islands                                  ', 'Oceania', 'Micronesia');
INSERT INTO `paises` VALUES (141, 'Martinique                                        ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (142, 'Mauritania                                        ', 'Africa', 'Wester Africa');
INSERT INTO `paises` VALUES (143, 'Mauritius                                         ', 'Africa', 'Eastern Africa');
INSERT INTO `paises` VALUES (144, 'Mayotte                                           ', 'Africa', 'Eastern Africa');
INSERT INTO `paises` VALUES (145, 'Mexico                                            ', 'America', 'Central America');
INSERT INTO `paises` VALUES (146, 'Micronesia (Federated States of)                  ', 'Oceania', 'Micronesia');
INSERT INTO `paises` VALUES (147, 'Moldova (Republic of)                             ', 'Europa', 'Eastern Europe');
INSERT INTO `paises` VALUES (148, 'Monaco                                            ', 'Europa', 'Wester Europe');
INSERT INTO `paises` VALUES (149, 'Mongolia                                          ', 'Asia', 'Easter Asia');
INSERT INTO `paises` VALUES (150, 'Montenegro                                        ', 'Europa', 'Southern Europe');
INSERT INTO `paises` VALUES (151, 'Montserrat                                        ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (152, 'Morocco                                           ', 'Africa', 'Northern Africa');
INSERT INTO `paises` VALUES (153, 'Mozambique                                        ', 'Africa', 'Easter Africa');
INSERT INTO `paises` VALUES (154, 'Myanmar                                           ', 'Asia', 'South-Eastern Asia');
INSERT INTO `paises` VALUES (155, 'Namibia                                           ', 'Africa', 'Southern Africa');
INSERT INTO `paises` VALUES (156, 'Nauru                                             ', 'Oceania', 'Micronesia');
INSERT INTO `paises` VALUES (157, 'Nepal                                             ', 'Asia', 'Southern Asia');
INSERT INTO `paises` VALUES (158, 'Netherlands                                       ', 'Europa', 'Wester Europe');
INSERT INTO `paises` VALUES (159, 'New Caledonia                                     ', 'Oceania', 'Melasia');
INSERT INTO `paises` VALUES (160, 'New Zealand                                       ', 'Oceania', 'Australia and New Zealand');
INSERT INTO `paises` VALUES (161, 'Nicaragua                                         ', 'America', 'Central America');
INSERT INTO `paises` VALUES (162, 'Niger                                             ', 'Africa', 'Western Africa');
INSERT INTO `paises` VALUES (163, 'Nigeria                                           ', 'Africa', 'Western Africa');
INSERT INTO `paises` VALUES (164, 'Niue                                              ', 'Oceania', 'Polynesia');
INSERT INTO `paises` VALUES (165, 'Norfolk Island                                    ', 'Oceania', 'Australia and New Zealand');
INSERT INTO `paises` VALUES (166, 'Korea (Democratic People\\s Republic of)           ', 'Asia', 'Easter Asia');
INSERT INTO `paises` VALUES (167, 'Northern Mariana Islands                          ', 'Oceania', 'Micronesia');
INSERT INTO `paises` VALUES (168, 'Norway                                            ', 'Europa', 'Noethern Europe');
INSERT INTO `paises` VALUES (169, 'Oman                                              ', 'Asia', 'Wester Asia');
INSERT INTO `paises` VALUES (170, 'Pakistan                                          ', 'Asia', 'Southern Asia');
INSERT INTO `paises` VALUES (171, 'Palau                                             ', 'Oceania', 'Micronesia');
INSERT INTO `paises` VALUES (172, 'Palestine          State of                       ', 'Asia', 'Western Asia');
INSERT INTO `paises` VALUES (173, 'Panama                                            ', 'America', 'Central America');
INSERT INTO `paises` VALUES (174, 'Papua New Guinea                                  ', 'Oceania', 'Melanesia');
INSERT INTO `paises` VALUES (175, 'Paraguay                                          ', 'America', 'South America');
INSERT INTO `paises` VALUES (176, 'Peru                                              ', 'America', 'South America');
INSERT INTO `paises` VALUES (177, 'Philippines                                       ', 'Asia', 'South-Easter Asia');
INSERT INTO `paises` VALUES (178, 'Pitcairn                                          ', 'Oceania', 'Polynesia');
INSERT INTO `paises` VALUES (179, 'Poland                                            ', 'Europa', 'Eastern Europe');
INSERT INTO `paises` VALUES (180, 'Portugal                                          ', 'Europa', 'South Europe');
INSERT INTO `paises` VALUES (181, 'Puerto Rico                                       ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (182, 'Qatar                                             ', 'Asia', 'Wester Asia');
INSERT INTO `paises` VALUES (183, 'Republic of Kosovo                                ', 'Europa', 'Eastern Europe');
INSERT INTO `paises` VALUES (184, 'R?union                                           ', 'Africa', 'Eastern Africa');
INSERT INTO `paises` VALUES (185, 'Romania                                           ', 'Europa', 'Eastern Europe');
INSERT INTO `paises` VALUES (186, 'Russian Federation                                ', 'Europa', 'Eastern Europe');
INSERT INTO `paises` VALUES (187, 'Rwanda                                            ', 'Africa', 'Eastern Africa');
INSERT INTO `paises` VALUES (188, 'Saint Barth?lemy                                  ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (189, 'Saint Helena Ascension and Tristan da Cunha       ', 'Africa', 'Wester Africa');
INSERT INTO `paises` VALUES (190, 'Saint Kitts and Nevis                             ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (191, 'Saint Lucia                                       ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (192, 'Saint Martin (French part)                        ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (193, 'Saint Pierre and Miquelon                         ', 'America', 'Northern America');
INSERT INTO `paises` VALUES (194, 'Saint Vincent and the Grenadines                  ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (195, 'Samoa                                             ', 'Oceania', 'Polynesia');
INSERT INTO `paises` VALUES (196, 'San Marino                                        ', 'Europa', 'Southern Europe');
INSERT INTO `paises` VALUES (197, 'Sao Tome and Principe                             ', 'Africa', 'Middle Africa');
INSERT INTO `paises` VALUES (198, 'Saudi Arabia                                      ', 'Asia', 'Wester Asia');
INSERT INTO `paises` VALUES (199, 'Senegal                                           ', 'Africa', 'Wester Africa');
INSERT INTO `paises` VALUES (200, 'Serbia                                            ', 'Europa', 'Southern Europe');
INSERT INTO `paises` VALUES (201, 'Seychelles                                        ', 'Africa', 'Eastern Africa');
INSERT INTO `paises` VALUES (202, 'Sierra Leone                                      ', 'Africa', 'Wester Africa');
INSERT INTO `paises` VALUES (203, 'Singapore                                         ', 'Asia', 'South-Easter Asia');
INSERT INTO `paises` VALUES (204, 'Sint Maarten (Dutch part)                         ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (205, 'Slovakia                                          ', 'Europa', 'Eastern Europe');
INSERT INTO `paises` VALUES (206, 'Slovenia                                          ', 'Europa', 'Southern Europe');
INSERT INTO `paises` VALUES (207, 'Solomon Islands                                   ', 'Oceania', 'Melanesia');
INSERT INTO `paises` VALUES (208, 'Somalia                                           ', 'Africa', 'Eastern Africa');
INSERT INTO `paises` VALUES (209, 'South Africa                                      ', 'Africa', 'Southern Africa');
INSERT INTO `paises` VALUES (210, 'South Georgia and the South Sandwich Islands      ', 'America', 'South America');
INSERT INTO `paises` VALUES (211, 'Korea (Republic of)                               ', 'Asia', 'Eastern Asia');
INSERT INTO `paises` VALUES (212, 'South Sudan                                       ', 'Africa', 'Middle Africa');
INSERT INTO `paises` VALUES (213, 'Spain                                             ', 'Europa', 'Southern Europe');
INSERT INTO `paises` VALUES (214, 'Sri Lanka                                         ', 'Asia', 'Southern Asia');
INSERT INTO `paises` VALUES (215, 'Sudan                                             ', 'Africa', 'Northern Africa');
INSERT INTO `paises` VALUES (216, 'Surinombre                                        ', 'America', 'South America');
INSERT INTO `paises` VALUES (217, 'Svalbard and Jan Mayen                            ', 'Europa', 'Northern Europe');
INSERT INTO `paises` VALUES (218, 'Swaziland                                         ', 'Africa', 'Southern Africa');
INSERT INTO `paises` VALUES (219, 'Sweden                                            ', 'Europa', 'Northern Europe');
INSERT INTO `paises` VALUES (220, 'Switzerland                                       ', 'Europa', 'Wester Europe');
INSERT INTO `paises` VALUES (221, 'Syrian Arab Republic                              ', 'Asia', 'Wester Asia');
INSERT INTO `paises` VALUES (222, 'Taiwan                                            ', 'Asia', 'Easter Asia');
INSERT INTO `paises` VALUES (223, 'Tajikistan                                        ', 'Asia', 'Central Asia');
INSERT INTO `paises` VALUES (224, 'Tanzania United Republic of                       ', 'Africa', 'Easter Africa');
INSERT INTO `paises` VALUES (225, 'Thailand                                          ', 'Asia', 'South-Eastern Asia');
INSERT INTO `paises` VALUES (226, 'Timor-Leste                                       ', 'Asia', 'South-Eastern Asia');
INSERT INTO `paises` VALUES (227, 'Togo                                              ', 'Africa', 'Western Africa');
INSERT INTO `paises` VALUES (228, 'Tokelau                                           ', 'Oceania', 'Polynesia');
INSERT INTO `paises` VALUES (229, 'Tonga                                             ', 'Oceania', 'Polynesia');
INSERT INTO `paises` VALUES (230, 'Trinidad and Tobago                               ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (231, 'Tunisia                                           ', 'Africa', 'Northern Africa');
INSERT INTO `paises` VALUES (232, 'Turkey                                            ', 'Asia', 'Western Asia');
INSERT INTO `paises` VALUES (233, 'Turkmenistan                                      ', 'Asia', 'Central Asia');
INSERT INTO `paises` VALUES (234, 'Turks and Caicos Islands                          ', 'America', 'Caribbean');
INSERT INTO `paises` VALUES (235, 'Tuvalu                                            ', 'Oceania', 'Polynesia');
INSERT INTO `paises` VALUES (236, 'Uganda                                            ', 'Africa', 'Easter Africa');
INSERT INTO `paises` VALUES (237, 'Ukraine                                           ', 'Europa', 'Easter Europe');
INSERT INTO `paises` VALUES (238, 'United Arab Emirates                              ', 'Asia', 'Western Asia');
INSERT INTO `paises` VALUES (239, 'United Kingdom of Great Britain and Northern Irela', 'Europa', 'Northern Europe');
INSERT INTO `paises` VALUES (240, 'United States of America                          ', 'America', 'Northern America');
INSERT INTO `paises` VALUES (241, 'Uruguay                                           ', 'America', 'South America');
INSERT INTO `paises` VALUES (242, 'Uzbekistan                                        ', 'Asia', 'Central Asia');
INSERT INTO `paises` VALUES (243, 'Vanuatu                                           ', 'Oceania', 'Melanesia');
INSERT INTO `paises` VALUES (244, 'Venezuela (Bolivarian Republic of)                ', 'America', 'South America');
INSERT INTO `paises` VALUES (245, 'Viet Nam                                          ', 'Asia', 'South-Eastern Asia');
INSERT INTO `paises` VALUES (246, 'Wallis and Futuna                                 ', 'Oceania', 'Polynesia');
INSERT INTO `paises` VALUES (247, 'Western Sahara                                    ', 'Africa', 'Northern africa');
INSERT INTO `paises` VALUES (248, 'Yemen                                             ', 'Asia', 'Wester Asia');
INSERT INTO `paises` VALUES (249, 'Zambia                                            ', 'Africa', 'Eastern Africa');
INSERT INTO `paises` VALUES (250, 'Zimbabwe                                          ', 'Africa', 'Eastern Africa');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id` int NOT NULL,
  `nombre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `apellido` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `usuario` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contrasena` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `domicilio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `admin` tinyint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, 'Ezequiel', 'Dehnike', 'Ezequieldehnike', 'ezequieldehnike@gmai', '123', '12345678', 'china 2020', 1);
INSERT INTO `usuarios` VALUES (2, 'Magali', 'Salles', 'Magalisalles', 'maga@mail.com', '123', '0303465', 'japon 2022', 0);
INSERT INTO `usuarios` VALUES (19, 'Damian', 'Alberti', 'Damianalberti', 'barto@gmail.com', 'secret', '1233652', 'corea 236', 0);
INSERT INTO `usuarios` VALUES (21, 'Susana', 'Torio', 'Susanatorio', 'sus@gmail.com', '123', '313113131', 'usa 678', 0);
INSERT INTO `usuarios` VALUES (22, 'Bartolo', 'Man', 'Bartoloman', 'barto@gmail.com', '123', '0303456', 'uruguay 236', 0);
INSERT INTO `usuarios` VALUES (23, 'Rosa', 'Meli', 'Rosameli', 'rosa@gmail.com', '123', '0303034561', 'brasil 12', 0);
INSERT INTO `usuarios` VALUES (25, 'Sultan', 'Barrera', 'Sultanbarrera', 'sul@gmail.com', '123', '456789', 'francia 345', 0);

SET FOREIGN_KEY_CHECKS = 1;
