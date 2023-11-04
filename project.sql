SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

DROP TABLE IF EXISTS 'role';
CREATE TABLE IF NOT EXISTS 'role' (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'role_id',
  `role` varchar(255) DEFAULT NULL COMMENT 'role_text',
  PRIMARY KEY ('id')
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

INSERT INTO 'role' ('id', 'role') VALUES
(1, 'Admin'),
(2, 'User');

DROP TABLE IF EXISTS 'user';
CREATE TABLE IF NOT EXISTS 'user' (
  'user_id' int(11) NOT NULL AUTO_INCREMENT,
  'username' varchar(255) DEFAULT NULL,
  'password' varchar(255) DEFAULT NULL,
  'email' varchar(255) DEFAULT NULL,
  'avatar_id' varchar(255) DEFAULT NULL,
  'role_id' tinyint(4) DEFAULT NULL,
  'isActive' tinyint(4) DEFAULT '0',
  PRIMARY KEY ('user_id')
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

INSERT INTO 'user' ('user_id', 'username', 'password', 'email', 'avatar_id', 'role_id', 'isActive') VALUES
(1, 'admin', 'admin', 'admin@admin.admin', NULL, 1, 0),
COMMIT;
