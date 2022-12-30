-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 30, 2022 lúc 01:58 PM
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
-- Cấu trúc bảng cho bảng `tbl_brands`
--

CREATE TABLE `tbl_brands` (
  `id` bigint(20) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `created_ad` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brands`
--

INSERT INTO `tbl_brands` (`id`, `brand_name`, `created_ad`) VALUES
(1, 'VinFast', '2022-12-29 08:08:07'),
(2, 'Mini', '2022-12-29 08:08:07'),
(3, 'Volkswagen', '2022-12-29 08:08:07'),
(4, 'Mitsubishi', '2022-12-29 08:08:07'),
(5, 'Toyota', '2022-12-29 08:08:07'),
(6, 'Suzuki', '2022-12-29 08:08:07'),
(7, 'Ram', '2022-12-29 08:08:07'),
(8, 'BMW', '2022-12-29 08:08:07'),
(9, 'Porsche', '2022-12-29 08:08:07'),
(10, 'Land Rover', '2022-12-29 08:08:07'),
(11, 'Audi', '2022-12-29 08:08:07'),
(12, 'Jaguar', '2022-12-29 08:08:07'),
(13, 'Lexus', '2022-12-29 08:08:07'),
(14, 'Hyundai', '2022-12-29 08:08:07'),
(15, 'Isuzu', '2022-12-29 08:08:07'),
(16, 'Ford', '2022-12-29 08:08:07'),
(17, 'Hongqi', '2022-12-29 08:08:07'),
(18, 'Aston Martin', '2022-12-29 08:08:07'),
(19, 'Subaru', '2022-12-29 08:08:07'),
(20, 'Volvo', '2022-12-29 08:08:07'),
(21, 'Maserati', '2022-12-29 08:08:07'),
(22, 'MG', '2022-12-29 08:08:07'),
(23, 'Kia', '2022-12-29 08:08:07'),
(24, 'Honda', '2022-12-29 08:08:07'),
(25, 'Peugeot', '2022-12-29 08:08:07'),
(26, 'Mercedes', '2022-12-29 08:08:07'),
(27, 'Nissan', '2022-12-29 08:08:07'),
(28, 'Bentley', '2022-12-29 08:08:07'),
(29, 'Mazda', '2022-12-29 08:08:07'),
(30, 'Jeep', '2022-12-29 08:08:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_car_article`
--

CREATE TABLE `tbl_car_article` (
  `id` bigint(20) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `vehicles_id` bigint(20) NOT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `showroom_id` bigint(20) NOT NULL,
  `created_ad` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(27, 'NPP ủy quyền 3S VinFast – Chevrolet Nam Hải', '1', '98546783', 'test@gmail.com', 'Tầng L1, TTTM Vincom Center, 119 Trần Duy Hưng, phường Trung Hòa, quận Cầu Giấy, Hà Nội', '2022-12-28 18:00:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_vehicles`
--

CREATE TABLE `tbl_vehicles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'phiên bản',
  `segment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'phân khúc',
  `engine` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'động cơ',
  `brands_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_vehicles`
--

INSERT INTO `tbl_vehicles` (`id`, `name`, `version`, `segment`, `engine`, `brands_id`, `created_at`) VALUES
(1, 'Fadil 2021', 'Tiêu chuẩn', 'Xe nhỏ cỡ A', 'Xăng 1.4, 4 xi lanh thẳng hàng', 1, '2022-12-29 08:16:34'),
(2, 'Fadil 2021', 'Nâng cao', 'Xe nhỏ cỡ A', 'Xăng 1.4, 4 xi lanh thẳng hàng', 1, '2022-12-29 08:16:34'),
(3, 'Fadil 2021', 'Cao cấp', 'Xe nhỏ cỡ A', 'Xăng 1.4, 4 xi lanh thẳng hàng', 1, '2022-12-29 08:16:34'),
(4, 'Lux A2.0 2021', 'Tiêu chuẩn', 'Xe cỡ trung hạng E', 'I-4, DOHC, tăng áp, van biến thiên', 1, '2022-12-29 08:16:34'),
(5, 'Lux A2.0 2021', 'Nâng cao', 'Xe cỡ trung hạng E', 'I-4, DOHC, tăng áp, van biến thiên', 1, '2022-12-29 08:16:34'),
(6, 'Lux A2.0 2021', 'Cao cấp', 'Xe cỡ trung hạng E', 'I-4, DOHC, tăng áp, van biến thiên', 1, '2022-12-29 08:16:34'),
(7, 'Lux SA2.0 2021', 'Tiêu chuẩn', 'Xe cỡ trung hạng E', 'I-4, DOHC, tăng áp, van biến thiên, phun nhiên liệu trực tiếp', 1, '2022-12-29 08:16:34'),
(8, 'Lux SA2.0 2021', 'Nâng cao', 'Xe cỡ trung hạng E', 'I-4, DOHC, tăng áp, van biến thiên, phun nhiên liệu trực tiếp', 1, '2022-12-29 08:16:34'),
(9, 'Lux SA2.0 2021', 'Cao cấp', 'Xe cỡ trung hạng E', 'I-4, DOHC, tăng áp, van biến thiên, phun nhiên liệu trực tiếp', 1, '2022-12-29 08:16:34'),
(10, 'President 2021', 'President', 'Xe sang cỡ trung', 'Xăng, V8', 1, '2022-12-29 08:16:34'),
(11, 'VF e34 2021', 'Tiêu chuẩn', 'Xe nhỏ hạng B+/C-', 'Động cơ điện', 1, '2022-12-29 08:16:34'),
(12, 'VF 8 2022', 'VF8 Eco', 'Xe cỡ trung hạng D', 'Môtơ điện', 1, '2022-12-29 08:16:34'),
(13, 'VF 8 2022', 'VF8 Plus', 'Xe cỡ trung hạng D', 'Môtơ điện', 1, '2022-12-29 08:16:34'),
(14, 'VF5 2022', 'Plus', 'Xe nhỏ cỡ A+/B-', 'Động cơ điện', 1, '2022-12-29 08:16:34'),
(15, '3 Door 2021', 'Cooper S 3 cửa', 'Xe sang cỡ nhỏ', 'I4, TwinPower Turbo', 2, '2022-12-29 08:16:34'),
(16, '5 Door 2021', 'Cooper S 5 cửa', 'Xe sang cỡ nhỏ', 'Xăng, I4, TwinPower Turbo,', 2, '2022-12-29 08:16:34'),
(17, 'Countryman 2021', 'Cooper S Countryman', 'Xe sang cỡ trung', 'I3, TwinPower Turbo', 2, '2022-12-29 08:16:34'),
(18, 'JCW 2021', 'JCW Clubman', 'Xe sang cỡ nhỏ', '2.0 lít, 4 xi lanh/4 Van', 2, '2022-12-29 08:16:34'),
(19, 'JCW 2021', 'JCW Countryman', 'Xe sang cỡ nhỏ', '2.0 lít, 4 xi lanh/4 Van', 2, '2022-12-29 08:16:34'),
(20, 'Polo 2022', 'Sport Edition', 'Xe nhỏ hạng B', 'I4 MPI', 3, '2022-12-29 08:16:34'),
(21, 'Tiguan 2021', 'Elegance', 'Xe cỡ vừa hạng C', '2.0 TSI', 3, '2022-12-29 08:16:34'),
(22, 'Tiguan 2021', 'Luxury S', 'Xe cỡ vừa hạng C', '2.0 TSI', 3, '2022-12-29 08:16:34'),
(23, 'Passat 2019', 'BlueMotion High', 'Xe cỡ trung hạng D', 'I4 TSI', 3, '2022-12-29 08:16:34'),
(24, 'Teramont 2021', 'Teramont', 'SUV phổ thông cỡ lớn', 'Turbo TSI', 3, '2022-12-29 08:16:34'),
(25, 'T-Cross 2022', 'Elegance', 'Xe nhỏ hạng B', 'TSI 1.0', 3, '2022-12-29 08:16:34'),
(26, 'T-Cross 2022', 'Luxury', 'Xe nhỏ hạng B', 'TSI 1.0', 3, '2022-12-29 08:16:34'),
(27, 'Touareg 2022', 'Elegance', 'Xe cỡ trung hạng E', 'TSI 2.0L', 3, '2022-12-29 08:16:34'),
(28, 'Touareg 2022', 'Luxury', 'Xe cỡ trung hạng E', 'TSI 2.0L', 3, '2022-12-29 08:16:34'),
(29, 'Attrage 2021', 'MT', 'Xe nhỏ hạng B', 'MIVEC 1.2 I3', 4, '2022-12-29 08:16:34'),
(30, 'Attrage 2021', 'CVT', 'Xe nhỏ hạng B', 'MIVEC 1.2 I3', 4, '2022-12-29 08:16:34'),
(31, 'Attrage 2021', 'CVT Premium', 'Xe nhỏ hạng B', 'MIVEC 1.2 I3', 4, '2022-12-29 08:16:34'),
(32, 'Outlander 2022', '2.0 CVT', 'Xe cỡ vừa hạng C', 'MIVEC 2.0 I4', 4, '2022-12-29 08:16:34'),
(33, 'Outlander 2022', '2.0 CVT Premium', 'Xe cỡ vừa hạng C', 'MIVEC 2.0 I4', 4, '2022-12-29 08:16:34'),
(34, 'Triton 2021', '4x2AT MIVEC', 'Bán tải cỡ trung', 'MIVEC 2.4 I4', 4, '2022-12-29 08:16:34'),
(35, 'Triton 2021', '4x2AT Athlete', 'Bán tải cỡ trung', 'MIVEC 2.4 I4', 4, '2022-12-29 08:16:34'),
(36, 'Triton 2021', '4x4AT Athlete', 'Bán tải cỡ trung', 'MIVEC 2.4 I4', 4, '2022-12-29 08:16:34'),
(37, 'Pajero Sport 2021', '4x2 AT Premium', 'Xe cỡ trung hạng D', 'MIVEC 2.4 I4', 4, '2022-12-29 08:16:34'),
(38, 'Pajero Sport 2021', '4x4 AT Premium', 'Xe cỡ trung hạng D', 'MIVEC 2.4 I4', 4, '2022-12-29 08:16:34'),
(39, 'Xpander 2022', 'MT', 'MPV cỡ nhỏ', 'MIVEC 1.5 i4', 4, '2022-12-29 08:16:34'),
(40, 'Xpander 2022', 'AT', 'MPV cỡ nhỏ', 'MIVEC 1.5 i4', 4, '2022-12-29 08:16:34'),
(41, 'Xpander 2022', 'AT Premium', 'MPV cỡ nhỏ', 'MIVEC 1.5 i4', 4, '2022-12-29 08:16:34'),
(42, 'Xpander 2022', 'Cross', 'MPV cỡ nhỏ', 'MIVEC 1.5 i4', 4, '2022-12-29 08:16:34'),
(43, 'Wigo 2021', 'MT', 'Xe nhỏ cỡ A', '3NR-VE', 5, '2022-12-29 08:16:34'),
(44, 'Wigo 2021', 'AT', 'Xe nhỏ cỡ A', '3NR-VE', 5, '2022-12-29 08:16:34'),
(45, 'Vios 2021', 'E MT 3AB', 'Xe nhỏ hạng B', '2NR-FE', 5, '2022-12-29 08:16:34'),
(46, 'Vios 2021', 'E MT', 'Xe nhỏ hạng B', '2NR-FE', 5, '2022-12-29 08:16:34'),
(47, 'Vios 2021', 'E CVT 3AB', 'Xe nhỏ hạng B', '2NR-FE', 5, '2022-12-29 08:16:34'),
(48, 'Vios 2021', 'E CVT', 'Xe nhỏ hạng B', '2NR-FE', 5, '2022-12-29 08:16:34'),
(49, 'Vios 2021', 'G CVT', 'Xe nhỏ hạng B', '2NR-FE', 5, '2022-12-29 08:16:34'),
(50, 'Vios 2021', 'GR-S', 'Xe nhỏ hạng B', '2NR-FE', 5, '2022-12-29 08:16:34'),
(51, 'Corolla Altis 2022', '1.8G', 'Xe cỡ vừa hạng C', '2ZR-FBE', 5, '2022-12-29 08:16:34'),
(52, 'Corolla Altis 2022', '1.8V', 'Xe cỡ vừa hạng C', '2ZR-FBE', 5, '2022-12-29 08:16:34'),
(53, 'Corolla Altis 2022', '1.8HV', 'Xe cỡ vừa hạng C', '2ZR-FXE', 5, '2022-12-29 08:16:34'),
(54, 'Camry 2022', '2.0G', 'Xe cỡ trung hạng D', '6AR-FSE, 2.0l', 5, '2022-12-29 08:16:34'),
(55, 'Camry 2022', '2.0Q', 'Xe cỡ trung hạng D', '6AR-FSE, 2.0l', 5, '2022-12-29 08:16:34'),
(56, 'Camry 2022', '2.5Q', 'Xe cỡ trung hạng D', '2AR-FE, 2.5l', 5, '2022-12-29 08:16:34'),
(57, 'Camry 2022', '2.5HV', 'Xe cỡ trung hạng D', '2AR-FE, 2.5l', 5, '2022-12-29 08:16:34'),
(58, 'Rush 2021', 'S 1.5AT', 'MPV cỡ nhỏ', '2NR-VE', 5, '2022-12-29 08:16:34'),
(59, 'Avanza Premio 2022', 'MT', 'MPV cỡ nhỏ', '2NR-VE', 5, '2022-12-29 08:16:34'),
(60, 'Avanza Premio 2022', 'AT', 'MPV cỡ nhỏ', '2NR-VE', 5, '2022-12-29 08:16:34'),
(61, 'Innova 2021', '2.0E', 'MPV cỡ trung', '1TR-FE', 5, '2022-12-29 08:16:34'),
(62, 'Innova 2021', '2.0G', 'MPV cỡ trung', '1TR-FE', 5, '2022-12-29 08:16:34'),
(63, 'Innova 2021', '2.0G Venturer', 'MPV cỡ trung', '1TR-FE', 5, '2022-12-29 08:16:34'),
(64, 'Innova 2021', '2.0V', 'MPV cỡ trung', '1TR-FE', 5, '2022-12-29 08:16:34'),
(65, 'Fortuner 2022', '2.4 4x2 MT', 'Xe cỡ trung hạng D', '2GD-FTV (2.4L)', 5, '2022-12-29 08:16:34'),
(66, 'Fortuner 2022', '2.4 4x2 AT', 'Xe cỡ trung hạng D', '2GD-FTV (2.4L)', 5, '2022-12-29 08:16:34'),
(67, 'Fortuner 2022', '2.7 4x2 AT', 'Xe cỡ trung hạng D', '2TR-FE (2.7L)', 5, '2022-12-29 08:16:34'),
(68, 'Fortuner 2022', 'Legender 2.4 4x2 AT', 'Xe cỡ trung hạng D', '2GD-FTV (2.4L)', 5, '2022-12-29 08:16:34'),
(69, 'Fortuner 2022', '2.7 4x4 AT', 'Xe cỡ trung hạng D', '2TR-FE (2.7L)', 5, '2022-12-29 08:16:34'),
(70, 'Fortuner 2022', '2.8 4x4 AT', 'Xe cỡ trung hạng D', '1GD-FTV (2.8L)', 5, '2022-12-29 08:16:34'),
(71, 'Fortuner 2022', 'Legender 2.8 4x4 AT', 'Xe cỡ trung hạng D', '1GD-FTV (2.8L)', 5, '2022-12-29 08:16:34'),
(72, 'Granvia 2021', 'Granvia', 'MPV cỡ lớn', '1GD-FTV', 5, '2022-12-29 08:16:34'),
(73, 'Land Cruiser LC300 2021', 'LC300', 'SUV phổ thông cỡ lớn', 'V35A-FTS', 5, '2022-12-29 08:16:34'),
(74, 'Land Prado 2021', 'VX', 'Xe cỡ trung hạng E', '2TR-FE', 5, '2022-12-29 08:16:34'),
(75, 'Corolla Cross 2021', '1.8G', 'Xe nhỏ hạng B+/C-', '2ZR-FE', 5, '2022-12-29 08:16:34'),
(76, 'Corolla Cross 2021', '1.8V', 'Xe nhỏ hạng B+/C-', '2ZR-FE', 5, '2022-12-29 08:16:34'),
(77, 'Corolla Cross 2021', '1.8HV', 'Xe nhỏ hạng B+/C-', '2ZR-FXE', 5, '2022-12-29 08:16:34'),
(78, 'Hilux 2021', '2.4 4x2 MT', 'Bán tải cỡ trung', '2GD-FTV (2.4L)', 5, '2022-12-29 08:16:34'),
(79, 'Hilux 2021', '2.4 4x2 AT', 'Bán tải cỡ trung', '2GD-FTV (2.4L)', 5, '2022-12-29 08:16:34'),
(80, 'Hilux 2021', '2.4 4x4 MT', 'Bán tải cỡ trung', '2GD-FTV (2.4L)', 5, '2022-12-29 08:16:34'),
(81, 'Hilux 2021', '2.8 4x4 AT Adventure', 'Bán tải cỡ trung', '1GD-FTV (2.8L)', 5, '2022-12-29 08:16:34'),
(82, 'Alphard 2021', '3.5', 'MPV hạng sang', 'V6, 3.5L, 24 van, DOHC với VVT-i kép', 5, '2022-12-29 08:16:34'),
(83, 'Yaris 2021', '1.5G CVT', 'Xe nhỏ hạng B', '2NR-FE', 5, '2022-12-29 08:16:34'),
(84, 'Raize 2021', '1.0 Turbo', 'Xe nhỏ cỡ A+/B-', '1.0 Turbo', 5, '2022-12-29 08:16:34'),
(85, 'Veloz Cross 2022', 'CVT', 'MPV cỡ nhỏ', '2NR-VE', 5, '2022-12-29 08:16:34'),
(86, 'Veloz Cross 2022', 'CVT Top', 'MPV cỡ nhỏ', '2NR-VE', 5, '2022-12-29 08:16:34'),
(87, 'Swift 2021', 'GLX', 'Xe nhỏ hạng B', 'Xăng 1,2L', 6, '2022-12-29 08:16:34'),
(88, 'Ciaz 2021', '1.4 AT', 'Xe nhỏ hạng B', 'K14B', 6, '2022-12-29 08:16:34'),
(89, 'Ertiga 2022', 'hybrid MT', 'MPV cỡ nhỏ', 'K15B', 6, '2022-12-29 08:16:34'),
(90, 'Ertiga 2022', 'hybrid AT', 'MPV cỡ nhỏ', 'K15B', 6, '2022-12-29 08:16:34'),
(91, 'Ertiga 2022', 'hybrid Sport Limited', 'MPV cỡ nhỏ', 'K15B', 6, '2022-12-29 08:16:34'),
(92, 'XL7 2022', 'GLX AT', 'MPV cỡ nhỏ', 'Xăng 1.5', 6, '2022-12-29 08:16:34'),
(93, 'XL7 2022', 'GLX AT Sport Limited', 'MPV cỡ nhỏ', 'Xăng 1.5', 6, '2022-12-29 08:16:34'),
(94, '1500 2022', 'Laramie', 'Bán tải cỡ lớn', '5.7 L V8', 7, '2022-12-29 08:16:34'),
(95, 'Series 4 2021', 'Convertible 2021', 'Xe sang cỡ nhỏ', 'B48 2.0 TwinTurbo I4', 8, '2022-12-29 08:16:34'),
(96, 'Series 3 2021', '320i Sport Line', 'Xe sang cỡ nhỏ', 'Xăng I4, 2.0 TwinPower Turbo', 8, '2022-12-29 08:16:34'),
(97, 'Series 3 2021', '320i Sport Line Plus', 'Xe sang cỡ nhỏ', 'Xăng I4, 2.0 TwinPower Turbo', 8, '2022-12-29 08:16:34'),
(98, 'Series 3 2021', '330i M Sport', 'Xe sang cỡ nhỏ', 'Xăng I4, 2.0 TwinPower Turbo', 8, '2022-12-29 08:16:34'),
(99, 'Series 5 2021', '520i Luxury Line', 'Xe sang cỡ trung', 'B48, Xăng, I4, 2.0 TwinPower Turbo.', 8, '2022-12-29 08:16:34'),
(100, 'Series 5 2021', '520i M Sport', 'Xe sang cỡ trung', 'B48, Xăng, I4, 2.0 TwinPower Turbo.', 8, '2022-12-29 08:16:34'),
(101, 'Series 5 2021', '530i M Sport', 'Xe sang cỡ trung', 'B48, Xăng, I4, 2.0 TwinPower Turbo.', 8, '2022-12-29 08:16:34'),
(102, 'Series 7 2021', '730Li M Sport', 'Xe sang cỡ lớn', 'B48, 2.0 I4-TwinPower Turbo', 8, '2022-12-29 08:16:34'),
(103, 'Series 7 2021', '730Li Pure Excellence', 'Xe sang cỡ lớn', 'B48, 2.0 I4-TwinPower Turbo', 8, '2022-12-29 08:16:34'),
(104, 'Series 7 2021', '740Li Pure Excellence', 'Xe sang cỡ lớn', 'B48, 3.0 I4-TwinPower Turbo', 8, '2022-12-29 08:16:34'),
(105, 'X1 2021', 'sDrive18i xLine LCI', 'Xe sang cỡ nhỏ', 'B38, Xăng, I3, 1.5 TwinPower Turbo', 8, '2022-12-29 08:16:34'),
(106, 'X3 2021', 'xDrive20i', 'Xe sang cỡ nhỏ', 'B48, Xăng, I4, 2.0 TwinPower Turbo', 8, '2022-12-29 08:16:34'),
(107, 'X3 2021', 'xDrive20i xLine', 'Xe sang cỡ nhỏ', 'B48, Xăng, I4, 2.0 TwinPower Turbo', 8, '2022-12-29 08:16:34'),
(108, 'X3 2021', 'xDrive30i M Sport', 'Xe sang cỡ nhỏ', 'B48, Xăng, I4, 2.0 TwinPower Turbo', 8, '2022-12-29 08:16:34'),
(109, 'X4 2022', 'xDrive20i M Sport', 'Xe sang cỡ nhỏ', 'B48, Xăng, I4, 2.0 TwinPower Turbo', 8, '2022-12-29 08:16:34'),
(110, 'X5 2021', 'xDrive40i xLine', 'Xe sang cỡ trung', 'B58, Xăng, I6, 3.0 TwinPower Turbo', 8, '2022-12-29 08:16:34'),
(111, 'X5 2021', 'xDrive40i M Sport', 'Xe sang cỡ trung', 'B58, Xăng, I6, 3.0 TwinPower Turbo', 8, '2022-12-29 08:16:34'),
(112, 'X5 2021', 'xDrive40i xLine Plus', 'Xe sang cỡ trung', 'B58, Xăng, I6, 3.0 TwinPower Turbo', 8, '2022-12-29 08:16:34'),
(113, 'X6 2021', 'xDrive40i M Sport', 'Xe sang cỡ trung', 'B58, Xăng, I6, 3.0 TwinPower Turbo', 8, '2022-12-29 08:16:34'),
(114, 'X7 2021', 'xDrive40i M Sport', 'Xe sang cỡ lớn', 'B58, Xăng, I6, 3.0 TwinPower Turbo', 8, '2022-12-29 08:16:34'),
(115, 'X7 2021', 'xDrive40i Pure Excellence', 'Xe sang cỡ lớn', 'B58, Xăng, I6, 3.0 TwinPower Turbo', 8, '2022-12-29 08:16:34'),
(116, 'Z4 Roadster 2021', 'sDrive30i M Sport', 'Siêu xe/Xe thể thao', 'B48, Xăng, I4, 2.0 TwinPower Turbo', 8, '2022-12-29 08:16:34'),
(117, '718 2021', 'Cayman', 'Siêu xe/Xe thể thao', 'Boxer H-4 Tăng áp', 9, '2022-12-29 08:16:34'),
(118, '718 2021', 'Boxster', 'Siêu xe/Xe thể thao', 'Boxer H-4 Tăng áp', 9, '2022-12-29 08:16:34'),
(119, '718 2021', 'Cayman T', 'Siêu xe/Xe thể thao', 'Boxer H-4 Tăng áp', 9, '2022-12-29 08:16:34'),
(120, '718 2021', 'Boxster T', 'Siêu xe/Xe thể thao', 'Boxer H-4 Tăng áp', 9, '2022-12-29 08:16:34'),
(121, '718 2021', 'Cayman S', 'Siêu xe/Xe thể thao', 'Boxer H-4 Tăng áp', 9, '2022-12-29 08:16:34'),
(122, '718 2021', 'Boxster S', 'Siêu xe/Xe thể thao', 'Boxer H-4 Tăng áp', 9, '2022-12-29 08:16:34'),
(123, '911 2021', 'Carerra', 'Siêu xe/Xe thể thao', 'Boxer H-6, twin-turbo', 9, '2022-12-29 08:16:34'),
(124, '911 2021', 'Carerra 4', 'Siêu xe/Xe thể thao', 'Boxer H-6, twin-turbo', 9, '2022-12-29 08:16:34'),
(125, '911 2021', 'Carerra Cabriolet', 'Siêu xe/Xe thể thao', 'Boxer H-6, twin-turbo', 9, '2022-12-29 08:16:34'),
(126, '911 2021', 'Carerra S', 'Siêu xe/Xe thể thao', 'Boxer H-6, twin-turbo', 9, '2022-12-29 08:16:34'),
(127, '911 2021', 'Carerra 4 Cabriolet', 'Siêu xe/Xe thể thao', 'Boxer H-6, twin-turbo', 9, '2022-12-29 08:16:34'),
(128, '911 2021', 'Targa 4', 'Siêu xe/Xe thể thao', 'Boxer H-6, twin-turbo', 9, '2022-12-29 08:16:34'),
(129, '911 2021', 'Carerra 4S', 'Siêu xe/Xe thể thao', 'Boxer H-6, twin-turbo', 9, '2022-12-29 08:16:34'),
(130, '911 2021', 'Carerra S Cabriolet', 'Siêu xe/Xe thể thao', 'Boxer H-6, twin-turbo', 9, '2022-12-29 08:16:34'),
(131, '911 2021', 'Carerra GTS', 'Siêu xe/Xe thể thao', 'Boxer H-6, twin-turbo', 9, '2022-12-29 08:16:34'),
(132, '911 2021', 'Carerra 4S Cabriolet', 'Siêu xe/Xe thể thao', 'Boxer H-6, twin-turbo', 9, '2022-12-29 08:16:34'),
(133, '911 2021', 'Targa 4S', 'Siêu xe/Xe thể thao', 'Boxer H-6, twin-turbo', 9, '2022-12-29 08:16:34'),
(134, '911 2021', 'Carerra 4 GTS', 'Siêu xe/Xe thể thao', 'Boxer H-6, twin-turbo', 9, '2022-12-29 08:16:34'),
(135, '911 2021', 'Carerra GTS Cabriolet', 'Siêu xe/Xe thể thao', 'Boxer H-6, twin-turbo', 9, '2022-12-29 08:16:34'),
(136, '911 2021', 'Carerra 4 GTS Cabriolet', 'Siêu xe/Xe thể thao', 'Boxer H-6, twin-turbo', 9, '2022-12-29 08:16:34'),
(137, '911 2021', 'Targa 4 GTS', 'Siêu xe/Xe thể thao', 'Boxer H-6, twin-turbo', 9, '2022-12-29 08:16:34'),
(138, '911 2021', 'GT3', 'Siêu xe/Xe thể thao', 'Xăng', 9, '2022-12-29 08:16:34'),
(139, '911 2021', 'Turbo S', 'Siêu xe/Xe thể thao', 'Boxer H-6, twin-turbo', 9, '2022-12-29 08:16:34'),
(140, '911 2021', 'Turbo', 'Siêu xe/Xe thể thao', 'Boxer H-6, twin-turbo', 9, '2022-12-29 08:16:34'),
(141, '911 2021', 'Turbo Cabriolet', 'Siêu xe/Xe thể thao', 'Boxer H-6, twin-turbo', 9, '2022-12-29 08:16:34'),
(142, '911 2021', 'Turbo S Cabriolet', 'Siêu xe/Xe thể thao', 'Boxer H-6, twin-turbo', 9, '2022-12-29 08:16:34'),
(143, 'Taycan 2021', 'Base', 'Xe sang cỡ lớn', 'Động cơ điện', 9, '2022-12-29 08:16:34'),
(144, 'Taycan 2021', '4S Cross Turismo', 'Xe sang cỡ lớn', 'Động cơ điện', 9, '2022-12-29 08:16:34'),
(145, 'Taycan 2021', '4 Cross Turismo', 'Xe sang cỡ lớn', 'Động cơ điện', 9, '2022-12-29 08:16:34'),
(146, 'Taycan 2021', '4S', 'Xe sang cỡ lớn', 'Động cơ điện', 9, '2022-12-29 08:16:34'),
(147, 'Taycan 2021', 'Turbo Cross Turismo', 'Xe sang cỡ lớn', 'Động cơ điện', 9, '2022-12-29 08:16:34'),
(148, 'Taycan 2021', 'Turbo', 'Xe sang cỡ lớn', 'Động cơ điện', 9, '2022-12-29 08:16:34'),
(149, 'Taycan 2021', 'Turbo S', 'Xe sang cỡ lớn', 'Động cơ điện', 9, '2022-12-29 08:16:34'),
(150, 'Panamera 2021', 'V6', 'Xe sang cỡ lớn', 'V6, twin-turbo', 9, '2022-12-29 08:16:34'),
(151, 'Panamera 2021', '4 Executive', 'Xe sang cỡ lớn', 'V6, twin-turbo', 9, '2022-12-29 08:16:34'),
(152, 'Panamera 2021', '4', 'Xe sang cỡ lớn', 'V6, twin-turbo', 9, '2022-12-29 08:16:34'),
(153, 'Panamera 2021', '4 Cross Turismo', 'Xe sang cỡ lớn', 'V6, twin-turbo', 9, '2022-12-29 08:16:34'),
(154, 'Panamera 2021', 'GTS', 'Xe sang cỡ lớn', 'V8, twin-turbo', 9, '2022-12-29 08:16:34'),
(155, 'Panamera 2021', 'GTS Sport Turismo', 'Xe sang cỡ lớn', 'V8, twin-turbo', 9, '2022-12-29 08:16:34'),
(156, 'Panamera 2021', 'Turbo S', 'Xe sang cỡ lớn', 'V8, twin-turbo', 9, '2022-12-29 08:16:34'),
(157, 'Macan 2022', 'Base', 'Xe sang cỡ nhỏ', 'I4 turbo', 9, '2022-12-29 08:16:34'),
(158, 'Macan 2022', 'S', 'Xe sang cỡ nhỏ', 'V6 turbo 3.0', 9, '2022-12-29 08:16:34'),
(159, 'Macan 2022', 'GTS', 'Xe sang cỡ nhỏ', 'V6 twin-turbo', 9, '2022-12-29 08:16:34'),
(160, 'Cayenne 2021', 'Cayenne', 'Xe sang cỡ trung', 'V6, turbo', 9, '2022-12-29 08:16:34'),
(161, 'Cayenne 2021', 'Coupe', 'Xe sang cỡ trung', 'V6, turbo', 9, '2022-12-29 08:16:34'),
(162, 'Cayenne 2021', 'S', 'Xe sang cỡ trung', 'V6, twin-turbo', 9, '2022-12-29 08:16:34'),
(163, 'Cayenne 2021', 'S Coupe', 'Xe sang cỡ trung', 'V6, twin-turbo', 9, '2022-12-29 08:16:34'),
(164, 'Cayenne 2021', 'GTS', 'Xe sang cỡ trung', 'V8, twin-turbo', 9, '2022-12-29 08:16:34'),
(165, 'Cayenne 2021', 'GTS Coupe', 'Xe sang cỡ trung', 'V8, twin-turbo', 9, '2022-12-29 08:16:34'),
(166, 'Cayenne 2021', 'Turbo', 'Xe sang cỡ trung', 'V8, twin-turbo', 9, '2022-12-29 08:16:34'),
(167, 'Cayenne 2021', 'Turbo GT', 'Xe sang cỡ trung', 'V8, twin-turbo', 9, '2022-12-29 08:16:34'),
(168, 'Cayenne 2021', 'Turbo Coupe', 'Xe sang cỡ trung', 'V8, twin-turbo', 9, '2022-12-29 08:16:34'),
(169, 'Range Rover Velar 2021', 'S', 'Xe sang cỡ trung', '2.0 I4', 10, '2022-12-29 08:16:34'),
(170, 'Range Rover Evoque 2021', 'S', 'Xe sang cỡ nhỏ', '2.0 I4', 10, '2022-12-29 08:16:34'),
(171, 'Range Rover 2021', 'Range Rover HSE (Standard Wheelbase)', 'Xe sang cỡ lớn', '3.0 I6', 10, '2022-12-29 08:16:34'),
(172, 'Range Rover 2021', 'Autobiography (Long Wheelbase)', 'Xe sang cỡ lớn', '3.0 I6 Turbo MHEV', 10, '2022-12-29 08:16:34'),
(173, 'Range Rover Sport 2022', 'Dynamic SE 3.0 I6 P360', 'Xe sang cỡ trung', '3.0 I6 360PS', 10, '2022-12-29 08:16:34'),
(174, 'Range Rover Sport 2022', 'Dynamic SE 3.0 I6 P400', 'Xe sang cỡ trung', '3.0 I6 400PS', 10, '2022-12-29 08:16:34'),
(175, 'Range Rover Sport 2022', 'Dynamic HSE 3.0 I6 P360', 'Xe sang cỡ trung', '3.0 I6 360PS', 10, '2022-12-29 08:16:34'),
(176, 'Range Rover Sport 2022', 'Autobiography 3.0 I6 P360', 'Xe sang cỡ trung', '3.0 I6 360PS', 10, '2022-12-29 08:16:34'),
(177, 'Range Rover Sport 2022', 'First Edition SE 3.0 I6 P400', 'Xe sang cỡ trung', '3.0 I6 400PS', 10, '2022-12-29 08:16:34'),
(178, 'Discovery 2021', 'Discovery S', 'Xe sang cỡ trung', '2.0 I4', 10, '2022-12-29 08:16:34'),
(179, 'Discovery Sport 2021', 'S', 'Xe sang cỡ nhỏ', '2.0 I4', 10, '2022-12-29 08:16:34'),
(180, 'Defender 2021', '90 S', 'Xe sang cỡ lớn', '2.0 I4', 10, '2022-12-29 08:16:34'),
(181, 'Defender 2021', '110 S', 'Xe sang cỡ lớn', '2.0 I4', 10, '2022-12-29 08:16:34'),
(182, 'A4 2021', '45 TFSI quattro', 'Xe sang cỡ nhỏ', 'TFSI 2.0 Mild-hybrid 12V', 11, '2022-12-29 08:16:34'),
(183, 'A4 2021', '40 TFSI Advanced Plus', 'Xe sang cỡ nhỏ', 'TFSI 2.0 Mild-hybrid 12V', 11, '2022-12-29 08:16:34'),
(184, 'A4 2021', '40 TFSI Advanced', 'Xe sang cỡ nhỏ', 'TFSI 2.0 Mild-hybrid 12V', 11, '2022-12-29 08:16:34'),
(185, 'A6 2021', '45 TFSI', 'Xe sang cỡ trung', 'TFSI 2.0 Mild-hybrid 12V', 11, '2022-12-29 08:16:34'),
(186, 'A8L 2022', 'Classic', 'Xe sang cỡ lớn', '55 TFSI quattro', 11, '2022-12-29 08:16:34'),
(187, 'A8L 2022', 'Plus', 'Xe sang cỡ lớn', '55 TFSI quattro', 11, '2022-12-29 08:16:34'),
(188, 'A8L 2022', 'Premium', 'Xe sang cỡ lớn', '55 TFSI quattro', 11, '2022-12-29 08:16:34'),
(189, 'e-tron GT 2022', 'quattro', 'Xe sang cỡ nhỏ', 'Điện', 11, '2022-12-29 08:16:34'),
(190, 'A7 2021', '55 TFSI quattro', 'Xe sang cỡ trung', 'TFSI 3.0 Mild-hybrid 48V', 11, '2022-12-29 08:16:34'),
(191, 'Q2 2021', '35 TFSI Sline', 'Xe sang cỡ nhỏ', 'TFSI 1.4 cylinder on demand', 11, '2022-12-29 08:16:34'),
(192, 'Q2 2021', '35 TFSI', 'Xe sang cỡ nhỏ', 'TFSI 1.4 cylinder on demand', 11, '2022-12-29 08:16:34'),
(193, 'Q3 2021', '35 TFSI Sline', 'Xe sang cỡ nhỏ', 'TFSI 1.4', 11, '2022-12-29 08:16:34'),
(194, 'Q3 2021', '35 TFSI', 'Xe sang cỡ nhỏ', 'TFSI 1.4', 11, '2022-12-29 08:16:34'),
(195, 'Q3 2021', '35 TFSI Sportback Sline', 'Xe sang cỡ nhỏ', 'TFSI 1.4', 11, '2022-12-29 08:16:34'),
(196, 'Q5 2021', '45 TFSI quattro Sline', 'Xe sang cỡ nhỏ', 'TFSI 2.0 Mild-hybrid 12V', 11, '2022-12-29 08:16:34'),
(197, 'Q5 2021', 'Sportback 45 TFSI', 'Xe sang cỡ nhỏ', '45 TFSI 2.0', 11, '2022-12-29 08:16:34'),
(198, 'Q5 2021', '45 TFSI quattro', 'Xe sang cỡ nhỏ', 'TFSI 2.0 Mild-hybrid 12V', 11, '2022-12-29 08:16:34'),
(199, 'Q7 2021', '55 TFSI quattro (2020)', 'Xe sang cỡ trung', 'TFSI 3.0 Mild Hybrid 48V', 11, '2022-12-29 08:16:34'),
(200, 'Q7 2021', '45 TFSI quattro Plus', 'Xe sang cỡ trung', 'TFSI 2.0', 11, '2022-12-29 08:16:34'),
(201, 'Q7 2021', '45 TFSI quattro', 'Xe sang cỡ trung', 'TFSI 2.0', 11, '2022-12-29 08:16:34'),
(202, 'Q8 2021', '55 TFSI quattro', 'Xe sang cỡ lớn', 'TFSI 3.0 Mild Hybrid 48V', 11, '2022-12-29 08:16:34'),
(203, 'XE 2021', 'S', 'Xe sang cỡ nhỏ', '2.0 I4 tăng áp Igenium', 12, '2022-12-29 08:16:34'),
(204, 'XF 2021', 'R-Dynamic SE', 'Xe sang cỡ trung', '2.0 I4 tăng áp Igenium', 12, '2022-12-29 08:16:34'),
(205, 'F-Pace 2021', 'S', 'Xe sang cỡ trung', '2.0 I4 tăng áp Igenium', 12, '2022-12-29 08:16:34'),
(206, 'E-Pace 2021', 'E-Pace S', 'Xe sang cỡ nhỏ', '2.0 I4 tăng áp Igenium', 12, '2022-12-29 08:16:34'),
(207, 'F-Type 2021', 'Coupe 2.0', 'Siêu xe/Xe thể thao', '2.0 4 xi-lanh tăng áp', 12, '2022-12-29 08:16:34'),
(208, 'F-Type 2021', 'Convertible 2.0', 'Siêu xe/Xe thể thao', '2.0 4 xi-lanh tăng áp', 12, '2022-12-29 08:16:34'),
(209, 'GX 2021', '460', 'Xe sang cỡ trung', 'V8', 13, '2022-12-29 08:16:34'),
(210, 'IS 2021', 'Standard', 'Xe sang cỡ nhỏ', '4-cylinders, Inline type', 13, '2022-12-29 08:16:34'),
(211, 'IS 2021', 'Luxury', 'Xe sang cỡ nhỏ', '4-cylinders, Inline type', 13, '2022-12-29 08:16:34'),
(212, 'IS 2021', 'Hybrid', 'Xe sang cỡ nhỏ', '4-cylinders, Inline type', 13, '2022-12-29 08:16:34'),
(213, 'ES 2021', '250', 'Xe sang cỡ trung', '4-cylinders, Inline type, D4S', 13, '2022-12-29 08:16:34'),
(214, 'ES 2021', '300h', 'Xe sang cỡ trung', '4-cylinders, Inline type, D4S', 13, '2022-12-29 08:16:34'),
(215, 'LS 2021', 'LS500', 'Xe sang cỡ lớn', 'V6, D4-S, Twin turbo', 13, '2022-12-29 08:16:34'),
(216, 'LS 2021', 'LS500h', 'Xe sang cỡ lớn', 'V6, D4-S', 13, '2022-12-29 08:16:34'),
(217, 'NX 2022', '350 F Sport', 'Xe sang cỡ nhỏ', 'I4 Turbo 2.4', 13, '2022-12-29 08:16:34'),
(218, 'NX 2022', '350h', 'Xe sang cỡ nhỏ', 'I4 2.5 Hybrid', 13, '2022-12-29 08:16:34'),
(219, 'RX 2021', 'RX300', 'Xe sang cỡ trung', 'I4', 13, '2022-12-29 08:16:34'),
(220, 'RX 2021', 'RX350', 'Xe sang cỡ trung', 'V6', 13, '2022-12-29 08:16:34'),
(221, 'RX 2021', 'RX350L', 'Xe sang cỡ trung', 'V6', 13, '2022-12-29 08:16:34'),
(222, 'RX 2021', 'RX450h', 'Xe sang cỡ trung', 'V6', 13, '2022-12-29 08:16:34'),
(223, 'LX 2022', '600 Urban', 'Xe sang cỡ lớn', 'Twin-Turbo V6', 13, '2022-12-29 08:16:34'),
(224, 'LX 2022', '600 F Sport', 'Xe sang cỡ lớn', 'Twin-Turbo V6', 13, '2022-12-29 08:16:34'),
(225, 'LX 2022', '600 VIP', 'Xe sang cỡ lớn', 'Twin-Turbo V6', 13, '2022-12-29 08:16:34'),
(226, 'LM 2021', '7 seat', 'MPV hạng sang', '6-cylinders, V type', 13, '2022-12-29 08:16:34'),
(227, 'LM 2021', '4 seat', 'MPV hạng sang', '6-cylinders, V type', 13, '2022-12-29 08:16:34'),
(228, 'Creta 2022', '1.5 Tiêu chuẩn', 'Xe nhỏ hạng B', 'SmartStream G1.5', 14, '2022-12-29 08:16:34'),
(229, 'Creta 2022', '1.5 Đặc biệt', 'Xe nhỏ hạng B', 'SmartStream G1.5', 14, '2022-12-29 08:16:34'),
(230, 'Creta 2022', '1.5 Cao cấp', 'Xe nhỏ hạng B', 'SmartStream G1.5', 14, '2022-12-29 08:16:34'),
(231, 'Stargazer 2022', '1.5 Tiêu chuẩn', 'MPV cỡ nhỏ', 'Smartstream G1.5', 14, '2022-12-29 08:16:34'),
(232, 'Stargazer 2022', '1.5 Đặc biệt', 'MPV cỡ nhỏ', 'Smartstream G1.5', 14, '2022-12-29 08:16:34'),
(233, 'Stargazer 2022', '1.5 Cao cấp', 'MPV cỡ nhỏ', 'Smartstream G1.5', 14, '2022-12-29 08:16:34'),
(234, 'Stargazer 2022', '1.5 Cao cấp 6 chỗ', 'MPV cỡ nhỏ', 'Smartstream G1.5', 14, '2022-12-29 08:16:34'),
(235, 'i10 2021', '1.2 MT Tiêu chuẩn', 'Xe nhỏ cỡ A', 'I4', 14, '2022-12-29 08:16:34'),
(236, 'i10 2021', 'Sedan 1.2 MT tiêu chuẩn', 'Xe nhỏ cỡ A', 'I4', 14, '2022-12-29 08:16:34'),
(237, 'i10 2021', '1.2 MT', 'Xe nhỏ cỡ A', 'I4', 14, '2022-12-29 08:16:34'),
(238, 'i10 2021', 'Sedan 1.2 MT', 'Xe nhỏ cỡ A', 'I4', 14, '2022-12-29 08:16:34'),
(239, 'i10 2021', '1.2 AT', 'Xe nhỏ cỡ A', 'I4', 14, '2022-12-29 08:16:34'),
(240, 'i10 2021', 'Sedan 1.2 AT', 'Xe nhỏ cỡ A', 'I4', 14, '2022-12-29 08:16:34'),
(241, 'Accent 2021', '1.4 MT Tiêu chuẩn', 'Xe nhỏ hạng B', 'I4', 14, '2022-12-29 08:16:34'),
(242, 'Accent 2021', '1.4 MT', 'Xe nhỏ hạng B', 'I4', 14, '2022-12-29 08:16:34'),
(243, 'Accent 2021', '1.4 AT', 'Xe nhỏ hạng B', 'I4', 14, '2022-12-29 08:16:34'),
(244, 'Accent 2021', '1.4 AT Đặc biệt', 'Xe nhỏ hạng B', 'I4', 14, '2022-12-29 08:16:34'),
(245, 'Kona 2021', '2.0 AT Tiêu chuẩn', 'Xe nhỏ hạng B', 'I4', 14, '2022-12-29 08:16:34'),
(246, 'Kona 2021', '2.0 AT Đặc Biệt', 'Xe nhỏ hạng B', 'I4', 14, '2022-12-29 08:16:34'),
(247, 'Kona 2021', '1.6 Turbo', 'Xe nhỏ hạng B', 'I4', 14, '2022-12-29 08:16:34'),
(248, 'Elantra 2022', '1.6 AT Tiêu chuẩn', 'Xe cỡ vừa hạng C', 'I4', 14, '2022-12-29 08:16:34'),
(249, 'Elantra 2022', '1.6 AT Đặc biệt', 'Xe cỡ vừa hạng C', 'I4', 14, '2022-12-29 08:16:34'),
(250, 'Elantra 2022', '2.0 AT Cao cấp', 'Xe cỡ vừa hạng C', 'I4', 14, '2022-12-29 08:16:34'),
(251, 'Elantra 2022', 'N-Line', 'Xe cỡ vừa hạng C', 'I4 Turbo', 14, '2022-12-29 08:16:34'),
(252, 'Tucson 2022', '2.0 Tiêu chuẩn', 'Xe cỡ vừa hạng C', 'I4 Smart Stream', 14, '2022-12-29 08:16:34'),
(253, 'Tucson 2022', '2.0 Xăng Đặc biệt', 'Xe cỡ vừa hạng C', 'I4 SmartStream', 14, '2022-12-29 08:16:34'),
(254, 'Tucson 2022', '1.6 T-GDi Đặc biệt', 'Xe cỡ vừa hạng C', 'I4 Turbo SmartStream', 14, '2022-12-29 08:16:34'),
(255, 'Tucson 2022', '2.0 Diesel Đặc biệt', 'Xe cỡ vừa hạng C', 'I4 SmartStream', 14, '2022-12-29 08:16:34'),
(256, 'Santa Fe 2021', '2.5 Xăng', 'Xe cỡ trung hạng D', 'I4 2.5', 14, '2022-12-29 08:16:34'),
(257, 'Santa Fe 2021', '2.2 Dầu', 'Xe cỡ trung hạng D', 'I4 2.2', 14, '2022-12-29 08:16:34'),
(258, 'Santa Fe 2021', '2.5 Xăng Đặc Biệt', 'Xe cỡ trung hạng D', 'I4 2.5', 14, '2022-12-29 08:16:34'),
(259, 'Santa Fe 2021', '2.5 Xăng Cao Cấp', 'Xe cỡ trung hạng D', 'I4 2.5', 14, '2022-12-29 08:16:34'),
(260, 'Santa Fe 2021', '2.2 Dầu Đặc Biệt', 'Xe cỡ trung hạng D', 'I4 2.2', 14, '2022-12-29 08:16:34'),
(261, 'Santa Fe 2021', '2.2 Dầu Cao Cấp', 'Xe cỡ trung hạng D', 'I4 2.2', 14, '2022-12-29 08:16:34'),
(262, 'mu-X 2022', 'B7 4x2 MT', 'Xe cỡ trung hạng D', 'RZ4E-TC 1.9L Intercooler VGS Turbo i4', 15, '2022-12-29 08:16:34'),
(263, 'mu-X 2022', 'B7 Plus 4x2 AT', 'Xe cỡ trung hạng D', 'RZ4E-TC 1.9L Intercooler VGS Turbo i4', 15, '2022-12-29 08:16:34'),
(264, 'mu-X 2022', 'Prestige 4x2 AT', 'Xe cỡ trung hạng D', 'RZ4E-TC 1.9L Intercooler VGS Turbo i4', 15, '2022-12-29 08:16:34'),
(265, 'mu-X 2022', 'Premium 4x4 AT', 'Xe cỡ trung hạng D', 'RZ4E-TC 1.9L Intercooler VGS Turbo i4', 15, '2022-12-29 08:16:34'),
(266, 'D-Max 2021', 'Prestige 1.9 4X2 MT', 'Bán tải cỡ trung', 'RZ4E Common rail, Intercooler, VGS Turbo, 1.9L, i4', 15, '2022-12-29 08:16:34'),
(267, 'D-Max 2021', 'Prestige1.9 4X2 AT', 'Bán tải cỡ trung', 'RZ4E Common rail, Intercooler, VGS Turbo, 1.9L, i4', 15, '2022-12-29 08:16:34'),
(268, 'D-Max 2021', 'Type Z 1.9 4x4 AT', 'Bán tải cỡ trung', 'RZ4E Common rail, Intercooler, VGS Turbo, 1.9L, i4', 15, '2022-12-29 08:16:34'),
(269, 'Explorer 2022', 'Exporer', 'Xe cỡ trung hạng E', 'EcoBoost I4', 16, '2022-12-29 08:16:34'),
(270, 'Territory 2022', 'Trend', 'Xe cỡ vừa hạng C', 'EcoBoost', 16, '2022-12-29 08:16:34'),
(271, 'Territory 2022', 'Titanium', 'Xe cỡ vừa hạng C', 'EcoBoost', 16, '2022-12-29 08:16:34'),
(272, 'Territory 2022', 'Titanium X', 'Xe cỡ vừa hạng C', 'EcoBoost', 16, '2022-12-29 08:16:34'),
(273, 'EcoSport 2021', '1.5 AT Trend', 'Xe nhỏ hạng B', '3 xi-lanh thẳng hàng, Duratec Ti-VCT', 16, '2022-12-29 08:16:34'),
(274, 'EcoSport 2021', '1.5 AT Titanium', 'Xe nhỏ hạng B', '3 xi-lanh thẳng hàng, Duratec Ti-VCT', 16, '2022-12-29 08:16:34'),
(275, 'EcoSport 2021', '1.0 AT Titanium', 'Xe nhỏ hạng B', '3 xi-lanh thẳng hàng, Ecoboost', 16, '2022-12-29 08:16:34'),
(276, 'Everest 2022', 'Ambient 2.0L AT 4x2', 'Xe cỡ trung hạng D', 'Single Turbo Diesel 2.0L i4 TDCi', 16, '2022-12-29 08:16:34'),
(277, 'Everest 2022', 'Sport 2.0L AT 4x2', 'Xe cỡ trung hạng D', 'Single Turbo Diesel 2.0L i4 TDCi', 16, '2022-12-29 08:16:34'),
(278, 'Everest 2022', 'Titanium 2.0L AT 4x2', 'Xe cỡ trung hạng D', 'Single Turbo Diesel 2.0L i4 TDCi', 16, '2022-12-29 08:16:34'),
(279, 'Everest 2022', 'Titanium+ 2.0L AT 4x4', 'Xe cỡ trung hạng D', 'Bi-Turbo Diesel 2.0L i4 TDCi', 16, '2022-12-29 08:16:34'),
(280, 'Ranger 2022', 'XL 2.0 4x4 MT', 'Bán tải cỡ trung', 'Turbo Diesel 2.0 i4 TDCi', 16, '2022-12-29 08:16:34'),
(281, 'Ranger 2022', 'XLS 2.0 4x2 MT', 'Bán tải cỡ trung', '2.0 i4 TDCi, trục cam kép', 16, '2022-12-29 08:16:34'),
(282, 'Ranger 2022', 'XLS 2.0 4x2 AT', 'Bán tải cỡ trung', '2.0 i4 TDCi, trục cam kép', 16, '2022-12-29 08:16:34'),
(283, 'Ranger 2022', 'XLS 2.0 4x4 AT', 'Bán tải cỡ trung', '2.0 i4 TDCi, trục cam kép', 16, '2022-12-29 08:16:34'),
(284, 'Ranger 2022', 'XLT 2.0 4x4 AT', 'Bán tải cỡ trung', '2.0 i4 TDCi, trục cam kép', 16, '2022-12-29 08:16:34'),
(285, 'Ranger 2022', 'Wildtrak 2.0 4x4 AT', 'Bán tải cỡ trung', 'i4 TDCi, Bi-Turbo', 16, '2022-12-29 08:16:34'),
(286, 'H9 2022', '2.0 Elegance', 'Xe sang cỡ lớn', '2.0 Tăng áp', 17, '2022-12-29 08:16:34'),
(287, 'H9 2022', '2.0 Luxury', 'Xe sang cỡ lớn', '2.0 Tăng áp', 17, '2022-12-29 08:16:34'),
(288, 'H9 2022', '2.0 Premium', 'Xe sang cỡ lớn', '2.0 Tăng áp', 17, '2022-12-29 08:16:34'),
(289, 'H9 2022', '3.0 Premium', 'Xe sang cỡ lớn', '3.0 V6 Supercharge', 17, '2022-12-29 08:16:34'),
(290, 'H9 2022', '3.0 Flagship', 'Xe sang cỡ lớn', '3.0 V6 Supercharge', 17, '2022-12-29 08:16:34'),
(291, 'E-HS9 2022', 'Executive (7 chỗ)', 'Xe sang cỡ lớn', 'Môtơ điện', 17, '2022-12-29 08:16:34'),
(292, 'E-HS9 2022', 'Deluxe (7 chỗ)', 'Xe sang cỡ lớn', 'Hai môtơ điện', 17, '2022-12-29 08:16:34'),
(293, 'E-HS9 2022', 'Premium (6 chỗ)', 'Xe sang cỡ lớn', 'Hai động cơ điện', 17, '2022-12-29 08:16:34'),
(294, 'E-HS9 2022', 'Flagship (4 chỗ)', 'Xe sang cỡ lớn', 'Hai môtơ điện', 17, '2022-12-29 08:16:34'),
(295, 'DBX 2021', 'V8', 'Siêu xe/Xe thể thao', '4.0 V8', 18, '2022-12-29 08:16:34'),
(296, 'V8 Vantage 2021', 'V8 Vantage', 'Siêu xe/Xe thể thao', '4.0 twin turbo V8', 18, '2022-12-29 08:16:34'),
(297, 'V8 DB11 2021', 'V8', 'Siêu xe/Xe thể thao', '4.0 twin-turbo V8', 18, '2022-12-29 08:16:34'),
(298, 'DBS 2021', 'V12', 'Siêu xe/Xe thể thao', '5.2 V12', 18, '2022-12-29 08:16:34'),
(299, 'Forester 2023', '2.0 i-L', 'Xe cỡ vừa hạng C', 'Boxer 2.0', 19, '2022-12-29 08:16:34'),
(300, 'Forester 2023', '2.0 i-L EyeSight', 'Xe cỡ vừa hạng C', 'Boxer 2.0', 19, '2022-12-29 08:16:34'),
(301, 'Forester 2023', '2.0 i-S EyeSight', 'Xe cỡ vừa hạng C', 'Boxer 2.0', 19, '2022-12-29 08:16:34'),
(302, 'Outback 2021', '2.5 i-Touring EyeSight', 'Xe cỡ trung hạng D', 'Boxer, 2.5, 4 xi-lanh đối xứng', 19, '2022-12-29 08:16:34'),
(303, 'XC40 2021', 'R-Design', 'Xe sang cỡ nhỏ', 'I4 2.0', 20, '2022-12-29 08:16:34'),
(304, 'XC60 2022', 'R-Design', 'Xe sang cỡ nhỏ', 'I4 2.0', 20, '2022-12-29 08:16:34'),
(305, 'XC60 2022', 'Inscription', 'Xe sang cỡ nhỏ', 'I4 2.0', 20, '2022-12-29 08:16:34'),
(306, 'XC60 2022', 'T8 Recharge', 'Xe sang cỡ nhỏ', 'Xăng I4 2.0', 20, '2022-12-29 08:16:34'),
(307, 'XC90 2021', 'Inscription', 'Xe sang cỡ lớn', 'I4 2.0', 20, '2022-12-29 08:16:34'),
(308, 'XC90 2021', 'Recharge', 'Xe sang cỡ lớn', 'I4 2.0 + Motor điện', 20, '2022-12-29 08:16:34'),
(309, 'V90 2021', 'Cross Country', 'Xe sang cỡ trung', 'I4 2.0', 20, '2022-12-29 08:16:34'),
(310, 'S90 2021', 'Inscription', 'Xe sang cỡ trung', 'I4 2.0', 20, '2022-12-29 08:16:34'),
(311, 'S60 2021', 'R-Design', 'Xe sang cỡ nhỏ', 'I4 2.0', 20, '2022-12-29 08:16:34'),
(312, 'V60 Cross Country 2022', 'B5 AWD', 'Xe sang cỡ nhỏ', 'I4 2.0 Mild Hybrid Turbocharge', 20, '2022-12-29 08:16:34'),
(313, 'Levante 2021', 'LE350AS21', 'Xe sang cỡ trung', '3.0L V6', 21, '2022-12-29 08:16:34'),
(314, 'Levante 2021', 'LE350AL21', 'Xe sang cỡ trung', '3.0L V6', 21, '2022-12-29 08:16:34'),
(315, 'Ghibli 2021', 'Ghibli GH330RS21', 'Xe sang cỡ trung', 'Hybrid 2.0L 48v L4', 21, '2022-12-29 08:16:34'),
(316, 'Ghibli 2021', 'GranSport GH350RS21', 'Xe sang cỡ trung', '3.0L V6', 21, '2022-12-29 08:16:34'),
(317, 'Ghibli 2021', 'Trofeo GH580RS21', 'Xe sang cỡ trung', '3.8L V8', 21, '2022-12-29 08:16:34'),
(318, 'Quattroporte 2021', 'QP350RL 21', 'Xe sang cỡ lớn', '3.0L V6', 21, '2022-12-29 08:16:34'),
(319, 'ZS 2021', 'MG ZS STD+', 'Xe nhỏ hạng B', 'DOHC 4-cylinder, NSE 1.5L', 22, '2022-12-29 08:16:34'),
(320, 'ZS 2021', 'MG ZS COM+', 'Xe nhỏ hạng B', 'DOHC 4-cylinder, NSE 1.5L', 22, '2022-12-29 08:16:34'),
(321, 'ZS 2021', 'MG ZS LUX+', 'Xe nhỏ hạng B', 'DOHC 4-cylinder, NSE 1.5L', 22, '2022-12-29 08:16:34'),
(322, 'HS 2021', '1.5T STD (2WD SPORT)', 'Xe cỡ vừa hạng C', 'SGE 1.5T, Turbo Tăng áp', 22, '2022-12-29 08:16:34'),
(323, 'HS 2021', '1.5T LUX (2WD Trophy)', 'Xe cỡ vừa hạng C', 'SGE 1.5T, Turbo Tăng áp', 22, '2022-12-29 08:16:34'),
(324, 'HS 2021', '2.0T LUX (AWD Trophy)', 'Xe cỡ vừa hạng C', 'NLE 2.0T, Turbo Tăng áp', 22, '2022-12-29 08:16:34'),
(325, 'MG5 2022', 'STD', 'Xe cỡ vừa hạng C', 'DOHC 4 xi-lanh, 16 van VTi-TECH', 22, '2022-12-29 08:16:34'),
(326, 'MG5 2022', 'Luxury', 'Xe cỡ vừa hạng C', 'DOHC 4 xi-lanh, 16 van VTi-TECH', 22, '2022-12-29 08:16:34'),
(327, 'Quoris 2017', '3.8 AT', 'Xe sang cỡ trung', 'V6, 24 van DOHC / V6, 24 valve DOHC máy 3.8', 23, '2022-12-29 08:16:34'),
(328, 'K3 2022', '1.6 Deluxe', 'Xe cỡ vừa hạng C', 'Gamma 1.6 MPI', 23, '2022-12-29 08:16:34'),
(329, 'K3 2022', '1.6 Luxury', 'Xe cỡ vừa hạng C', 'Gamma 1.6 MPI', 23, '2022-12-29 08:16:34'),
(330, 'K3 2022', '1.6 Premium', 'Xe cỡ vừa hạng C', 'Gamma 1.6 MPI', 23, '2022-12-29 08:16:34'),
(331, 'K3 2022', '2.0 Premium', 'Xe cỡ vừa hạng C', 'Nu 2.0 MPI', 23, '2022-12-29 08:16:34'),
(332, 'K3 2022', '1.6 Turbo', 'Xe cỡ vừa hạng C', '1.6 Turbo', 23, '2022-12-29 08:16:34'),
(333, 'Carnival 2022', '2.2D Luxury 8 ghế', 'MPV cỡ trung', '2.2 Smartstream', 23, '2022-12-29 08:16:34'),
(334, 'Carnival 2022', '2.2D Premium 7 chỗ', 'MPV cỡ trung', '2.2 Smartstream', 23, '2022-12-29 08:16:34'),
(335, 'Carnival 2022', '2.2D Premium 8 chỗ', 'MPV cỡ trung', '2.2 Smartstream', 23, '2022-12-29 08:16:34'),
(336, 'Carnival 2022', '2.2D Signature 7 ghế', 'MPV cỡ trung', '2.2 Smartstream', 23, '2022-12-29 08:16:34'),
(337, 'Carnival 2022', '3.5G Signature 7 ghế', 'MPV cỡ trung', '3.5 V6 Smartstream', 23, '2022-12-29 08:16:34'),
(338, 'Sonet 2021', '1.5 MT Deluxe', 'Xe nhỏ cỡ A+/B-', 'Smartstream', 23, '2022-12-29 08:16:34'),
(339, 'Sonet 2021', '1.5 Deluxe', 'Xe nhỏ cỡ A+/B-', 'Smartstream', 23, '2022-12-29 08:16:34'),
(340, 'Sonet 2021', '1.5 Luxury', 'Xe nhỏ cỡ A+/B-', 'Smartstream', 23, '2022-12-29 08:16:34'),
(341, 'Sonet 2021', '1.5 Premium', 'Xe nhỏ cỡ A+/B-', 'Smartstream', 23, '2022-12-29 08:16:34'),
(342, 'K5 2021', '2.0 Luxury', 'Xe cỡ trung hạng D', 'Nu 2.0 MPI', 23, '2022-12-29 08:16:34'),
(343, 'K5 2021', '2.0 Premium', 'Xe cỡ trung hạng D', 'Nu 2.0 MPI', 23, '2022-12-29 08:16:34'),
(344, 'K5 2021', '2.5 GT-Line', 'Xe cỡ trung hạng D', 'Theta-III 2.5 GDi', 23, '2022-12-29 08:16:34'),
(345, 'Sportage 2022', '2.0G Luxury', 'Xe cỡ vừa hạng C', 'Smartstream 2.0 G', 23, '2022-12-29 08:16:34'),
(346, 'Sportage 2022', '2.0G Premium', 'Xe cỡ vừa hạng C', 'Smartstream 2.0 G', 23, '2022-12-29 08:16:34'),
(347, 'Sportage 2022', '2.0G Signature X-Line', 'Xe cỡ vừa hạng C', 'Smartstream 2.0 G', 23, '2022-12-29 08:16:34'),
(348, 'Sportage 2022', '2.0G Signature', 'Xe cỡ vừa hạng C', 'Smartstream 2.0 G', 23, '2022-12-29 08:16:34'),
(349, 'Sportage 2022', '1.6 Turbo Signature X-Line', 'Xe cỡ vừa hạng C', 'Smartstream 1.6 T-GDi', 23, '2022-12-29 08:16:34'),
(350, 'Sportage 2022', '2.0D Signature X-Line', 'Xe cỡ vừa hạng C', 'Smartstream 2.0 D', 23, '2022-12-29 08:16:34'),
(351, 'Sportage 2022', '1.6 Turbo Signature', 'Xe cỡ vừa hạng C', 'Smartstream 1.6 T-GDi', 23, '2022-12-29 08:16:34'),
(352, 'Sportage 2022', '2.0D Signature', 'Xe cỡ vừa hạng C', 'Smartstream 2.0 D', 23, '2022-12-29 08:16:34'),
(353, 'Carens 2022', '1.5G MT Deluxe', 'MPV cỡ nhỏ', 'SmartStream 1.5G', 23, '2022-12-29 08:16:34'),
(354, 'Carens 2022', '1.5G IVT', 'MPV cỡ nhỏ', 'SmartStream 1.5G', 23, '2022-12-29 08:16:34'),
(355, 'Carens 2022', '1.5G Luxury', 'MPV cỡ nhỏ', 'SmartStream 1.5G', 23, '2022-12-29 08:16:34'),
(356, 'Carens 2022', '1.4T Premium', 'MPV cỡ nhỏ', 'SmartStream 1.4 T-GDi', 23, '2022-12-29 08:16:34'),
(357, 'Carens 2022', '1.5D Premium', 'MPV cỡ nhỏ', 'SmartStr1.5D CRDieam 1.4 T-GDi', 23, '2022-12-29 08:16:34'),
(358, 'Carens 2022', '1.4T Signature', 'MPV cỡ nhỏ', 'SmartStream 1.4 T-GDi', 23, '2022-12-29 08:16:34'),
(359, 'Carens 2022', '1.5D Signature', 'MPV cỡ nhỏ', 'SmartStr1.5D CRDieam 1.4 T-GDi', 23, '2022-12-29 08:16:34'),
(360, 'Morning 2022', 'AT', 'Xe nhỏ cỡ A', 'Xăng', 23, '2022-12-29 08:16:34'),
(361, 'Morning 2022', 'AT Premium', 'Xe nhỏ cỡ A', 'Xăng', 23, '2022-12-29 08:16:34'),
(362, 'Morning 2022', 'X Line', 'Xe nhỏ cỡ A', 'Xăng', 23, '2022-12-29 08:16:34'),
(363, 'Morning 2022', 'GT Line', 'Xe nhỏ cỡ A', 'Xăng', 23, '2022-12-29 08:16:34'),
(364, 'Soluto 2021', 'MT', 'Xe nhỏ hạng B', 'Kappa 1.4 Gasoline', 23, '2022-12-29 08:16:34'),
(365, 'Soluto 2021', 'MT Deluxe', 'Xe nhỏ hạng B', 'Kappa 1.4 Gasoline', 23, '2022-12-29 08:16:34'),
(366, 'Soluto 2021', 'AT Deluxe', 'Xe nhỏ hạng B', 'Kappa 1.4 Gasoline', 23, '2022-12-29 08:16:34'),
(367, 'Soluto 2021', 'AT Luxury', 'Xe nhỏ hạng B', 'Kappa 1.4 Gasoline', 23, '2022-12-29 08:16:34'),
(368, 'Seltos 2021', '1.4 DCT Deluxe', 'Xe nhỏ hạng B', 'Kappa 1.4 T-GDi (turbo)', 23, '2022-12-29 08:16:34'),
(369, 'Seltos 2021', '1.4 DCT Luxury', 'Xe nhỏ hạng B', 'Kappa 1.4 T-GDi (turbo)', 23, '2022-12-29 08:16:34'),
(370, 'Seltos 2021', '1.6 Premium', 'Xe nhỏ hạng B', 'Gamma 1.6 MPi', 23, '2022-12-29 08:16:34'),
(371, 'Seltos 2021', '1.4 DCT Premium', 'Xe nhỏ hạng B', 'Kappa 1.4 T-GDi (turbo)', 23, '2022-12-29 08:16:34'),
(372, 'Sorento 2023', '2.2D Luxury', 'Xe cỡ trung hạng D', 'Smartstream D2.2', 23, '2022-12-29 08:16:34'),
(373, 'Sorento 2023', '2.5G Premium', 'Xe cỡ trung hạng D', 'Smartstream G2.5', 23, '2022-12-29 08:16:34'),
(374, 'Sorento 2023', '2.5G Signature AWD (7 chỗ)', 'Xe cỡ trung hạng D', 'Smartstream G2.5', 23, '2022-12-29 08:16:34'),
(375, 'Sorento 2023', '2.5G Signature AWD (6 chỗ)', 'Xe cỡ trung hạng D', 'Smartstream G2.5', 23, '2022-12-29 08:16:34'),
(376, 'Sorento 2023', '2.2D Signature AWD (6 chỗ)', 'Xe cỡ trung hạng D', 'Smartstream D2.2', 23, '2022-12-29 08:16:34'),
(377, 'Sorento 2023', '2.2D Premium', 'Xe cỡ trung hạng D', 'Smartstream D2.2', 23, '2022-12-29 08:16:34'),
(378, 'Sorento 2023', '2.2D Signature AWD (7 chỗ)', 'Xe cỡ trung hạng D', 'Smartstream D2.2', 23, '2022-12-29 08:16:34'),
(379, 'Sorento 2023', '1.6 Hybrid Premium', 'Xe cỡ trung hạng D', 'Xăng 1.6 + Điện', 23, '2022-12-29 08:16:34'),
(380, 'Sorento 2023', '1.6 Hybrid Signature', 'Xe cỡ trung hạng D', 'Xăng 1.6 + Điện', 23, '2022-12-29 08:16:34'),
(381, 'Sorento 2023', '1.6 Plug-in Hybrid Premium', 'Xe cỡ trung hạng D', 'Xăng 1.6 + Điện', 23, '2022-12-29 08:16:34'),
(382, 'Sorento 2023', '1.6 Plug-in Hybrid Signature', 'Xe cỡ trung hạng D', 'Xăng 1.6 + Điện', 23, '2022-12-29 08:16:34'),
(383, 'Rondo 2021', 'GMT', 'MPV cỡ nhỏ', '4 xi lanh thẳng hàng, 16 van DOHC, Dual CVVT 2.0', 23, '2022-12-29 08:16:34'),
(384, 'Rondo 2021', 'GAT', 'MPV cỡ nhỏ', '4 xi lanh thẳng hàng, 16 van DOHC, Dual CVVT 2.0', 23, '2022-12-29 08:16:34'),
(385, 'Brio 2021', 'G', 'Xe nhỏ cỡ A', '1.2 i-VTEC', 24, '2022-12-29 08:16:34'),
(386, 'Brio 2021', 'RS', 'Xe nhỏ cỡ A', '1.2 i-VTEC', 24, '2022-12-29 08:16:34'),
(387, 'City 2021', 'G', 'Xe nhỏ hạng B', '1.5 i-VTEC', 24, '2022-12-29 08:16:34'),
(388, 'City 2021', 'L', 'Xe nhỏ hạng B', '1.5 i-VTEC', 24, '2022-12-29 08:16:34'),
(389, 'City 2021', 'RS', 'Xe nhỏ hạng B', '1.5 i-VTEC', 24, '2022-12-29 08:16:34'),
(390, 'Civic 2022', 'E', 'Xe cỡ vừa hạng C', '1.5 VTEC Turbo', 24, '2022-12-29 08:16:34'),
(391, 'Civic 2022', 'G', 'Xe cỡ vừa hạng C', '1.5 VTEC Turbo', 24, '2022-12-29 08:16:34'),
(392, 'Civic 2022', 'RS', 'Xe cỡ vừa hạng C', '1.5 VTEC Turbo', 24, '2022-12-29 08:16:34'),
(393, 'HR-V 2022', 'G', 'Xe nhỏ hạng B', '1.5 i-VTEC', 24, '2022-12-29 08:16:34'),
(394, 'HR-V 2022', 'L', 'Xe nhỏ hạng B', '1.5 Turbo', 24, '2022-12-29 08:16:34'),
(395, 'HR-V 2022', 'RS', 'Xe nhỏ hạng B', '1.5 Turbo', 24, '2022-12-29 08:16:34'),
(396, 'CR-V 2021', 'E', 'Xe cỡ vừa hạng C', 'VTEC 1.5 turbo I4', 24, '2022-12-29 08:16:34'),
(397, 'CR-V 2021', 'G', 'Xe cỡ vừa hạng C', 'VTEC 1.5 turbo I4', 24, '2022-12-29 08:16:34'),
(398, 'CR-V 2021', 'L', 'Xe cỡ vừa hạng C', 'VTEC 1.5 turbo I4', 24, '2022-12-29 08:16:34'),
(399, 'CR-V 2021', 'LSE', 'Xe cỡ vừa hạng C', 'VTEC 1.5 turbo I4', 24, '2022-12-29 08:16:34'),
(400, 'Accord 2022', '1.5 Turbo', 'Xe cỡ trung hạng D', '1.5 VTEC Turbo', 24, '2022-12-29 08:16:34'),
(401, '2008 2021', '2008 Active', 'Xe nhỏ hạng B+/C-', 'Turbo Puretech', 25, '2022-12-29 08:16:34'),
(402, '2008 2021', '2008 GT Line', 'Xe nhỏ hạng B+/C-', 'Turbo Puretech', 25, '2022-12-29 08:16:34'),
(403, '3008 2021', '3008 Active', 'Xe cỡ vừa hạng C', 'Turbo High Pressure (THP)', 25, '2022-12-29 08:16:34'),
(404, '3008 2021', '3008 Allure', 'Xe cỡ vừa hạng C', 'Turbo High Pressure (THP)', 25, '2022-12-29 08:16:34'),
(405, '3008 2021', '3008 GT', 'Xe cỡ vừa hạng C', 'Turbo High Pressure (THP)', 25, '2022-12-29 08:16:34'),
(406, '5008 2021', '5008 Active', 'Xe cỡ trung hạng D', 'Turbo High Pressure (THP)', 25, '2022-12-29 08:16:34'),
(407, '5008 2021', '5008 Allure', 'Xe cỡ trung hạng D', 'Turbo High Pressure (THP)', 25, '2022-12-29 08:16:34'),
(408, '5008 2021', '5008 GT', 'Xe cỡ trung hạng D', 'Turbo High Pressure (THP)', 25, '2022-12-29 08:16:34'),
(409, 'Traveller 2021', 'Traveller Luxury', 'MPV cỡ lớn', 'High Pressure Direct Injection (HDi)', 25, '2022-12-29 08:16:34'),
(410, 'Traveller 2021', 'Traveller Premium 7S', 'MPV cỡ lớn', 'High Pressure Direct Injection (HDi)', 25, '2022-12-29 08:16:34'),
(411, 'Traveller 2021', 'Traveller Premium', 'MPV cỡ lớn', 'High Pressure Direct Injection (HDi)', 25, '2022-12-29 08:16:34'),
(412, 'A-class 2021', 'A 35 AMG 4MATIC Sedan', 'Xe sang cỡ nhỏ', 'I4 2.0', 26, '2022-12-29 08:16:34'),
(413, 'C-Class 2022', 'C200 Avantgarde', 'Xe sang cỡ nhỏ', '1.5 I4 Turbo', 26, '2022-12-29 08:16:34'),
(414, 'C-Class 2022', 'C200 Avantgarde Plus', 'Xe sang cỡ nhỏ', '1.5 I4 Turbo', 26, '2022-12-29 08:16:34'),
(415, 'C-Class 2022', 'C300 AMG', 'Xe sang cỡ nhỏ', '2.0 I4 Turbo', 26, '2022-12-29 08:16:34'),
(416, 'C-Class 2022', 'C300 AMG First Edition', 'Xe sang cỡ nhỏ', '2.0 I4 Turbo', 26, '2022-12-29 08:16:34'),
(417, 'E-Class 2021', 'E 180', 'Xe sang cỡ trung', 'I4 1.5', 26, '2022-12-29 08:16:34'),
(418, 'E-Class 2021', 'E 200 Exclusive', 'Xe sang cỡ trung', 'I4 2.0', 26, '2022-12-29 08:16:34'),
(419, 'E-Class 2021', 'E 300 AMG', 'Xe sang cỡ trung', 'I4 2.0', 26, '2022-12-29 08:16:34'),
(420, 'S-Class 2022', 'S 450', 'Xe sang cỡ lớn', '3.0 V6, có EQ Boost', 26, '2022-12-29 08:16:34'),
(421, 'S-Class 2022', 'S 450 Luxury', 'Xe sang cỡ lớn', '3.0 V6, có EQ Boost', 26, '2022-12-29 08:16:34'),
(422, 'GLC 2021', 'GLC 200', 'Xe sang cỡ nhỏ', 'I4 2.0', 26, '2022-12-29 08:16:34'),
(423, 'GLC 2021', 'GLC 200 4MATIC', 'Xe sang cỡ nhỏ', 'I4 2.0', 26, '2022-12-29 08:16:34'),
(424, 'GLC 2021', 'GLC 300 4MATIC', 'Xe sang cỡ nhỏ', 'I4 2.0', 26, '2022-12-29 08:16:34'),
(425, 'GLC 2021', 'GLC 300 4MATIC Coupe', 'Xe sang cỡ nhỏ', 'I4 2.0', 26, '2022-12-29 08:16:34'),
(426, 'GLB 2021', 'GLB 200 AMG', 'Xe sang cỡ nhỏ', 'I4 1.4', 26, '2022-12-29 08:16:34'),
(427, 'GLB 2021', 'GLB 35 AMG 4MATIC', 'Xe sang cỡ nhỏ', 'I4 2.0', 26, '2022-12-29 08:16:34'),
(428, 'GLE 2021', '450 4Matic', 'Xe sang cỡ trung', 'I6 3.0', 26, '2022-12-29 08:16:34'),
(429, 'GLE 2021', 'AMG 53 4Matic+ Coupe', 'Xe sang cỡ trung', 'I6 3.0', 26, '2022-12-29 08:16:34'),
(430, 'GLS 2021', '450 4MATIC', 'Xe sang cỡ lớn', 'I6 3.0', 26, '2022-12-29 08:16:34'),
(431, 'G-Class 2021', 'G 63 AMG', 'Xe sang cỡ lớn', 'V8 4.0', 26, '2022-12-29 08:16:34'),
(432, 'GT-Coupe 2021', 'AMG GT 53 4MATIC+', 'Xe sang cỡ lớn', 'I6 3.0', 26, '2022-12-29 08:16:34'),
(433, 'GT-Coupe 2021', 'AMG GT R', 'Xe sang cỡ lớn', 'V8 4.0', 26, '2022-12-29 08:16:34'),
(434, 'V-Class 2021', 'V 250 LUXURY', 'MPV hạng sang', 'I4 2.0', 26, '2022-12-29 08:16:34'),
(435, 'V-Class 2021', 'V 250 AMG', 'MPV hạng sang', 'I4 2.0', 26, '2022-12-29 08:16:34'),
(436, 'GLA 2022', 'GLA 45 S 4MATIC+', 'Xe sang cỡ nhỏ', '2.0 I4', 26, '2022-12-29 08:16:34'),
(437, 'EQS 2022', '450+', 'Xe sang cỡ trung', 'Điện', 26, '2022-12-29 08:16:34'),
(438, 'EQS 2022', '580 4MATIC', 'Xe sang cỡ trung', 'Điện', 26, '2022-12-29 08:16:34'),
(439, 'Navara 2022', 'EL 2WD', 'Bán tải cỡ trung', 'YS23 DDTT', 27, '2022-12-29 08:16:34'),
(440, 'Navara 2022', '4WD Cao cấp', 'Bán tải cỡ trung', 'YS23 DDTT', 27, '2022-12-29 08:16:34'),
(441, 'Navara 2022', 'PRO4X', 'Bán tải cỡ trung', 'YS23 DDTT', 27, '2022-12-29 08:16:34'),
(442, 'Almera 2022', 'EL', 'Xe nhỏ hạng B', 'HRA0, 1.0 DOHC, 12 van với Turbo', 27, '2022-12-29 08:16:34'),
(443, 'Almera 2022', 'VL', 'Xe nhỏ hạng B', 'HRA0, 1.0 DOHC, 12 van với Turbo', 27, '2022-12-29 08:16:34'),
(444, 'Kicks 2022', 'E', 'Xe nhỏ hạng B', 'Hybrid', 27, '2022-12-29 08:16:34'),
(445, 'Kicks 2022', 'V', 'Xe nhỏ hạng B', 'Hybrid', 27, '2022-12-29 08:16:34'),
(446, 'Flying Spur 2021', 'V8', 'Siêu sang cỡ lớn', '4.0 Twin-turbocharged V8 TSI', 28, '2022-12-29 08:16:34'),
(447, 'Continental 2021', 'GT V8', 'Siêu sang cỡ lớn', '4.0 V8', 28, '2022-12-29 08:16:34'),
(448, 'Bentayga 2021', 'Bentayga V8', 'Siêu sang cỡ lớn', 'V8', 28, '2022-12-29 08:16:34'),
(449, 'CX-5 2021', '2.0 Deluxe', 'Xe cỡ vừa hạng C', 'Skactiv-G 2.0', 29, '2022-12-29 08:16:34'),
(450, 'CX-5 2021', '2.0 Luxury', 'Xe cỡ vừa hạng C', 'Skactiv-G 2.0', 29, '2022-12-29 08:16:34'),
(451, 'CX-5 2021', '2.5 Signature Luxury', 'Xe cỡ vừa hạng C', 'Skactiv-G 2.5', 29, '2022-12-29 08:16:34'),
(452, 'CX-5 2021', '2.0 Premium', 'Xe cỡ vừa hạng C', 'Skactiv-G 2.0', 29, '2022-12-29 08:16:34'),
(453, 'CX-5 2021', '2.5 Signature Premium 2WD', 'Xe cỡ vừa hạng C', 'Skactiv-G 2.5', 29, '2022-12-29 08:16:34'),
(454, 'CX-5 2021', '2.5 Signature Premium AWD', 'Xe cỡ vừa hạng C', 'Skactiv-G 2.5', 29, '2022-12-29 08:16:34'),
(455, 'CX-8 2022', '2.5 Luxury', 'Xe cỡ trung hạng D', 'Skactiv-G 2.5', 29, '2022-12-29 08:16:34'),
(456, 'CX-8 2022', '2.5 Premium', 'Xe cỡ trung hạng D', 'Skactiv-G 2.5', 29, '2022-12-29 08:16:34'),
(457, 'CX-8 2022', '2.5 Premium AWD', 'Xe cỡ trung hạng D', 'Skactiv-G 2.5', 29, '2022-12-29 08:16:34'),
(458, 'CX-8 2022', '2.5 Premium AWD (6S)', 'Xe cỡ trung hạng D', 'Skactiv-G 2.5', 29, '2022-12-29 08:16:34'),
(459, 'BT-50 2021', 'MT 4x2', 'Bán tải cỡ trung', 'Diesel tăng áp VGS, 4 xi lanh DOHC 16v', 29, '2022-12-29 08:16:34'),
(460, 'BT-50 2021', 'AT 4x2', 'Bán tải cỡ trung', 'Diesel tăng áp VGS, 4 xi lanh DOHC 16v', 29, '2022-12-29 08:16:34'),
(461, 'BT-50 2021', 'AT Luxury 4x2', 'Bán tải cỡ trung', 'Diesel tăng áp VGS, 4 xi lanh DOHC 16v', 29, '2022-12-29 08:16:34'),
(462, 'BT-50 2021', 'AT Premium 4x4', 'Bán tải cỡ trung', 'Diesel tăng áp VGS, 4 xi lanh DOHC 16v', 29, '2022-12-29 08:16:34'),
(463, 'Mazda2 2021', '1.5 AT', 'Xe nhỏ hạng B', 'Skyactiv-G 1.5', 29, '2022-12-29 08:16:34'),
(464, 'Mazda2 2021', '1.5 Deluxe', 'Xe nhỏ hạng B', 'Skyactiv-G 1.5', 29, '2022-12-29 08:16:34'),
(465, 'Mazda2 2021', 'Sport 1.5 Deluxe', 'Xe nhỏ hạng B', 'Skyactiv-G 1.5', 29, '2022-12-29 08:16:34'),
(466, 'Mazda2 2021', '1.5 Luxury', 'Xe nhỏ hạng B', 'Skyactiv-G 1.5', 29, '2022-12-29 08:16:34'),
(467, 'Mazda2 2021', 'Sport 1.5 Luxury', 'Xe nhỏ hạng B', 'Skyactiv-G 1.5', 29, '2022-12-29 08:16:34'),
(468, 'Mazda2 2021', '1.5 Premium', 'Xe nhỏ hạng B', 'Skyactiv-G 1.5', 29, '2022-12-29 08:16:34'),
(469, 'Mazda2 2021', 'Sport 1.5 Premium', 'Xe nhỏ hạng B', 'Skyactiv-G 1.5', 29, '2022-12-29 08:16:34'),
(470, 'CX-3 2021', '1.5L Deluxe', 'Xe nhỏ hạng B', 'Skactiv-G 1.5', 29, '2022-12-29 08:16:34'),
(471, 'CX-3 2021', '1.5L Luxury', 'Xe nhỏ hạng B', 'Skactiv-G 1.5', 29, '2022-12-29 08:16:34'),
(472, 'CX-3 2021', '1.5L Premium', 'Xe nhỏ hạng B', 'Skactiv-G 1.5', 29, '2022-12-29 08:16:34'),
(473, 'Mazda3 2021', '1.5 Deluxe', 'Xe cỡ vừa hạng C', 'Skactiv-G 1.5', 29, '2022-12-29 08:16:34'),
(474, 'Mazda3 2021', '1.5 Luxury', 'Xe cỡ vừa hạng C', 'Skactiv-G 1.5', 29, '2022-12-29 08:16:34'),
(475, 'Mazda3 2021', 'Sport 1.5 Luxury', 'Xe cỡ vừa hạng C', 'Skactiv-G 1.5', 29, '2022-12-29 08:16:34'),
(476, 'Mazda3 2021', '1.5 Premium', 'Xe cỡ vừa hạng C', 'Skactiv-G 1.5', 29, '2022-12-29 08:16:34'),
(477, 'Mazda3 2021', 'Sport 1.5 Premium', 'Xe cỡ vừa hạng C', 'Skactiv-G 1.5', 29, '2022-12-29 08:16:34'),
(478, 'Mazda6 2021', '2.0 Luxury', 'Xe cỡ trung hạng D', 'SkyActiv-G 2.0L', 29, '2022-12-29 08:16:34'),
(479, 'Mazda6 2021', '2.0 Premium', 'Xe cỡ trung hạng D', 'SkyActiv-G 2.0L', 29, '2022-12-29 08:16:34'),
(480, 'Mazda6 2021', '2.5 Signature Premium', 'Xe cỡ trung hạng D', 'SkyActiv-G 2.5L', 29, '2022-12-29 08:16:34'),
(481, 'CX-30 2021', '2.0 Luxury', 'Xe nhỏ hạng B+/C-', 'Skactiv-G 2.0', 29, '2022-12-29 08:16:34'),
(482, 'CX-30 2021', '2.0 Premium', 'Xe nhỏ hạng B+/C-', 'Skyactiv-G 2.0', 29, '2022-12-29 08:16:34'),
(483, 'Wrangler 2021', 'Willys/Islander', 'Xe cỡ trung hạng D', 'Turbo', 30, '2022-12-29 08:16:34'),
(484, 'Wrangler 2021', 'Sahara Overland', 'Xe cỡ trung hạng D', 'Turbo', 30, '2022-12-29 08:16:34'),
(485, 'Wrangler 2021', 'Sahara 80th', 'Xe cỡ trung hạng D', '2.0 Turbo', 30, '2022-12-29 08:16:34'),
(486, 'Wrangler 2021', 'Sahara Altitude', 'Xe cỡ trung hạng D', '2.0 Turbo', 30, '2022-12-29 08:16:34'),
(487, 'Wrangler 2021', 'Rubicon', 'Xe cỡ trung hạng D', '2.0 Turbo', 30, '2022-12-29 08:16:34'),
(488, 'Wrangler 2021', 'Rubicon 2 cửa', 'Xe cỡ trung hạng D', '2.0 Turbo', 30, '2022-12-29 08:16:34'),
(489, 'Gladiator 2021', 'Sport', 'Bán tải cỡ lớn', 'V6 Pentastar', 30, '2022-12-29 08:16:34'),
(490, 'Gladiator 2021', 'Rubicon', 'Bán tải cỡ lớn', 'V6 Pentastar', 30, '2022-12-29 08:16:34');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_brands`
--
ALTER TABLE `tbl_brands`
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
-- Chỉ mục cho bảng `tbl_vehicles`
--
ALTER TABLE `tbl_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_id` (`brands_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_brands`
--
ALTER TABLE `tbl_brands`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `tbl_car_article`
--
ALTER TABLE `tbl_car_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_showroom`
--
ALTER TABLE `tbl_showroom`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_vehicles`
--
ALTER TABLE `tbl_vehicles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=491;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_car_article`
--
ALTER TABLE `tbl_car_article`
  ADD CONSTRAINT `tbl_car_article_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `tbl_brands` (`id`),
  ADD CONSTRAINT `tbl_car_article_ibfk_2` FOREIGN KEY (`showroom_id`) REFERENCES `tbl_showroom` (`id`),
  ADD CONSTRAINT `tbl_car_article_ibfk_3` FOREIGN KEY (`vehicles_id`) REFERENCES `tbl_vehicles` (`id`);

--
-- Các ràng buộc cho bảng `tbl_vehicles`
--
ALTER TABLE `tbl_vehicles`
  ADD CONSTRAINT `tbl_vehicles_ibfk_1` FOREIGN KEY (`brands_id`) REFERENCES `tbl_brands` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
