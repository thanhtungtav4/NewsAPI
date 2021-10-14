-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 14, 2021 at 01:05 AM
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
-- Database: `newsapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `meta_index` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_schema` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PUBLISHED',
  `date` date DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `user_id`, `title`, `slug`, `content`, `description`, `meta_index`, `meta_description`, `meta_image`, `meta_schema`, `image`, `status`, `date`, `featured`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 3, 1, 'Bí thư TP.HCM: Thông tin loại vaccine cho người dân trước khi tiêm', 'bi-thu-tphcm-thong-tin-loai-vaccine-cho-nguoi-dan-truoc-khi-tiem', '<p>Chiều 13/8, sau buổi kiểm tra c&ocirc;ng t&aacute;c ti&ecirc;m vaccine tại huyện H&oacute;c M&ocirc;n, B&iacute; thư Th&agrave;nh ủy TP.HCM Nguyễn Văn N&ecirc;n c&oacute; trao đổi với b&aacute;o ch&iacute;. &Ocirc;ng cho biết TP.HCM chỉ sử dụng loại vaccine c&oacute; chất lượng, đ&atilde; được Tổ chức Y tế Thế giới (WHO) cấp ph&eacute;p v&agrave; Bộ Y tế thẩm định.</p>\r\n\r\n<h3>Nguồn cung vaccine hạn chế</h3>\r\n\r\n<p>&Ocirc;ng chia sẻ về quy tr&igrave;nh, c&aacute;c điểm ti&ecirc;m vaccine cần th&ocirc;ng tin trước về loại vaccine sẽ ti&ecirc;m cho người d&acirc;n để họ đến ti&ecirc;m tr&ecirc;n tinh thần tự nguyện, tr&aacute;nh để người d&acirc;n bị bất ngờ.</p>\r\n\r\n<p>S&aacute;ng c&ugrave;ng ng&agrave;y, tại một điểm ti&ecirc;m ở quận 1 xảy ra t&igrave;nh trạng người d&acirc;n kh&ocirc;ng đồng &yacute; ti&ecirc;m sau khi biết sẽ ti&ecirc;m vaccine Vero Cell. Tuy nhi&ecirc;n, sau khi t&igrave;m hiểu kỹ lại th&igrave; nhiều người đ&atilde; quay trở lại để ti&ecirc;m.</p>\r\n\r\n<p>B&iacute; thư cho biết khi mua vaccine, th&agrave;nh phố đ&atilde; tiếp cận nhiều nguồn nhưng thực tế l&agrave; nguồn cung rất hạn chế, kh&ocirc;ng phải muốn mua l&agrave; được.</p>\r\n\r\n<p>TP.HCM bắt đầu tổ chức ti&ecirc;m vaccine Vero Cell từ 13/8. Ảnh: Quỳnh Danh.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"tiem vaccine Sinopharm tai TP.HCM anh 1\" src=\"https://znews-photo.zadn.vn/w1920/Uploaded/aobohun/2021_08_13/QuynhDanh_zing.jpg\" style=\"height:1706px; width:2560px\" /></p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"tiem vaccine Sinopharm tai TP.HCM anh 1\" src=\"https://znews-photo.zadn.vn/w1200/Uploaded/aobohun/2021_08_13/QuynhDanh_zing.jpg\" style=\"height:1706px; width:2560px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>TP.HCM bắt đầu tổ chức ti&ecirc;m vaccine Vero Cell từ 13/8. Ảnh: <em>Quỳnh Danh.</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Người đứng đầu Th&agrave;nh ủy TP.HCM nhấn mạnh tinh thần &quot;Vaccine tốt nhất l&agrave; vaccine được ti&ecirc;m sớm nhất, kịp thời nhất&quot;. &Ocirc;ng khẳng định người d&acirc;n ti&ecirc;m vaccine ho&agrave;n to&agrave;n tự nguyện, nhưng cũng mong người d&acirc;n hiểu bối cảnh hiện nay.</p>\r\n\r\n<p>B&iacute; thư chia sẻ l&ocirc; vaccine Vero Cell do nh&agrave; t&agrave;i trợ kết hợp với C&ocirc;ng ty Dược S&agrave;i G&ograve;n (Sapharco) tiếp cận mua. Đến nay, nhiều tỉnh chưa mua được v&agrave; c&oacute; đề nghị mượn th&agrave;nh phố nhưng th&agrave;nh phố phải ưu ti&ecirc;n cho người d&acirc;n trước.</p>\r\n\r\n<p>Với những người chưa ti&ecirc;m, B&iacute; thư đề nghị phải giữ g&igrave;n, đảm bảo 5K, kh&ocirc;ng để l&acirc;y cho m&igrave;nh cũng như người kh&aacute;c. Người ti&ecirc;m rồi cũng kh&ocirc;ng được chủ quan m&agrave; phải tiếp tục ph&ograve;ng tr&aacute;nh l&acirc;y nhiễm.</p>\r\n\r\n<p>B&iacute; thư nhắc lại mục ti&ecirc;u ti&ecirc;m cho phủ vaccine cho người d&acirc;n trước 15/9 v&agrave; nhấn mạnh trong t&igrave;nh h&igrave;nh vaccine như hiện nay, sự ủng hộ của người d&acirc;n c&oacute; vai tr&ograve; quyết định.</p>\r\n\r\n<h3>Người d&acirc;n cần ti&ecirc;m vaccine để bảo vệ sức khỏe ch&iacute;nh m&igrave;nh</h3>\r\n\r\n<p>Cũng n&oacute;i về vấn đề n&agrave;y, Ph&oacute; chủ tịch Dương Anh Đức cho biết nhờ c&oacute; 5 triệu liều vaccine Vero Cell kết hợp với hỗ trợ của Bộ Y tế, th&agrave;nh phố tương đối chủ động. Hai yếu tố quan trọng để đạt mục ti&ecirc;u đề ra l&agrave; sự hợp t&aacute;c của người d&acirc;n v&agrave; lượng vaccine ổn định.</p>\r\n\r\n<p>Hiện, th&agrave;nh phố c&oacute; khoảng 4,3 triệu người đ&atilde; ti&ecirc;m v&agrave; c&oacute; &iacute;t nhất 7 triệu người cần được ti&ecirc;m. Khi đạt được độ phủ như mục ti&ecirc;u, th&agrave;nh phố c&oacute; thể đạt ngưỡng miễn dịch cộng đồng. Như vậy, nhiều hoạt động c&oacute; thể quay trở lại b&igrave;nh thường. Tuy nhi&ecirc;n, quan trọng nhất l&agrave; hạn chế trường hợp tử vong.</p>\r\n\r\n<p>&quot;Thống k&ecirc; thế giới cho thấy người ti&ecirc;m đủ 2 liều vaccine th&igrave; x&aacute;c suất trở nặng v&agrave; tử vong thấp hơn, phải &yacute; thức được điều đ&oacute;. Khi ta bảo vệ sức khỏe ch&iacute;nh m&igrave;nh th&igrave; sẽ bảo vệ được sức khỏe x&atilde; hội&quot;, &ocirc;ng Đức nhắn nhủ.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"tiem vaccine Sinopharm tai TP.HCM anh 2\" src=\"https://znews-photo.zadn.vn/w1200/Uploaded/aobohun/2021_08_13/z2681894904855_85e5501761082ec877a82a95c33bcdc5.jpg\" style=\"height:383px; width:574px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Một số người d&acirc;n tại điểm ti&ecirc;m quận 1 phản ứng sau khi biết được ti&ecirc;m vaccine Vero Cell. <em>Ảnh cắt từ clip.</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Trước đ&oacute;, s&aacute;ng 13/8, UBND quận 1 tổ chức ti&ecirc;m vaccine cho người d&acirc;n. Đến 9h, do vaccine AstraZeneca hết n&ecirc;n quận th&ocirc;ng tin cho người d&acirc;n về việc sẽ ti&ecirc;m tiếp bằng vaccine Sinopharm. Tuy nhi&ecirc;n, một số người phản ứng v&agrave; bỏ về. Sau đ&oacute;, quận tiếp tục tổ chức ti&ecirc;m Sinopharm cho 52 người d&acirc;n tại điểm n&agrave;y.</p>\r\n\r\n<p>Trao đổi với <em>Zing</em>, B&iacute; thư quận 1 (TP.HCM) Trần Kim Yến cho biết c&aacute;c vaccine triển khai hiện nay đều đ&atilde; được Bộ Y tế thẩm định, cấp ph&eacute;p.</p>\r\n\r\n<p>&quot;Hiện người d&acirc;n vẫn c&ograve;n t&acirc;m l&yacute; lựa chọn. Ch&uacute;ng t&ocirc;i đ&atilde; giải th&iacute;ch r&otilde; th&igrave; một số người bỏ về, tuy nhi&ecirc;n phần đ&ocirc;ng vẫn ở lại v&agrave; đồng &yacute; ti&ecirc;m&quot;, b&agrave; Yến n&oacute;i.</p>\r\n\r\n<p>B&iacute; thư quận 1 cũng cho biết địa phương tiếp tục tuy&ecirc;n truyền, động vi&ecirc;n người d&acirc;n việc ti&ecirc;m vaccine vẫn l&agrave; tr&ecirc;n tinh thần tự nguyện. Người d&acirc;n được đăng k&yacute; bằng phiếu, ai đồng &yacute; mới cho ti&ecirc;m.</p>\r\n\r\n<h3>Thống k&ecirc; số người đ&atilde; ti&ecirc;m vaccine tại Việt Nam</h3>\r\n\r\n<p>Xem theo:</p>\r\n\r\n<ul>\r\n	<li><a href=\"#\">Mũi ti&ecirc;m theo ng&agrave;y </a></li>\r\n	<li><a href=\"#\">Tổng số đ&atilde; ti&ecirc;m </a></li>\r\n</ul>\r\n\r\n<p>Created with Highcharts 8.2.2Ti&ecirc;m mũi thứ nhấtTi&ecirc;m mũi thứ hai01/0401/0501/0601/0701/080500k1 000k1 500k</p>\r\n\r\n<p>Tỷ lệ d&acirc;n số đ&atilde; ti&ecirc;m 2 mũi (1.70%) Mục ti&ecirc;u: 70% d&acirc;n số (*)</p>\r\n\r\n<p>(*) Tương đương khoảng 150 triệu liều vaccine<br />\r\nNguồn: Bộ Y Tế Việt Nam. Cập nhật l&uacute;c 18:00 13/08</p>\r\n\r\n<p><a href=\"/dich-viem-phoi-corona.html?utm_source=self&amp;utm_medium=web&amp;utm_campaign=covid4thwavec\" target=\"_blank\">Xem số liệu Covid-19</a></p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><a href=\"/tphcm-su-dung-thuoc-molnupiravir-cho-f0-dieu-tri-tai-nha-post1249093.html#inner-article\"><img alt=\"\" src=\"https://znews-photo.zadn.vn/w360/Uploaded/xpcwvovb/2021_08_09/the_gioi_co_the_cham_dut_dai_dich_covid_19_som_nho_thuoc_qua_duong_uong_22575310_1.jpg\" /> </a></p>\r\n\r\n<h3><a href=\"/tphcm-su-dung-thuoc-molnupiravir-cho-f0-dieu-tri-tai-nha-post1249093.html#inner-article\">TP.HCM sử dụng thuốc Molnupiravir cho F0 điều trị tại nh&agrave;</a></h3>\r\n\r\n<p>Kết quả nghi&ecirc;n cứu thử nghiệm l&acirc;m s&agrave;ng thuốc Molnupiravir tại Mỹ v&agrave; Ấn Độ cho kết quả khả quan về t&iacute;nh an to&agrave;n, khả năng dung nạp, l&agrave;m sạch virus ở bệnh nh&acirc;n thể nhẹ v&agrave; vừa.</p>\r\n\r\n<p><img alt=\"\" src=\"//log.zingnews.vn/imps?type=article&amp;appid=zingweb&amp;id=1249093&amp;pos=zingweb_article_innerarticle1\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><a href=\"/de-nghi-bo-y-te-nghien-cuu-lai-viec-xet-nghiem-toan-dan-post1250707.html#inner-article\">Đề nghị Bộ Y tế nghi&ecirc;n cứu lại việc x&eacute;t nghiệm to&agrave;n d&acirc;n</a></h3>\r\n\r\n<p>Ban D&acirc;n vận Trung ương đề nghị Ch&iacute;nh phủ chỉ đạo Bộ Y tế xem x&eacute;t kh&ocirc;ng di chuyển F0, F1 ra ngo&agrave;i về khu tập trung; nghi&ecirc;n cứu lại việc x&eacute;t nghiệm to&agrave;n d&acirc;n v&agrave; chỉ &aacute;p dụng khi c&oacute; F0.</p>', 'Bí thư Nguyễn Văn Nên cho biết về quy trình, các điểm tiêm sẽ thông tin trước về loại vaccine sẽ tiêm cho người dân và người dân tiêm trên tinh thần tự nguyện.', 'index, follow', NULL, NULL, NULL, 'uploads/news/9735a20a3e07e36e5f7bfd84baab1f14.jpg', 'PUBLISHED', '2021-08-11', 0, '2021-06-10 05:22:39', '2021-10-12 10:50:57', NULL),
