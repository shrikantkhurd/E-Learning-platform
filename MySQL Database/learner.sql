-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 06:33 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learner`
--

-- --------------------------------------------------------

--
-- Table structure for table `coursecategory`
--

CREATE TABLE `coursecategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` date DEFAULT current_timestamp(),
  `UpdationDate` date DEFAULT current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coursecategory`
--

INSERT INTO `coursecategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(1, 'Javascript', 'Javascript related free courses.', '2021-08-05', '2021-08-05', 1),
(2, 'Python', 'Free python courses.', '2021-08-05', '2021-08-05', 1),
(3, 'Angular JS', 'Free Angular JS courses.', '2021-08-05', '2021-08-05', 1),
(4, 'Web Development', 'web development.', '2021-08-06', '2021-08-06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coursepost`
--

CREATE TABLE `coursepost` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `CourseLink` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coursepost`
--

INSERT INTO `coursepost` (`id`, `PostTitle`, `CategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `CourseLink`) VALUES
(1, 'Javascript For Beginners Complete Course', 1, '<h5><font face=\"Verdana\"><span style=\"font-size: 14pt; line-height: 115%;\">Learn Javascript\r\nProgramming Language With practical interaction</span><span style=\"font-size: 12pt; line-height: 115%;\">.</span></font></h5>', '2021-08-05 14:19:56', '2021-08-05 14:21:33', 1, 'https://www.udemy.com/course/javascript-for-beginners-complete-course/?couponCode=DISCUDEMY.COM'),
(2, 'Data Science, Machine Learning, Data Analysis, Python & R', 2, '<p style=\"margin: 0cm 0cm 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:Arial;\r\ncolor:#1C1D1F\">Interested in the field of Data Science, Machine Learning, Data\r\nAnalytics, Data Visualization? Then this course is for you!<u1:p style=\"margin: 0px; padding: 0px;\"></u1:p></span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#212529\"><o:p></o:p></span></p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-top: 0.8rem; margin-bottom: 1rem; max-width: 60rem;\"><span style=\"font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;\r\nmso-bidi-font-family:Arial;color:#1C1D1F\">This course has been designed by two\r\nprofessional Data Scientists so that we can share our knowledge and help you\r\nlearn complex theory, algorithms and coding libraries in a simple way.<u1:p style=\"margin: 0px; padding: 0px;\"></u1:p></span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#212529\"><o:p></o:p></span></p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-top: 0.8rem; margin-bottom: 1rem; max-width: 60rem;\"><span style=\"font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;\r\nmso-bidi-font-family:Arial;color:#1C1D1F\">We will walk you step-by-step into\r\nthe World of Data Science. With every tutorial you will develop new skills and\r\nimprove your understanding of this challenging yet lucrative sub-field of Data\r\nScience.<u1:p style=\"margin: 0px; padding: 0px;\"></u1:p></span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#212529\"><o:p></o:p></span></p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-top: 0.8rem; margin-bottom: 1rem; max-width: 60rem;\"><span style=\"font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;\r\nmso-bidi-font-family:Arial;color:#1C1D1F\">Moreover, the course is packed with\r\npractical exercises which are based on real-life examples. So not only will you\r\nlearn the theory, but you will also get some hands-on practice building your\r\nown models.<u1:p style=\"margin: 0px; padding: 0px;\"></u1:p></span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#212529\"><o:p></o:p></span></p><p style=\"padding: 0px; max-width: 118.4rem; color: rgb(28, 29, 31); font-family: &quot;sf pro text&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;segoe ui&quot;, Helvetica, Arial, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-top: 0.8rem; margin-bottom: 1rem; max-width: 60rem;\"><span style=\"font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;\r\nmso-bidi-font-family:Arial;color:#1C1D1F\">And as a bonus, this course includes\r\nboth Python and R code templates which you can download and use on your own\r\nprojects.</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\ncolor:#212529\"><o:p></o:p></span></p>', '2021-08-05 14:24:08', '2021-08-05 14:56:49', 1, 'https://www.udemy.com/course/data-science-machine-learning-data-analysis-python-r/'),
(3, 'Angular 12, Python Django and MySQL Full-Stack App', 3, '<p><span style=\"color: rgba(0, 0, 0, 0.87); font-size: 15.4px;\"><font face=\"Verdana\">learn to create a full stack web application from scratch using Angular 12, Python Django and MyS</font></span><span style=\"color: rgba(0, 0, 0, 0.87); font-family: Lato, &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif; font-size: 15.4px;\">QL</span><br></p>', '2021-08-05 14:28:06', '2021-08-05 17:52:42', 1, 'https://www.udemy.com/course/angular-12-python-django-and-mysql-full-stack-app/?couponCode=80FEB6BF59A86F0398BD'),
(4, 'HTML, CSS & javascript Course: Complete Guide', 4, '<p style=\"margin:0cm\"><strong><span style=\"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;\r\nmso-bidi-font-family:&quot;Segoe UI&quot;;color:#1C1D1F\">HTML5, CSS3 &amp; JavaScript\r\nComplete Guide</span></strong><span style=\"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;\r\nmso-bidi-font-family:&quot;Segoe UI&quot;;color:#1C1D1F\">&nbsp;will help you build\r\nResponsive, Modern, Interactive websites. Here you will learn how to build\r\nwebsites from&nbsp;<strong><span style=\"font-family:&quot;Verdana&quot;,sans-serif;\r\nmso-bidi-font-family:&quot;Segoe UI&quot;\">beginner to advanced level</span></strong>.\r\nThis course also covers the most important parts of&nbsp;<strong><span style=\"font-family:&quot;Verdana&quot;,sans-serif;mso-bidi-font-family:&quot;Segoe UI&quot;\">front-end\r\nweb development</span></strong>.<o:p></o:p></span></p><p><span style=\"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-bidi-font-family:\r\n&quot;Segoe UI&quot;;color:#1C1D1F\">In the HTML5 Section you will learn the essentials of\r\ncomplete HTML and HTML5 step by step. You will learn how to use HTML5’s best\r\nfeatured to&nbsp;<strong><span style=\"font-family:&quot;Verdana&quot;,sans-serif;\r\nmso-bidi-font-family:&quot;Segoe UI&quot;\">create a modern and interactive website</span></strong>.<o:p></o:p></span></p><p><span style=\"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-bidi-font-family:\r\n&quot;Segoe UI&quot;;color:#1C1D1F\">In the CSS3 section you will learn how to style and\r\nmodernize your website for better view-ability and create website\r\nresponsiveness with&nbsp;<strong><span style=\"font-family:&quot;Verdana&quot;,sans-serif;\r\nmso-bidi-font-family:&quot;Segoe UI&quot;\">RWD (Responsive Web Design)</span></strong>.<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n</p><p><span style=\"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-bidi-font-family:\r\n&quot;Segoe UI&quot;;color:#1C1D1F\">In the JavaScript Section you will learn to&nbsp;<strong><span style=\"font-family:&quot;Verdana&quot;,sans-serif;mso-bidi-font-family:&quot;Segoe UI&quot;\">integrate\r\nuser interactivity to engage users&nbsp;</span></strong>on your site with more\r\naccuracy. JavaScript has become the&nbsp;<strong><span style=\"font-family:&quot;Verdana&quot;,sans-serif;\r\nmso-bidi-font-family:&quot;Segoe UI&quot;\">modern scripting language of year 2020</span></strong>.\r\nThis JavaScript section will help you get started with exactly what is needed.<o:p></o:p></span></p>', '2021-08-06 05:30:54', NULL, 1, 'https://www.udemy.com/course/html5-css3-javascript-complete-guide/');

