-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2020 at 11:18 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gm`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `body`) VALUES
(3, 'Article Two', '<p>This is the body for article Two</p>\r\n\r\n<p>This is the body for article Two</p>'),
(4, 'Article Two', 'This is the body for article Two'),
(5, 'Article Two', 'This is the body for article Two'),
(6, '6', '6'),
(7, '7', '7'),
(8, '8', '8'),
(9, '9', '9'),
(10, '10', '10'),
(11, '11', '11'),
(12, '12', '12'),
(13, '12', '12'),
(14, '13', '13'),
(15, '15', '15'),
(16, '16', '16'),
(17, '17', '17'),
(18, '18', '<p>Hello ch&agrave;o</p>\r\n\r\n<p>Hello moi người</p>'),
(19, '19', '19'),
(20, '20', '20'),
(21, '21', '21'),
(22, '22', '<p><img alt=\"\" src=\"/uploads/84336371_210141663366140_103556373085683712_n.jpg\" style=\"height:960px; width:720px\" /></p>\r\n\r\n<p>Ch&agrave;o hello</p>\r\n\r\n<p>Hello ch&agrave;o</p>'),
(23, '1', '<p>Hello</p>\r\n\r\n<p>Chao</p>\r\n\r\n<p>Ban</p>');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `slug` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `created_at`, `slug`) VALUES
(1, 'Sữa cho người lớn', 'Sữa cho người lớn từ 50 tuổi trở lên', '2020-07-07 05:05:54', 'sua-cho-nguoi-lon'),
(2, 'Sữa cho người trẻ em', 'Sữa cho người trẻ từ 0 - 5 tuổi', '2020-07-07 05:10:27', 'sua-cho-nguoi-tre-em'),
(3, 'Cho người bệnh', 'Cho người bệnh', '2020-07-07 06:10:46', 'cho-nguoi-benh');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `content`, `created_at`) VALUES
(1, 'Alex', 'alex@likipe.se', 'Hello', 'Hello chao\r\nChao hello', '2020-07-30 05:26:44'),
(2, 'Alex', 'alex@likipe.se', 'Hello 123', 'Hello Chào 123', '2020-07-30 05:35:07'),
(3, 'Alex', 'alex@likipe.se', 'Hello 123', 'Hello Chào 123', '2020-07-30 05:35:33'),
(4, 'Alex', 'alex@likipe.se', 'Hello 123', 'Hello Chào 123', '2020-07-30 05:35:39'),
(5, 'Alex', 'alex@likipe.se', 'Hello 123', 'Hello Chào 123', '2020-07-30 05:36:20'),
(6, 'Alex', 'alex@likipe.se', 'Hello 123', '123 456', '2020-07-30 05:36:30'),
(7, 'Alex', 'alex@likipe.se', 'Hello 123', '123 345', '2020-07-30 05:40:38'),
(8, 'Alex', 'alex@likipe.se', 'Hello', '345 56456', '2020-07-30 05:41:08'),
(9, 'Alex', 'alex@likipe.se', 'Hello 456', 'Al Cu Linh', '2020-07-30 05:44:47'),
(10, 'Alex 456', 'alex@likipe.se', 'Hello 456 789', 'Hello Chao', '2020-07-30 05:46:18'),
(11, 'Alex 456', 'alex@likipe.se', 'Hello 456', 'Hello chao nhé', '2020-07-30 06:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `distribution`
--

CREATE TABLE `distribution` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `distribution`
--

INSERT INTO `distribution` (`id`, `title`, `image`, `summary`, `description`) VALUES
(1, 'Hệ thống phân phối', 'bandotq.gif', '<p style=\"text-align:justify\"><span style=\"color:#2980b9\"><span style=\"font-size:20px\">Trong chiến lược ph&aacute;t triển kinh doanh, C&ocirc;ng ty&nbsp;wincofood&nbsp;đ&atilde; k&yacute; hợp đồng với c&aacute;c nh&agrave; ph&acirc;n phối tr&ecirc;n to&agrave;n quốc để mở rộng hệ thống ph&acirc;n phối của m&igrave;nh. </span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#2980b9\"><span style=\"font-size:20px\">Theo nội dung hợp đồng được k&yacute;, hệ thống ph&acirc;n phối của C&ocirc;ng ty&nbsp;wincofood&nbsp;sẽ bao phủ to&agrave;n bộ c&aacute;c tỉnh tr&ecirc;n to&agrave;n quốc.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#2980b9\"><span style=\"font-size:20px\">Với hệ thống ph&acirc;n phối ng&agrave;y c&agrave;ng lớn mạnh, c&ocirc;ng ty sẽ ng&agrave;y c&agrave;ng c&oacute; điều kiện cung cấp c&aacute;c sản phẩm v&agrave; dịch vụ c&oacute; chất lượng đến nhiều người ti&ecirc;u d&ugrave;ng tr&ecirc;n to&agrave;n quốc.</span></span></p>', '<p style=\"text-align:center\"><input alt=\"\" src=\"/uploads/bandotq.jpg\" style=\"width: 373px; height: 500px;\" type=\"image\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#2980b9\"><span style=\"font-size:20px\">Trong chiến lược ph&aacute;t triển kinh doanh, C&ocirc;ng ty&nbsp;wincofood&nbsp;đ&atilde; k&yacute; hợp đồng với c&aacute;c nh&agrave; ph&acirc;n phối tr&ecirc;n to&agrave;n quốc để mở rộng hệ thống ph&acirc;n phối của m&igrave;nh. </span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#2980b9\"><span style=\"font-size:20px\">Theo nội dung hợp đồng được k&yacute;, hệ thống ph&acirc;n phối của C&ocirc;ng ty&nbsp;wincofood&nbsp;sẽ bao phủ to&agrave;n bộ c&aacute;c tỉnh tr&ecirc;n to&agrave;n quốc.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#2980b9\"><span style=\"font-size:20px\">Với hệ thống ph&acirc;n phối ng&agrave;y c&agrave;ng lớn mạnh, c&ocirc;ng ty sẽ ng&agrave;y c&agrave;ng c&oacute; điều kiện cung cấp c&aacute;c sản phẩm v&agrave; dịch vụ c&oacute; chất lượng đến nhiều người ti&ecirc;u d&ugrave;ng tr&ecirc;n to&agrave;n quốc.</span></span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `intro`
--

CREATE TABLE `intro` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `intro`
--

INSERT INTO `intro` (`id`, `title`, `image`, `summary`, `description`) VALUES
(1, 'Giới Thiệu', 'lactimum-gold+-junior1.jpg', '<p style=\"text-align:justify\"><span style=\"font-size:20px\">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:20px\">Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:20px\">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:20px\">Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:20px\">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</span></p>', '<p style=\"text-align:center\"><input alt=\"\" src=\"/uploads/Grow.png\" style=\"height:450px; width:764px\" type=\"image\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#0033ff\"><span style=\"font-size:20px\">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#0033ff\"><span style=\"font-size:20px\">Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#0033ff\"><span style=\"font-size:20px\">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#0033ff\"><span style=\"font-size:20px\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#0033ff\"><span style=\"font-size:20px\">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#0033ff\"><span style=\"font-size:20px\">Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#0033ff\"><span style=\"font-size:20px\">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#0033ff\"><span style=\"font-size:20px\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `check_parent` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `link`, `parent_id`, `sort`, `check_parent`) VALUES
(1, 'Trang chủ', '/', NULL, 0, 0),
(2, 'Sản phầm', '/san-pham', NULL, 2, 1),
(3, 'Dành cho người lớn', '/san-pham/danh-muc/1/sua-danh-cho-nguoi-lon', 2, 0, 0),
(4, 'Sữa cho trẻ em', '/san-pham/danh-muc/2/sua-danh-cho-tre-em', 2, 1, 0),
(6, 'Tin tức', '/tin-tuc', NULL, 4, 0),
(7, 'Hệ thống phân phối', '/he-thong-phan-phoi', NULL, 3, 0),
(13, 'Tuyển dụng', '/tuyen-dung', NULL, 5, 0),
(17, 'Giới Thiệu', '/gioi-thieu', NULL, 1, 0),
(18, 'Sữa cho người bệnh', '/san-pham/danh-muc/3/cho-nguoi-benh', 2, 2, 0),
(19, 'Liên hệ', '/lien-he', NULL, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_footer`
--

