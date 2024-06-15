-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3340
-- Thời gian đã tạo: Th6 13, 2024 lúc 08:17 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `book_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `class` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1',
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$MqNO1XoyoPu0aCIhIOR4audQBKriAbrNJG3P/awxQMQ5N4dDogmZ2', '0343754517', NULL, 'CDTH18', 'TP Hồ Chí Minh', 1, 1, '2023-10-19__logoc.png', NULL, '2023-10-13 07:24:19'),
(6, 'Nhân Viên', 'nhanvien@gmail.com', '$2y$10$9e6/30GrauqWj4L7B1.Pyun6ixmHYTpyWYhwrArbzRYxoAgpW637y', '092311534', NULL, NULL, NULL, 2, 1, NULL, '2020-06-06 05:48:35', '2023-10-13 07:24:00'),
(8, 'Nhân Viên 2', 'nhanvien2@gmail.com', '$2y$10$rdKUQp1yZMRweEaiqQa0s.Ca4PAANRVdWqLd9VmoHV25uYoL.lF6.', '0989275330', NULL, NULL, NULL, 2, 1, NULL, '2023-08-01 02:52:06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint UNSIGNED NOT NULL,
  `a_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint NOT NULL DEFAULT '0',
  `a_active` tinyint NOT NULL DEFAULT '1',
  `a_menu_id` int NOT NULL DEFAULT '0',
  `a_view` int NOT NULL DEFAULT '0',
  `a_description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `a_avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint NOT NULL DEFAULT '0',
  `a_position_1` tinyint NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(1, 'Top 7 Cuốn Sách Hay Nhất Hiện Nay', 'top-7-cuon-sach-hay-nhat-hien-nay', 1, 1, 1, 0, NULL, '2024-06-13__s1.jpg', '<div class=\"std\" id=\"desc_content\">\r\n<p style=\"text-align:justify\"><strong>Gấu B&ocirc;ng Kể Chuyện - Người Bạn T&acirc;m T&igrave;nh Của B&eacute;</strong></p>\r\n\r\n<p style=\"text-align:justify\">0-3 tuổi l&agrave; giai đoạn ho&agrave;ng kim ph&aacute;t triển ng&ocirc;n ngữ ở trẻ, kể chuyện l&agrave; hoạt động cần thiết v&agrave; v&ocirc; c&ugrave;ng quan trọng gi&uacute;p trẻ khai mở n&atilde;o tr&aacute;i, n&atilde;o phải, ph&aacute;t triển tr&iacute; tuệ. Gấu b&ocirc;ng kể chuyện T&acirc;n Việt sẽ thay cha mẹ trở th&agrave;nh người bạn t&acirc;m t&igrave;nh đưa b&eacute; v&agrave;o thế giới thần ti&ecirc;n với nhiều c&acirc;u chuyện cổ t&iacute;ch, thần thoại nổi tiếng, chọn lọc, v&agrave;o những b&agrave;i đồng dao quen thuộc bằng cả tiếng Việt v&agrave; tiếng Anh. Giọng đọc ấm &aacute;p, trầm bổng k&egrave;m theo tiếng nhạc nền du dương, s&acirc;u lắng gi&uacute;p trẻ dễ d&agrave;ng đắm ch&igrave;m v&agrave;o thế giới của ng&ocirc;n ngữ v&agrave; &acirc;m thanh.</p>\r\n\r\n<p style=\"text-align:justify\">Gấu b&ocirc;ng kể chuyện l&agrave; thiết bị th&ocirc;ng minh, gi&uacute;p trẻ vừa học vừa chơi, l&agrave; giải ph&aacute;p tuyệt vời, giải ph&oacute;ng một phần sức lao động cho cha mẹ, hỗ trợ cha mẹ kể chuyện cho con mỗi khi vắng nh&agrave;, đi c&ocirc;ng t&aacute;c hoặc bận rộn, đồng thời g&uacute;p trẻ tr&aacute;nh xa c&aacute;c thiết bị điện tử.</p>\r\n\r\n<p style=\"text-align:justify\"><em><strong>C&aacute;c t&aacute;c dụng của Gấu b&ocirc;ng kể chuyện</strong></em><br />\r\n<strong>1. Học tiếng Anh</strong><br />\r\nTrẻ em l&agrave; thi&ecirc;n t&agrave;i bắt chước, b&eacute; y&ecirc;u của bạn c&oacute; khả năng học ng&ocirc;n ngữ mới rất nhanh v&agrave; ph&aacute;t &acirc;m chuẩn x&aacute;c. Để b&eacute; thường xuy&ecirc;n nghe một ng&ocirc;n ngữ mới l&agrave; c&aacute;ch học thụ động v&ocirc; c&ugrave;ng hiệu quả. Gấu b&ocirc;ng kể chuyện c&oacute; 20 c&acirc;u chuyện tiếng Anh v&agrave; 20 b&agrave;i đồng dao tiếng Anh. Đ&oacute; l&agrave; những c&acirc;u chuyện kinh điển, nổi tiếng; l&agrave; những b&agrave;i đồng dao hết sức quen thuộc v&agrave; được đưa v&agrave;o chương tr&igrave;nh giảng dạy cho trẻ mầm non ở nước ngo&agrave;i.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>2. Gi&uacute;p trẻ ph&aacute;t triển ng&ocirc;n ngữ, mở rộng vốn từ</strong><br />\r\nMột trong những lợi &iacute;ch thấy ngay được của Gấu b&ocirc;ng kể chuyện l&agrave; gi&uacute;p b&eacute; l&agrave;m quen với ng&ocirc;n ngữ, cũng như ph&aacute;t triển vốn từ vựng, c&aacute;ch h&igrave;nh th&agrave;nh c&aacute;c c&acirc;u. Đ&acirc;y l&agrave; một phương ph&aacute;p v&ocirc; c&ugrave;ng hay v&agrave; hiệu quả để dạy cho b&eacute; từ mới v&agrave; ph&aacute;t &acirc;m những từ cơ bản.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>3. R&egrave;n luyện khả năng tập trung</strong><br />\r\nHầu hết trẻ em thường kh&oacute; tập trung v&agrave;o một việc g&igrave; đ&oacute;. Theo nghi&ecirc;n cứu, thời gian tập trung của một đứa trẻ thường chỉ k&eacute;o d&agrave;i 8 ph&uacute;t v&agrave; kh&ocirc;ng qu&aacute; 13 ph&uacute;t. Tuy nhi&ecirc;n đối với những việc m&agrave; trẻ hứng th&uacute;, trẻ sẽ thường xuy&ecirc;n l&agrave;m lặp đi lặp lại. Những c&acirc;u chuyện trong Gấu b&ocirc;ng kể chuyện đầy l&ocirc;i cuốn, được truyền tải th&ocirc;ng qua c&aacute;c giọng đọc ấm &aacute;p, dịu d&agrave;ng, trong trẻo c&ugrave;ng nhạc nền du dương, b&eacute; sẽ bị cuốn h&uacute;t theo diễn biến c&acirc;u chuyện một c&aacute;ch v&ocirc; thức. Khi b&eacute; thường xuy&ecirc;n nghe đi nghe lại c&aacute;c c&acirc;u chuyện, b&eacute; sẽ dần dần k&eacute;o d&agrave;i được khả năng tập trung.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>4. Tăng cường khả năng ghi nhớ</strong><br />\r\nKhi b&eacute; nghe xong những c&acirc;u chuyện th&uacute; vị trong Gấu b&ocirc;ng kể chuyện, cha mẹ c&oacute; thể nhờ b&eacute; kể lại một v&agrave;i chi tiết hoặc to&agrave;n bộ c&acirc;u chuyện n&agrave;y trong v&agrave;i ng&agrave;y sau đ&oacute;. Điều n&agrave;y sẽ gi&uacute;p b&eacute; tăng cường khả năng ghi nhớ.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>5. Cải thiện kỹ năng nghe</strong><br />\r\nThường xuy&ecirc;n nghe Gấu b&ocirc;ng kể chuyện kh&ocirc;ng chỉ gi&uacute;p cải thiện khả năng nghe m&agrave; sau khi được tiếp x&uacute;c với những c&acirc;u chuyện đầy t&iacute;nh nh&acirc;n văn, b&eacute; c&ograve;n biết lắng nghe v&agrave; thấu hiểu.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>6. K&iacute;ch th&iacute;ch tr&iacute; tưởng tượng</strong><br />\r\nGấu b&ocirc;ng kể chuyện chọn lọc những c&acirc;u chuyện cổ t&iacute;ch kinh điển v&agrave; đặc sắc nhất, đưa b&eacute; đến xứ sở thần ti&ecirc;n, đến miền đất của ph&eacute;p m&agrave;u v&agrave; những ước mơ. Ở đ&oacute;, tr&iacute; tưởng tượng v&agrave; khả năng s&aacute;ng tạo của b&eacute; được k&iacute;ch hoạt v&agrave; ph&aacute;t triển cao độ. B&eacute; c&oacute; thể h&igrave;nh dung về nh&acirc;n vật, nơi chốn, c&aacute;c diễn biến theo truyện m&ocirc; tả, đồng thời cũng c&oacute; thể tạo ra những c&acirc;u chuyện theo tr&iacute; tượng của ri&ecirc;ng m&igrave;nh.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>7. R&egrave;n luyện đạo đức v&agrave; phẩm chất qua c&aacute;c c&acirc;u chuyện</strong><br />\r\nTrẻ em th&iacute;ch nghe kể chuyện v&igrave; ch&uacute;ng muốn biết nhiều hơn về thế giới xung quanh, về những nh&acirc;n vật y&ecirc;u th&iacute;ch v&agrave; cố gắng bắt chước c&aacute;c nh&acirc;n vật ấy. Những c&acirc;u chuyện trong Gấu b&ocirc;ng kể chuyện đều mang th&ocirc;ng điệp &yacute; nghĩa về t&igrave;nh y&ecirc;u thương, tr&iacute; th&ocirc;ng minh, l&ograve;ng can đảm, t&iacute;nh trung thực, thật th&agrave;&hellip; b&eacute; sẽ nghe, ghi nhớ v&agrave; học hỏi c&aacute;ch m&agrave; c&aacute;c nh&acirc;n vật trong truyện xử l&yacute; t&igrave;nh huống của họ.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>8. Mở mang kiến thức, kh&aacute;m ph&aacute; ch&acirc;n trời mới</strong><br />\r\nTh&ocirc;ng qua c&aacute;c c&acirc;u chuyện m&agrave; Gấu b&ocirc;ng kể cho b&eacute; nghe, b&eacute; sẽ biết đến nhiều v&ugrave;ng đất, nhiều nền văn h&oacute;a trải d&agrave;i qua nhiều thời đại. B&eacute; sẽ học được c&aacute;c kiến thức Đ&ocirc;ng &ndash; T&acirc;y, kim cổ kh&aacute;c nhau, t&igrave;m hiểu v&agrave; kh&aacute;m ph&aacute; c&aacute;c tri thức mới.</p>\r\n\r\n<p style=\"text-align:justify\">80 nội dung &acirc;m thanh c&oacute; sẵn trong Gấu b&ocirc;ng kể chuyện<br />\r\n20 truyện kể hấp dẫn v&agrave; ấm &aacute;p bằng tiếng Việt<br />\r\n20 truyện kể nổi tiếng v&agrave; th&uacute; vị bằng tiếng Anh<br />\r\n20 b&agrave;i đồng dao quen thuộc v&agrave; du dương bằng tiếng Việt<br />\r\n20 b&agrave;i đồng dao s&ocirc;i nổi v&agrave; đ&aacute;ng y&ecirc;u bằng tiếng Anh</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Kết nối bluetooth</strong><br />\r\nĐể tr&aacute;nh xa c&aacute;c thiết bị th&ocirc;ng minh c&oacute; khả năng g&acirc;y hại cho n&atilde;o v&agrave; mắt của b&eacute; nhưng vẫn thỏa m&atilde;n được sở th&iacute;ch phong ph&uacute; v&agrave; li&ecirc;n tục thay đổi muốn nghe c&aacute;c b&agrave;i kh&aacute;c nhau, Gấu b&ocirc;ng kể chuyện trang bị th&ecirc;m chức năng kết nối Bluetooth.<br />\r\nChỉ cần nhấn giữ ch&acirc;n phải của Gấu b&ocirc;ng l&agrave; c&oacute; thể khởi động chức năng kết nối Bluetooth với m&aacute;y t&iacute;nh x&aacute;ch tay hoặc điện thoại th&ocirc;ng minh. Như vậy cha mẹ c&oacute; thể cho b&eacute; nghe rất nhiều nội dung &acirc;m thanh kh&aacute;c nhau t&ugrave;y thuộc v&agrave;o lựa chọn của cha mẹ.<br />\r\nĐặc biệt, cha mẹ c&oacute; thể trực tiếp thao t&aacute;c tr&ecirc;n m&aacute;y t&iacute;nh, điện thoại để chọn b&agrave;i, tăng giảm &acirc;m lượng của Gấu b&ocirc;ng, đồng thời cũng c&oacute; thể điều khiển tay tr&aacute;i v&agrave; tay phải của Gấu kể chuyện như Hướng dẫn thao t&aacute;c để chọn b&agrave;i, tăng giảm &acirc;m lượng trong m&aacute;y t&iacute;nh, điện thoại.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Hướng dẫn thao t&aacute;c</strong><br />\r\n1. Ch&acirc;n tr&aacute;i:<br />\r\nNhấn giữ - mở hoặc tắt thiết bị<br />\r\nNhấn thả - tạm dừng v&agrave; ph&aacute;t &acirc;m thanh<br />\r\n2. Ch&acirc;n phải:<br />\r\nNhấn giữ - bật hoặc tắt chế độ Bluetooth<br />\r\nNhấn thả - chuyển đổi c&aacute;c nội dung &acirc;m thanh (bao gồm: Truyện kể tiếng Việt, Truyện kể tiếng Anh, Đồng dao tiếng Việt, Đồng dao tiếng Anh)<br />\r\n3. Tay tr&aacute;i:<br />\r\nNhấn giữ - giảm &acirc;m lượng<br />\r\nNhấn thả - trở lại nội dung &acirc;m thanh trước đ&oacute;<br />\r\n4. Tay phải:<br />\r\nNhấn giữ - tăng &acirc;m lượng<br />\r\nNhấn thả - đi tới nội dung &acirc;m thanh tiếp đ&oacute;</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Hướng dẫn kết nối Bluetooth</strong><br />\r\n1. Nhấn giữ ch&acirc;n phải của Gấu b&ocirc;ng cho đến khi ph&aacute;t ra &acirc;m thanh: &ldquo;Bắt đầu kết nối thiết bị qua bluetooth&rdquo;.<br />\r\n2. Bật bluetooth tr&ecirc;n m&aacute;y t&iacute;nh hoặc điện thoại di động<br />\r\n3. T&igrave;m v&agrave; kết nối Bluetooth số hiệu G515BL</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Hướng dẫn sạc điện</strong><br />\r\n1. K&eacute;o &aacute;o len của Gấu b&ocirc;ng l&ecirc;n<br />\r\n2. Mở kh&oacute;a s&eacute;c ở lưng Gấu b&ocirc;ng<br />\r\n3. Lấy đầu d&acirc;y USB trong l&otilde;i b&ocirc;ng kết nối với củ sạc hoặc cổng thiết bị sạc điện.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Th&ocirc;ng số kỹ thuật</strong><br />\r\nK&iacute;ch thước gấu: 34x40cm<br />\r\nPin: Pin sạc 380mAH<br />\r\nTổng thời lượng: 180 ph&uacute;t</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Lưu &yacute; khi sử dụng</strong><br />\r\n1. Kh&ocirc;ng sử dụng sản phẩm khi đang sạc pin<br />\r\n2. Kh&ocirc;ng sử dụng củ sạc c&oacute; điện &aacute;p tr&ecirc;n 5V để kết nối sạc điện<br />\r\n3. Kh&ocirc;ng để sản phẩm tiếp x&uacute;c với lửa v&agrave; nước để tr&aacute;nh ch&aacute;y chập thiết bị điện tử<br />\r\n4. Khuyến nghị xịt cồn l&agrave;m sạch sản phẩm thay v&igrave; giặt sản phẩm. Trong trường hợp thực sự cần thiết, phải lấy thiết bị điện tử trong sản phẩm bỏ ra ngo&agrave;i trước khi giặt.</p>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>', '2023-08-04 03:37:28', 1, 0, '2024-06-13 08:09:27'),