-- --------------------------------------------------------

--
-- Table structure for table `ebookcategory`
--

CREATE TABLE `ebookcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` date DEFAULT current_timestamp(),
  `UpdationDate` date DEFAULT current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ebookcategory`
--

INSERT INTO `ebookcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(1, 'Java programming', 'All Java Programming E-Books.', '2021-08-05', '2021-08-05', 1),
(2, 'Spring, Spring Framework and Spring Boot', 'All Spring, Spring Framework and Spring Boot books.', '2021-08-05', '2021-08-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ebookpost`
--

CREATE TABLE `ebookpost` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `FileName` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ebookpost`
--

INSERT INTO `ebookpost` (`id`, `PostTitle`, `CategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `FileName`) VALUES
(1, 'Effective Java by Joshua Bloch', 1, '<p>Effective Java by Joshua Bloch<br></p>', '2021-08-05 15:33:49', '2021-08-05 15:41:26', 1, 'Effective Java by Joshua Bloch (z-lib.org).pdf'),
(2, 'Beginning Spring Boot 2 Applications and Microservices with the Spring Framework by K. Siva Prasad Reddy', 2, '<p>Beginning Spring Boot 2 Applications and Microservices with the Spring Framework by K. Siva Prasad Reddy.<br></p>', '2021-08-05 15:42:35', '2021-08-05 15:53:28', 1, 'Beginning Spring Boot 2 Applications and Microservices with the Spring Framework by K. Siva Prasad Reddy.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `programcategory`
--

CREATE TABLE `programcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` date DEFAULT current_timestamp(),
  `UpdationDate` date DEFAULT current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `programcategory`
--

INSERT INTO `programcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(1, 'Java programming', 'All java programming language programs.', '2021-08-05', '2021-08-05', 1),
(2, 'Python', 'Python Programs.', '2021-08-05', '2021-08-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `programpost`
--

CREATE TABLE `programpost` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `FileName` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `programpost`
--

INSERT INTO `programpost` (`id`, `PostTitle`, `CategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `FileName`) VALUES
(1, 'Write a Java program to calculate Fibonacci Series up to n numbers.', 1, '<p class=\"MsoNormal\"><span style=\"font-size: 12pt; line-height: 115%; font-family: Verdana, sans-serif; color: rgb(74, 74, 74); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Factorial of a number is the product of all the positive numbers less\r\nthan or equal to the number. The factorial of a number n is denoted by n!</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;\"><o:p></o:p></span></p>', '2021-08-05 15:10:53', '2021-08-05 17:36:36', 1, 'Factorial.java');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `UserName` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `AdminPassword` varchar(200) NOT NULL,
  `Is_Active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `Name`, `UserName`, `Email`, `AdminPassword`, `Is_Active`) VALUES
(1, 'Shrikant Suresh Khurd', 'shrikant', 'shrikantkhurd97@gmail.com', 'shrikant', 0),
(2, 'admin', 'admin', 'admin@gmail.com', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, 1, 'Shrikant Suresh Khurd', 'shrikantkhurd97@gmail.com', 'Thank you.', '2021-08-05 15:59:35', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coursecategory`
--
ALTER TABLE `coursecategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursepost`
--
ALTER TABLE `coursepost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FOREIGN` (`CategoryId`);

