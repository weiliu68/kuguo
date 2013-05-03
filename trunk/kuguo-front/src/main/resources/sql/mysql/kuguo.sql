# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     kuguo
# Server version:               5.0.18-nt
# Server OS:                    Win32
# HeidiSQL version:             Version 4.0, Revision 2864
# Date/time:                    2013-04-30 14:57:55
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

# Dumping database structure for kuguo
DROP DATABASE IF EXISTS `kuguo`;
CREATE DATABASE IF NOT EXISTS `kuguo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `kuguo`;


# Dumping structure for table kuguo.channel
DROP TABLE IF EXISTS `channel`;
CREATE TABLE IF NOT EXISTS `channel` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) default NULL,
  `parent_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `channel_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `channel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table kuguo.label
DROP TABLE IF EXISTS `label`;
CREATE TABLE IF NOT EXISTS `label` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `create_user_id` int(11) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `create_user_id` (`create_user_id`),
  CONSTRAINT `label_ibfk_1` FOREIGN KEY (`create_user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table kuguo.message
DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) default NULL,
  `user_id` int(11) default NULL,
  `create_time` datetime default NULL,
  `comment_id` int(11) default NULL,
  `product_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `comment_id` (`comment_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `message_ibfk_2` FOREIGN KEY (`comment_id`) REFERENCES `product_comment` (`id`),
  CONSTRAINT `message_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table kuguo.product
DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(50) default NULL,
  `order_link` varchar(1000) default NULL,
  `desc` varchar(1000) default NULL,
  `brand` varchar(50) default NULL,
  `price` double default NULL,
  `create_time` datetime default NULL,
  `hots` int(11) default NULL,
  `favorite_num` int(11) default NULL,
  `user_id` int(11) default NULL,
  `channel` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table kuguo.product_comment
DROP TABLE IF EXISTS `product_comment`;
CREATE TABLE IF NOT EXISTS `product_comment` (
  `id` int(11) NOT NULL auto_increment,
  `content` varchar(500) default NULL,
  `agree_num` int(11) default NULL,
  `disagree_num` int(11) default NULL,
  `user_id` int(11) default NULL,
  `create_time` datetime default NULL,
  `product_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `product_comment_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table kuguo.product_hots
DROP TABLE IF EXISTS `product_hots`;
CREATE TABLE IF NOT EXISTS `product_hots` (
  `user_id` int(11) NOT NULL default '0',
  `product_id` int(11) NOT NULL default '0',
  `create_time` datetime default NULL,
  PRIMARY KEY  (`user_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_hots_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `product_hots_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table kuguo.product_label
DROP TABLE IF EXISTS `product_label`;
CREATE TABLE IF NOT EXISTS `product_label` (
  `product_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  PRIMARY KEY  (`product_id`,`label_id`),
  KEY `label_id` (`label_id`),
  CONSTRAINT `product_label_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `product_label_ibfk_2` FOREIGN KEY (`label_id`) REFERENCES `label` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table kuguo.product_like
DROP TABLE IF EXISTS `product_like`;
CREATE TABLE IF NOT EXISTS `product_like` (
  `product_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `create_time` datetime default NULL,
  PRIMARY KEY  (`product_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `product_like_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `product_like_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table kuguo.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `email` varchar(100) default NULL,
  `password` varchar(100) default NULL,
  `head` varchar(100) default NULL,
  `address` varchar(100) default NULL,
  `gender` tinyint(4) default NULL,
  `website` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table kuguo.user_friend
DROP TABLE IF EXISTS `user_friend`;
CREATE TABLE IF NOT EXISTS `user_friend` (
  `user_id` int(11) NOT NULL default '0',
  `friend_id` int(11) NOT NULL default '0',
  `create_time` datetime default NULL,
  PRIMARY KEY  (`user_id`,`friend_id`),
  KEY `friend_id` (`friend_id`),
  CONSTRAINT `user_friend_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `user_friend_ibfk_2` FOREIGN KEY (`friend_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
