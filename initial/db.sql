CREATE DATABASE  IF NOT EXISTS `short` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `short`;

DROP TABLE IF EXISTS `url`;
CREATE TABLE `url` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `domain` varchar(30) NOT NULL DEFAULT '' COMMENT '域名',
  `url` varchar(255) DEFAULT '' COMMENT '地址',
  `hash` varchar(20) DEFAULT '' COMMENT 'hash',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE_url` (`url`),
  UNIQUE KEY `UNIQUE_hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `url_log`;
CREATE TABLE `url_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `url_id` int(10) NOT NULL DEFAULT '0' COMMENT 'url_id',
  `ip` varchar(20) DEFAULT '' COMMENT 'ip',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `INDEX_url_id` (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `admins`;
CREATE TABLE `url_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30)  DEFAULT NULL COMMENT '用户名',
  `email` varchar(30)  DEFAULT NULL COMMENT '邮箱',
  `salt` varchar(10)  DEFAULT NULL COMMENT 'salt',
  `passport` varchar(50) DEFAULT NULL COMMENT 'passport',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 1启用 0禁用',
  `is_activity` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否激活 1激活 0未激活',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;