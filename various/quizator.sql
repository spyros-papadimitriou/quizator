-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 03, 2023 at 09:12 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizator`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE IF NOT EXISTS `answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `correct` bit(1) NOT NULL,
  `question_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8frr4bcabmmeyyu60qt7iiblo` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `correct`, `question_id`, `description`) VALUES
(1, b'0', 1, 'Answer 1'),
(2, b'0', 1, 'Answer 2'),
(3, b'0', 1, 'Answer 3'),
(4, b'0', 1, 'Answer 4'),
(5, b'0', 2, 'Answer 1'),
(6, b'0', 2, 'Answer 2'),
(7, b'0', 2, 'Answer 3'),
(8, b'0', 12, 'Answer 1'),
(9, b'0', 12, 'Answer 2'),
(10, b'0', 12, 'Answer 3'),
(11, b'0', 4, 'Answer 1'),
(12, b'0', 4, 'Answer 2'),
(13, b'0', 4, 'Answer 3'),
(14, b'0', 5, 'Answer 1'),
(15, b'0', 5, 'Answer 2'),
(16, b'0', 5, 'Answer 3'),
(17, b'0', 6, 'Answer 1'),
(18, b'0', 6, 'Answer 2'),
(19, b'0', 6, 'Answer 3'),
(20, b'0', 7, 'Answer 1'),
(21, b'0', 7, 'Answer 2'),
(22, b'0', 7, 'Answer 3'),
(23, b'0', 8, 'Answer 1'),
(24, b'0', 8, 'Answer 2'),
(25, b'0', 8, 'Answer 3'),
(26, b'0', 9, 'Answer 1'),
(27, b'0', 9, 'Answer 2'),
(28, b'0', 9, 'Answer 3'),
(29, b'0', 10, 'Answer 1'),
(30, b'0', 10, 'Answer 2'),
(31, b'0', 10, 'Answer 3'),
(32, b'0', 11, 'Answer 1'),
(33, b'0', 11, 'Answer 2'),
(34, b'0', 2, 'Answer 1'),
(35, b'0', 2, 'Answer 2'),
(36, b'0', 2, 'Answer 3'),
(37, b'0', 12, 'Answer 1'),
(38, b'0', 12, 'Answer 2'),
(39, b'0', 12, 'Answer 3'),
(40, b'0', 4, 'Answer 1'),
(41, b'0', 4, 'Answer 2'),
(42, b'0', 4, 'Answer 3'),
(43, b'0', 5, 'Answer 1'),
(44, b'0', 5, 'Answer 2'),
(45, b'0', 5, 'Answer 3'),
(46, b'0', 6, 'Answer 1'),
(47, b'0', 6, 'Answer 2'),
(48, b'0', 6, 'Answer 3'),
(49, b'0', 7, 'Answer 1'),
(50, b'0', 7, 'Answer 2'),
(51, b'0', 7, 'Answer 3'),
(52, b'0', 8, 'Answer 1'),
(53, b'0', 8, 'Answer 2'),
(54, b'0', 8, 'Answer 3'),
(55, b'0', 9, 'Answer 1'),
(56, b'0', 9, 'Answer 2'),
(57, b'0', 9, 'Answer 3'),
(58, b'0', 10, 'Answer 1'),
(59, b'0', 10, 'Answer 2'),
(60, b'0', 10, 'Answer 3'),
(61, b'0', 11, 'Answer 1'),
(62, b'0', 11, 'Answer 2'),
(63, b'0', 11, 'Answer 3');

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

