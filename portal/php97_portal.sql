-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2019 at 04:53 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php97_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutes`
--

CREATE TABLE `aboutes` (
  `aboutes_id` int(9) NOT NULL,
  `aboutes_title` varchar(30) NOT NULL,
  `aboutes_description` text NOT NULL,
  `aboutes_image` varchar(100) NOT NULL,
  `aboutes_button_text` varchar(100) NOT NULL,
  `aboutes_button_link` varchar(100) NOT NULL,
  `aboutes_insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aboutes_insert_update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doccategory`
--

CREATE TABLE `doccategory` (
  `dcat_id` int(10) NOT NULL,
  `dcat_name` varchar(30) NOT NULL,
  `dcat_desctiption` varchar(100) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doccategory`
--

INSERT INTO `doccategory` (`dcat_id`, `dcat_name`, `dcat_desctiption`, `insert_date`, `update_date`) VALUES
(3, 'Category 1', 'Category description 3', '2019-04-11 09:55:12', '0000-00-00 00:00:00'),
(4, 'fhg', 'dfgg', '2019-04-23 14:00:45', '0000-00-00 00:00:00'),
(5, 'fjgjkghg', 'frfgh', '2019-04-23 14:26:43', '0000-00-00 00:00:00'),
(6, 'fhg', 'dfgg', '2019-04-26 15:58:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `doc_id` int(10) NOT NULL,
  `dcat_id` int(10) NOT NULL,
  `group_id` int(10) NOT NULL,
  `doc_name` varchar(100) NOT NULL,
  `doc_file` varchar(100) NOT NULL,
  `size` varchar(10) NOT NULL,
  `token` varchar(50) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`doc_id`, `dcat_id`, `group_id`, `doc_name`, `doc_file`, `size`, `token`, `insert_date`, `update_date`) VALUES
