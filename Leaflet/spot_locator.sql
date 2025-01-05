-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 07, 2024 at 03:52 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spot_locator`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `adminUser` varchar(225) NOT NULL,
  `adminPass` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `adminUser`, `adminPass`) VALUES
(1, 'admin_ken', 'admin_ken');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_image` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `place_id`, `id`, `comment_text`, `comment_image`, `created_at`) VALUES
(29, 28, 93, 'Hindi masarap dito ewww', NULL, '2024-01-04 17:50:11'),
(30, 27, 93, 'my name is walter white yo', NULL, '2024-01-04 17:50:59'),
(31, 22, 93, 'worth it yung pagod pag dating sa taas ng grotto babalikan ko ulit ito👍', NULL, '2024-01-04 17:52:15'),
(32, 15, 93, 'biggest turn off sa babae na dili mo chupa og oten like wtf unsay purpose sa among oten og dili nyo chupaon? gi hatagan gani mig oten sa ginoo aron naa moy ma-chupa unya magluod² ramo? asang utok ninyo chupaon ninyo ang lollipop unya among oten dili, gasto pagyud ang lollipop unya mahilis ra dating kaysa sa among oten na free na unya dipa gyud mahilis maka tilaw pagyud mog duga pampa healthy sa heart so fuck off mga girls na di mo chupa og oten kay luod daw', 'comment_images/asda.jpg', '2024-01-04 17:53:56'),
(34, 32, 93, 'grabi... ang gnda d2 sa puyaw... ng injoy anak koh tnx.. god bless us...', 'comment_images/yawa.jpg', '2024-01-04 17:57:35'),
(35, 31, 93, 'qweqw', NULL, '2024-01-06 14:08:44'),
(36, 28, 93, 'try ko lang rating kung gagana sya', NULL, '2024-01-06 14:53:29'),
(37, 28, 93, 'try ko mag comment lang', NULL, '2024-01-06 14:54:18'),
(38, 28, 93, 'qweqw ', NULL, '2024-01-06 14:56:16'),
(39, 28, 93, 'asdasdas', NULL, '2024-01-06 15:01:40'),
(40, 28, 93, 'qwe', NULL, '2024-01-06 15:33:58'),
(41, 28, 93, 'qweqwe', NULL, '2024-01-06 15:34:03'),
(42, 28, 93, 'qwe', NULL, '2024-01-06 15:34:11'),
(43, 31, 93, 'wow satisfied costumer', NULL, '2024-01-06 15:46:57'),
(44, 31, 93, 'ang sarap sarap', 'comment_images/burger.jpg', '2024-01-06 15:55:37'),
(45, 31, 93, 'okay lang naman lasa nya', NULL, '2024-01-06 15:55:51'),
(46, 31, 93, 'yes king ', 'comment_images/yawa.jpg', '2024-01-06 16:07:11'),
(47, 17, 93, 'ang sarap dito, very accommodating pa !', NULL, '2024-01-06 16:09:53'),
(48, 17, 93, 'grabe dito and baho nyong lahat ', NULL, '2024-01-06 16:10:08'),
(49, 27, 93, 'grabe and pogi ng nakatira dito lods, 5 star ka sakin', 'comment_images/img razer.jpg', '2024-01-06 16:17:15'),
(50, 27, 93, 'nuh uhh', NULL, '2024-01-06 16:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `rating_id` int(11) NOT NULL,
  `place_id` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `rating_value` int(11) DEFAULT NULL,
  `comment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`rating_id`, `place_id`, `id`, `rating_value`, `comment_id`) VALUES
(9, 28, 93, 3, 26),
(10, 28, 93, 3, 27),
(11, 28, 93, 4, 28),
(12, 28, 93, 1, 29),
(13, 27, 93, 5, 30),
(14, 22, 93, 5, 31),
(15, 15, 93, 1, 32),
(16, 32, 93, 5, 34),
(17, 28, 93, 5, 36),
(18, 28, 93, 4, 37),
(19, 28, 93, 3, 38),
(20, 28, 93, 1, 39),
(21, 28, 93, 5, 40),
(22, 28, 93, 5, 41),
(23, 28, 93, 1, 42),
(24, 31, 93, 5, 43),
(25, 31, 93, 5, 44),
(26, 31, 93, 2, 45),
(27, 31, 93, 5, 46),
(28, 17, 93, 5, 47),
(29, 17, 93, 1, 48),
(30, 27, 93, 5, 49),
(31, 27, 93, 1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `spots`
--

CREATE TABLE `spots` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(225) NOT NULL,
  `place_desc` varchar(225) NOT NULL,
  `place_lat` varchar(225) NOT NULL,
  `place_lng` varchar(225) NOT NULL,
  `place_image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spots`
--

INSERT INTO `spots` (`place_id`, `place_name`, `place_desc`, `place_lat`, `place_lng`, `place_image`) VALUES
(15, 'People Park', 'dito pupumunta ang mga tao para mag laro\r\n', '16.02757350280125', '120.74392094052', 'uploads/plaza.jpg'),
(17, 'Kape CO.', 'We invite you to embark on a sensory journey where the rich aroma of freshly brewed coffee mingles with the warm embrace of a cozy ambiance.', '16.0278736984702', '120.74606604874134', 'uploads/kapeco.jpg'),
(19, 'Tayug Sunflower Eco Park', 'At Sunflower Tayug, we invite you to immerse yourself in the breathtaking allure of nature\'s golden wonders. Nestled in the charming town of Tayug, our sunflower fields stand as a vibrant testament to the simple joy.', '15.97564151856541', '120.74400457006601', 'uploads/sunflower.jpg'),
(20, 'Saint Patrick Church', 'At Saint Patrick Church, we extend a warm and heartfelt welcome to all who seek spiritual nourishment and a sense of community. ', '16.02853027387905', '120.74455832021918', 'uploads/saintPatrick.jpg'),
(21, 'Natividad Mini Lion Head', 'A sanctuary dedicated to the appreciation of sculptures and the serenity of outdoor spaces. ', '16.056721246156858', '120.82422632428025', 'uploads/natlion.jfif'),
(22, 'Natividad Sky Plaza', 'At Sky Plaza, we invite you to soar to new heights and indulge in a unique and elevated experience. Nestled in the heart of Natividad Sky Plaza stands as a symbol of modern sophistication.', '16.058031090915247', '120.82724963458443', 'uploads/natskyplaza.jpg'),
(23, 'Jolly Farm Camp', 'Camp Farm beckons all nature enthusiasts and adventure seekers to embark on a journey of discovery and relaxation. A harmonious blend of rustic charm and modern amenities.', '16.059623511300874', '120.83552491989488', 'uploads/jollymap.jpg'),
(24, 'Maranum Falls Entrance', 'Entrance to Marnum Falls', '16.064436398872918', '120.8379348279105', 'uploads/maraent.png'),
(25, 'Maranum Falls', 'Tucked away amidst lush greenery and surrounded by the soothing sounds of nature, Maranum Falls invites you to embark on a journey of tranquility, exploration, and awe-inspiring beauty.', '16.068653295136006', '120.84064979761388', 'uploads/maranumFalls.jpg'),
(26, 'Café Almari', 'Step into the welcoming ambiance of Cafe Almari, where each cup of coffee is brewed with care, and every dish is crafted to delight your palate.', '16.026417798823612', '120.74169337749481', 'uploads/cafeAlmari.jpg'),
(27, 'Ken House Yo', '\"My name is skyler white yo\"\r\n🗿\r\n\"My husband is walter white yo\"\r\n🗿\r\n\"Uh huh\"\r\n🗿', '16.02544099758981', '120.73545244093586', 'uploads/wrizz.jpg'),
(28, 'Baga Burger', 'Indulge your taste buds in a symphony of flavors at Baga Burger, a culinary haven nestled in the heart of Tayug. At Baga Burger, we are on a mission to redefine the burger experience.', '16.027218254924573', '120.74363797903061', 'uploads/bagaurger.jpg'),
(29, 'Sugar And Salt by CPM', 'Basta pagakain ito nakakatamad mag type type', '16.026203896736686', '120.74559493491499', 'uploads/sng.jpg'),
(31, 'BigTime Burger', 'hamburjits na sobrang sarap ehehehe', '16.026897439850536', '120.7431249085161', 'uploads/burjits.jpg'),
(32, 'Puyao', 'Journey into the heart of serenity as you discover the enchanting Puyao River, a hidden gem nestled in the pristine landscapes of San Nicolas. Puyao River beckons nature enthusiasts, explorers.', '16.10556617361899', '120.78551530838013', 'uploads/puyao.jpg'),
(33, 'BRV Sweet Creation', 'Gumagawa sila ng cake ehe', '16.02435602835735', '120.7451087701979', 'uploads/Screenshot 2024-01-04 180930.png'),
(34, 'QP Resto Bar', 'Ilabas mo na ', '15.962881522396493', '120.56813146186413', 'uploads/qp.jpg'),
(35, 'Urdaneta Park Landmark Monument ', 'Urdaneta Pangasinan Jose Rizal Monument', '15.975232364942137', '120.56404320997834', 'uploads/rizal.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(225) NOT NULL,
  `middle_initial` varchar(225) NOT NULL,
  `last_name` varchar(225) NOT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `phone_num` varchar(20) NOT NULL,
  `email_add` varchar(150) NOT NULL,
  `login_user` varchar(225) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `middle_initial`, `last_name`, `sex`, `address`, `birthdate`, `phone_num`, `email_add`, `login_user`, `password`) VALUES
(93, 'Ken Laurence', 'C', 'Martinez', 'Male', 'Agno Tayug', '2024-01-11', '09276458608', 'ken@gmail.com', 'ken_69', '82109967c34dd30ea41fd7630e68bb2c'),
(94, 'Qweqwe', 'Q', 'Qweqwe', NULL, NULL, NULL, '09276458608', 'qwewe@gmail.com', 'qweqwe', '82109967c34dd30ea41fd7630e68bb2c'),
(95, 'qqwe', 'q', 'qweqwe', NULL, NULL, NULL, '9276547912', 'qwqwe@gmail.com', 'qwe_qwe', '76d80224611fc919a5d54f0ff9fba446'),
(98, 'Tester', 'T', 'Testtest', NULL, NULL, NULL, '09276458608', 'test@gmail.com', 'test_292', '08f5b04545cbf7eaa238621b9ab84734'),
(113, 'Ken', 'C', 'Zenitram', NULL, NULL, NULL, '09321234561', 'hahaha@gmail.com', 'neknekmo', '82109967c34dd30ea41fd7630e68bb2c'),
(114, 'Qwe', 'Q', 'Qwe', NULL, NULL, NULL, '09276456172', 'qwe@gmail.com', 'qweqwe1', '82109967c34dd30ea41fd7630e68bb2c'),
(116, 'Werrwer', 'W', 'Werwerrwer', NULL, NULL, NULL, '09276458608', 'werwe@gmai.com', 'qweqweqweqwe', '82109967c34dd30ea41fd7630e68bb2c'),
(117, 'Qweqweqwe', 'W', 'Qweqweqweqwe', NULL, NULL, NULL, '09276458608', 'werwer@gmai.com', 'qweqwe123123', '82109967c34dd30ea41fd7630e68bb2c'),
(118, 'Qwe', 'Q', 'Qwe', NULL, NULL, NULL, '09276458608', 'qweqweqweeWqw@gmail.com', 'qweqweqweqweqwe', '82109967c34dd30ea41fd7630e68bb2c'),
(119, 'Qwe', 'Q', 'Qqweqw', NULL, NULL, NULL, '09276458608', 'qweqweweqweq@gmail.com', 'qwejan', '82109967c34dd30ea41fd7630e68bb2c'),
(120, 'Qwe', 'Q', 'Qwe', NULL, NULL, NULL, '09276458608', 'qweqweqweqweqwe@gmail.com', 'qwejasdasd', '82109967c34dd30ea41fd7630e68bb2c'),
(121, 'Qweqweqwe', 'Q', 'Qweqweqwe', NULL, NULL, NULL, '09276458608', 'qweqwewqwe@gmail.com', 'tanginamo123', '82109967c34dd30ea41fd7630e68bb2c'),
(122, 'Qwe', 'Q', 'Qwe', 'male', 'qweqweqwew', '2024-01-24', '09276458608', 'qweqwe@gmail.com', 'qweqweqweqweqweqwe', '82109967c34dd30ea41fd7630e68bb2c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `place_id` (`place_id`),
  ADD KEY `fk_user_id` (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `place_id` (`place_id`),
  ADD KEY `id` (`id`),
  ADD KEY `comment_id` (`comment_id`);

--
-- Indexes for table `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `spots`
--
ALTER TABLE `spots`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `spots` (`place_id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`id`) REFERENCES `user` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `spots` (`place_id`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `ratings_ibfk_3` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`comment_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
