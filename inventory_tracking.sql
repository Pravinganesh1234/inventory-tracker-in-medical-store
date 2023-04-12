-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2023 at 12:04 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_tracking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`id`, `name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add admin_details', 7, 'add_admin_details'),
(26, 'Can change admin_details', 7, 'change_admin_details'),
(27, 'Can delete admin_details', 7, 'delete_admin_details'),
(28, 'Can view admin_details', 7, 'view_admin_details'),
(29, 'Can add bill', 8, 'add_bill'),
(30, 'Can change bill', 8, 'change_bill'),
(31, 'Can delete bill', 8, 'delete_bill'),
(32, 'Can view bill', 8, 'view_bill'),
(33, 'Can add inventory', 9, 'add_inventory'),
(34, 'Can change inventory', 9, 'change_inventory'),
(35, 'Can delete inventory', 9, 'delete_inventory'),
(36, 'Can view inventory', 9, 'view_inventory'),
(37, 'Can add product', 10, 'add_product'),
(38, 'Can change product', 10, 'change_product'),
(39, 'Can delete product', 10, 'delete_product'),
(40, 'Can view product', 10, 'view_product'),
(41, 'Can add purchase', 11, 'add_purchase'),
(42, 'Can change purchase', 11, 'change_purchase'),
(43, 'Can delete purchase', 11, 'delete_purchase'),
(44, 'Can view purchase', 11, 'view_purchase'),
(45, 'Can add customer', 12, 'add_customer'),
(46, 'Can change customer', 12, 'change_customer'),
(47, 'Can delete customer', 12, 'delete_customer'),
(48, 'Can view customer', 12, 'view_customer'),
(49, 'Can add supplier', 13, 'add_supplier'),
(50, 'Can change supplier', 13, 'change_supplier'),
(51, 'Can delete supplier', 13, 'delete_supplier'),
(52, 'Can view supplier', 13, 'view_supplier'),
(53, 'Can add productdetails', 14, 'add_productdetails'),
(54, 'Can change productdetails', 14, 'change_productdetails'),
(55, 'Can delete productdetails', 14, 'delete_productdetails'),
(56, 'Can view productdetails', 14, 'view_productdetails'),
(57, 'Can add product_ajax', 15, 'add_product_ajax'),
(58, 'Can change product_ajax', 15, 'change_product_ajax'),
(59, 'Can delete product_ajax', 15, 'delete_product_ajax'),
(60, 'Can view product_ajax', 15, 'view_product_ajax');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` bigint(20) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(25) NOT NULL,
  `customer_id` int(4) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(40) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `rate` varchar(10) NOT NULL,
  `total` varchar(20) NOT NULL,
  `gst` int(11) NOT NULL,
  `net_amt` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `bill_id`, `date`, `prod_id`, `prod_name`, `customer_id`, `customer`, `mobile`, `address`, `quantity`, `rate`, `total`, `gst`, `net_amt`) VALUES
(10, 201, '2023-04-03', 10, 'asus', 501, 'gopal', '0897744993', 'andhra', '5', '12000', '12005', 500, '12505'),
(11, 202, '2023-04-03', 11, 'realme 5', 502, 'arun', '0897744993', 'kerla', '5', '12000', '12005', 500, '12505'),
(12, 203, '2023-04-09', 10, 'asus', 501, 'gopal', '0908899123', 'chennai, Tamil Nadu.', '2', '12000', '12002', 500, '12502');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customer_id` int(4) NOT NULL,
  `name` varchar(40) NOT NULL,
  `gst_no` int(15) NOT NULL,
  `contact` int(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_id`, `name`, `gst_no`, `contact`, `email`, `address`) VALUES