CREATE TABLE `menu_footer` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `check_parent` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_footer`
--

INSERT INTO `menu_footer` (`id`, `parent_id`, `name`, `link`, `sort`, `check_parent`) VALUES
(1, NULL, 'Liên kết nhanh', '#', 0, 1),
(2, NULL, 'Sản phẩm của WincoFood', '#', 1, 1),
(3, NULL, 'Thông tin dinh dưỡng', '#', 2, 1),
(4, 1, 'Tuyển Dụng', '/tuyen-dung', 2, 0),
(5, 1, 'Liên hệ', '/lien-he', 1, 0),
(6, 1, 'Hệ thống phân phối', '/he-thong-phan-phoi', 3, 0),
(7, 2, 'Cho người bệnh', 'san-pham/danh-muc/3/cho-nguoi-benh', 0, 0),
(8, 2, 'Sữa cho trẻ em', 'san-pham/danh-muc/2/sua-danh-cho-tre-em', 1, 0),
(9, 2, 'Sữa cho người lớn', 'san-pham/danh-muc/1/sua-danh-cho-nguoi-lon', 2, 0),
(10, 3, 'Dinh dưỡng cho trẻ em', '/', 1, 0),
(11, 3, 'Dinh dưỡng theo bệnh lý', '/', 0, 0),
(12, 3, 'Suy dinh dưỡng trẻ em', '/', 2, 0),
(13, 1, 'Giới Thiệu', '/gioi-thieu', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `content`, `active`, `created_at`, `image`) VALUES
(1, 'Thông báo nghỉ tết âm lich 2021', '<p style=\"text-align:justify\"><span style=\"font-size:20px\">Tết &acirc;m lịch đ&atilde; đến rất gần rồi, c&aacute;c c&ocirc;ng ty cần phải l&ecirc;n kế hoạch sớm cho&nbsp;<a href=\"https://hoatieu.vn/lich-nghi-tet-am-lich-133737\">lịch nghỉ tết</a>&nbsp;của nh&acirc;n vi&ecirc;n cũng như c&aacute;c chế độ ph&uacute;c lợi của nh&acirc;n vi&ecirc;n v&agrave;o dịp Tết. Hiện nay c&ugrave;ng ph&aacute;t triển với thời đại c&ocirc;ng nghệ 4.0 n&ecirc;n hầu hết c&aacute;c c&ocirc;ng ty, doanh nghiệp đều c&oacute; c&aacute;c trang web ri&ecirc;ng hay c&aacute;c trang fanpage của c&ocirc;ng ty. </span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:20px\">V&igrave; vậy ngo&agrave;i việc ra th&ocirc;ng b&aacute;o lịch nghỉ tết bằng văn bản th&igrave; c&aacute;c c&ocirc;ng ty thường đăng tải c&aacute;c banner th&ocirc;ng b&aacute;o lịch nghỉ tết hay c&aacute;c ảnh đăng tin lịch nghỉ tết của c&ocirc;ng ty để c&aacute;c nh&acirc;n vi&ecirc;n cũng như người ti&ecirc;u d&ugrave;ng v&agrave; đối t&aacute;c nắm được. </span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:20px\">Dưới đ&acirc;y l&agrave; mẫu banner th&ocirc;ng b&aacute;o lịch nghỉ Tết, hoatieu.vn đ&atilde; để sẵn file tải ở dạng PSD, c&aacute;c bạn chỉ cần sử dụng file tải v&agrave; v&agrave;o c&ocirc;ng cụ Text của photoshop để chỉnh sửa nội dung theo &yacute; của m&igrave;nh. </span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:20px\">Hoặc c&aacute;c bạn c&oacute; thể sử dụng lu&ocirc;n nội dung tr&ecirc;n ảnh th&ocirc;ng b&aacute;o lịch nghỉ tết cũng rất ph&ugrave; hợp với lịch nghỉ Tết &acirc;m lịch năm 2020.</span></p>', 1, '2020-07-30 06:53:30', 'thong-bao1.png');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `image`, `updated_at`, `title`, `content`, `category_id`, `summary`, `slug`) VALUES
(3, 'GC-Preschool.png', '2020-07-29 07:01:02', 'Sản phẩm số 1', '<p style=\"text-align:justify\"><span style=\"font-size:20px\">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:20px\">Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:20px\">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><input alt=\"\" src=\"/uploads/images/products/canxi.png\" style=\"height:450px; width:764px\" type=\"image\" /></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:20px\">Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:20px\">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:20px\">Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p>', 1, '<p><span style=\"font-size:20px\">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span></p>\r\n\r\n<p><span style=\"font-size:20px\">Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p>', 'san-pham-so-1'),
(4, 'canxi.png', '2020-07-29 07:01:12', 'Sản phẩm số 2', '<p style=\"text-align:justify\"><span style=\"font-size:20px\"><span style=\"color:#0033ff\">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:20px\"><span style=\"color:#0033ff\">Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:20px\"><span style=\"color:#0033ff\">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:20px\"><span style=\"color:#0033ff\">Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></span></p>', 2, '<p style=\"text-align:justify\"><span style=\"font-size:20px\"><span style=\"color:#0033ff\">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:20px\"><span style=\"color:#0033ff\">Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></span></p>', 'san-pham-so-2'),
(5, 'BC-Nano_0.png', '2020-07-29 07:01:21', 'Sản phẩm số 3', '<p style=\"text-align:justify\"><span style=\"color:#0033ff\"><span style=\"font-size:20px\">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#0033ff\"><span style=\"font-size:20px\">Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#0033ff\"><span style=\"font-size:20px\">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#0033ff\"><span style=\"font-size:20px\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></span></p>', 2, '<p style=\"text-align:justify\"><span style=\"color:#0033ff\"><span style=\"font-size:20px\">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#0033ff\"><span style=\"font-size:20px\">Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></span></p>', 'san-pham-so-3'),
(6, 'Goldcare-Nano.png', '2020-07-29 07:01:37', 'GOLDCARE PRESCHOOL 123', '<p><span style=\"color:#0033ff\"><span style=\"font-size:20px\">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span></span></p>\r\n\r\n<p><span style=\"color:#0033ff\"><span style=\"font-size:20px\">Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></span></p>', 3, '<p><span style=\"color:#0033ff\"><span style=\"font-size:20px\">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span></span></p>\r\n\r\n<p><span style=\"color:#0033ff\"><span style=\"font-size:20px\">Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></span></p>', 'goldcare-preschool-123'),
(7, 'lactimum-gold-mom.jpg', '2020-07-29 07:01:48', 'LACTIMUM GOLD+ MOM 234', '<p>DINH DƯỠNG CHO PHỤ NỮ MANG THAI V&Agrave; CHO CON B&Uacute;</p>\r\n\r\n<p>Dưỡng chất quan trọng cho THAI KỲ &amp; SAU SINH.</p>\r\n\r\n<p>Trong thời kỳ mang thai v&agrave; cho con b&uacute; nhu cầu dinh dưỡng của người mẹ cũng tăng l&ecirc;n do sự tăng trưởng của em b&eacute;. Lactimum Gold+ Mom l&agrave; một c&ocirc;ng thức được nghi&ecirc;n cứu để hỗ trợ dinh dưỡng cho mẹ trong giai đoạn đặc biệt n&agrave;y.</p>\r\n\r\n<p>DINH DƯỠNG CHO PHỤ NỮ MANG THAI V&Agrave; CHO CON B&Uacute;</p>\r\n\r\n<p>Dưỡng chất quan trọng cho THAI KỲ &amp; SAU SINH.</p>\r\n\r\n<p>Trong thời kỳ mang thai v&agrave; cho con b&uacute; nhu cầu dinh dưỡng của người mẹ cũng tăng l&ecirc;n do sự tăng trưởng của em b&eacute;. Lactimum Gold+ Mom l&agrave; một c&ocirc;ng thức được nghi&ecirc;n cứu để hỗ trợ dinh dưỡng cho mẹ trong giai đoạn đặc biệt n&agrave;y.</p>', 1, '<p>DINH DƯỠNG CHO PHỤ NỮ MANG THAI V&Agrave; CHO CON B&Uacute;</p>\r\n\r\n<p>Dưỡng chất quan trọng cho THAI KỲ &amp; SAU SINH.</p>\r\n\r\n<p>Trong thời kỳ mang thai v&agrave; cho con b&uacute; nhu cầu dinh dưỡng của người mẹ cũng tăng l&ecirc;n do sự tăng trưởng của em b&eacute;. Lactimum Gold+ Mom l&agrave; một c&ocirc;ng thức được nghi&ecirc;n cứu để hỗ trợ dinh dưỡng cho mẹ trong giai đoạn đặc biệt n&agrave;y.</p>', 'lactimum-gold-mom-234'),
(8, 'pedia-gold.jpg', '2020-07-29 07:01:56', 'BONECARE NANO CALCI 456', '<p>DINH DƯỠNG &Iacute;T B&Eacute;O, GI&Agrave;U CANXI, BỔ SUNG COLLAGEN GI&Uacute;P PHỤC HỒI V&Agrave; T&Aacute;I TẠO</p>\r\n\r\n<p>Lo&atilde;ng xương l&agrave; bệnh l&yacute; của to&agrave;n hệ thống xương l&agrave;m cho xương gi&ograve;n, yếu, dẫn đến tăng nguy cơ g&atilde;y xương, l&agrave;m giảm chất lượng cuộc sống, đặc biệt l&agrave; phụ nữ. Chế độ ăn thiếu canxi hoặc tỷ lệ canxi/phốt pho kh&ocirc;ng hợp l&yacute; l&agrave; một trong những nguy&ecirc;n nh&acirc;n quan trọng dẫn đến hiện tượng lo&atilde;ng xương.</p>\r\n\r\n<p>DINH DƯỠNG &Iacute;T B&Eacute;O, GI&Agrave;U CANXI, BỔ SUNG COLLAGEN GI&Uacute;P PHỤC HỒI V&Agrave; T&Aacute;I TẠO</p>\r\n\r\n<p>Lo&atilde;ng xương l&agrave; bệnh l&yacute; của to&agrave;n hệ thống xương l&agrave;m cho xương gi&ograve;n, yếu, dẫn đến tăng nguy cơ g&atilde;y xương, l&agrave;m giảm chất lượng cuộc sống, đặc biệt l&agrave; phụ nữ. Chế độ ăn thiếu canxi hoặc tỷ lệ canxi/phốt pho kh&ocirc;ng hợp l&yacute; l&agrave; một trong những nguy&ecirc;n nh&acirc;n quan trọng dẫn đến hiện tượng lo&atilde;ng xương.</p>', 1, '<p>DINH DƯỠNG &Iacute;T B&Eacute;O, GI&Agrave;U CANXI, BỔ SUNG COLLAGEN GI&Uacute;P PHỤC HỒI V&Agrave; T&Aacute;I TẠO</p>\r\n\r\n<p>Lo&atilde;ng xương l&agrave; bệnh l&yacute; của to&agrave;n hệ thống xương l&agrave;m cho xương gi&ograve;n, yếu, dẫn đến tăng nguy cơ g&atilde;y xương, l&agrave;m giảm chất lượng cuộc sống, đặc biệt l&agrave; phụ nữ.</p>\r\n\r\n<p>Chế độ ăn thiếu canxi hoặc tỷ lệ canxi/phốt pho kh&ocirc;ng hợp l&yacute; l&agrave; một trong những nguy&ecirc;n nh&acirc;n quan trọng dẫn đến hiện tượng lo&atilde;ng xương.</p>', 'bonecare-nano-calci-456'),
(9, 'Goldcare-Nano.png', '2020-07-29 10:58:33', 'Sản  phẩm 4', '<h3><span style=\"font-size:20px\">The standard Lorem Ipsum passage, used since the 1500s</span></h3>\r\n\r\n<p><span style=\"font-size:20px\">&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:20px\"><input alt=\"\" src=\"/uploads/images/products/BC-Nano_0.png\" style=\"height:450px; width:764px\" type=\"image\" /></span></p>\r\n\r\n<h3><span style=\"font-size:20px\">Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</span></h3>\r\n\r\n<p><span style=\"font-size:20px\">&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</span></p>', 1, '<h3><span style=\"font-size:20px\">The standard Lorem Ipsum passage, used since the 1500s</span></h3>\r\n\r\n<p><span style=\"font-size:20px\">&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></p>', 'san-pham-4');

-- --------------------------------------------------------

--
-- Table structure for table `product_block`
--

CREATE TABLE `product_block` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_block`
--

