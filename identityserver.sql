-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 04 月 19 日 06:34
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `identityserver`
--

-- --------------------------------------------------------

--
-- 表的结构 `friend_connection`
--

CREATE TABLE IF NOT EXISTS `friend_connection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(255) NOT NULL,
  `target_user_email` varchar(255) NOT NULL,
  `is_mutual` tinyint(1) NOT NULL,
  `creation_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `friend_connection`
--

INSERT INTO `friend_connection` (`id`, `user_email`, `target_user_email`, `is_mutual`, `creation_time`, `created_by`) VALUES
(1, 'david0718@qq.com', 'david0528@qq.com', 1, '2018-01-02 15:04:05', 2);

-- --------------------------------------------------------

--
-- 表的结构 `subscribe_updates`
--

CREATE TABLE IF NOT EXISTS `subscribe_updates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requestor_email` varchar(255) NOT NULL,
  `target_email` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `creation_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sur_name` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `last_login_time` datetime NOT NULL,
  `last_modification_time` datetime NOT NULL,
  `last_modified_by` int(11) NOT NULL,
  `creation_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