DROP TABLE IF EXISTS `chapter`;
CREATE TABLE IF NOT EXISTS `chapter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `name` varchar(64) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhhaina8rg7bpmg1qesiluu8vu` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chapter`
--

INSERT INTO `chapter` (`id`, `description`, `name`, `course_id`) VALUES
(1, '<p><strong>HTML</strong>&nbsp;stands for&nbsp;<strong>Hyper Text Markup Language</strong>, which is the most widely used language on Web to develop web pages.&nbsp;<strong>HTML</strong>&nbsp;was created by Berners-Lee in late 1991 but &quot;HTML 2.0&quot; was the first standard HTML specification which was published in 1995. HTML 4.01 was a major version of HTML and it was published in late 1999. Though HTML 4.01 version is widely used but currently we are having HTML-5 version which is an extension to HTML 4.01, and this version was published in 2012.</p>\r\n\r\n<h2>Why to Learn HTML?</h2>\r\n\r\n<p>Originally,&nbsp;<strong>HTML</strong>&nbsp;was developed with the intent of defining the structure of documents like headings, paragraphs, lists, and so forth to facilitate the sharing of scientific information between researchers. Now, HTML is being widely used to format web pages with the help of different tags available in HTML language.</p>\r\n\r\n<p><strong>HTML</strong>&nbsp;is a MUST for students and working professionals to become a great Software Engineer specially when they are working in Web Development Domain. I will list down some of the key advantages of learning HTML:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Create Web site</strong>&nbsp;- You can create a website or customize an existing web template if you know HTML well.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Become a web designer</strong>&nbsp;- If you want to start a carrer as a professional web designer, HTML and CSS designing is a must skill.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Understand web</strong>&nbsp;- If you want to optimize your website, to boost its speed and performance, it is good to know HTML to yield best results.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Learn other languages</strong>&nbsp;- Once you understands the basic of HTML then other related technologies like javascript, php, or angular are become easier to understand.</p>\r\n	</li>\r\n</ul>\r\n', 'HTML', 1),
(2, '<p>Welcome to the modern PHP tutorial! This PHP tutorial helps you learn how to develop dynamic websites and web applications using PHP from scratch.</p>\r\n\r\n<p>PHP is one of the most popular programming languages for web development.</p>\r\n\r\n<p>PHP allows you to develop various web applications, including blogs, content management systems (CMS), and online stores.</p>\r\n', 'PHP', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `description`, `name`) VALUES
(1, 'A course about programming for the web.', 'Web Development');

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_level`
--

DROP TABLE IF EXISTS `knowledge_level`;
CREATE TABLE IF NOT EXISTS `knowledge_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `knowledge_level`
--

INSERT INTO `knowledge_level` (`id`, `name`) VALUES
(1, 'beginner'),
(2, 'moderate'),
(3, 'expert');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `chapter_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrms5bmu5xtol6rxcv4pnckcpm` (`chapter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `description`, `chapter_id`) VALUES
(1, 'Question 1', 1),
(2, 'Question 2', 1),
(4, 'Question 2', 1),
(5, 'Question 3', 1),
(6, 'Question 4', 1),
(7, 'Question 5', 1),
(8, 'Question 6', 1),
(9, 'Question 7', 1),
(10, 'Question 8', 1),
(11, 'Question 9', 1),
(12, 'Question 10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `current` bit(1) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_finished` datetime(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1tofsm1qynhakggx7ttqh8ihu` (`user_id`),
  KEY `FKce16mrsgeokucc022mpyev7xk` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `current`, `date_created`, `date_finished`, `user_id`, `course_id`) VALUES
