CREATE TABLE `users` (
  `id` varchar(40) NOT NULL,
  `db_user` varchar(45) DEFAULT NULL,
  `db_password` varchar(45) DEFAULT NULL,
  `LastUpdated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Created` TIMESTAMP DEFAULT '1970-01-01 00:00:01',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO users values("1", "demouser", "password", NOW(), NOW());