(2, 'Những Công Dụng Của Việc Đọc Sách Có Thể Bạn Chưa Biết', 'nhung-cong-dung-cua-viec-doc-sach-co-the-ban-chua-biet', 1, 1, 1, 0, NULL, '2024-06-13__s2.png', '<p><strong>T&acirc;m L&yacute; Học - Think Psychology - Text Book</strong></p>\r\n\r\n<p><strong>T&acirc;m l&yacute; học l&agrave; g&igrave;?</strong></p>\r\n\r\n<p>T&acirc;m l&yacute; học l&agrave; khoa học nghi&ecirc;n cứu h&agrave;nh vi, c&aacute;c phản ứng v&agrave; h&agrave;nh động c&ocirc;ng khai, c&aacute;c qu&aacute; tr&igrave;nh t&acirc;m thức v&agrave; hoạt động nội t&acirc;m ẩn giấu trong tr&iacute; n&atilde;o. Trong khi c&aacute;c nh&agrave; triết học nghi&ecirc;n cứu tại sao con người lại h&agrave;nh động như những g&igrave; họ thể hiện th&igrave; c&aacute;c nh&agrave; t&acirc;m l&yacute; học sử dụng c&aacute;c phương ph&aacute;p khoa học để m&ocirc; tả, giải th&iacute;ch, dự đo&aacute;n hoặc kiểm so&aacute;t h&agrave;nh vi của con người cũng như động vật một c&aacute;ch ch&iacute;nh x&aacute;c. Phương ph&aacute;p khoa học chỉ mới được &aacute;p dụng v&agrave;o t&acirc;m l&yacute; học chưa l&acirc;u; cho đến khoảng 130 năm trước, t&acirc;m l&yacute; học vẫn chỉ được coi l&agrave; một nh&aacute;nh của triết học.</p>\r\n\r\n<p><strong>Tại sao cần nghi&ecirc;n cứu t&acirc;m l&yacute; học?</strong></p>\r\n\r\n<p>Điều g&igrave; đ&atilde; th&uacute;c đẩy bạn nghi&ecirc;n cứu t&acirc;m l&yacute; học?<br />\r\nC&oacute; thể bạn đang hy vọng giải quyết được cuộc tranh luận về &ldquo;bẩm sinh v&agrave; nu&ocirc;i dưỡng&rdquo;, t&igrave;m hiểu xem liệu c&aacute;c yếu tố m&ocirc;i trường c&oacute; thể thực sự lấn &aacute;t c&aacute;c yếu tố di truyền hay kh&ocirc;ng.</p>\r\n\r\n<p>C&oacute; thể bạn đang t&igrave;m kiếm những mẹo cải thiện mối quan hệ với bạn b&egrave; v&agrave; c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh, hoặc c&oacute; thể bạn đang quan t&acirc;m t&igrave;m hiểu c&aacute;ch l&agrave;m giảm căng thẳng v&agrave; lo lắng trong cuộc sống h&agrave;ng ng&agrave;y.</p>\r\n\r\n<p>Nghi&ecirc;n cứu t&acirc;m l&yacute; học gi&uacute;p giảm những điều kh&ocirc;ng chắc chắn về trải nghiệm của ch&uacute;ng ta bằng c&aacute;ch cung cấp kiến thức về bản th&acirc;n (Tại sao t&ocirc;i bị suy giảm tr&iacute; nhớ ngắn hạn? L&agrave;m thế n&agrave;o để tăng chỉ số IQ?), về người kh&aacute;c (Tại sao c&oacute; người bị rối loạn t&acirc;m thần? Tại sao mọi người lại c&oacute; nh&acirc;n c&aacute;ch kh&aacute;c nhau?), v&agrave; thế giới (Người d&acirc;n đến từ những quốc gia kh&aacute;c nhau c&oacute; nh&igrave;n nhận thế giới theo c&aacute;ch kh&aacute;c nhau hay kh&ocirc;ng? Văn h&oacute;a ảnh hưởng đến nh&acirc;n c&aacute;ch như thế n&agrave;o?).</p>\r\n\r\n<p><strong>S&aacute;ch Gi&aacute;o tr&igrave;nh t&acirc;m l&yacute; học đại cương</strong></p>\r\n\r\n<p>S&aacute;ch Textbook t&acirc;m l&yacute; học dễ tiếp cận với mọi đối tượng bởi những chủ đề được gi&aacute;o sư x&acirc;y dựng v&ocirc; c&ugrave;ng gần gũi với đời sống thực tiễn. Đề t&agrave;i truyền tải trong từng gi&aacute;o tr&igrave;nh gắn liền với những c&acirc;u chuyện kết nối trạng th&aacute;i t&acirc;m l&yacute; học. Những kiến thức khoa học được lồng gh&eacute;p tinh tế c&oacute; thể gi&uacute;p người đọc tiếp nhận dễ d&agrave;ng hơn những kiến thức trừu tượng.</p>\r\n\r\n<p>Nếu bạn n&agrave;o đang l&agrave; sinh vi&ecirc;n ng&agrave;nh t&acirc;m l&yacute; học, hay bạn th&iacute;ch t&igrave;m t&ograve;i c&aacute;c kiến thức, c&aacute;c chủ đề học thuật, s&aacute;ch Textbook, gi&aacute;o tr&igrave;nh t&acirc;m l&yacute; học x&atilde; hội, gi&aacute;o tr&igrave;nh t&acirc;m l&yacute; học ph&aacute;t triển, gi&aacute;o tr&igrave;nh t&acirc;m l&yacute; học h&agrave;nh vi&hellip;th&igrave; n&ecirc;n t&igrave;m kiếm c&aacute;c gi&aacute;o tr&igrave;nh t&acirc;m l&yacute; học đại cương nhập m&ocirc;n để dễ đọc v&agrave; tiếp cận.</p>\r\n\r\n<p>Bạn c&oacute; thể tham khảo quyển s&aacute;ch Textbook &ldquo;T&acirc;m l&yacute; học&rdquo; được viết bởi b&agrave; ABIGAIL A. BAIRD &ndash; Gi&aacute;o sư T&acirc;m l&yacute; học tại trường Cao đẳng Vassar. ABIGAIL A. BAIRD l&agrave; Gi&aacute;o sư T&acirc;m l&yacute; học tại trường Cao đẳng Vassar. B&agrave; tốt nghiệp đại học tại trường Cao đẳng Vassar v&agrave; nhận cả bằng Thạc sĩ v&agrave; Tiến sĩ từ Đại học Harvard. Sau khi ho&agrave;n th&agrave;nh chương tr&igrave;nh Tiến sĩ, b&agrave; được nhận Học bổng sau Tiến sĩ tại Trung t&acirc;m Khoa học Thần kinh Nhận thức tại Đại học Dartmouth. Nhiều b&agrave;i b&aacute;o v&agrave; b&agrave;i thuyết tr&igrave;nh của b&agrave; đề cập đến c&aacute;c chủ đề như sự ph&aacute;t triển n&atilde;o bộ ở tuổi vị th&agrave;nh ni&ecirc;n, điều chỉnh nhận thức về cảm x&uacute;c, tư ph&aacute;p vị th&agrave;nh ni&ecirc;n v&agrave; c&aacute;c biểu hiện của thi&ecirc;n kiến chủng tộc trong tr&iacute; n&atilde;o v&agrave; h&agrave;nh vi.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>8935278607564</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td><a href=\"https://www.fahasa.com/saigonbooks?fhs_campaign=ATTRIBUTE_PRODUCT\">Saigon Books</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Abigail Baird</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Người Dịch</th>\r\n			<td>Hồ Thị Ngọc Hương</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>C&ocirc;ng Thương</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2023</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ng&ocirc;n Ngữ</th>\r\n			<td>Tiếng Việt</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>460</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>27.5 x 20.5 x 2.2 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>444</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-trinh/giao-trinh-dh-cd-thcn.html?order=num_orders_month\">Top 100 sản phẩm Gi&aacute;o tr&igrave;nh ĐH, CĐ, THCN b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Gi&aacute; sản phẩm tr&ecirc;n Fahasa.com đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như Phụ ph&iacute; đ&oacute;ng g&oacute;i, ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh,...</p>\r\n\r\n			<p>Ch&iacute;nh s&aacute;ch khuyến m&atilde;i tr&ecirc;n Fahasa.com kh&ocirc;ng &aacute;p dụng cho Hệ thống Nh&agrave; s&aacute;ch Fahasa tr&ecirc;n to&agrave;n quốc</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>T&acirc;m L&yacute; Học - Think Psychology - Text Book</strong></p>\r\n\r\n<p><strong>T&acirc;m l&yacute; học l&agrave; g&igrave;?</strong></p>\r\n\r\n<p>T&acirc;m l&yacute; học l&agrave; khoa học nghi&ecirc;n cứu h&agrave;nh vi, c&aacute;c phản ứng v&agrave; h&agrave;nh động c&ocirc;ng khai, c&aacute;c qu&aacute; tr&igrave;nh t&acirc;m thức v&agrave; hoạt động nội t&acirc;m ẩn giấu trong tr&iacute; n&atilde;o. Trong khi c&aacute;c nh&agrave; triết học nghi&ecirc;n cứu tại sao con người lại h&agrave;nh động như những g&igrave; họ thể hiện th&igrave; c&aacute;c nh&agrave; t&acirc;m l&yacute; học sử dụng c&aacute;c phương ph&aacute;p khoa học để m&ocirc; tả, giải th&iacute;ch, dự đo&aacute;n hoặc kiểm so&aacute;t h&agrave;nh vi của con người cũng như động vật một c&aacute;ch ch&iacute;nh x&aacute;c. Phương ph&aacute;p khoa học chỉ mới được &aacute;p dụng v&agrave;o t&acirc;m l&yacute; học chưa l&acirc;u; cho đến khoảng 130 năm trước, t&acirc;m l&yacute; học vẫn chỉ được coi l&agrave; một nh&aacute;nh của triết học.</p>\r\n\r\n<p><strong>Tại sao cần nghi&ecirc;n cứu t&acirc;m l&yacute; học?</strong></p>\r\n\r\n<p>Điều g&igrave; đ&atilde; th&uacute;c đẩy bạn nghi&ecirc;n cứu t&acirc;m l&yacute; học?<br />\r\nC&oacute; thể bạn đang hy vọng giải quyết được cuộc tranh luận về &ldquo;bẩm sinh v&agrave; nu&ocirc;i dưỡng&rdquo;, t&igrave;m hiểu xem liệu c&aacute;c yếu tố m&ocirc;i trường c&oacute; thể thực sự lấn &aacute;t c&aacute;c yếu tố di truyền hay kh&ocirc;ng.</p>\r\n\r\n<p>C&oacute; thể bạn đang t&igrave;m kiếm những mẹo cải thiện mối quan hệ với bạn b&egrave; v&agrave; c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh, hoặc c&oacute; thể bạn đang quan t&acirc;m t&igrave;m hiểu c&aacute;ch l&agrave;m giảm căng thẳng v&agrave; lo lắng trong cuộc sống h&agrave;ng ng&agrave;y.</p>\r\n\r\n<p>Nghi&ecirc;n cứu t&acirc;m l&yacute; học gi&uacute;p giảm những điều kh&ocirc;ng chắc chắn về trải nghiệm của ch&uacute;ng ta bằng c&aacute;ch cung cấp kiến thức về bản th&acirc;n (Tại sao t&ocirc;i bị suy giảm tr&iacute; nhớ ngắn hạn? L&agrave;m thế n&agrave;o để tăng chỉ số IQ?), về người kh&aacute;c (Tại sao c&oacute; người bị rối loạn t&acirc;m thần? Tại sao mọi người lại c&oacute; nh&acirc;n c&aacute;ch kh&aacute;c nhau?), v&agrave; thế giới (Người d&acirc;n đến từ những quốc gia kh&aacute;c nhau c&oacute; nh&igrave;n nhận thế giới theo c&aacute;ch kh&aacute;c nhau hay kh&ocirc;ng? Văn h&oacute;a ảnh hưởng đến nh&acirc;n c&aacute;ch như thế n&agrave;o?).</p>\r\n\r\n<p><strong>S&aacute;ch Gi&aacute;o tr&igrave;nh t&acirc;m l&yacute; học đại cương</strong></p>\r\n\r\n<p>S&aacute;ch Textbook t&acirc;m l&yacute; học dễ tiếp cận với mọi đối tượng bởi những chủ đề được gi&aacute;o sư x&acirc;y dựng v&ocirc; c&ugrave;ng gần gũi với đời sống thực tiễn. Đề t&agrave;i truyền tải trong từng gi&aacute;o tr&igrave;nh gắn liền với những c&acirc;u chuyện kết nối trạng th&aacute;i t&acirc;m l&yacute; học. Những kiến thức khoa học được lồng gh&eacute;p tinh tế c&oacute; thể gi&uacute;p người đọc tiếp nhận dễ d&agrave;ng hơn những kiến thức trừu tượng.</p>\r\n\r\n<p>Nếu bạn n&agrave;o đang l&agrave; sinh vi&ecirc;n ng&agrave;nh t&acirc;m l&yacute; học, hay bạn th&iacute;ch t&igrave;m t&ograve;i c&aacute;c kiến thức, c&aacute;c chủ đề học thuật, s&aacute;ch Textbook, gi&aacute;o tr&igrave;nh t&acirc;m l&yacute; học x&atilde; hội, gi&aacute;o tr&igrave;nh t&acirc;m l&yacute; học ph&aacute;t triển, gi&aacute;o tr&igrave;nh t&acirc;m l&yacute; học h&agrave;nh vi&hellip;th&igrave; n&ecirc;n t&igrave;m kiếm c&aacute;c gi&aacute;o tr&igrave;nh t&acirc;m l&yacute; học đại cương nhập m&ocirc;n để dễ đọc v&agrave; tiếp cận.</p>\r\n\r\n<p>Bạn c&oacute; thể tham khảo quyển s&aacute;ch Textbook &ldquo;T&acirc;m l&yacute; học&rdquo; được viết bởi b&agrave; ABIGAIL A. BAIRD &ndash; Gi&aacute;o sư T&acirc;m l&yacute; học tại trường Cao đẳng Vassar. ABIGAIL A. BAIRD l&agrave; Gi&aacute;o sư T&acirc;m l&yacute; học tại trường Cao đẳng Vassar. B&agrave; tốt nghiệp đại học tại trường Cao đẳng Vassar v&agrave; nhận cả bằng Thạc sĩ v&agrave; Tiến sĩ từ Đại học Harvard. Sau khi ho&agrave;n th&agrave;nh chương tr&igrave;nh Tiến sĩ, b&agrave; được nhận Học bổng sau Tiến sĩ tại Trung t&acirc;m Khoa học Thần kinh Nhận thức tại Đại học Dartmouth. Nhiều b&agrave;i b&aacute;o v&agrave; b&agrave;i thuyết tr&igrave;nh của b&agrave; đề cập đến c&aacute;c chủ đề như sự ph&aacute;t triển n&atilde;o bộ ở tuổi vị th&agrave;nh ni&ecirc;n, điều chỉnh nhận thức về cảm x&uacute;c, tư ph&aacute;p vị th&agrave;nh ni&ecirc;n v&agrave; c&aacute;c biểu hiện của thi&ecirc;n kiến chủng tộc trong tr&iacute; n&atilde;o v&agrave; h&agrave;nh vi.</p>', '2023-08-04 03:38:34', 1, 0, '2024-06-13 08:11:46'),
(3, 'Top 9 Cuốn Sách Cuốn Hút', 'top-9-cuon-sach-cuon-hut', 1, 1, 1, 0, NULL, '2024-06-13__s4.jpg', '<p>BỐN THỎA ƯỚC<br />\r\nB&iacute; quyết sống tự do, b&igrave;nh an, hạnh ph&uacute;c giữa thế giới bất định<br />\r\ndon Miguel Ruiz - Hậu duệ của người Toltec cổ xưa</p>\r\n\r\n<p>H&agrave;ng ng&agrave;n năm trước, người Toltec nổi tiếng khắp miền Nam Mexico l&agrave; những &ldquo;nh&agrave; th&ocirc;ng th&aacute;i&rdquo;. C&aacute;c nh&agrave; nh&acirc;n chủng học nhắc đến người Toltec như một quốc gia, một d&acirc;n tộc. Tr&ecirc;n thực tế, người Toltec l&agrave; một số những nh&agrave; khoa học v&agrave; nghệ sĩ tập họp lại v&agrave; tạo ra một x&atilde; hội ri&ecirc;ng để c&ugrave;ng nghi&ecirc;n cứu, g&igrave;n giữ tri thức v&agrave; c&aacute;ch thực h&agrave;nh t&acirc;m linh của những nền văn minh cổ đại. Họ l&agrave; người hướng dẫn (nagual), l&agrave; học tr&ograve; của Teotihuacan &ndash; th&agrave;nh phố c&aacute;c kim tự th&aacute;p cổ đại nằm ở ngoại vi th&agrave;nh phố Mexico, được biết đến với t&ecirc;n gọi l&agrave; &ldquo;Nơi con người đắc đạo th&agrave;nh thần th&aacute;nh&rdquo;.</p>\r\n\r\n<p>Trải qua nhiều thi&ecirc;n ni&ecirc;n kỷ, c&aacute;c vị nagual bị bắt buộc giữ b&iacute; mật to&agrave;n bộ những lời dạy th&ocirc;ng th&aacute;i cổ xưa n&agrave;y. Trong thời kỳ chinh phục của ch&acirc;u u, một số c&aacute; nh&acirc;n thực h&agrave;nh t&acirc;m linh đ&atilde; trở n&ecirc;n lạm quyền, hung hăng. V&igrave; vậy, c&aacute;c nagual kh&ocirc;ng c&ograve;n c&aacute;ch n&agrave;o kh&aacute;c l&agrave; giấu k&iacute;n, tr&aacute;nh cho những lời dạy n&agrave;y rơi v&agrave;o tay những kẻ cố t&igrave;nh lợi dụng để l&agrave;m những điều kh&ocirc;ng đ&uacute;ng.</p>\r\n\r\n<p>May thay, tri thức b&iacute; truyền n&agrave;y của người Toltec vẫn được truyền từ đời n&agrave;y sang đời kh&aacute;c trong gia tộc của c&aacute;c nagual. V&agrave; d&ugrave; đ&atilde; được giữ b&iacute; mật h&agrave;ng trăm năm, những lời ti&ecirc;n tri cổ xưa đ&atilde; dự đo&aacute;n rằng những lời dạy th&ocirc;ng th&aacute;i n&agrave;y rồi sẽ được mở ra cho người d&acirc;n. V&agrave; giờ đ&acirc;y, Miguel Ruiz, một vị nagual của d&ograve;ng tộc Hiệp sĩ Đại B&agrave;ng, đ&atilde; được Bề Tr&ecirc;n lựa chọn để chia sẻ cho đại ch&uacute;ng những lời dạy đầy quyền năng n&agrave;y của người Toltec.</p>\r\n\r\n<p>Giống như c&aacute;c đạo gi&aacute;o b&iacute; truyền kh&aacute;c tr&ecirc;n thế giới, lời dạy của người Toltec cũng bắt nguồn từ ch&acirc;n l&yacute; chung của vũ trụ. Mặc d&ugrave; kh&ocirc;ng được xem l&agrave; đạo gi&aacute;o, nhưng người hướng dẫn lời dạy Toltec đều được tri t&ocirc;n như những bậc thầy. V&agrave; mặc d&ugrave; c&oacute; tinh thần tương tự như đạo gi&aacute;o, lời dạy Toltec c&oacute; thể xem như một phong c&aacute;ch sống lấy hạnh ph&uacute;c v&agrave; t&igrave;nh y&ecirc;u thương l&agrave;m kim chỉ nam.</p>\r\n\r\n<p>Bốn thỏa ước - Bộ quy tắc sống của người Toltec cổ xưa</p>\r\n\r\n<p>Trong Bốn thỏa ước, don Miguel Ruiz tiết lộ nguồn gốc của niềm tin tự giới hạn bản th&acirc;n cướp đi niềm vui v&agrave; tạo ra đau khổ kh&ocirc;ng cần thiết. Dựa tr&ecirc;n sự kh&ocirc;n ngoan của Toltec cổ xưa, Bốn thỏa ước đưa ra một quy tắc ứng xử mạnh mẽ c&oacute; thể nhanh ch&oacute;ng biến cuộc sống của ch&uacute;ng ta sang một trải nghiệm mới về tự do, hạnh ph&uacute;c thực sự v&agrave; t&igrave;nh y&ecirc;u.</p>\r\n\r\n<p>Theo t&aacute;c giả, mọi việc một người l&agrave;m đều dựa tr&ecirc;n những thỏa thuận m&agrave; họ đ&atilde; thực hiện với ch&iacute;nh họ, với người kh&aacute;c, với Ch&uacute;a, v&agrave; với ch&iacute;nh cuộc sống. Trong c&aacute;c thỏa ước n&agrave;y, mọi người c&oacute; thể tự cho m&igrave;nh biết họ l&agrave; ai, cư xử như thế n&agrave;o, điều g&igrave; c&oacute; thể v&agrave; điều g&igrave; l&agrave; kh&ocirc;ng thể. Một số thỏa ước m&agrave; c&aacute;c c&aacute; nh&acirc;n tạo ra c&oacute; thể kh&ocirc;ng g&acirc;y ra vấn đề, nhưng c&oacute; một số thỏa ước xuất ph&aacute;t từ t&acirc;m l&yacute; sợ h&atilde;i v&agrave; c&oacute; khả năng l&agrave;m cạn kiệt năng lượng cảm x&uacute;c của một người cũng như l&agrave;m giảm gi&aacute; trị bản th&acirc;n của ch&iacute;nh họ.</p>\r\n\r\n<p>Ruiz tin rằng để t&igrave;m thấy niềm vui c&aacute; nh&acirc;n, người ta phải tho&aacute;t khỏi những khu&ocirc;n mẫu do x&atilde; hội &aacute;p đặt v&agrave; dựa tr&ecirc;n nỗi sợ h&atilde;i c&oacute; thể ảnh hưởng tiềm thức đến h&agrave;nh vi v&agrave; suy nghĩ của c&aacute; nh&acirc;n. Một trong những nội dung ch&iacute;nh kh&aacute;c của cuốn s&aacute;ch cũng gợi &yacute; rằng phần lớn đau khổ l&agrave; do bản th&acirc;n tạo ra v&agrave; hầu hết thời gian, bạn c&oacute; khả năng tự chuyển đổi những suy nghĩ ti&ecirc;u cực m&agrave; bạn c&oacute; thể c&oacute; về c&aacute;c t&igrave;nh huống xảy ra trong cuộc sống của bạn. T&aacute;c giả x&aacute;c định c&aacute;c nguồn gốc của bất hạnh trong cuộc sống v&agrave; đề xuất bốn thỏa ước c&oacute; lợi m&agrave; bạn c&oacute; thể thực hiện với bản th&acirc;n để cải thiện trạng th&aacute;i hạnh ph&uacute;c tổng thể của ch&iacute;nh bạn. Bằng c&aacute;ch thực hiện một hiệp ước với bốn thỏa ước ch&iacute;nh n&agrave;y, bạn c&oacute; thể t&aacute;c động đ&aacute;ng kể đến mức độ hạnh ph&uacute;c m&agrave; ch&iacute;nh bạn cảm thấy trong cuộc sống của m&igrave;nh, bất kể ho&agrave;n cảnh b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<p>Bốn thỏa ước l&agrave;:</p>\r\n\r\n<p>1. Thỏa ước thứ nhất: Sử dụng ng&ocirc;n từ t&iacute;ch cực</p>\r\n\r\n<p>H&atilde;y n&oacute;i lời ch&iacute;nh trực. N&oacute;i đ&uacute;ng điều bạn nghĩ. Tr&aacute;nh d&ugrave;ng ng&ocirc;n từ để chỉ tr&iacute;ch bản th&acirc;n hoặc đồn thổi về người kh&aacute;c. Sử dụng sức mạnh của sự thật v&agrave; t&igrave;nh y&ecirc;u trong ng&ocirc;n từ.</p>\r\n\r\n<p>2. Thỏa thuận thứ hai: Kh&ocirc;ng cho ph&eacute;p bản th&acirc;n bị ảnh hưởng</p>\r\n\r\n<p>Bạn kh&ocirc;ng phải chịu tr&aacute;ch nhiệm cho bất cứ h&agrave;nh động n&agrave;o của người kh&aacute;c. Những g&igrave; họ n&oacute;i v&agrave; l&agrave;m chỉ phản &aacute;nh thực tế của ch&iacute;nh họ, giấc mơ của ch&iacute;nh họ. Khi bạn miễn nhiễm với quan điểm v&agrave; h&agrave;nh động của người kh&aacute;c, bạn sẽ kh&ocirc;ng trở th&agrave;nh nạn nh&acirc;n của những đau khổ kh&ocirc;ng cần thiết.</p>\r\n\r\n<p>3. Thỏa thuận thứ ba: Đừng bao giờ đưa ra giả định</p>\r\n\r\n<p>H&atilde;y dũng cảm đặt ra những c&acirc;u hỏi v&agrave; b&agrave;y tỏ điều m&agrave; bạn thực sự mong muốn. H&atilde;y giao tiếp với người kh&aacute;c r&otilde; r&agrave;ng nhất c&oacute; thể để tr&aacute;nh hiểu lầm, buồn rầu v&agrave; khổ sở. Chỉ với một thỏa ước n&agrave;y th&ocirc;i, bạn sẽ c&oacute; thể ho&agrave;n to&agrave;n biến đổi cuộc sống của m&igrave;nh.</p>\r\n\r\n<p>4. Thỏa thuận thứ tư: Lu&ocirc;n cố gắng hết sức</p>\r\n\r\n<p>&ldquo;Hết sức&rdquo; l&agrave; điều thay đổi t&ugrave;y theo thời điểm. &ldquo;Hết sức&rdquo; khi bạn khỏe mạnh sẽ kh&aacute;c với &ldquo;hết sức&rdquo; khi bạn ốm đau. Trong bất kỳ ho&agrave;n cảnh n&agrave;o, chỉ cần cố gắng hết sức, bạn sẽ tr&aacute;nh được việc tự ph&aacute;n x&eacute;t, tự ngược đ&atilde;i v&agrave; hối hận.</p>\r\n\r\n<p>H&atilde;y kh&aacute;m ph&aacute; v&agrave; c&ugrave;ng Bốn thỏa ước sống tự do, b&igrave;nh an v&agrave; hạnh ph&uacute;c giữa thế giới bất định n&agrave;y nh&eacute;!</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>8935278606604</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td><a href=\"https://www.fahasa.com/saigonbooks?fhs_campaign=ATTRIBUTE_PRODUCT\">Saigon Books</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Janet Mills , don Miguel Ruiz</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>D&acirc;n Tr&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2022</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>200</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>19 x 13 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>190</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm hiển thị trong</th>\r\n			<td>\r\n			<ul>\r\n				<li><a href=\"https://www.fahasa.com/sai-gon-books-sach-moi?fhs_campaign=INTERNAL_LINKING\">S&aacute;ch Sắp Ph&aacute;t H&agrave;nh</a></li>\r\n				<li><a href=\"https://www.fahasa.com/saigonbooks?fhs_campaign=INTERNAL_LINKING\">Saigon Books</a></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/tam-ly-ky-nang-song/ky-nang-song.html?order=num_orders_month\">Top 100 sản phẩm Kỹ năng sống b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Gi&aacute; sản phẩm tr&ecirc;n Fahasa.com đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như Phụ ph&iacute; đ&oacute;ng g&oacute;i, ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh,...</p>\r\n\r\n			<p>Ch&iacute;nh s&aacute;ch khuyến m&atilde;i tr&ecirc;n Fahasa.com kh&ocirc;ng &aacute;p dụng cho Hệ thống Nh&agrave; s&aacute;ch Fahasa tr&ecirc;n to&agrave;n quốc</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>BỐN THỎA ƯỚC<br />\r\nB&iacute; quyết sống tự do, b&igrave;nh an, hạnh ph&uacute;c giữa thế giới bất định<br />\r\ndon Miguel Ruiz - Hậu duệ của người Toltec cổ xưa</p>\r\n\r\n<p>H&agrave;ng ng&agrave;n năm trước, người Toltec nổi tiếng khắp miền Nam Mexico l&agrave; những &ldquo;nh&agrave; th&ocirc;ng th&aacute;i&rdquo;. C&aacute;c nh&agrave; nh&acirc;n chủng học nhắc đến người Toltec như một quốc gia, một d&acirc;n tộc. Tr&ecirc;n thực tế, người Toltec l&agrave; một số những nh&agrave; khoa học v&agrave; nghệ sĩ tập họp lại v&agrave; tạo ra một x&atilde; hội ri&ecirc;ng để c&ugrave;ng nghi&ecirc;n cứu, g&igrave;n giữ tri thức v&agrave; c&aacute;ch thực h&agrave;nh t&acirc;m linh của những nền văn minh cổ đại. Họ l&agrave; người hướng dẫn (nagual), l&agrave; học tr&ograve; của Teotihuacan &ndash; th&agrave;nh phố c&aacute;c kim tự th&aacute;p cổ đại nằm ở ngoại vi th&agrave;nh phố Mexico, được biết đến với t&ecirc;n gọi l&agrave; &ldquo;Nơi con người đắc đạo th&agrave;nh thần th&aacute;nh&rdquo;.</p>\r\n\r\n<p>Trải qua nhiều thi&ecirc;n ni&ecirc;n kỷ, c&aacute;c vị nagual bị bắt buộc giữ b&iacute; mật to&agrave;n bộ những lời dạy th&ocirc;ng th&aacute;i cổ xưa n&agrave;y. Trong thời kỳ chinh phục của ch&acirc;u u, một số c&aacute; nh&acirc;n thực h&agrave;nh t&acirc;m linh đ&atilde; trở n&ecirc;n lạm quyền, hung hăng. V&igrave; vậy, c&aacute;c nagual kh&ocirc;ng c&ograve;n c&aacute;ch n&agrave;o kh&aacute;c l&agrave; giấu k&iacute;n, tr&aacute;nh cho những lời dạy n&agrave;y rơi v&agrave;o tay những kẻ cố t&igrave;nh lợi dụng để l&agrave;m những điều kh&ocirc;ng đ&uacute;ng.</p>\r\n\r\n<p>May thay, tri thức b&iacute; truyền n&agrave;y của người Toltec vẫn được truyền từ đời n&agrave;y sang đời kh&aacute;c trong gia tộc của c&aacute;c nagual. V&agrave; d&ugrave; đ&atilde; được giữ b&iacute; mật h&agrave;ng trăm năm, những lời ti&ecirc;n tri cổ xưa đ&atilde; dự đo&aacute;n rằng những lời dạy th&ocirc;ng th&aacute;i n&agrave;y rồi sẽ được mở ra cho người d&acirc;n. V&agrave; giờ đ&acirc;y, Miguel Ruiz, một vị nagual của d&ograve;ng tộc Hiệp sĩ Đại B&agrave;ng, đ&atilde; được Bề Tr&ecirc;n lựa chọn để chia sẻ cho đại ch&uacute;ng những lời dạy đầy quyền năng n&agrave;y của người Toltec.</p>\r\n\r\n<p>Giống như c&aacute;c đạo gi&aacute;o b&iacute; truyền kh&aacute;c tr&ecirc;n thế giới, lời dạy của người Toltec cũng bắt nguồn từ ch&acirc;n l&yacute; chung của vũ trụ. Mặc d&ugrave; kh&ocirc;ng được xem l&agrave; đạo gi&aacute;o, nhưng người hướng dẫn lời dạy Toltec đều được tri t&ocirc;n như những bậc thầy. V&agrave; mặc d&ugrave; c&oacute; tinh thần tương tự như đạo gi&aacute;o, lời dạy Toltec c&oacute; thể xem như một phong c&aacute;ch sống lấy hạnh ph&uacute;c v&agrave; t&igrave;nh y&ecirc;u thương l&agrave;m kim chỉ nam.</p>\r\n\r\n<p>Bốn thỏa ước - Bộ quy tắc sống của người Toltec cổ xưa</p>\r\n\r\n<p>Trong Bốn thỏa ước, don Miguel Ruiz tiết lộ nguồn gốc của niềm tin tự giới hạn bản th&acirc;n cướp đi niềm vui v&agrave; tạo ra đau khổ kh&ocirc;ng cần thiết. Dựa tr&ecirc;n sự kh&ocirc;n ngoan của Toltec cổ xưa, Bốn thỏa ước đưa ra một quy tắc ứng xử mạnh mẽ c&oacute; thể nhanh ch&oacute;ng biến cuộc sống của ch&uacute;ng ta sang một trải nghiệm mới về tự do, hạnh ph&uacute;c thực sự v&agrave; t&igrave;nh y&ecirc;u.</p>\r\n\r\n<p>Theo t&aacute;c giả, mọi việc một người l&agrave;m đều dựa tr&ecirc;n những thỏa thuận m&agrave; họ đ&atilde; thực hiện với ch&iacute;nh họ, với người kh&aacute;c, với Ch&uacute;a, v&agrave; với ch&iacute;nh cuộc sống. Trong c&aacute;c thỏa ước n&agrave;y, mọi người c&oacute; thể tự cho m&igrave;nh biết họ l&agrave; ai, cư xử như thế n&agrave;o, điều g&igrave; c&oacute; thể v&agrave; điều g&igrave; l&agrave; kh&ocirc;ng thể. Một số thỏa ước m&agrave; c&aacute;c c&aacute; nh&acirc;n tạo ra c&oacute; thể kh&ocirc;ng g&acirc;y ra vấn đề, nhưng c&oacute; một số thỏa ước xuất ph&aacute;t từ t&acirc;m l&yacute; sợ h&atilde;i v&agrave; c&oacute; khả năng l&agrave;m cạn kiệt năng lượng cảm x&uacute;c của một người cũng như l&agrave;m giảm gi&aacute; trị bản th&acirc;n của ch&iacute;nh họ.</p>\r\n\r\n<p>Ruiz tin rằng để t&igrave;m thấy niềm vui c&aacute; nh&acirc;n, người ta phải tho&aacute;t khỏi những khu&ocirc;n mẫu do x&atilde; hội &aacute;p đặt v&agrave; dựa tr&ecirc;n nỗi sợ h&atilde;i c&oacute; thể ảnh hưởng tiềm thức đến h&agrave;nh vi v&agrave; suy nghĩ của c&aacute; nh&acirc;n. Một trong những nội dung ch&iacute;nh kh&aacute;c của cuốn s&aacute;ch cũng gợi &yacute; rằng phần lớn đau khổ l&agrave; do bản th&acirc;n tạo ra v&agrave; hầu hết thời gian, bạn c&oacute; khả năng tự chuyển đổi những suy nghĩ ti&ecirc;u cực m&agrave; bạn c&oacute; thể c&oacute; về c&aacute;c t&igrave;nh huống xảy ra trong cuộc sống của bạn. T&aacute;c giả x&aacute;c định c&aacute;c nguồn gốc của bất hạnh trong cuộc sống v&agrave; đề xuất bốn thỏa ước c&oacute; lợi m&agrave; bạn c&oacute; thể thực hiện với bản th&acirc;n để cải thiện trạng th&aacute;i hạnh ph&uacute;c tổng thể của ch&iacute;nh bạn. Bằng c&aacute;ch thực hiện một hiệp ước với bốn thỏa ước ch&iacute;nh n&agrave;y, bạn c&oacute; thể t&aacute;c động đ&aacute;ng kể đến mức độ hạnh ph&uacute;c m&agrave; ch&iacute;nh bạn cảm thấy trong cuộc sống của m&igrave;nh, bất kể ho&agrave;n cảnh b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<p>Bốn thỏa ước l&agrave;:</p>\r\n\r\n<p>1. Thỏa ước thứ nhất: Sử dụng ng&ocirc;n từ t&iacute;ch cực</p>\r\n\r\n<p>H&atilde;y n&oacute;i lời ch&iacute;nh trực. N&oacute;i đ&uacute;ng điều bạn nghĩ. Tr&aacute;nh d&ugrave;ng ng&ocirc;n từ để chỉ tr&iacute;ch bản th&acirc;n hoặc đồn thổi về người kh&aacute;c. Sử dụng sức mạnh của sự thật v&agrave; t&igrave;nh y&ecirc;u trong ng&ocirc;n từ.</p>\r\n\r\n<p>2. Thỏa thuận thứ hai: Kh&ocirc;ng cho ph&eacute;p bản th&acirc;n bị ảnh hưởng</p>\r\n\r\n<p>Bạn kh&ocirc;ng phải chịu tr&aacute;ch nhiệm cho bất cứ h&agrave;nh động n&agrave;o của người kh&aacute;c. Những g&igrave; họ n&oacute;i v&agrave; l&agrave;m chỉ phản &aacute;nh thực tế của ch&iacute;nh họ, giấc mơ của ch&iacute;nh họ. Khi bạn miễn nhiễm với quan điểm v&agrave; h&agrave;nh động của người kh&aacute;c, bạn sẽ kh&ocirc;ng trở th&agrave;nh nạn nh&acirc;n của những đau khổ kh&ocirc;ng cần thiết.</p>\r\n\r\n<p>3. Thỏa thuận thứ ba: Đừng bao giờ đưa ra giả định</p>\r\n\r\n<p>H&atilde;y dũng cảm đặt ra những c&acirc;u hỏi v&agrave; b&agrave;y tỏ điều m&agrave; bạn thực sự mong muốn. H&atilde;y giao tiếp với người kh&aacute;c r&otilde; r&agrave;ng nhất c&oacute; thể để tr&aacute;nh hiểu lầm, buồn rầu v&agrave; khổ sở. Chỉ với một thỏa ước n&agrave;y th&ocirc;i, bạn sẽ c&oacute; thể ho&agrave;n to&agrave;n biến đổi cuộc sống của m&igrave;nh.</p>\r\n\r\n<p>4. Thỏa thuận thứ tư: Lu&ocirc;n cố gắng hết sức</p>\r\n\r\n<p>&ldquo;Hết sức&rdquo; l&agrave; điều thay đổi t&ugrave;y theo thời điểm. &ldquo;Hết sức&rdquo; khi bạn khỏe mạnh sẽ kh&aacute;c với &ldquo;hết sức&rdquo; khi bạn ốm đau. Trong bất kỳ ho&agrave;n cảnh n&agrave;o, chỉ cần cố gắng hết sức, bạn sẽ tr&aacute;nh được việc tự ph&aacute;n x&eacute;t, tự ngược đ&atilde;i v&agrave; hối hận.</p>\r\n\r\n<p>H&atilde;y kh&aacute;m ph&aacute; v&agrave; c&ugrave;ng Bốn thỏa ước sống tự do, b&igrave;nh an v&agrave; hạnh ph&uacute;c giữa thế giới bất định n&agrave;y nh&eacute;!</p>', '2023-08-04 03:39:23', 1, 1, '2024-06-13 08:12:24');
INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(4, 'Top 4 Sách Hot', 'top-4-sach-hot', 1, 1, 1, 0, NULL, '2024-06-13__s1.jpg', '<p><strong>Hiệu S&aacute;ch Cuối C&ugrave;ng Ở London - Tiểu Thuyết Về Chiến Tranh Thế Giới Thứ Hai</strong></p>\r\n\r\n<p>Hiệu s&aacute;ch cuối c&ugrave;ng ở London l&agrave; cuốn tiểu thuyết t&igrave;nh cảm hấp dẫn, l&agrave; những trang sử ghi lại qu&atilde;ng thời gian kh&oacute; khăn của người d&acirc;n London trong Chiến tranh Thế giới thứ Hai. Được truyền cảm hứng từ qu&aacute; khứ c&oacute; thật của số &iacute;t hiệu s&aacute;ch c&ograve;n tồn tại sau cuộc oanh k&iacute;ch của Đức quốc x&atilde;, cuốn s&aacute;ch đ&atilde; kể lại một c&acirc;u chuyện về những mất m&aacute;t của thời chiến, về t&igrave;nh y&ecirc;u v&agrave; sức mạnh của văn chương gi&uacute;p con người ta vượt qua giai đoạn đen tối nhất.</p>\r\n\r\n<p>Cuốn s&aacute;ch đưa bạn quay trở lại thời điểm th&aacute;ng 8 năm 1939, l&uacute;c ấy người d&acirc;n London đang r&aacute;o riết chuẩn bị cho chiến tranh khi lực lượng của Hitler tr&agrave;n qua ch&acirc;u &Acirc;u. Người h&ugrave;ng trong cuốn s&aacute;ch, Grace Bennett, l&agrave; một c&ocirc; g&aacute;i lu&ocirc;n ấp ủ mong ước được chuyển đến London sinh sống. Khi c&ocirc; c&ugrave;ng người bạn th&acirc;n Viv đặt ch&acirc;n đến đ&acirc;y th&igrave; chiến tranh sắp sửa nổ ra. Hai c&ocirc; g&aacute;i đến sống c&ugrave;ng người bạn th&acirc;n nhất của mẹ Grace, b&agrave; Weatherford, v&agrave; cậu con trai của b&agrave;. Sau đ&oacute;, Grace được giới thiệu tới l&agrave;m việc tại hiệu s&aacute;ch Đồi Primrose. Vốn kh&ocirc;ng phải l&agrave; người được đọc nhiều s&aacute;ch do ho&agrave;n cảnh kh&aacute;ch quan, c&ocirc; chỉ dự định l&agrave;m tại đ&oacute; 6 th&aacute;ng để xin được thư giới thiệu của &ocirc;ng chủ hiệu s&aacute;ch, rồi chuyển sang nơi kh&aacute;c l&agrave;m việc c&ugrave;ng c&ocirc; bạn th&acirc;n.</p>\r\n\r\n<p>Trong qu&atilde;ng thời gian Grace l&agrave;m việc tại hiệu s&aacute;ch Đồi Primrose, chiến tranh đ&atilde; nổ ra. Đức quốc x&atilde; cho n&eacute;m bom khắp th&agrave;nh phố London, ph&aacute; hủy biết bao t&ograve;a nh&agrave; v&agrave; cướp đi mạng sống của h&agrave;ng ngh&igrave;n người. Nhưng nhờ được l&agrave;m việc trong hiệu s&aacute;ch v&agrave; được truyền cảm hứng từ những người c&ocirc; gặp nơi đ&acirc;y, Grace dần y&ecirc;u th&iacute;ch s&aacute;ch hơn, v&agrave; đồng thời c&ocirc; đem t&igrave;nh y&ecirc;u s&aacute;ch đ&oacute; lan tỏa tới mọi người. Trải qua những đợt giới nghi&ecirc;m, những đ&ecirc;m mưa bom b&atilde;o đạn triền mi&ecirc;n, c&ocirc; đ&atilde; kh&aacute;m ph&aacute; ra sức mạnh của việc gắn kết cộng đồng th&ocirc;ng qua việc đọc s&aacute;ch &ndash; một sức mạnh chiến thắng ngay cả trong những đ&ecirc;m đen tối nhất của cuộc chiến.</p>\r\n\r\n<p>Hiệu s&aacute;ch cuối c&ugrave;ng ở London được v&iacute; như bức thư t&igrave;nh s&acirc;u lắng v&agrave; x&uacute;c động, bởi trong đ&oacute; l&agrave; v&ocirc; v&agrave;n những c&acirc;u chuyện t&igrave;nh y&ecirc;u: t&igrave;nh y&ecirc;u đ&ocirc;i lứa, t&igrave;nh y&ecirc;u văn chương, t&igrave;nh cảm gia đ&igrave;nh v&agrave; bạn b&egrave;, t&igrave;nh đo&agrave;n kết trong một cộng đồng, t&igrave;nh y&ecirc;u đất nước,&hellip; Nhờ những t&igrave;nh cảm đ&oacute; m&agrave; hiệu s&aacute;ch Đồi Primrose &ndash; nơi gắn kết tr&aacute;i tim &ndash; đ&atilde; may mắn trở th&agrave;nh hiệu s&aacute;ch duy nhất c&ograve;n s&oacute;t lại ở London, d&ugrave; cũng từng một lần bị mưa bom của Đức quốc x&atilde; giội xuống.</p>\r\n\r\n<p>Với th&ocirc;ng điệp nhấn mạnh sức mạnh của s&aacute;ch gi&uacute;p con người vượt qua mọi qu&atilde;ng thời gian đen tối, kh&oacute; khăn, Hiệu s&aacute;ch cuối c&ugrave;ng ở London đ&atilde; nhận được rất nhiều sự quan t&acirc;m v&agrave; y&ecirc;u th&iacute;ch của độc giả tr&ecirc;n to&agrave;n cầu, đồng thời đạt được nhiều th&agrave;nh t&iacute;ch ấn tượng ngay sau khi xuất bản. Đ&oacute; l&agrave; l&yacute; do tại sao cuốn s&aacute;ch n&agrave;y đ&aacute;ng được bạn đầu tư thời gian để đọc n&oacute;!</p>\r\n\r\n<p><strong>Th&ocirc;ng tin về t&aacute;c giả:</strong></p>\r\n\r\n<p>Madeline Martin l&agrave; t&aacute;c giả s&aacute;ch b&aacute;n chạy nhất được hai tờ b&aacute;o New York Times v&agrave; USA TODAY b&igrave;nh chọn. Sau khi tốt nghiệp trường Đại học Flagler với tấm bằng cử nh&acirc;n Quản trị kinh doanh, Madeline l&agrave;m việc cho một tập đo&agrave;n tại Mỹ. L&agrave; người y&ecirc;u th&iacute;ch lịch sử v&agrave; d&agrave;nh trọn thời gian, t&acirc;m tr&iacute; nghi&ecirc;n cứu lĩnh vực n&agrave;y, những t&aacute;c phẩm của b&agrave; thường l&agrave; tiểu thuyết lịch sử l&atilde;ng mạn v&agrave; tiểu thuyết lịch sử hư cấu.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>8935210302168</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td><a href=\"https://www.fahasa.com/tan-viet?fhs_campaign=ATTRIBUTE_PRODUCT\">T&acirc;n Việt</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Madeline Martin</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Người Dịch</th>\r\n			<td>Phương Hạ</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>Văn Học</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2022</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>400</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>20.5 x 14.5 x 1.3 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>402</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm hiển thị trong</th>\r\n			<td>\r\n			<ul>\r\n				<li><a href=\"https://www.fahasa.com/tan-viet?fhs_campaign=INTERNAL_LINKING\">T&acirc;n Việt</a></li>\r\n				<li><a href=\"https://www.fahasa.com/vui-don-trung-thu?fhs_campaign=INTERNAL_LINKING\">RƯỚC DEAL LINH Đ&Igrave;NH VUI Đ&Oacute;N TRUNG THU</a></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/van-hoc-trong-nuoc/tieu-thuyet.html?order=num_orders_month\">Top 100 sản phẩm Tiểu thuyết b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Gi&aacute; sản phẩm tr&ecirc;n Fahasa.com đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như Phụ ph&iacute; đ&oacute;ng g&oacute;i, ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh,...</p>\r\n\r\n			<p>Ch&iacute;nh s&aacute;ch khuyến m&atilde;i tr&ecirc;n Fahasa.com kh&ocirc;ng &aacute;p dụng cho Hệ thống Nh&agrave; s&aacute;ch Fahasa tr&ecirc;n to&agrave;n quốc</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Hiệu S&aacute;ch Cuối C&ugrave;ng Ở London - Tiểu Thuyết Về Chiến Tranh Thế Giới Thứ Hai</strong></p>\r\n\r\n<p>Hiệu s&aacute;ch cuối c&ugrave;ng ở London l&agrave; cuốn tiểu thuyết t&igrave;nh cảm hấp dẫn, l&agrave; những trang sử ghi lại qu&atilde;ng thời gian kh&oacute; khăn của người d&acirc;n London trong Chiến tranh Thế giới thứ Hai. Được truyền cảm hứng từ qu&aacute; khứ c&oacute; thật của số &iacute;t hiệu s&aacute;ch c&ograve;n tồn tại sau cuộc oanh k&iacute;ch của Đức quốc x&atilde;, cuốn s&aacute;ch đ&atilde; kể lại một c&acirc;u chuyện về những mất m&aacute;t của thời chiến, về t&igrave;nh y&ecirc;u v&agrave; sức mạnh của văn chương gi&uacute;p con người ta vượt qua giai đoạn đen tối nhất.</p>\r\n\r\n<p>Cuốn s&aacute;ch đưa bạn quay trở lại thời điểm th&aacute;ng 8 năm 1939, l&uacute;c ấy người d&acirc;n London đang r&aacute;o riết chuẩn bị cho chiến tranh khi lực lượng của Hitler tr&agrave;n qua ch&acirc;u &Acirc;u. Người h&ugrave;ng trong cuốn s&aacute;ch, Grace Bennett, l&agrave; một c&ocirc; g&aacute;i lu&ocirc;n ấp ủ mong ước được chuyển đến London sinh sống. Khi c&ocirc; c&ugrave;ng người bạn th&acirc;n Viv đặt ch&acirc;n đến đ&acirc;y th&igrave; chiến tranh sắp sửa nổ ra. Hai c&ocirc; g&aacute;i đến sống c&ugrave;ng người bạn th&acirc;n nhất của mẹ Grace, b&agrave; Weatherford, v&agrave; cậu con trai của b&agrave;. Sau đ&oacute;, Grace được giới thiệu tới l&agrave;m việc tại hiệu s&aacute;ch Đồi Primrose. Vốn kh&ocirc;ng phải l&agrave; người được đọc nhiều s&aacute;ch do ho&agrave;n cảnh kh&aacute;ch quan, c&ocirc; chỉ dự định l&agrave;m tại đ&oacute; 6 th&aacute;ng để xin được thư giới thiệu của &ocirc;ng chủ hiệu s&aacute;ch, rồi chuyển sang nơi kh&aacute;c l&agrave;m việc c&ugrave;ng c&ocirc; bạn th&acirc;n.</p>\r\n\r\n<p>Trong qu&atilde;ng thời gian Grace l&agrave;m việc tại hiệu s&aacute;ch Đồi Primrose, chiến tranh đ&atilde; nổ ra. Đức quốc x&atilde; cho n&eacute;m bom khắp th&agrave;nh phố London, ph&aacute; hủy biết bao t&ograve;a nh&agrave; v&agrave; cướp đi mạng sống của h&agrave;ng ngh&igrave;n người. Nhưng nhờ được l&agrave;m việc trong hiệu s&aacute;ch v&agrave; được truyền cảm hứng từ những người c&ocirc; gặp nơi đ&acirc;y, Grace dần y&ecirc;u th&iacute;ch s&aacute;ch hơn, v&agrave; đồng thời c&ocirc; đem t&igrave;nh y&ecirc;u s&aacute;ch đ&oacute; lan tỏa tới mọi người. Trải qua những đợt giới nghi&ecirc;m, những đ&ecirc;m mưa bom b&atilde;o đạn triền mi&ecirc;n, c&ocirc; đ&atilde; kh&aacute;m ph&aacute; ra sức mạnh của việc gắn kết cộng đồng th&ocirc;ng qua việc đọc s&aacute;ch &ndash; một sức mạnh chiến thắng ngay cả trong những đ&ecirc;m đen tối nhất của cuộc chiến.</p>\r\n\r\n<p>Hiệu s&aacute;ch cuối c&ugrave;ng ở London được v&iacute; như bức thư t&igrave;nh s&acirc;u lắng v&agrave; x&uacute;c động, bởi trong đ&oacute; l&agrave; v&ocirc; v&agrave;n những c&acirc;u chuyện t&igrave;nh y&ecirc;u: t&igrave;nh y&ecirc;u đ&ocirc;i lứa, t&igrave;nh y&ecirc;u văn chương, t&igrave;nh cảm gia đ&igrave;nh v&agrave; bạn b&egrave;, t&igrave;nh đo&agrave;n kết trong một cộng đồng, t&igrave;nh y&ecirc;u đất nước,&hellip; Nhờ những t&igrave;nh cảm đ&oacute; m&agrave; hiệu s&aacute;ch Đồi Primrose &ndash; nơi gắn kết tr&aacute;i tim &ndash; đ&atilde; may mắn trở th&agrave;nh hiệu s&aacute;ch duy nhất c&ograve;n s&oacute;t lại ở London, d&ugrave; cũng từng một lần bị mưa bom của Đức quốc x&atilde; giội xuống.</p>\r\n\r\n<p>Với th&ocirc;ng điệp nhấn mạnh sức mạnh của s&aacute;ch gi&uacute;p con người vượt qua mọi qu&atilde;ng thời gian đen tối, kh&oacute; khăn, Hiệu s&aacute;ch cuối c&ugrave;ng ở London đ&atilde; nhận được rất nhiều sự quan t&acirc;m v&agrave; y&ecirc;u th&iacute;ch của độc giả tr&ecirc;n to&agrave;n cầu, đồng thời đạt được nhiều th&agrave;nh t&iacute;ch ấn tượng ngay sau khi xuất bản. Đ&oacute; l&agrave; l&yacute; do tại sao cuốn s&aacute;ch n&agrave;y đ&aacute;ng được bạn đầu tư thời gian để đọc n&oacute;!</p>\r\n\r\n<p><strong>Th&ocirc;ng tin về t&aacute;c giả:</strong></p>\r\n\r\n<p>Madeline Martin l&agrave; t&aacute;c giả s&aacute;ch b&aacute;n chạy nhất được hai tờ b&aacute;o New York Times v&agrave; USA TODAY b&igrave;nh chọn. Sau khi tốt nghiệp trường Đại học Flagler với tấm bằng cử nh&acirc;n Quản trị kinh doanh, Madeline l&agrave;m việc cho một tập đo&agrave;n tại Mỹ. L&agrave; người y&ecirc;u th&iacute;ch lịch sử v&agrave; d&agrave;nh trọn thời gian, t&acirc;m tr&iacute; nghi&ecirc;n cứu lĩnh vực n&agrave;y, những t&aacute;c phẩm của b&agrave; thường l&agrave; tiểu thuyết lịch sử l&atilde;ng mạn v&agrave; tiểu thuyết lịch sử hư cấu.</p>', '2023-08-04 03:40:18', 1, 1, '2024-06-13 08:15:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `atb_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type` tinyint NOT NULL DEFAULT '0',
  `atb_category_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Thương hiệu 1', 'thuong-hieu-1', 1, 1, '2024-06-12 15:51:57', NULL),
(2, 'Việt Nam', 'viet-nam', 2, 1, '2024-06-12 15:52:12', NULL),
(3, 'Kim Đồng', 'kim-dong', 3, 1, '2024-06-12 15:52:18', NULL),
(4, 'Ngô Tất Tố 2', 'ngo-tat-to-2', 4, 1, '2024-06-12 15:52:26', '2024-06-12 16:29:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `c_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_parent_id` int NOT NULL DEFAULT '0',
  `c_hot` tinyint NOT NULL DEFAULT '0',
  `c_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Sách', 'sach', '2024-06-12__s1.jpg', NULL, NULL, 0, 1, 1, '2024-06-12 15:47:58', '2024-06-12 15:48:05'),
(2, 'Sách công nghệ', 'sach-cong-nghe', '2024-06-12__s1.jpg', NULL, NULL, 1, 1, 1, '2024-06-12 15:48:23', '2024-06-12 15:48:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `cmt_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cmt_parent_id` int NOT NULL DEFAULT '0',
  `cmt_product_id` int NOT NULL DEFAULT '0',
  `cmt_admin_id` int NOT NULL DEFAULT '0',
  `cmt_user_id` int NOT NULL DEFAULT '0',
  `cmt_like` int NOT NULL DEFAULT '0',
  `cmt_disk_like` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, 'good', 0, 6, 0, 3, 0, 0, '2023-09-15 15:10:05', NULL),
(4, NULL, NULL, 'có ship CT ko', 0, 24, 0, 4, 0, 0, '2023-10-05 17:43:44', NULL),
(6, NULL, NULL, 'freeship CT hem', 0, 2, 0, 3, 0, 0, '2023-10-11 18:31:04', NULL),
(7, NULL, NULL, '@Lê Thị Chúc Nhi: có ạ', 6, 2, 0, 3, 0, 0, '2023-10-11 18:31:16', NULL),
(8, NULL, NULL, 'còn hàng ko ạ', 0, 3, 0, 6, 0, 0, '2023-10-24 18:11:19', NULL),
(9, NULL, NULL, 'a', 0, 24, 0, 9, 0, 0, '2023-11-02 07:00:55', NULL),
(10, NULL, NULL, 'asdas', 0, 24, 0, 9, 0, 0, '2023-11-02 07:00:58', NULL),
(11, NULL, NULL, 'asdasd', 0, 24, 0, 9, 0, 0, '2023-11-02 07:00:59', NULL),
(12, NULL, NULL, '12312', 0, 24, 0, 9, 0, 0, '2023-11-02 07:01:01', NULL),
(13, NULL, NULL, '123', 0, 24, 0, 9, 0, 0, '2023-11-02 07:01:04', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `c_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `c_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `c_title`, `c_phone`, `c_email`, `c_content`, `created_at`, `updated_at`, `c_name`) VALUES
(2, 'Sản phẩm nước hoa', '0933188762', 'nhi123@gmail.com', 'Nước hoa mùi quá', '2023-10-11 18:46:29', NULL, 'Lê Thị Chúc Nhi'),
(3, 'Sản phẩm nước hoa', '0933188762', 'nhi123@gmail.com', 'Trả lời tui', '2023-10-11 18:48:17', NULL, 'Lê Thị Chúc Nhi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount_code`
--

CREATE TABLE `discount_code` (
  `id` bigint UNSIGNED NOT NULL,
  `d_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_number_code` int NOT NULL DEFAULT '0',
  `d_date_start` datetime DEFAULT NULL,
  `d_date_end` datetime DEFAULT NULL,
  `d_percentage` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `discount_code`
--

INSERT INTO `discount_code` (`id`, `d_code`, `d_number_code`, `d_date_start`, `d_date_end`, `d_percentage`, `created_at`, `updated_at`) VALUES
(1, 'Ưu đãi tháng 8', 10, '2023-08-05 08:12:00', '2023-08-10 08:12:00', 10, '2023-08-05 01:12:26', '2023-08-05 01:12:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `e_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint NOT NULL DEFAULT '0',
  `e_position_2` tinyint NOT NULL DEFAULT '0',
  `e_position_3` tinyint NOT NULL DEFAULT '0',
  `e_position_4` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(1, 'Event 1', '2024-06-12__ban1.jpg', 'https://images.', 1, 0, 0, 0, '2024-06-12 15:54:33', '2024-06-12 15:54:33'),
(2, 'Event 2', '2023-10-19__elegant-store-sale-facebook-cover-post-8.png', 'http://127.0.0.1:8000/san-pham?k=', 0, 1, 0, 0, '2023-10-19 06:41:46', '2023-10-19 06:41:47'),
(3, 'Event 3', '2024-06-12__ban2.png', 'https://images.', 0, 0, 1, 0, '2024-06-12 15:54:43', '2024-06-12 15:54:43'),
(4, 'Event4', '2024-06-12__ban3.jpg', 'http://127.0.0.1:8000/san-pham', 0, 0, 0, 0, '2024-06-12 15:54:48', '2024-06-12 15:54:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exports`
--

CREATE TABLE `exports` (
  `id` bigint UNSIGNED NOT NULL,
  `w_order_id` int NOT NULL,
  `w_price` int NOT NULL DEFAULT '0',
  `w_qty` int NOT NULL DEFAULT '0',
  `w_time_exports` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint UNSIGNED NOT NULL,
  `k_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `mn_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint NOT NULL DEFAULT '0',
  `mn_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Sách công nghệ', 'sach-cong-nghe', NULL, NULL, NULL, 0, 1, '2023-08-04 03:36:14', '2024-06-13 08:07:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `od_transaction_id` int NOT NULL DEFAULT '0',
  `od_product_id` int NOT NULL DEFAULT '0',
  `od_sale` int NOT NULL DEFAULT '0',
  `od_qty` tinyint NOT NULL DEFAULT '0',
  `od_price` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(2, 1, 24, 20, 1, 272000, '2023-08-04 08:51:48', NULL),
(4, 1, 22, 19, 1, 238140, '2023-08-04 08:51:48', NULL),
(5, 1, 2, 0, 1, 159000, '2023-08-04 08:51:48', NULL),
(8, 4, 24, 20, 1, 272000, '2023-09-15 11:48:09', NULL),
(10, 6, 24, 20, 1, 272000, '2023-10-05 17:54:05', NULL),
(13, 9, 24, 20, 1, 272000, '2023-10-06 09:43:41', NULL),
(14, 10, 5, 4, 1, 377280, '2023-10-06 11:18:48', NULL),
(16, 12, 24, 20, 1, 272000, '2023-10-06 11:51:55', NULL),
(17, 13, 5, 4, 1, 377280, '2023-10-09 08:18:51', NULL),
(18, 14, 22, 19, 1, 238140, '2023-10-10 14:11:34', NULL),
(19, 15, 22, 19, 1, 238140, '2023-10-10 14:11:50', NULL),
(20, 16, 2, 0, 2, 159000, '2023-10-13 08:24:06', NULL),
(21, 16, 24, 20, 1, 272000, '2023-10-13 08:24:06', NULL),
(23, 18, 4, 15, 1, 416500, '2023-10-20 08:52:59', NULL),
(27, 20, 11, 10, 1, 315000, '2023-10-31 05:02:22', NULL),
(31, 21, 55, 5, 1, 380000, '2023-11-02 07:11:56', NULL),
(32, 21, 54, 10, 1, 288000, '2023-11-02 07:11:56', NULL),
(33, 22, 15, 10, 1, 38700, '2023-12-03 09:26:14', NULL),
(34, 22, 9, 10, 1, 432000, '2023-12-03 09:26:14', NULL),
(35, 23, 24, 10, 1, 306000, '2024-02-23 03:34:50', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nhib1910271@student.ctu.edu.vn', '$2y$10$3ckolzXVFroB/66evJBKqOZQGo7WXyvSsksXcxXi6o134u45EUZ4C', '2023-10-05 18:53:57'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$wfgQVEdGynKHTZvnlhzzPuBcdBc/R.aNbkVfhe5DK5KriRZRaDGWS', '2023-10-09 08:13:58'),
('khanhan122001@gmail.com', '$2y$10$YGLrCHwihIFzMdvPnv3V8uMDnJIVGYzRLXNuLMtTbXkh3WL0oK4Bi', '2023-10-09 08:17:54'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$i9Lvh7LwAcNc.8qj67H17uFToputVdkG9dyMIIHO.O/VCs3BJclEe', '2023-10-24 17:20:35'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$VfeqILenabLdK8QZPAxdM.VTeC41e7iDGonN/d24sPlJOm6WeC40K', '2023-10-24 17:26:54'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$rW40DrVtdOm1r0.wGKNo4.ipEOSFH5wP33JBMiEPbnJyUp2Wt5QGW', '2023-10-24 17:27:29'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$EK0ZKNhcHfrgOAQ57gKm.O4ouUhbCvj4pi9iN/LqtJUgiEF534pa6', '2023-10-24 18:08:42'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$tbBojquFK66D0s2JOUFZye0n6IjQ4zF1HF21Hbarm/TSuLQDOxNd2', '2023-10-24 18:15:42'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$oNtcnGOFSRmcbf/QiGQ0deX1.sFbQao2gPDh3hS7fhkLQj0zOr2v2', '2023-10-24 18:15:46'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$wMTurvYsR57Gnfb8AcOVH.iG0ZVnmZ6T26q8UeFAUwEqb2Wla9EYu', '2023-10-25 08:13:39'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$JlKLdLXasKASFaUv/EQJhutsPs8Q9GM0P0pz5scq6fljef8ldfxx6', '2023-10-25 08:25:07'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$KS9cgadHGl2FllffYVDBauiHmgNWjPLUI8CyoxFPjRv9c.5Xrfz3S', '2023-10-25 08:26:42'),
('nhi123@gmail.com', '$2y$10$34yizG48boGoGn/D5uvwG.u6WkTK/GD08qDYdz7sHqiBHbyv5KIRq', '2023-10-26 07:29:03'),
('nhi123@gmail.com', '$2y$10$dyuS8omy8lDAddOKC1XutOTPizcnFDSVpnZK6/kc4EhXIKwfImjzu', '2023-10-26 07:42:00'),
('nhi123@gmail.com', '$2y$10$awOjvik9xx6TVIVXA.63U.wDJHXzFdpt/3xF9mzZpSm2Ov2hygphe', '2023-10-26 07:42:49'),
('nhi123@gmail.com', '$2y$10$T2mRYaDFOBKq/tI4/xQ/yuwc/jOjoUwsqSm1XvMkK4Qhc7tSzlUuS', '2023-10-26 08:10:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay_histories`
--

CREATE TABLE `pay_histories` (
  `id` int UNSIGNED NOT NULL,
  `ph_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ph_user_id` int UNSIGNED NOT NULL,
  `ph_credit` int UNSIGNED NOT NULL DEFAULT '0',
  `ph_debit` int UNSIGNED NOT NULL DEFAULT '0',
  `ph_balance` int UNSIGNED NOT NULL DEFAULT '0',
  `ph_meta_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ph_status` tinyint NOT NULL DEFAULT '0',
  `ph_month` tinyint UNSIGNED DEFAULT NULL,
  `ph_year` smallint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pay_histories`
--

INSERT INTO `pay_histories` (`id`, `ph_code`, `ph_user_id`, `ph_credit`, `ph_debit`, `ph_balance`, `ph_meta_detail`, `ph_status`, `ph_month`, `ph_year`, `created_at`, `updated_at`) VALUES
(1, 'PAYOUT1', 1, 0, 885540, 0, NULL, 1, 8, 2023, '2023-08-04 08:51:48', NULL),
(2, 'PAYOUT2', 2, 0, 1654628, 0, NULL, 1, 8, 2023, '2023-08-05 01:13:23', NULL),
(3, 'PAYOUT3', 3, 0, 272000, 0, NULL, 1, 9, 2023, '2023-09-15 11:48:09', NULL),
(4, 'PAYOUT4', 3, 0, 134400, 0, NULL, 1, 9, 2023, '2023-09-15 12:03:43', NULL),
(5, 'PAYOUT5', 4, 0, 272000, 0, NULL, 1, 10, 2023, '2023-10-05 17:54:05', NULL),
(6, 'PAYOUT6', 5, 0, 134400, 0, NULL, 1, 10, 2023, '2023-10-05 18:00:53', NULL),
(7, 'PAYOUT7', 3, 0, 377280, 0, NULL, 1, 10, 2023, '2023-10-06 11:18:48', NULL),
(8, 'PAYOUT8', 3, 0, 238140, 0, NULL, 1, 10, 2023, '2023-10-06 11:33:10', NULL),
(9, 'PAYOUT9', 3, 0, 272000, 0, NULL, 1, 10, 2023, '2023-10-06 11:51:55', NULL),
(10, 'PAYOUT10', 3, 0, 238140, 0, NULL, 1, 10, 2023, '2023-10-10 14:11:50', NULL),
(11, 'PAYOUT11', 3, 0, 590000, 0, NULL, 1, 10, 2023, '2023-10-13 08:24:06', NULL),
(12, 'PAYOUT12', 3, 0, 281600, 0, NULL, 1, 10, 2023, '2023-10-20 08:48:20', NULL),
(13, 'PAYOUT13', 3, 0, 416500, 0, NULL, 1, 10, 2023, '2023-10-20 08:52:59', NULL),
(14, 'PAYOUT14', 7, 0, 162000, 0, NULL, 1, 10, 2023, '2023-10-23 07:22:28', NULL),
(15, 'PAYOUT15', 8, 0, 908000, 0, NULL, 1, 10, 2023, '2023-10-31 05:02:22', NULL),
(16, 'PAYOUT16', 9, 0, 1047800, 0, NULL, 1, 11, 2023, '2023-11-02 07:11:56', NULL),
(17, 'PAYOUT17', 9, 0, 470700, 0, NULL, 1, 12, 2023, '2023-12-03 09:26:14', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay_ins`
--

CREATE TABLE `pay_ins` (
  `id` int UNSIGNED NOT NULL,
  `pi_user_id` int UNSIGNED NOT NULL,
  `pi_admin_id` int UNSIGNED NOT NULL,
  `pi_provider` int UNSIGNED NOT NULL DEFAULT '0',
  `pi_money` int UNSIGNED NOT NULL DEFAULT '0',
  `pi_fee` int UNSIGNED NOT NULL DEFAULT '0',
  `pi_amount` int UNSIGNED NOT NULL DEFAULT '0',
  `pi_meta_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pi_status` tinyint NOT NULL DEFAULT '0',
  `pi_month` tinyint UNSIGNED DEFAULT NULL,
  `pi_year` smallint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay_outs`
--

CREATE TABLE `pay_outs` (
  `id` int UNSIGNED NOT NULL,
  `po_user_id` int UNSIGNED NOT NULL,
  `po_transaction_id` int UNSIGNED NOT NULL,
  `po_money` int UNSIGNED NOT NULL DEFAULT '0',
  `po_meta_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_status` tinyint NOT NULL DEFAULT '0',
  `po_month` tinyint UNSIGNED DEFAULT NULL,
  `po_year` smallint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pay_outs`
--

INSERT INTO `pay_outs` (`id`, `po_user_id`, `po_transaction_id`, `po_money`, `po_meta_detail`, `po_status`, `po_month`, `po_year`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 885540, '', 1, 8, 2023, '2023-08-04 08:51:48', NULL),
(2, 2, 3, 1654628, '', 1, 8, 2023, '2023-08-05 01:13:23', NULL),
(3, 3, 4, 272000, '', 1, 9, 2023, '2023-09-15 11:48:09', NULL),
(4, 3, 5, 134400, '', 1, 9, 2023, '2023-09-15 12:03:43', NULL),
(5, 4, 6, 272000, '', 1, 10, 2023, '2023-10-05 17:54:05', NULL),
(6, 5, 7, 134400, '', 1, 10, 2023, '2023-10-05 18:00:53', NULL),
(7, 3, 10, 377280, '', 1, 10, 2023, '2023-10-06 11:18:48', NULL),
(8, 3, 11, 238140, '', 1, 10, 2023, '2023-10-06 11:33:10', NULL),
(9, 3, 12, 272000, '', 1, 10, 2023, '2023-10-06 11:51:55', NULL),
(10, 3, 15, 238140, '', 1, 10, 2023, '2023-10-10 14:11:50', NULL),
(11, 3, 16, 590000, '', 1, 10, 2023, '2023-10-13 08:24:06', NULL),
(12, 3, 17, 281600, '', 1, 10, 2023, '2023-10-20 08:48:20', NULL),
(13, 3, 18, 416500, '', 1, 10, 2023, '2023-10-20 08:52:59', NULL),
(14, 7, 19, 162000, '', 1, 10, 2023, '2023-10-23 07:22:28', NULL),
(15, 8, 20, 908000, '', 1, 10, 2023, '2023-10-31 05:02:22', NULL),
(16, 9, 21, 1047800, '', 1, 11, 2023, '2023-11-02 07:11:56', NULL),
(17, 9, 22, 470700, '', 1, 12, 2023, '2023-12-03 09:26:14', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `pro_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int NOT NULL DEFAULT '0',
  `pro_price_entry` int NOT NULL DEFAULT '0' COMMENT 'giá nhập',
  `pro_category_id` int NOT NULL DEFAULT '0',
  `pro_supplier_id` int NOT NULL DEFAULT '0',
  `pro_admin_id` int NOT NULL DEFAULT '0',
  `pro_sale` tinyint NOT NULL DEFAULT '0',
  `pro_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int NOT NULL DEFAULT '0',
  `pro_hot` tinyint NOT NULL DEFAULT '0',
  `pro_active` tinyint NOT NULL DEFAULT '1',
  `pro_pay` int NOT NULL DEFAULT '0',
  `pro_description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pro_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pro_review_total` int NOT NULL DEFAULT '0',
  `pro_review_star` int NOT NULL DEFAULT '0',
  `pro_age_review` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int NOT NULL DEFAULT '0',
  `pro_resistant` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_energy` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_country` tinyint NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `pro_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `pa_product_id` int NOT NULL DEFAULT '0',
  `pa_attribute_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(9, 1, 1),
(10, 1, 2),
(11, 1, 3),
(12, 1, 4),
(13, 2, 1),
(14, 2, 2),
(15, 2, 3),
(16, 2, 4),
(21, 3, 1),
(22, 3, 2),
(23, 3, 3),
(24, 3, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint UNSIGNED NOT NULL,
  `pk_product_id` int NOT NULL DEFAULT '0',
  `pk_keyword_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `pi_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `pi_name`, `pi_slug`, `pi_product_id`, `created_at`, `updated_at`) VALUES
(1, 's1.jpg', '2024-06-12__s1jpg.jpg', 1, '2024-06-12 15:52:59', NULL),
(2, 's2.jpg', '2024-06-12__s2jpg.jpg', 1, '2024-06-12 15:52:59', NULL),
(3, 'ban1.jpg', '2024-06-12__ban1jpg.jpg', 3, '2024-06-12 16:47:52', NULL),
(4, 'ban2.png', '2024-06-12__ban2png.png', 3, '2024-06-12 16:47:52', NULL),
(5, 'ban3.jpg', '2024-06-12__ban3jpg.jpg', 3, '2024-06-12 16:47:52', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint UNSIGNED NOT NULL,
  `r_user_id` int NOT NULL DEFAULT '0',
  `r_product_id` int NOT NULL DEFAULT '0',
  `r_number` tinyint NOT NULL DEFAULT '0',
  `r_status` tinyint NOT NULL DEFAULT '0',
  `r_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `r_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`, `r_name`) VALUES
(3, 3, 4, 5, 0, 'tốt', '2023-10-22 05:34:27', '2023-10-22 05:34:27', ''),
(5, 7, 30, 4, 0, 'Tạm', '2023-10-23 07:23:38', '2023-10-23 07:23:38', ''),
(6, 3, 22, 4, 0, NULL, '2023-10-23 18:17:21', '2023-10-23 18:17:21', ''),
(7, 9, 57, 4, 0, 'a', '2023-11-02 07:16:19', '2023-11-02 07:16:19', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint UNSIGNED NOT NULL,
  `sd_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint NOT NULL DEFAULT '1',
  `sd_active` tinyint NOT NULL DEFAULT '1',
  `sd_sort` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'Slide 1', 'http://127.0.0.1:8000/', '2023-10-12__bia1.png', 1, 1, 0, '2023-10-12 06:44:09', '2023-10-12 06:44:09'),
(2, 'Slide 2', 'http://127.0.0.1:8000/san-pham', '2024-06-12__slide1.jpg', 1, 1, 0, '2024-06-12 15:53:53', '2024-06-12 15:53:53'),
(3, 'Slide 3', 'http://127.0.0.1:8000/san-pham', '2024-06-12__slide2.jpg', 1, 1, 0, '2024-06-12 15:53:57', '2024-06-12 15:53:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` bigint UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `social_accounts`
--

INSERT INTO `social_accounts` (`id`, `provider_user_id`, `user_id`, `provider`, `created_at`, `updated_at`) VALUES
(1, '118162473771899746612', '9', 'google', '2024-06-12 15:37:14', '2024-06-12 15:37:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statics`
--

CREATE TABLE `statics` (
  `id` bigint UNSIGNED NOT NULL,
  `s_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint NOT NULL DEFAULT '0',
  `s_md5` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Hướng Dẫn Mua Hàng', NULL, 1, NULL, '<p style=\"text-align:center\"><span style=\"color:#2980b9\"><span style=\"font-size:20px\">DECEMBER cosmetic Việt Nam h&acirc;n hạnh được phục vụ qu&yacute; kh&aacute;ch h&agrave;ng.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Với chương tr&igrave;nh ưu đ&atilde;i mua đơn h&agrave;ng từ <span style=\"color:#c0392b\">&gt;90K&nbsp;</span>ch&uacute;ng t&ocirc;i sẵn s&agrave;ng miễn ph&iacute; dịch vụ ship cho tất cả c&aacute;c đơn h&agrave;ng.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><img alt=\"Thông tin về vận chuyển và giao nhận\" src=\"https://d3rzzb9pdm93i0.cloudfront.net/2022/06/16563112388eb48f7c9dc29985c055284505002509.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Đối với qu&yacute; kh&aacute;ch h&agrave;ng ở tại khu vực Ninh Kiều, Cần Thơ. Cửa h&agrave;ng đang c&oacute; ch&iacute;nh s&aacute;ch freeship v&agrave; ship hỏa tốc trong 1h d&agrave;nh cho tất cả c&aacute;c kh&aacute;ch h&agrave;ng trong khu vực Ninh Kiều.&nbsp;</span></p>\r\n\r\n<p><img alt=\"TẢI Bản đồ Quận Ninh Kiều, TP Cần Thơ khổ lớn phóng to 2023\" src=\"https://bandovietnam.com.vn/media/article/ban-do-quan-ninh-kieu.jpeg\" /></p>\r\n\r\n<p><span style=\"font-size:18px\">Kh&aacute;ch h&agrave;ng c&oacute; thể tiến h&agrave;nh mua h&agrave;ng th&ocirc;ng qua 2 c&aacute;ch. C&aacute;ch 1 mua h&agrave;ng trực tiếp tr&ecirc;n web, c&oacute; thể thanh to&aacute;n khi nhận h&agrave;ng hoặc thanh to&aacute;n trực tiếp qua thẻ t&iacute;n dụng. C&aacute;ch 2: LI&ecirc;n hệ qua số hotline 1900.2312 để li&ecirc;n hệ mua h&agrave;ng trực tiếp.</span></p>\r\n\r\n<p><img alt=\"LIÊN HỆ\" src=\"https://isfm.ufm.edu.vn/Resources/Images/SubDomain/isfm/Artboard-8@5x.png\" /></p>\r\n\r\n<p><span style=\"font-size:18px\">Sau khi đ&atilde; x&aacute;c nhận đơn h&agrave;ng, cửa h&agrave;ng sẽ tiến h&agrave;nh g&oacute;i h&agrave;ng v&agrave; gởi đi nhanh nhất, kh&aacute;ch h&agrave;ng c&oacute; thể theo d&otilde;i t&igrave;nh trạng đơn h&agrave;ng qua phần &quot;Quản l&yacute; đơn h&agrave;ng&quot;&nbsp;<em><u>http://127.0.0.1:8000/account/transaction</u></em>.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Cảm ơn qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; tin tưởng v&agrave; ủng hộ DECEMBER cosmetic.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Nếu c&oacute; sai s&oacute;t xin qu&yacute; kh&aacute;ch li&ecirc;n hệ qua hotline 1900.2312.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">December cosmetic Việt Nam xin tr&acirc;n trọng cảm ơn!!</span></p>\r\n\r\n<p>&nbsp;</p>', '2023-10-12 18:15:53', '2023-10-12 18:15:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplieres`
--

CREATE TABLE `supplieres` (
  `id` bigint UNSIGNED NOT NULL,
  `sl_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supplieres`
--

INSERT INTO `supplieres` (`id`, `sl_name`, `sl_phone`, `sl_email`, `sl_address`, `created_at`, `updated_at`) VALUES
(1, 'Nhà cung cấp Hà Nội', '0999999999', 'nhacungcap1@gmail.com', 'Quận 2, Tp. Hồ Chí Minh (TPHCM)', '2023-08-04 02:39:00', '2024-06-12 15:49:23'),
(2, 'Nhà cung cấp HCM', '034955555', 'ncc2@gmail.com', 'Đông Xuân, Hà Nội', '2023-10-21 18:15:05', '2024-06-12 15:49:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `tst_user_id` int NOT NULL DEFAULT '0',
  `tst_admin_id` int NOT NULL DEFAULT '0',
  `tst_total_money` int NOT NULL DEFAULT '0',
  `tst_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint NOT NULL DEFAULT '1',
  `tst_type` tinyint NOT NULL DEFAULT '1' COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(4, 3, 0, 272000, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, -1, 2, '2023-09-15 11:48:09', '2023-09-15 11:48:46'),
(5, 3, 1, 134400, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-09-15 12:03:43', '2023-09-17 06:02:06'),
(6, 4, 1, 272000, 'Vy', 'vy123@gmail.com', '0933188900', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-10-05 17:54:05', '2023-10-06 11:32:21'),
(7, 5, 1, 134400, 'Chúc Nhi', 'nhib1910271@student.ctu.edu.vn', '0766827652', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-10-05 18:00:52', '2023-10-05 18:02:57'),
(8, 3, 0, 82000, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-10-06 09:34:53', '2023-10-06 09:43:11'),
(9, 3, 0, 272000, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-10-06 09:43:41', '2023-10-06 09:46:17'),
(10, 3, 1, 377280, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-10-06 11:18:48', '2023-10-06 11:19:36'),
(12, 3, 1, 272000, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-10-06 11:51:55', '2023-10-06 12:05:24'),
(15, 3, 1, 238140, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 1, '2023-10-10 14:11:50', '2023-10-10 14:12:29'),
(16, 3, 1, 590000, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 1, '2023-10-13 08:24:06', '2023-10-24 18:23:51'),
(17, 3, 1, 281600, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 1, '2023-10-20 08:48:20', '2023-10-30 18:13:43'),
(18, 3, 1, 416500, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 1, '2023-10-20 08:52:59', '2023-10-22 05:31:47'),
(19, 7, 1, 162000, 'Khánh', 'khanh123@gmail.com', '0907077417', 'Nguyễn Văn Linh, Ninh Kiều, Cần Thơ', NULL, 3, 1, '2023-10-23 07:22:28', '2023-10-23 07:22:48'),
(20, 8, 1, 908000, 'Nhi2312', 'lethichucnhi2312@gmail.com', '0774836320', 'Nguyễn Văn Linh, Ninh Kiều, Cần Thơ', NULL, 2, 1, '2023-10-31 05:02:22', '2023-10-31 06:00:16'),
(21, 9, 1, 1047800, 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', '0368822642', 'a', 'a', 3, 1, '2023-11-02 07:11:56', '2023-11-02 07:15:53'),
(22, 9, 0, 470700, 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', '0368822642', 'ad', 'h', 1, 1, '2023-12-03 09:26:14', NULL),
(23, 9, 0, 306000, 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', '0368822642', 'a', 'a', 1, 2, '2024-02-23 03:34:50', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` int NOT NULL DEFAULT '0',
  `log_login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `count_comment` tinyint NOT NULL DEFAULT '0',
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', NULL, '$2y$10$rXrKZ0eMQKp0m8j7d.bWwutMrCUyzV8hxNmKgUtrFZFKET4pBRNOa', '907077125', -2820060, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-15T15:08:28.799463Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-19T14:51:13.368800Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-22T05:33:39.896501Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-30T15:16:14.303399Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-03T06:56:44.495003Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-04T08:47:10.561347Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-05T18:31:12.488211Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-06T09:22:23.396460Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-06T11:18:28.754070Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-09T08:18:27.604363Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-10T14:03:48.511352Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-11T18:30:35.844622Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-12T18:01:04.397101Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-13T08:02:31.184305Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-13T08:15:47.156260Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-20T08:48:12.060825Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-22T05:33:28.392789Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-23T18:08:53.651141Z\"}]', 4, NULL, '2023-09-19__nen.jpg', NULL, '2023-09-15 11:47:12', '2023-09-19 14:51:44'),
(4, 'Vy', 'vy123@gmail.com', NULL, '$2y$10$jcrZx3gRv7ms5WsagqXGSOW/03exND7VR8LmB8bRSYXDae.ajutDe', '0933188900', -272000, NULL, 1, NULL, NULL, NULL, '2023-10-05 17:38:00', NULL),
(5, 'Chúc Nhi', 'nhib1910271@student.ctu.edu.vn', NULL, '$2y$10$injnEcIuMrAb3hPpqiu9NOfEGdcEvhKe6Rkz2lhldwktfZTjrM8sa', '0766827652', -134400, NULL, 0, NULL, NULL, NULL, '2023-10-05 18:00:30', NULL),
(6, 'Khả Hân', 'khanhan122001@gmail.com', NULL, '$2y$10$GxPprylryxjOwOkp2bx4mueUmd4XYFpE3pzdczWEMLmLCw5IyCGB.', '0909339199', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-24T18:10:46.727052Z\"}]', 1, NULL, NULL, NULL, '2023-10-09 08:16:54', NULL),
(7, 'Khánh', 'khanh123@gmail.com', NULL, '$2y$10$pwYNklFcibljGdg7oxxUeek8jLHVqeNMwZSkfIGUp9qYNWnm3I9OO', '0907077417', -162000, NULL, 0, NULL, NULL, NULL, '2023-10-23 07:21:36', NULL),
(8, 'Nhi2312', 'lethichucnhi2312@gmail.com', NULL, '$2y$10$gWj0W.v8qImbgegv3DwmgOokouUZyxYvxtH7ZfW/QoXxefpCm52x6', '0774836320', -908000, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-31T05:01:21.447191Z\"}]', 0, NULL, NULL, NULL, '2023-10-30 18:22:47', NULL),
(9, 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', NULL, '$2y$10$H4unk/E3S/VWq96Tyb36DeFHR5anT1cfxavOrpijmDtNV9mrvpm3m', '0368822642', -1518500, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-11-02T07:00:47.593180Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-11-02T07:12:46.426071Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-11-03T02:42:31.407630Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-12-03T09:25:37.995283Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"121.0.0.0\",\"time\":\"2024-02-23T03:34:44.380144Z\"}]', 5, NULL, NULL, NULL, '2023-11-02 06:56:07', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint UNSIGNED NOT NULL,
  `uf_product_id` int NOT NULL DEFAULT '0',
  `uf_user_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(5, 1, 9),
(3, 25, 3),
(2, 26, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint UNSIGNED NOT NULL,
  `w_product_id` int NOT NULL,
  `w_price` int NOT NULL DEFAULT '0',
  `w_qty` int NOT NULL DEFAULT '0',
  `w_time_warehouse` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `warehouses`
--

INSERT INTO `warehouses` (`id`, `w_product_id`, `w_price`, `w_qty`, `w_time_warehouse`, `created_at`, `updated_at`) VALUES
(1, 22, 130000, 12, NULL, '2023-10-11 18:56:05', '2023-10-11 18:56:05'),
(2, 17, 100000, 13, NULL, '2023-10-11 19:35:52', '2023-10-11 19:35:52');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount_code_d_code_unique` (`d_code`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exports_w_order_id_index` (`w_order_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `pay_histories`
--
ALTER TABLE `pay_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pay_histories_ph_code_unique` (`ph_code`),
  ADD KEY `index_code_user_id` (`ph_code`,`ph_user_id`),
  ADD KEY `pay_histories_ph_user_id_index` (`ph_user_id`);

--
-- Chỉ mục cho bảng `pay_ins`
--
ALTER TABLE `pay_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_ins_pi_user_id_index` (`pi_user_id`),
  ADD KEY `pay_ins_pi_admin_id_index` (`pi_admin_id`);

--
-- Chỉ mục cho bảng `pay_outs`
--
ALTER TABLE `pay_outs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_outs_po_user_id_index` (`po_user_id`),
  ADD KEY `pay_outs_po_transaction_id_index` (`po_transaction_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`),
  ADD KEY `products_pro_supplier_id_index` (`pro_supplier_id`);

--
-- Chỉ mục cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Chỉ mục cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_user_id_provider_unique` (`provider_user_id`,`provider`);

--
-- Chỉ mục cho bảng `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `supplieres`
--
ALTER TABLE `supplieres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`),
  ADD KEY `transactions_tst_admin_id_index` (`tst_admin_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_balance_index` (`balance`);

--
-- Chỉ mục cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- Chỉ mục cho bảng `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_w_product_id_index` (`w_product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `exports`
--
ALTER TABLE `exports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `pay_histories`
--
ALTER TABLE `pay_histories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `pay_ins`
--
ALTER TABLE `pay_ins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pay_outs`
--
ALTER TABLE `pay_outs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `supplieres`
--
ALTER TABLE `supplieres`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