(10, b'0', '2023-03-24 13:51:18.253860', '2023-03-29 14:53:40.710760', 1, 1),
(11, b'0', '2023-03-29 14:53:44.343425', '2023-04-03 12:09:57.086070', 1, 1),
(12, b'1', '2023-04-03 12:10:00.665427', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

DROP TABLE IF EXISTS `quiz_question`;
CREATE TABLE IF NOT EXISTS `quiz_question` (
  `question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `current` bit(1) NOT NULL,
  PRIMARY KEY (`question_id`,`quiz_id`),
  KEY `FKcx2645kor3jebur37dpxv58sv` (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`question_id`, `quiz_id`, `position`, `answer_id`, `current`) VALUES
(1, 10, 4, 4, b'0'),
(1, 12, 1, NULL, b'1'),
(2, 10, 7, 6, b'0'),
(2, 11, 7, 6, b'0'),
(2, 12, 7, NULL, b'0'),
(4, 10, 2, 11, b'0'),
(4, 11, 1, 11, b'0'),
(4, 12, 5, NULL, b'0'),
(5, 10, 1, 44, b'0'),
(5, 11, 8, 16, b'0'),
(5, 12, 4, NULL, b'0'),
(6, 10, 9, 18, b'0'),
(6, 11, 2, 18, b'0'),
(6, 12, 6, NULL, b'0'),
(7, 10, 6, 50, b'0'),
(7, 11, 6, 50, b'0'),
(7, 12, 10, NULL, b'0'),
(8, 10, 4, 23, b'0'),
(8, 11, 3, 52, b'0'),
(8, 12, 8, NULL, b'0'),
(9, 10, 10, 26, b'0'),
(9, 11, 4, 28, b'0'),
(9, 12, 3, NULL, b'0'),
(10, 10, 3, 31, b'0'),
(10, 11, 10, 31, b'0'),
(10, 12, 9, NULL, b'0'),
(11, 10, 8, 62, b'0'),
(11, 11, 9, 32, b'0'),
(12, 11, 5, 8, b'0'),
(12, 12, 2, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `username`) VALUES
(1, 'ttt@ttt.gr', 'ttt', 'Nikos');

-- --------------------------------------------------------

--
-- Table structure for table `user_chapter`
--

DROP TABLE IF EXISTS `user_chapter`;
CREATE TABLE IF NOT EXISTS `user_chapter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) DEFAULT NULL,
  `chapter_id` int(11) NOT NULL,
  `knowledge_level_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK90rlio5k11i6wikro6jqq75g7` (`chapter_id`),
  KEY `FK44j3k2e90h77hbw65u4flma6g` (`knowledge_level_id`),
  KEY `FK4fovp8jpge3x0umls9fmr2qr7` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_chapter`
--

INSERT INTO `user_chapter` (`id`, `date_created`, `chapter_id`, `knowledge_level_id`, `user_id`) VALUES
(1, '2023-03-24 12:29:17.000000', 1, 1, 1),
(2, '2023-03-24 12:32:45.000000', 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_course`
--

DROP TABLE IF EXISTS `user_course`;
CREATE TABLE IF NOT EXISTS `user_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `knowledge_level_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKka18m18kpimodvy8yg2icu083` (`course_id`),
  KEY `FK9jkxb77otcy0mhdnlv2kvk4gt` (`knowledge_level_id`),
  KEY `FKpv8tt3252hb6kyej8p7e7pokl` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `FK8frr4bcabmmeyyu60qt7iiblo` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`);

--
-- Constraints for table `chapter`
--
ALTER TABLE `chapter`
  ADD CONSTRAINT `FKhhaina8rg7bpmg1qesiluu8vu` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `FKrms5bmu5xtol6rxcv4pnckcpm` FOREIGN KEY (`chapter_id`) REFERENCES `chapter` (`id`);

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `FK1tofsm1qynhakggx7ttqh8ihu` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKce16mrsgeokucc022mpyev7xk` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD CONSTRAINT `FKcx2645kor3jebur37dpxv58sv` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`);

--
-- Constraints for table `user_chapter`
--
ALTER TABLE `user_chapter`
  ADD CONSTRAINT `FK44j3k2e90h77hbw65u4flma6g` FOREIGN KEY (`knowledge_level_id`) REFERENCES `knowledge_level` (`id`),
  ADD CONSTRAINT `FK4fovp8jpge3x0umls9fmr2qr7` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK90rlio5k11i6wikro6jqq75g7` FOREIGN KEY (`chapter_id`) REFERENCES `chapter` (`id`);

--
-- Constraints for table `user_course`
--
ALTER TABLE `user_course`
  ADD CONSTRAINT `FK9jkxb77otcy0mhdnlv2kvk4gt` FOREIGN KEY (`knowledge_level_id`) REFERENCES `knowledge_level` (`id`),
  ADD CONSTRAINT `FKka18m18kpimodvy8yg2icu083` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `FKpv8tt3252hb6kyej8p7e7pokl` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