(4, 501, 'gopal', 44544, 2147483647, 'gopal@gmail.com', 'andhra'),
(5, 502, 'arun', 23423, 2147483647, 'arun@gmail.com', 'kerla'),
(6, 503, 'vignesh', 445332, 998997332, 'vignesh@gmail.com', 'cbe');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'app', 'admin_details'),
(8, 'app', 'bill'),
(12, 'app', 'customer'),
(9, 'app', 'inventory'),
(10, 'app', 'product'),
(14, 'app', 'productdetails'),
(15, 'app', 'product_ajax'),
(11, 'app', 'purchase'),
(13, 'app', 'supplier'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-24 12:55:34.632283'),
(2, 'auth', '0001_initial', '2023-03-24 12:55:35.109757'),
(3, 'admin', '0001_initial', '2023-03-24 12:55:35.207562'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-24 12:55:35.219845'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-24 12:55:35.230433'),
(6, 'app', '0001_initial', '2023-03-24 12:55:35.250469'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-03-24 12:55:35.310446'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-03-24 12:55:35.358766'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-03-24 12:55:35.380902'),
(10, 'auth', '0004_alter_user_username_opts', '2023-03-24 12:55:35.389850'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-03-24 12:55:35.431038'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-03-24 12:55:35.436611'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-03-24 12:55:35.447749'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-03-24 12:55:35.465107'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-03-24 12:55:35.485095'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-03-24 12:55:35.509349'),
(17, 'auth', '0011_update_proxy_permissions', '2023-03-24 12:55:35.524485'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-03-24 12:55:35.541911'),
(19, 'sessions', '0001_initial', '2023-03-24 12:55:35.564641'),
(20, 'app', '0002_bill_inventory_product_purchase', '2023-03-25 05:00:46.364562');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3di6vr1sgphfojfya1i35k2torp8uyfg', 'eyJhZG1pbl9uYW1lIjoiYWRtaW4ifQ:1phYm9:-Ik-a_hNw9b9xQMF1qjRW1PhNfii38Ip9EzuQJ-mIn4', '2023-04-12 16:35:53.629361'),
('a83br08q8knom5u30tpkmlnrx8i9l0bx', 'eyJhZG1pbl9uYW1lIjoiYWRtaW4ifQ:1pjLcI:0hfvm6ksvmNUAlLzDOE0FA44W_PwybsQtjOopLg0x9M', '2023-04-17 14:57:06.885566'),
('dypqn5je9c7vf5kkntlx217ylraqt1jo', 'eyJhZG1pbl9uYW1lIjoiYWRtaW4ifQ:1plPMp:EVe44p3295DA5uouRK0wGIgyCpq1XLJdiCblPOMwANU', '2023-04-23 07:21:39.815263'),
('ey6px487ufb1lgcc78d85kq8fpf2qvgm', 'eyJhZG1pbl9uYW1lIjoiYWRtaW4ifQ:1pjGm8:vImTnNzSKWaHwfonoc6JLS9u3G752tWCg1226eByRO0', '2023-04-17 09:46:56.452028'),
('h605h9jgryvq4kx0zfvr9393mfrb6a05', 'eyJhZG1pbl9uYW1lIjoiYWRtaW4ifQ:1pfxUI:c0VO7hc6vZSzyqQA0wf3q3qlXXIfhCx_2ou0j-XZHJE', '2023-04-08 06:34:50.800622'),
('keudyd172gd4le0mh40b8hlzo1etm9ej', 'eyJhZG1pbl9uYW1lIjoiYWRtaW4ifQ:1piXHR:8BXB65wyzZ4VlIr5alppgC7xx1rTW-oXIAA7Ghr-w0I', '2023-04-15 09:12:13.591056'),
('ofkug2pz11si1prwf6v1gtatqnjesigr', 'eyJhZG1pbl9uYW1lIjoiYWRtaW4ifQ:1piYPS:U2KGPGUcUVq5r_cvEkQAn79oiemFnO8uoYkiRtXXfUs', '2023-04-15 10:24:34.827952'),
('qmp8hms5t2cht6zkcvgbcj0w3k0gvr7o', 'eyJhZG1pbl9uYW1lIjoiYWRtaW4ifQ:1ph6OQ:GQO9RVxQndsUEdAOSV69C8taxarC_jcXtVoWRqjqgaE', '2023-04-11 10:17:30.599558'),
('scy2rufgq93ubxkhog3kzcgq5l6f4ai5', 'eyJhZG1pbl9uYW1lIjoiYWRtaW4ifQ:1phWDP:5wynTVendWmYMOkUPLVQiazOvfujiCKa_v8bcNnbveA', '2023-04-12 13:51:51.905990'),
('tr2nktxux8x8nbk9wfduwfzzjdbs2a2b', 'eyJhZG1pbl9uYW1lIjoiYWRtaW4ifQ:1piXEL:5JRGUzJ-ooVkB-1LHFGKkdXmGYSMz9-_L4dv26Bw1dw', '2023-04-15 09:09:01.013147');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` bigint(20) NOT NULL,
  `invent_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(40) NOT NULL,
  `stock_hand` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `invent_id`, `prod_id`, `prod_name`, `stock_hand`) VALUES
(1, 1, 10, 'asus', 7),
(2, 2, 11, 'realme 5', 5),
(3, 3, 10, 'asus', 10);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_type` varchar(20) NOT NULL,
  `prod_name` varchar(40) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `description` longtext NOT NULL,
  `manf_date` date NOT NULL,
  `exp_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `prod_id`, `prod_type`, `prod_name`, `unit`, `description`, `manf_date`, `exp_date`) VALUES
(10, 10, 'Mobile', 'asus', '12', 'mobile', '2023-05-06', '2023-04-21'),
(11, 11, 'Mobile', 'realme 5', '10', 'mobile', '2023-04-29', '2023-04-14');

-- --------------------------------------------------------

--
-- Table structure for table `product_ajax`
--

CREATE TABLE `product_ajax` (
  `id` int(11) NOT NULL,
  `pr_id` varchar(100) NOT NULL,
  `pr_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_ajax`
--

INSERT INTO `product_ajax` (`id`, `pr_id`, `pr_name`) VALUES
(1, '10', 'asus'),
(2, '11', 'realme 5'),
(3, '10508', 'kjhk');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` bigint(20) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `date` varchar(15) NOT NULL,
  `supplier_id` varchar(20) NOT NULL,
  `supplier_name` varchar(20) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(20) NOT NULL,
  `received_qty` varchar(10) NOT NULL,
  `rate` int(11) NOT NULL,
  `tot_amt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `purchase_id`, `date`, `supplier_id`, `supplier_name`, `prod_id`, `prod_name`, `received_qty`, `rate`, `tot_amt`) VALUES
(1, 101, '2023-03-11T13:2', '201', 'ajay', 11, 'dress', '500', 1200, 60000),
(2, 102, '2023-03-03', '202', 'priya', 102, '104', '500', 1200, 1700);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `supplier_id` int(4) NOT NULL,
  `name` varchar(40) NOT NULL,
  `gst_no` int(15) NOT NULL,
  `contact` int(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `supplier_id`, `name`, `gst_no`, `contact`, `email`, `address`) VALUES
(1, 1001, 'jeeva', 12334, 2147483647, 'jeeva@gmail.com', 'trichy'),
(2, 1002, 'david', 98098, 2147483647, 'david@gmail.com', 'chennai'),
(3, 801, 'divya', 9090, 2147483647, 'divya@gmail.com', 'chennai'),
(4, 801, 'divya', 9090, 2147483647, 'divya@gmail.com', 'chennai'),
(5, 802, 'ram', 9828, 2147483647, 'ram@gmail.com', 'chennai'),
(6, 803, 'priya', 90999, 998997322, 'priya@gmail.com', 'kerla');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_ajax`
--
ALTER TABLE `product_ajax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_ajax`
--
ALTER TABLE `product_ajax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
