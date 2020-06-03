SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for linkis_cs_context_history
-- ----------------------------
DROP TABLE IF EXISTS `linkis_cs_context_history`;
CREATE TABLE `linkis_cs_context_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `context_id` int(11) DEFAULT NULL,
  `source` text,
  `context_type` varchar(32) DEFAULT NULL,
  `history_json` text,
  `keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `keyword` (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for linkis_cs_context_id
-- ----------------------------
DROP TABLE IF EXISTS `linkis_cs_context_id`;
CREATE TABLE `linkis_cs_context_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(32) DEFAULT NULL,
  `application` varchar(32) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `expire_type` varchar(32) DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  `instance` varchar(32) DEFAULT NULL,
  `backup_instance` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `instance` (`instance`),
  KEY `backup_instance` (`backup_instance`),
  KEY `instance_2` (`instance`,`backup_instance`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for linkis_cs_context_listener
-- ----------------------------
DROP TABLE IF EXISTS `linkis_cs_context_listener`;
CREATE TABLE `linkis_cs_context_listener` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listener_source` varchar(255) DEFAULT NULL,
  `context_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for linkis_cs_context_map
-- ----------------------------
DROP TABLE IF EXISTS `linkis_cs_context_map`;
CREATE TABLE `linkis_cs_context_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `context_scope` varchar(32) DEFAULT NULL,
  `context_type` varchar(32) DEFAULT NULL,
  `props` text,
  `value` text,
  `context_id` int(11) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `keywords` (`keywords`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for linkis_cs_context_map_listener
-- ----------------------------
DROP TABLE IF EXISTS `linkis_cs_context_map_listener`;
CREATE TABLE `linkis_cs_context_map_listener` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listener_source` varchar(255) DEFAULT NULL,
  `key_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;