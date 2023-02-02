-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 02, 2023 lúc 03:48 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `showroom`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `fullname`, `username`, `password`, `status`, `created_at`) VALUES
(1, 'admin', 'admin', '123456', 1, '2022-12-29 07:44:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_car_article`
--

CREATE TABLE `tbl_car_article` (
  `id` bigint(20) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `vehicles_id` bigint(20) NOT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `showroom_id` bigint(20) NOT NULL,
  `created_ad` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_car_article`
--

INSERT INTO `tbl_car_article` (`id`, `brand_id`, `vehicles_id`, `detail`, `price`, `image`, `showroom_id`, `created_ad`) VALUES
(16, 12, 205, 'Giá xe ô tô mới nhất tháng 1/2022 tại thị trường Việt Nam gồm VinFast Fadil, LUX A2.0, LUX SA2.0, VF e34, President... dao động từ 425 triệu đến 1,835 tỷ đồng.', 800000000, './image/52c1b60d-20210903-063634.jpg', 4, '2023-02-02 14:08:00'),
(19, 2, 16, 'Giá xe ô tô mới nhất tháng 1/2022 tại thị trường Việt Nam gồm VinFast Fadil, LUX A2.0, LUX SA2.0, VF e34, President... dao động từ 425 triệu đến 1,835 tỷ đồng.', 1000000000, './image/chi-tiet-vinfast-vf8-2022-tai-viet-nam-gia-cao-nhat-hon-12-ty-dong-hinh-3.jpg', 8, '2023-02-02 14:09:10'),
(20, 6, 88, 'Giá xe ô tô mới nhất tháng 1/2022 tại thị trường Việt Nam gồm VinFast Fadil, LUX A2.0, LUX SA2.0, VF e34, President... dao động từ 425 triệu đến 1,835 tỷ đồng.', 800000000, './image/f6fed8a6-2a14-434a-b790-0c4687372b98.jpg', 7, '2023-02-02 14:09:34'),
(21, 1, 14, 'Giá xe ô tô mới nhất tháng 1/2022 tại thị trường Việt Nam gồm VinFast Fadil, LUX A2.0, LUX SA2.0, VF e34, President... dao động từ 425 triệu đến 1,835 tỷ đồng.', 9500000000, './image/xe-vinfast-1.jpg', 1, '2023-02-02 14:09:59'),
(22, 3, 22, 'Giá xe ô tô mới nhất tháng 1/2022 tại thị trường Việt Nam gồm VinFast Fadil, LUX A2.0, LUX SA2.0, VF e34, President... dao động từ 425 triệu đến 1,835 tỷ đồng.', 1200000000, './image/52c1b60d-20210903-063634.jpg', 18, '2023-02-02 14:10:28'),
(23, 18, 296, 'Giá xe ô tô mới nhất tháng 1/2022 tại thị trường Việt Nam gồm VinFast Fadil, LUX A2.0, LUX SA2.0, VF e34, President... dao động từ 425 triệu đến 1,835 tỷ đồng.', 1200000000, './image/chi-tiet-vinfast-vf8-2022-tai-viet-nam-gia-cao-nhat-hon-12-ty-dong.jpg', 5, '2023-02-02 14:10:57'),
(24, 1, 11, 'Giá xe ô tô mới nhất tháng 1/2022 tại thị trường Việt Nam gồm VinFast Fadil, LUX A2.0, LUX SA2.0, VF e34, President... dao động từ 425 triệu đến 1,835 tỷ đồng.', 1500000000, './image/chi-tiet-vinfast-vf8-2022-tai-viet-nam-gia-cao-nhat-hon-12-ty-dong-hinh-3.jpg', 20, '2023-02-02 14:11:37'),
(25, 8, 97, 'Giá xe ô tô mới nhất tháng 1/2022 tại thị trường Việt Nam gồm VinFast Fadil, LUX A2.0, LUX SA2.0, VF e34, President... dao động từ 425 triệu đến 1,835 tỷ đồng.', 10000000000, './image/chi-tiet-vinfast-vf8-2022-tai-viet-nam-gia-cao-nhat-hon-12-ty-dong-hinh-6.jpg', 15, '2023-02-02 14:12:14'),
(26, 3, 21, 'Giá xe ô tô mới nhất tháng 1/2022 tại thị trường Việt Nam gồm VinFast Fadil, LUX A2.0, LUX SA2.0, VF e34, President... dao động từ 425 triệu đến 1,835 tỷ đồng.', 85600000000, './image/tiguan.jpg', 4, '2023-02-02 14:12:43'),
(27, 5, 46, 'Giá xe ô tô mới nhất tháng 1/2022 tại thị trường Việt Nam gồm VinFast Fadil, LUX A2.0, LUX SA2.0, VF e34, President... dao động từ 425 triệu đến 1,835 tỷ đồng.', 7500000000, './image/tai-xuong.png', 1, '2023-02-02 14:13:18'),
(28, 27, 441, 'Giá xe ô tô mới nhất tháng 1/2022 tại thị trường Việt Nam gồm VinFast Fadil, LUX A2.0, LUX SA2.0, VF e34, President... dao động từ 425 triệu đến 1,835 tỷ đồng.', 750000000, './image/f6fed8a6-2a14-434a-b790-0c4687372b98.jpg', 19, '2023-02-02 14:13:56'),
(29, 5, 69, 'Giá xe ô tô mới nhất tháng 1/2022 tại thị trường Việt Nam gồm VinFast Fadil, LUX A2.0, LUX SA2.0, VF e34, President... dao động từ 425 triệu đến 1,835 tỷ đồng.', 1500000000, './image/chi-tiet-vinfast-vf8-2022-tai-viet-nam-gia-cao-nhat-hon-12-ty-dong.jpg', 1, '2023-02-02 14:15:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_showroom`
--

CREATE TABLE `tbl_showroom` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city_id` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_ad` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_showroom`
--

INSERT INTO `tbl_showroom` (`id`, `name`, `city_id`, `phone`, `email`, `address`, `created_ad`) VALUES
(1, 'Showroom VinFast – Chevrolet Đại Việt', '79', '98546783', 'test@gmail.com', 'Số 1489 đường Nguyễn Văn Linh, phường Tân Phong, quận 7, TP Hồ Chí Minh', '2022-12-28 18:00:57'),
(2, 'Showroom VinFast Phạm Văn Đồng', '79', '98546783', 'test@gmail.com', 'Số 464 đường Kinh Dương Vương, phường An Lạc A, quận Bình Tân, TP Hồ Chí Minh', '2022-12-28 18:00:57'),
(3, 'Showroom VIN3S Phan Rang', '48', '98546783', 'test@gmail.com', '115 Nguyễn Văn Linh, Phường Nam Dương, Quận Hải Châu, Thành phố Đà Nẵng, Việt Nam', '2022-12-28 18:00:57'),
(4, 'Showroom VIN3S Lương Văn Thăng', '48', '98546783', 'test@gmail.com', 'Lô A2-2 KDC Nút giao thông Tuyên Sơn, đường 2/9, Q.Hải Châu, TP.Đà Nẵng', '2022-12-28 18:00:57'),
(5, 'Showroom VIN3S Thái Hòa', '1', '98546783', 'test@gmail.com', 'Khu công nghiệp Thạch Thất – Quốc Oai, Thị Trấn Quốc Oai, Huyện Quốc Oai, Hà Nội, Vietnam', '2022-12-28 18:00:57'),
(6, 'Showroom VIN3S Nam Đàn', '1', '98546783', 'test@gmail.com', '162 Phố Trường Chinh, phường Khương Thượng, quận Đống Đa, TP. Hà Nội', '2022-12-28 18:00:57'),
(7, 'Showroom VIN3S Anh Sơn', '1', '98546783', 'test@gmail.com', 'Số 8 Phạm Hùng, phường Mai Dịch, quận Cầu Giấy, Hà Nội', '2022-12-28 18:00:57'),
(8, 'Showroom VIN3S Lê Lợi', '1', '98546783', 'test@gmail.com', 'Số 183 đường Yên Lãng, phường Thịnh Quang, quận Đống Đa, Hà Nội', '2022-12-28 18:00:57'),
(9, 'Showroom VIN3S Nguyễn Du', '1', '98546783', 'test@gmail.com', 'Số 948 đường Quang Trung kéo dài, Do Lộ, P.Yên Nghĩa, Q.Hà Đông, Hà Nội', '2022-12-28 18:00:57'),
(10, 'Showroom VIN3S Hoàng Liên', '1', '98546783', 'test@gmail.com', 'Số 68 đường Trịnh Văn Bô, phường Phương Canh, quận Nam Từ Liêm, Hà Nội', '2022-12-28 18:00:57'),
(11, 'Showroom VIN3S Hai Bà Trưng', '79', '98546783', 'test@gmail.com', '770 Nguyễn Văn Tạo, xã Hiệp Phước, huyện Nhà Bè, TP. Hồ Chí Minh', '2022-12-28 18:00:57'),
(12, 'Showroom VIN3S Đường 23 tháng 10', '79', '98546783', 'test@gmail.com', '382 Bạch Đằng, Phường 14, quận Bình Thạnh, TP. Hồ Chí Minh', '2022-12-28 18:00:57'),
(13, 'Showroom VIN3S Diên Khánh', '1', '98546783', 'test@gmail.com', 'Số 1 Đường Nguyễn Văn Linh, Phường Gia Thụy, Quận Long Biên, Thành phố Hà Nội', '2022-12-28 18:00:57'),
(14, 'Showroom VIN3S Ninh Hòa', '1', '98546783', 'test@gmail.com', 'Số 166 Phạm Văn Đồng, Phường Xuân Đỉnh, Quận Bắc Từ Liêm, Thành phố Hà Nội', '2022-12-28 18:00:57'),
(15, 'Showroom VIN3S Âu Cơ', '48', '98546783', 'test@gmail.com', 'Tầng 1, TTTM Vincom Plaza Đà Nẵng, Số 910A Ngô Quyền, quận Sơn Trà, Đà Nẵng', '2022-12-28 18:00:57'),
(16, 'Showroom VIN3S Trần Phú', '79', '98546783', 'test@gmail.com', 'Tầng 1, TTTM Vincom Cộng Hòa, 15-17 Cộng Hòa, Phường 4, quận Tân Bình, TP. Hồ Chí Minh', '2022-12-28 18:00:57'),
(17, 'Showroom VIN3S Phan Đình Phùng', '79', '98546783', 'test@gmail.com', 'Tầng 1, TTTM Vincom Ba Tháng Hai, 3C Đường 3 Tháng 2, Phường 11, Quận 10, TP. Hồ Chí Minh', '2022-12-28 18:00:57'),
(18, 'Showroom VIN3S Đức Thọ', '79', '98546783', 'test@gmail.com', 'Tầng L1, TTTM Vincom Quang Trung, 190 Quang Trung, Phường 10, Quận Gò Vấp, TP. Hồ Chí Minh', '2022-12-28 18:00:57'),
(19, 'Showroom VIN3S Tôn Đức Thắng', '79', '98546783', 'test@gmail.com', 'Tầng 1, TTTM Vincom Plaza Lê Văn Việt, 50 Lê Văn Việt, Phường Hiệp Phú, Quận 9, TP. Hồ Chí Minh', '2022-12-28 18:00:57'),
(20, 'Showroom VIN3S Vân Đình', '79', '98546783', 'test@gmail.com', 'Tầng L1, TTTM Vincom Mega Mall Thảo Điền, 159 Xa lộ Hà Nội, Phường Thảo Điền, Quận 2, TP. Hồ Chí Minh', '2022-12-28 18:00:57'),
(21, 'Showroom VIN3S Lai Xá Hoài Đức', '79', '98546783', 'test@gmail.com', 'Tầng L1, TTTM Vincom Đồng Khởi, 72 Lê Thánh Tôn, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '2022-12-28 18:00:57'),
(22, 'NPP ủy quyền 3S VinFast – Chevrolet Cần Thơ', '1', '98546783', 'test@gmail.com', 'Tầng 1, TTTM Vincom Ocean Park, Khu đô thị Vinhomes Ocean Park – Cổng vận hành số 1, xã Kiêu Kỵ, huyện Gia Lâm, Hà Nội', '2022-12-28 18:00:57'),
(23, 'NPP ủy quyền 3S VinFast Nam Bình 2', '1', '98546783', 'test@gmail.com', 'Tầng 1, TTTM Vincom Megamall, Khu đô thị Vinhomes Smart City, Tây Mỗ – Đại Mỗ, quận Nam Từ Liêm, Hà Nội', '2022-12-28 18:00:57'),
(24, 'NPP ủy quyền 3S VinFast Huỳnh Long Phát', '1', '98546783', 'test@gmail.com', 'Tầng 1, TTTM Vincom Plaza Long Biên, Khu đô thị Vinhomes Riverside, phường Phúc Lợi, quận Long Biên, Hà Nội', '2022-12-28 18:00:57'),
(25, 'NPP ủy quyền 3S VinFast An Bình Dương', '1', '98546783', 'test@gmail.com', 'Tầng B1, TTTM Vincom Mega Mall Times City, 458 Minh Khai, phường Vĩnh Tuy, quận Hai Bà Trưng, Hà Nội', '2022-12-28 18:00:57'),
(26, 'NPP ủy quyền 3S VinFast – Chevrolet Nam Thái Bình Dương', '1', '98546783', 'test@gmail.com', 'Tầng B2, TTTM Vincom Mega Mall Royal City, 72A Nguyễn Trãi, phường Thượng Đình, quận Thanh Xuân, Hà Nội', '2022-12-28 18:00:57'),
(27, 'NPP ủy quyền 3S VinFast – Chevrolet Nam Hải', '1', '98546783', 'test@gmail.com', 'Tầng L1, TTTM Vincom Center, 119 Trần Duy Hưng, phường Trung Hòa, quận Cầu Giấy, Hà Nội', '2022-12-28 18:00:57'),
(28, 'showroom nghệ an', '40', '0927441096', 'test@gmail.com', 'Ngõ 22, nhà 23 Bạch Liêu, Bến Thủy', '2023-01-01 16:06:41');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_car_article`
--
ALTER TABLE `tbl_car_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `showroom_id` (`showroom_id`),
  ADD KEY `vehicles_id` (`vehicles_id`);

--
-- Chỉ mục cho bảng `tbl_showroom`
--
ALTER TABLE `tbl_showroom`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_car_article`
--
ALTER TABLE `tbl_car_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tbl_showroom`
--
ALTER TABLE `tbl_showroom`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_car_article`
--
ALTER TABLE `tbl_car_article`
  ADD CONSTRAINT `tbl_car_article_ibfk_2` FOREIGN KEY (`showroom_id`) REFERENCES `tbl_showroom` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