(50, 3, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'ARV_HC_MedCarts.jpg', '0.05', '0.5518793300989795', '2019-04-02 13:17:36', '0000-00-00 00:00:00'),
(51, 3, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Layer.png', '0.08', '0.8789153095537818', '2019-04-02 13:52:16', '0000-00-00 00:00:00'),
(52, 4, 2, 'rrr', 'ctaimage.jpg', '0.03', '0.1568429699540339', '2019-04-02 13:56:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

CREATE TABLE `donate` (
  `donate_id` int(9) NOT NULL,
  `donate_title` varchar(150) NOT NULL,
  `donate_description` text NOT NULL,
  `donate_image` varchar(100) NOT NULL,
  `donate_button_text` varchar(50) NOT NULL,
  `donate_button_link` varchar(100) NOT NULL,
  `donate_insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `donate_update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donate`
--

INSERT INTO `donate` (`donate_id`, `donate_title`, `donate_description`, `donate_image`, `donate_button_text`, `donate_button_link`, `donate_insert_date`, `donate_update_date`) VALUES
(23, 'dfndfmmmmmmmmg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '52541558516579home_2 - Copy.jpg', 'donate', 'no link', '2019-05-22 09:16:19', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `downloaddoc`
--

CREATE TABLE `downloaddoc` (
  `download_id` int(10) NOT NULL,
  `doc_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `download_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `downloaddoc`
--

INSERT INTO `downloaddoc` (`download_id`, `doc_id`, `user_id`, `download_date`) VALUES
(1, 50, 66, '2019-04-02 18:36:04'),
(2, 52, 66, '2019-04-02 18:36:04'),
(3, 52, 66, '2019-04-02 18:36:04'),
(4, 52, 66, '2019-04-02 18:37:04'),
(5, 52, 66, '2019-04-02 18:38:04'),
(6, 50, 66, '2019-04-02 18:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `gallerys`
--

CREATE TABLE `gallerys` (
  `gallery_id` int(9) NOT NULL,
  `gallery_title` varchar(100) NOT NULL,
  `gallery_custom_title` varchar(100) NOT NULL,
  `gallery_image` varchar(100) NOT NULL,
  `gallery_new_window` varchar(10) NOT NULL,
  `gallery_insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gallery_update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallerys`
--

INSERT INTO `gallerys` (`gallery_id`, `gallery_title`, `gallery_custom_title`, `gallery_image`, `gallery_new_window`, `gallery_insert_date`, `gallery_update_date`) VALUES
(18, 'Gallery', 'aj kahn tek', '14681558713335donate-dog.jpg', 'newwindow', '2019-05-24 15:55:35', '0000-00-00 00:00:00'),
(19, 'Gallery', 'aj kahn tek', '36431558713357home_2 - Copy.jpg', 'newwindow', '2019-05-24 15:55:57', '0000-00-00 00:00:00'),
(20, 'Gallery', 'aj kahn tek', '75691558864367sliderimage3.jpg', 'newwindow', '2019-05-26 09:52:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(10) NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `group_des` varchar(100) NOT NULL,
  `group_image` varchar(100) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `id` int(10) NOT NULL,
  `user_id` int(9) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `ip_address` varchar(30) NOT NULL,
  `browser` varchar(200) NOT NULL,
  `platform` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`id`, `user_id`, `user_email`, `ip_address`, `browser`, `platform`, `date`) VALUES
(1, 8, 'sajib@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '', '2019-02-24 18:24:42'),
(2, 8, 'sajib@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '', '2019-02-24 18:26:17'),
(3, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-02-24 18:44:24'),
(4, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-02-24 19:00:49'),
(5, 8, 'sajib@gmail.com', '::1', 'Mozilla Firefox', 'windows', '2019-02-24 19:02:10'),
(6, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-02-24 21:53:34'),
(7, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-02-27 15:27:29'),
(8, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-02-27 15:53:48'),
(9, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-02-27 18:01:40'),
(10, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-02-27 18:07:23'),
(11, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-02-27 19:49:17'),
(12, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-02-27 19:53:56'),
(13, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-02-28 12:59:07'),
(14, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-02-28 18:00:09'),
(15, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-02-28 19:13:32'),
(16, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-03-14 19:24:50'),
(17, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-03-23 17:13:21'),
(18, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-04-02 11:02:41'),
(19, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-04-02 11:50:03'),
(20, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-04-02 11:51:17'),
(21, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-04-02 11:53:07'),
(22, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-04-02 12:44:21'),
(23, 66, 'oboshore.biswas@gmail.com', '::1', 'Mozilla Firefox', 'windows', '2019-04-02 13:49:43'),
(24, 66, 'oboshore.biswas@gmail.com', '::1', 'Mozilla Firefox', 'windows', '2019-04-02 13:50:49'),
(25, 66, 'oboshore.biswas@gmail.com', '::1', 'Mozilla Firefox', 'windows', '2019-04-02 14:15:13'),
(26, 66, 'oboshore.biswas@gmail.com', '::1', 'Mozilla Firefox', 'windows', '2019-04-02 14:16:20'),
(27, 8, 'sajib@gmail.com', '::1', 'Google Chrome', 'windows', '2019-04-02 17:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(10) NOT NULL,
  `news_title` varchar(100) NOT NULL,
  `news_slug` varchar(100) NOT NULL,
  `news_description` text NOT NULL,
  `news_featured_image` varchar(50) NOT NULL,
  `news_insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `news_status` tinyint(4) NOT NULL,
  `news_update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_title`, `news_slug`, `news_description`, `news_featured_image`, `news_insert_date`, `news_status`, `news_update_date`) VALUES
(3, 'Lorem ipsum dolor sit ame asdfasdf asdf', 'news_slug', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut fringilla ex. Duis facilisis ante eu nibh condimentum vulputate. Curabitur ornare vehicula nunc. Nulla eget lacinia mauris. Integer ut nisl a leo tempus gravida. Ut sit amet ipsum eget urna dignissim lobortis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse placerat ipsum arcu, vitae convallis lectus auctor eu. Suspendisse potenti.</p><p>Fusce ut diam lectus. Vivamus eu sem vitae lacus luctus maximus ac sed risus. Integer et purus magna. Quisque porta accumsan condimentum. Pellentesque fringilla faucibus nibh quis pharetra. Cras quis finibus neque. Integer blandit eget sem non placerat. Donec at dapibus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris ullamcorper est nec massa porta, vitae vestibulum dolor tempor. Suspendisse eu elit id ligula feugiat faucibus. Sed vel ornare mi, porttitor aliquam nulla. Fusce congue ex vitae consequat molestie. Curabitur eu mattis orci.</p><p>Nunc sollicitudin et urna non egestas. Fusce lectus tellus, vehicula nec mollis at, porta sit amet lorem. Duis efficitur nisi ex, sit amet ullamcorper mi faucibus ut. Nam faucibus leo at pulvinar lobortis. Praesent eleifend nibh nec arcu cursus dapibus. Proin nisi est, tincidunt sit amet est ac, sagittis gravida dui. Aliquam et risus quis eros finibus ultrices. Curabitur nulla diam, semper vel turpis in, luctus ullamcorper ex. Praesent auctor varius mi vitae tempus.</p><p>Suspendisse imperdiet ut nisi eu pretium. In ut ligula tellus. Sed ullamcorper nisi et felis semper egestas. Sed ut maximus neque. Quisque molestie accumsan dolor sit amet tempus. Nullam tincidunt nec leo vel efficitur. Phasellus malesuada pharetra tellus sed posuere. Aliquam non elit varius, suscipit dui eget, aliquam lorem. Etiam sodales nibh quam, lacinia sodales augue rhoncus at. Nunc ultricies euismod pharetra. Nulla eleifend mi vitae augue maximus, non molestie est lobortis.</p>', 'a40da6f04fcafc08b9fe2beb58223d88.jpg', '2019-02-28 18:58:54', 1, '2019-02-28 19:58:02'),
(6, 'lacus luctus maximus ac sed risus', 'news_slug', '<p><span style=\"color: rgb(97, 189, 109);\"><span style=\"font-size: 18px;\"><strong>Fusce ut diam lectus. Vivamus eu sem vitae lacus luctus maximus ac sed risus.</strong></span></span></p><blockquote><p><span style=\"font-size: 18px;\">&nbsp;Integer et purus magna. Quisque porta accumsan condimentum. Pellentesque fringilla faucibus nibh quis pharetra. Cras quis finibus neque. Integer blandit eget sem non placerat. Donec at dapibus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus.&nbsp;</span></p></blockquote><p><br></p><blockquote><p><span style=\"font-size: 18px;\">Mauris ullamcorper est nec massa porta, vitae vestibulum dolor tempor. Suspendisse eu elit id ligula feugiat faucibus. Sed vel ornare mi, porttitor aliquam nulla. Fusce congue ex vitae consequat molestie. Curabitur eu mattis orci.</span></p></blockquote><p><span style=\"font-size: 18px;\">Nunc sollicitudin et urna non egestas. Fusce lectus tellus, vehicula nec mollis at, porta sit amet lorem. Duis efficitur nisi ex, sit amet ullamcorper mi faucibus ut. Nam faucibus</span></p><table style=\"width: 100%;\"><tbody><tr><td style=\"width: 25.0000%;\">d</td><td style=\"width: 25.0000%;\">a</td><td style=\"width: 25.0000%;\">a</td><td style=\"width: 25.0000%;\">d</td></tr></tbody></table><p><span style=\"font-size: 18px;\">&nbsp;leo at pulvinar lobortis. Praesent eleifend nibh nec arcu cursus dapibus. Proin nisi est, tincidunt sit amet est ac, sagittis gravida dui. Aliquam et risus quis eros finibus ultrices. Curabitur nulla diam, semper vel turpis in, luctus ullamcorper ex. Praesent auctor varius mi vitae tempus.</span></p>', 'b52872a0de58202f3b9f3ec33e32813f.jpg', '2019-02-28 18:56:52', 1, '2019-02-28 19:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(9) NOT NULL,
  `page_title` varchar(30) NOT NULL,
  `page_description` text NOT NULL,
  `page_category` varchar(100) NOT NULL,
  `page_slug` varchar(30) NOT NULL,
  `page_image` varchar(100) NOT NULL,
  `page_insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `page_update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `postcategory`
--

CREATE TABLE `postcategory` (
  `postcat_id` int(9) NOT NULL,
  `postcat_title` varchar(20) NOT NULL,
  `postcat_slug` varchar(50) NOT NULL,
  `postcat_desctiption` varchar(200) NOT NULL,
  `postcat_image` varchar(100) NOT NULL,
  `postcat_insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `postcat_update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `postcategory`
--

INSERT INTO `postcategory` (`postcat_id`, `postcat_title`, `postcat_slug`, `postcat_desctiption`, `postcat_image`, `postcat_insert_date`, `postcat_update_date`) VALUES
(1, 'Sports', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur convallis gravida justo sed mattis. Quisque blandit molestie varius. Morbi faucibus nibh rhoncus sem blandit feugiat.', '58961555580540Chrysanthemum.jpg', '2019-04-18 11:01:52', '0000-00-00 00:00:00'),
(2, 'Technology', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur convallis gravida justo sed mattis. Quisque blandit molestie varius. Morbi faucibus nibh rhoncus sem blandit feugiat.', '58961555580540Chrysanthemum.jpg', '2019-04-18 11:01:52', '0000-00-00 00:00:00'),
(3, 'Media', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur convallis gravida justo sed mattis. Quisque blandit molestie varius. Morbi faucibus nibh rhoncus sem blandit feugiat.', '58961555580540Chrysanthemum.jpg', '2019-04-18 11:25:10', '0000-00-00 00:00:00'),
(4, 'Tech', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. L', '36771555843193home_3.jpg', '2019-04-21 10:39:53', '0000-00-00 00:00:00'),
(5, 'Tech 2', '', 'asdf asdfasdf ', '45051555843243sliderimage1.jpg', '2019-04-21 10:40:43', '0000-00-00 00:00:00'),
(6, 'Cricket', 'cricket', 'cricket description', '73321555845398sliderimage2.jpg', '2019-04-21 11:16:38', '0000-00-00 00:00:00'),
(7, 'Business', 'business', 'Business ', '35111555848494luis-suarez.JPG', '2019-04-21 12:11:59', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(9) NOT NULL,
  `post_title` varchar(50) NOT NULL,
  `post_slug` varchar(50) NOT NULL,
  `post_description` text NOT NULL,
  `postcat_id` tinyint(4) NOT NULL,
  `post_image` varchar(100) NOT NULL,
  `post_status` tinyint(4) NOT NULL DEFAULT '1',
  `post_insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `post_update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_slug`, `post_description`, `postcat_id`, `post_image`, `post_status`, `post_insert_date`, `post_update_date`) VALUES
(1, 'Sports Lorem ipsum dolor sit amet, consectetur', 'sport', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur convallis gravida justo sed mattis. Quisque blandit molestie varius. Morbi faucibus nibh rhoncus sem blandit feugiat.\r\n\r\nipsum dolor sit amet, consectetur adipiscing elit. Curabitur convallis gravida justo sed mattis. Quisque blandit molestie varius. Morbi faucibus nibh rhoncus sem blandit feugiat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur convallis gravida justo sed mattis. Quisque blandit molestie varius. Morbi faucibus nibh rhoncus sem blandit feugiat.', 1, '62231555589609home_2.jpg', 1, '2019-04-21 11:28:44', '0000-00-00 00:00:00'),
(2, 'Lorem ipsum dolor sit amet, consectetur 3', 'tech1', 'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur \r\n\r\nLorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur ', 2, '62231555589609home_2.jpg', 1, '2019-04-21 12:00:53', '0000-00-00 00:00:00'),
(3, 'media Lorem ipsum dolor sit amet, consectetur  2', 'media1', 'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur \r\n\r\nLorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur \r\n\r\nLorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur ', 3, '62231555589609home_2.jpg', 1, '2019-04-21 12:00:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_id` int(9) NOT NULL,
  `setting_tagline` varchar(50) NOT NULL,
  `setting_logo` varchar(50) NOT NULL,
  `setting_phone` varchar(50) NOT NULL,
  `setting_facebook` varchar(50) NOT NULL,
  `setting_rss` varchar(100) NOT NULL,
  `setting_twitter` varchar(100) NOT NULL,
  `setting_linkedin` varchar(100) NOT NULL,
  `setting_google` varchar(100) NOT NULL,
  `setting_copyright` varchar(100) NOT NULL,
  `setting_googlemap` text NOT NULL,
  `setting_footertext` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `setting_tagline`, `setting_logo`, `setting_phone`, `setting_facebook`, `setting_rss`, `setting_twitter`, `setting_linkedin`, `setting_google`, `setting_copyright`, `setting_googlemap`, `setting_footertext`) VALUES
(1, 'lorem ipsum', '78451556342330logo-php97.png', '31051556342330phone.png', 'https://www.facebook.com/', 'https://rss.com/find-rss-feed/', '', '', 'https://www.google.com/', 'Design by:Golam Azam ', '', 'New Project ');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(9) NOT NULL,
  `slide_title` varchar(20) NOT NULL,
  `slide_custom_title` varchar(30) NOT NULL,
  `slide_description` varchar(255) NOT NULL,
  `slide_button_text` varchar(20) NOT NULL,
  `slide_button_link` varchar(100) NOT NULL,
  `slide_new_window` varchar(10) NOT NULL DEFAULT 'No',
  `slide_image` varchar(50) NOT NULL,
  `slide_insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `slide_update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_title`, `slide_custom_title`, `slide_description`, `slide_button_text`, `slide_button_link`, `slide_new_window`, `slide_image`, `slide_insert_date`, `slide_update_date`) VALUES
(10, 'lorem ipsum visitor ', 'logner title', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Phasellus At Dignissim Tellus.  Sed Molestie Urna Et Cursus Congue. Vivamus Est Mauris,', 'donate', '', 'newwindow', '67251557567782sliderimage1.jpg', '2019-05-11 09:43:02', '0000-00-00 00:00:00'),
(11, 'very simple site', 'logner title', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Phasellus At Dignissim Tellus.  Sed Molestie Urna Et Cursus Congue. Vivamus Est Mauris,', 'About Us', '', 'newwindow', '71321557567833sliderimage2.jpg', '2019-05-11 09:43:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(60) NOT NULL,
  `user_type` varchar(15) NOT NULL COMMENT '&#039;admin&#039;',
  `user_name` varchar(100) NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_phone` varchar(50) NOT NULL,
  `user_status` tinyint(1) UNSIGNED NOT NULL,
  `user_create_date` datetime NOT NULL,
  `user_update_date` datetime NOT NULL,
  `user_image` varchar(100) NOT NULL,
  `user_vcode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_password`, `user_type`, `user_name`, `group_id`, `user_phone`, `user_status`, `user_create_date`, `user_update_date`, `user_image`, `user_vcode`) VALUES
(8, 'php97@gmail.com', '$2y$10$bIcr67L7Di.rITbvA5ac1eQOFO.MPZni8FwxDAIpdF28iiKDWYihu', 'admin', 'PHP 97', 0, '000000000', 1, '0000-00-00 00:00:00', '2019-04-02 19:38:04', 'f46a01a8d2310778c7f6d1e13acaa8ce.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutes`
--
ALTER TABLE `aboutes`
  ADD PRIMARY KEY (`aboutes_id`);

--
-- Indexes for table `doccategory`
--
ALTER TABLE `doccategory`
  ADD PRIMARY KEY (`dcat_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `donate`
--
ALTER TABLE `donate`
  ADD PRIMARY KEY (`donate_id`);

--
-- Indexes for table `downloaddoc`
--
ALTER TABLE `downloaddoc`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `gallerys`
--
ALTER TABLE `gallerys`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `postcategory`
--
ALTER TABLE `postcategory`
  ADD PRIMARY KEY (`postcat_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutes`
--
ALTER TABLE `aboutes`
  MODIFY `aboutes_id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doccategory`
--
ALTER TABLE `doccategory`
  MODIFY `dcat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `doc_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `donate`
--
ALTER TABLE `donate`
  MODIFY `donate_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `downloaddoc`
--
ALTER TABLE `downloaddoc`
  MODIFY `download_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gallerys`
--
ALTER TABLE `gallerys`
  MODIFY `gallery_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postcategory`
--
ALTER TABLE `postcategory`
  MODIFY `postcat_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `setting_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
