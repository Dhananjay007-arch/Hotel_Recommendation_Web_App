-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2020 at 05:08 PM
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
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `userfirstname` varchar(100) NOT NULL,
  `userlastname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `userfirstname`, `userlastname`, `password`, `id`) VALUES
('admin', 'Dhananjay', 'Joijode', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobileno` varchar(255) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `name`, `mobileno`, `checkin`, `checkout`) VALUES
(1, 'Dhananjay Joijode', '7769052848', '2020-12-09', '2020-12-10'),
(2, 'Dhananjay Joijode', '7769052848', '2020-12-10', '2020-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(512) NOT NULL,
  `pricemax` int(255) NOT NULL,
  `description` varchar(512) NOT NULL,
  `facility` varchar(512) NOT NULL,
  `location` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `checkin` varchar(255) NOT NULL,
  `checkout` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `name`, `price`, `pricemax`, `description`, `facility`, `location`, `img`, `checkin`, `checkout`) VALUES
(1, 'Aerith Studios', '1529', 2000, 'Comfortable apartment with balcony, near Phoenix Market City', 'Premium Studio Suite, 1 Double Bed, Accessible, City View', 'Pune', '1.jpg', '', ''),
(2, 'Aman Hotel CST', '1529', 2000, '3-star hotel, steps from Mohammed Ali Road', 'All rooms include Free WiFi, free cancellation, separate beds', 'Mumbai', '2.jpg', '', ''),
(3, 'Astoria Hotel, Mumbai', '7280', 7500, '3-star hotel with restaurant, near Wankhede Stadium', 'Daily housekeeping, Restaurant, Free WIFI', 'Mumbai', '3.jpg', '', ''),
(4, 'Blue Diamond - IHCL SeleQtions', '3749', 4000, 'Luxury hotel with 3 restaurants, near Aga Khan Palace', 'Free WiFi, Free parking, Pool, Airport transfer, Non-smoking, Gym, Air Conditioning', 'Pune', '4.jpg', '', ''),
(5, 'Capital O 48136 Sahara', '2458', 2500, '3-star Pune hotel with restaurant', 'Free WiFi and free parking, Free cancellation.', 'Pune', '5.jpg', '', ''),
(6, 'CELEBRATIONS INN\r\n', '1454\r\n', 1500, '3-star hotel in Pune with restaurant and bar/lounge\r\n', 'Free WiFi, Free parking\r\n', 'Pune', '6.jpg', '', ''),
(7, 'Centro\r\n', '2470', 2500, '3.5-star hotel with restaurant, near Shaniwar Wada\r\n', 'Free WiFi and free parking, Free cancellation\r\n', 'Pune', '7.jpg', '', ''),
(8, 'Citizen Hotel\r\n', '3250', 3500, 'Adults-only beachfront hotel with restaurant, near Juhu Beach\r\n', 'Free WiFi, Free parking, Airport transfer, Air Conditioning\r\n', 'Mumbai', '8.jpg', '', ''),
(9, 'Conrad Pune by Hilton\r\n', '9350', 9500, 'Luxury hotel with 6 restaurants, near Business Bay\r\n', 'Free parking, Pool, Airport transfer, Bathtub, Gym, Air Conditioning\r\n', 'Pune\r\n', '9.jpg', '', ''),
(10, 'Courtyard by Marriott Mumbai\r\n', '4850', 5000, 'Luxury hotel with spa, near Santacruz Electronic Export Processing Zone\r\n', 'Free WiFi, Free parking, Pool, Airport transfer, Non-smoking, Gym, Air Conditioning\r\n', 'Mumbai', '10.jpg', '', ''),
(11, 'Courtyard by Marriott Pune\r\n', '5800', 6000, '4-star Pune hotel with outdoor pool, connected to the convention center\r\n', 'Free WiFi, Pool, Airport Transfer, Gym, Air Conditioning\r\n', 'Pune', '11.jpg', '', ''),
(12, 'Crowne Plaza Pune City Centre\r\n', '18413', 18500, 'Luxury hotel with 3 restaurants, near Tribal Museum\r\n', 'Free WiFi, Free parking, Pool, Airport transfer, Bathtub, Gym, Air Conditioning\r\n', 'Pune', '12.jpg', '', ''),
(13, 'Doubletree By Hilton\r\n', '7000\r\n', 7000, 'Suburban hotel in Pune with 3 restaurants and spa\r\n', 'Free WiFi, Free parking, Pool, Airport transfer, Air Conditioning\r\n', 'Pune', '13.webp', '', ''),
(14, 'Elita Rooms\r\n', '2319', 2500, 'In the heart of Nagpur\r\n', 'Free WiFi, Free parking, Non-smoking, Air Conditioning\r\n', 'Nagpur', '14.jpg', '', ''),
(15, 'FabExpress Loharkar\'s II\r\n', '9500', 9500, 'Comfortable Nagpur guestrooms with fireplaces\r\n', 'Free WiFi, Free parking, Non-smoking, Air Conditioning\r\n', 'Nagpur', '15.jpg', '', ''),
(16, 'FabHotel Ashish Plaza\r\n', '2312', 2500, 'One of the most affordable hotel located at prime location at FC Road, Pune.\r\n', 'Free Wi-Fi, Free breakfast, Free parking, Air-conditioned, Laundry service, Room service\r\n', 'Pune', '16.jpg', '', ''),
(17, 'FabHotel Ashiyana\r\n', '3106', 3500, 'Hotel connected to a shopping center, within easy reach of Shaniwar Wada\r\n', 'Free WiFi, Free parking, Non-smoking, Air Conditioning\r\n', 'Pune', '17.webp', '', ''),
(18, 'Four Points by Sheraton\r\n', '4199', 4500, 'Luxury hotel with full-service spa, connected to a shopping center, near Inorbit Mall\r\n', 'Free WiFi, Free parking, Pool, Airport transfer, Gym, Air Conditioning\r\n', 'Mumbai', '18.jpg', '', ''),
(19, 'Four Seasons Hotel Mumbai\r\n', '5999', 6000, 'Luxury hotel with spa, near High Street Phoenix Mall\r\n', 'Free WiFi, Free parking, Pool, Airport transfer, Bathtub, Non-smoking, Gym, Air Conditioning\r\n', 'Mumbai', '19.webp', '', ''),
(20, 'Ginger Pune Pimpri\r\n', '2549', 3000, 'City-center Pune hotel with restaurant\r\n', 'Free WiFi, Free parking, Airport transfer, Gym, Air Conditioning\r\n', 'Pune', '20.jpg', '', ''),
(21, 'Grand Hyatt Mumbai\r\n', '5999', 6000, 'Luxury hotel with 4 restaurants, near Bandra Kurla Complex\r\n', 'Free WiFi, Free parking, Pool, Airport transfer, Bathtub, Gym, Air Conditioning\r\n', 'Mumbai', '21.webp', '', ''),
(22, 'Hexa Magnet\r\n', '1995', 2000, 'Convenient to Powai Lake\r\n', 'Free WiFi, Free parking, Air Conditioning\r\n', 'Mumbai', '22.jpg', '', ''),
(23, 'Hotel Amrta,(Renovated)\r\n', '2200', 2500, 'Central Nagpur hotel with restaurant, connected to a shopping center\r\n', 'Free WiFi, Non-smoking, Air Conditioning\r\n', 'Nagpur', '23.jpg', '', ''),
(24, 'Hotel Beacon T2\r\n', '3419', 3500, '3-star hotel with restaurant, near Bandra Kurla Complex\r\n', 'Free WiFi, Free parking, Non-smoking, Air Conditioning\r\n', 'Mumbai', '24.jpg', '', ''),
(25, 'HOTEL BINDRA SUPREMACY\r\n', '3120', 3500, '3.5-star hotel in Mumbai with restaurant and bar/lounge\r\n', 'Free breakfast, Free WiFi, Free parking, Airport transfer, Non-smoking\r\n', 'Mumbai', '25.jpg', '', ''),
(26, 'Hotel BKC Garden\r\n', '2024', 2500, '3-star hotel within walking distance of U.S. Consulate General\r\n', '30 smoke-free guestrooms, 24-hour room service, 24-hour front desk, Free WiFi', 'Mumbai', '26.jpg', '', ''),
(27, 'Hotel Brijinn\r\n', '3500', 4000, '3-star hotel with restaurant, near Raman Science Centre\r\n', 'Free breakfast, Free WiFi, Free parking, Air Conditioning', 'Nagpur', '27.jpg', '', ''),
(28, 'Hotel Centre Point\r\n', '11250', 11500, '3.5-star hotel in Ramdaspeth with 2 restaurants and spa\r\n', 'Free WiFi, Free parking, Pool, Airport transfer, Non-smoking, Gym, Air Conditioning', 'Nagpur', '28.jpg', '', ''),
(29, 'HOTEL CHANAKYA\r\n', '1400', 1500, 'MODI NO.3, SITA BULDI, Nagpur, MAHARASHTRA, 440012, India\r\n', 'Free WiFi, Air Conditioning', 'Nagpur', '29.jpg', '', ''),
(30, 'Hotel Flora Inn\r\n', '2450', 2500, 'Nagpur property with conference center\r\n', 'Free WiFi, Air Conditioning\r\n', 'Nagpur', '30.jpg', '', ''),
(31, 'Hotel Haveli\r\n', '1223', 1500, 'No-frills hotel in Bhosari with restaurant\r\n', 'Free parking, Airport transfer', 'Pune', '31.jpg', '', ''),
(32, 'Hotel Leafio Marigold\r\n', '2125', 2500, '3-star hotel in Marol with restaurant\r\n', 'Free WiFi, Airport transfer, Non-smoking, Air Conditioning', 'Mumbai', '32.jpg', '', ''),
(33, 'Hotel Meriton\r\n', '1250', 1500, '3-star hotel, convenient for kids\r\n', 'Free WiFi, Free parking, Non-smoking, Air Conditioning', 'Mumbai', '33.jpg', '', ''),
(34, 'Hotel Oriental Aster\r\n', '2500', 3000, '3.5-star hotel in Mumbai with restaurant and bar/lounge\r\n', 'Free WiFi, Free parking, Air Conditioning\r\n', 'Mumbai', '34.jpg', '', ''),
(35, 'Hotel Rahul\r\n', '2400', 2500, 'No-frills hotel in Nagpur\r\n', '40 guestrooms, Daily housekeeping, Room service, 24-hour front desk, Free Internet\r\n', 'Nagpur', '35.jpg', '', ''),
(36, 'Hotel Rajmahal\r\n', '3400', 3500, 'Hotel with restaurant, near Saras Baug\r\n', 'Free WiFi, Free parking, Non-smoking\r\n', 'Pune', '36.jpg', '', ''),
(37, 'Hotel Regal Enclave\r\n', '3500', 4000, 'Central hotel with full-service spa, connected to a shopping center, near Juhu Beach\r\n', 'Free WiFi, Free parking, Pool, Airport transfer, Non-smoking, Gym, Air Conditioning\r\n', 'Mumbai', '37.jpg', '', ''),
(38, 'Hotel Satya Townhouse\r\n', '1200', 1500, '3-star Nagpur hotel with restaurant\r\n', 'Free WiFi, Free parking, Air Conditioning\r\n', 'Nagpur', '38.jpg', '', ''),
(39, 'Hotel Srimaan\r\n', '1980', 2000, '3-star hotel with restaurant, near Aga Khan Palace\r\n', 'Free WiFi, Free parking, Bathtub, Non-smoking, Air Conditioning\r\n', 'Pune', '39.jpg', '', ''),
(40, 'Hotel Suba International\r\n', '6500', 7000, '4-star hotel in Mumbai with restaurant and health club\r\n', 'Free WiFi, Free parking, Airport transfer, Non-smoking, Gym, Air Conditioning\r\n', 'Mumbai', '40.jpg', '', ''),
(41, 'Hotel Swan Inn\r\n', '2200', 2500, 'Hotel with restaurant, near Shaniwar Wada\r\n', 'Free breakfast, Free WiFi, Free parking, Airport transfer\r\n', 'Pune', '41.jpg', '', ''),
(42, 'Hotel West Inn\r\n', '1250', 1500, '3-star hotel in Sakinaka\r\n', 'Free WiFi, Air Conditioning\r\n', 'Mumbai', '42.jpg', '', ''),
(43, 'Hyatt Pune\r\n', '4000', 4500, 'Luxury hotel with 2 restaurants, near Aga Khan Palace\r\n', 'Free WiFi, Free parking., Pool, Airport transfer, Gym, Air Conditioning\r\n', 'Pune', '43.jpg', '', ''),
(44, 'Hyatt Regency Mumbai\r\n', '4600', 5000, 'Luxury hotel in Mumbai with 2 restaurants and spa\r\n', 'Free WiFi, Free parking, Pool, Airport transfer, Bathtub, Gym, Air Conditioning\r\n', 'Mumbai', '44.jpg', '', ''),
(45, 'Iris Hotel\r\n', '1500', 2000, '3-star hotel, convenient to Aga Khan Palace\r\n', 'Free WiFi, Free parking\r\n', 'Pune', '45.jpg', '', ''),
(46, 'ITC Grand Central\r\n', '4000', 4500, 'Luxury hotel with 3 restaurants, near Tata Memorial Hospital\r\n', 'Free WiFi, Free parking, Pool, Airport transfer, Bathtub, Non-smoking, Gym, Air Conditioning\r\n', 'Mumbai', '46.jpg', '', ''),
(47, 'JK Rooms 101 Hotel Asian Inn\r\n', '4000', 4500, '3-star hotel in Nagpur\r\n', 'Free WiFi, Free parking, Non-smoking, Air Conditioning\r\n', 'Nagpur', '47.jpg', '', ''),
(48, 'JK Rooms 103 Loharkars Hotel\r\n', '2800', 3000, '3-star hotel in Nagpur with health club and conference center\r\n', 'Free breakfast, Free WiFi, Free parking, Non-smoking, Gym\r\n', 'Nagpur', '48.jpg', '', ''),
(49, 'JK Rooms 146\r\n', '3407', 3500, 'No-frills Nagpur guestrooms with memory foam beds\r\n', 'Free breakfast, Free WiFi, Free parking\r\n', 'Nagpur', '49.jpg', '', ''),
(50, 'JW Marriott Mumbai Sahar\r\n', '5500', 6000, 'Luxury hotel with full-service spa, connected to the convention center, near Phoenix Market City Mall\r\n', 'Free WiFi, Free parking, Pool, Airport transfer, Bathtub, Gym, Air Conditioning\r\n', 'Mumbai', '50.jpg', '', ''),
(51, 'Keys Select Pimpri\r\n', '2640', 3000, '3-star hotel in Pimpri Colony with restaurant and bar/lounge\r\n', 'Free WiFi, Free parking, Airport transfer, Non-smoking, Gym, Air Conditioning\r\n', 'Pune', '51.jpg', '', ''),
(52, 'KF Residency\r\n', '1800', 2000, 'Within easy reach of Bandra Kurla Complex\r\n', 'Free breakfast, Free WiFi, Airport transfer, Non-smoking, Air Conditioning\r\n', 'Mumbai', '52.jpg', '', ''),
(53, 'Le Meridien Nagpur\r\n', '4399', 4500, 'Luxury hotel in Nagpur with outdoor pool and pool bar\r\n', 'Free WiFi, Pool, Airport transfer, Bathtub, Non-smoking, Gym, Air Conditioning\r\n', 'Nagpuur', '53.jpg', '', ''),
(54, 'Lemon Tree Hotel\r\n', '2499', 2500, '4-star hotel with restaurant, near Phoenix Market City\r\n', 'Free WiFi, Free parking, Non-smoking, Gym, Air Conditioning\r\n', 'Pune', '54.jpg', '', ''),
(55, 'Mandarin Resort, Hingana\r\n', '4548', 4500, 'Art Deco resort in Hingana with 2 restaurants and free water park\r\n', 'Free breakfast, Free WiFi, Free parking, Pool, Gym, Air Conditioning\r\n', 'Nagpur', '55.jpg', '', ''),
(56, 'Mango Hotels Nagpur\r\n', '2800', 3000, '3-star Nagpur hotel with restaurant\r\n', 'Free WiFi, Free parking, Non-smoking, Air Conditioning\r\n', 'Nagpur', '56.jpg', '', ''),
(57, 'Mapple Adhwryou Pune\r\n', '6667', 7000, '3.5-star hotel in Pune with 2 restaurants and bar/lounge\r\n', 'Free breakfast, Free WiFi, Free parking, Airport transfer, Bathtub, Air Conditioning\r\n', 'Pune', '57.jpg', '', ''),
(58, 'Maurya Residency\r\n', '1250', 1500, 'Within easy reach of Shaniwar Wada\r\n', 'Free parking, Non-smoking\r\n', 'Pune', '58.jpg', '', ''),
(59, 'Novotel Hotel\r\n', '6300', 6500, 'Luxury resort with outdoor pool, connected to a shopping center, near Juhu Beach\r\n', 'Free WiFi, Free parking, Pool, Airport transfer, Gym, Air Conditioning\r\n', 'Mumbai', '59.jpg', '', ''),
(60, 'OYO 603 Hotel Swasti\r\n', '2889', 3000, 'Within easy reach of Shaniwar Wada\r\n', 'Free breakfast, Parking, Air-conditioned, Laundry service, Room service, Child friendly\r\n', 'Pune', '60.jpg', '', ''),
(61, 'OYO 4381 Hotel Parashar\r\n', '1694', 2000, '3-star Nagpur hotel with restaurant\r\n', 'Free breakfast, Free WiFi, Free parking, Bathtub, Air Conditioning\r\n', 'Nagpur', '61.jpg', '', ''),
(62, 'OYO 6433 Hotel Check Inn\r\n', '1742', 2000, 'No-frills hotel in Nagpur\r\n', 'Breakfast, Parking, Air-conditioned, Laundry service, Room service, Child friendly\r\n', 'Nagpur', '62.jpg', '', ''),
(63, 'OYO 7275 Excellent Homes\r\n', '2308', 2500, 'No-frills hotel in Pune', 'Free breakfast, Free WiFi, Free parking, Bathtub, Non-smoking, Air Conditioning\r\n', 'Pune', '63.jpg', '', ''),
(64, 'OYO 18305 Trance', '3145', 3500, 'No-frills hotel in Nagpur\r\n', 'Free breakfast, Free WiFi, Bathtub, Non-smoking, Air Conditioning\r\n', 'Nagpur', '64.jpg', '', ''),
(65, 'OYO 26499 Check Inn\r\n', '2744', 3000, '3-star hotel in Nagpur', 'Free breakfast, Free WiFi, Free parking, Bathtub, Non-smoking\r\n', 'Nagpur', '65.jpg', '', ''),
(66, 'OYO 29093 Hotel A3 & Restaurant\r\n', '2421', 2500, 'No-frills hotel in Nagpur\r\n', 'Free breakfast, Free parking, Bathtub, Non-smoking, Air Conditioning\r\n', 'Nagpur', '66.jpg', '', ''),
(67, 'IHCL SeleQtions', '4000', 4500, 'Luxury hotel with full-service spa, connected to the convention center, near Colaba Causeway\r\n', 'Free WiFi, Free parking, Pool, Airport transfer, Air Conditioning\r\n', 'Mumbai', '67.jpg', '', ''),
(68, 'Pride Hotel\r\n', '3832', 4000, 'Luxury hotel with 2 restaurants, near Shaniwar Wada\r\n', 'Free WiFi, Free parking, Pool, Airport transfer, Bathtub, Gym, Air Conditioning\r\n', 'Pune', '68.jpg', '', ''),
(69, 'Radisson Blu Hotel Nagpur\r\n', '13154', 13500, 'Luxury hotel in Nagpur with 5 restaurants and outdoor pool\r\n', 'Free WiFi, Free parking, Pool, Airport transfer, Bathtub, Gym, Air Conditioning\r\n', 'Nagpur', '69.jpg', '', ''),
(70, 'Radisson Blu Pune Hinjawadi\r\n ', '4419', 4500, 'Luxury hotel in Phase 1 with 2 restaurants and spa\r\n', 'Free breakfast, Free WiFi, Free parking, Pool, Airport transfer, Gym, Air Conditioning\r\n', 'Pune', '70.jpg', '', ''),
(71, 'Raj Mahal Hotel\r\n', '1500', 2000, 'No-frills hotel in Nagpur\r\n', 'Free WiFi, Free parking, Air Conditioning\r\n', 'Nagpur', '71.jpg', '', ''),
(72, 'Ramee Guestline Hotel Khar\r\n ', '3510', 4000, 'Suburban hotel within easy reach of Juhu Beach\r\n', 'Free WiFi, Free parking, Bathtub, Non-smoking, Air Conditioning\r\n', 'Mumbai', '72.jpg', '', ''),
(73, 'Regenta Hotel\r\n', '15000\r\n', 15500, '3.5-star hotel in Nagpur with restaurant and bar/lounge\r\n', 'Free WiFi, Free parking, Pool, Non-smoking, Air Conditioning\r\n', 'Nagpur', '73.jpg', '', ''),
(74, 'Royal Palms\r\n', '3064', 3500, '3-star hotel, convenient to Film City\r\n', 'Free breakfast, Free WiFi, Free parking, Non-smoking, Air Conditioning', 'Mumbai', '74.jpg', '', ''),
(75, 'Sai Guest House\r\n', '1800', 2000, 'In the heart of Nagpur\r\n', 'Free WiFi, Free parking, Airport transfer, Non-smoking, Air Conditioning\r\n', 'Nagpur', '75.jpg', '', ''),
(76, 'Sayaji Pune\r\n', '4002', 4500, 'Luxury hotel with restaurant, near Balewadi Sports Complex\r\n', 'Free breakfast, Free WiFi, Free parking, Airport transfer, Gym, Air Conditioning\r\n', 'Pune', '76.jpg', '', ''),
(77, 'Sheraton Grand Pune', '6500', 7000, 'Luxury hotel with spa, near Shaniwar Wada\r\n', 'Free WiFi, Free parking, Pool, Airport transfer, Non-smoking, Gym, Air Conditioning\r\n', 'Pune', '77.jpg', '', ''),
(78, 'Sky suites by Monarch\r\n', '2353', 3000, 'Sanpada property\r\n', 'Free WiFi, Non-smoking, Air Conditioning\r\n', 'Mumbai', '78.jpg', '', ''),
(79, 'Sofitel Mumbai BKC Hotel\r\n', '4907', 5000, 'Luxury hotel with full-service spa, connected to the airport, near Bandra Kurla Complex\r\n', 'Free WiFi, Free parking, Pool, Airport transfer, Bathtub, Non-smoking, Gym, Air Conditioning\r\n', 'Mumbai', '79.jpg', '', ''),
(80, 'T24 Residency\r\n', '3624', 4000, '4-star hotel in Marol with outdoor pool and restaurant\r\n', 'Free WiFi, Pool, Airport transfer, Air Conditioning\r\n', 'Mumbai', '80.jpg', '', ''),
(81, 'Taj Lands End\r\n', '5750', 6000, 'Luxury hotel with spa, near Lilavati Hospital', 'Free WiFi\r\nFree parking\r\nPool\r\nAirport transfer\r\nBathtub\r\nGym\r\nAir Conditioning', 'Mumbai', '81.jpg', '', ''),
(82, 'Taj Mahal Tower\r\n', '7500', 8000, 'Luxury hotel with spa, near Colaba Causeway', 'Free WiFi\r\nFree parking\r\nPool\r\nAirport transfer\r\nNon-smoking\r\nGym\r\nAir Conditioning', 'Mumbai', '82.jpg', '', ''),
(83, 'Taj Santacruz\r\n', '4500', 5000, 'Luxury hotel with spa, near University of Mumbai', 'Free WiFi\r\nFree parking\r\nPool\r\nAirport transfer\r\nBathtub\r\nGym\r\nAir Conditioning', 'Mumbai', '83.jpg', '', ''),
(84, 'The Corinthians Resort & Club\r\n', '4399', 4500, 'Luxury Pune hotel with full-service spa, connected to a shopping center', 'Free breakfast\r\nFree WiFi\r\nFree parking\r\nPool\r\nAirport transfer\r\nGym\r\nAir Conditioning', 'Pune', '84.jpg', '', ''),
(85, 'The Leela Mumbai\r\n', '4299', 4500, 'Luxury hotel in Mumbai with 4 restaurants and spa\r\n', 'Free parking\r\nPool\r\nAirport transfer\r\nBathtub\r\nGym\r\nAir Conditioning', 'Mumbai', '85.jpg', '', ''),
(86, 'The Majestic Manor\r\n', '2513', 3000, '3-star Nagpur hotel with restaurant\r\n', 'Free WiFi\r\nFree parking\r\nAirport transfer\r\nNon-smoking\r\nAir Conditioning', 'Nagpur', '86.jpg', '', ''),
(87, 'The Nagpur Ashok\r\n', '3800', 4000, '3-star hotel in Nagpur with restaurant and bar/lounge\r\n', 'Free breakfast\r\nFree WiFi\r\nFree parking\r\nAirport transfer\r\nAir Conditioning', 'Nagpur', '87.jpg', '', ''),
(88, 'The Orchid Hotel Pune\r\n', '3799', 4000, '3.5-star hotel in Paud\r\n', 'Free WiFi\r\nAirport transfer\r\nBathtub\r\nNon-smoking\r\nGym\r\nAir Conditioning', 'Pune', '88.jpg', '', ''),
(89, 'The Orritel Hotel\r\n', '1799', 2000, '3-star hotel in Paud with spa and restaurant\r\n', 'Free WiFi\r\nFree parking\r\nAirport transfer\r\nGym\r\nAir Conditioning', 'Pune', '89.jpg', '', ''),
(90, 'The Paradise by Tunga\r\n', '2672', 3000, '3.5-star hotel in Mumbai with 2 restaurants and bar/lounge\r\n', 'Free WiFi\r\nFree parking\r\nAirport transfer\r\nNon-smoking\r\nAir Conditioning', 'Mumbai', '90.jpg', '', ''),
(91, 'The Pride Hotel Nagpur\r\n', '3715', 4000, 'Luxury hotel in Nagpur with indoor pool and bar/lounge\r\n', 'Free parking\r\nPool\r\nAirport transfer\r\nBathtub\r\nNon-smoking\r\nGym\r\nAir Conditioning', 'Nagpur', '91.jpg', '', ''),
(92, 'THE SAHIL HOTEL\r\n', '3375', 3500, '4-star hotel with restaurant, near Prince Aly Khan Hospital\r\n', 'Free WiFi\r\nFree parking\r\nAirport transfer\r\nNon-smoking\r\nGym\r\nAir Conditioning', 'Mumbai', '92.jpg', '', ''),
(93, 'The Sirona Hotel\r\n', '2500', 3000, '3-star hotel with restaurant, near Aga Khan Palace\r\n', '20 smoke-free guestrooms\r\nDaily housekeeping\r\nRestaurant and bar/lounge\r\n24-hour front desk\r\nAir conditioning', 'Pune', '93.jpg', '', ''),
(94, 'The St. Regis Mumbai\r\n', '6999', 7000, 'Luxury hotel with full-service spa, connected to a shopping center, near High Street Phoenix Mall\r\n', 'Free WiFi\r\nFree parking\r\nPool\r\nBathtub\r\nGym\r\nAir Conditioning', 'Mumbai', '94.jpg', '', ''),
(95, 'The Westin Pune Koregaon Park\r\n', '7065', 7500, 'Waterfront hotel with 2 bars/lounges, near Aga Khan Palace\r\n', 'Free WiFi\r\nFree parking\r\nPool\r\nAirport transfer\r\nBathtub\r\nGym\r\nAir Conditioning', 'Pune', '95.jpg', '', ''),
(96, 'Treebo Trend Chalets\r\n', '1550', 2000, '3-star Nagpur hotel with restaurant\r\n', 'Free breakfast\r\nFree WiFi\r\nFree parking\r\nNon-smoking\r\nAir Conditioning', 'Nagpur', '96.jpg', '', ''),
(97, 'Treebo Trend Olive Nest\r\n', '2018', 2500, '3-star hotel in Malad West with restaurant\r\n', 'Free breakfast\r\nFree WiFi\r\nFree parking\r\nNon-smoking\r\nAir Conditioning', 'Mumbai', '97.jpg', '', ''),
(98, 'Trident Bandra Kurla Mumbai', '5000', 5500, 'Suburban hotel with 3 restaurants, near Bandra Kurla Complex\r\n', 'Free WiFi\r\nFree parking\r\nPool\r\nAirport transfer\r\nBathtub\r\nGym\r\nAir Conditioning', 'Mumbai', '98.jpg', '', ''),
(99, 'Tuli Imperial\r\n', '5499', 5500, '3.5-star hotel in Sadar with outdoor pool and restaurant\r\n', 'Free breakfast\r\nFree parking\r\nPool\r\nAirport transfer\r\nGym\r\nAir Conditioning', 'Nagpur', '99.jpg', '', ''),
(100, 'Aamby Valley City', '10000', 10500, 'Luxury resort with golf course, near Aamby Valley Town Plaza\r\n', 'Free WiFi\r\nFree parking\r\nPool\r\nNon-smoking\r\nGym\r\nAir Conditioning', 'Pune', '100.webp', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'abc', 'abc@example.com', 'd8578edf8458ce06fbc5bb76a58c5ca4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