--
-- Indexes for table `ebookcategory`
--
ALTER TABLE `ebookcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ebookpost`
--
ALTER TABLE `ebookpost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreign key` (`CategoryId`);

--
-- Indexes for table `programcategory`
--
ALTER TABLE `programcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programpost`
--
ALTER TABLE `programpost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FOREIGN_KEY` (`CategoryId`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FOREIGNKEY` (`postId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coursecategory`
--
ALTER TABLE `coursecategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coursepost`
--
ALTER TABLE `coursepost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ebookcategory`
--
ALTER TABLE `ebookcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ebookpost`
--
ALTER TABLE `ebookpost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `programcategory`
--
ALTER TABLE `programcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `programpost`
--
ALTER TABLE `programpost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coursepost`
--
ALTER TABLE `coursepost`
  ADD CONSTRAINT `FOREIGN` FOREIGN KEY (`CategoryId`) REFERENCES `coursecategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ebookpost`
--
ALTER TABLE `ebookpost`
  ADD CONSTRAINT `foreign key` FOREIGN KEY (`CategoryId`) REFERENCES `ebookcategory` (`id`);

--
-- Constraints for table `programpost`
--
ALTER TABLE `programpost`
  ADD CONSTRAINT `FOREIGN_KEY` FOREIGN KEY (`CategoryId`) REFERENCES `programcategory` (`id`);

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `FOREIGNKEY` FOREIGN KEY (`postId`) REFERENCES `programpost` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