INSERT INTO `product_block` (`id`, `title`, `image`) VALUES
(1, 'Sản Phẩm', 'lactimum-gold+-junior.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recruitment`
--

INSERT INTO `recruitment` (`id`, `title`, `summary`, `description`, `image`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Tuyển 5 nhân viện kế toán, kiểm toán', '<p>+Nhận v&agrave; theo d&otilde;i đơn h&agrave;ng kh&aacute;ch xuống. Trao đổi với kh&aacute;ch h&agrave;ng về sản phẩm đang sản xuất, nếu c&oacute; thay đổi từ kh&aacute;ch<br />\r\nh&agrave;ng th&igrave; phải l&ecirc;n hệ thống thay đổi về t&igrave;nh h&igrave;nh h&agrave;ng h&oacute;a đến c&aacute;c bộ phận li&ecirc;n quan: thu mua, bản vẽ, sản xuất<br />\r\n+Sắp xếp thời gian cho kh&aacute;ch đến kiểm h&agrave;ng mẫu, nghiệm thu h&agrave;ng sản xuất<br />\r\n+Theo d&otilde;i đơn h&agrave;ng, tiến độ h&agrave;ng xuất để th&ocirc;ng b&aacute;o cho kh&aacute;ch h&agrave;ng được biết.<br />\r\n+L&agrave;m việc nội bộ với nh&agrave; m&aacute;y<br />\r\n+L&agrave;m b&aacute;o c&aacute;o<br />\r\n+L&agrave;m việc v&agrave; giải đ&aacute;p thắc mắc với kh&aacute;ch h&agrave;ng qua Email v&agrave; trực tiếp</p>', '<h3>M&ocirc; tả c&ocirc;ng việc</h3>\r\n\r\n<p>+Nhận v&agrave; theo d&otilde;i đơn h&agrave;ng kh&aacute;ch xuống. Trao đổi với kh&aacute;ch h&agrave;ng về sản phẩm đang sản xuất, nếu c&oacute; thay đổi từ kh&aacute;ch<br />\r\nh&agrave;ng th&igrave; phải l&ecirc;n hệ thống thay đổi về t&igrave;nh h&igrave;nh h&agrave;ng h&oacute;a đến c&aacute;c bộ phận li&ecirc;n quan: thu mua, bản vẽ, sản xuất<br />\r\n+Sắp xếp thời gian cho kh&aacute;ch đến kiểm h&agrave;ng mẫu, nghiệm thu h&agrave;ng sản xuất<br />\r\n+Theo d&otilde;i đơn h&agrave;ng, tiến độ h&agrave;ng xuất để th&ocirc;ng b&aacute;o cho kh&aacute;ch h&agrave;ng được biết.<br />\r\n+L&agrave;m việc nội bộ với nh&agrave; m&aacute;y<br />\r\n+L&agrave;m b&aacute;o c&aacute;o<br />\r\n+L&agrave;m việc v&agrave; giải đ&aacute;p thắc mắc với kh&aacute;ch h&agrave;ng qua Email v&agrave; trực tiếp</p>\r\n\r\n<h3>Quyền lợi được hưởng</h3>\r\n\r\n<p>+Mức lương: thương lượng<br />\r\n+Được hưởng đầy đủ chế độ v&agrave; quyền lợi: đ&oacute;ng BHXH,BHYT, BHTN<br />\r\n+Thời gian l&agrave;m việc: Giờ h&agrave;nh ch&iacute;nh<br />\r\n+Được l&agrave;m việc trong m&ocirc;i trường trẻ trung, năng động, cạnh tranh tr&ecirc;n tinh thần hợp t&aacute;c, được chủ dộng v&agrave; s&aacute;ng tạo trong<br />\r\nc&ocirc;ng việc<br />\r\n+Tham gia bảo hiểm, nghỉ c&aacute;c ng&agrave;y lễ, tết theo quy định của của ph&aacute;p luật v&agrave; c&ocirc;ng ty khi đượ k&iacute; hợp đồng lao động d&agrave;i<br />\r\nhạn<br />\r\n+M&ocirc;i trường l&agrave;m việc năng dộng,cạnh tranh l&agrave;nh mạnh, tạo điều kiện cho nh&acirc;n vi&ecirc;n ph&aacute;t huy khả năng l&agrave;m việc để đem<br />\r\nlại mức thu nhập cao v&agrave; cơ hội thăng tiến giữ c&aacute;c chức vụ quản l&yacute;</p>\r\n\r\n<h3>Y&ecirc;u cầu c&ocirc;ng việc</h3>\r\n\r\n<p>+ Tốt nghiệp đại học<br />\r\n+Sử dụng th&agrave;nh thạo tiếng anh (nghe, n&oacute;i, đọc, viết)<br />\r\n+Th&agrave;nh thạo vi t&iacute;nh văn ph&ograve;ng (word, excel, email)<br />\r\n+Ưu ti&ecirc;n người c&oacute; kinh nghiệm nghiệp vụ trong ng&agrave;nh gỗ, nội thất<br />\r\n+Lanh lẹ, chịu kh&oacute; học hỏi. Chịu được &aacute;p lực cao, gắn b&oacute; l&acirc;u d&agrave;i với c&ocirc;ng việc.</p>', 'tuyen-dung-khan-nam-phong.jpg', '2020-07-28 09:18:27', '2020-07-29 10:55:58', 'tuyen-5-nhan-vien-ke-toan-kiem-toan'),
(2, 'Nhân Viên Vận Hành Máy đóng gói', '<p>- Vận h&agrave;nh m&aacute;y phay tiện CNC trong xưởng sản xuất<br />\r\n- Bảo tr&igrave;, bảo dưỡng định kỳ m&aacute;y tiện phay CNC, m&agrave;y c&ocirc;ng cụ ...<br />\r\n- Sửa chữa tại tu m&aacute;y tiện phay, m&aacute;y c&ocirc;ng cụ<br />\r\n- Chi tiết trao đổi khi phỏng vấn</p>', '<h3>M&ocirc; tả c&ocirc;ng việc</h3>\r\n\r\n<p>- Vận h&agrave;nh m&aacute;y phay tiện CNC trong xưởng sản xuất<br />\r\n- Bảo tr&igrave;, bảo dưỡng định kỳ m&aacute;y tiện phay CNC, m&agrave;y c&ocirc;ng cụ ...<br />\r\n- Sửa chữa tại tu m&aacute;y tiện phay, m&aacute;y c&ocirc;ng cụ<br />\r\n- Chi tiết trao đổi khi phỏng vấn</p>\r\n\r\n<h3>Quyền lợi được hưởng</h3>\r\n\r\n<p>- Thu nhập từ 6.000.000 - 10.000.0000/ th&aacute;ng<br />\r\n- Tăng ca ng&agrave;y thường nh&acirc;n 1.5, chủ nhật nh&acirc;n 1.5<br />\r\n- Quyền lợi được hưởng theo luật lao động: tham gia đầy đủ.<br />\r\n- L&agrave;m việc trong m&ocirc;i trường chuy&ecirc;n nghiệp</p>\r\n\r\n<h3>Y&ecirc;u cầu c&ocirc;ng việc</h3>\r\n\r\n<p>- Biết đọc được bản vẽ cơ kh&iacute;<br />\r\n- Biết vận h&agrave;nh m&aacute;y tiện phay CNC<br />\r\n- BIết sử dụng m&aacute;y t&iacute;nh<br />\r\n- C&oacute; &yacute; thức c&ocirc;ng việc, tu&acirc;n thủ đ&uacute;ng giờ đi l&agrave;m theo quy định của c&ocirc;ng ty<br />\r\n- Chấp nhận tăng ca.<br />\r\nL&agrave;m việc tại xưởng: Địa chỉ xưởng: A5/33 Li&ecirc;n ấp 1-2-3, Vĩnh Lộc A, B&igrave;nh Ch&aacute;nh</p>\r\n\r\n<h3>Y&ecirc;u cầu hồ sơ</h3>\r\n\r\n<p>Đơn xin việc.<br />\r\n- Sơ yếu l&yacute; lịch.<br />\r\n- Hộ khẩu, chứng minh nh&acirc;n d&acirc;n v&agrave; giấy kh&aacute;m sức khỏe.<br />\r\n- C&aacute;c bằng cấp c&oacute; li&ecirc;n quan.</p>', 'td1.jpg', '2020-07-28 09:21:29', '2020-07-29 10:55:46', 'nhan-vien-van-hanh-may-dong-goi'),
(3, 'Nhân Viên Kinh Doanh BĐS - Thu Nhập Từ 20 Triệu Trở Lên', '<p>- Tư vấn b&aacute;n h&agrave;ng.<br />\r\n- Chăm s&oacute;c kh&aacute;ch h&agrave;ng.<br />\r\n- T&igrave;m kiếm mở rộng nguồn kh&aacute;ch h&agrave;ng tiềm năng.<br />\r\n- Ph&aacute;t triển nghiệp vụ c&aacute; nh&acirc;n v&agrave; tham gia c&aacute;c hoạt động chung theo y&ecirc;u cầu.</p>', '<h3>M&ocirc; tả c&ocirc;ng việc</h3>\r\n\r\n<p>- Tư vấn b&aacute;n h&agrave;ng.<br />\r\n- Chăm s&oacute;c kh&aacute;ch h&agrave;ng.<br />\r\n- T&igrave;m kiếm mở rộng nguồn kh&aacute;ch h&agrave;ng tiềm năng.<br />\r\n- Ph&aacute;t triển nghiệp vụ c&aacute; nh&acirc;n v&agrave; tham gia c&aacute;c hoạt động chung theo y&ecirc;u cầu.</p>\r\n\r\n<h3>Quyền lợi được hưởng</h3>\r\n\r\n<p>+ Lương cơ bản lũy tiến l&ecirc;n đến 16.5tr/th&aacute;ng.<br />\r\n+ Hoa hồng CHI TRẢ NGAY l&ecirc;n đến 3%/gi&aacute; trị sản phẩm<br />\r\n+ Thưởng n&oacute;ng l&ecirc;n đến 100.000.000 vnd /sản phẩm<br />\r\n+ Tổng thu nhập từ 25 triệu đến 300 triệu/ th&aacute;ng.<br />\r\n+ Nắm giữ giỏ h&agrave;ng lớn, đa dạng loại h&igrave;nh sản phẩm: đất nền, nh&agrave; phố, căn hộ, bất động sản nghỉ dưỡng, villas,... (những dự &aacute;n đ&atilde; được DKRA Vega ph&acirc;n phối như: Nhơn Hội New City, Biệt thự compound cao cấp Sol Villas, Nh&agrave; phố ven s&ocirc;ng Hiep Phuoc Harbour View, Lavieen Hội An, Căn hộ cao cấp Eco Green Saigon, CitiGrand, Lavila Derio&hellip;)<br />\r\n+ Được bộ phận R&amp;D hỗ trợ th&ocirc;ng tin thị trường<br />\r\n+ Được đ&agrave;o tạo kiến thức v&agrave; kỹ năng b&aacute;n h&agrave;ng HO&Agrave;N TO&Agrave;N MIỄN PH&Iacute;<br />\r\n️+ Cơ hội thăng tiến nhanh ch&oacute;ng, bền vững trong sự nghiệp<br />\r\n️+ Hỗ trợ chi ph&iacute; Marketing<br />\r\n️+ M&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, ph&uacute;c lợi vượt trội: đồng phục, sinh nhật, cưới hỏi, du lịch h&agrave;ng năm trong v&agrave; ngo&agrave;i nước, kh&aacute;m sức khỏe định kỳ 1 lần/năm. 12 ng&agrave;y ph&eacute;p/năm, nghỉ lễ theo luật định.<br />\r\n️+ C&aacute;c khoản thưởng:Thưởng n&oacute;ng bằng hiện vật/hiện kim, giải thưởng Best Selller h&agrave;ng qu&yacute;, Thưởng hiệu quả kinh doanh cuối năm (0.9% doanh thu năm), Thưởng th&aacute;ng 13++, Thưởng lễ tết&hellip;</p>\r\n\r\n<h3>Y&ecirc;u cầu c&ocirc;ng việc</h3>\r\n\r\n<p>- Nam/ Nữ từ 22-30 tuổi.<br />\r\n- Tốt nghiệp Trung cấp chuy&ecirc;n nghiệp trở l&ecirc;n .<br />\r\n- Đam m&ecirc; kinh doanh.<br />\r\n- C&oacute; tinh thần cầu tiến, nhiệt huyết v&agrave; kh&aacute;t khao đạt thu nhập xứng đ&aacute;ng với năng lực l&agrave;m việc.</p>\r\n\r\n<h3>Y&ecirc;u cầu hồ sơ</h3>\r\n\r\n<p>- Đơn xin việc.<br />\r\n- Sơ yếu l&yacute; lịch.<br />\r\n- Hộ khẩu, chứng minh nh&acirc;n d&acirc;n v&agrave; giấy kh&aacute;m sức khỏe.<br />\r\n- C&aacute;c bằng cấp c&oacute; li&ecirc;n quan.</p>', 'tuyen-dung.png', '2020-07-28 09:22:38', '2020-07-29 10:55:29', 'nhan-vien-kinh-doanh-bds-thu-nhap-tu-20-trieu-tro-len'),
(4, 'Nhân Viên Kinh Doanh Du Lịch Lương Trên 20 Triệu', '<p>- Sale dịch vụ kh&aacute;ch sạn v&agrave; resort;<br />\r\n- Nhận đặt ph&ograve;ng đặt tour cho kh&aacute;ch;<br />\r\n- C&oacute; thể hỗ trợ th&ecirc;m c&aacute;c c&ocirc;ng việc văn ph&ograve;ng.</p>', '<h3>M&ocirc; tả c&ocirc;ng việc</h3>\r\n\r\n<p>- Sale dịch vụ kh&aacute;ch sạn v&agrave; resort;<br />\r\n- Nhận đặt ph&ograve;ng đặt tour cho kh&aacute;ch;<br />\r\n- C&oacute; thể hỗ trợ th&ecirc;m c&aacute;c c&ocirc;ng việc văn ph&ograve;ng.</p>\r\n\r\n<h3>Quyền lợi được hưởng</h3>\r\n\r\n<p>- Lương cứng 10 triệu + % hoa hồng;<br />\r\n- K&yacute; HĐLĐ, BHXH, BHTN, BHYT,.....<br />\r\n- Lương th&aacute;ng 13, x&eacute;t duyệt chế độ BH đầy đủ, thưởng th&aacute;ng,...<br />\r\n- C&oacute; cơ hội thăng tiến trong nghề nghiệp.</p>\r\n\r\n<h3>Y&ecirc;u cầu c&ocirc;ng việc</h3>\r\n\r\n<p>- Tốt nghiệp Đại học trở l&ecirc;n;<br />\r\n- Ưu ti&ecirc;n ng&agrave;nh: du lịch hoặc lữ h&agrave;nh du lịch;<br />\r\n- C&oacute; kinh nghiệm trong ng&agrave;nh quản trị kinh doanh kh&aacute;ch sạn;<br />\r\n- Khả năng giao tiếp tiếng anh tốt;<br />\r\n- Chịu được &aacute;p lực trong c&ocirc;ng việc, tinh thần cầu tiến.</p>\r\n\r\n<h3>Y&ecirc;u cầu hồ sơ</h3>\r\n\r\n<p>- CV c&aacute; nh&acirc;n<br />\r\n- Đơn xin việc<br />\r\n- Sơ yếu l&yacute; lịch<br />\r\n- Bằng cấp c&oacute; li&ecirc;n quan</p>', 'tuyen-dung1.jpg', '2020-07-28 09:23:38', '2020-07-29 10:55:15', 'nhan-vien-kinh-doanh-du-lich-luong-tren-20-trieu'),
(5, 'Nhân Viên Nghiệp Vụ Lương Từ 10-20 Triệu', '<p>+Nhận v&agrave; theo d&otilde;i đơn h&agrave;ng kh&aacute;ch xuống. Trao đổi với kh&aacute;ch h&agrave;ng về sản phẩm đang sản xuất, nếu c&oacute; thay đổi từ kh&aacute;ch<br />\r\nh&agrave;ng th&igrave; phải l&ecirc;n hệ thống thay đổi về t&igrave;nh h&igrave;nh h&agrave;ng h&oacute;a đến c&aacute;c bộ phận li&ecirc;n quan: thu mua, bản vẽ, sản xuất<br />\r\n+Sắp xếp thời gian cho kh&aacute;ch đến kiểm h&agrave;ng mẫu, nghiệm thu h&agrave;ng sản xuất<br />\r\n+Theo d&otilde;i đơn h&agrave;ng, tiến độ h&agrave;ng xuất để th&ocirc;ng b&aacute;o cho kh&aacute;ch h&agrave;ng được biết.</p>', '<h3>M&ocirc; tả c&ocirc;ng việc</h3>\r\n\r\n<p>+Nhận v&agrave; theo d&otilde;i đơn h&agrave;ng kh&aacute;ch xuống. Trao đổi với kh&aacute;ch h&agrave;ng về sản phẩm đang sản xuất, nếu c&oacute; thay đổi từ kh&aacute;ch<br />\r\nh&agrave;ng th&igrave; phải l&ecirc;n hệ thống thay đổi về t&igrave;nh h&igrave;nh h&agrave;ng h&oacute;a đến c&aacute;c bộ phận li&ecirc;n quan: thu mua, bản vẽ, sản xuất<br />\r\n+Sắp xếp thời gian cho kh&aacute;ch đến kiểm h&agrave;ng mẫu, nghiệm thu h&agrave;ng sản xuất<br />\r\n+Theo d&otilde;i đơn h&agrave;ng, tiến độ h&agrave;ng xuất để th&ocirc;ng b&aacute;o cho kh&aacute;ch h&agrave;ng được biết.<br />\r\n+L&agrave;m việc nội bộ với nh&agrave; m&aacute;y<br />\r\n+L&agrave;m b&aacute;o c&aacute;o<br />\r\n+L&agrave;m việc v&agrave; giải đ&aacute;p thắc mắc với kh&aacute;ch h&agrave;ng qua Email v&agrave; trực tiếp</p>\r\n\r\n<h3>Quyền lợi được hưởng</h3>\r\n\r\n<p>+Mức lương: thương lượng<br />\r\n+Được hưởng đầy đủ chế độ v&agrave; quyền lợi: đ&oacute;ng BHXH,BHYT, BHTN<br />\r\n+Thời gian l&agrave;m việc: Giờ h&agrave;nh ch&iacute;nh<br />\r\n+Được l&agrave;m việc trong m&ocirc;i trường trẻ trung, năng động, cạnh tranh tr&ecirc;n tinh thần hợp t&aacute;c, được chủ dộng v&agrave; s&aacute;ng tạo trong<br />\r\nc&ocirc;ng việc<br />\r\n+Tham gia bảo hiểm, nghỉ c&aacute;c ng&agrave;y lễ, tết theo quy định của của ph&aacute;p luật v&agrave; c&ocirc;ng ty khi đượ k&iacute; hợp đồng lao động d&agrave;i<br />\r\nhạn<br />\r\n+M&ocirc;i trường l&agrave;m việc năng dộng,cạnh tranh l&agrave;nh mạnh, tạo điều kiện cho nh&acirc;n vi&ecirc;n ph&aacute;t huy khả năng l&agrave;m việc để đem<br />\r\nlại mức thu nhập cao v&agrave; cơ hội thăng tiến giữ c&aacute;c chức vụ quản l&yacute;</p>\r\n\r\n<h3>Y&ecirc;u cầu c&ocirc;ng việc</h3>\r\n\r\n<p>+ Tốt nghiệp đại học<br />\r\n+Sử dụng th&agrave;nh thạo tiếng anh (nghe, n&oacute;i, đọc, viết)<br />\r\n+Th&agrave;nh thạo vi t&iacute;nh văn ph&ograve;ng (word, excel, email)<br />\r\n+Ưu ti&ecirc;n người c&oacute; kinh nghiệm nghiệp vụ trong ng&agrave;nh gỗ, nội thất<br />\r\n+Lanh lẹ, chịu kh&oacute; học hỏi. Chịu được &aacute;p lực cao, gắn b&oacute; l&acirc;u d&agrave;i với c&ocirc;ng việc.</p>', 'tuyen-dung.png', '2020-07-28 09:24:34', '2020-07-29 10:55:00', 'nhan-vien-nghiep-vu-luong-tu-10-20-trieu'),
(6, 'Nhân Viên Giao Nhận Hiện Trường Làm Việc Tại tp Hồ Chí Minh', '<p>+ Nh&acirc;n vi&ecirc;n đại l&iacute; k&ecirc; khai thuế hải quan</p>\r\n\r\n<p>+ Lấy lệnh giao h&agrave;ng, cược cont, lấy cược,...</p>\r\n\r\n<p>+ K&yacute;/ nhận chứng từ; giao/ trả chứng từ</p>\r\n\r\n<p>+ Đăng k&yacute; kiểm tra chất lượng, kiểm dịch thực vật,.....</p>', '<h3>M&Ocirc; TẢ C&Ocirc;NG VIỆC</h3>\r\n\r\n<p>+ Nh&acirc;n vi&ecirc;n đại l&iacute; k&ecirc; khai thuế hải quan</p>\r\n\r\n<p>+ Lấy lệnh giao h&agrave;ng, cược cont, lấy cược,...</p>\r\n\r\n<p>+ K&yacute;/ nhận chứng từ; giao/ trả chứng từ</p>\r\n\r\n<p>+ Đăng k&yacute; kiểm tra chất lượng, kiểm dịch thực vật,.....</p>\r\n\r\n<p>+ Xin C/O, lấy C/O</p>\r\n\r\n<p>+ Mở tờ khai, kiểm h&oacute;a.</p>\r\n\r\n<p>+ Đăng k&yacute;/ Lấy mẫu gi&aacute;m định, lấy chứng thư gi&aacute;m định</p>\r\n\r\n<p>+ Lấy h&agrave;ng/ Ra Eir/ Thanh L&yacute;.</p>\r\n\r\n<p>+ Ph&acirc;n loại h&agrave;ng h&oacute;a tại kho ( sort h&agrave;ng).</p>\r\n\r\n<p>+ Gia cố, đ&oacute;ng kiện h&agrave;ng.</p>\r\n\r\n<p>+ Bốc xếp, lấy/giao h&agrave;ng tại c&ocirc;ng ty/ kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>+ Gi&aacute;m s&aacute;t, kiểm đếm, hỗ trợ đ&oacute;ng h&agrave;ng/giao h&agrave;ng tại địa điểm được chỉ định.</p>\r\n\r\n<p>+ Điều phối đ&oacute;ng h&agrave;ng; kiểm tra xe trước khi v&agrave;o đ&oacute;ng h&agrave;ng tại địa điểm được chỉ định.</p>\r\n\r\n<p>+ Hỗ trợ dọn dẹp kho/ b&atilde;i c&ocirc;ng ty theo định kỳ;</p>\r\n\r\n<p>- C&aacute;c c&ocirc;ng việc kh&aacute;c theo sự ph&acirc;n c&ocirc;ng của Trưởng ph&ograve;ng.</p>\r\n\r\n<h3>Y&Ecirc;U CẦU C&Ocirc;NG VIỆC</h3>\r\n\r\n<p>- Nam</p>\r\n\r\n<p>- Cẩn thận, trung thực</p>\r\n\r\n<p>- Mong muốn gắn b&oacute; l&acirc;u d&agrave;i với c&ocirc;ng ty</p>\r\n\r\n<h3>TH&Ocirc;NG TIN KH&Aacute;C</h3>\r\n\r\n<ul>\r\n	<li>Bằng cấp: Trung cấp</li>\r\n	<li>Giới t&iacute;nh: Nam</li>\r\n	<li>Phụ cấp kh&aacute;c: Phụ cấp xăng xe, phụ cấp điện thoại</li>\r\n	<li>Thời gian thử việc: 02 th&aacute;ng</li>\r\n	<li>Cơ hội huấn luyện: Được đ&agrave;o tạo b&agrave;i bản c&aacute;c kỹ năng nghiệp vụ, tư vấn chăm s&oacute;c KH, c&aacute;c kỹ năng l&agrave;m việc chuy&ecirc;n nghiệp</li>\r\n	<li>Độ tuổi: Kh&ocirc;ng giới hạn tuổi</li>\r\n	<li>Thời gian l&agrave;m việc: 8h/ng&agrave;y</li>\r\n	<li>Đồng nghiệp: Đồng nghiệp th&acirc;n thiện, h&ograve;a đồng. thường xuy&ecirc;n tổ chức c&aacute;c hoạt động team building</li>\r\n	<li>Ph&uacute;c lợi:\r\n	<p>Thưởng th&aacute;ng 13, thưởng cuối năm<br />\r\n	Tổ chức sinh nhật theo qu&yacute;<br />\r\n	Xem x&eacute;t tăng lương 3 th&aacute;ng/lần</p>\r\n	</li>\r\n	<li>Ng&agrave;y nghỉ: nghỉ từ chiều thứ 7, chủ nhật</li>\r\n</ul>', 'tuyen-dung-khan-nam-phong.jpg', '2020-07-28 09:25:22', '2020-07-29 10:54:46', 'nhan-vien-giao-nhan-hien-truong-lam-viec-tai-tp-ho-chi-minh'),
(7, 'Tuyển nv thiết bị an ninh, Máy soi hành lý & hàng hóa, Máy dò kim loại', '<p>&bull; Chịu tr&aacute;ch nhiệm doanh số b&aacute;n h&agrave;ng, quản l&yacute; kh&aacute;ch h&agrave;ng, b&aacute;o gi&aacute;, đ&agrave;m ph&aacute;n hợp đồng v&agrave; th&acirc;m nhập thị trường mới</p>\r\n\r\n<p>&bull; Ph&aacute;t triển thị trường, mở rộng mạng lưới kh&aacute;ch</p>\r\n\r\n<p>&bull; X&acirc;y dựng mối quan hệ chặt chẽ với kh&aacute;ch h&agrave;ng v&agrave; duy tr&igrave; li&ecirc;n lạc trực tiếp với c&aacute;c kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&bull; Bất kỳ nhiệm vụ n&agrave;o kh&aacute;c theo sự ph&acirc;n c&ocirc;ng của cấp tr&ecirc;n trực tiếp</p>\r\n\r\n<p>123</p>', '<h3>M&Ocirc; TẢ C&Ocirc;NG VIỆC</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Sản phẩm kinh doanh : Thiết bị an ninh, M&aacute;y soi h&agrave;nh l&yacute; &amp; h&agrave;ng h&oacute;a, M&aacute;y d&ograve; kim loại</strong></p>\r\n	</li>\r\n	<li>\r\n	<p>T&igrave;m hiểu v&agrave; nắm vững c&aacute;c sản phẩm c&ocirc;ng ty Kinh doanh</p>\r\n\r\n	<p>&bull; Chịu tr&aacute;ch nhiệm doanh số b&aacute;n h&agrave;ng, quản l&yacute; kh&aacute;ch h&agrave;ng, b&aacute;o gi&aacute;, đ&agrave;m ph&aacute;n hợp đồng v&agrave; th&acirc;m nhập thị trường mới</p>\r\n\r\n	<p>&bull; Ph&aacute;t triển thị trường, mở rộng mạng lưới kh&aacute;ch</p>\r\n\r\n	<p>&bull; X&acirc;y dựng mối quan hệ chặt chẽ với kh&aacute;ch h&agrave;ng v&agrave; duy tr&igrave; li&ecirc;n lạc trực tiếp với c&aacute;c kh&aacute;ch h&agrave;ng.</p>\r\n\r\n	<p>&bull; Bất kỳ nhiệm vụ n&agrave;o kh&aacute;c theo sự ph&acirc;n c&ocirc;ng của cấp tr&ecirc;n trực tiếp</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Y&Ecirc;U CẦU C&Ocirc;NG VIỆC</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>&nbsp;Tốt nghiệp Đại học, Cao đẳng c&aacute;c chuy&ecirc;n ng&agrave;nh li&ecirc;n quan đến Kỹ thuật, Kinh tế.</p>\r\n\r\n	<p>&bull; Tối thiểu 2 năm kinh nghiệm b&aacute;n h&agrave;ng Kỹ thuật, tự động h&oacute;a sản xuất, Điện, An ninh, Quốc ph&ograve;ng.</p>\r\n\r\n	<p>&bull; C&oacute; bằng l&aacute;i xe &ocirc; t&ocirc;</p>\r\n\r\n	<p>&bull; C&oacute; thể đi c&ocirc;ng t&aacute;c thường xuy&ecirc;n .</p>\r\n\r\n	<p>&bull; C&oacute; thế mạnh trong quản l&yacute; quan hệ kh&aacute;ch h&agrave;ng v&agrave; kết nối mạng</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>&nbsp;*Benefit:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>- Lương thỏa thuận theo năng lực, kết quả c&ocirc;ng việc<br />\r\n	- Thưởng theo doanh số đạt được h&agrave;ng th&aacute;ng/qu&yacute;/năm, % Hoa hồng b&aacute;n h&agrave;ng.<br />\r\n	- Trợ cấp ăn trưa tại c&ocirc;ng ty. Trợ cấp đi lại, c&ocirc;ng t&aacute;c gặp gỡ kh&aacute;ch h&agrave;ng.<br />\r\n	- Được thưởng v&agrave;o c&aacute;c dịp lễ, Tết<br />\r\n	- Được hưởng chế độ BHXH, BHYT, BHTN theo luật lao động</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>TH&Ocirc;NG TIN KH&Aacute;C</h3>\r\n\r\n<ul>\r\n	<li>Bằng cấp: Đại học</li>\r\n	<li>H&igrave;nh thức: Nh&acirc;n vi&ecirc;n ch&iacute;nh thức</li>\r\n	<li>Độ tuổi: Kh&ocirc;ng giới hạn tuổi</li>\r\n</ul>', 'tuyen-dung-khan-nam-phong.jpg', '2020-07-28 09:27:54', '2020-07-29 10:54:06', 'tuyen-nv-thiet-bi-an-ninh-may-soi-hanh-ly-hang-hoa-may-do-kim-loai');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `title`, `link`, `description`, `image`) VALUES
(1, 'Sản phẩm dành cho người lớn', '/san-pham/danh-cho-nguoi-lon/1', 'Sản phẩm dành cho người lớn', 'canxi.png'),
(2, 'Sản phẩm dành cho trẻ em', '/san-pham/danh-cho-tre-em/2', 'Sản phẩm dành cho trẻ em', 'Grow.png'),
(3, 'Sản phẩm khác', '/', 'Sản phẩm khác', 'Goldcare-Nano.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`) VALUES
(5, 'alextran', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$LkRTZ0ljZWZRdllsYjVKYQ$LSPXOEZ82rwp+9lVqc6VwjLu0K+IYh+AnsKAq0rVtSc'),
(6, 'admin', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$Yk9WQm9nMjJCbWpjS056Tw$CQkEE2R7GgNkp8K3vYqmrubQJRuFOXMcufL0nQJzOPw');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distribution`
--
ALTER TABLE `distribution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intro`
--
ALTER TABLE `intro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7D053A93727ACA70` (`parent_id`);

--
-- Indexes for table `menu_footer`
--
ALTER TABLE `menu_footer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_31765D8B727ACA70` (`parent_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD12469DE2` (`category_id`);

--
-- Indexes for table `product_block`
--
ALTER TABLE `product_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `distribution`
--
ALTER TABLE `distribution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `intro`
--
ALTER TABLE `intro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `menu_footer`
--
ALTER TABLE `menu_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_block`
--
ALTER TABLE `product_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `FK_7D053A93727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `menu` (`id`);

--
-- Constraints for table `menu_footer`
--
ALTER TABLE `menu_footer`
  ADD CONSTRAINT `FK_31765D8B727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `menu_footer` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
