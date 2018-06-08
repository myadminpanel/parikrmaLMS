-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 08, 2018 at 11:03 AM
-- Server version: 5.6.39
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sid11990_parikrmatraining`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `id` int(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `batch` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `attendence` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `id` int(100) NOT NULL,
  `batch_id` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `instructor` varchar(100) NOT NULL,
  `course_fee` varchar(100) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `n_o_students` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `batch_id`, `course`, `instructor`, `course_fee`, `start_date`, `end_date`, `n_o_students`) VALUES
(20, '00002', '13', '24', '0', '1527811200', '1532476800', NULL),
(19, '00001', '14', '23', '0', '1528416000', '1530144000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `batch_course`
--

CREATE TABLE `batch_course` (
  `id` int(100) NOT NULL,
  `batch` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(100) NOT NULL,
  `course_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `course_fee` varchar(100) NOT NULL,
  `material` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_id`, `name`, `topic`, `duration`, `course_fee`, `material`) VALUES
(13, '00001', 'fdfvdgvdcgvd', 'fdfgvffgvf', '1 hour', '0', 'yes'),
(14, '00002', 'Core Java', 'linux', '1 hour', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_material`
--

CREATE TABLE `course_material` (
  `id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `url` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(100) NOT NULL,
  `img_url` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL,
  `ion_user_id` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `start` varchar(100) NOT NULL,
  `end` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL,
  `y` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'Instructor', 'For Instructors'),
(3, 'Student', 'For Teachers');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `add_date` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`id`, `img_url`, `name`, `email`, `phone`, `address`, `dob`, `add_date`, `ion_user_id`) VALUES
(24, 'uploads/botique11.jpg', 'dxsdcsfc', 'dxsdcsfc@gmail.com', '7854454555', 'scdgbfgbfb', NULL, NULL, '406'),
(23, 'uploads/download5.png', 'anith', 'anithmarnoor007@gmail.com', '987454556555', 'IBC Knowledge Park', NULL, NULL, '407');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` varchar(100) NOT NULL,
  `add_date` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `office_log`
--

CREATE TABLE `office_log` (
  `id` int(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `sign_in_time` varchar(100) NOT NULL,
  `sign_in_ip` varchar(100) NOT NULL,
  `sign_out_time` varchar(100) NOT NULL,
  `sign_out_ip` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `office_log`
--

INSERT INTO `office_log` (`id`, `user`, `sign_in_time`, `sign_in_ip`, `sign_out_time`, `sign_out_ip`, `x`) VALUES
(1, '1', '1528281160', '106.51.20.222', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(10) NOT NULL,
  `date` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `batch` varchar(100) NOT NULL,
  `student` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `vat` varchar(100) NOT NULL DEFAULT '0',
  `discount` varchar(100) NOT NULL DEFAULT '0',
  `gross_total` varchar(100) NOT NULL,
  `amount_received` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_category`
--

CREATE TABLE `payment_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `c_price` varchar(100) NOT NULL,
  `d_commission` int(100) NOT NULL,
  `h_commission` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE `routine` (
  `id` int(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `batch_id` varchar(100) NOT NULL,
  `routine` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL,
  `y` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
  `system_vendor` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `facebook_id` varchar(100) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `vat` varchar(100) NOT NULL,
  `date_format` varchar(100) NOT NULL,
  `login_title` varchar(100) NOT NULL,
  `login_logoo` varchar(100) NOT NULL,
  `codec_username` varchar(100) NOT NULL,
  `codec_purchase_code` varchar(100) NOT NULL,
  `language` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `system_vendor`, `title`, `address`, `phone`, `email`, `facebook_id`, `currency`, `discount`, `vat`, `date_format`, `login_title`, `login_logoo`, `codec_username`, `codec_purchase_code`, `language`) VALUES
(1, 'Code Aristos Training Academy', 'Training', 'CollegePara, Rajbari', '+012345678', 'admin@example.com', '#', '$', '0', 'percentage', '2', 'Training Center Management System', 'uploads/111650788591320108506835879795145051203032O.jpg', '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `add_date` varchar(100) NOT NULL,
  `ion_user_id` varchar(100) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `dob`, `add_date`, `ion_user_id`) VALUES
(31, '', 'meghana', 'meghasrinivas122@gmail.com', '', '656564645444', NULL, '1528288574', '405'),
(33, '', 'dvgdv', 'meghanasrinivas94@gmail.com', '', '9875656565', NULL, '1528375078', '409'),
(34, '', 'asfdasfads', 'asfdasfads@example.com', '', '2133132134', NULL, '1528396013', '410'),
(35, '', 'fffff', 'gururaj9420@gmail.com', '', '56664978787', NULL, '1528396141', '411'),
(36, '', 'ytyjtj', 'rqmyaammu122@gmail.com', '', '9874563215', NULL, '1528396247', '412'),
(37, '', 'dgbdcb', 'tredd@gmail.com', '', '9874562115', NULL, '1528433190', '413'),
(38, '', 'csxvfxdv', 'axasx@gmail.com', '', '9874563215', NULL, '1528433468', '414'),
(39, '', 'dwsfs', 'asxad@gmaIl.com', '', '987456325', NULL, '1528433545', '415'),
(40, '', 'xsccc', 'xsccc@gmail.com', '', '1239658411', NULL, '1528433598', '416'),
(41, '', 'xzxcsc', 'xzxcsc@gmail.com', '', '98745663215', NULL, '1528433638', '417'),
(42, '', 'dcscsxc', 'dcscsxc@gmail.com', '', '987456325', NULL, '1528433953', '418');

-- --------------------------------------------------------

--
-- Table structure for table `student_batch`
--

CREATE TABLE `student_batch` (
  `id` int(100) NOT NULL,
  `student` varchar(100) NOT NULL,
  `batch` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_batch`
--

INSERT INTO `student_batch` (`id`, `student`, `batch`) VALUES
(15, '31', '00002');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `requested_by` varchar(100) NOT NULL,
  `requested_for` varchar(100) NOT NULL,
  `to_do` varchar(1000) NOT NULL,
  `timeline` varchar(100) NOT NULL,
  `to_do_report` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL,
  `add_date` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `task_category`
--

CREATE TABLE `task_category` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL,
  `y` varchar(100) NOT NULL,
  `z` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'admin', '$2y$08$9VBRxBZsZaPfPvD.wEVJKuYbGrp4oeUN.b4A1d8cho6ERewMS00jC', '', 'admin@example.com', '', 'dc10sss4EZougSSnIBO8gu314b5803e044d47f0c', 1435777809, 'zCeJpcj78CKqJ4sVxVbxcO', 1268889823, 1528433149, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(403, '', 'meghana', '$2y$08$xZ8MGXOkGSQEAxo9imgAjOPmYmssQgHSKzswUnPHru9Kd1Vl9akYC', NULL, 'meghasrinivas122@gmail.com', NULL, NULL, NULL, NULL, 1528288574, 1528288624, 1, NULL, NULL, NULL, '656564645444'),
(405, '106.51.20.222', 'anith', '$2y$08$fgBKD8ZtvjxdVAtwVtzymODaIiBfgO2nQjPbSH6pWiyiTUeXMsrHS', NULL, 'anithmarnoor007@gmail.com', NULL, NULL, NULL, NULL, 1528288808, 1528302830, 1, NULL, NULL, NULL, NULL),
(406, '106.51.20.222', 'dxsdcsfc', '$2y$08$wMzKXhy.JKYPjUwEyy6g9ufTlP0NzgqLkflcpeKrE4gz6ku1TumF2', NULL, 'dxsdcsfc@gmail.com', NULL, NULL, NULL, NULL, 1528288898, NULL, 1, NULL, NULL, NULL, NULL),
(407, '', 'dvgdv', '$2y$08$IWJA4fxBTiUJrKCa1e9fauwAq1D0pcKMU5/buqMd2zBug8xUuk6AG', NULL, 'meghanasrinivas94@gmail.com', NULL, NULL, NULL, NULL, 1528375078, 1528375279, 1, NULL, NULL, NULL, '9875656565'),
(408, '', 'asfdasfads', '$2y$08$7ip20o5QuU0jYlCmPije.OkXhhp3LeRjlBjQzuIHMvbEF8WxYY3I.', NULL, 'asfdasfads@example.com', NULL, NULL, NULL, NULL, 1528396013, NULL, 0, NULL, NULL, NULL, '2133132134'),
(409, '', 'fffff', '$2y$08$fpzF4iwGY4D59UimIdAiM.gHAD38YKX4XjzEgGjjBFfJcCvhZeo6a', NULL, 'gururaj9420@gmail.com', NULL, NULL, NULL, NULL, 1528396141, NULL, 0, NULL, NULL, NULL, '56664978787'),
(410, '', 'ytyjtj', '$2y$08$fG2pYmzu9d6ZL1HHZzWonuc75xsVpFFgl3TF4UN9aalPu4kVzlcty', NULL, 'rqmyaammu122@gmail.com', NULL, NULL, NULL, NULL, 1528396247, NULL, 0, NULL, NULL, NULL, '9874563215'),
(411, '', 'dgbdcb', '$2y$08$lA4jgwBa/KRqWuWZeS3qYOkWAPQGhONuyfe8N9v48JA4qhTmnk4La', NULL, 'tredd@gmail.com', NULL, NULL, NULL, NULL, 1528433190, NULL, 0, NULL, NULL, NULL, '9874562115'),
(412, '', 'csxvfxdv', '$2y$08$Hf115NnJIHETRbqd06ZXJO6dQHLvCICOi1VAosth.5o3CmRSLhasa', NULL, 'axasx@gmail.com', NULL, NULL, NULL, NULL, 1528433468, NULL, 0, NULL, NULL, NULL, '9874563215'),
(413, '', 'dwsfs', '$2y$08$W8z8yi1WLoskAnWuGQyu3uqNqfEdn.rduy6rA1RuNozCHVjUFJ2Ti', NULL, 'asxad@gmaIl.com', NULL, NULL, NULL, NULL, 1528433545, NULL, 0, NULL, NULL, NULL, '987456325'),
(414, '', 'xsccc', '$2y$08$RxkXfihYZbJJ3H8DTTSRc.iltj7HG/R5tKMeenxn.IhQgxT/TFGOi', NULL, 'xsccc@gmail.com', NULL, NULL, NULL, NULL, 1528433598, NULL, 0, NULL, NULL, NULL, '1239658411'),
(415, '', 'xzxcsc', '$2y$08$rys7u5bFpaWZActyOnnc.e6hmhlsio28z1mDNLGxTUWXywDl0rhzO', NULL, 'xzxcsc@gmail.com', NULL, NULL, NULL, NULL, 1528433638, NULL, 0, NULL, NULL, NULL, '98745663215'),
(416, '', 'dcscsxc', '$2y$08$Mj0qH6fFkzCI7mvJUOMol.n1amNY4R8OrsKG0KVS2Mfg2jPqMGQeq', NULL, 'dcscsxc@gmail.com', NULL, NULL, NULL, NULL, 1528433953, NULL, 0, NULL, NULL, NULL, '987456325');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(405, 403, 3),
(407, 405, 2),
(408, 406, 2),
(409, 407, 3),
(410, 408, 3),
(411, 409, 3),
(412, 410, 3),
(413, 411, 3),
(414, 412, 3),
(415, 413, 3),
(416, 414, 3),
(417, 415, 3),
(418, 416, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch_course`
--
ALTER TABLE `batch_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `material` (`material`);

--
-- Indexes for table `course_material`
--
ALTER TABLE `course_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office_log`
--
ALTER TABLE `office_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_category`
--
ALTER TABLE `payment_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_batch`
--
ALTER TABLE `student_batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_category`
--
ALTER TABLE `task_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendence`
--
ALTER TABLE `attendence`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `batch_course`
--
ALTER TABLE `batch_course`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `course_material`
--
ALTER TABLE `course_material`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `office_log`
--
ALTER TABLE `office_log`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_category`
--
ALTER TABLE `payment_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `student_batch`
--
ALTER TABLE `student_batch`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_category`
--
ALTER TABLE `task_category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