(3, 1, 1, 'Hai cán bộ tỉnh Phú Yên \'đi xem đất\' trong thời gian giãn cách xã hội', 'hai-can-bo-tinh-phu-yen-di-xem-dat-trong-thoi-gian-gian-cach-xa-hoi', '<p>Chiều 13/8, l&atilde;nh đạo UBND tỉnh Ph&uacute; Y&ecirc;n x&aacute;c nhận &ocirc;ng L.X.H. (43 tuổi, Trưởng ban Kinh tế - Ng&acirc;n s&aacute;ch HĐND tỉnh) đ&atilde; bị xử phạt 2 triệu đồng v&igrave; ra đường khi kh&ocirc;ng thực sự cần thiết.</p>\r\n\r\n<p>Chiều 10/8, tổ tuần tra ph&ograve;ng chống dịch Covid-19 x&atilde; B&igrave;nh Kiến. TP Tuy H&ograve;a, kiểm tra &ocirc;t&ocirc; v&agrave; một xe đạp điện đậu dưới l&ograve;ng đường Nguyễn Văn Huy&ecirc;n. Khu vực n&agrave;y kh&ocirc;ng c&oacute; d&acirc;n cư, chỉ l&agrave; đất trống v&agrave; rừng dương.</p>\r\n\r\n<p>Người l&aacute;i &ocirc;t&ocirc; l&agrave; &ocirc;ng L.X.H đ&atilde; xuất tr&igrave;nh giấy đi đường do Văn ph&ograve;ng Đo&agrave;n Đại biểu Quốc hội v&agrave; HĐND tỉnh Ph&uacute; Y&ecirc;n cấp để di chuyển tr&ecirc;n c&aacute;c tuyến đường thuộc nội th&agrave;nh Tuy H&ograve;a từ ng&agrave;y 6/8 đến ng&agrave;y 15/8. Khi tổ kiểm tra hỏi về l&yacute; do đến địa điểm vắng vẻ n&agrave;y, &ocirc;ng H. n&oacute;i &ldquo;đi xem đất&rdquo;.</p>\r\n\r\n<p>Trưởng ban Kinh tế - Ng&acirc;n s&aacute;ch HĐND tỉnh Ph&uacute; Y&ecirc;n bị xử phạt do ra đường khi kh&ocirc;ng cần thiết. Ảnh cắt từ clip.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Hai can bo tinh Phu Yen di xem dat anh 1\" src=\"https://znews-photo.zadn.vn/w1920/Uploaded/sotntb/2021_08_13/Ong_Ha.jpg\" /></p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Hai can bo tinh Phu Yen di xem dat anh 1\" src=\"https://znews-photo.zadn.vn/w860/Uploaded/sotntb/2021_08_13/Ong_Ha.jpg\" \r\n/></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Trưởng ban Kinh tế - Ng&acirc;n s&aacute;ch HĐND tỉnh Ph&uacute; Y&ecirc;n bị xử phạt do ra đường khi kh&ocirc;ng cần thiết. <em>Ảnh cắt từ clip.</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Sau gần 15 ph&uacute;t từ l&uacute;c tổ tuần tra g&otilde; cửa &ocirc;t&ocirc;, người phụ nữ ngồi tr&ecirc;n xe mới bước xuống. Người n&agrave;y kh&ocirc;ng tr&igrave;nh b&agrave;y được l&yacute; do cấp thiết để ra đường, kh&ocirc;ng xuất tr&igrave;nh giấy tờ c&aacute; nh&acirc;n, chỉ khai b&aacute;o t&ecirc;n N.T.Q.N. (38 tuổi, ở phường 9, TP Tuy H&ograve;a).</p>\r\n\r\n<p>Tuy nhi&ecirc;n, sau khi x&aacute;c minh, C&ocirc;ng an TP Tuy H&ograve;a x&aacute;c định người phụ nữ ngồi tr&ecirc;n &ocirc;t&ocirc; t&ecirc;n thật l&agrave; Đ.T.L.L. (43 tuổi, Ph&oacute; văn ph&ograve;ng Sở T&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường tỉnh Ph&uacute; Y&ecirc;n). Chiếc xe đạp điện dựng cạnh đ&oacute; l&agrave; của nữ c&aacute;n bộ n&agrave;y.</p>\r\n\r\n<p>L&atilde;nh đạo UBND x&atilde; B&igrave;nh Kiến cũng đ&atilde; lập bi&ecirc;n bản xử phạt b&agrave; L. 2 triệu đồng do ra đường kh&ocirc;ng c&oacute; l&yacute; do cấp thiết.</p>\r\n\r\n<p>&Ocirc;t&ocirc; do &ocirc;ng H. điều khiển v&agrave; xe đạp điện của b&agrave; L. đỗ cạnh khu đất trống ở TP Tuy H&ograve;a.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Hai can bo tinh Phu Yen di xem dat anh 2\" src=\"https://znews-photo.zadn.vn/w1920/Uploaded/sotntb/2021_08_13/z2682512926298_745a8c65c01d1b112bdeb551e2b64dbd.jpg\" \r\n/></p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Hai can bo tinh Phu Yen di xem dat anh 2\" src=\"https://znews-photo.zadn.vn/w860/Uploaded/sotntb/2021_08_13/z2682512926298_745a8c65c01d1b112bdeb551e2b64dbd.jpg\" \r\n /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&Ocirc;t&ocirc; do &ocirc;ng H. điều khiển v&agrave; xe đạp điện của b&agrave; L. đỗ cạnh khu đất trống ở TP Tuy H&ograve;a.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><a href=\"/mien-trung-tang-toc-tiem-vaccine-cho-lao-dong-o-khu-cong-nghiep-post1250450.html#inner-article\"><img alt=\"\" src=\"https://znews-photo.zadn.vn/w360/Uploaded/sotntb/2021_08_13/Anh_tiem_vac_xin_den.jpg\" /> </a></p>\r\n\r\n<h3><a href=\"/mien-trung-tang-toc-tiem-vaccine-cho-lao-dong-o-khu-cong-nghiep-post1250450.html#inner-article\">Miền Trung tăng tốc ti&ecirc;m vaccine cho lao động ở khu c&ocirc;ng nghiệp</a></h3>\r\n\r\n<p>Ph&uacute; Y&ecirc;n, B&igrave;nh Định v&agrave; nhiều địa phương kh&aacute;c ở miền Trung tăng tốc ti&ecirc;m vaccine ph&ograve;ng Covid-19, trong đ&oacute; ưu ti&ecirc;n cho người lao động ở khu kinh tế, khu c&ocirc;ng nghiệp.</p>\r\n\r\n<p><img alt=\"\" src=\"//log.zingnews.vn/imps?type=article&amp;appid=zingweb&amp;id=1250450&amp;pos=zingweb_article_innerarticle1\" /></p>', 'Trưởng ban Kinh tế - Ngân sách HĐND tỉnh Phú Yên và một nữ cán bộ Sở Tài nguyên và Môi trường bị xử phạt khi \"đi xem đất\" gần khu vực rừng dương TP Tuy Hòa.', 'index, follow', NULL, NULL, NULL, 'uploads/news/b8c8c477887ab2f2fbda315485477f82.jpg', 'PUBLISHED', '2021-08-11', 0, '2021-10-10 11:02:15', '2021-10-12 06:14:57', NULL),
(9, 3, 1, 'Giá vàng hôm nay 12.10.2021: Dự báo giảm xuống 41,3 triệu đồng/lượng', 'gia-vang-hom-nay-12-10-2021-du-bao-giam-xuong-41-3-trieu-dong-luong', '<p>s&aacute;ng 12.10 giảm nhẹ 50.000 đồng mỗi lượng, Eximbank mua v&agrave;o c&ograve;n 57,3 triệu đồng/lượng v&agrave; b&aacute;n ra 57,8 triệu đồng/lượng; C&ocirc;ng ty v&agrave;ng bạc đ&aacute; qu&yacute; S&agrave;i G&ograve;n - SJC mua v&agrave;o ở mức 57,25 triệu đồng/lượng v&agrave; b&aacute;n ra 57,95 - 57,97 triệu đồng/lượng&hellip; V&agrave;ng SJC đắt hơn thế giới tăng l&ecirc;n kỷ lục 9,7 triệu đồng mỗi lượng.</p>\r\n\r\n<p>V&agrave;ng thế giới s&aacute;ng 12.10 giảm 2,4 USD/ounce, xuống c&ograve;n 1.751 USD/ounce. Trong phi&ecirc;n giao dịch Mỹ (đ&ecirc;m 11.10), kim loại qu&yacute; đ&atilde; c&oacute; phi&ecirc;n biến động như &ldquo;tia chớp&rdquo;, từ mức 1.756 USD/ounce giảm xuống 1.750 USD/ounce rồi tăng mạnh l&ecirc;n 1.760 USD/ounce trước khi giảm về 1.751 USD/ounce. Lợi tức tr&aacute;i phiếu Ch&iacute;nh phủ Mỹ v&agrave; đồng đ&ocirc; la Mỹ tăng gi&aacute; tr&ecirc;n thị trường ngoại hối l&agrave; những yếu tố giảm gi&aacute; đối với v&agrave;ng. Lợi tức tr&aacute;i phiếu kho bạc Mỹ kỳ hạn 10 năm hiện đạt 1,612%. Lợi tức tr&aacute;i phiếu tăng, l&agrave;m dấy l&ecirc;n lo ngại về lạm ph&aacute;t gia tăng hoặc thậm ch&iacute; l&agrave; lạm ph&aacute;t đ&igrave;nh trệ, l&agrave; sự kết hợp của gi&aacute; cả tăng v&agrave; tốc độ tăng trưởng kinh tế chậm lại. Tuy nhi&ecirc;n, việc dầu th&ocirc; Nymex đẩy l&ecirc;n mức cao nhất trong 7 năm l&agrave; 82,18 USD/th&ugrave;ng v&agrave;o ng&agrave;y h&ocirc;m nay l&agrave; một yếu tố tăng gi&aacute; cho thị trường kim loại.</p>\r\n\r\n<p>Ng&acirc;n h&agrave;ng ABN AMRO (H&agrave; Lan) đ&atilde; điều chỉnh dự b&aacute;o gi&aacute; v&agrave;ng kết th&uacute;c năm nay giảm xuống mức 1.700 USD/ounce (tương ứng 46,8 triệu đồng/lượng, t&iacute;nh theo gi&aacute; USD Vietcombank v&agrave; chưa t&iacute;nh thuế, ph&iacute;) v&agrave; năm sau c&ograve;n 1.500 USD/ounce (tương ứng 41,3 triệu đồng/lượng) sau khi kim loại qu&yacute; kh&ocirc;ng thể vượt được mức 1.800 USD/ounce gần đ&acirc;y. Ng&acirc;n h&agrave;ng H&agrave; Lan đưa ra dự b&aacute;o ti&ecirc;u cực đối với v&agrave;ng dựa v&agrave;o c&aacute;c điều kiện ch&iacute;nh s&aacute;ch tiền tệ thắt chặt hơn tr&ecirc;n to&agrave;n thế giới v&agrave; đồng đ&ocirc; la Mỹ mạnh hơn. Một số ng&acirc;n h&agrave;ng trung ương đ&atilde; bắt đầu h&agrave;nh động thắt chặt ch&iacute;nh s&aacute;ch tiền tệ, chứ kh&ocirc;ng phải nới lỏng. Ch&iacute;nh s&aacute;ch tiền tệ thắt chặt hơn thường l&agrave; tin xấu đối với v&agrave;ng v&igrave; n&oacute; k&iacute;ch hoạt lợi suất tr&aacute;i phiếu ch&iacute;nh phủ tăng.</p>', 'Chính sách tiền tệ thắt chặt hơn thường là tin xấu đối với vàng vì nó kích hoạt lợi suất trái phiếu chính phủ tăng.', 'index, follow', NULL, NULL, NULL, 'uploads/news/0ac883e5c54d7f85e89931398abf4bf1.jpg', 'PUBLISHED', '2021-10-12', 0, '2021-10-12 06:56:18', '2021-10-12 06:56:59', NULL),
(4, 1, 2, '8 người thuê nhà nghỉ để sử dụng ma túy', '8-nguoi-thue-nha-nghi-de-su-dung-ma-tuy-post1250673', '<p>Ng&agrave;y 13/8, C&ocirc;ng an huyện Định H&oacute;a, tỉnh Th&aacute;i Nguy&ecirc;n, đang mở rộng điều tra, củng cố hồ sơ xử l&yacute; một nh&oacute;m người c&oacute; h&agrave;nh vi Sử dụng tr&aacute;i ph&eacute;p chất ma t&uacute;y.</p>\r\n\r\n<table align=\"left\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Tu tap su dung ma tuy trong nha nghi anh 1\" src=\"https://znews-photo.zadn.vn/w480/Uploaded/ngotgs/2021_08_13/3_768x576.jpeg\" style=\"height:576px; width:768px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>4 c&ocirc; g&aacute;i trong ph&ograve;ng 101. Ảnh: <em>C&ocirc;ng an Định H&oacute;a.</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Theo cơ quan chức năng, tối 12/8, c&ocirc;ng an huyện phối hợp với C&ocirc;ng an x&atilde; Trung Hội ph&aacute;t hiện ph&ograve;ng 101, nh&agrave; nghỉ 555 đang c&oacute; nhiều người tụ tập.</p>\r\n\r\n<p>Kiểm tra<strong>,</strong> c&ocirc;ng an bắt quả tang 8 người (4 nam, 4 nữ) c&oacute; biểu hiện sử dụng tr&aacute;i ph&eacute;p chất ma t&uacute;y. Tại hiện trường, cảnh s&aacute;t thu giữ một t&uacute;i nylon chứa tinh thể m&agrave;u trắng, 4 vi&ecirc;n n&eacute;n m&agrave;u t&iacute;m l&agrave; ma t&uacute;y tổng hợp v&agrave; một số tang vật li&ecirc;n quan.</p>\r\n\r\n<p>Kết quả x&eacute;t nghiệm nhanh cho thấy cả 8 người đều dương t&iacute;nh với chất ma t&uacute;y.</p>\r\n\r\n<p><img alt=\"\" src=\"//log.zingnews.vn/imps?type=article&amp;appid=zingweb&amp;id=1247703&amp;pos=zingweb_article_innerarticle3\" /></p>', 'Kiểm tra nhà nghỉ 555 ở Thái Nguyên, cảnh sát bắt quả tang 8 nam, nữ đang tụ tập. Kết quả xét nghiệm cho thấy họ đều dương tính với ma túy.', 'index, follow', NULL, NULL, NULL, 'uploads/news/0e556e227abcad81f9ecaf5073820d8e.jpg', 'PUBLISHED', '2021-08-11', 0, '2021-08-10 11:26:41', '2021-10-06 18:22:24', NULL),
(5, 2, 1, 'Trong một xã hội tôn thờ tuổi thanh xuân', 'trong-mot-xa-hoi-ton-tho-tuoi-thanh-xuan', '<p><em>&ldquo;Thanh xu&acirc;n&rdquo; c&oacute; vẻ l&agrave; một từ kh&oacute;a rất phổ biến gần đ&acirc;y. N&oacute; xuất hiện trong c&aacute;c tựa s&aacute;ch b&aacute;n chạy, trong những b&agrave;i h&aacute;t thịnh h&agrave;nh, t&ecirc;n phim truyền h&igrave;nh, c&aacute;c trang b&aacute;o, v&agrave; những d&ograve;ng trạng th&aacute;i tr&ecirc;n mạng x&atilde; hội. Dường như l&uacute;c n&agrave;y trong đời sống văn h&oacute;a cộng đồng đang xuất hiện một thứ t&iacute;n ngưỡng - t&iacute;n ngưỡng t&ocirc;n thờ tuổi thanh xu&acirc;n.</em></p>\r\n\r\n<p>Từ &ldquo;thanh xu&acirc;n&rdquo; lu&ocirc;n đi liền với &yacute; niệm: tuổi trẻ l&agrave; một c&aacute;i g&igrave; rất đẹp v&agrave; qu&yacute; gi&aacute; m&agrave; ai cũng chỉ sở hữu một thời gian ngắn trong đời, vậy n&ecirc;n h&atilde;y sống vội l&ecirc;n như tinh thần<em> yolo</em>, tinh thần <em>carpe diem</em> để kh&ocirc;ng hối tiếc về sau.</p>\r\n\r\n<p>Điều n&agrave;y c&oacute; thể l&iacute; giải đơn giản như sự lan tỏa nhanh ch&oacute;ng của một niềm tin c&oacute; gi&aacute; trị thương mại trong một nền kinh tế hội nhập. Việc lan tỏa của tư tưởng &ldquo;h&atilde;y sống vội đi, h&atilde;y l&agrave;m nhiều hơn v&agrave; ti&ecirc;u d&ugrave;ng nhiều hơn&rdquo; l&agrave;m lợi cho c&aacute;c ng&agrave;nh giải tr&iacute;, thời trang v&agrave; l&agrave;m đẹp. Trong b&agrave;i Eternal Youth is an ugly obsession tr&ecirc;n trang The Guardian, t&aacute;c giả Rebecca Seal chỉ ra vấn đề n&agrave;y ở Mỹ: &ldquo;nh&oacute;m d&acirc;n số đang gi&agrave; đi phải đứng trước lựa chọn hoặc l&agrave; chấp nhận thực tế l&atilde;o h&oacute;a, hoặc cố gắng n&iacute;u k&eacute;o nhan sắc tuổi xu&acirc;n bằng mỹ phẩm v&agrave; phẩu thuật thẩm mỹ&rdquo;.</p>\r\n\r\n<p><img alt=\"img_0\" src=\"https://s3-ap-southeast-1.amazonaws.com/images.spiderum.com/sp-images/dac2e5f077a311e7974c2f2e910a06eb.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trong một x&atilde; hội t&ocirc;n thờ tuổi xu&acirc;n, tuổi gi&agrave; sẽ trở n&ecirc;n xấu x&iacute; v&agrave; đ&aacute;ng buồn. Điều n&agrave;y ảnh hưởng ti&ecirc;u cực nhiều hơn l&agrave; t&iacute;ch cực. Người trẻ th&igrave; lu&ocirc;n bận l&ograve;ng với một nỗi &aacute;m ảnh thiếu thực tế l&agrave; mỗi ng&agrave;y tr&ocirc;i qua đều l&agrave; một sự ph&iacute; phạm thời gian. Phụ nữ bước sang tuổi trung ni&ecirc;n th&igrave; lo &ldquo;ế&rdquo; v&agrave; xấu đi. C&ograve;n người gi&agrave; nghĩ về m&igrave;nh như một g&aacute;nh nặng x&atilde; hội. Ở b&igrave;nh diện chung, khoảng c&aacute;ch thế hệ c&oacute; thể gia tăng. V&agrave; ở mức cực đoan nhất, c&oacute; thể g&acirc;y ra ph&acirc;n biệt đối xử tuổi t&aacute;c (age discrimination). &quot;T&iacute;n ngưỡng thanh xu&acirc;n&rdquo; l&uacute;c n&agrave;y trở th&agrave;nh &ldquo;m&ecirc; t&iacute;n dị đoan&rdquo;.</p>\r\n\r\n<p>Nhiều tạp ch&iacute; thường hay đề xuất c&aacute;c danh mục tuy&ecirc;n dương người trẻ th&agrave;nh đạt như &ldquo;30 under 30&rdquo;, &ldquo;20 under 20&rdquo;. Nhưng những cột mốc 20, 30 ấy thật sự chẳng c&oacute; &yacute; nghĩa ti&ecirc;u chuẩn g&igrave; với c&aacute;i gọi l&agrave; th&agrave;nh c&ocirc;ng cả v&igrave; mỗi người đều c&oacute; con đường đi kh&aacute;c nhau, xuất ph&aacute;t điểm kh&aacute;c nhau. Đ&oacute; l&agrave; chưa kể th&agrave;nh c&ocirc;ng cũng l&agrave; một &yacute; niệm kh&ocirc;ng đồng nhất. Ngược lại, những vụ việc như cụ b&agrave; 97 tuổi vẫn d&ugrave;ng Internet ngon l&agrave;nh lại trở th&agrave;nh những chuyện hi hữu thuần t&uacute;y giải tr&iacute;. Trong khi lẽ ra n&oacute; cần được nh&igrave;n nhận theo hướng nghi&ecirc;m t&uacute;c l&agrave; c&oacute; qu&aacute; &iacute;t người d&ugrave;ng Internet lớn tuổi v&agrave; l&agrave;m thế n&agrave;o để n&acirc;ng con số ấy l&ecirc;n.</p>\r\n\r\n<p><strong>Th&aacute;i độ n&agrave;o m&agrave; truyền th&ocirc;ng cần c&oacute;?</strong></p>\r\n\r\n<p>Ở g&oacute;c độ vĩ m&ocirc;, lẽ ra n&ecirc;n c&oacute; nhiều hơn những s&acirc;n chơi kh&ocirc;ng ph&acirc;n biệt tuổi t&aacute;c, nếu c&oacute; thể, để r&uacute;t ngắn khoảng c&aacute;ch thế hệ. Ngo&agrave;i ra, sẽ thật tuyệt vời nếu truyền th&ocirc;ng đại ch&uacute;ng quan t&acirc;m nhiều hơn đến c&aacute;c nh&oacute;m tuổi kh&aacute;c, cũng như nh&igrave;n nhận việc gi&agrave; đi như một điều tất yếu v&agrave; kh&ocirc;ng xem n&oacute; như một sự đi xuống của năng lực tư duy v&agrave; nhận thức.</p>\r\n\r\n<p>Nh&agrave; thần kinh học Marsel Mesulam đề xuất kh&aacute;i niệm superagers để chỉ những người lớn tuổi m&agrave; năng lực về tư duy, tr&iacute; nhớ v&agrave; sự tập trung kh&ocirc;ng thua k&eacute;m g&igrave; giới trẻ. V&agrave; theo &ocirc;ng, c&aacute;ch để trở th&agrave;nh superagers l&agrave; kh&ocirc;ng ngừng luyện tập thể chất (chạy bộ, bơi lội...) cũng như tr&iacute; tuệ (viết l&aacute;ch, giải sudoku...). Bản th&acirc;n mỗi ch&uacute;ng ta c&oacute; lẽ cũng n&ecirc;n cố gắng để trở th&agrave;nh superagers để kh&ocirc;ng thấy tuổi gi&agrave; như một sự hư hao v&agrave; l&agrave; một điều cần trốn tr&aacute;nh.</p>\r\n\r\n<p><em>06.2017</em></p>', 'Từ “thanh xuân” luôn đi liền với ý niệm: tuổi trẻ là một cái gì rất đẹp và quý giá mà ai cũng chỉ sở hữu một thời gian ngắn trong đời, vậy nên hãy sống vội lên như tinh thần yolo, tinh thần carpe diem để không hối tiếc về sau.', 'index, follow', NULL, 'uploads/news/5d681fe86502f178e58d5f15003c6c21.jpg', NULL, 'uploads/news/2eea09242d64e8a1a544f910b237421d.jpg', 'PUBLISHED', '2021-09-07', 0, '2021-09-07 02:00:21', '2021-10-03 13:07:19', NULL),
(6, 3, 1, 'Tỷ lệ thất nghiệp, thiếu việc làm tăng cao chưa từng thấy', 'ty-le-that-nghiep-thieu-viec-lam-tang-cao-chua-tung-thay', '<p>Dịch Covid-19 b&ugrave;ng ph&aacute;t lần thứ 4 đ&atilde; khiến thị trường lao động đối mặt với t&igrave;nh trạng khủng hoảng nghi&ecirc;m trọng. T&igrave;nh h&igrave;nh lao động việc l&agrave;m qu&yacute; 3 trở n&ecirc;n tồi tệ, số người&nbsp;<a href=\"https://thanhnien.vn/thanhnien.vn/that-nghiep-vi-dich-covid-19-4-me-con-dap-xe-tu-dong-nai-ve-que-nghe-an-post1091279.html\" target=\"_blank\">thất nghiệp</a>&nbsp;v&agrave; thiếu việc l&agrave;m tăng&nbsp;cao chưa từng thấy.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; th&ocirc;ng tin Tổng cục Thống k&ecirc; cho biết tại buổi họp b&aacute;o s&aacute;ng nay 12.10, về t&igrave;nh h&igrave;nh lao động việc l&agrave;m qu&yacute; 3/2021 v&agrave; 9 th&aacute;ng năm 2021.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Tỷ lệ thất nghiệp, thiếu việc làm tăng cao chưa từng thấy - ảnh 1\" src=\"https://image.thanhnien.vn/w2048/Uploaded/2021/aobohun/2021_08_13/laodongnu_yrqg.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tỷ lệ thất nghiệp, thiếu việc l&agrave;m trong qu&yacute; 3 tăng cao kỷ lục</p>\r\n\r\n			<p>THU HẰNG</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Hơn 28,2 triệu lao động bị ảnh hưởng ti&ecirc;u cực bởi dịch Covid-19</strong></p>\r\n\r\n<p>Theo &ocirc;ng Phạm Ho&agrave;i Nam, Vụ trưởng Vụ Thống k&ecirc; d&acirc;n số v&agrave; lao động (Tổng cục Thống k&ecirc;), so với qu&yacute; trước, số&nbsp;<a href=\"https://thanhnien.vn/thanhnien.vn/lao-dong/\" target=\"_blank\">lao động</a>&nbsp;chịu t&aacute;c động xấu bởi đại dịch Covid-19 trong qu&yacute; 3 tăng th&ecirc;m 15,4 triệu người, l&ecirc;n hơn 28,2 triệu người do bị mất việc l&agrave;m, phải nghỉ gi&atilde;n việc, nghỉ lu&acirc;n phi&ecirc;n, giảm giờ l&agrave;m, giảm thu nhập&hellip;</p>\r\n\r\n<p>Trong số tr&ecirc;n, c&oacute; 4,7 triệu người bị mất việc (chiếm 16,5%); 14,7 triệu người phải tạm nghỉ, tạm ngừng sản xuất kinh doanh (chiếm 51,1%); 12 triệu người bị cắt giảm giờ l&agrave;m hoặc buộc phải nghỉ gi&atilde;n việc, nghỉ lu&acirc;n phi&ecirc;n (chiếm 42,7%) v&agrave; 18,9 triệu lao động bị giảm thu nhập (chiếm 67,2%).</p>\r\n\r\n<p>Đ&aacute;ng ch&uacute; &yacute;, khu vực Đ&ocirc;ng Nam bộ v&agrave; Đồng bằng s&ocirc;ng Cửu Long l&agrave; 2 v&ugrave;ng bị ảnh hưởng nặng nề nhất, lần lượt l&agrave; 59,1% v&agrave; 44,7%.</p>\r\n\r\n<p>Theo &ocirc;ng Phạm Ho&agrave;i Nam,&nbsp;<a href=\"https://thanhnien.vn/thanhnien.vn/thu-nhap-binh-quan/\" target=\"_blank\">thu nhập</a>&nbsp;b&igrave;nh qu&acirc;n th&aacute;ng của người lao động trong qu&yacute; 3 l&agrave; 5,2 triệu đồng, giảm 877.000 đồng, so với c&aacute;c qu&yacute; trước v&agrave; so với c&ugrave;ng kỳ năm ngo&aacute;i sụt giảm nghi&ecirc;m trọng. So với qu&yacute; 2/2020 (qu&yacute; đ&atilde; từng chứng kiến mức thu nhập b&igrave;nh qu&acirc;n &ldquo;bắt đ&aacute;y&rdquo; do thực hiện c&aacute;ch ly to&agrave;n x&atilde; hội theo Chỉ thị 16), mức thu nhập b&igrave;nh qu&acirc;n th&aacute;ng của người lao động trong qu&yacute; 3 năm nay thậm ch&iacute; c&ograve;n thấp hơn nhiều v&agrave; trở th&agrave;nh mức thu nhập thấp nhất được ghi nhận trong nhiều năm trở lại đ&acirc;y.</p>\r\n\r\n<p>Hầu hết c&aacute;c ng&agrave;nh kinh tế đều ghi nhận mức sụt giảm thu nhập, trong đ&oacute;, người lao động l&agrave;m việc trong khu vực dịch vụ bị ảnh hưởng nặng nề nhất với mức b&igrave;nh qu&acirc;n l&agrave; 6,2 triệu đồng, gi&agrave;m 1 triệu đồng; lao động trong khu vực c&ocirc;ng nghiệp v&agrave; x&acirc;y dựng c&oacute; mức thu nhập b&igrave;nh qu&acirc;n l&agrave; 5,8 triệu đồng, giảm 906.000 đồng.</p>\r\n\r\n<p>Đặc biệt, lao động ở v&ugrave;ng Đ&ocirc;ng Nam bộ chịu tổn thương nặng nề nhất với mức thu nhập giảm s&acirc;u, thu nhập b&igrave;nh qu&acirc;n của lao động v&ugrave;ng n&agrave;y l&agrave; 5,7 triệu đồng, giảm 2,4 triệu đồng (giảm tương ứng 29,8%) so với qu&yacute; trước v&agrave; giảm 1,9 triệu đồng (giảm tương ứng 24,9%) so với c&ugrave;ng kỳ năm trước. Tại t&acirc;m dịch TP.HCM, người lao động c&oacute; thu nhập b&igrave;nh qu&acirc;n th&aacute;ng giảm chỉ c&ograve;n 5,8 triệu đồng, mức thấp nhất trong nhiều năm trở lại đ&acirc;y ở địa phương n&agrave;y.</p>\r\n\r\n<p><strong>Tỷ lệ thiếu việc l&agrave;m tại TP.HCM tăng gấp 3,6 lần H&agrave; Nội</strong></p>\r\n\r\n<p>Dịch&nbsp;<a href=\"https://thanhnien.vn/thanhnien.vn/covid-19/\" target=\"_blank\">Covid-19</a>&nbsp;diễn biến phức tạp, l&acirc;y lan nhanh v&agrave; k&eacute;o d&agrave;i đ&atilde; l&agrave;m tăng tỷ lệ v&agrave; số người thiếu việc l&agrave;m trong độ tuổi l&ecirc;n mức cao nhất. Số người thiếu việc l&agrave;m qu&yacute; 4 l&agrave; hơn 1,8 triệu người, tăng 700.300 người so với qu&yacute; 2. Tỷ lệ thiếu việc l&agrave;m tăng l&ecirc;n tới 4,46%, đặc biệt l&agrave; ở TP.HCM tăng tới 8,5%, cao hơn 3,6 lần so với th&agrave;nh phố H&agrave; Nội (2,39%).</p>\r\n\r\n<p>&ldquo;C&ugrave;ng với xu hướng tăng của tỷ lệ thiếu việc l&agrave;m, diễn biến bất thường của đại dịch Covid-19 cũng đ&atilde; đẩy số người thất nghiệp l&ecirc;n hơn 1,7 triệu người v&agrave; tỷ lệ thất nghiệp trong độ tuổi lao động tăng đột biến, từ 2% như thường thấy l&ecirc;n mức 3,98%. Tỷ lệ thất nghiệp của người trong độ tuổi lao động n&oacute;i tr&ecirc;n l&agrave; mức tăng cao nhất chưa từng thấy, khiến cơ hội t&igrave;m kiếm việc l&agrave;m của người lao động c&agrave;ng kh&oacute; khăn hơn&rdquo;, &ocirc;ng Nam th&ocirc;ng tin.</p>\r\n\r\n<p>Theo Vụ Thống k&ecirc; d&acirc;n số v&agrave; lao động, trong qu&yacute; 3, c&oacute; khoảng 1,3 triệu lao động về qu&ecirc;. Hiện đơn vị n&agrave;y tiếp tục điều tra để đ&aacute;nh gi&aacute; đầy đủ hơn t&igrave;nh trạng lao động về qu&ecirc;, t&igrave;nh h&igrave;nh việc l&agrave;m của lao động trong những th&aacute;ng cuối năm.</p>', 'Theo ông Phạm Hoài Nam, Vụ trưởng Vụ Thống kê dân số và lao động (Tổng cục Thống kê), so với quý trước, số lao động chịu tác động xấu bởi đại dịch Covid-19 trong quý 3 tăng thêm 15,4 triệu người,', 'index, follow', NULL, NULL, NULL, 'uploads/news/2e32fe74aef98fe09c48859c96530034.jpg', 'PUBLISHED', '2021-10-12', 0, '2021-10-12 01:10:45', '2021-10-12 01:15:03', NULL),
(7, 3, 1, 'Bão số 8 gây gió giật cấp 13, có khả năng mạnh lên', 'bao-so-8-gay-gio-giat-cap-13-co-kha-nang-manh-len', '<p>Dự b&aacute;o trong 24 giờ tới, b&atilde;o số 8 di chuyển nhanh theo hướng T&acirc;y, mỗi giờ đi được 25 - 30 km v&agrave; c&oacute; khả năng mạnh th&ecirc;m. Đến 10 giờ ng&agrave;y 13.10, vị tr&iacute; t&acirc;m b&atilde;o ở khoảng 19,0 độ Vĩ Bắc; 112,0 độ Kinh Đ&ocirc;ng, c&aacute;ch đảo Hải Nam (Trung Quốc) khoảng 140 km về ph&iacute;a Đ&ocirc;ng. Sức gi&oacute; mạnh nhất v&ugrave;ng gần t&acirc;m b&atilde;o mạnh cấp 11 (100 - 120 km/giờ), giật cấp 14.</p>\r\n\r\n<p>V&ugrave;ng nguy hiểm tr&ecirc;n Biển Đ&ocirc;ng trong 24 giờ tới (gi&oacute; mạnh từ cấp 6 trở l&ecirc;n, giật từ cấp 8 trở l&ecirc;n): từ vĩ tuyến 16,0 đến 22,0 độ Vĩ Bắc; ph&iacute;a Đ&ocirc;ng kinh tuyến 110,0 độ Kinh Đ&ocirc;ng. To&agrave;n bộ t&agrave;u thuyền hoạt động trong v&ugrave;ng nguy hiểm đều c&oacute; nguy cơ cao chịu t&aacute;c động của gi&oacute; mạnh, s&oacute;ng lớn v&agrave; lốc xo&aacute;y.</p>\r\n\r\n<p>Trong 24 đến 48 giờ tiếp theo, b&atilde;o di chuyển chủ yếu theo hướng T&acirc;y, mỗi giờ đi được khoảng 25 km v&agrave; c&oacute; khả năng suy yếu dần về cường độ. Đến 10 giờ ng&agrave;y 14.10, vị tr&iacute; t&acirc;m b&atilde;o ở khoảng 18,7 độ Vĩ Bắc; 106,1 độ Kinh Đ&ocirc;ng, tr&ecirc;n v&ugrave;ng biển từ Thanh H&oacute;a đến Quảng B&igrave;nh. Sức gi&oacute; mạnh nhất v&ugrave;ng gần t&acirc;m b&atilde;o mạnh cấp 8 (60 - 75 km/giờ), giật cấp 10.</p>\r\n\r\n<p>V&ugrave;ng nguy hiểm tr&ecirc;n Biển Đ&ocirc;ng trong 24 - 48 giờ tiếp theo (gi&oacute; mạnh từ cấp 6 trở l&ecirc;n, giật từ cấp 8 trở l&ecirc;n): ph&iacute;a Bắc vĩ tuyến 15,5 độ Vĩ Bắc; ph&iacute;a T&acirc;y Kinh Tuyến 115,0 độ Kinh Đ&ocirc;ng. To&agrave;n bộ t&agrave;u thuyền hoạt động trong v&ugrave;ng nguy hiểm đều c&oacute; nguy cơ cao chịu t&aacute;c động của gi&oacute; mạnh, s&oacute;ng lớn v&agrave; lốc xo&aacute;y.</p>\r\n\r\n<p>Trong 48 đến 60 giờ tiếp theo, b&atilde;o di chuyển theo hướng T&acirc;y T&acirc;y Nam, mỗi giờ đi được khoảng 20 km đi v&agrave;o đất liền v&agrave; suy yếu th&agrave;nh &aacute;p thấp nhiệt đới, sau l&agrave; v&ugrave;ng &aacute;p thấp tr&ecirc;n khu vực Trung L&agrave;o. Sức gi&oacute; mạnh nhất ở trung t&acirc;m v&ugrave;ng &aacute;p thấp giảm xuống dưới cấp 6 (dưới 40 km/giờ).</p>\r\n\r\n<p>Cảnh b&aacute;o cấp độ rủi ro thi&ecirc;n tai do b&atilde;o ở cấp 3.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Bão số 8 gây gió giật cấp 13, có khả năng mạnh lên - ảnh 1\" src=\"https://image.thanhnien.vn/Uploaded/2021/bozngu/2021_10_12/bao-so-8-luc11h-7112.gif\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dự b&aacute;o trong 24 giờ tới, b&atilde;o số 8 di chuyển nhanh theo hướng T&acirc;y, mỗi giờ đi được 25- 30 km v&agrave; c&oacute; khả năng mạnh th&ecirc;m</p>\r\n\r\n			<p>TRUNG T&Acirc;M KH&Iacute; TƯỢNG THỦY VĂN QUỐC GIA</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Cảnh b&aacute;o gi&oacute; mạnh v&agrave; s&oacute;ng lớn tr&ecirc;n biển</h2>\r\n\r\n<p>Ở khu vực Bắc Biển Đ&ocirc;ng (bao gồm v&ugrave;ng biển quần đảo Ho&agrave;ng Sa) c&oacute; gi&oacute; mạnh cấp 8 - 9, v&ugrave;ng gần t&acirc;m b&atilde;o đi qua mạnh cấp 10 - 11, giật cấp 14; s&oacute;ng biển cao từ 5,0 - 7,0m; biển động dữ dội. Ở Vịnh Bắc bộ (bao gồm cả huyện đảo Bạch Long Vĩ) v&agrave; v&ugrave;ng biển từ Quảng Trị đến Quảng Ng&atilde;i (bao gồm huyện đảo Cồn Cỏ) c&oacute; gi&oacute; mạnh cấp 6, từ ng&agrave;y mai (13.10) tăng l&ecirc;n cấp 7 - 8, v&ugrave;ng gần t&acirc;m b&atilde;o mạnh cấp 9, giật cấp 11; s&oacute;ng biển cao từ 3,0 - 5,0m, biển động rất mạnh.</p>\r\n\r\n<p>Trong ng&agrave;y v&agrave; đ&ecirc;m nay (12.10), ở khu vực Giữa v&agrave; Nam Biển Đ&ocirc;ng (bao gồm v&ugrave;ng biển quần đảo Trường Sa), v&ugrave;ng biển từ B&igrave;nh Thuận đến C&agrave; Mau c&oacute; gi&oacute; T&acirc;y Nam mạnh cấp 6, giật cấp 8, s&oacute;ng biển cao từ 2,0 - 3,0 m, biển động.</p>\r\n\r\n<h2>Cảnh b&aacute;o gi&oacute; mạnh tr&ecirc;n đất liền</h2>\r\n\r\n<p>Từ đ&ecirc;m mai (13.10) đến ng&agrave;y 14.10, v&ugrave;ng ven biển từ Quảng Ninh đến Quảng B&igrave;nh c&oacute; gi&oacute; mạnh cấp 6 - 7, giật cấp 9. Khu vực b&atilde;o đi qua c&oacute; khả năng c&oacute; gi&oacute; mạnh cấp 8, giật cấp 10.</p>\r\n\r\n<h2>Cảnh b&aacute;o mưa lớn</h2>\r\n\r\n<p>Từ chiều mai (13.10) đến ng&agrave;y 14.10, ở khu vực Bắc Bộ v&agrave; Quảng Trị c&oacute; mưa to, c&oacute; nơi mưa rất to với lượng mưa phổ biến từ 100 - 150 mm/đợt, c&oacute; nơi tr&ecirc;n 200 mm/đợt; khu vực từ Thanh H&oacute;a đến Quảng B&igrave;nh c&oacute; mưa rất to với lượng mưa phổ biến từ 150 - 250 mm/đợt, c&oacute; nơi tr&ecirc;n 300 mm/đợt. Đề ph&ograve;ng nguy cơ cao xảy ra lũ qu&eacute;t, sạt lở đất tại khu vực v&ugrave;ng n&uacute;i v&agrave; ngập &uacute;ng cục bộ tại c&aacute;c v&ugrave;ng trũng, thấp, ven s&ocirc;ng. Từ ng&agrave;y 15.10, do ảnh hưởng của kh&ocirc;ng kh&iacute; lạnh tăng cường kết hợp với dải hội tụ nhiệt đới n&ecirc;n ở khu vực Bắc v&agrave; Trung Trung bộ c&oacute; khả năng xảy ra mưa to đến rất to.</p>', 'Từ ngày 15.10, do ảnh hưởng của không khí lạnh tăng cường kết hợp với dải hội tụ nhiệt đới nên ở khu vực Bắc và Trung Trung bộ có khả năng xảy ra mưa to đến rất to.', 'index, follow', NULL, NULL, NULL, 'uploads/news/6552507ade7a99705aebed7f1f1d6219.jpg', 'PUBLISHED', '2021-10-12', 0, '2021-10-12 01:11:40', '2021-10-12 01:11:40', NULL),
(8, 1, 1, 'Từ ngày 15.10, do ảnh hưởng của không khí lạnh tăng cường kết hợp với dải hội tụ nhiệt đới nên ở khu vực Bắc và Trung Trung bộ có khả năng xảy ra mưa to đến rất to.', 'tu-ngay-15-10-do-anh-huong-cua-khong-khi-lanh-tang-cuong-ket-hop-voi-dai-hoi-tu-nhiet-doi-nen-o-khu-vuc-bac-va-trung-trung-bo-co-kha-nang-xay-ra-mua-to-den-rat-to', '<p>Sở Y tế tỉnh Ninh Thuận c&oacute; c&ocirc;ng văn&nbsp;hướng dẫn tạm thời gi&aacute;m s&aacute;t, kiểm so&aacute;t Covid-19 đối với người&nbsp;ti&ecirc;m đủ 2 mũi vắc xin ph&ograve;ng Covid-19 từ c&aacute;c tỉnh ph&iacute;a nam trở về Ninh Thuận.</p>\r\n\r\n<p>Ng&agrave;y 12.10, Sở Y tế Ninh Thuận c&oacute; c&ocirc;ng văn hỏa tốc gửi c&aacute;c ban ng&agrave;nh, đo&agrave;n thể, UBND c&aacute;c huyện, th&agrave;nh phố về việc hướng dẫn tạm thời gi&aacute;m s&aacute;t, kiểm so&aacute;t Covid-19 đối với&nbsp;<a href=\"https://thanhnien.vn/post-1112506.html\">người ti&ecirc;m đủ 2 mũi vắc xin ph&ograve;ng Covid-19</a>&nbsp;từ TP.HCM, tỉnh Đồng Nai, B&igrave;nh Dương, Long An trở về qu&ecirc;.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Ninh Thuận: Người về quê đủ điều kiện không buộc cách ly tập trung 7 ngày - ảnh 1\" src=\"https://image.thanhnien.vn/w2048/Uploaded/2021/ayhukbf/2021_10_12/ninh-thuan-ve-que-5752.png\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>C&ocirc;ng d&acirc;n Ninh Thuận từ c&aacute;c tỉnh ph&iacute;a nam trở về qu&ecirc; đủ điều kiện sẽ được c&aacute;ch ly tại nh&agrave; 7 ng&agrave;y</p>\r\n\r\n			<p>THIỆN NH&Acirc;N</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Theo Sở Y tế Ninh Thuận, hiện t&igrave;nh h&igrave;nh dịch Covid-19 tr&ecirc;n địa b&agrave;n tỉnh mặc d&ugrave; đ&atilde; được kiểm so&aacute;t, tuy nhi&ecirc;n c&aacute;c mối nguy cơ ph&aacute;t sinh v&agrave;&nbsp;<a href=\"https://thanhnien.vn/post-1111222.html\">l&acirc;y lan dịch trong cộng đồng</a>&nbsp;c&ograve;n rất lớn, l&agrave;m ảnh hưởng đến c&ocirc;ng t&aacute;c chống dịch v&agrave; phục hồi kinh tế của tỉnh. Trong điều kiện tỷ lệ ti&ecirc;m vắc xin ngừa Covid -19 cho người tr&ecirc;n 18 tuổi của tỉnh c&ograve;n thấp, đến nay mới chỉ đạt 45,4%.</p>\r\n\r\n<p>Để kiểm so&aacute;t c&oacute; hiệu quả, đảm bảo an to&agrave;n ph&ograve;ng chống dịch theo chỉ đạo của Tỉnh ủy, UBND tỉnh, Sở Y tế Ninh Thuận hướng dẫn tạm thời thực hiện kiểm so&aacute;t, ph&ograve;ng chống dịch Covid-19 đối với người từ TP.HCM, Đồng Nai, B&igrave;nh Dương, Long An đ&atilde; ti&ecirc;m đủ 2 mũi vắc xin ph&ograve;ng Covid-19.</p>\r\n\r\n<p>Cụ thể, trường hợp nếu đủ điều kiện về cơ sở vật chất v&agrave; c&aacute;c thủ tục li&ecirc;n quan theo y&ecirc;u cầu của ng&agrave;nh y tế th&igrave; được&nbsp;<a href=\"https://thanhnien.vn/post-1389946.html\">thực hiện c&aacute;ch ly tại nh&agrave; 7 ng&agrave;y</a>&nbsp;kể từ ng&agrave;y về địa phương, thực hiện x&eacute;t nghiệm bằng phương ph&aacute;p RT-PCR 2 lần v&agrave;o ng&agrave;y đầu v&agrave; ng&agrave;y thứ 7; tự theo d&otilde;i sức khỏe 7 ng&agrave;y tiếp theo, lu&ocirc;n thực hiện th&ocirc;ng điệp 5K; nếu c&oacute; dấu hiệu bất thường về sức khỏe như: ho, sốt, kh&oacute; thở, đau r&aacute;t họng, mất vị gi&aacute;c th&igrave; b&aacute;o cho cơ quan y tế để theo d&otilde;i v&agrave; xử tr&iacute; theo quy định.</p>\r\n\r\n<p>Sở Y tế Ninh Thuận đề nghị Ban điều h&agrave;nh c&aacute;c khu c&aacute;ch ly tập trung tỉnh (Bộ Chỉ huy Qu&acirc;n sự tỉnh) x&aacute;c lập danh s&aacute;ch, để UBND huyện, th&agrave;nh phố thẩm định, x&aacute;c nhận điều kiện c&aacute;ch ly tại nh&agrave;, tổ chức chuyển về c&aacute;ch ly v&agrave; thực hiện c&ocirc;ng t&aacute;c gi&aacute;m s&aacute;t, kiểm so&aacute;t dịch theo quy định. Trường hợp kh&ocirc;ng đủ điều kiện thực hiện c&aacute;ch ly tại nh&agrave; th&igrave; phải thực hiện c&aacute;ch ly tập trung 7 ng&agrave;y theo quy định.</p>\r\n\r\n<p>Trường hợp nếu người d&acirc;n c&oacute; nhu cầu v&agrave; tự chi trả kinh ph&iacute; c&aacute;ch ly tại kh&aacute;ch sạn th&igrave; phải đăng k&yacute; v&agrave; c&oacute; cam kết gửi Ban điều h&agrave;nh c&aacute;c khu c&aacute;ch ly tập trung để bố tr&iacute; c&aacute;ch ly tại c&aacute;c kh&aacute;ch sạn đạt chuẩn, đ&atilde; được UBND tỉnh ph&ecirc; duyệt theo quy định.</p>\r\n\r\n<p>Trước đ&oacute;, v&agrave;o chiều 11.10, tỉnh Ninh Thuận c&oacute; th&ocirc;ng b&aacute;o những người ti&ecirc;m 2 mũi vắc xin từ ph&iacute;a nam trở về cũng phải c&aacute;ch ly tập trung trong 7 ng&agrave;y.</p>', 'Trường hợp nếu người dân có nhu cầu và tự chi trả kinh phí cách ly tại khách sạn thì phải đăng ký và có cam kết gửi Ban điều hành các khu cách ly tập trung để bố trí cách ly tại các khách sạn đạt chuẩn, đã được UBND tỉnh phê duyệt theo quy định.', 'index, follow', NULL, NULL, NULL, 'uploads/news/624b431f6b5a4e248760122354af71aa.jpg', 'PUBLISHED', '2021-10-12', 0, '2021-10-12 01:13:14', '2021-10-12 01:13:14', NULL);
INSERT INTO `articles` (`id`, `category_id`, `user_id`, `title`, `slug`, `content`, `description`, `meta_index`, `meta_description`, `meta_image`, `meta_schema`, `image`, `status`, `date`, `featured`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 5, 1, 'Ở đâu khó, có doanh nghiệp', 'o-dau-kho-co-doanh-nghiep', '<p>Trong những ng&agrave;y th&aacute;ng đại dịch Covid-19 ho&agrave;nh h&agrave;nh, b&ecirc;n cạnh đội ngũ y b&aacute;c sĩ, qu&acirc;n đội, c&ograve;n c&oacute; h&agrave;ng ng&agrave;n doanh nghiệp, h&agrave;ng trăm doanh nh&acirc;n lu&ocirc;n ti&ecirc;n phong trong tất cả c&aacute;c &ldquo;mặt trận&rdquo;.</p>\r\n\r\n<p>Từ g&oacute;p h&agrave;ng chục ng&agrave;n tỉ đồng cho quỹ vắc xin, x&acirc;y bệnh viện d&atilde; chiến thần tốc, mua thuốc điều trị Covid-19, chuyển giao c&ocirc;ng nghệ sản xuất vắc xin, ki&ecirc;n cường duy tr&igrave; hoạt động sản xuất để giữ c&ocirc;ng ăn việc l&agrave;m cho người lao động, chặn đ&agrave; đứt g&atilde;y chuỗi gi&aacute; trị...; khi tổ quốc cần, họ ở đ&oacute; sẵn s&agrave;ng sẻ chia, g&aacute;nh v&aacute;c.</p>\r\n\r\n<h2>Doanh nghiệp du lịch x&acirc;y bệnh viện</h2>\r\n\r\n<p>Những ng&agrave;y cuối th&aacute;ng 5, khi đợt&nbsp;<a href=\"https://thanhnien.vn/post-1390169.html\">dịch Covid-19</a>&nbsp;lần thứ 4 b&ugrave;ng ph&aacute;t, 2 tỉnh Bắc Ninh, Bắc Giang chỉ trong thời gian ngắn bỗng biến th&agrave;nh ổ dịch phức tạp nhất cả nước với số ca nhiễm tăng ch&oacute;ng mặt. Dịch bệnh diễn biến căng thẳng, số ca bệnh tăng nhanh tạo &aacute;p lực lớn l&ecirc;n ch&iacute;nh quyền địa phương trong việc bố tr&iacute; c&aacute;ch ly v&agrave; điều trị cho bệnh nh&acirc;n Covid-19 nặng. Hệ thống y tế, kinh tế v&agrave; cả x&atilde; hội của 2 địa phương n&agrave;y chưa từng trải qua sức &eacute;p lớn đến thế. Hai trung t&acirc;m hồi sức t&iacute;ch cực đặt tại Bệnh viện Phổi Bắc Giang v&agrave; Bệnh viện đa khoa tỉnh với 58 giường nhanh ch&oacute;ng qu&aacute; tải.</p>\r\n\r\n<p>Trong bối cảnh nước s&ocirc;i lửa bỏng đ&oacute;, Tập đo&agrave;n Sun Group đ&atilde; c&oacute; mặt, x&acirc;y dựng Trung t&acirc;m hồi sức t&iacute;ch cực (ICU) quy m&ocirc; 100 giường trang bị đầy đủ thiết bị y tế hiện đại. Theo dự kiến ban đầu, thời gian cung cấp thiết bị v&agrave; lắp đặt ho&agrave;n th&agrave;nh trong v&ograve;ng 7 ng&agrave;y. Tuy nhi&ecirc;n, để đẩy nhanh tiến độ, Sun Group đ&atilde; khẩn trương điều phối c&aacute;n bộ quản l&yacute; điều h&agrave;nh, kỹ sư v&agrave; đơn vị thi c&ocirc;ng trực tiếp v&agrave;o t&acirc;m dịch Bắc Giang để lắp đặt, ho&agrave;n th&agrave;nh ICU trong thời gian sớm nhất. Giai đoạn cao điểm 4 ng&agrave;y đầu thi c&ocirc;ng, tập đo&agrave;n n&agrave;y đ&atilde; huy động đến 200 c&aacute;n bộ, kỹ sư, c&ocirc;ng nh&acirc;n l&agrave;m việc tại c&ocirc;ng trường bất kể đ&ecirc;m ng&agrave;y. Họ miệt m&agrave;i quyết liệt triển khai cải tạo, sửa chữa, chỉnh trang, l&agrave;m mới to&agrave;n bộ t&ograve;a nh&agrave; 5 tầng của Bệnh viện T&acirc;m thần, cung cấp v&agrave; lắp đặt trang thiết bị y tế. Kết quả chỉ sau 5 ng&agrave;y thi c&ocirc;ng &ldquo;thần tốc&rdquo;, Trung t&acirc;m hồi sức t&iacute;ch cực được Bộ Y tế đ&aacute;nh gi&aacute; l&agrave; hiện đại v&agrave; c&oacute; quy m&ocirc; lớn nhất miền Bắc với tổng vốn đầu tư 50 tỉ đồng đ&atilde; ch&iacute;nh thức được Sun Group b&agrave;n giao cho tỉnh Bắc Giang.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Ở đâu khó, có doanh nghiệp - ảnh 1\" src=\"https://image.thanhnien.vn/w2048/Uploaded/2021/wsxrxqeiod/2021_10_12/doanh-nghiep-5402.jpeg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nh&oacute;m thiện nguyện Nh&agrave; b&aacute;o v&agrave; Doanh nh&acirc;n đ&atilde; cung cấp gần 200 tấn rau củ quả cho người d&acirc;n TP.HCM trong thời gian gi&atilde;n c&aacute;ch x&atilde; hội</p>\r\n\r\n			<p>Đ.SƠN</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>V&agrave;i ng&agrave;y sau đ&oacute;, Tập đo&agrave;n Sun Group tiếp tục hỗ trợ Bắc Ninh lập trung t&acirc;m hồi sức t&iacute;ch cực với tổng số tiền 50 tỉ đồng. Cũng ch&iacute;nh Sun Group năm 2020 đ&atilde; khiến nhiều người th&aacute;n phục khi ph&aacute; vỡ kỷ lục dựng bệnh viện d&atilde; chiến 1 tuần tại Vũ H&aacute;n (Trung Quốc), khi x&acirc;y bệnh viện d&atilde; chiến với thời gian chỉ bằng một nửa: 3,5 ng&agrave;y, tương đương 84 giờ đồng hồ. Đ&oacute; l&agrave; bệnh viện d&atilde; chiến điều trị bệnh nh&acirc;n Covid-19 tại Cung thể thao Ti&ecirc;n Sơn (Đ&agrave; Nẵng) với c&ocirc;ng suất 500 giường do ch&iacute;nh người Việt thực hiện đ&atilde; ch&iacute;nh thức vận h&agrave;nh. Nhanh ch&oacute;ng c&oacute; mặt tại những điểm n&oacute;ng dịch bệnh, thần tốc dựng n&ecirc;n những &ldquo;l&aacute; chắn th&eacute;p&rdquo; gi&uacute;p c&aacute;c địa phương vượt qua dịch bệnh đ&atilde; x&acirc;y dựng n&ecirc;n một h&igrave;nh ảnh ho&agrave;n to&agrave;n mới cho doanh nghiệp (DN) ph&aacute;t triển du lịch h&agrave;ng đầu VN mang t&ecirc;n Sun Group.</p>\r\n\r\n<p>Hoạt động ch&iacute;nh trong lĩnh vực du lịch, suốt gần 2 năm qua kinh doanh gần như đ&oacute;ng băng, doanh thu kh&ocirc;ng c&oacute; trong khi vẫn phải bỏ kinh ph&iacute; khổng lồ để bảo tr&igrave;, bảo dưỡng, trả lương cho nh&acirc;n vi&ecirc;n...; thế nhưng Tập đo&agrave;n Sun Group cho thấy tr&aacute;ch nhiệm của m&igrave;nh với đất nước. B&agrave; B&ugrave;i Thị Thanh Hương, Ph&oacute; chủ tịch HĐQT, Tổng gi&aacute;m đốc Tập đo&agrave;n Sun Group, n&oacute;i đơn giản: &ldquo;L&agrave; những người con Việt Nam, Sun Group mong muốn g&oacute;p một c&aacute;nh tay để chia sẻ kh&oacute; khăn với c&aacute;c địa phương. Ch&uacute;ng t&ocirc;i hy vọng rằng sự chia sẻ, đ&oacute;ng g&oacute;p nhỏ b&eacute; n&agrave;y sẽ g&oacute;p phần tiếp sức cho c&aacute;c tỉnh, th&agrave;nh khống chế dịch bệnh trong thời gian sớm nhất. Đồng thời lan tỏa tinh thần tương th&acirc;n tương &aacute;i trong cộng đồng, để người d&acirc;n, DN cả nước c&ugrave;ng&nbsp;<a href=\"https://thanhnien.vn/post-1075373.html\">đồng l&ograve;ng vượt qua dịch</a>, Việt Nam sẽ tiếp tục chiến thắng&rdquo;.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Ở đâu khó, có doanh nghiệp - ảnh 2\" src=\"https://image.thanhnien.vn/w2048/Uploaded/2021/wsxrxqeiod/2021_10_12/doanh-nghiep1-2145.jpeg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chỉ sau 5 ng&agrave;y thi c&ocirc;ng, Trung t&acirc;m hồi sức t&iacute;ch cực (ICU) điều trị bệnh nh&acirc;n Covid-19 nặng c&oacute; quy m&ocirc; 101 giường bệnh với trang thiết bị hiện đại bậc nhất đ&atilde; được Tập đo&agrave;n Sun Group b&agrave;n giao cho tỉnh Bắc Giang</p>\r\n\r\n			<p>N.A</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Ti&ecirc;n phong tr&ecirc;n khắp c&aacute;c mặt trận</h2>\r\n\r\n<p>Ng&agrave;y 5.8, chuyến chuy&ecirc;n cơ chở 500.000 lọ Remdesivir, loại thuốc điều trị Covid-19 được Cơ quan Quản l&yacute; thực phẩm v&agrave; dược phẩm Mỹ (FDA) Mỹ cấp ph&eacute;p, đ&atilde; được nh&agrave; t&agrave;i trợ, Tập đo&agrave;n Vingroup thu&ecirc; chở về đến Việt Nam. Với khả năng r&uacute;t ngắn thời gian chữa trị v&agrave; đẩy nhanh phục hồi ở bệnh nh&acirc;n diễn tiến nặng, Remdesivir đ&atilde; được 50 quốc gia như Mỹ, EU, &Uacute;c, Nhật Bản, Singapore, Ấn Độ... đưa v&agrave;o ph&aacute;c đồ điều trị, v&agrave; l&agrave; một trong những loại thuốc đặc trị kh&oacute; tiếp cận h&agrave;ng đầu thế giới. Thế nhưng trước đ&oacute;, Vingroup đ&atilde; đ&agrave;m ph&aacute;n mua 500.000 lọ Remdesivir. Họ đ&agrave;m ph&aacute;n l&uacute;c n&agrave;o, kết nối ra sao... kh&ocirc;ng ai biết. Chỉ đến khi chiếc chuy&ecirc;n cơ chở số thuốc n&agrave;y về tới Việt Nam, dư luận mới hay. Thuốc qu&yacute;, r&otilde; rồi. Nhưng kết quả lớn hơn lại nằm ở đằng sau. Thời điểm đ&oacute;, dịch bệnh đang trong giai đoạn hết sức căng thẳng, tỷ lệ tử vong cao, thế n&ecirc;n mua được thuốc điều trị Covid-19 kh&ocirc;ng chỉ trấn an c&aacute;c bệnh nh&acirc;n đang nhiễm bệnh m&agrave; c&ograve;n tạo sự an t&acirc;m, tin tưởng cho tất cả mọi người.</p>\r\n\r\n<p>Nhưng đ&oacute; kh&ocirc;ng phải l&agrave; lần đầu ti&ecirc;n tập đo&agrave;n tư nh&acirc;n lớn nhất VN ti&ecirc;n phong đồng h&agrave;nh c&ugrave;ng đất nước trong c&ocirc;ng cuộc chống dịch. Suốt gần 2 năm kể từ khi dịch bệnh tr&agrave;n đến, Vingroup lu&ocirc;n đi đầu, đ&oacute;ng g&oacute;p nhiều nhất sức người, sức của ở mọi mặt trận. Một th&aacute;ng trước khi&nbsp;<a href=\"https://thanhnien.vn/post-1107050.html\">Quỹ vắc xin ph&ograve;ng, chống Covid-19</a>&nbsp;của Ch&iacute;nh phủ được th&agrave;nh lập, Vingroup c&ocirc;ng bố tặng 4 triệu liều vắc xin, trị gi&aacute; khoảng 1.800 tỉ đồng, cho chương tr&igrave;nh ph&ograve;ng chống dịch của Ch&iacute;nh phủ. Kh&ocirc;ng cần biết Việt Nam sẽ đ&agrave;m ph&aacute;n mua được vắc xin với gi&aacute; bao nhi&ecirc;u, kh&ocirc;ng m&agrave;ng tới rất nhiều lĩnh vực m&igrave;nh đang hoạt động đang phải thu hẹp quy m&ocirc; v&igrave; kh&oacute; khăn, Vingroup nhận trọng tr&aacute;ch lớn lao nhất về m&igrave;nh. H&agrave;nh động của c&aacute;nh chim đầu đ&agrave;n đ&atilde; dấy l&ecirc;n một l&agrave;n s&oacute;ng ủng hộ rất lớn trong x&atilde; hội. Từ cảm k&iacute;ch, tự h&agrave;o, rất nhiều DN, hộ kinh doanh nhỏ lẻ cho tới người d&acirc;n d&ugrave; đang gặp kh&oacute; khăn cũng đ&atilde; sẵn s&agrave;ng, tin tưởng ủng hộ, g&oacute;p sức cho quỹ vắc xin của Ch&iacute;nh phủ.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Ở đâu khó, có doanh nghiệp - ảnh 3\" src=\"https://image.thanhnien.vn/w2048/Uploaded/2021/wsxrxqeiod/2021_10_12/doanh-nghiep2-1140.jpeg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nh&agrave; m&aacute;y sản xuất vắc xin của VinBioCare sẽ đặt tại tổ hợp Nh&agrave; m&aacute;y sản xuất thiết bị điện tử VinSmart tại KCN H&ograve;a Lạc (Thạch Thất, H&agrave; Nội) với tổng vốn đầu tư hơn 200 triệu USD, c&ocirc;ng suất 200 triệu liều mỗi năm</p>\r\n\r\n			<p>D.H</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Kh&ocirc;ng dừng lại ở việc đồng h&agrave;nh nhanh ch&oacute;ng mua vắc xin cho người d&acirc;n, với mong muốn người Việt được ti&ecirc;m vắc xin Việt với gi&aacute; th&agrave;nh tốt nhất, đầu th&aacute;ng 8 vừa rồi, cũng ch&iacute;nh Vingroup g&acirc;y bất ngờ khi tuyến bố đ&atilde; k&yacute; kết với C&ocirc;ng ty cổ phần c&ocirc;ng nghệ sinh học Arcturus Therapeutics (Mỹ) nhận chuyển giao độc quyền c&ocirc;ng nghệ sản xuất vắc xin ph&ograve;ng Covid-19. Arcturus Therapeutics l&agrave; đơn vị nghi&ecirc;n cứu ph&aacute;t triển vắc xin ph&ograve;ng Covid-19 theo c&ocirc;ng nghệ mRNA - một trong những c&ocirc;ng nghệ ti&ecirc;n tiến nhất tr&ecirc;n thế giới hiện nay. Hai năm li&ecirc;n tiếp g&aacute;nh chịu những thiệt hại nghi&ecirc;m trọng do ảnh hưởng của Covid-19, việc Vingroup sẵn s&agrave;ng chi 200 triệu USD đầu tư nh&agrave; m&aacute;y sản xuất vắc xin Covid-19 để &ldquo;tạo bước tiến quan trọng đưa Việt Nam trở th&agrave;nh nước tự chủ về vắc xin ph&ograve;ng Covid-19, k&eacute;o gi&aacute; vắc xin rẻ hơn so với sản phẩm c&ugrave;ng ph&acirc;n kh&uacute;c đang được ch&agrave;o b&aacute;n tr&ecirc;n thị trường&rdquo;, theo lời chia sẻ của b&agrave; L&ecirc; Thị Thu Thủy, Ph&oacute; chủ tịch tập đo&agrave;n, nhận được sự tri &acirc;n của nhiều người.</p>\r\n\r\n<p>Đất nước cần m&aacute;y thở, Vingroup sản xuất m&aacute;y thở; cần vắc xin, Vingroup đ&oacute;ng g&oacute;p mua vắc xin; bệnh nh&acirc;n cần thuốc điều trị, Vingroup &acirc;m thầm đ&agrave;m ph&aacute;n mua thuốc điều trị; cần nh&acirc;n lực, họ g&oacute;p nh&acirc;n lực... Kh&ocirc;ng ồn &agrave;o c&ocirc;ng bố, họ cứ &acirc;m thầm c&oacute; mặt ở khắp mọi nơi, mọi chỗ, đồng h&agrave;nh c&ugrave;ng Ch&iacute;nh phủ, người d&acirc;n trong c&ocirc;ng cuộc chống lại đại dịch thế kỷ của nh&acirc;n loại.</p>\r\n\r\n<h2>Đồng h&agrave;nh c&ugrave;ng đất nước chống dịch</h2>\r\n\r\n<p>Chắc hẳn mỗi người trong ch&uacute;ng ta kh&ocirc;ng ai c&oacute; thể qu&ecirc;n, ng&agrave;y Quỹ vắc xin ph&ograve;ng, chống Covid-19 ch&iacute;nh thức ra mắt tại H&agrave; Nội, Thủ tướng Ch&iacute;nh phủ Phạm Minh Ch&iacute;nh trong b&agrave;i ph&aacute;t biểu của m&igrave;nh đ&atilde; kh&ocirc;ng &iacute;t lần phải dừng v&igrave; x&uacute;c động. Ng&acirc;n s&aacute;ch nh&agrave; nước c&oacute; hạn, nhu cầu c&oacute; vắc xin ti&ecirc;m ph&ograve;ng cho người d&acirc;n v&ocirc; c&ugrave;ng cấp b&aacute;ch, người đứng đầu Ch&iacute;nh phủ l&ecirc;n tiếng k&ecirc;u gọi sức người sức của. Ngay lập tức h&agrave;ng ng&agrave;n DN, h&agrave;ng trăm doanh nh&acirc;n đ&atilde; tự bỏ tiền t&uacute;i với chung niềm hy vọng người Việt được tiếp cận vắc xin nhanh nhất, sớm nhất v&agrave; rộng nhất.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Ở đâu khó, có doanh nghiệp - ảnh 4\" src=\"https://image.thanhnien.vn/w2048/Uploaded/2021/wsxrxqeiod/2021_10_12/doanh-nghiep3-7796.jpeg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nutifood tặng 80.000 sản phẩm dinh dưỡng y học V&auml;rna từ Thụy Điển tiếp sức c&ugrave;ng y b&aacute;c sĩ v&agrave; bệnh nh&acirc;n Covid-19</p>\r\n\r\n			<p>B.N</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Vừa chi gần 120 tỉ đồng hỗ trợ Bắc Giang, Bắc Ninh chống dịch, Sun Group tiếp tục chuyển thẳng 320 tỉ đồng tới Kho bạc Nh&agrave; nước cho quỹ vắc xin của Ch&iacute;nh phủ. Trong 210 tỉ đồng m&agrave; Tập đo&agrave;n Tuần Ch&acirc;u ủng hộ, c&oacute; 100 tỉ đồng l&agrave; tiền t&uacute;i của &ocirc;ng Đ&agrave;o Hồng Tuyển, &ocirc;ng chủ tập đo&agrave;n. Mạng viễn th&ocirc;ng qu&acirc;n đội Viettel ủng hộ 450 tỉ đồng, VNPT 400 tỉ đồng, MobiFone 200 tỉ đồng, Tập đo&agrave;n Novaland đ&oacute;ng g&oacute;p 100 tỉ đồng, H&ograve;a Ph&aacute;t ủng hộ h&agrave;ng trăm tỉ đồng...</p>\r\n\r\n<p>Kh&ocirc;ng chỉ với DN lớn, nhiều DN từ nhỏ đến rất nhỏ, hộ kinh doanh gia đ&igrave;nh, đ&atilde; chủ động cung cấp h&agrave;ng ng&agrave;n suất ăn miễn ph&iacute; cho c&aacute;c bệnh nh&acirc;n trong khu c&aacute;ch ly. Ng&agrave;y TP.HCM ch&iacute;nh thức siết chặt gi&atilde;n c&aacute;ch x&atilde; hội theo Chỉ thị 16, thực hiện &ldquo;ai ở đ&acirc;u ở y&ecirc;n đ&oacute;&rdquo; cũng l&agrave; ng&agrave;y &ocirc;ng Nguyễn Ngọc Luận, nh&agrave; s&aacute;ng lập ki&ecirc;m CEO C&ocirc;ng ty TNHH Li&ecirc;n kết Thương mại To&agrave;n Cầu (chủ thương hiệu c&agrave; ph&ecirc; tr&aacute;i c&acirc;y Meet More) phải đau đớn đưa ra quyết định tạm đ&oacute;ng cửa c&ocirc;ng ty v&igrave; kh&ocirc;ng kịp đ&aacute;p ứng c&aacute;c điều kiện &ldquo;3 tại chỗ&rdquo;. Doanh thu kh&ocirc;ng c&oacute;, g&aacute;nh nặng chi ph&iacute; đ&egrave; tr&ecirc;n vai nhưng hằng ng&agrave;y vị CEO n&agrave;y vẫn đều đặn cập nhật th&ocirc;ng tin đưa c&aacute;c chuyến rau xanh, thực phẩm tới tận tay nhiều b&agrave; con kh&oacute; khăn trong c&aacute;c hẻm, ng&aacute;ch tại TP.HCM. Hỏi thăm về quỹ thiện nguyện, &ocirc;ng Luận cười hiền: &ldquo;L&agrave;m g&igrave; c&oacute; quỹ n&agrave;o, c&ocirc;ng ty giờ gồng lỗ đ&atilde; đủ mệt, kh&ocirc;ng c&ograve;n nhiều t&iacute;ch lũy. N&agrave;y l&agrave; vợ chồng t&ocirc;i tự bỏ tiền t&uacute;i ra gi&uacute;p b&agrave; con, l&agrave;m đến khi n&agrave;o kh&ocirc;ng đủ sức nữa th&igrave; th&ocirc;i; chứ đi mới thấy c&ograve;n nhiều người kh&oacute; khăn, cần m&igrave;nh gi&uacute;p c&aacute;i ăn hằng ng&agrave;y&rdquo;.</p>\r\n\r\n<p>Doanh nh&acirc;n bất động sản lặn lội đi mua rau củ về cho b&agrave; con TP.HCM; những nh&agrave; h&agrave;ng, qu&aacute;n c&agrave; ph&ecirc; sang trọng trở th&agrave;nh bếp d&atilde; chiến nấu cơm cho lực lượng tuyến đầu chống dịch; c&aacute;c kh&aacute;ch sạn 4 - 5 sao trở th&agrave;nh nơi nghỉ ngơi cho y b&aacute;c sĩ; những chuyến bay đưa lực lượng hỗ trợ từ nhiều tỉnh, th&agrave;nh tr&ecirc;n cả nước v&agrave;o TP.HCM chi viện... Kh&ocirc;ng thể kể hết những tấm l&ograve;ng, những sự sẻ chia lớn nhỏ của người d&acirc;n, DN.</p>\r\n\r\n<p>Hai năm Việt Nam ki&ecirc;n cường chống dịch cũng l&agrave; 2 năm h&agrave;ng trăm ng&agrave;n DN lớn nhỏ tr&ecirc;n khắp cả nước lu&ocirc;n lu&ocirc;n đồng h&agrave;nh, s&aacute;t c&aacute;nh, hỗ trợ Ch&iacute;nh phủ tr&ecirc;n mọi mặt trận. Khi đất nước cần, họ sẵn s&agrave;ng đ&oacute;n nhận tr&aacute;ch nhiệm!</p>', 'Hai năm Việt Nam kiên cường chống dịch cũng là 2 năm hàng trăm ngàn DN lớn nhỏ trên khắp cả nước luôn luôn đồng hành, sát cánh, hỗ trợ Chính phủ trên mọi mặt trận. Khi đất nước cần, họ sẵn sàng đón nhận trách nhiệm!', 'index, follow', NULL, NULL, NULL, 'uploads/news/da64172439b607258c0b1f731909fc8d.jpg', 'PUBLISHED', '2021-10-12', 1, '2021-10-12 06:59:21', '2021-10-12 09:00:13', NULL),
(11, 3, 1, 'Từ 15 triệu đã có 5 laptop chạy Core i5 11th, RAM 8GB mạnh mẽ, dùng văn phòng hay chơi game nhẹ nhàng đều mượt êm', 'tu-15-trieu-da-co-5-laptop-chay-core-i5-11th-ram-8gb-manh-me-dung-van-phong-hay-choi-game-nhe-nhang-deu-muot-em', '<p>Acer trước giờ nổi tiếng v&igrave; laptop cấu h&igrave;nh tốt gi&aacute; rẻ, v&agrave; mẫu Aspire A514 n&agrave;y l&agrave; chứng minh. Phi&ecirc;n bản Core i5 1135G7, RAM 8GB, SSD 256GB, m&agrave;n h&igrave;nh fullHD 14 inch đang b&aacute;n với gi&aacute; 15.39 triệu th&ocirc;i, học sinh, sinh vi&ecirc;n hay nh&acirc;n vi&ecirc;n văn ph&ograve;ng mua về d&ugrave;ng đều &ldquo;đẹp k&egrave;o&rdquo;.</p>\r\n\r\n<p>Cũng t&iacute;ch hợp Core i5 thế hệ 11, RAM 8GB v&agrave; ổ cứng SSD 256GB như Aspire 5 A514 nhưng d&ograve;ng m&aacute;y của HP sở hữu m&agrave;n h&igrave;nh fullHD 15.6 inch rộng r&atilde;i, ph&ugrave; hợp với c&aacute;c ch&agrave;ng trai hơn v&igrave; mang v&aacute;c hơi cồng kềnh nhưng xem phim hay chơi game l&agrave; &ldquo;chuẩn b&agrave;i&rdquo;.</p>\r\n\r\n<p><strong>Asus VivoBook X415EA - 17.290.000đ</strong></p>\r\n\r\n<p>Nếu ưu ti&ecirc;n m&aacute;y mỏng nhẹ, thời trang để mang theo th&igrave; c&aacute;c đời m&aacute;y mới từ Asus lu&ocirc;n l&agrave; lựa chọn h&agrave;ng đầu. VivoBook X415EA được trang bị chip Core i5 1135G7, RAM 8GB, SSD 256GB v&agrave; m&agrave;n h&igrave;nh fullHD 14 inch v&agrave; nặng chỉ 1.55kg.</p>', 'Acer trước giờ nổi tiếng vì laptop cấu hình tốt giá rẻ, và mẫu Aspire A514 này là chứng minh. Phiên bản Core i5 1135G7, RAM 8GB, SSD 256GB, màn hình fullHD 14 inch đang bán với giá 15.39 triệu thôi, học sinh, sinh viên hay nhân viên văn phòng mua về dùng đều “đẹp kèo”.', 'index, follow', NULL, NULL, NULL, 'uploads/news/94a20a47d8f93d687ca2c7cc9af1fea0.jpg', 'PUBLISHED', '2021-10-12', 0, '2021-10-12 10:45:35', '2021-10-12 10:45:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `article_comment`
--

DROP TABLE IF EXISTS `article_comment`;
CREATE TABLE IF NOT EXISTS `article_comment` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_tag`
--

DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE IF NOT EXISTS `article_tag` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 1, NULL, NULL, NULL),
(2, 4, 2, NULL, NULL, NULL),
(5, 6, 3, NULL, NULL, NULL),
(6, 6, 5, NULL, NULL, NULL),
(7, 7, 6, NULL, NULL, NULL),
(8, 8, 5, NULL, NULL, NULL),
(9, 8, 3, NULL, NULL, NULL),
(10, 8, 4, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

DROP TABLE IF EXISTS `bookmark`;
CREATE TABLE IF NOT EXISTS `bookmark` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `lft`, `rgt`, `depth`, `name`, `slug`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, NULL, NULL, NULL, 'Báo mới', 'bao-moi', 'uploads/categorys/business-min.jpg', '2021-09-07 01:41:26', '2021-10-12 02:22:02', NULL),
(2, NULL, NULL, NULL, NULL, 'Truyền Cảm Hứng', 'truyen-cam-hung', NULL, '2021-09-07 01:59:44', '2021-09-07 01:59:44', NULL),
(3, NULL, NULL, NULL, NULL, 'Thanh niên', 'thanh-nien', NULL, '2021-10-03 14:23:10', '2021-10-03 14:23:10', NULL),
(8, NULL, NULL, NULL, NULL, 'CÔNG NGHỆ', 'cong-nghe', NULL, '2021-10-12 06:02:30', '2021-10-12 06:02:30', NULL),
(5, NULL, NULL, NULL, NULL, 'Dân Trí', 'dan-tri', NULL, '2021-10-06 01:57:23', '2021-10-06 01:57:23', NULL),
(6, NULL, NULL, NULL, NULL, 'Công An', 'cong-an', NULL, '2021-10-06 02:01:41', '2021-10-06 02:01:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lb_blocks`
--

DROP TABLE IF EXISTS `lb_blocks`;
CREATE TABLE IF NOT EXISTS `lb_blocks` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `raw_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `raw_content` text COLLATE utf8mb4_unicode_ci,
  `rendered_content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'wp_block',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lb_contents`
--

DROP TABLE IF EXISTS `lb_contents`;
CREATE TABLE IF NOT EXISTS `lb_contents` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `raw_content` text COLLATE utf8mb4_unicode_ci,
  `rendered_content` text COLLATE utf8mb4_unicode_ci,
  `contentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contentable_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'page',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lb_contents_contentable_type_contentable_id_index` (`contentable_type`,`contentable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_resets_table', 1),
(21, '2015_08_04_130507_create_article_tag_table', 1),
(22, '2015_08_04_130520_create_articles_table', 1),
(23, '2015_08_04_130551_create_categories_table', 1),
(24, '2015_08_04_131614_create_settings_table', 1),
(25, '2015_08_04_131626_create_tags_table', 1),
(26, '2016_05_05_115641_create_menu_items_table', 1),
(27, '2016_05_25_121918_create_pages_table', 1),
(28, '2016_07_24_060017_add_slug_to_categories_table', 1),
(29, '2016_07_24_060101_add_slug_to_tags_table', 1),
(30, '2017_04_10_195926_change_extras_to_longtext', 1),
(31, '2019_02_08_105647_create_blocks_contents_tables', 1),
(32, '2019_08_19_000000_create_failed_jobs_table', 1),
(33, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(34, '2021_08_14_144958_create_article_comment_table_custom', 1),
(35, '2021_08_14_145322_create_comments_table_custom', 1),
(36, '2021_10_08_141523_create_bookmark_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `extras` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `field` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ma tuy', 'ma-tuy', '2021-10-06 18:21:48', '2021-10-06 18:21:48', NULL),
(2, 'tệ nạn', 'te-nan', '2021-10-06 18:21:58', '2021-10-06 18:21:58', NULL),
(3, 'Đại dịch', 'dai-dich', '2021-10-07 02:47:54', '2021-10-07 02:47:54', NULL),
(4, 'Gọi video', 'goi-video', '2021-10-07 02:48:07', '2021-10-07 02:48:07', NULL),
(5, 'Thất nghiệp', 'that-nghiep', '2021-10-12 01:09:20', '2021-10-12 01:09:20', NULL),
(6, 'Thời tiết', 'thoi-tiet', '2021-10-12 01:11:03', '2021-10-12 01:11:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `image`, `created_at`, `updated_at`) VALUES
(1, 'ThanhTung', 'admin@example.com', NULL, '$2y$10$omANnkOZQ/6NeS.rZy8JKOEH5h43cWUqIESbuZ.icgEn8nZJM85fu', NULL, 'uploads/user/IMG_1622276808364_1622298869754.jpg', NULL, '2021-10-12 01:16:25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
