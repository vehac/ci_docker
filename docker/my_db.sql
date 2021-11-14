/*Table structure for table `user` */

CREATE TABLE `user` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(50) DEFAULT NULL,
  `password` VARCHAR(60) DEFAULT NULL,
  `status` TINYINT(1) UNSIGNED DEFAULT '2' COMMENT '1: Enabled, 2: Disabled',
  `created_at` DATETIME DEFAULT NULL,
  `updated_at` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;