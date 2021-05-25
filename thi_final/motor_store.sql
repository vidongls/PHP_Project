-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2021 at 06:30 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `motor_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(1, 'DongVihihi', 'vidongls12345@gmail.com', '111', 'fs.png', 'Việt Nam', ' dong vi dep trai vcl', '0399999362', 'Front End Dev');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(15) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(15) NOT NULL,
  `color` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `color`) VALUES
(1, '425', 0, 'Đỏ');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Yamaha', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequatur esse quia quidem excepturi impedit distinctio enim nesciunt nobis iste est praesentium voluptate cumque fugiat laudantium laboriosam, assumenda unde rerum.\r\n'),
(2, 'Honda', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequatur esse quia quidem excepturi impedit distinctio enim nesciunt nobis iste est praesentium voluptate cumque fugiat laudantium laboriosam, assumenda unde rerum.\r\n'),
(3, 'SYM', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequatur esse quia quidem excepturi impedit distinctio enim nesciunt nobis iste est praesentium voluptate cumque fugiat laudantium laboriosam, assumenda unde rerum.\r\n'),
(4, 'Others', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequatur esse quia quidem excepturi impedit distinctio enim nesciunt nobis iste est praesentium voluptate cumque fugiat laudantium laboriosam, assumenda unde rerum.\r\n'),
(6, 'Kawasaki', 'Xe máy Kawasaki được sản xuất bởi bộ phận Xe máy & Động cơ của Công ty Công nghiệp nặng Kawasaki tại các nhà máy ở Nhật Bản, Michigan, Philippines, Ấn Độ, Indonesia, Bangladesh và Thái Lan.');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(2, 'Đông Vi', 'vidongls12345@gmail.com', '111', 'Việt Nam', 'Lạng Sơn', '0399999362', 'Lạng Sơn', 'fs.png', '::1'),
(3, 'test', 'test', '111', 'test', 'test', 'test', 'test', 'Navy Blue and Black Professional Resume (1).png', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
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
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `color`, `order_date`, `order_status`) VALUES
(4, 3, 12004, 60391125, 1, 'Medium', '2021-05-19', 'Complete'),
(5, 3, 387000000, 1938745276, 3, 'Medium', '2021-05-19', 'Complete'),
(6, 3, 12900052, 218290272, 1, 'Đen', '2021-05-20', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(1, 1151987727, 258000000, 'Back Code', 123456478, 321, '2021-05-16'),
(3, 1151987727, 258000000, 'Back Code', 234234, 324, '16/05/2021'),
(6, 60391125, 12004, 'Back Code', 1234, 456, '16/05/2021'),
(7, 60391125, 12004, 'Paypall', 234234, 234324, '3/2/20021'),
(8, 1938745276, 387000000, 'Paypall', 234234, 321, '32');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
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
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `color`, `order_status`) VALUES
(4, 3, 60391125, '490', 1, 'Medium', 'Complete'),
(6, 3, 218290272, '489', 1, 'Đen', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
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
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`, `product_label`) VALUES
(479, 1, 2, '2021-05-20 09:40:23', 'Áo phao', 'boys-Puffer-Coat-With-Detachable-Hood-1.jpg', 'boys-Puffer-Coat-With-Detachable-Hood-3.jpg', 'boys-Puffer-Coat-With-Detachable-Hood-2.jpg', 150000, 'hihi', '<p>sadsad</p>', 'sale'),
(480, 5, 2, '2021-05-20 09:41:06', 'aogai', 'g-polos-tshirt-1.jpg', 'g-polos-tshirt-2.jpg', 'polos-tshirt-1.jpg', 1000, 'hihi', '<p>efreer</p>', 'new'),
(481, 5, 1, '2021-05-20 09:40:45', 'test3', 'grey-man-1.jpg', 'grey-man-2.jpg', 'grey-man-3.jpg', 129000000, 'hihi', '<p>dsadsad</p>', 'new'),
(482, 3, 2, '2021-05-20 09:40:26', 'caogot', 'High Heels Women Pantofel Brukat-1.jpg', 'High Heels Women Pantofel Brukat-2.jpg', 'High Heels Women Pantofel Brukat-3.jpg', 129000000, 'hihi', '<p>sadsad</p>', 'new'),
(483, 1, 3, '2021-05-20 09:40:56', 'test4', 'Red-Winter-jacket-1.jpg', 'Red-Winter-jacket-2.jpg', 'Red-Winter-jacket-3.jpg', 129000000, 'hihi', '<p>sadsadsad</p>', 'new'),
(484, 3, 2, '2021-05-20 09:40:41', 'test6', 'waxed-cotton-coat-woman-1.jpg', 'waxed-cotton-coat-woman-2.jpg', 'waxed-cotton-coat-woman-3.jpg', 129000000, 'hihi', '<p><span style=\"font-size: 14px;\">Far far away, behind the world mountains, far from the countries Vokalia and Consonantia, theres live the blind texts. Separated</span></p>', 'new'),
(485, 2, 4, '2021-05-20 09:40:30', 'test5', 'women-diamond-heart-ring-3.jpg', 'women-diamond-heart-ring-2.jpg', 'women-diamond-heart-ring-1.jpg', 129000000, 'hihi', '<p><span style=\"font-size: 14px;\">Far far away, behind the world mountains, far from the countries Vokalia and Consonantia, theres live the blind texts. Separated</span></p>', 'new'),
(486, 2, 1, '2021-05-20 09:40:53', 'test4', 'grey-man-3.jpg', 'grey-man-1.jpg', 'grey-man-2.jpg', 129000000, 'hihi', '<p><span style=\"font-size: 14px;\">Far far away, behind the world mountains, far from the countries Vokalia and Consonantia, theres live the blind texts. Separated</span></p>', 'new'),
(487, 1, 1, '2021-05-20 09:41:10', 'Jacket1', 'levis-Trucker-Jacket.jpg', 'levis-Trucker-Jacket-2.jpg', 'levis-Trucker-Jacket-3.jpg', 129000000, 'hihi', '<p><span style=\"font-size: 14px;\">Far far away, behind the world mountains, far from the countries Vokalia and Consonantia, theres live the blind texts. Separated</span></p>', 'new'),
(488, 1, 1, '2021-05-20 09:40:36', 'Jacket2', 'Merlin-Engineer-Jacket-2.jpg', 'Merlin-Engineer-Jacket-3.jpg', 'Merlin-Enginner-Jacket.jpg', 1000, 'hihi', '<p><span style=\"font-size: 14px;\">Far far away, behind the world mountains, far from the countries Vokalia and Consonantia, theres live the blind texts. Separated</span></p>', 'sale'),
(489, 1, 1, '2021-05-20 09:41:13', 'Jacket3', 'Mobile-Power-Jacket.jpg', 'Mobile-Power-Jacket-2.jpg', 'Mobile-Power-Jacket-3.jpg', 12900052, 'hihi', '<p><span style=\"font-size: 14px;\">Far far away, behind the world mountains, far from the countries Vokalia and Consonantia, theres live the blind texts. Separated</span></p>', 'sale'),
(490, 1, 2, '2021-05-20 09:40:48', 'Chiec ao ando', 'hijab-anak-1.jpg', 'hijab-anak-2.jpg', 'hijab-anak-3.jpg', 12004, 'rdfgfdg', '<p><span style=\"font-size: 14px;\">Far far away, behind the world mountains, far from the countries Vokalia and Consonantia, theres live the blind texts. Separated</span></p>', 'new'),
(501, 2, 1, '2021-05-20 16:32:37', 'Yamaha YZF-R3', 'anh1.png', 'anh2.png', 'anh3.jpg', 129000000, 'yamaha', '<p>abc</p>', 'new'),
(502, 2, 1, '2021-05-20 16:58:08', 'EXCITER 155 VVA PHIÊN BẢN TIÊU CHUẨN ', 'Exciter-155-Mat-Red-004-1.png', 'Exciter-155-Mat-Red-005-2.png', 'Exciter-155-Mat-Red-007-1.png', 46990000, 'yamaha', '<p>a</p>', 'new'),
(503, 1, 1, '2021-05-20 17:06:37', 'JUPITER FI', 'Jupiter-GP-004-2.png', 'Jupiter-GP-005-2.png', 'Jupiter-GP-008-1.png', 30000000, 'yamaha', '<p>a</p>', 'new'),
(504, 1, 1, '2021-05-20 17:07:28', 'SIRIUS FI', 'Sirius-Black-Disk-004-2.png', 'Sirius-Blue-Disk-004.png', 'Sirius-Red-Disk-004.png', 21340000, 'yamaha', '<p>a</p>', 'new'),
(505, 1, 1, '2021-05-20 17:08:39', 'SIRIUS', 's1.png', 's2.png', 's3.png', 21300000, 'yamaha', '<p>a</p>', 'new'),
(506, 3, 1, '2021-05-20 17:09:43', 'SIRIUSGRANDE BLUE CORE HYBRID', 's4.png', 's5.png', 's6.png', 50000000, 'yamaha', '<p>a</p>', 'new'),
(507, 3, 1, '2021-05-20 17:10:49', 'LATTE', 's7.png', 's8.png', 's9.png', 37490000, 'yamaha', '<p>a</p>', 'new'),
(508, 3, 1, '2021-05-20 17:12:22', 'JANUS', 's10.png', 's12.png', 's11.png', 27990000, 'yamaha', '<p>a</p>', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Xe số', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequatur esse quia quidem excepturi impedit distinctio enim nesciunt nobis iste est praesentium voluptate cumque fugiat laudantium laboriosam, assumenda unde rerum.'),
(2, 'Xe côn tay', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequatur esse quia quidem excepturi impedit distinctio enim nesciunt nobis iste est praesentium voluptate cumque fugiat laudantium laboriosam, assumenda unde rerum.\r\n'),
(3, 'Xe tay ga', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequatur esse quia quidem excepturi impedit distinctio enim nesciunt nobis iste est praesentium voluptate cumque fugiat laudantium laboriosam, assumenda unde rerum.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(1, 'slide number 1', '2020-yamaha-mt-03 (2).jpg', ''),
(2, 'slide number 2', '56d120b4-d3b0-4514-85b0-6ef02475aac5 (2).jpg', ''),
(3, 'slide number 3', '09d4b152-8aad-4c11-8f55-89f7c0b976e8 (2).jpg', ''),
(7, 'Slide 4', 'Zero-Motorcycles-Zero-S-2017 (2).jpg', 'sdfdsf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
