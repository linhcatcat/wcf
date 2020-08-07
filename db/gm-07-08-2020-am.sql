-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2020 at 06:31 AM
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
(11, 'Alex 456', 'alex@likipe.se', 'Hello 456', 'Hello chao nhé', '2020-07-30 06:11:39'),
(12, 'Linh Tran', 'linhcatcat@gmail.com', 'Hello WincoFood', 'Xin chao WincoFood', '2020-07-31 10:44:47'),
(13, 'Tran Cat Linh', 'trancatlinh@gmail.com', 'Cần gấp 100 thùng sữa', 'Cần gấp gấp lắm 100 thùng sữa', '2020-07-31 10:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `contact_block`
--

CREATE TABLE `contact_block` (
  `id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_block`
--

INSERT INTO `contact_block` (`id`, `content`) VALUES
(1, '<p style=\"text-align:center\"><span style=\"font-size:24px\">C&Ocirc;NG TY CỔ PHẦN WINCOFOOD</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong><span style=\"color:#c0392b\">[ Địa chỉ ]:</span></strong>&nbsp;82 ĐƯỜNG 13,P. B&Igrave;NH TRỊ Đ&Ocirc;NG B, Q. B&Igrave;NH T&Acirc;N, TPHCM</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong><span style=\"color:#c0392b\">[ Điện thoại ]:</span></strong>&nbsp;028. 36203687 - 028. 62718587</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong><span style=\"color:#c0392b\">[ Fax ]:</span></strong>&nbsp;028. 36203689</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong><span style=\"color:#c0392b\">[ Email ]:</span></strong>&nbsp;wincofoodinfo@gmail.com</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong><span style=\"color:#c0392b\">[ Website ]:</span></strong>&nbsp;www.wincofood.com.vn</span></p>');

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
(6, 'Thông tin dinh dưỡng', '/thong-tin-dinh-duong', NULL, 4, 1),
(7, 'Hệ thống phân phối', '/he-thong-phan-phoi', NULL, 3, 0),
(13, 'Tuyển dụng', '/tuyen-dung', NULL, 5, 0),
(17, 'Giới Thiệu', '/gioi-thieu', NULL, 1, 0),
(18, 'Sữa cho người bệnh', '/san-pham/danh-muc/3/cho-nguoi-benh', 2, 2, 0),
(19, 'Liên hệ', '/lien-he', NULL, 6, 0),
(20, 'Dinh dưỡng cho trẻ em', '/thong-tin-dinh-duong/danh-muc/1/dinh-duong-cho-tre-em', 6, 2, 0),
(21, 'Dinh dưỡng theo bệnh lý', '/thong-tin-dinh-duong/danh-muc/2/dinh-duong-theo-benh-ly', 6, 1, 0),
(22, 'Suy dinh dưỡng trẻ em', '/thong-tin-dinh-duong/danh-muc/3/suy-dinh-duong-tre-em', 6, 0, 0);

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
  `check_parent` tinyint(1) NOT NULL DEFAULT 0,
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_footer`
--

INSERT INTO `menu_footer` (`id`, `parent_id`, `name`, `link`, `sort`, `check_parent`, `target`) VALUES
(1, NULL, 'Liên kết nhanh', '#', 0, 1, '_self'),
(2, NULL, 'Sản phẩm của WincoFood', '#', 1, 1, '_self'),
(3, NULL, 'Thông tin dinh dưỡng', '#', 2, 1, '_self'),
(4, 1, 'Tuyển Dụng', '/tuyen-dung', 2, 0, '_self'),
(5, 1, 'Liên hệ', '/lien-he', 3, 0, '_self'),
(6, 1, 'Hệ thống phân phối', '/he-thong-phan-phoi', 4, 0, '_self'),
(7, 2, 'Cho người bệnh', '/san-pham/danh-muc/3/cho-nguoi-benh', 0, 0, '_self'),
(8, 2, 'Sữa cho trẻ em', '/san-pham/danh-muc/2/sua-danh-cho-tre-em', 1, 0, '_self'),
(9, 2, 'Sữa cho người lớn', '/san-pham/danh-muc/1/sua-danh-cho-nguoi-lon', 2, 0, '_self'),
(10, 3, 'Dinh dưỡng cho trẻ em', '/thong-tin-dinh-duong/danh-muc/1/dinh-duong-cho-tre-em', 1, 0, '_self'),
(11, 3, 'Dinh dưỡng theo bệnh lý', '/thong-tin-dinh-duong/danh-muc/2/dinh-duong-theo-benh-ly', 0, 0, '_self'),
(12, 3, 'Suy dinh dưỡng trẻ em', '/thong-tin-dinh-duong/danh-muc/3/suy-dinh-duong-tre-em', 2, 0, '_self'),
(13, 1, 'Giới Thiệu', '/gioi-thieu', 1, 0, '_self'),
(14, 1, 'Thông báo', '/thong-bao', 0, 0, '_self'),
(15, 1, 'Kênh WincoFood', 'https://www.youtube.com/user/NutiFoodVietNam', 5, 0, '_blank');

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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `content`, `active`, `created_at`, `image`, `slug`) VALUES
(1, 'Thông báo nghỉ tết âm lich 2021', '<p style=\"text-align:justify\"><span style=\"font-size:20px\">Tết &acirc;m lịch đ&atilde; đến rất gần rồi, c&aacute;c c&ocirc;ng ty cần phải l&ecirc;n kế hoạch sớm cho&nbsp;<a href=\"https://hoatieu.vn/lich-nghi-tet-am-lich-133737\">lịch nghỉ tết</a>&nbsp;của nh&acirc;n vi&ecirc;n cũng như c&aacute;c chế độ ph&uacute;c lợi của nh&acirc;n vi&ecirc;n v&agrave;o dịp Tết. Hiện nay c&ugrave;ng ph&aacute;t triển với thời đại c&ocirc;ng nghệ 4.0 n&ecirc;n hầu hết c&aacute;c c&ocirc;ng ty, doanh nghiệp đều c&oacute; c&aacute;c trang web ri&ecirc;ng hay c&aacute;c trang fanpage của c&ocirc;ng ty. </span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:20px\">V&igrave; vậy ngo&agrave;i việc ra th&ocirc;ng b&aacute;o lịch nghỉ tết bằng văn bản th&igrave; c&aacute;c c&ocirc;ng ty thường đăng tải c&aacute;c banner th&ocirc;ng b&aacute;o lịch nghỉ tết hay c&aacute;c ảnh đăng tin lịch nghỉ tết của c&ocirc;ng ty để c&aacute;c nh&acirc;n vi&ecirc;n cũng như người ti&ecirc;u d&ugrave;ng v&agrave; đối t&aacute;c nắm được. </span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:20px\">Dưới đ&acirc;y l&agrave; mẫu banner th&ocirc;ng b&aacute;o lịch nghỉ Tết, hoatieu.vn đ&atilde; để sẵn file tải ở dạng PSD, c&aacute;c bạn chỉ cần sử dụng file tải v&agrave; v&agrave;o c&ocirc;ng cụ Text của photoshop để chỉnh sửa nội dung theo &yacute; của m&igrave;nh. </span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:20px\">Hoặc c&aacute;c bạn c&oacute; thể sử dụng lu&ocirc;n nội dung tr&ecirc;n ảnh th&ocirc;ng b&aacute;o lịch nghỉ tết cũng rất ph&ugrave; hợp với lịch nghỉ Tết &acirc;m lịch năm 2020.</span></p>', 0, '2020-07-30 06:53:30', 'thong-bao1.png', 'thong-bao-nghi-tet-am-lich-2021'),
(2, 'Thông báo nghỉ dich covy 19', '<p>Chiều 30-7, GS.TS Nguyễn Trọng Ho&agrave;i - ph&oacute; hiệu trưởng Trường ĐH Kinh tế TP.HCM - cho biết tr&ecirc;n cơ sở kết luận của Ban chỉ đạo ph&ograve;ng chống dịch COVID-19, trường th&ocirc;ng b&aacute;o đến người học của c&aacute;c hệ/bậc v&agrave; giảng vi&ecirc;n to&agrave;n trường được&nbsp;nghỉ học&nbsp;từ ng&agrave;y 3-8 đến hết 9-8.</p>\r\n\r\n<p>Sau thời gian nghỉ học, người học v&agrave; giảng vi&ecirc;n thực hiện việc giảng dạy v&agrave; học tập theo đ&uacute;ng thời kh&oacute;a biểu như đ&atilde; th&ocirc;ng b&aacute;o. C&aacute;c buổi học trong thời gian nghỉ, giảng vi&ecirc;n giảng b&ugrave; bằng h&igrave;nh thức online hay tập trung phải c&oacute; sự đồng thuận giữa giảng vi&ecirc;n v&agrave; người học.</p>', 0, '2020-07-31 06:44:15', 'thong-bao2.jpg', 'thong-bao-nghi-dich-covy-19'),
(3, 'THÔNG BÁO VỀ 45 CA MẮC MỚI COVID-19 Ở ĐÀ NẴNG', '<p><span style=\"font-size:20px\">TH&Ocirc;NG B&Aacute;O VỀ 45 CA MẮC MỚI COVID-19 Ở Đ&Agrave; NẴNG (BN465 đến BN509, được ph&aacute;t hiện trong khi đ&atilde; c&aacute;ch ly, kh&ocirc;ng c&oacute; nguy cơ l&acirc;y lan tiếp ra cộng đồng): </span></p>\r\n\r\n<p><span style=\"font-size:20px\">45 bệnh nh&acirc;n c&oacute; độ tuổi từ 27-87 tuổi, trong đ&oacute; c&oacute;: 33 trường hợp tại Bệnh viện Đ&agrave; Nẵng, 4 trường hợp tại Bệnh viện Phổi Đ&agrave; Nẵng, 2 trường hợp tại Bệnh viện ung bướu Đ&agrave; Nẵng, 4 trường hợp tại Kh&aacute;ch sạn thu dung c&aacute;ch ly bệnh nh&acirc;n thận nh&acirc;n tạo của Bệnh viện Đ&agrave; Nẵng - quận Sơn Tr&agrave;, 2 trường hợp tại Trung t&acirc;m Y tế Cẩm Lệ, Đ&agrave; Nẵng. </span></p>\r\n\r\n<p><span style=\"font-size:20px\">Qua điều tra, gi&aacute;m s&aacute;t dịch tễ, Trung t&acirc;m Kiểm so&aacute;t Bệnh tật Đ&agrave; Nẵng đ&atilde; lấy mẫu, x&eacute;t nghiệm c&aacute;c trường hợp c&aacute;ch ly tại cơ sở y tế, kết quả x&eacute;t nghiệm ng&agrave;y 30/7 c&oacute; 45 mẫu dương t&iacute;nh với virus SARS-CoV-2.</span></p>', 0, '2020-07-31 06:44:58', 'thong-bao1.png', 'thong-bao-ve-45-ca-mac-moi-covid-19-o-da-nang'),
(4, 'THÔNG BÁO VỀ 5 CA MẮC COVID-19 TẠI QUẢNG NAM', '<p><span style=\"font-size:20px\">L&agrave; c&aacute;c ca l&acirc;y nhiễm trong cộng đồng. BN460: nữ, 49 tuổi, ở x&atilde; Đại Nghĩa, huyện Đại Lộc, tỉnh Quảng Nam. Ng&agrave;y 18/6-20/7/2020, bệnh nh&acirc;n chăm s&oacute;c chồng tại Khoa Hồi sức t&iacute;ch cực chống độc Bệnh viện Đ&agrave; Nẵng. </span></p>\r\n\r\n<p><span style=\"font-size:20px\">Ng&agrave;y 23/7/2020, bệnh nh&acirc;n bị đau đầu, mệt, đau họng. BN461: nữ, 45 tuổi, ở phường Sơn Phong, TP. Hội An, tỉnh Quảng Nam. Ng&agrave;y 13-14/7/2020, bệnh nh&acirc;n đến khoa Hồi sức t&iacute;ch cực chống độc Bệnh viện Đ&agrave; Nẵng để chăm s&oacute;c mẹ bị ốm. </span></p>\r\n\r\n<p><span style=\"font-size:20px\">Ng&agrave;y 26/7/2020, bệnh nh&acirc;n c&oacute; dấu hiệu mệt mỏi. BN462: nam, 53 tuổi, ở phường Minh An, TP. Hội An, tỉnh Quảng Nam. Ng&agrave;y 24/7/2020, bệnh nh&acirc;n chăm s&oacute;c bố l&agrave; BN428 tại khoa Nội - Tiết niệu Bệnh viện Đ&agrave; Nẵng. </span></p>\r\n\r\n<p><span style=\"font-size:20px\">BN463: nữ, 45 tuổi, ở Cẩm Nam, TP. Hội An, tỉnh Quảng Nam. Ng&agrave;y 21/7/2020, bệnh nh&acirc;n chăm s&oacute;c bố l&agrave; BN428 tại khoa Nội - Tiết niệu Bệnh viện Đ&agrave; Nẵng. </span></p>\r\n\r\n<p><span style=\"font-size:20px\">BN464: nữ, 69 tuổi, ở phường Minh An, th&agrave;nh phố Hội An, tỉnh Quảng Nam. Ng&agrave;y 18/07/2020, bệnh nh&acirc;n đi thăm BN428.</span></p>', 0, '2020-07-31 06:52:56', 'thong-bao2.jpg', 'thong-bao-ve-5-ca-mac-covid-19-tai-quang-nam'),
(5, 'THÔNG BÁO VỀ 9 CA MẮC MỚI COVID-19', '<p><span style=\"font-size:20px\">L&agrave; c&aacute;c ca l&acirc;y nhiễm trong cộng đồng, gồm 8 ca ở Đ&agrave; Nẵng, 1 ca ở H&agrave; Nội. </span></p>\r\n\r\n<p><span style=\"font-size:20px\">BN451: nữ, 36 tuổi, điều dưỡng Bệnh viện Đ&agrave; Nẵng. </span></p>\r\n\r\n<p><span style=\"font-size:20px\">BN452: nam, 52 tuổi, bệnh nh&acirc;n tại Bệnh viện Đ&agrave; Nẵng. </span></p>\r\n\r\n<p><span style=\"font-size:20px\">BN453: nữ, 56 tuổi, bệnh nh&acirc;n tại Bệnh viện Đ&agrave; Nẵng. </span></p>\r\n\r\n<p><span style=\"font-size:20px\">BN454: nữ, 65 tuổi, l&agrave; người nh&agrave; chăm s&oacute;c bệnh nh&acirc;n tại Bệnh viện Đ&agrave; Nẵng. </span></p>\r\n\r\n<p><span style=\"font-size:20px\">BN455: nữ, 32 tuổi, l&agrave; bệnh nh&acirc;n tại Bệnh viện Đ&agrave; Nẵng. BN456: nữ, 57 tuổi, ở đường Hải Ph&ograve;ng, quận Hải Ch&acirc;u, Đ&agrave; Nẵng. </span></p>\r\n\r\n<p><span style=\"font-size:20px\">BN457: nam, 70 tuổi, ở H&ugrave;ng Vương, quận Hải Ch&acirc;u, Đ&agrave; Nẵng. BN458: nữ, 38 tuổi, ở H&ograve;a Sơn, H&ograve;a Vang, Đ&agrave; Nẵng. </span></p>\r\n\r\n<p><span style=\"font-size:20px\">BN459: nam, 76 tuổi, ở Ho&agrave;ng Hoa Th&aacute;m, T&acirc;y Hồ, H&agrave; Nội, bệnh nh&acirc;n đi Đ&agrave; Nẵng khoảng 3 tuần nay, ng&agrave;y 21/7 đến kh&aacute;m, x&eacute;t nghiệm tại Bệnh viện C Đ&agrave; Nẵng, ng&agrave;y 25/7 ra H&agrave; Nội.</span></p>', 0, '2020-07-31 07:15:46', 'thong-bao2.jpg', 'thong-bao-ve-9-ca-mac-moi-covid-19'),
(6, 'THÔNG BÁO VỀ 8 CA MẮC MỚI COVID-19 TẠI ĐÀ NẴNG (BN439 - BN446)', '<p><span style=\"font-size:20px\">C&aacute;c bệnh nh&acirc;n từ BN439 đến BN442 c&ugrave;ng l&agrave; nữ giới, tuổi từ 41 - 68, đều l&agrave; người nh&agrave; chăm bệnh nh&acirc;n tại Bệnh viện Đ&agrave; Nẵng. </span></p>\r\n\r\n<p><span style=\"font-size:20px\">BN443, nữ, 63 tuổi, l&agrave; bệnh nh&acirc;n tại Bệnh viện Đ&agrave; Nẵng. </span></p>\r\n\r\n<p><span style=\"font-size:20px\">BN444, nam, 19 tuổi, l&agrave; bệnh nh&acirc;n tại Bệnh viện Phổi Đ&agrave; Nẵng. BN445, nữ, 61 tuổi, l&agrave; bệnh nh&acirc;n tại Khoa Mắt, Bệnh viện C Đ&agrave; Nẵng. </span></p>\r\n\r\n<p><span style=\"font-size:20px\">BN446, nữ, 39 tuổi, ở Cẩm Lệ, Đ&agrave; Nẵng, l&agrave; bệnh nh&acirc;n tại Bệnh viện Giao th&ocirc;ng vận tải, Đ&agrave; Nẵng. </span></p>\r\n\r\n<p><span style=\"font-size:20px\">Trung t&acirc;m Kiểm so&aacute;t bệnh tật Đ&agrave; Nẵng tiếp tục điều tra dịch tễ, lập danh s&aacute;ch c&aacute;c trường hợp tiếp x&uacute;c gần, xử l&yacute; triệt để ổ dịch theo quy định kh&ocirc;ng để l&acirc;y lan.</span></p>', 1, '2020-07-31 07:18:05', 'thong-bao1.png', 'thong-bao-ve-8-ca-mac-moi-covid-19-tai-da-nang-bn439-bn446');

-- --------------------------------------------------------

--
-- Table structure for table `nutrition_category`
--

CREATE TABLE `nutrition_category` (
  `id` int(11) NOT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nutrition_category`
--

INSERT INTO `nutrition_category` (`id`, `name`, `slug`, `description`, `created_at`) VALUES
(1, 'Dinh dưỡng cho trẻ em', 'dinh-duong-cho-tre-em', 'Dinh dưỡng cho trẻ em', '2020-08-03 12:01:00'),
(2, 'Dinh dưỡng theo bệnh lý', 'dinh-duong-theo-benh-ly', 'Dinh dưỡng theo bệnh lý', '2020-08-03 12:03:04'),
(3, 'Suy dinh dưỡng trẻ em', 'suy-dinh-duong-tre-em', 'Suy dinh dưỡng trẻ em', '2020-08-03 12:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `nutrition_information`
--

CREATE TABLE `nutrition_information` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nutrition_information`
--

INSERT INTO `nutrition_information` (`id`, `category_id`, `title`, `slug`, `summary`, `content`, `image`, `updated_at`) VALUES
(1, 1, 'Để con thông minh, mẹ cần làm ngay', 'de-con-thong-minh-me-can-lam-ngay', '<p><strong>L&agrave; mẹ, kh&ocirc;ng ai kh&ocirc;ng mong muốn con m&igrave;nh sau n&agrave;y sẽ gặt g&aacute;i được nhiều th&agrave;nh c&ocirc;ng. Muốn được vậy, bố mẹ cần phải đầu tư cho việc nu&ocirc;i dạy con c&aacute;i như thế n&agrave;o?</strong></p>\r\n\r\n<p>Khoa học đ&atilde; chứng minh, di truyền chỉ tham gia 20-40% v&agrave;o tr&iacute; th&ocirc;ng minh của trẻ v&agrave; một đứa trẻ c&oacute; th&agrave;nh c&ocirc;ng hay kh&ocirc;ng sẽ phụ thuộc rất nhiều v&agrave;o chế độ dinh dưỡng, mội trường chăm s&oacute;c gi&aacute;o dục v&agrave; sự nỗ lực học hỏi của con.</p>', '<p><strong>L&agrave; mẹ, kh&ocirc;ng ai kh&ocirc;ng mong muốn con m&igrave;nh sau n&agrave;y sẽ gặt g&aacute;i được nhiều th&agrave;nh c&ocirc;ng. Muốn được vậy, bố mẹ cần phải đầu tư cho việc nu&ocirc;i dạy con c&aacute;i như thế n&agrave;o?</strong></p>\r\n\r\n<p>Khoa học đ&atilde; chứng minh, di truyền chỉ tham gia 20-40% v&agrave;o tr&iacute; th&ocirc;ng minh của trẻ v&agrave; một đứa trẻ c&oacute; th&agrave;nh c&ocirc;ng hay kh&ocirc;ng sẽ phụ thuộc rất nhiều v&agrave;o chế độ dinh dưỡng, mội trường chăm s&oacute;c gi&aacute;o dục v&agrave; sự nỗ lực học hỏi của con.</p>\r\n\r\n<p>Ch&uacute;ng ta biết, hệ thần kinh của trẻ bắt đầu h&igrave;nh th&agrave;nh ngay từ khi thụ thai v&agrave; sẽ ph&aacute;t triển nhanh từ tuần lễ thứ 8 của thai kỳ. Khi ch&agrave;o đời, n&atilde;o trẻ đ&atilde; bằng 25% trong lượng n&atilde;o trưởng th&agrave;nh. Đến 1 tuổi, n&atilde;o trẻ đạt 70-75%, đến 2 tuổi đạt 80% v&agrave; đến 6 tuổi gần như đạt 100% trọng lượng n&atilde;o người lớn. V&igrave; vậy, giai đoạn từ khi mang thai v&agrave; suốt từ khi sinh ra tới 6 năm đầu đời ch&iacute;nh l&agrave; giai đoạn v&agrave;ng ph&aacute;t triển n&atilde;o bộ của trẻ.</p>\r\n\r\n<h2><strong>Bổ sung cho con c&aacute;c dưỡng chất th&ocirc;ng minh vượt trội</strong></h2>\r\n\r\n<p>Những dưỡng chất cần thiết cho sự ph&aacute;t triển n&atilde;o bộ gồm c&oacute;: DHA, Taurin, Lutein, Cholin, Inositol, Sắt, I-ốt, Kẽm, vitamin nh&oacute;m B&hellip; cần được mẹ quan t&acirc;m cung cấp cho con ngay từ trong b&agrave;o thai v&agrave; li&ecirc;n tục cho tới những năm th&aacute;ng đầu đời sau đ&oacute; để k&iacute;ch th&iacute;ch b&eacute; ph&aacute;t huy tối đa tiềm năng thể chất v&agrave; tr&iacute; tuệ.</p>\r\n\r\n<p>Cũng đừng qu&ecirc;n bổ sung th&ecirc;m cho con Prebiotics để gi&uacute;p tăng cường c&aacute;c vi sinh vật c&oacute; lợi, hỗ trợ đường ti&ecirc;u h&oacute;a con khỏe mạnh, gi&uacute;p b&eacute; hấp thu hiệu quả c&aacute;c dưỡng chất cần thiết cho tr&iacute; n&atilde;o v&agrave; thể chất.</p>\r\n\r\n<p>Việc chọn c&aacute;c sản phẩm bổ sung đầy đủ c&aacute;c dưỡng chất tr&ecirc;n sẽ hỗ trợ con ph&aacute;t triển tối ưu tr&iacute; n&atilde;o, tăng khả năng tập trung, ph&aacute;t triển khả năng ng&ocirc;n ngữ, tăng cường tr&iacute; nhớ v&agrave; thị gi&aacute;c, gi&uacute;p thị lực v&agrave; tr&iacute; n&atilde;o nhanh nhạy, tăng năng lực học hỏi v&agrave; tư duy tốt hơn.</p>\r\n\r\n<h2><strong>Luyện tr&iacute; tuệ v&agrave; cảm x&uacute;c cho con c&agrave;ng sớm c&agrave;ng tốt</strong></h2>\r\n\r\n<p>B&ecirc;n cạnh những dưỡng chất th&ocirc;ng minh tr&ecirc;n, bố mẹ cũng l&agrave; t&aacute;c nh&acirc;n quan trọng gi&uacute;p trẻ ph&aacute;t triển v&agrave; ho&agrave;n thiện tốt hơn khả năng nhận thức v&agrave; tư duy. Trẻ học hỏi thế giới b&ecirc;n ngo&agrave;i qua mắt, tai, x&uacute;c gi&aacute;c n&ecirc;n mẹ h&atilde;y tạo điều kiện sớm cho trẻ tiếp x&uacute;c, tr&atilde;i nghiệm với c&aacute;c hoạt động để k&iacute;ch th&iacute;ch n&atilde;o bộ v&agrave; gi&uacute;p c&aacute;c gi&aacute;c quan con ph&aacute;t triển. H&atilde;y bắt đầu với th&oacute;i quen kể chuyện cho trẻ, h&aacute;t cho con nghe v&agrave; cho con nghe nhạc ngay từ trong bụng mẹ, đặc biệt l&agrave; v&agrave;o 3 th&aacute;ng cuối của thai kỳ. Sau khi sinh, h&atilde;y mua cho con c&aacute;c loại đồ chơi ph&ugrave; hợp theo th&aacute;ng tuổi với độ kh&oacute; từ thấp đến cao để r&egrave;n luyện khả năng quan s&aacute;t, tư duy. H&atilde;y h&aacute;t ru con bằng những vần thơ, giao tiếp v&agrave; tương t&aacute;c với con h&agrave;ng ng&agrave;y th&ocirc;ng qua những c&acirc;u chuyện nhiều cảm x&uacute;c, c&aacute;c loại tr&ograve; chơi th&uacute; vị để khơi gợi tiềm năng của con.</p>\r\n\r\n<p><em>Việc kết hợp giữa dinh dưỡng v&agrave; tương t&aacute;c th&ocirc;ng minh sẽ gi&uacute;p b&eacute; ph&aacute;t triển tr&iacute; n&atilde;o to&agrave;n diện ngay từ những năm th&aacute;ng đầu đời v&agrave; g&oacute;p phần tạo nền tảng thuận lợi cho sự ph&aacute;t triển v&agrave; th&agrave;nh đạt của trẻ về sau.</em></p>\r\n\r\n<p style=\"text-align:right\"><em><strong>ThS. BS. Trần Thị Hồng Loan</strong></em></p>', 'deconthongminh.jpg', '2020-08-03 12:08:51'),
(2, 1, 'DHA và Chỉ số IQ của trẻ', 'dha-va-chi-so-iq-cua-tre', '<p>Chỉ cần thấy con học đ&acirc;u hiểu đ&oacute;, chỉ cần nghe con n&oacute;i chuyện lưu lo&aacute;t v&agrave; nh&igrave;n con cư xử đ&uacute;ng mực với bạn b&egrave; th&igrave; d&ugrave; phải dầm mưa giải nắng, thức khuya dậy sớm để kiếm tiền nu&ocirc;i con ăn học, t&ocirc;i vẫn thấy vui mừng!</p>', '<p>Chỉ cần thấy con học đ&acirc;u hiểu đ&oacute;, chỉ cần nghe con n&oacute;i chuyện lưu lo&aacute;t v&agrave; nh&igrave;n con cư xử đ&uacute;ng mực với bạn b&egrave; th&igrave; d&ugrave; phải dầm mưa giải nắng, thức khuya dậy sớm để kiếm tiền nu&ocirc;i con ăn học, t&ocirc;i vẫn thấy vui mừng!</p>\r\n\r\n<p style=\"text-align:center\"><input alt=\"\" src=\"/uploads/images/products/IQ%20cu%CC%89a%20tre%CC%89.jpg\" style=\"width: 1000px; height: 667px;\" type=\"image\" /></p>\r\n\r\n<h2 style=\"font-style:normal; text-align:start\">Sự ph&aacute;t triển của n&atilde;o bộ</h2>\r\n\r\n<p style=\"text-align:start\">N&atilde;o bộ bắt đầu ph&aacute;t triển từ tuần thứ 4 của thai kỳ, ở giai đoạn n&agrave;y, cứ 1 ph&uacute;t lại c&oacute; 250.000 tế b&agrave;o thần kinh được sinh ra trong n&atilde;o.</p>\r\n\r\n<p style=\"text-align:start\">Khi 1 tuổi trọng lượng n&atilde;o bộ của trẻ gấp 3 lần so với l&uacute;c mới sinh c&ugrave;ng với sự ph&aacute;t triển thần tốc của những v&ugrave;ng đảm nhiệm c&aacute;c chức năng li&ecirc;n quan đến tr&iacute; th&ocirc;ng minh như v&ugrave;ng thị gi&aacute;c, v&ugrave;ng nhận thức, ng&ocirc;n ngữ, cảm x&uacute;c, giao tiếp, vận động. N&atilde;o của trẻ 6 tuổi c&oacute; trọng lượng bằng 95% n&atilde;o của người trưởng th&agrave;nh v&agrave; c&oacute; hoạt động chức năng gần như tương đương với n&atilde;o người trưởng th&agrave;nh.</p>\r\n\r\n<p dir=\"ltr\">Sự ph&aacute;t triển tối ưu của n&atilde;o bộ li&ecirc;n quan đến rất nhiều yếu tố, bao gồm:</p>\r\n\r\n<ul>\r\n	<li>T&iacute;nh to&agrave;n vẹn của bộ n&atilde;o.</li>\r\n	<li>Sự cung cấp đầy đủ c&aacute;c dưỡng chất (DHA, AA, tryptophan, tyrosin, choline&hellip;) tham gia cấu th&agrave;nh n&atilde;o v&agrave; chịu tr&aacute;ch nhiệm cho việc thu nhận - dẫn truyền c&aacute;c xung động thần kinh.</li>\r\n	<li>M&ocirc;i trường gi&aacute;o dục.</li>\r\n	<li>T&aacute;c động của gia đ&igrave;nh v&agrave; x&atilde; hội.</li>\r\n</ul>\r\n\r\n<p>Ng&agrave;y nay, khi chọn thực phẩm sử dụng cho trẻ, gia đ&igrave;nh hướng đến những sản phẩm c&oacute; bổ sung c&aacute;c dưỡng chất hỗ trợ ph&aacute;t triển tr&iacute; n&atilde;o, trong đ&oacute; được nhắc đến nhiều nhất l&agrave; dưỡng chất DHA (viết tắt của&nbsp;<strong>D</strong>ocosa&nbsp;<strong>H</strong>exaenoic&nbsp;<strong>A</strong>cid).</p>\r\n\r\n<h2 style=\"font-style:normal; text-align:start\">DHA v&agrave; chỉ số IQ của trẻ</h2>\r\n\r\n<p style=\"text-align:start\">DHA (Docosa-Hexaenoic-Acid) l&agrave; acid b&eacute;o kh&ocirc;ng no cần thiết thuộc nh&oacute;m acid b&eacute;o Omega-3. Cơ thể con người kh&ocirc;ng tự tổng hợp được DHA m&agrave; phải lấy từ nguồn thực phẩm trong bữa ăn h&agrave;ng ng&agrave;y, như: sữa mẹ, sữa c&ocirc;ng thức, thực phẩm dinh dưỡng c&oacute; bổ sung DHA, gan, mỡ c&aacute;c lo&agrave;i c&aacute; sống ở biển s&acirc;u (c&aacute; hồi, c&aacute; ngừ, c&aacute; thu &hellip;), trứng, c&aacute;c loại hạt c&oacute; dầu, &hellip;</p>\r\n\r\n<p style=\"text-align:start\">Từ 3 th&aacute;ng cuối của thai kỳ v&agrave; trong suốt 2 năm đầu đời, DHA t&iacute;ch tụ nhanh v&agrave; nhiều tại v&otilde;ng mạc, vỏ n&atilde;o l&agrave; những nơi gi&uacute;p ho&agrave;n thiện chức năng nh&igrave;n của mắt v&agrave; đảm tr&aacute;ch c&aacute;c chức năng li&ecirc;n quan đến ph&aacute;t triển tư duy. Nhiều c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu cho thấy trẻ được cung cấp đủ DHA trong chế độ ăn c&oacute; chỉ số IQ cao hơn 8,3 điểm so với trẻ thiếu DHA trong khẩu phần.</p>\r\n\r\n<h2 style=\"font-style:normal; text-align:start\">Nhu cầu DHA của trẻ</h2>\r\n\r\n<p style=\"text-align:start\">H&agrave;m lượng DHA trong sữa mẹ lu&ocirc;n đ&aacute;p ứng đủ nhu cầu cho trẻ tăng trưởng, v&igrave; vậy, cho trẻ b&uacute; sữa mẹ ho&agrave;n to&agrave;n trong 6 th&aacute;ng đầu l&agrave; rất quan trọng.</p>\r\n\r\n<p style=\"text-align:start\">DHA cần được bổ sung sớm v&agrave; li&ecirc;n tục mới mang lại lợi &iacute;ch l&acirc;u d&agrave;i cho sự ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị lực của trẻ. Khuyến nghị h&agrave;m lượng DHA trong khầu phần h&agrave;ng ng&agrave;y được t&iacute;nh theo c&acirc;n nặng v&agrave; lứa tuổi của trẻ(*):</p>', 'IQ của trẻ.jpg', '2020-08-03 12:16:09'),
(3, 1, 'Giữ “Dáng chuẩn”cho con', 'giu-dang-chuan-cho-con', '<p>Chắc chắn ai cũng mong con m&igrave;nh c&oacute; &ldquo;D&aacute;ng chuẩn&rdquo;. D&aacute;ng chuẩn thường được nhận diện bởi trẻ c&oacute; c&acirc;n nặng v&agrave; chiều cao đạt chuẩn. Nếu con bạn đang c&oacute; d&aacute;ng chuẩn, nhưng lại thường xuy&ecirc;n mắc c&aacute;c bệnh nhiễm tr&ugrave;ng, trong giờ học thường xuy&ecirc;n k&eacute;m tập trung v&agrave; khi tham gia c&aacute;c hoạt động thể lực đ&ograve;i hỏi đến sức mạnh v&agrave; độ dẻo dai lại rất mau mệt th&igrave; kh&ocirc;ng thể xem l&agrave; &ldquo;D&aacute;ng chuẩn&rdquo; to&agrave;n diện.</p>', '<p>Chắc chắn ai cũng mong con m&igrave;nh c&oacute; &ldquo;D&aacute;ng chuẩn&rdquo;. D&aacute;ng chuẩn thường được nhận diện bởi trẻ c&oacute; c&acirc;n nặng v&agrave; chiều cao đạt chuẩn. Nếu con bạn đang c&oacute; d&aacute;ng chuẩn, nhưng lại thường xuy&ecirc;n mắc c&aacute;c bệnh nhiễm tr&ugrave;ng, trong giờ học thường xuy&ecirc;n k&eacute;m tập trung v&agrave; khi tham gia c&aacute;c hoạt động thể lực đ&ograve;i hỏi đến sức mạnh v&agrave; độ dẻo dai lại rất mau mệt th&igrave; kh&ocirc;ng thể xem l&agrave; &ldquo;D&aacute;ng chuẩn&rdquo; to&agrave;n diện.</p>\r\n\r\n<p style=\"text-align:center\"><input alt=\"\" src=\"/uploads/images/products/dang-chuan-cho-con.jpg\" style=\"width: 1000px; height: 667px;\" type=\"image\" /></p>\r\n\r\n<h2 style=\"font-style:normal; text-align:start\">&ldquo;D&aacute;ng chuẩn to&agrave;n diện&rdquo;:</h2>\r\n\r\n<p style=\"text-align:start\">&ldquo;D&aacute;ng chuẩn b&ecirc;n ngo&agrave;i&rdquo; được x&aacute;c định bởi sự c&acirc;n đối giữa c&acirc;n nặng v&agrave; chiều cao của trẻ. Bạn h&atilde;y v&agrave;o giao diện &ldquo;Đ&aacute;nh gi&aacute; t&igrave;nh trạng dinh dưỡng&rdquo; của website NutiFood, theo đường link: http://nangtamvocviet.vn/bacsy/bmi/ ; tại đ&acirc;y, sau khi nhập đủ th&ocirc;ng tin của trẻ theo y&ecirc;u cầu, bạn sẽ nhận được phần đ&aacute;nh gi&aacute; t&igrave;nh trạng dinh dưỡng v&agrave; lời khuy&ecirc;n của b&aacute;c sĩ.</p>\r\n\r\n<p style=\"text-align:start\">&ldquo;D&aacute;ng chuẩn từ b&ecirc;n trong&rdquo;: Để nhận ra con m&igrave;nh c&oacute; thật sự khỏe mạnh từ b&ecirc;n trong, bạn bằng c&aacute;ch quan s&aacute;t trẻ mỗi ng&agrave;y v&agrave; trả lời những c&acirc;u hỏi sau đ&acirc;y:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:start\">S&aacute;ng nay, con c&oacute; vui kh&ocirc;ng?</li>\r\n	<li style=\"text-align:start\">Da con c&oacute; hồng h&agrave;o &ndash; mịn m&agrave;ng kh&ocirc;ng?</li>\r\n	<li style=\"text-align:start\">Con c&oacute; tập trung tốt khi học tập kh&ocirc;ng?</li>\r\n	<li style=\"text-align:start\">Răng con c&oacute; chắc v&agrave; s&aacute;ng m&agrave;u kh&ocirc;ng?</li>\r\n	<li style=\"text-align:start\">Con c&oacute; thường xuy&ecirc;n than nhức ch&acirc;n kh&ocirc;ng?</li>\r\n	<li style=\"text-align:start\">Bạn c&oacute; tự h&agrave;o rằng con m&igrave;nh &iacute;t bệnh hơn c&aacute;c trẻ kh&aacute;c kh&ocirc;ng?</li>\r\n	<li style=\"text-align:start\">Con bạn c&oacute; t&iacute;ch cực tham gia c&aacute;c hoạt động thể lực v&agrave; tham gia đến khi hoạt động kết th&uacute;c kh&ocirc;ng?</li>\r\n	<li style=\"text-align:start\">Con bạn c&oacute; vui vẻ trong ứng xử với mọi người kh&ocirc;ng?</li>\r\n</ul>\r\n\r\n<p style=\"text-align:start\">Nếu bạn trả lời &ldquo;c&oacute;&rdquo; c&agrave;ng nhiều th&igrave; con bạn đang c&oacute; &ldquo;D&aacute;ng chuẩn từ b&ecirc;n trong&rdquo;.</p>\r\n\r\n<h2 style=\"font-style:normal; text-align:start\">H&agrave;nh tr&igrave;nh tạo &ldquo;D&aacute;ng chuẩn&rdquo; cho con:</h2>\r\n\r\n<p style=\"text-align:start\">Ăn uống hợp l&yacute;:&nbsp;Đừng qu&aacute; khắt khe trong qu&aacute; tr&igrave;nh tạo &ldquo;D&aacute;ng chuẩn&rdquo; cho con. Trẻ em kh&aacute;c với người lớn l&agrave; vẫn đang lớn l&ecirc;n từng ng&agrave;y. H&atilde;y thực hiện những điều đơn giản sau đ&acirc;y trong thực đơn h&agrave;ng ng&agrave;y để gi&uacute;p trẻ vừa c&oacute; được một cơ thể đẹp b&ecirc;n ngo&agrave;i, vừa khỏe mạnh từ b&ecirc;n trong:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:start\">Ăn đa dạng thực phẩm, đủ bữa v&agrave; ăn vừa đủ no.</li>\r\n	<li style=\"text-align:start\">Ăn nhiều rau v&agrave; tr&aacute;i c&acirc;y.</li>\r\n	<li style=\"text-align:start\">Xen kẽ c&aacute;c m&oacute;n b&eacute;o với c&aacute;c m&oacute;n được chế biến ở dạng kho, hấp, luộc trong c&aacute;c bữa ăn ch&iacute;nh.</li>\r\n	<li style=\"text-align:start\">Hạn chế c&aacute;c m&oacute;n ăn c&oacute; nhiều đường, nhiều muối.</li>\r\n	<li style=\"text-align:start\">Chọn m&oacute;n &iacute;t năng lượng cho bữa phụ, như c&aacute;c loại tr&aacute;i c&acirc;y ngọt &iacute;t, nhiều nước: dưa hấu, thanh long, đu đủ, qu&yacute;t ngọt, cam ngọt, l&ecirc;, t&aacute;o&hellip;.kh&ocirc;ng d&ugrave;ng nước &eacute;p tr&aacute;i c&acirc;y th&ecirc;m nhiều đường hoặc sinh tố xay với sữa c&oacute; đường.</li>\r\n	<li style=\"text-align:start\">Kh&ocirc;ng ngăn cấm tuyệt đối c&aacute;c m&oacute;n ăn trẻ th&iacute;ch, như sinh tố l&agrave;m từ tr&aacute;i bơ, sầu ri&ecirc;ng, xo&agrave;i&hellip;, tr&agrave; sữa, s&ocirc; c&ocirc; la, b&aacute;nh ngọt, khoai chi&ecirc;n, b&aacute;nh snack&hellip; h&atilde;y khuyến kh&iacute;ch trẻ ăn giảm dần về tần suất v&agrave; số lượng, trẻ sẽ dễ chấp nhận hơn.</li>\r\n	<li style=\"text-align:start\">Cho trẻ uống mỗi ng&agrave;y từ 400 đến 600ml sữa. Đối với trẻ thừa c&acirc;n &ndash; b&eacute;o ph&igrave;, bạn n&ecirc;n chọn loại sữa &iacute;t năng lượng, &iacute;t b&eacute;o, nhưng vẫn cung cấp đầy đủ c&aacute;c dưỡng chất, như: đạm (protein), vitamin A, vitamin D, vitamin E, can xi, magi&ecirc;, phot pho, kẽm&hellip;gi&uacute;p trẻ tăng chiều cao tốt v&agrave; răng lu&ocirc;n trắng b&oacute;ng - chắc khỏe.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:start\">Luyện tập:&nbsp;60 ph&uacute;t mỗi ng&agrave;y cho tập luyện thể dục, thể thao sẽ gi&uacute;p trẻ đạt được nhiều lợi &iacute;ch, như: ti&ecirc;u hao lượng mỡ dư t&iacute;ch lũy trong cơ thể, cơ &ndash; xương rắn chắc v&agrave; tinh thần minh mẫn hoạt b&aacute;t.</p>\r\n\r\n<p style=\"text-align:start\">Chủng ngừa:&nbsp;đầy đủ cũng l&agrave; một c&aacute;ch gi&uacute;p con bạn &iacute;t bệnh, đ&acirc;y l&agrave; một trong những yếu tố gi&uacute;p trẻ đạt &ldquo;D&aacute;ng chuẩn&rdquo; to&agrave;n diện.</p>\r\n\r\n<p style=\"text-align:right\"><em>BSCK1. Nguyễn Thị Ngọc Hương</em></p>', 'dang-chuan-cho-con.jpg', '2020-08-03 12:15:42'),
(4, 3, 'Suy dinh dưỡng trẻ em : Nguyên nhân, hậu quả và cách khắc phục', 'suy-dinh-duong-tre-em-nguyen-nhan-hau-qua-va-cach-khac-phuc', '<p>Suy dinh dưỡng&nbsp;l&agrave; t&igrave;nh trạng thiếu hụt c&aacute;c chất dinh dưỡng cần thiết l&agrave;m ảnh huởng qu&aacute; tr&igrave;nh sống, hoạt động v&agrave; tăng trưởng b&igrave;nh thường của trẻ.</p>\r\n\r\n<p>Theo số liệu điều tra của Viện Dinh dưỡng Quốc gia, năm 2013 cả nước c&oacute; 15% s&ocirc;́ trẻ suy dinh dưỡng nhẹ c&acirc;n v&agrave; đến 25,9% s&ocirc;́ trẻ suy dinh dưỡng thấp c&ograve;i, l&agrave; t&igrave;nh trạng trẻ chậm ph&aacute;t triển chiều cao, c&oacute; chiều cao theo tuổi chỉ đạt dưới 90% so với chiều cao chuẩn.</p>', '<h2><strong>Nguy&ecirc;n nh&acirc;n suy dinh dưỡng trẻ em</strong></h2>\r\n\r\n<p>Suy dinh dưỡng&nbsp;l&agrave; t&igrave;nh trạng thiếu hụt c&aacute;c chất dinh dưỡng cần thiết l&agrave;m ảnh huởng qu&aacute; tr&igrave;nh sống, hoạt động v&agrave; tăng trưởng b&igrave;nh thường của trẻ. Theo số liệu điều tra của Viện Dinh dưỡng Quốc gia, năm 2013 cả nước c&oacute; 15% s&ocirc;́ trẻ suy dinh dưỡng nhẹ c&acirc;n v&agrave; đến 25,9% s&ocirc;́ trẻ suy dinh dưỡng thấp c&ograve;i, l&agrave; t&igrave;nh trạng trẻ chậm ph&aacute;t triển chiều cao, c&oacute; chiều cao theo tuổi chỉ đạt dưới 90% so với chiều cao chuẩn.</p>\r\n\r\n<p>Suy dinh dưỡng thường gặp từ giai đoạn b&agrave;o thai, những năm đầu đời cũng như cả thời thơ ấu. Nguy&ecirc;n nh&acirc;n c&oacute; nhiều, tuy nhi&ecirc;n phần lớn li&ecirc;n quan kiến thức dinh dưỡng, thiếu sữa mẹ, cho trẻ ăn chưa đủ nhu cầu, chế độ ăn kh&ocirc;ng c&acirc;n đối, chưa chăm s&oacute;c tốt dinh dưỡng trong thời gian trẻ bệnh...</p>\r\n\r\n<p><strong>Suy dinh dưỡng trẻ em</strong>&nbsp;ảnh hưởng đến ph&aacute;t triển thể lực, tr&iacute; lực, sức khỏe v&agrave; bệnh tật của trẻ trước mắt v&agrave; l&acirc;u d&agrave;i. Trẻ suy dinh dưỡng thấp c&ograve;i c&oacute; nguy cơ thấp chiều cao ở tuổi trưởng th&agrave;nh ảnh hưởng tầm v&oacute;c n&ograve;i giống d&acirc;n tộc. Ph&ograve;ng chống suy dinh dưỡng ở trẻ l&agrave; tr&aacute;ch nhiệm của mỗi bậc cha mẹ, mỗi gia đ&igrave;nh v&agrave; to&agrave;n x&atilde; hội.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Biểu hiện của trẻ em suy dinh dưỡng</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nếu gặp những biểu hiện sau đ&acirc;y th&igrave; mẹ n&ecirc;n lưu &yacute; v&igrave; trẻ c&oacute; thể đang gặp phải t&igrave;nh trạng suy dinh dưỡng:</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; + Trẻ tăng c&acirc;n chậm hoặc kh&ocirc;ng tăng c&acirc;n trong nhiều th&aacute;ng liền</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; + B&eacute; hay ốm vặt, mắc c&aacute;c bệnh về đường h&ocirc; hấp nhiều lần khi tiết trời thay đổi</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; + Trẻ ngủ kh&ocirc;ng ngon giấc, hay giật m&igrave;nh, quấy kh&oacute;c</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; + Trẻ kh&ocirc;ng đạt chuẩn chiều cao trung b&igrave;nh, thấp hơn nhiều so với c&aacute;c bạn đồng trang lứa</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; + B&eacute; gặp vấn đề về ti&ecirc;u h&oacute;a, thường xuy&ecirc;n đi ngo&agrave;i v&agrave; đi nhiều lần</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; + Trẻ chậm đi, chậm b&ograve; d&ugrave; đ&atilde; qu&aacute; tuổi</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; + Da của trẻ xanh xao, m&ocirc;i nhợt nhạt</p>\r\n\r\n<p>Nếu b&eacute; đang c&oacute; những dấu hiệu tr&ecirc;n th&igrave; giải ph&aacute;p tốt nhất l&agrave; mẹ n&ecirc;n đưa b&eacute; đển&nbsp; trung t&acirc;m y tế để theo d&otilde;i r&otilde; hơn t&igrave;nh trạng của b&eacute; v&agrave; lắng nghe &yacute; kiến của b&aacute;c sỹ chuy&ecirc;n khoa để c&oacute; hướng điều trị ph&ugrave; hợp v&agrave; hiệu quả nhất.</p>', 'suy-dinh-duong-tre-em-1.jpg', '2020-08-05 05:48:50'),
(5, 3, 'Cách Phòng Chống Suy Dinh Dưỡng Ở Trẻ Em', 'cach-phong-chong-suy-dinh-duong-o-tre-em', '<p>Biếng ăn l&agrave; một trong những triệu chứng khởi nguồn t&igrave;nh trạng suy dinh dưỡng, thấp c&ograve;i ở trẻ.</p>\r\n\r\n<p>Khi triệu chứng n&agrave;y k&eacute;o d&agrave;i, trẻ sẽ kh&ocirc;ng nạp đủ chất dinh dưỡng, đồng thời dẫn đến suy giảm sức đề kh&aacute;ng, ảnh hưởng đến sự ph&aacute;t triển ở trẻ.</p>', '<h1>C&aacute;ch Ph&ograve;ng Chống Suy Dinh Dưỡng Ở Trẻ Em</h1>\r\n\r\n<p>Biếng ăn l&agrave; một trong những triệu chứng khởi nguồn t&igrave;nh trạng suy dinh dưỡng, thấp c&ograve;i ở trẻ. Khi triệu chứng n&agrave;y k&eacute;o d&agrave;i, trẻ sẽ kh&ocirc;ng nạp đủ chất dinh dưỡng, đồng thời dẫn đến suy giảm sức đề kh&aacute;ng, ảnh hưởng đến sự ph&aacute;t triển ở trẻ.</p>\r\n\r\n<p><strong>Trẻ em suy dinh dưỡng &ndash; T&igrave;nh trạng v&agrave; dấu hiệu nhận biết</strong></p>\r\n\r\n<p>Theo kết quả nghi&ecirc;n cứu của Viện Dinh dưỡng Quốc gia Việt Nam, cứ 4 trẻ th&igrave; c&oacute; 1 trẻ bị Suy dinh dưỡng, thấp c&ograve;i.</p>\r\n\r\n<p>Dấu hiệu dễ nhận biết ở trẻ Suy dinh dưỡng, thấp c&ograve;i l&agrave;: chậm ph&aacute;t triển về chiều cao v&agrave; c&acirc;n nặng; k&eacute;n ăn v&agrave; hay bị rối loạn ti&ecirc;u h&oacute;a; lười vận động v&agrave; hay mệt mỏi; dễ mắc c&aacute;c bệnh nhiễm khuẩn (ti&ecirc;u chảy, vi&ecirc;m đường h&ocirc; hấp..)</p>\r\n\r\n<h3><strong>Hậu quả khi trẻ Suy dinh dưỡng, thấp c&ograve;i:</strong></h3>\r\n\r\n<ul>\r\n	<li>V&oacute;c d&aacute;ng nhỏ b&eacute; trong tương lai</li>\r\n	<li>Chỉ số th&ocirc;ng minh kh&oacute; đạt mức tối ưu</li>\r\n	<li>Suy giảm sức đề kh&aacute;ng</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>C&aacute;ch ph&ograve;ng chống suy dinh dưỡng ở trẻ em</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để t&igrave;nh trạng&nbsp;<strong><em>trẻ em suy dinh dưỡng</em></strong>&nbsp;kh&ocirc;ng c&ograve;n l&agrave; nỗi lo của mọi người, mọi nh&agrave;; Ba Mẹ cần ch&uacute; &yacute; theo d&otilde;i c&acirc;n nặng, chiều cao của trẻ ngay từ những năm th&aacute;ng đầu đời. Ngo&agrave;i việc bổ sung đủ c&aacute;c nh&oacute;m dưỡng chất dinh dưỡng cần thiết trong bữa ăn h&agrave;ng ng&agrave;y, cần phối hợp c&aacute;c hoạt động thể thao ngo&agrave;i trời, ngủ đủ giấc v&agrave; đặc biệt l&agrave; bổ sung hợp l&yacute; sữa đặc trị d&agrave;nh ri&ecirc;ng cho trẻ suy dinh dưỡng, thấp c&ograve;i.</p>\r\n\r\n<p>Với c&ocirc;ng thức Weight Pro+ bổ sung MCT &ndash; chất b&eacute;o chuyển h&oacute;a nhanh, dễ ti&ecirc;u h&oacute;a hỗ trợ qu&aacute; tr&igrave;nh hấp thu dinh dưỡng v&agrave; cung cấp DHA, AA, Taurin, Cholin gi&uacute;p trẻ ph&aacute;t triển tr&iacute; n&atilde;o tốt hơn;&nbsp;<strong>GrowPLUS+ NutiFood gi&uacute;p b&eacute; tăng c&acirc;n, tăng chiều cao sau 3 th&aacute;ng</strong>.</p>', 'suy-dinh-duong-tre-em-2.jpg', '2020-08-05 05:54:56'),
(6, 3, 'Uống sữa lúc nào là tốt nhất?', 'uong-sua-luc-nao-la-tot-nhat', '<h1>Sữa l&agrave; loại thực phẩm gi&agrave;u chất dinh dưỡng v&agrave; rất quen thuộc với tất cả mọi người. Hằng ng&agrave;y c&aacute;c mẹ đều c&oacute; th&oacute;i quen cho b&eacute; uống sữa 2 - 3 lần v&agrave; đều v&agrave;o c&aacute;c khoảng thời gian rất kh&aacute;c nhau. Thật ra để b&eacute; c&oacute; thể hấp thụ được hết c&aacute;c dưỡng chất c&oacute; trong sữa th&igrave; mẹ phải cho con uống sữa đ&uacute;ng c&aacute;ch.</h1>', '<p><strong>1/ Sữa &ndash; nguồn dinh dưỡng cần thiết cho cơ thể</strong></p>\r\n\r\n<p>Sữa vừa l&agrave; nguồn thực phẩm cung cấp năng lượng dồi d&agrave;o cho cơ thể của b&eacute; lại vừa cung cấp đủ 4 nh&oacute;m chất m&agrave; bất cứ đứa trẻ n&agrave;o cũng cần: chất đạm, chất b&eacute;o, chất đường bột, vitamin v&agrave; kho&aacute;ng chất.</p>\r\n\r\n<p>Nhờ những dưỡng chất đ&oacute; m&agrave; sữa gi&uacute;p c&aacute;c b&eacute; nh&agrave; bạn c&oacute; thể ph&aacute;t triển to&agrave;n diện về cả thể lực lẫn tr&iacute; lực.</p>\r\n\r\n<p>Đặc biệt đối với c&aacute;c&nbsp;trẻ em suy dinh dưỡng&nbsp;th&igrave; mẹ n&ecirc;n thường xuy&ecirc;n cung cấp th&ecirc;m cho b&eacute; một loại sữa gi&agrave;u năng lượng v&agrave; dưỡng chất để gi&uacute;p b&eacute; tăng c&acirc;n v&agrave; tăng chiều cao hiệu quả hơn.</p>\r\n\r\n<p><strong>2/ N&ecirc;n uống sữa v&agrave;o l&uacute;c n&agrave;o?</strong></p>\r\n\r\n<p>Theo c&aacute;c nghi&ecirc;n cứu th&igrave; sữa sẽ được hấp thu tốt hay thời gian tốt nhất để uống sữa ch&iacute;nh l&agrave; khi uống c&aacute;ch xa bữa ăn ch&iacute;nh 1-2h v&agrave; khoảng 2h trước khi đi ngủ.</p>\r\n\r\n<p>Uống sữa buổi s&aacute;ng sẽ hỗ trợ cung cấp năng lượng v&agrave; dưỡng chất quan trọng cho cơ thể hoạt động cả một ng&agrave;y d&agrave;i c&ograve;n uống sữa buổi tối sẽ gi&uacute;p b&eacute; ngủ s&acirc;u hơn, tăng khả năng hấp thụ canxi hỗ trợ ph&aacute;t triển chiều cao của b&eacute; một c&aacute;ch hiệu quả. V&agrave; lưu &yacute; việc cho con uống sữa 2h trước khi đi ngủ c&ograve;n gi&uacute;p b&eacute; kh&ocirc;ng bị đầy hơi hay nặng bụng như cho uống sữa ngay trước khi ngủ mẹ nh&eacute;.</p>\r\n\r\n<p><strong>3/ Uống sữa đ&uacute;ng c&aacute;ch như thế n&agrave;o?</strong></p>\r\n\r\n<p>C&aacute;c mẹ n&agrave;o hay l&agrave;m n&oacute;ng sữa cho con n&ecirc;n lưu &yacute; kh&ocirc;ng n&ecirc;n đun s&ocirc;i sữa của b&eacute; hay nấu sữa qu&aacute; l&acirc;u v&igrave; như vậy v&ocirc; t&igrave;nh l&agrave;m mất đi c&aacute;c chất dinh dưỡng c&oacute; trong sữa.</p>\r\n\r\n<p>Mẹ cũng kh&ocirc;ng n&ecirc;n cho con uống thuốc k&egrave;m sữa v&igrave; c&oacute; thể thuốc sẽ mất t&aacute;c dụng vốn c&oacute; của n&oacute;.</p>\r\n\r\n<p>Đặc biệt nếu mẹ đang d&ugrave;ng loại&nbsp;sữa gi&uacute;p b&eacute; tăng c&acirc;n&nbsp;th&igrave; kh&ocirc;ng n&ecirc;n pha chung với nước tr&aacute;i c&acirc;y v&igrave; như thế sẽ l&agrave;m mất đi t&aacute;c dụng của sữa cũng như của nước tr&aacute;i c&acirc;y.</p>\r\n\r\n<p>Ngo&agrave;i ra mẹ cũng kh&ocirc;ng n&ecirc;n cho b&eacute; uống sữa c&ugrave;ng c&aacute;c loại tr&aacute;i c&acirc;y như cam, chanh v&igrave; n&oacute; c&oacute; chứa axit l&agrave;m kết tủa protein c&oacute; trong sữa g&acirc;y kh&oacute; ti&ecirc;u cho b&eacute;.</p>', 'suy-dinh-duong-tre-em-3.jpg', '2020-08-05 05:57:30'),
(7, 3, 'Bé bị suy dinh dưỡng, mẹ phải làm sao?', 'be-bi-suy-dinh-duong-me-phai-lam-sao', '<p>Theo c&aacute;c b&aacute;c sĩ, chuy&ecirc;n gia về chăm s&oacute;c sức khỏe v&agrave; dinh dưỡng trẻ em th&igrave; c&aacute;c bậc phụ huynh cần c&oacute; sự quan t&acirc;m, theo d&otilde;i chặt chẽ t&igrave;nh trạng chiều cao, c&acirc;n nặng của con. T&igrave;nh trạng&nbsp;trẻ em suy dinh dưỡng, biếng ăn hiện nay đang l&agrave; một vấn đề đ&aacute;ng b&aacute;o động v&agrave; l&agrave;m đau đầu những gia đ&igrave;nh c&oacute; con nhỏ. Ch&iacute;nh v&igrave; vậy, c&aacute;c bậc cha mẹ cần ch&uacute; &yacute; nhận biết c&aacute;c dấu hiệu biếng ăn, suy dinh dưỡng của trẻ nhỏ để đưa ra chế độ dinh dưỡng khoa học, bổ sung c&aacute;c loại sữa gi&uacute;p trẻ tăng c&acirc;n, c&aacute;c thực phẩm chứa vitamin ph&ugrave; hợp gi&uacute;p b&eacute; ph&aacute;t triển thể chất một c&aacute;ch tối ưu nhất.</p>', '<p>Theo c&aacute;c b&aacute;c sĩ, chuy&ecirc;n gia về chăm s&oacute;c sức khỏe v&agrave; dinh dưỡng trẻ em th&igrave; c&aacute;c bậc phụ huynh cần c&oacute; sự quan t&acirc;m, theo d&otilde;i chặt chẽ t&igrave;nh trạng chiều cao, c&acirc;n nặng của con. T&igrave;nh trạng&nbsp;<a href=\"http://nutifood.com.vn/suy-dinh-duong/bai-viet-chi-tiet/ba-nguyen-nhan-suy-dinh-duong-o-tre-em-duoi-5-tuoi.html\">trẻ em suy dinh dưỡng</a>, biếng ăn hiện nay đang l&agrave; một vấn đề đ&aacute;ng b&aacute;o động v&agrave; l&agrave;m đau đầu những gia đ&igrave;nh c&oacute; con nhỏ. Ch&iacute;nh v&igrave; vậy, c&aacute;c bậc cha mẹ cần ch&uacute; &yacute; nhận biết c&aacute;c dấu hiệu biếng ăn, suy dinh dưỡng của trẻ nhỏ để đưa ra chế độ dinh dưỡng khoa học, bổ sung c&aacute;c loại sữa gi&uacute;p trẻ tăng c&acirc;n, c&aacute;c thực phẩm chứa vitamin ph&ugrave; hợp gi&uacute;p b&eacute; ph&aacute;t triển thể chất một c&aacute;ch tối ưu nhất.</p>\r\n\r\n<ol>\r\n	<li><strong>L&agrave;m thế n&agrave;o để biết trẻ bị suy dinh dưỡng?</strong></li>\r\n</ol>\r\n\r\n<p>C&oacute; nhiều dấu hiệu nhận biết trẻ bị suy dinh dưỡng như: ăn k&eacute;m, rối loạn ti&ecirc;u h&oacute;a, kh&ocirc;ng l&ecirc;n c&acirc;n hoặc giảm c&acirc;n, da xanh, t&oacute;c thưa rụng, dễ g&atilde;y&hellip; Bạn cần thường xuy&ecirc;n kiểm tra chiều cao v&agrave; c&acirc;n nặng của con mỗi th&aacute;ng 1 lần để biết cơ thể trẻ c&oacute; ph&aacute;t triển tốt hay kh&ocirc;ng.</p>\r\n\r\n<p>Bạn n&ecirc;n l&ecirc;n lịch để c&acirc;n b&eacute; v&agrave;o một ng&agrave;y cố định trong th&aacute;ng rồi vẽ ra biểu đồ về t&igrave;nh trạng ph&aacute;t triển của con để tiện theo d&otilde;i. Nếu trong v&ograve;ng 3 th&aacute;ng m&agrave; trẻ vẫn kh&ocirc;ng l&ecirc;n c&acirc;n c&oacute; nghĩa l&agrave; c&oacute; dấu hiệu b&aacute;o động về sức khỏe của trẻ, c&oacute; thể trẻ đang c&oacute; nguy cơ bị&nbsp;<a href=\"https://nutifood.com.vn/suy-dinh-duong/bai-viet-chi-tiet/the-nao-la-suy-dinh-duong.html\">suy dinh dưỡng</a>. D&ugrave; l&uacute;c đ&oacute; c&acirc;n nặng của trẻ c&oacute; nằm trong khoảng ti&ecirc;u chuẩn của c&acirc;n nặng trung b&igrave;nh hay kh&ocirc;ng th&igrave; bạn cũng cần đưa trẻ đi kh&aacute;m b&aacute;c sĩ để t&igrave;m ra nguy&ecirc;n nh&acirc;n. Để biết r&otilde; con m&igrave;nh c&oacute; ph&aacute;t triển khỏe mạnh v&agrave; đạt chuẩn hay kh&ocirc;ng, bạn n&ecirc;n tham khảo c&aacute;ch t&iacute;nh c&acirc;n nặng chuẩn của b&eacute; theo c&ocirc;ng thức sau:</p>\r\n\r\n<p>Đối với b&eacute; trai:</p>\r\n\r\n<p>X = 9,5kg + 2(N &ndash; 1)</p>\r\n\r\n<p>Đối với b&eacute; g&aacute;i:</p>\r\n\r\n<p>X = 9kg + 2(N &ndash; 1)</p>\r\n\r\n<p>Trong đ&oacute;: N l&agrave; số tuổi</p>\r\n\r\n<ol>\r\n	<li value=\"2\"><strong>C&aacute;ch chăm s&oacute;c trẻ bị suy dinh dưỡng</strong></li>\r\n</ol>\r\n\r\n<p>Việc đầu ti&ecirc;n cha mẹ cần l&agrave;m khi thấy con m&igrave;nh c&oacute; dấu hiệu của việc suy dinh dưỡng, chậm lớn l&agrave; đưa trẻ đi kh&aacute;m ở b&aacute;c sĩ chuy&ecirc;n khoa nhi để c&oacute; được sự tư vấn v&agrave; điều trị ch&iacute;nh x&aacute;c, kịp thời nhất.</p>\r\n\r\n<p>Để chăm s&oacute;c trẻ bị suy dinh dưỡng, c&aacute;c bậc cha mẹ ngo&agrave;i việc sử dụng c&aacute;c loại thuốc điều trị v&agrave; thuốc bổ v&agrave; những loại sữa gi&uacute;p trẻ tăng c&acirc;n th&igrave; cũng cần phải c&oacute; một kế hoạch tổng thể để gi&uacute;p b&eacute; bổ sung v&agrave; hấp thụ tốt c&aacute;c chất dinh dưỡng, đồng thời cũng cần tạo cho trẻ một th&oacute;i quen ăn uống khoa học.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh chăm s&oacute;c cho trẻ bị suy dinh dưỡng, c&aacute;c gia đ&igrave;nh cần lưu &yacute; c&aacute;c điểm sau:</p>\r\n\r\n<p>C&aacute;c thực phẩm được d&ugrave;ng để chế biến m&oacute;n ăn cho trẻ nhỏ cần phải l&agrave; thực phẩm sạch, kh&ocirc;ng để qu&aacute; l&acirc;u. Hệ thống đường ruột của b&eacute; c&ograve;n k&eacute;m n&ecirc;n rất dễ bị ti&ecirc;u chảy, rối loạn ti&ecirc;u h&oacute;a. L&uacute;c chế biến m&oacute;n ăn cho b&eacute;, c&aacute;c mẹ cần phải lưu &yacute; khi nấu xong th&igrave; cho b&eacute; ăn ngay, nếu để qu&aacute; 3 giờ th&igrave; cần phải đun s&ocirc;i lại mới cho b&eacute; ăn.</p>\r\n\r\n<p>Ngo&agrave;i ra v&igrave; sức đề kh&aacute;ng của c&aacute;c trẻ bị suy dinh dưỡng tương đối yếu n&ecirc;n c&aacute;c mẹ cần ch&uacute; &yacute; đặc biệt đến vấn đề vệ sinh c&aacute; nh&acirc;n của trẻ. Phụ huynh n&ecirc;n tập cho trẻ c&oacute; th&oacute;i quen giữ g&igrave;n răng miệng sạch sẽ v&agrave; giữ tay sạch.</p>\r\n\r\n<p>Trẻ bị suy dinh dưỡng cần được cho ăn nhiều bữa trong ng&agrave;y, mỗi bữa một &iacute;t để đảm bảo cung cấp đủ lượng thức ăn v&agrave; dinh dưỡng cần thiết cho trẻ. C&aacute;ch chế biến thức ăn cũng cần ph&ugrave; hợp với khẩu vị của trẻ v&agrave; thường xuy&ecirc;n thay đổi thực đơn để trẻ ăn ngon miệng hơn.</p>\r\n\r\n<ol>\r\n	<li value=\"3\"><strong>Những thực phẩm gi&uacute;p trẻ tăng c&acirc;n nhanh v&agrave; đều</strong></li>\r\n</ol>\r\n\r\n<p>B&ecirc;n cạnh c&aacute;c loại thuốc của b&aacute;c sĩ chuy&ecirc;n khoa, c&aacute;c mẹ cũng cần bổ sung cho con c&aacute;c thực phẩm gi&uacute;p c&acirc;n nặng của b&eacute; tăng nhanh v&agrave; an to&agrave;n. Dưới đ&acirc;y l&agrave; một số thực phẩm c&oacute; thể khiến con bạn tăng c&acirc;n nhanh, giải tỏa được nỗi lo cho c&aacute;c b&agrave; mẹ.</p>\r\n\r\n<ul>\r\n	<li><em>Sữa nguy&ecirc;n kem:</em>&nbsp;Đ&acirc;y l&agrave; loại sữa gi&uacute;p b&eacute; tăng c&acirc;n nhanh v&agrave; hiệu quả. Sữa nguy&ecirc;n kem c&oacute; đầy đủ can xi, chất dinh dưỡng, calo v&agrave; nhiều chất b&eacute;o. Buổi s&aacute;ng bạn n&ecirc;n cho b&eacute; uống một ly sữa nguy&ecirc;n kem sẽ gi&uacute;p trẻ bổ sung đầy đủ chất b&eacute;o cần thiết. C&aacute;c mẹ lưu &yacute; kh&ocirc;ng cho con uống sữa nguy&ecirc;n kem ngay trước khi đi ngủ v&igrave; sẽ dễ khiến b&eacute; bị đầy bụng, kh&oacute; ti&ecirc;u.</li>\r\n</ul>', 'suy-dinh-duong-tre-em-4.jpg', '2020-08-05 06:00:20'),
(8, 2, 'Người đái tháo đường có cần kiêng tuyệt đối các loại bột đường?', 'nguoi-dai-thao-duong-co-can-kieng-tuyet-doi-cac-loai-bot-duong', '<p><strong>Đ&aacute;i th&aacute;o đường l&agrave; một bệnh rối loạn chuyển h&oacute;a chất bột đường g&acirc;y tăng đường huyết mạn t&iacute;nh do hậu quả của sự thiếu hụt hoặc giảm hoạt động của insulin hoặc kết hợp cả hai. T&igrave;nh trạng tăng đường huyết k&eacute;o d&agrave;i sẽ g&acirc;y tổn thương nhiều cơ quan trong cơ thể, g&acirc;y nhiều biến chứng nghi&ecirc;m trọng như bệnh tim mạch, suy thận, tổn thương mắt, tổn thương b&agrave;n ch&acirc;n, rối loạn cảm gi&aacute;c, dễ nhiễm tr&ugrave;ng, vết thương l&acirc;u l&agrave;nh&hellip; ảnh hưởng đến sức khỏe v&agrave; chất lượng sống của người bệnh.</strong></p>', '<p><strong>Đ&aacute;i th&aacute;o đường l&agrave; một bệnh rối loạn chuyển h&oacute;a chất bột đường g&acirc;y tăng đường huyết mạn t&iacute;nh do hậu quả của sự thiếu hụt hoặc giảm hoạt động của insulin hoặc kết hợp cả hai. T&igrave;nh trạng tăng đường huyết k&eacute;o d&agrave;i sẽ g&acirc;y tổn thương nhiều cơ quan trong cơ thể, g&acirc;y nhiều biến chứng nghi&ecirc;m trọng như bệnh tim mạch, suy thận, tổn thương mắt, tổn thương b&agrave;n ch&acirc;n, rối loạn cảm gi&aacute;c, dễ nhiễm tr&ugrave;ng, vết thương l&acirc;u l&agrave;nh&hellip; ảnh hưởng đến sức khỏe v&agrave; chất lượng sống của người bệnh.</strong></p>\r\n\r\n<ul>\r\n</ul>\r\n\r\n<p>Hiện nay chưa c&oacute; phương ph&aacute;p điều trị triệt để bệnh đ&aacute;i th&aacute;o đường, biện ph&aacute;p ch&iacute;nh điều trị bao gồm d&ugrave;ng thuốc hạ đường huyết, chế độ dinh dưỡng v&agrave; vận động hợp l&yacute; nhằm kiểm so&aacute;t đường huyết ở mức c&agrave;ng gần b&igrave;nh thường c&agrave;ng tốt để ngăn ngừa biến chứng.</p>\r\n\r\n<p>Như vậy, dinh dưỡng ở người bệnh đ&aacute;i th&aacute;o đường l&agrave; một trong những biện ph&aacute;p điều trị đ&oacute;ng vai tr&ograve; quan trọng đến kết quả điều trị, duy tr&igrave; sức khỏe của người bệnh, hạn chế biến chứng, tăng chất lượng cuộc sống. Nguy&ecirc;n tắc dinh dưỡng cho người bệnh đ&aacute;i th&aacute;o đường l&agrave; cung cấp đủ năng lượng v&agrave; c&aacute;c chất dinh dưỡng nhưng kh&ocirc;ng l&agrave;m tăng đường huyết, gi&uacute;p người bệnh khỏe mạnh, ph&ograve;ng tr&aacute;nh biến chứng.</p>\r\n\r\n<h2>C&aacute;ch lựa&nbsp;chọn bột ph&ugrave; hợp cho người đ&aacute;i th&aacute;o đường</h2>\r\n\r\n<p>N&ecirc;n chọn lựa c&aacute;c loại thực phẩm c&oacute; chỉ số đường huyết (GI) thấp, d&ugrave;ng vừa phải thực phẩm c&oacute; GI trung b&igrave;nh v&agrave; hạn chế thực phẩm c&oacute; GI cao.</p>\r\n\r\n<p><strong>C&aacute;c loại ngũ cốc:</strong></p>\r\n\r\n<ul>\r\n	<li>Th&ocirc; (nguy&ecirc;n hạt, nguy&ecirc;n c&aacute;m): gạo lức, gạo mầm, yến mạch, kiều mạch, b&aacute;nh m&igrave; đen/n&acirc;u, bắp hạt, đậu đỗ nguy&ecirc;n hạt&hellip; hấp thu chậm, tốt cho người đ&aacute;i th&aacute;o đường.</li>\r\n	<li>Tinh chế (xay x&aacute;t kỹ, đ&atilde; qua chế biến): gạo trắng, bột gạo, b&aacute;nh m&igrave; trắng, b&aacute;nh quy, bột bắp, bột sắn d&acirc;y, bột lọc&hellip; hấp thu nhanh, n&ecirc;n hạn chế d&ugrave;ng.</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;c loại khoai củ:</strong>&nbsp;khoai lang, khoai sọ, khoai t&acirc;y, c&agrave; rốt&hellip; nhiều xơ hấp thu chậm, n&ecirc;n d&ugrave;ng nhưng lưu &yacute; c&aacute;ch chế biến n&ecirc;n hấp, luộc hạn chế nướng.</p>\r\n\r\n<p><strong>C&aacute;c loại tr&aacute;i c&acirc;y:</strong>&nbsp;c&agrave;ng ngọt c&agrave;ng nhiều đường hấp thu nhanh, kh&ocirc;ng n&ecirc;n d&ugrave;ng qu&aacute; nhiều.</p>\r\n\r\n<p><strong>C&aacute;c loại đường v&agrave; thức ăn chứa đường:&nbsp;</strong>đường c&aacute;t, đường ph&egrave;n, đường thốt nốt, b&aacute;nh kẹo ngọt, nước ngọt, ch&egrave;, kem&hellip; n&ecirc;n hạn chế, d&ugrave;ng c&agrave;ng &iacute;t c&agrave;ng tốt.</p>\r\n\r\n<h2>Quy tắc v&agrave;ng trong dinh dưỡng gi&uacute;p ổn định đường huyết</h2>\r\n\r\n<p><strong>Ăn đ&uacute;ng giờ, đủ bữa:&nbsp;</strong>mỗi ng&agrave;y n&ecirc;n ăn đều đặn 3 bữa ch&iacute;nh v&agrave; 1-2 bữa phụ gi&uacute;p người bệnh duy tr&igrave; mức đường huyết ổn định, kh&ocirc;ng tăng qu&aacute; cao ngay sau bữa ăn cũng như kh&ocirc;ng bị hạ đường huyết khi xa bữa ăn.</p>\r\n\r\n<p><strong>Ăn đủ năng lượng:&nbsp;</strong>ăn vừa đủ no, duy tr&igrave; c&acirc;n nặng ở mức l&yacute; tưởng, giảm c&acirc;n nếu c&oacute; thừa c&acirc;n, b&eacute;o ph&igrave;.</p>\r\n\r\n<p><strong>Đảm bảo đủ c&aacute;c chất dinh dưỡng trong mỗi bữa ăn ch&iacute;nh:</strong>&nbsp;gồm bột đường (ưu ti&ecirc;n th&ocirc;, &iacute;t chế biến); chất đạm (thịt c&aacute; nạc, đậu đỗ&hellip; hạn chế thực phẩm gi&agrave;u cholesterol như da, gan, cật, &oacute;c&hellip;); chất b&eacute;o (ăn vừa phải c&aacute;c loại b&eacute;o kh&ocirc;ng no như mỡ c&aacute;, dầu n&agrave;nh, dầu oliu, dầu phộng&hellip;, hạn chế chất b&eacute;o no như mỡ, bơ&hellip;); rau củ: ăn nhiều rau sống, luộc, hấp, nấu canh&hellip; ; tr&aacute;i c&acirc;y &iacute;t ngọt.</p>\r\n\r\n<p><strong>Bổ sung sữa trong khẩu phần h&agrave;ng ng&agrave;y:</strong>&nbsp;sữa kh&ocirc;ng đường, t&aacute;ch b&eacute;o, hoặc sữa d&agrave;nh ri&ecirc;ng cho người đ&aacute;i th&aacute;o đường.<br />\r\nChế biến hợp l&yacute;: kh&ocirc;ng xay nhuyễn, ninh nhừ, ưu ti&ecirc;n hấp, luộc, kh&ocirc;ng n&ecirc;m nhiều muối.</p>\r\n\r\n<h2>Ăn phối hợp thực phẩm gi&uacute;p chậm hấp thu đường v&agrave;o m&aacute;u</h2>\r\n\r\n<p>Ăn phối hợp bột đường với đạm, b&eacute;o, rau củ &hellip;, c&aacute;c chất đạm, b&eacute;o, chất xơ trong rau củ gi&uacute;p giảm hấp thu đường.</p>\r\n\r\n<p>Phối hợp thực phẩm c&oacute; GI cao v&agrave; thấp trong chế biến: v&iacute; dụ cơm nấu với c&aacute;c loại đậu, m&igrave; x&agrave;o rau củ&hellip;<br />\r\nSử dụng thực phẩm dinh dưỡng y học c&oacute; chỉ số đường huyết GI thấp</p>\r\n\r\n<p>Người đ&aacute;i th&aacute;o đường v&agrave; tiền đ&aacute;i th&aacute;o đường rất cần được bổ sung dinh dưỡng nhưng lại phải cẩn thận về lượng đường c&oacute; trong thực phẩm h&agrave;ng ng&agrave;y. Do đ&oacute;, sử dụng thực phẩm dinh dưỡng y học được nghi&ecirc;n cứu bởi c&aacute;c chuy&ecirc;n gia dinh dưỡng NutiFood bổ sung dưỡng chất gi&uacute;p ổn định đường huyết v&agrave; tăng cường sức khỏe như sữa Diabet Care Diamond l&agrave; lựa chọn hợp l&yacute;. Với chỉ số đường huyết GI ở mức 26.9 ho&agrave;n to&agrave;n ph&ugrave; hợp cho sức khỏe của người đ&aacute;o th&aacute;o đường v&agrave; tiền đ&aacute;i th&aacute;o đường.</p>', 'dinh-duong-cho-nguoi-benh-1.jpg', '2020-08-05 06:04:20'),
(9, 2, 'Bí kíp để tránh bệnh đái tháo đường', 'bi-kip-de-tranh-benh-dai-thao-duong', '<p><strong>Trong c&aacute;c thập ni&ecirc;n gần đ&acirc;y, tại Việt Nam c&oacute; sự gia tăng nhanh ch&oacute;ng c&aacute;c bệnh mạn t&iacute;nh kh&ocirc;ng l&acirc;y, trong đ&oacute; c&oacute; bệnh đ&aacute;i th&aacute;o đường type 2, một căn bệnh li&ecirc;n quan trực tiếp đến chế độ dinh dưỡng v&agrave; lối sống v&agrave; c&oacute; thể ph&ograve;ng tr&aacute;nh được. Ch&uacute;ng ta cần h&agrave;nh động ngay để ngăn ngừa đ&aacute;i th&aacute;o đường.</strong></p>\r\n\r\n<ul>\r\n</ul>\r\n\r\n<p>Ch&uacute;ng ta cần h&agrave;nh động ngay để ngăn ngừa đ&aacute;i th&aacute;o đường, căn bệnh của thời đại. &nbsp;</p>', '<p><strong>Trong c&aacute;c thập ni&ecirc;n gần đ&acirc;y, tại Việt Nam c&oacute; sự gia tăng nhanh ch&oacute;ng c&aacute;c bệnh mạn t&iacute;nh kh&ocirc;ng l&acirc;y, trong đ&oacute; c&oacute; bệnh đ&aacute;i th&aacute;o đường type 2, một căn bệnh li&ecirc;n quan trực tiếp đến chế độ dinh dưỡng v&agrave; lối sống v&agrave; c&oacute; thể ph&ograve;ng tr&aacute;nh được. Ch&uacute;ng ta cần h&agrave;nh động ngay để ngăn ngừa đ&aacute;i th&aacute;o đường.</strong></p>\r\n\r\n<ul>\r\n</ul>\r\n\r\n<p>Ch&uacute;ng ta cần h&agrave;nh động ngay để ngăn ngừa đ&aacute;i th&aacute;o đường, căn bệnh của thời đại. &nbsp;</p>\r\n\r\n<h2>Bệnh đ&aacute;i th&aacute;o đường g&acirc;y nhiều biến chứng</h2>\r\n\r\n<p>Đ&aacute;i th&aacute;o đường l&agrave; một bệnh rối loạn chuyển h&oacute;a chất bột đường g&acirc;y tăng đường huyết mạn t&iacute;nh do hậu quả của sự thiếu hụt hoặc giảm hoạt động của insulin hoặc kết hợp cả hai. T&igrave;nh trạng tăng đường huyết k&eacute;o d&agrave;i sẽ g&acirc;y tổn thương nhiều cơ quan trong cơ thể, g&acirc;y nhiều biến chứng nghi&ecirc;m trọng như bệnh tim mạch, suy thận, tổn thương mắt, tổn thương b&agrave;n ch&acirc;n, rối loạn cảm gi&aacute;c, dễ nhiễm tr&ugrave;ng, vết thương l&acirc;u l&agrave;nh &hellip; ảnh hưởng đến sức khỏe v&agrave; chất lượng sống của người bệnh.</p>\r\n\r\n<p>Diễn tiến bệnh đ&aacute;i th&aacute;o đường thường &acirc;m thầm kh&ocirc;ng triệu chứng v&agrave; đa số trải qua giai đoạn tiền đ&aacute;i th&aacute;o đường, c&ograve;n đến khi xuất hiện triệu chứng th&igrave; thường đ&atilde; muộn, c&oacute; biến chứng.&nbsp;</p>\r\n\r\n<h2>Ph&aacute;t hiện tiền đ&aacute;i th&aacute;o đường</h2>\r\n\r\n<p>Lượng glucose (đường) b&igrave;nh thường trong m&aacute;u khi đ&oacute;i (nhịn ăn &iacute;t nhất l&agrave; 8 giờ) l&agrave; từ 70 - 100 mg/dL (3,9-5,5mmol/L); bệnh đ&aacute;i th&aacute;o đường được chẩn đo&aacute;n khi lượng glucose trong m&aacute;u khi đ&oacute;i cao hơn 126 mg/dL (&gt; 7mmol/L). Nếu lượng glucose trong m&aacute;u khi đ&oacute;i từ 100 - 125 mg/dL (5,5 -7mmol/L) th&igrave; được xem l&agrave; tiền đ&aacute;i th&aacute;o đường, c&oacute; nghĩa lượng glucose trong m&aacute;u cao hơn mức b&igrave;nh thường nhưng chưa đến mức để chẩn đo&aacute;n l&agrave; bệnh đ&aacute;i th&aacute;o đường.</p>\r\n\r\n<p>Tiền đ&aacute;i th&aacute;o đường kh&ocirc;ng g&acirc;y ra bất cứ dấu hiệu hay triệu chứng g&igrave;. C&aacute;ch duy nhất để c&oacute; thể x&aacute;c định l&agrave; x&eacute;t nghiệm m&aacute;u, thử lượng glucose trong m&aacute;u l&uacute;c đ&oacute;i.&nbsp;</p>\r\n\r\n<p>Những người c&oacute; c&aacute;c yếu tố nguy cơ như qu&aacute; c&acirc;n, &iacute;t vận động thể lực, lớn hơn 50 tuổi, tiền căn trong gia đ&igrave;nh c&oacute; người bị đ&aacute;i th&aacute;o đường type 2, phụ nữ đ&atilde; từng bị đ&aacute;i th&aacute;o đường thai kỳ hay sanh con nặng tr&ecirc;n 4 kg n&ecirc;n x&eacute;t nghiệm đường m&aacute;u định kỳ để ph&aacute;t hiện sớm.&nbsp;</p>\r\n\r\n<p>Tiền đ&aacute;i th&aacute;o đường l&agrave; một dấu hiệu cho biết nguy cơ rất cao sẽ bị đ&aacute;i th&aacute;o đường type 2. Đ&atilde; c&oacute; c&aacute;c nghi&ecirc;n cứu chứng minh rằng sự tiến triển đến bệnh đ&aacute;i th&aacute;o đường type 2 c&oacute; thể bị tr&igrave; ho&atilde;n hay được ngăn ngừa vĩnh viễn nếu được bắt đầu can thiệp ngay từ khi ph&aacute;t hiện tiền đ&aacute;i th&aacute;o đường.&nbsp;</p>\r\n\r\n<h2>Thay đổi lối sống hợp l&yacute; gi&uacute;p ngăn ngừa đ&aacute;i th&aacute;o đường</h2>\r\n\r\n<p>Biện ph&aacute;p can thiệp ch&iacute;nh ở người tiền đ&aacute;i th&aacute;o đường l&agrave; giảm c&acirc;n, duy tr&igrave; c&acirc;n nặng ở mức l&yacute; tưởng v&agrave; tăng cường vận động thể lực gi&uacute;p ngăn ngừa hay l&agrave;m chậm tiến tr&igrave;nh xuất hiện bệnh đ&aacute;i th&aacute;o đường type 2.</p>\r\n\r\n<p>X&acirc;y dựng v&agrave; duy tr&igrave; chế độ dinh dưỡng hợp l&yacute;, chọn lựa thực phẩm th&ocirc;ng minh, ăn đa dạng thực phẩm, đủ c&aacute;c nh&oacute;m bột đường, đạm, b&eacute;o, rau v&agrave; tr&aacute;i c&acirc;y trong mỗi bữa ăn ch&iacute;nh. Đặc biệt, việc bổ sung sữa d&agrave;nh cho người đ&aacute;i th&aacute;o đường v&agrave; tiền đ&aacute;i th&aacute;o đường (c&oacute; chỉ số đường huyết GI thấp) v&agrave; chế phẩm từ sữa trong khẩu phần h&agrave;ng ng&agrave;y gi&uacute;p cung cấp đủ chất dinh dưỡng, vitamin, chất kho&aacute;ng, hạn chế c&aacute;c thức ăn l&agrave;m tăng đường huyết nhanh như đường, b&aacute;nh kẹo ngọt, nước ngọt, hoặc ăn qu&aacute; nhiều bột đường&hellip; tăng cường c&aacute;c thức ăn gi&uacute;p l&agrave;m chậm hấp thu đường như rau, củ quả, chọn lựa bột đường hấp thu chậm như gạo lứt, c&aacute;c loại hạt nguy&ecirc;n vỏ nguy&ecirc;n c&aacute;m, ph&acirc;n bố bữa ăn hợp l&yacute;, ăn đủ bữa, kh&ocirc;ng bỏ bữa ăn s&aacute;ng.&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, cần kết hợp lối sống l&agrave;nh mạnh năng vận động (&iacute;t nhất 30-60 ph&uacute;t/lần, 5 ng&agrave;y mỗi tuần), hạn chế sử dụng c&aacute;c chất k&iacute;ch th&iacute;ch, rượu bia, thuốc l&aacute;... Giảm c&acirc;n nếu c&oacute; thừa c&acirc;n b&eacute;o ph&igrave;, duy tr&igrave; c&acirc;n nặng cơ thể ở mức l&yacute; tưởng bằng: chiều cao (m) x chiều cao (m) x 22.</p>\r\n\r\n<p>H&atilde;y h&agrave;nh động h&ocirc;m nay cho ng&agrave;y mai khỏe mạnh.</p>', 'bi-kip-tranh-benh-dai-thao-duong.jpg', '2020-08-05 06:05:43');
INSERT INTO `nutrition_information` (`id`, `category_id`, `title`, `slug`, `summary`, `content`, `image`, `updated_at`) VALUES
(10, 2, 'Cảnh báo suy nhược cơ thể ở người lớn tuổi', 'canh-bao-suy-nhuoc-co-the-o-nguoi-lon-tuoi', '<p><strong>Với thời gian, c&agrave;ng lớn tuổi cơ thể con người c&agrave;ng c&oacute; nhiều thay đổi theo chiều hướng tho&aacute;i h&oacute;a hầu hết c&aacute;c cơ quan g&acirc;y suy giảm chức năng, giảm tr&iacute; nhớ, giảm miễn dịch, dễ mắc đa bệnh l&yacute;. Trong đ&oacute;, dấu hiệu thường gặp khi bước v&agrave;o tuổi gi&agrave; l&agrave; t&igrave;nh trạng suy nhược cơ thể v&agrave; bệnh tật rất dễ xảy ra nếu kh&ocirc;ng ch&uacute; &yacute; chăm s&oacute;c sức khỏe bản th&acirc;n.</strong></p>', '<p><strong>Với thời gian, c&agrave;ng lớn tuổi cơ thể con người c&agrave;ng c&oacute; nhiều thay đổi theo chiều hướng tho&aacute;i h&oacute;a hầu hết c&aacute;c cơ quan g&acirc;y suy giảm chức năng, giảm tr&iacute; nhớ, giảm miễn dịch, dễ mắc đa bệnh l&yacute;. Trong đ&oacute;, dấu hiệu thường gặp khi bước v&agrave;o tuổi gi&agrave; l&agrave; t&igrave;nh trạng suy nhược cơ thể v&agrave; bệnh tật rất dễ xảy ra nếu kh&ocirc;ng ch&uacute; &yacute; chăm s&oacute;c sức khỏe bản th&acirc;n.</strong></p>\r\n\r\n<ul>\r\n</ul>\r\n\r\n<h2><strong>C&aacute;c dấu hiệu cảnh b&aacute;o suy nhược cơ thể</strong></h2>\r\n\r\n<ul>\r\n	<li>Lu&ocirc;n cảm thấy mệt mỏi, ăn kh&ocirc;ng ngon miệng.</li>\r\n	<li>Sụt c&acirc;n nhanh m&agrave; kh&ocirc;ng c&oacute; l&yacute; do.</li>\r\n	<li>Hay bị hoa mặt, ch&oacute;ng mặt, đau đầu, ch&acirc;n tay bị t&ecirc; b&igrave;, chuột r&uacute;t.</li>\r\n	<li>Kh&oacute; tập trung, giảm sự linh hoạt.</li>\r\n	<li>Dễ x&uacute;c động, căng thẳng, c&aacute;u gắt, tức giận, tủi th&acirc;n, lo lắng&hellip;</li>\r\n</ul>\r\n\r\n<h2><strong>C&aacute;c biện ph&aacute;p khắc phục</strong></h2>\r\n\r\n<ul>\r\n	<li>Khi c&oacute; c&aacute;c dấu hiệu của suy nhược cơ thể cần t&igrave;m nguy&ecirc;n nh&acirc;n để khắc phục sớm, gi&uacute;p người gi&agrave; lấy lại sức khỏe, ph&ograve;ng tr&aacute;nh nhiều bệnh tật c&oacute; thể xảy ra.</li>\r\n	<li>N&ecirc;n kh&aacute;m sức khỏe tổng qu&aacute;t v&agrave; điều trị triệt để nếu mắc c&aacute;c bệnh mạn t&iacute;nh hay gặp ở người gi&agrave; như cao huyết &aacute;p, đ&aacute;i th&aacute;o đường, bệnh tim mạch hay c&aacute;c bệnh nhiễm khuẩn&hellip;</li>\r\n	<li>X&acirc;y dựng chế độ dinh dưỡng hợp l&yacute;, đời sống tinh thần vui vẻ, năng tập thể dục, ngủ đủ giấc, tr&aacute;nh stress, tr&aacute;nh c&aacute;c t&aacute;c nh&acirc;n c&oacute; hại cho sức khỏe như thuốc l&aacute;, rượu, bia l&agrave; những biện ph&aacute;p ph&ograve;ng tr&aacute;nh cũng như khắc phục t&igrave;nh trạng suy nhược cơ thể ở người gi&agrave;.</li>\r\n</ul>\r\n\r\n<h2><strong>Dinh dưỡng cho người suy nhược cơ thể</strong></h2>\r\n\r\n<p>X&acirc;y dựng chế độ dinh dưỡng hợp l&yacute;, cung cấp đủ năng lượng v&agrave; dưỡng chất, chế biến hợp khẩu vị gi&uacute;p người bệnh nhanh hồi phục sức khỏe. Một số lưu &yacute; trong chế độ dinh dưỡng của người suy nhược cơ thể:</p>\r\n\r\n<ul>\r\n	<li>Ăn đủ bữa, ng&agrave;y 3 bữa ch&iacute;nh, bổ sung 1-2 bữa phụ, vi&ecirc;c bỏ bữa khiến người gi&agrave; dễ thiếu dưỡng chất g&acirc;y suy kiệt. N&ecirc;n ăn c&ugrave;ng người th&acirc;n, bạn b&egrave; tạo cảm gi&aacute;c vui vẻ sẽ ngon miệng hơn.</li>\r\n	<li>Ăn đa dạng c&aacute;c loại thực phẩm: đảm bảo mỗi bữa ăn ch&iacute;nh đủ c&aacute;c nh&oacute;m bột đường (cơm, ch&aacute;o, b&uacute;n, phở, m&igrave;, nui, b&aacute;nh m&igrave;&hellip;), nh&oacute;m chất đạm (thịt, c&aacute;, trứng, t&ocirc;m, đậu đỗ&hellip;), nh&oacute;m chất b&eacute;o (n&ecirc;n sử dụng dầu thực vật, c&aacute;c loại hạt c&oacute; dầu, mỡ c&aacute; với lượng vừa phải), nh&oacute;m rau (rau l&aacute;, rau củ) v&agrave; tr&aacute;i c&acirc;y n&ecirc;n ăn đủ gi&uacute;p cung cấp nhiều chất xơ v&agrave; vitamin chất kho&aacute;ng quan trọng.</li>\r\n	<li>N&ecirc;n chế biến c&aacute;c m&oacute;n ăn bằng c&aacute;ch hấp luộc gi&uacute;p giữ được nhiều dưỡng chất, nấu mềm gi&uacute;p người gi&agrave; ăn ngon miệng, dễ ti&ecirc;u h&oacute;a hơn.</li>\r\n	<li>C&aacute;c bữa phụ n&ecirc;n chọn thực phẩm gi&agrave;u chất dinh dưỡng như sữa, c&aacute;c m&oacute;n ăn l&agrave;m từ sữa&hellip;vừa tốt cho sức khỏe của người gi&agrave; vừa tiện lợi khi sử dụng. Ngo&agrave;i việc cung cấp năng lượng v&agrave; c&aacute;c dưỡng chất thiết yếu như can xi, sắt, kẽm, vitamin A,C,E,.. gi&uacute;p nhanh hồi phục sức khỏe, tăng sự ngon miệng, tăng sức đề kh&aacute;ng, ph&ograve;ng tr&aacute;nh lo&atilde;ng xương , một số loại sữa chuy&ecirc;n biệt c&ograve;n bổ sung Cholin hỗ trợ hoạt động n&atilde;o bộ, g&oacute;p phần ngăn ngừa chứng giảm tr&iacute; nhớ hay bổ sung chất xơ gi&uacute;p tăng cường hấp thu dưỡng chất, ph&ograve;ng tr&aacute;nh t&aacute;o b&oacute;n cũng rất tốt cho người cao tuổi.</li>\r\n	<li>Ch&uacute; &yacute; uống đủ nước gi&uacute;p điều h&ograve;a th&acirc;n nhiệt, đảm bảo trao đổi chất v&agrave; b&agrave;i tiết chất độc ra khỏi cơ thể.</li>\r\n	<li>Một chế độ dinh dưỡng hợp l&yacute;, lối sống năng động, l&agrave;nh mạnh, tinh thần lạc quan, gi&uacute;p người gi&agrave; vượt qua bệnh tật, sống l&acirc;u, sống vui, sống khỏe, y&ecirc;u đời.</li>\r\n</ul>', 'canh-bao-suy-nhuoc-co-the-o-nguoi-lon-tuoi.jpg', '2020-08-05 06:07:06');

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

-- --------------------------------------------------------

--
-- Table structure for table `youtube`
--

CREATE TABLE `youtube` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `embed` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `youtube`
--

INSERT INTO `youtube` (`id`, `title`, `link`, `embed`, `active`) VALUES
(1, 'Hướng dẫn cách bổ sung HMO và DHA tốt nhất cho trẻ', '/', 'https://www.youtube.com/embed/8_rqZSungag', 1),
(2, 'GrowPLUS+ CỦA NutiFood: GIÚP CON GIẢM TỶ LỆ NHIỄM KHUẨN HÔ HẤP MÙA DỊCH BỆNH 6S', '/san-pham', 'https://www.youtube.com/embed/Y0mv2cIHpvI', 0),
(3, 'Thoả sức lớn khôn với nền tảng FDI \"ĐỀ KHÁNG KHOẺ, TIÊU HOÁ TỐT\" từ NutiFood (6s)', '/thong-tin-dinh-duong', 'https://www.youtube.com/embed/30jP5QuWjoQ', 0),
(4, 'BỘT ĂN DẶM ORGANIC GOLD – ĂN DẶM CHUẨN ORGANIC CHÂU ÂU CHO BÉ LỚN KHÔN CÙNG TỰ NHIÊN', '/san-pham/danh-muc', 'https://www.youtube.com/embed/cCDgYsxUKiQ', 0);

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
-- Indexes for table `contact_block`
--
ALTER TABLE `contact_block`
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
-- Indexes for table `nutrition_category`
--
ALTER TABLE `nutrition_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nutrition_information`
--
ALTER TABLE `nutrition_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_47B586C812469DE2` (`category_id`);

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
-- Indexes for table `youtube`
--
ALTER TABLE `youtube`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact_block`
--
ALTER TABLE `contact_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `menu_footer`
--
ALTER TABLE `menu_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nutrition_category`
--
ALTER TABLE `nutrition_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nutrition_information`
--
ALTER TABLE `nutrition_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT for table `youtube`
--
ALTER TABLE `youtube`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- Constraints for table `nutrition_information`
--
ALTER TABLE `nutrition_information`
  ADD CONSTRAINT `FK_47B586C812469DE2` FOREIGN KEY (`category_id`) REFERENCES `nutrition_category` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
