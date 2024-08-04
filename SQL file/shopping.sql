-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2024 at 04:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(4, 'Electronics', 'Electronic Products', '2017-01-24 19:19:32', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'Samsung 138 cm (55 inches) 4K Ultra HD Smart LED TV ', 'Samsung', 59999, 71999, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; font-size: 14px; font-family: Roboto, Arial, sans-serif; color: rgb(33, 33, 33);\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">UA55CU8570ULXL</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">138 cm (55)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'led tv.jpg', 'led1.jpg', 'led2.jpg', 99, 'In Stock', '2017-01-30 16:54:35', ''),
(2, 4, 4, 'Apple iPhone 15', 'Apple ', 72999, 84999, '<div class=\"_2PF8IO\" style=\"box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">6 GB RAM | 128 GB ROM |</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">6.7 inch Retina HD Display</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">48MP Primary Camera | 12MP Front</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Li-Ion Battery</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">A15 Chip with 64-bit Architecture and M8 Motion Co-processor Processor</li></ul></div>', '151.jpg', '152.jpg', '153.jpg', 99, 'In Stock', '2017-01-30 16:59:00', ''),
(3, 4, 4, 'Vivo V29 5G ', 'Vivo', 35999, 47999, '<br><div><ol><li>8 GB RAM | 256 GB ROM | Expandable Upto 1 TB<br></li><li>6.5 inch Full HD Display<br></li><li>108MP Primary Camera | 32MP Front<br></li><li>5000 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 625 64-bit Processor<br></li></ol></div>', 'vivo1.jpg', 'vivo2.jpg', 'vivo3.jpg', 99, 'In Stock', '2017-02-04 04:03:15', ''),
(4, 4, 4, 'Oppo F25 Pro 5G ', 'Oppo', 23999, 35999, '<ul><li>6 GB RAM | 128 GB ROM | Expandable Upto 512 GB<br></li><li>6.7 inch Full HD Display<br></li><li>108MP Primary Camera | 32MP Front<br></li><li>6000 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 888 Processor<br></li></ul>', 'oppo1.jpg', 'oppo2.jpg', 'oppo3.jpg', 99, 'In Stock', '2017-02-04 04:04:43', ''),
(5, 4, 4, 'Samsung Galaxy S23 5G ', 'Samsung', 69999, 81999, '<ul><li>8 GB RAM | 512 GB ROM | Expandable Upto 1 TB<br></li><li>6.1 inch Full HD Display<br></li><li>12MP Primary Camera | 32MP Front<br></li><li>5500 mAh Li-Ion Polymer Battery<br></li><li>SNAP DRAGON GEN 3&nbsp;<br></li></ul>', 's231.jpg', 's232.jpg', 's233.jpg', 99, 'In Stock', '2017-02-04 04:06:17', ''),
(6, 4, 4, 'Realme 12 Pro+ 5G', 'Realme', 29999, 41999, '<ul><li>8 GB RAM | 512 GB ROM |<br></li><li>6.5 inch HD Display<br></li><li>108MP Primary Camera | 32MP Front<br></li><li>5500 mAh Battery<br></li><li>SNAP DRAGON GEN 3 Processor<br></li></ul>', 'real1.jpg', 'real2.jpg', 'real3.jpg', 99, 'In Stock', '2017-02-04 04:08:07', ''),
(7, 4, 4, 'Samsung Galaxy S24 Ultra 5G AI Smartphone', 'SAMSUNG', 134999, 146999, '<ul><li>12 GB RAM | 512 GB ROM | Expandable Upto 2 TB<br></li><li>6.7 inch HD Display<br></li><li>12MP Primary Camera | 32MP Front<br></li><li>6000 mAh Li-Ion Battery<br></li><li>SNAP DRAGON GEN 3</li></ul>', 'Sam.jpg', 'sam2.jpg', 'sam3.jpg', 99, 'In Stock', '2017-02-04 04:10:17', ''),
(8, 4, 4, 'OnePlus 12R', 'ONEPLUS', 59999, 71999, '<ul><li>8 GB RAM | 512 GB ROM | Expandable Upto 1 TB<br></li><li>6.2 inch HD Display<br></li><li>50MP Primary Camera | 16MP Front<br></li><li>5000 mAh Battery<br></li><li>SNAP DRAGON GEN 2 Processor<br></li></ul>', '1+.jpg', '1++.jpg', '1+++.jpg', 99, 'In Stock', '2017-02-04 04:11:54', ''),
(11, 4, 6, 'HP OMEN Gaming Laptop, AMD Ryzen 7', 'HP', 99990, 111990, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>', 'hp.jpg', 'hp2.jpg', 'hp3.jpg', 99, 'In Stock', '2017-02-04 04:26:17', ''),
(12, 4, 6, 'Apple 2023 MacBook Air Laptop with M2 chip', 'Apple', 154999, 166999, '<ul><li><h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font size=\"2\">14-inch, M3 chip with 8?core CPU and 10?core GPU</font></span></h1></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><font size=\"2\">UP TO 22 HOURS OF BATTERY LIFE&nbsp;</font></span><br></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">BRILLIANT PRO DISPLAY — The 35.97 cm (14.2?)</span><br></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">ADVANCED CAMERA AND AUDIO&nbsp;</span><br></li></ul>', 'mac.jpg', 'mac1.jpg', 'mac2.jpg', 99, 'In Stock', '2017-02-04 04:28:17', ''),
(13, 4, 6, 'ASUS TUF Gaming F15 - AI Powered Gaming Laptop, Intel Core i5', 'ASUS', 41990, 53990, '<br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'sus.jpg', 'sus2.jpg', 'sus3.jpg', 99, 'In Stock', '2017-02-04 04:30:24', ''),
(14, 4, 6, 'Lenovo IdeaPad Slim 3 12th Gen Intel Core i3', 'Lenovo', 33333, 45333, '<br><div><ul><li>AMD APU Quad Core A6 Processor ( 6th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>500 GB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'vovo.webp', 'vovo1.jpg', 'vovo2.jpg', 99, 'In Stock', '2017-02-04 04:32:15', ''),
(21, 4, 3, 'Acer 139 cm (55 inches) Advanced ', 'Acer', 28999, 30999, '<ul><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Resolution: 4K Ultra HD (3840x2160)&nbsp;</span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Connectivity: Dual band Wifi | 2 way Bluetooth |<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Sound: 36 Watts Output | Dolby Atmos |&nbsp;<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Smart Tv Features: Google TV | Content Recommendations |&nbsp;<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Warranty Information: 1 year comprehensive warranty<br></span></li></ul>', 'tv1.jpg', 'tv2.jpg', 'tv3.jpg', 99, 'In Stock', '2024-03-06 12:35:39', NULL),
(22, 4, 3, 'Redmi 80 cm (32 inches) F Series HD', 'Redmi', 14999, 24999, '<ul><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Resolution: HD Ready (1366x768) | Refresh Rate: 60 hertz |</span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Sound: 20 Watts Output | Dolby Audio |</span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Supported Apps: Prime Video | Netflix | Disney+ Hotstar |</span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Display: Metal bezel-less Screen |&nbsp;</span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Warranty Information: 1 year comprehensive warranty&nbsp;</span></li></ul>', 'tv4.jpg', 'tv5.jpg', 'tv6.jpg', 99, 'In Stock', '2024-03-06 12:58:42', NULL),
(23, 4, 3, 'Kodak 126 cm (50 inches)', 'Kodak', 32499, 45999, '<ul><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Resolution : 4K Ultra HD (3840x2160) resolution</span><br></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Sound: 40 Watts Output<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Connectivity: 3 HDMI ports to connect set top box,&nbsp;<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Display : HRD 10+ | 4k Display with 1 billion colours&nbsp;<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Warranty Information: 1 Year warranty<br></span></li></ul>', 'tv7.jpg', 'tv8.jpg', 'tv9.jpg', 99, 'In Stock', '2024-03-06 13:02:37', NULL),
(24, 4, 3, 'Samsung 80 cm (32 inches) HD', 'Samsung', 14999, 18900, '<ul><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Resolution: HD Ready (1366x768) | Refresh Rate: 60 hertz</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Sound : 20 Watts Output | Dolby Digital Plus</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Smart TV Features : Personal Computer<br></span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Display : LED Panel | Mega Contrast |<br></span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Warranty Information: 1 year comprehensive warranty<br></span></li></ul>', 'tv10.jpg', 'tv11.jpg', 'tv12.jpg', 99, 'In Stock', '2024-03-06 13:06:19', NULL),
(25, 4, 3, 'Blaupunkt 108 cm (43 inches)', 'Blaupunkt', 22999, 29999, '<ul><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Resolution : Full HD (1920 x 1080)| Refresh Rate : 60 Hertz</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Sound: 48 Watts Output | Dolby Digital Plus</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Connectivity: Dual Band Wi-Fi | 3 HDMI ports<br></span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Smart TV Features: Google TV OS&nbsp;<br></span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Warranty Information: 1 year warranty<br></span></li></ul><div><br></div><div><br></div>', 'tv13.jpg', 'tv14.jpg', 'tv16.jpg', 99, 'In Stock', '2024-03-06 13:11:32', NULL),
(26, 4, 3, 'OnePlus 80 cm (32 inches) Y Series', 'ONEPLUS', 14999, 19999, '<ul><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Resolution: HD Ready (1366x768) | Refresh Rate: 60 hertz</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Sound : 20 Watts Output | Dolby Audio</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Connectivity: 2 HDMI ports to connect set top box<br></span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Display : LED Panel | Noise Reduction&nbsp;<br></span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Warranty Information: 1 year comprehensive warranty<br></span></li></ul>', 'tv16.jpg', 'tv17.jpg', 'tv18.jpg', 99, 'In Stock', '2024-03-06 13:26:55', NULL),
(27, 4, 3, 'LG 80 cm (32 inches) HD Ready Smart LED TV', 'LG', 14999, 21999, '<ul><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Resolution: HD Ready (1366x768) | Refresh Rate: 60 hertz</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Connectivity: 2 HDMI ports to connect set top box<br></span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Sound output: 10 Watts Output I 2 Speakers<br></span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">V Features: Web OS Smart TV | Wi-Fi&nbsp;<br></span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Warranty Information: 1 Year LG India Comprehensive Warranty&nbsp;<br></span></li></ul><div><font color=\"#0f1111\"><br></font></div><div><font color=\"#0f1111\"><br></font></div>', 'tv19.jpg', 'tv20.jpg', 'tv21.jpg', 99, 'In Stock', '2024-03-06 13:31:14', NULL),
(28, 4, 6, 'Dell 14 Laptop', 'Dell', 45555, 55555, '<ul><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Processor: Intel Core i3-1215U 12th Generation</span><br></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">RAM: 8 GB, 1 x 8 GB, DDR4, 2666 MHz<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Display: 14.0\" FHD WVA AG Narrow Border 250 nits&nbsp;<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Ports: 1 USB 3.2 Gen 1 Type-C port with DisplayPort 1.4<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Power Adaptor- 65 Watt AC Adapter<br></span></li></ul>', 'dell1.jpg', 'dell2.jpg', 'dell3.jpg', 99, 'In Stock', '2024-03-07 13:28:50', NULL),
(29, 4, 6, 'HP Laptop 15s, 12th Gen Intel Core i3', 'HP', 38999, 45555, '<ul><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">?6-core 12th Gen Intel Core i3-1215U</span><br></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">?Upgraded memory and storage? 8GB DDR4 RAM and 512GB SSD<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">?Micro-edge display? The 15.6-inch<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">?Long battery life? Fast charging 0% to 50% in 45 mins<br></span></li></ul>', 'pc1.jpg', 'pc2.jpg', 'pc3.jpg', 99, 'In Stock', '2024-03-07 13:32:58', NULL),
(30, 4, 6, 'Lenovo V15 Intel Celeron N4500 ', 'Lenovo', 25999, 39999, '<ul><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Processor: Intel Celeron N4500 processor, base speed 1.1 Ghz</span><br></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Operating System: Preloaded Windows 11<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Display: 15.6\" (39.62 cm) screen with (1920x1080) FHD Antiglare<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Ports: 1x USB 2.0 | 1x USB 3.2 Gen 1 | 1x USB-C 3.2 Gen 1&nbsp;<br></span></li></ul>', 'pc4.jpg', 'pc5.jpg', 'pc6.jpg', 99, 'In Stock', '2024-03-07 13:37:08', NULL),
(31, 4, 6, 'Dell Inspiron 7430 2in1 Touch Laptop', 'Dell', 58999, 79999, '<ul><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Processor: Intel 13th Gen i3-1315U, up to 4.50 GHz, 10MB Cache + 6 Cores</span><br></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Display: 14.0\" FHD+ WVA with ComfortView Support 250 nits<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Ports: HDMI 1.4*, (2) Intel Thunderbolt 4.0<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Features: 16:10 aspect ratio on a 14-inch FHD+ display<br></span></li></ul>', 'pc7.jpg', 'pc8.jpg', 'pc9.jpg', 99, 'In Stock', '2024-03-07 13:41:48', NULL),
(32, 4, 6, 'Lenovo ThinkBook 15 Intel 12th Gen Core i7 ', 'Lenovo', 99999, 132000, '<ul><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Processor: 12th Gen Intel Core I71255U G4 processor | 10 Cores |</span><br></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Display: 15.6\" (39.62 cm) Screen (1920x1080) FHD Antiglare&nbsp;<br></span></li></ul><div><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Ports: 2x USB 3.2 Gen 1 (1 Always On), HDMI, USB-C 3.2 Gen 2</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Camera: 720p, with privacy shutter<br></span></li></ul></div>', 'pc10.jpg', 'pc11.jpg', 'pc12.jpg', 99, 'In Stock', '2024-03-07 13:45:55', NULL),
(33, 4, 4, 'TECNO Spark 20C', 'Tecno', 8499, 10499, '<ul><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">With up to a massive 16GB* RAM and 128GB ROM</span><br></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">6.56-inch Dot-in Display<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Ultra-Fast Side Edge Fingerprint Sensor with Anti-oil&nbsp;<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Segment-first Dual Stereo Speakers equipped with DTS<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">50MP + AI Dual Rear Camera f/1.6 Aperture<br></span></li></ul>', 'ph1.jpg', 'ph2.jpg', 'ph3.jpg', 99, 'In Stock', '2024-03-07 13:50:42', NULL),
(34, 4, 4, 'iQOO 12 5G', 'iQOO', 35999, 45555, '<ul><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">3.3 GHz Snapdragon 8 Gen 3 mobile platform</span><br></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">50MP 1/1.3\" Astrography Camera (f/1.68) + 50MP Ultra - Wide<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Brightest Display ever with 6.78\" 144 Hz LTPO AMOLED display<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Fully charged battery with 120W fast charger<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Symmetrical dual stereo speaker<br></span></li></ul>', 'ph4.jpg', 'ph5.jpg', 'ph6.jpg', 99, 'In Stock', '2024-03-07 13:54:44', NULL),
(35, 4, 4, 'POCO C51', 'POCO', 8999, 10999, '<div><ul><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Processor: Powerful MediaTek G36 octa-core CPU</span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">6.52\" large HD+ Scratch Resistant Display<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">120 Hz touch sampling rate<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">8MP AI dual camera with Primary sensor of f/2.0<br></span></li></ul></div>', 'ph7.jpg', 'ph8.jpg', 'ph9.jpg', 99, 'In Stock', '2024-03-08 10:38:51', NULL),
(36, 4, 4, 'POCO C55', 'POCO', 6999, 13999, '<ul><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Processor: High performance MediaTek G85&nbsp;</span><br></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">6.71\" HD+ Large display<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">120 Hz touch sampling rate<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">50MP AI Dual camera with Primary sensor of f/1.8 Aperture, 1.28um<br></span></li></ul>', 'ph10.jpg', 'ph11.jpg', 'ph12.jpg', 99, 'In Stock', '2024-03-08 10:42:07', NULL),
(37, 4, 4, 'Redmi 13C', 'Redmi', 8999, 13999, '<ul><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Processor: High performance MediaTek G85</span><br></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">6.74\" HD+ 90Hz display with Corning Gorilla Glass 3 Protection<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">50MP AI Triple camera with Primary sensor of f/1.8&nbsp;<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Time-lapse | Classic film filters | Frame | HDR | Google lens | Voice Shutter<br></span></li></ul>', 'ph13.jpg', 'ph14.jpg', 'ph15.jpg', 99, 'In Stock', '2024-03-08 10:46:20', NULL),
(38, 4, 4, 'Apple iPhone 14 ', 'Apple', 60000, 80000, '<ul><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">15.40 cm (6.1-inch) Super Retina XDR display</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Advanced camera system for better photos in any light</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Cinematic mode now in 4K Dolby Vision up to 30 fps<br></span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Vital safety technology — Crash Detection calls for help when you can’t</span></li></ul>', 'ph16.jpg', 'ph17.jpg', 'ph18.jpg', 99, 'In Stock', '2024-03-08 10:50:33', NULL),
(39, 4, 4, 'OnePlus Nord CE 3 Lite 5G', 'ONEPLUS', 16999, 19999, '<ul><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Camera: 108 MP Main Camera with EIS</span><br></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Rear Camera Mode: Hi-res 108MP mode, 3x Lossles Zoom<br></span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Display: 6.72 Inches; 120 Hz Adaptive refresh rate<br></span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Operating System: Oxygen OS based on Android 13.1</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Processor: Qualcomm Snapdragon 695 5G</span></li></ul>', 'ph19.jpg', 'ph20.jpg', 'ph21.jpg', 99, 'In Stock', '2024-03-08 10:54:24', NULL),
(40, 4, 4, 'Samsung Galaxy M04 ', 'Samsung', 8999, 12499, '<ul><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Powerful MediaTek Helio P35 Octa Core 2.3GHz with Android 12,One UI Core 4.1</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">13MP+2MP Dual camera setup- True 13MP (F2.2) main camera + 2MP (F2.4) | 5MP (F2.2) front came</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">16.55 centimeters (6.5-inch) LCD, HD<br></span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">5000mAH lithium-ion battery<br></span></li></ul>', 'ph22.jpg', 'ph23.jpg', 'ph24.jpg', 99, 'In Stock', '2024-03-08 10:59:05', NULL),
(41, 4, 4, 'Redmi Note 13 5G', 'Redmi', 19999, 24999, '<ul><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Display: 6.67\" FHD+ pOLED (1080x2400) Ultra-narrow bezels</span><br></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Processor:Mediatek Dimensity 6080 6nm Octa-core 5G processor<br></span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Camera: 108MP 3X in-sensor zoom AI Triple Camera with 8MP Ultra Wide sensor and 2MP Macro camera| 16MP Front camera</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Battery: 5000 mAh large battery with 33W fast charger in-box and Type-C connectivity</span></li></ul>', 'ph25.jpg', 'ph26.jpg', 'ph27.jpg', 99, 'In Stock', '2024-03-08 11:04:19', NULL),
(42, 4, 4, 'iQOO Z7 Pro 5G ', 'iQOO', 23999, 26999, '<ul><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Dimensity 7200 5g processor based on the latest 4nm energy-efficient process</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Slimmest phone with 0.736 cm (7.36mm) thickness, Premium AG Matte Glass finish</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">64 MP AURA Light OIS Camera, 4K video recording, Hybrid Image Stabilization, Super Night Mode, Aura Light Portrait, Camera Panning Portrait</span></li></ul>', 'ph28.jpg', 'ph29.jpg', 'ph30.jpg', 99, 'In Stock', '2024-03-08 11:07:58', NULL),
(43, 4, 14, 'NIKON Z 50 Mirrorless Camera Body with 16-50mm &50-250mm', 'NIKON', 87490, 102995, '<ul><li>Model name-Z 50</li><li>SLR Variant-Body with 16-50mm &amp; 50-250mm Lenses</li><li>Effective Pixel-20.9MP</li><li>Sensor Type-CMOS</li><li>Image Senser Size-23.5 x 15.7mm</li><li>Shutter Speed- 1/4000-30sec</li></ul>', 'Nikon Z 50 -1.jpeg', 'Nikon Z 50-2.jpeg', 'Nikon Z 50-3.jpeg', 99, 'In Stock', '2024-03-16 10:33:46', NULL),
(44, 4, 14, 'FUJIFILM Instax Mini Instant Camera(Purple)', 'Instax', 5949, 7999, '<ul><li>Model Name-Mini 11</li><li>Picture Size-62 x 46</li><li>Aperture Range-F12.7</li><li>Focus Rang-0.3m to Infinity or Beyond</li><li>Exposure Mode-Manual</li><li>Batteries Included-Yes</li></ul>', 'Instax1.jpeg', 'Instax2.jpeg', 'Instax3.jpeg', 99, 'In Stock', '2024-03-16 14:44:52', NULL),
(45, 4, 14, 'GoPro HERO12 DualLCDScreens 5.3K60 UltraHDVideo HyperSmooth(Black,27MP)', 'GoPro', 37490, 45000, '<ul><li>Model Name-HERO12 DualLCDScreens 5.3K60 UltraHDVideo</li><li>Effective Pixel-27 MP</li><li>Shooting Modes-Times Laps,Video,Photo Modes</li><li>Ports-USB-C Port</li><li>Warranty Summary-2 Years Warranty</li><li>Upgraded Memory-128 GB</li></ul>', 'GoPro1.jpeg', 'GoPro2.jpeg', 'Gopro3.jpeg', 99, 'In Stock', '2024-03-16 15:04:20', NULL),
(46, 4, 14, 'Canon EOS R10 Mirrorless Camera Body with RF-S 18-45mm (Black)', 'Canon', 81490, 92995, '<ul><li>Model Name-EOS R10</li><li>Effective Pixels-24.2 MP</li><li>Sensor Type-CMOS</li><li>Shutter Speed-1/4000-30sec</li><li>Power Requirement-AC adapter</li><li>Batteries Included-Yes</li></ul>', 'Canon1.jpeg', 'Canon2.jpeg', 'Canon3.jpeg', 0, 'In Stock', '2024-03-16 15:56:07', NULL),
(47, 4, 16, 'Samsung Galaxy Tab S9 FE+ 8.0 RAM 128GB ROM 12.4Inch(Gray)', 'Samsung', 45999, 59999, '<ul><li>Model Name-Galaxy Tab S9 FE+</li><li>OS-Android</li><li>RAM-8.0GB</li><li>Display Resolution-2560 x 1600 Pixel</li><li>Internal Storage-128GB</li><li>Warranty-1 Year</li></ul>', 'Samsung Tab1.jpeg', 'Samsung Tab2.jpeg', 'Samsung Tab3.jpeg', 0, 'In Stock', '2024-03-16 16:17:58', NULL),
(48, 4, 16, 'Apple iPad Pro(4th Gen) 256GB ROM 11.0 inch with Wi-Fi +5G(Space Grey)', 'Apple', 103900, 106900, '<ul><li>Model Name-iPad Pro(4th Gen)</li><li>OS-iPadOS</li><li>Display Resolution -2388 x 1668 Pixel</li><li>Digital Zoom-5x</li><li>USB-Yes,USB Type C</li><li>Display-264 PPI</li><li>Warranty-1 Year</li></ul>', 'iPad1.jpeg', 'iPad2.jpeg', 'iPad3.jpeg', 99, 'In Stock', '2024-03-16 16:36:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(3, 4, 'Smart TV', '2017-01-26 16:29:09', '05-03-2024 11:59:18 AM'),
(4, 4, 'Mobiles', '2017-01-30 16:55:48', ''),
(6, 4, 'Laptops', '2017-02-04 04:13:00', ''),
(14, 4, 'Camera', '2024-03-16 10:14:24', NULL),
(16, 4, 'Tablet', '2024-03-16 16:02:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
