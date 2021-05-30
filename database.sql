-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 30, 2021 lúc 03:20 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `motor_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`) VALUES
(1, 'DongVihihi123', 'vidongls12345@gmail.com', '111', 'fs.png', '0399999362'),
(3, 'a', 'dongvi', '1', 'rem.png', 'sdsd');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(10) NOT NULL,
  `p_id` int(15) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(15) NOT NULL,
  `color` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`cart_id`, `p_id`, `ip_add`, `qty`, `color`) VALUES
(1, 1, '425', 0, 'Đỏ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, '                                                                 Yamaha                                                                 ', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequatur esse quia quidem excepturi impedit distinctio enim nesciunt nobis iste est praesentium voluptate cumque fugiat laudantium laboriosam, assumenda unde rerum.\r\n'),
(2, '  Honda  ', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequatur esse quia quidem excepturi impedit distinctio enim nesciunt nobis iste est praesentium voluptate cumque fugiat laudantium laboriosam, assumenda unde rerum.\r\n'),
(3, 'SYM', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequatur esse quia quidem excepturi impedit distinctio enim nesciunt nobis iste est praesentium voluptate cumque fugiat laudantium laboriosam, assumenda unde rerum.\r\n'),
(4, 'Others', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequatur esse quia quidem excepturi impedit distinctio enim nesciunt nobis iste est praesentium voluptate cumque fugiat laudantium laboriosam, assumenda unde rerum.\r\n'),
(6, 'Kawasaki', 'Xe máy Kawasaki được sản xuất bởi bộ phận Xe máy & Động cơ của Công ty Công nghiệp nặng Kawasaki tại các nhà máy ở Nhật Bản, Michigan, Philippines, Ấn Độ, Indonesia, Bangladesh và Thái Lan.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(2, 'Đông Vi', 'vidongls12345@gmail.com', '111', '0399999362', 'Lạng Sơn', 'fs.png', '::1'),
(3, 'test', 'test', '111', 'test', 'test', 'Navy Blue and Black Professional Resume (1).png', '::1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `color` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `color`, `order_date`, `order_status`) VALUES
(17, 3, 83970000, 105004549, 3, 'Xám', '2021-05-30', 'Complete'),
(18, 3, 21340000, 105004549, 1, 'Vàng', '2021-05-30', 'Complete'),
(19, 3, 27990000, 438719401, 1, 'Vàng', '2021-05-30', 'Complete'),
(20, 3, 27990000, 1046952451, 1, 'Đỏ', '2021-05-30', 'Complete'),
(21, 3, 30000000, 513631450, 1, 'Xám', '2021-05-30', 'Complete'),
(22, 2, 27990000, 2092904264, 1, '', '2021-05-30', 'Complete'),
(23, 2, 37490000, 2125899701, 1, 'Xám', '2021-05-30', 'Pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(14, 105004549, 83970000, 'Ngân hàng', 1234, 45654, '2021-05-30'),
(15, 1151987727, 258000000, 'Visa', 234234, 321, '2021-05-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments_vnp`
--

CREATE TABLE `payments_vnp` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `thanh_vien` varchar(100) NOT NULL COMMENT 'thành viên thanh toán',
  `money` float NOT NULL COMMENT 'số tiền thanh toán',
  `note` varchar(255) DEFAULT NULL COMMENT 'ghi chú thanh toán',
  `vnp_response_code` varchar(255) NOT NULL COMMENT 'mã phản hồi',
  `code_vnpay` varchar(255) NOT NULL COMMENT 'mã giao dịch vnpay',
  `code_bank` varchar(255) NOT NULL COMMENT 'mã ngân hàng',
  `time` datetime NOT NULL COMMENT 'thời gian chuyển khoản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `payments_vnp`
--

INSERT INTO `payments_vnp` (`id`, `order_id`, `thanh_vien`, `money`, `note`, `vnp_response_code`, `code_vnpay`, `code_bank`, `time`) VALUES
(1, '742874161', 'abc', 100000, 'chinh chuyển khoản', '00', '13401455', 'NCB', '2020-10-10 01:00:00'),
(2, '608324672', 'abc', 1000000, 'test chuyển khoản', '00', '13401811', 'NCB', '2020-10-11 21:00:00'),
(3, '1134065293', 'CT2', 150000, 'học phí', '00', '13407163', 'NCB', '2020-10-22 23:00:00'),
(4, '596509313', 'CT2', 5000000, 'học phí', '00', '13407176', 'NCB', '2020-10-23 00:00:00'),
(5, '70267166', 'CT2', 5000000, 'học phí', '00', '13407178', 'NCB', '2020-10-23 00:00:00'),
(6, '1672349048', 'CT1', 150000, 'học phí', '00', '13407729', 'NCB', '2020-10-23 21:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `color` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `color`, `order_status`) VALUES
(17, 3, 105004549, '508', 3, 'Xám', 'Complete'),
(20, 3, 1046952451, '508', 1, 'Đỏ', 'pending'),
(22, 2, 2092904264, '508', 1, '', 'Complete'),
(23, 2, 2125899701, '507', 1, 'Xám', 'Pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(15) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` mediumtext NOT NULL,
  `product_label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`, `product_label`) VALUES
(501, 2, 1, '2021-05-30 14:52:01', 'Yamaha YZF-R3', 'anh1.png', 'anh2.png', 'anh3.jpg', 129000000, 'yamaha', '<p>abc</p>', 'new'),
(502, 2, 1, '2021-05-20 16:58:08', 'EXCITER 155 VVA PHIÊN BẢN TIÊU CHUẨN ', 'Exciter-155-Mat-Red-004-1.png', 'Exciter-155-Mat-Red-005-2.png', 'Exciter-155-Mat-Red-007-1.png', 46990000, 'yamaha', '<p>a</p>', 'new'),
(503, 1, 1, '2021-05-20 17:06:37', 'JUPITER FI', 'Jupiter-GP-004-2.png', 'Jupiter-GP-005-2.png', 'Jupiter-GP-008-1.png', 30000000, 'yamaha', '<p>a</p>', 'new'),
(504, 1, 1, '2021-05-23 16:21:19', 'SIRIUS FI', 'Sirius-Black-Disk-004-2.png', 'Sirius-Blue-Disk-004.png', 'Sirius-Red-Disk-004.png', 21340000, 'yamaha', '<p>a</p>', 'sale'),
(505, 1, 1, '2021-05-20 17:08:39', 'SIRIUS', 's1.png', 's2.png', 's3.png', 21300000, 'yamaha', '<p>a</p>', 'new'),
(506, 3, 1, '2021-05-23 16:21:16', 'SIRIUSGRANDE BLUE CORE HYBRID', 's4.png', 's5.png', 's6.png', 50000000, 'yamaha', '<p>a</p>', 'sale'),
(507, 3, 1, '2021-05-20 17:10:49', 'LATTE', 's7.png', 's8.png', 's9.png', 37490000, 'yamaha', '<p>a</p>', 'new'),
(508, 3, 1, '2021-05-23 16:21:48', 'JANUS', 's10.png', 's12.png', 's11.png', 27990000, 'yamaha', '<p>a</p>', 'sale');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, '   Xe số   ', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequatur esse quia quidem excepturi impedit distinctio enim nesciunt nobis iste est praesentium voluptate cumque fugiat laudantium laboriosam, assumenda unde rerum.'),
(2, 'Xe côn tay', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequatur esse quia quidem excepturi impedit distinctio enim nesciunt nobis iste est praesentium voluptate cumque fugiat laudantium laboriosam, assumenda unde rerum.\r\n'),
(3, 'Xe tay ga', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequatur esse quia quidem excepturi impedit distinctio enim nesciunt nobis iste est praesentium voluptate cumque fugiat laudantium laboriosam, assumenda unde rerum.\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(1, 'slide number 1', '2020-yamaha-mt-03.jpg', 'sdfdsf'),
(2, 'slide number 2', '56d120b4-d3b0-4514-85b0-6ef02475aac5 (2).jpg', ''),
(3, 'slide number 3', '09d4b152-8aad-4c11-8f55-89f7c0b976e8 (2).jpg', ''),
(7, 'Slide 4', 'Zero-Motorcycles-Zero-S-2017 (2).jpg', 'sdfdsf');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `payments_vnp`
--
ALTER TABLE `payments_vnp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `payments_vnp`
--
ALTER TABLE `payments_vnp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
