-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 06:58 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-ecommerce-example-master`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-04-04 02:57:12', '2019-04-04 02:57:12'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-04-04 02:57:12', '2019-04-04 02:57:12');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laptops', 'laptops', '2019-04-04 02:56:50', '2019-04-04 02:56:50'),
(2, 'Desktops', 'desktops', '2019-04-04 02:56:50', '2019-04-04 02:56:50'),
(3, 'Mobile Phones', 'mobile-phones', '2019-04-04 02:56:50', '2019-04-04 02:56:50'),
(4, 'Tablets', 'tablets', '2019-04-04 02:56:50', '2019-04-04 02:56:50'),
(5, 'TVs', 'tvs', '2019-04-04 02:56:50', '2019-04-04 02:56:50'),
(6, 'Digital Cameras', 'digital-cameras', '2019-04-04 02:56:50', '2019-04-04 02:56:50'),
(7, 'Appliances', 'appliances', '2019-04-04 02:56:50', '2019-04-04 02:56:50');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 1, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 21, 1, NULL, NULL),
(22, 22, 1, NULL, NULL),
(23, 23, 1, NULL, NULL),
(24, 24, 1, NULL, NULL),
(25, 25, 1, NULL, NULL),
(26, 26, 1, NULL, NULL),
(27, 27, 1, NULL, NULL),
(28, 28, 1, NULL, NULL),
(29, 29, 1, NULL, NULL),
(30, 30, 1, NULL, NULL),
(31, 1, 2, NULL, NULL),
(32, 31, 2, NULL, NULL),
(33, 32, 2, NULL, NULL),
(34, 33, 2, NULL, NULL),
(35, 34, 2, NULL, NULL),
(36, 35, 2, NULL, NULL),
(37, 36, 2, NULL, NULL),
(38, 37, 2, NULL, NULL),
(39, 38, 2, NULL, NULL),
(40, 39, 2, NULL, NULL),
(41, 40, 3, NULL, NULL),
(42, 41, 3, NULL, NULL),
(43, 42, 3, NULL, NULL),
(44, 43, 3, NULL, NULL),
(45, 44, 3, NULL, NULL),
(46, 45, 3, NULL, NULL),
(47, 46, 3, NULL, NULL),
(48, 47, 3, NULL, NULL),
(49, 48, 3, NULL, NULL),
(50, 49, 4, NULL, NULL),
(51, 50, 4, NULL, NULL),
(52, 51, 4, NULL, NULL),
(53, 52, 4, NULL, NULL),
(54, 53, 4, NULL, NULL),
(55, 54, 4, NULL, NULL),
(56, 55, 4, NULL, NULL),
(57, 56, 4, NULL, NULL),
(58, 57, 4, NULL, NULL),
(59, 58, 5, NULL, NULL),
(60, 59, 5, NULL, NULL),
(61, 60, 5, NULL, NULL),
(62, 61, 5, NULL, NULL),
(63, 62, 5, NULL, NULL),
(64, 63, 5, NULL, NULL),
(65, 64, 5, NULL, NULL),
(66, 65, 5, NULL, NULL),
(67, 66, 5, NULL, NULL),
(68, 67, 6, NULL, NULL),
(69, 68, 6, NULL, NULL),
(70, 69, 6, NULL, NULL),
(71, 70, 6, NULL, NULL),
(72, 71, 6, NULL, NULL),
(73, 72, 6, NULL, NULL),
(74, 73, 6, NULL, NULL),
(75, 74, 6, NULL, NULL),
(76, 75, 6, NULL, NULL),
(77, 76, 7, NULL, NULL),
(78, 77, 7, NULL, NULL),
(79, 78, 7, NULL, NULL),
(80, 79, 7, NULL, NULL),
(81, 80, 7, NULL, NULL),
(82, 81, 7, NULL, NULL),
(83, 82, 7, NULL, NULL),
(84, 83, 7, NULL, NULL),
(85, 84, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent_off`, `created_at`, `updated_at`) VALUES
(1, 'ABC123', 'fixed', 3000, NULL, '2019-04-04 02:57:00', '2019-04-04 02:57:00'),
(2, 'DEF456', 'percent', NULL, 50, '2019-04-04 02:57:00', '2019-04-04 02:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '\"\"', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '\"\"', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '\"\"', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '\"\"', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '\"\"', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '\"{\\\"resize\\\":{\\\"width\\\":\\\"1000\\\",\\\"height\\\":\\\"null\\\"},\\\"quality\\\":\\\"70%\\\",\\\"upsize\\\":true,\\\"thumbnails\\\":[{\\\"name\\\":\\\"medium\\\",\\\"scale\\\":\\\"50%\\\"},{\\\"name\\\":\\\"small\\\",\\\"scale\\\":\\\"25%\\\"},{\\\"name\\\":\\\"cropped\\\",\\\"crop\\\":{\\\"width\\\":\\\"300\\\",\\\"height\\\":\\\"250\\\"}}]}\"', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '\"{\\\"slugify\\\":{\\\"origin\\\":\\\"title\\\",\\\"forceUpdate\\\":true}}\"', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '\"\"', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '\"\"', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '\"{\\\"default\\\":\\\"DRAFT\\\",\\\"options\\\":{\\\"PUBLISHED\\\":\\\"published\\\",\\\"DRAFT\\\":\\\"draft\\\",\\\"PENDING\\\":\\\"pending\\\"}}\"', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '\"\"', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '\"\"', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '\"\"', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '\"\"', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '\"\"', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '\"{\\\"slugify\\\":{\\\"origin\\\":\\\"title\\\"}}\"', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '\"\"', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '\"\"', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '\"{\\\"default\\\":\\\"INACTIVE\\\",\\\"options\\\":{\\\"INACTIVE\\\":\\\"INACTIVE\\\",\\\"ACTIVE\\\":\\\"ACTIVE\\\"}}\"', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '\"\"', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '\"\"', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '\"\"', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '\"\"', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '\"\"', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '\"\"', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '\"\"', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '\"\"', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '\"\"', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '\"{\\\"default\\\":\\\"\\\",\\\"null\\\":\\\"\\\",\\\"options\\\":{\\\"\\\":\\\"-- None --\\\"},\\\"relationship\\\":{\\\"key\\\":\\\"id\\\",\\\"label\\\":\\\"name\\\"}}\"', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '\"{\\\"default\\\":1}\"', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '\"\"', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '\"{\\\"slugify\\\":{\\\"origin\\\":\\\"name\\\"}}\"', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '\"\"', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '\"\"', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '\"\"', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '\"\"', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '\"\"', 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '\"\"', 9),
(54, 3, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(55, 7, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, '\"\"', 1),
(56, 7, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '\"{\\\"validation\\\":{\\\"rule\\\":\\\"max:100\\\"}}\"', 2),
(57, 7, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '\"\"', 3),
(58, 7, 'details', 'text', 'Details', 1, 1, 1, 1, 1, 1, '\"\"', 4),
(59, 7, 'price', 'number', 'price', 1, 1, 1, 1, 1, 1, '\"{\\\"validation\\\":{\\\"rule\\\":\\\"required|regex:\\/^\\\\\\\\d*(\\\\\\\\.\\\\\\\\d{1,2})?$\\/\\\"}}\"', 5),
(60, 7, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '\"\"', 6),
(61, 7, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '\"{\\\"on\\\":\\\"Yes\\\",\\\"off\\\":\\\"No\\\"}\"', 7),
(62, 7, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '\"{\\\"quality\\\":\\\"70%\\\",\\\"thumbnails\\\":[{\\\"name\\\":\\\"medium\\\",\\\"scale\\\":\\\"50%\\\"},{\\\"name\\\":\\\"small\\\",\\\"scale\\\":\\\"25%\\\"},{\\\"name\\\":\\\"cropped\\\",\\\"crop\\\":{\\\"width\\\":\\\"300\\\",\\\"height\\\":\\\"250\\\"}}]}\"', 8),
(63, 7, 'images', 'multiple_images', 'Images', 1, 1, 1, 1, 1, 1, '\"\"', 9),
(64, 7, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 1, 1, '\"\"', 10),
(65, 7, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 1, 1, 1, '\"\"', 11),
(66, 7, 'quantity', 'number', 'Quantity', 1, 1, 1, 1, 1, 1, '\"\"', 8),
(67, 8, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, '\"\"', 1),
(68, 8, 'code', 'text', 'code', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(69, 8, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '\"{\\\"default\\\":\\\"fixed\\\",\\\"options\\\":{\\\"fixed\\\":\\\"Fixed Value\\\",\\\"percent\\\":\\\"Percent Off\\\"}}\"', 3),
(70, 8, 'value', 'number', 'Value', 0, 1, 1, 1, 1, 1, '\"{\\\"null\\\":\\\"\\\"}\"', 4),
(71, 8, 'percent_off', 'number', 'Percent Off', 0, 1, 1, 1, 1, 1, '\"{\\\"null\\\":\\\"\\\"}\"', 5),
(72, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '\"\"', 6),
(73, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '\"\"', 7),
(74, 9, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, '\"\"', 1),
(75, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(76, 9, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '\"\"', 3),
(77, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '\"\"', 4),
(78, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '\"\"', 5),
(79, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(80, 10, 'product_id', 'number', 'Product Id', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(81, 10, 'category_id', 'number', 'Category Id', 1, 1, 1, 1, 1, 1, '\"\"', 3),
(82, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '\"\"', 4),
(83, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '\"\"', 5),
(84, 11, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, '\"\"', 1),
(85, 11, 'user_id', 'number', 'User Id', 1, 1, 1, 0, 0, 0, '\"\"', 2),
(86, 11, 'billing_email', 'text', 'Billing Email', 1, 1, 1, 1, 1, 0, '\"\"', 3),
(87, 11, 'billing_name', 'text', 'Billing Name', 1, 1, 1, 1, 1, 0, '\"\"', 4),
(88, 11, 'billing_address', 'text', 'Billing Address', 1, 1, 1, 1, 1, 0, '\"\"', 5),
(89, 11, 'billing_city', 'text', 'Billing City', 1, 1, 1, 1, 1, 0, '\"\"', 6),
(90, 11, 'billing_province', 'text', 'Billing Province', 1, 0, 1, 1, 1, 0, '\"\"', 7),
(91, 11, 'billing_postalcode', 'text', 'Billing Postalcode', 1, 0, 1, 1, 1, 0, '\"\"', 8),
(92, 11, 'billing_phone', 'text', 'Billing Phone', 1, 0, 1, 1, 1, 0, '\"\"', 9),
(93, 11, 'billing_name_on_card', 'text', 'Billing Name On Card', 1, 1, 1, 1, 1, 0, '\"\"', 10),
(94, 11, 'billing_discount', 'number', 'Discount', 1, 1, 1, 0, 0, 0, '\"\"', 11),
(95, 11, 'billing_discount_code', 'text', 'Discount Code', 0, 0, 1, 0, 0, 0, '\"\"', 12),
(96, 11, 'billing_subtotal', 'number', 'Subtotal', 1, 1, 1, 0, 0, 0, '\"\"', 13),
(97, 11, 'billing_tax', 'number', 'Tax', 1, 1, 1, 0, 0, 0, '\"\"', 14),
(98, 11, 'billing_total', 'number', 'Total', 1, 1, 1, 0, 0, 0, '\"\"', 15),
(99, 11, 'payment_gateway', 'text', 'Payment Gateway', 1, 0, 1, 0, 0, 0, '\"\"', 16),
(100, 11, 'shipped', 'checkbox', 'Shipped', 1, 1, 1, 1, 0, 0, '\"{\\\"on\\\":\\\"Yes\\\",\\\"off\\\":\\\"No\\\"}\"', 17),
(101, 11, 'error', 'text', 'Error', 0, 1, 1, 0, 0, 0, '\"\"', 18),
(102, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '\"\"', 19),
(103, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '\"\"', 20);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-04-04 02:57:01', '2019-04-04 02:57:01'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-04-04 02:57:02', '2019-04-04 02:57:02'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '\\App\\Http\\Controllers\\Voyager\\UsersController', '', 1, 0, NULL, '2019-04-04 02:57:02', '2019-04-04 02:57:02'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-04-04 02:57:02', '2019-04-04 02:57:02'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-04-04 02:57:02', '2019-04-04 02:57:02'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-04-04 02:57:02', '2019-04-04 02:57:02'),
(7, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, '\\App\\Http\\Controllers\\Voyager\\ProductsController', '', 1, 1, NULL, '2019-04-04 02:57:15', '2019-04-04 02:57:15'),
(8, 'coupons', 'coupons', 'Coupon', 'Coupons', 'voyager-dollar', 'App\\Coupon', NULL, '', '', 1, 0, NULL, '2019-04-04 02:57:15', '2019-04-04 02:57:15'),
(9, 'category', 'category', 'Category', 'Categories', 'voyager-tag', 'App\\Category', NULL, '', '', 1, 0, NULL, '2019-04-04 02:57:15', '2019-04-04 02:57:15'),
(10, 'category-product', 'category-product', 'Category Product', 'Category Products', 'voyager-categories', 'App\\CategoryProduct', NULL, '', '', 1, 0, NULL, '2019-04-04 02:57:15', '2019-04-04 02:57:15'),
(11, 'orders', 'orders', 'Order', 'Orders', 'voyager-documentation', 'App\\Order', NULL, '\\App\\Http\\Controllers\\Voyager\\OrdersController', '', 1, 0, NULL, '2019-04-04 02:57:15', '2019-04-04 02:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-04-04 02:57:08', '2019-04-04 02:57:08'),
(2, 'main', '2019-04-04 02:57:17', '2019-04-04 02:57:17'),
(3, 'footer', '2019-04-04 02:57:17', '2019-04-04 02:57:17');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-04-04 02:57:09', '2019-04-04 02:57:09', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 9, '2019-04-04 02:57:09', '2019-04-04 02:57:17', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 10, '2019-04-04 02:57:09', '2019-04-04 02:57:17', 'voyager.posts.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 8, '2019-04-04 02:57:09', '2019-04-04 02:57:17', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 14, '2019-04-04 02:57:09', '2019-04-04 02:57:17', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 11, '2019-04-04 02:57:09', '2019-04-04 02:57:17', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 7, '2019-04-04 02:57:09', '2019-04-04 02:57:17', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 12, '2019-04-04 02:57:09', '2019-04-04 02:57:17', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2019-04-04 02:57:09', '2019-04-04 02:57:17', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 2, '2019-04-04 02:57:09', '2019-04-04 02:57:17', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 3, '2019-04-04 02:57:09', '2019-04-04 02:57:18', 'voyager.compass.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 13, '2019-04-04 02:57:09', '2019-04-04 02:57:17', 'voyager.settings.index', NULL),
(13, 1, 'Orders', '/admin/orders', '_self', 'voyager-documentation', NULL, NULL, 2, '2019-04-04 02:57:17', '2019-04-04 02:57:17', NULL, NULL),
(14, 1, 'Products', '/admin/products', '_self', 'voyager-bag', NULL, NULL, 3, '2019-04-04 02:57:17', '2019-04-04 02:57:17', NULL, NULL),
(15, 1, 'Categories', '/admin/category', '_self', 'voyager-tag', NULL, NULL, 4, '2019-04-04 02:57:17', '2019-04-04 02:57:17', NULL, NULL),
(16, 1, 'Coupons', '/admin/coupons', '_self', 'voyager-dollar', NULL, NULL, 5, '2019-04-04 02:57:17', '2019-04-04 02:57:17', NULL, NULL),
(17, 1, 'Category Products', '/admin/category-product', '_self', 'voyager-categories', NULL, NULL, 6, '2019-04-04 02:57:17', '2019-04-04 02:57:17', NULL, NULL),
(18, 2, 'Shop', '', '_self', NULL, NULL, NULL, 1, '2019-04-04 02:57:18', '2019-04-04 02:57:18', 'shop.index', NULL),
(19, 2, 'About', '#', '_self', NULL, NULL, NULL, 2, '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL, NULL),
(20, 2, 'Blog', 'https://blog.laravelecommerceexample.ca', '_self', NULL, NULL, NULL, 2, '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL, NULL),
(21, 3, 'Follow Me:', '', '_self', NULL, NULL, NULL, 1, '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL, NULL),
(22, 3, 'fa-globe', 'http://andremadarang.com', '_self', NULL, NULL, NULL, 2, '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL, NULL),
(23, 3, 'fa-youtube', 'http://youtube.com/drehimself', '_self', NULL, NULL, NULL, 2, '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL, NULL),
(24, 3, 'fa-github', 'http://github.com/drehimself', '_self', NULL, NULL, NULL, 2, '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL, NULL),
(25, 3, 'fa-twitter', 'http://twitter.com/drehimself', '_self', NULL, NULL, NULL, 2, '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1),
(24, '2017_11_26_013050_add_user_role_relationship', 1),
(25, '2017_11_26_015000_create_user_roles_table', 1),
(26, '2017_12_11_054653_create_products_table', 1),
(27, '2018_01_11_060124_create_category_table', 1),
(28, '2018_01_11_060548_create_category_product_table', 1),
(29, '2018_01_14_215535_create_coupons_table', 1),
(30, '2018_02_08_021546_add_image_to_products_table', 1),
(31, '2018_02_08_032544_add_images_to_products_table', 1),
(32, '2018_02_25_005243_create_orders_table', 1),
(33, '2018_02_25_010522_create_order_product_table', 1),
(34, '2018_03_11_000000_add_user_settings', 1),
(35, '2018_03_14_000000_add_details_to_data_types_table', 1),
(36, '2018_03_16_000000_make_settings_value_nullable', 1),
(37, '2018_04_23_011947_add_user_role_relationship_fix', 1),
(38, '2018_04_23_012009_create_user_roles_table_fix', 1),
(39, '2018_06_29_032914_add_quantity_to_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_province` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_postalcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name_on_card` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_discount` int(11) NOT NULL DEFAULT '0',
  `billing_discount_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_subtotal` int(11) NOT NULL,
  `billing_tax` int(11) NOT NULL,
  `billing_total` int(11) NOT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stripe',
  `shipped` tinyint(1) NOT NULL DEFAULT '0',
  `error` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `billing_email`, `billing_name`, `billing_address`, `billing_city`, `billing_province`, `billing_postalcode`, `billing_phone`, `billing_name_on_card`, `billing_discount`, `billing_discount_code`, `billing_subtotal`, `billing_tax`, `billing_total`, `payment_gateway`, `shipped`, `error`, `created_at`, `updated_at`) VALUES
(1, NULL, 'email@email.com', 'Fake Order', 'Fake Address', 'Fake City', 'Fake Province', 'L5B4U2', '9052145636', 'Fake Name on Card', 0, NULL, 12345, 1605, 13950, 'stripe', 0, NULL, '2019-04-04 02:57:00', '2019-04-04 02:57:00'),
(2, NULL, 'another@another.com', 'Fake Order 2', 'Fake Address 2', 'Fake City 2', 'Fake Province 2', 'L5B4U2', '9052145636', 'Fake Name on Card', 0, NULL, 12345, 1605, 13950, 'stripe', 0, 'Card was declined', '2019-04-04 02:57:00', '2019-04-04 02:57:00'),
(3, NULL, 'fake@fake.com', 'Fake Order 3', 'Fake Address 3', 'Fake City 3', 'Fake Province 3', 'L5B4U2', '9052145636', 'Fake Name on Card', 0, NULL, 12345, 1605, 13950, 'stripe', 1, NULL, '2019-04-04 02:57:01', '2019-04-04 02:57:01'),
(4, NULL, 'st@gmail.com', 'stalin Thomas', 'chennai', 'chennai', 'tamilnadu', '600033', '123456', NULL, 0, NULL, 233686, 30379, 264065, 'stripe', 0, NULL, '2019-04-04 03:55:12', '2019-04-04 03:55:12'),
(5, NULL, 'st@gmail.com', 'stalin Thomas', 'chennai', 'chennai', 'tamilnadu', '600033', '123456', NULL, 0, NULL, 233686, 30379, 264065, 'stripe', 0, NULL, '2019-04-04 03:56:15', '2019-04-04 03:56:15'),
(6, NULL, 'st@gmail.com', 'stalin Thomas', 'chennai', 'chennai', 'tamilnadu', '600033', '123456', NULL, 0, NULL, 233686, 30379, 264065, 'stripe', 0, NULL, '2019-04-04 04:00:10', '2019-04-04 04:00:10'),
(7, NULL, 'st@gmail.com', 'stalin Thomas', 'chennai', 'chennai', 'tamilnadu', '600033', '123456', NULL, 0, NULL, 233686, 30379, 264065, 'stripe', 0, NULL, '2019-04-04 04:07:17', '2019-04-04 04:07:17'),
(8, NULL, 'stalinmca2008@gmail.com', 'stalin Thomas', 'chennai', 'chennai', 'tamilnadu', '600033', '9159698082', NULL, 0, NULL, 233686, 30379, 264065, 'stripe', 0, NULL, '2019-04-04 04:14:36', '2019-04-04 04:14:36'),
(9, NULL, 'stalingalaxy@gmail.com', 'stalin Thomas', 'chennai', 'chennai', 'tamilnadu', '600033', '123456', NULL, 0, NULL, 233686, 30379, 264065, 'stripe', 0, NULL, '2019-04-04 04:18:55', '2019-04-04 04:18:55'),
(10, NULL, 'stalinmca2008@gmail.com', 'stalin Thomas', 'chennai', 'chennai', 'tamilnadu', '600033', '9159698082', NULL, 0, NULL, 694720, 90314, 785034, 'stripe', 0, NULL, '2019-04-04 05:50:29', '2019-04-04 05:50:29'),
(11, 3, 'stalinmca2008@gmail.com', 'stalin Thomas', 'chennai', 'chennai', 'tamilnadu', '600033', '123456', NULL, 0, NULL, 329410, 42823, 372233, 'stripe', 0, NULL, '2019-04-10 11:24:59', '2019-04-10 11:24:59');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2019-04-04 02:57:00', '2019-04-04 02:57:00'),
(2, 1, 2, 1, '2019-04-04 02:57:00', '2019-04-04 02:57:00'),
(3, 2, 3, 1, '2019-04-04 02:57:01', '2019-04-04 02:57:01'),
(4, 2, 4, 1, '2019-04-04 02:57:01', '2019-04-04 02:57:01'),
(5, 3, 5, 1, '2019-04-04 02:57:01', '2019-04-04 02:57:01'),
(6, 3, 6, 1, '2019-04-04 02:57:01', '2019-04-04 02:57:01'),
(7, 4, 1, 1, '2019-04-04 03:55:12', '2019-04-04 03:55:12'),
(8, 5, 1, 1, '2019-04-04 03:56:15', '2019-04-04 03:56:15'),
(9, 6, 1, 1, '2019-04-04 04:00:10', '2019-04-04 04:00:10'),
(10, 7, 1, 1, '2019-04-04 04:07:18', '2019-04-04 04:07:18'),
(11, 8, 1, 1, '2019-04-04 04:14:36', '2019-04-04 04:14:36'),
(12, 9, 1, 1, '2019-04-04 04:18:55', '2019-04-04 04:18:55'),
(13, 10, 13, 2, '2019-04-04 05:50:29', '2019-04-04 05:50:29'),
(14, 10, 41, 2, '2019-04-04 05:50:29', '2019-04-04 05:50:29'),
(15, 11, 12, 2, '2019-04-10 11:25:00', '2019-04-10 11:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-04-04 02:57:13', '2019-04-04 02:57:13');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(2, 'browse_bread', NULL, '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(3, 'browse_database', NULL, '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(4, 'browse_media', NULL, '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(5, 'browse_compass', NULL, '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(6, 'browse_menus', 'menus', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(7, 'read_menus', 'menus', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(8, 'edit_menus', 'menus', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(9, 'add_menus', 'menus', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(10, 'delete_menus', 'menus', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(11, 'browse_pages', 'pages', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(12, 'read_pages', 'pages', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(13, 'edit_pages', 'pages', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(14, 'add_pages', 'pages', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(15, 'delete_pages', 'pages', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(16, 'browse_roles', 'roles', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(17, 'read_roles', 'roles', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(18, 'edit_roles', 'roles', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(19, 'add_roles', 'roles', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(20, 'delete_roles', 'roles', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(21, 'browse_users', 'users', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(22, 'read_users', 'users', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(23, 'edit_users', 'users', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(24, 'add_users', 'users', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(25, 'delete_users', 'users', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(26, 'browse_posts', 'posts', '2019-04-04 02:57:10', '2019-04-04 02:57:10', NULL),
(27, 'read_posts', 'posts', '2019-04-04 02:57:11', '2019-04-04 02:57:11', NULL),
(28, 'edit_posts', 'posts', '2019-04-04 02:57:11', '2019-04-04 02:57:11', NULL),
(29, 'add_posts', 'posts', '2019-04-04 02:57:11', '2019-04-04 02:57:11', NULL),
(30, 'delete_posts', 'posts', '2019-04-04 02:57:11', '2019-04-04 02:57:11', NULL),
(31, 'browse_categories', 'categories', '2019-04-04 02:57:11', '2019-04-04 02:57:11', NULL),
(32, 'read_categories', 'categories', '2019-04-04 02:57:11', '2019-04-04 02:57:11', NULL),
(33, 'edit_categories', 'categories', '2019-04-04 02:57:11', '2019-04-04 02:57:11', NULL),
(34, 'add_categories', 'categories', '2019-04-04 02:57:11', '2019-04-04 02:57:11', NULL),
(35, 'delete_categories', 'categories', '2019-04-04 02:57:11', '2019-04-04 02:57:11', NULL),
(36, 'browse_settings', 'settings', '2019-04-04 02:57:11', '2019-04-04 02:57:11', NULL),
(37, 'read_settings', 'settings', '2019-04-04 02:57:11', '2019-04-04 02:57:11', NULL),
(38, 'edit_settings', 'settings', '2019-04-04 02:57:11', '2019-04-04 02:57:11', NULL),
(39, 'add_settings', 'settings', '2019-04-04 02:57:11', '2019-04-04 02:57:11', NULL),
(40, 'delete_settings', 'settings', '2019-04-04 02:57:11', '2019-04-04 02:57:11', NULL),
(41, 'browse_products', 'products', '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL),
(42, 'read_products', 'products', '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL),
(43, 'edit_products', 'products', '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL),
(44, 'add_products', 'products', '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL),
(45, 'delete_products', 'products', '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL),
(46, 'browse_coupons', 'coupons', '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL),
(47, 'read_coupons', 'coupons', '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL),
(48, 'edit_coupons', 'coupons', '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL),
(49, 'add_coupons', 'coupons', '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL),
(50, 'delete_coupons', 'coupons', '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL),
(51, 'browse_category', 'category', '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL),
(52, 'read_category', 'category', '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL),
(53, 'edit_category', 'category', '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL),
(54, 'add_category', 'category', '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL),
(55, 'delete_category', 'category', '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL),
(56, 'browse_category-product', 'category-product', '2019-04-04 02:57:18', '2019-04-04 02:57:18', NULL),
(57, 'read_category-product', 'category-product', '2019-04-04 02:57:19', '2019-04-04 02:57:19', NULL),
(58, 'edit_category-product', 'category-product', '2019-04-04 02:57:19', '2019-04-04 02:57:19', NULL),
(59, 'add_category-product', 'category-product', '2019-04-04 02:57:19', '2019-04-04 02:57:19', NULL),
(60, 'delete_category-product', 'category-product', '2019-04-04 02:57:19', '2019-04-04 02:57:19', NULL),
(61, 'browse_orders', 'orders', '2019-04-04 02:57:19', '2019-04-04 02:57:19', NULL),
(62, 'read_orders', 'orders', '2019-04-04 02:57:19', '2019-04-04 02:57:19', NULL),
(63, 'edit_orders', 'orders', '2019-04-04 02:57:19', '2019-04-04 02:57:19', NULL),
(64, 'add_orders', 'orders', '2019-04-04 02:57:19', '2019-04-04 02:57:19', NULL),
(65, 'delete_orders', 'orders', '2019-04-04 02:57:19', '2019-04-04 02:57:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 3),
(9, 1),
(9, 3),
(10, 1),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(13, 3),
(14, 1),
(14, 3),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(22, 3),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-04 02:57:13', '2019-04-04 02:57:13'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-04 02:57:13', '2019-04-04 02:57:13'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-04 02:57:13', '2019-04-04 02:57:13'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-04 02:57:13', '2019-04-04 02:57:13');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `details`, `price`, `description`, `featured`, `quantity`, `image`, `images`, `created_at`, `updated_at`) VALUES
(1, 'Laptop 1', 'laptop-1', '14 inch, 2 TB SSD, 32GB RAM', 233686, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 9, 'products/dummy/laptop-1.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:50', '2019-04-04 04:19:00'),
(2, 'Laptop 2', 'laptop-2', '14 inch, 2 TB SSD, 32GB RAM', 246015, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-2.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:51', '2019-04-04 02:56:51'),
(3, 'Laptop 3', 'laptop-3', '13 inch, 1 TB SSD, 32GB RAM', 246927, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-3.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:52', '2019-04-04 02:56:52'),
(4, 'Laptop 4', 'laptop-4', '14 inch, 1 TB SSD, 32GB RAM', 233433, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-4.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:52', '2019-04-04 02:56:52'),
(5, 'Laptop 5', 'laptop-5', '13 inch, 3 TB SSD, 32GB RAM', 223054, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-5.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:52', '2019-04-04 02:56:52'),
(6, 'Laptop 6', 'laptop-6', '14 inch, 2 TB SSD, 32GB RAM', 246471, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-6.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:52', '2019-04-04 02:56:52'),
(7, 'Laptop 7', 'laptop-7', '15 inch, 1 TB SSD, 32GB RAM', 218176, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-7.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:52', '2019-04-04 02:56:52'),
(8, 'Laptop 8', 'laptop-8', '15 inch, 2 TB SSD, 32GB RAM', 194594, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-8.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:52', '2019-04-04 02:56:52'),
(9, 'Laptop 9', 'laptop-9', '15 inch, 3 TB SSD, 32GB RAM', 199273, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-9.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:52', '2019-04-04 02:56:52'),
(10, 'Laptop 10', 'laptop-10', '14 inch, 3 TB SSD, 32GB RAM', 161033, 'Lorem 10 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-10.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:52', '2019-04-04 02:56:52'),
(11, 'Laptop 11', 'laptop-11', '15 inch, 1 TB SSD, 32GB RAM', 183132, 'Lorem 11 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-11.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:52', '2019-04-04 02:56:52'),
(12, 'Laptop 12', 'laptop-12', '13 inch, 2 TB SSD, 32GB RAM', 164705, 'Lorem 12 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 8, 'products/dummy/laptop-12.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:53', '2019-04-10 11:25:07'),
(13, 'Laptop 13', 'laptop-13', '13 inch, 2 TB SSD, 32GB RAM', 235778, 'Lorem 13 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 8, 'products/dummy/laptop-13.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:53', '2019-04-04 05:50:36'),
(14, 'Laptop 14', 'laptop-14', '15 inch, 3 TB SSD, 32GB RAM', 212527, 'Lorem 14 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-14.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:53', '2019-04-04 02:56:53'),
(15, 'Laptop 15', 'laptop-15', '13 inch, 1 TB SSD, 32GB RAM', 150885, 'Lorem 15 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-15.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:53', '2019-04-04 02:56:53'),
(16, 'Laptop 16', 'laptop-16', '13 inch, 3 TB SSD, 32GB RAM', 165290, 'Lorem 16 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-16.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:53', '2019-04-04 02:56:53'),
(17, 'Laptop 17', 'laptop-17', '13 inch, 2 TB SSD, 32GB RAM', 192529, 'Lorem 17 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-17.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:53', '2019-04-04 02:56:53'),
(18, 'Laptop 18', 'laptop-18', '14 inch, 3 TB SSD, 32GB RAM', 237935, 'Lorem 18 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-18.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:53', '2019-04-04 02:56:53'),
(19, 'Laptop 19', 'laptop-19', '14 inch, 3 TB SSD, 32GB RAM', 168740, 'Lorem 19 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-19.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:53', '2019-04-04 02:56:53'),
(20, 'Laptop 20', 'laptop-20', '14 inch, 1 TB SSD, 32GB RAM', 215993, 'Lorem 20 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-20.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:53', '2019-04-04 02:56:53'),
(21, 'Laptop 21', 'laptop-21', '14 inch, 1 TB SSD, 32GB RAM', 151871, 'Lorem 21 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-21.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:53', '2019-04-04 02:56:53'),
(22, 'Laptop 22', 'laptop-22', '14 inch, 3 TB SSD, 32GB RAM', 201237, 'Lorem 22 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, 'products/dummy/laptop-22.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:54', '2019-04-04 02:57:00'),
(23, 'Laptop 23', 'laptop-23', '15 inch, 3 TB SSD, 32GB RAM', 232203, 'Lorem 23 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-23.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:54', '2019-04-04 02:56:54'),
(24, 'Laptop 24', 'laptop-24', '14 inch, 3 TB SSD, 32GB RAM', 239152, 'Lorem 24 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-24.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:54', '2019-04-04 02:56:54'),
(25, 'Laptop 25', 'laptop-25', '15 inch, 3 TB SSD, 32GB RAM', 163293, 'Lorem 25 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-25.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:54', '2019-04-04 02:56:54'),
(26, 'Laptop 26', 'laptop-26', '15 inch, 3 TB SSD, 32GB RAM', 167199, 'Lorem 26 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-26.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:54', '2019-04-04 02:56:54'),
(27, 'Laptop 27', 'laptop-27', '13 inch, 2 TB SSD, 32GB RAM', 157347, 'Lorem 27 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-27.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:54', '2019-04-04 02:56:54'),
(28, 'Laptop 28', 'laptop-28', '14 inch, 2 TB SSD, 32GB RAM', 195434, 'Lorem 28 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-28.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:54', '2019-04-04 02:56:54'),
(29, 'Laptop 29', 'laptop-29', '14 inch, 2 TB SSD, 32GB RAM', 238451, 'Lorem 29 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-29.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:54', '2019-04-04 02:56:54'),
(30, 'Laptop 30', 'laptop-30', '15 inch, 3 TB SSD, 32GB RAM', 231407, 'Lorem 30 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/laptop-30.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:54', '2019-04-04 02:56:54'),
(31, 'Desktop 1', 'desktop-1', '27 inch, 1 TB SSD, 32GB RAM', 290044, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, 'products/dummy/desktop-1.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:55', '2019-04-04 02:57:00'),
(32, 'Desktop 2', 'desktop-2', '24 inch, 3 TB SSD, 32GB RAM', 257343, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/desktop-2.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:55', '2019-04-04 02:56:55'),
(33, 'Desktop 3', 'desktop-3', '24 inch, 2 TB SSD, 32GB RAM', 377443, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/desktop-3.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:55', '2019-04-04 02:56:55'),
(34, 'Desktop 4', 'desktop-4', '25 inch, 2 TB SSD, 32GB RAM', 449628, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/desktop-4.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:55', '2019-04-04 02:56:55'),
(35, 'Desktop 5', 'desktop-5', '27 inch, 1 TB SSD, 32GB RAM', 449593, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/desktop-5.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:55', '2019-04-04 02:56:55'),
(36, 'Desktop 6', 'desktop-6', '27 inch, 1 TB SSD, 32GB RAM', 251689, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/desktop-6.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:55', '2019-04-04 02:56:55'),
(37, 'Desktop 7', 'desktop-7', '24 inch, 2 TB SSD, 32GB RAM', 378061, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/desktop-7.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:55', '2019-04-04 02:56:55'),
(38, 'Desktop 8', 'desktop-8', '27 inch, 2 TB SSD, 32GB RAM', 284102, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/desktop-8.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:55', '2019-04-04 02:56:55'),
(39, 'Desktop 9', 'desktop-9', '24 inch, 1 TB SSD, 32GB RAM', 364050, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/desktop-9.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:55', '2019-04-04 02:56:55'),
(40, 'Phone 1', 'phone-1', '32GB, 5.7 inch screen, 4GHz Quad Core', 95143, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/phone-1.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:55', '2019-04-04 02:56:55'),
(41, 'Phone 2', 'phone-2', '64GB, 5.9 inch screen, 4GHz Quad Core', 111582, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 8, 'products/dummy/phone-2.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:56', '2019-04-04 05:50:37'),
(42, 'Phone 3', 'phone-3', '32GB, 5.8 inch screen, 4GHz Quad Core', 96596, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/phone-3.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:56', '2019-04-04 02:56:56'),
(43, 'Phone 4', 'phone-4', '16GB, 5.8 inch screen, 4GHz Quad Core', 142962, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, 'products/dummy/phone-4.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:56', '2019-04-04 02:57:00'),
(44, 'Phone 5', 'phone-5', '64GB, 5.7 inch screen, 4GHz Quad Core', 146191, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/phone-5.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:56', '2019-04-04 02:56:56'),
(45, 'Phone 6', 'phone-6', '64GB, 5.8 inch screen, 4GHz Quad Core', 91333, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/phone-6.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:56', '2019-04-04 02:56:56'),
(46, 'Phone 7', 'phone-7', '32GB, 5.8 inch screen, 4GHz Quad Core', 110337, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/phone-7.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:56', '2019-04-04 02:56:56'),
(47, 'Phone 8', 'phone-8', '16GB, 5.7 inch screen, 4GHz Quad Core', 120289, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, 'products/dummy/phone-8.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:56', '2019-04-04 02:57:00'),
(48, 'Phone 9', 'phone-9', '64GB, 5.9 inch screen, 4GHz Quad Core', 88393, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/phone-9.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:56', '2019-04-04 02:56:56'),
(49, 'Tablet 1', 'tablet-1', '16GB, 5.12 inch screen, 4GHz Quad Core', 138264, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/tablet-1.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:56', '2019-04-04 02:56:56'),
(50, 'Tablet 2', 'tablet-2', '16GB, 5.12 inch screen, 4GHz Quad Core', 89942, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/tablet-2.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:56', '2019-04-04 02:56:56'),
(51, 'Tablet 3', 'tablet-3', '16GB, 5.10 inch screen, 4GHz Quad Core', 58809, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, 'products/dummy/tablet-3.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:56', '2019-04-04 02:57:00'),
(52, 'Tablet 4', 'tablet-4', '32GB, 5.10 inch screen, 4GHz Quad Core', 74459, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/tablet-4.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:57', '2019-04-04 02:56:57'),
(53, 'Tablet 5', 'tablet-5', '64GB, 5.12 inch screen, 4GHz Quad Core', 142417, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, 'products/dummy/tablet-5.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:57', '2019-04-04 02:57:00'),
(54, 'Tablet 6', 'tablet-6', '16GB, 5.12 inch screen, 4GHz Quad Core', 77107, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/tablet-6.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:57', '2019-04-04 02:56:57'),
(55, 'Tablet 7', 'tablet-7', '16GB, 5.12 inch screen, 4GHz Quad Core', 60511, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/tablet-7.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:57', '2019-04-04 02:56:57'),
(56, 'Tablet 8', 'tablet-8', '16GB, 5.11 inch screen, 4GHz Quad Core', 120802, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/tablet-8.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:57', '2019-04-04 02:56:57'),
(57, 'Tablet 9', 'tablet-9', '32GB, 5.11 inch screen, 4GHz Quad Core', 83379, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/tablet-9.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:57', '2019-04-04 02:56:57'),
(58, 'TV 1', 'tv-1', '50 inch screen, Smart TV, 4K', 107184, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/tv-1.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:57', '2019-04-04 02:56:57'),
(59, 'TV 2', 'tv-2', '50 inch screen, Smart TV, 4K', 98331, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/tv-2.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:57', '2019-04-04 02:56:57'),
(60, 'TV 3', 'tv-3', '50 inch screen, Smart TV, 4K', 96001, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/tv-3.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:57', '2019-04-04 02:56:57'),
(61, 'TV 4', 'tv-4', '60 inch screen, Smart TV, 4K', 134976, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, 'products/dummy/tv-4.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:57', '2019-04-04 02:57:00'),
(62, 'TV 5', 'tv-5', '46 inch screen, Smart TV, 4K', 132567, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/tv-5.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:57', '2019-04-04 02:56:57'),
(63, 'TV 6', 'tv-6', '50 inch screen, Smart TV, 4K', 147399, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/tv-6.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:58', '2019-04-04 02:56:58'),
(64, 'TV 7', 'tv-7', '50 inch screen, Smart TV, 4K', 120665, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/tv-7.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:58', '2019-04-04 02:56:58'),
(65, 'TV 8', 'tv-8', '50 inch screen, Smart TV, 4K', 85152, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/tv-8.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:58', '2019-04-04 02:56:58'),
(66, 'TV 9', 'tv-9', '50 inch screen, Smart TV, 4K', 144650, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/tv-9.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:58', '2019-04-04 02:56:58'),
(67, 'Camera 1', 'camera-1', 'Full Frame DSLR, with 18-55mm kit lens.', 97814, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/camera-1.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:58', '2019-04-04 02:56:58'),
(68, 'Camera 2', 'camera-2', 'Full Frame DSLR, with 18-55mm kit lens.', 143987, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/camera-2.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:58', '2019-04-04 02:56:58'),
(69, 'Camera 3', 'camera-3', 'Full Frame DSLR, with 18-55mm kit lens.', 214895, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, 'products/dummy/camera-3.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:58', '2019-04-04 02:57:00'),
(70, 'Camera 4', 'camera-4', 'Full Frame DSLR, with 18-55mm kit lens.', 244732, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/camera-4.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:58', '2019-04-04 02:56:58'),
(71, 'Camera 5', 'camera-5', 'Full Frame DSLR, with 18-55mm kit lens.', 102991, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/camera-5.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:58', '2019-04-04 02:56:58'),
(72, 'Camera 6', 'camera-6', 'Full Frame DSLR, with 18-55mm kit lens.', 159137, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/camera-6.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:58', '2019-04-04 02:56:58'),
(73, 'Camera 7', 'camera-7', 'Full Frame DSLR, with 18-55mm kit lens.', 246427, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, 'products/dummy/camera-7.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:58', '2019-04-04 02:57:00'),
(74, 'Camera 8', 'camera-8', 'Full Frame DSLR, with 18-55mm kit lens.', 193823, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/camera-8.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:59', '2019-04-04 02:56:59'),
(75, 'Camera 9', 'camera-9', 'Full Frame DSLR, with 18-55mm kit lens.', 225866, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/camera-9.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:59', '2019-04-04 02:56:59'),
(76, 'Appliance 1', 'appliance-1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', 117407, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/appliance-1.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:59', '2019-04-04 02:56:59'),
(77, 'Appliance 2', 'appliance-2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', 98407, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/appliance-2.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:59', '2019-04-04 02:56:59'),
(78, 'Appliance 3', 'appliance-3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', 146572, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/appliance-3.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:59', '2019-04-04 02:56:59'),
(79, 'Appliance 4', 'appliance-4', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', 138666, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/appliance-4.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:59', '2019-04-04 02:56:59'),
(80, 'Appliance 5', 'appliance-5', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', 126789, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, 'products/dummy/appliance-5.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:59', '2019-04-04 02:57:00'),
(81, 'Appliance 6', 'appliance-6', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', 143061, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/appliance-6.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:59', '2019-04-04 02:56:59'),
(82, 'Appliance 7', 'appliance-7', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', 80961, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/appliance-7.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:56:59', '2019-04-04 02:56:59'),
(83, 'Appliance 8', 'appliance-8', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', 84056, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/appliance-8.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:57:00', '2019-04-04 02:57:00'),
(84, 'Appliance 9', 'appliance-9', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', 84002, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, 'products/dummy/appliance-9.jpg', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', '2019-04-04 02:57:00', '2019-04-04 02:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-04-04 02:57:10', '2019-04-04 02:57:10'),
(2, 'user', 'Normal User', '2019-04-04 02:57:10', '2019-04-04 02:57:10'),
(3, 'adminweb', 'Admin Web', '2019-04-04 02:57:18', '2019-04-04 02:57:18');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin'),
(11, 'site.stock_threshold', 'Stock Threshold', '5', '', 'text', 6, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2019-04-04 02:57:13', '2019-04-04 02:57:13'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2019-04-04 02:57:14', '2019-04-04 02:57:14'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2019-04-04 02:57:14', '2019-04-04 02:57:14'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-04-04 02:57:14', '2019-04-04 02:57:14'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2019-04-04 02:57:14', '2019-04-04 02:57:14'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2019-04-04 02:57:14', '2019-04-04 02:57:14'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2019-04-04 02:57:14', '2019-04-04 02:57:14'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2019-04-04 02:57:14', '2019-04-04 02:57:14'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2019-04-04 02:57:14', '2019-04-04 02:57:14'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-04-04 02:57:14', '2019-04-04 02:57:14'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2019-04-04 02:57:14', '2019-04-04 02:57:14'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2019-04-04 02:57:14', '2019-04-04 02:57:14'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-04-04 02:57:14', '2019-04-04 02:57:14'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-04-04 02:57:14', '2019-04-04 02:57:14'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-04-04 02:57:14', '2019-04-04 02:57:14'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-04-04 02:57:14', '2019-04-04 02:57:14'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-04-04 02:57:14', '2019-04-04 02:57:14'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-04-04 02:57:15', '2019-04-04 02:57:15'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-04-04 02:57:15', '2019-04-04 02:57:15'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-04-04 02:57:15', '2019-04-04 02:57:15'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-04-04 02:57:15', '2019-04-04 02:57:15'),
(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2019-04-04 02:57:15', '2019-04-04 02:57:15'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2019-04-04 02:57:15', '2019-04-04 02:57:15'),
(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2019-04-04 02:57:15', '2019-04-04 02:57:15'),
(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2019-04-04 02:57:15', '2019-04-04 02:57:15'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2019-04-04 02:57:15', '2019-04-04 02:57:15'),
(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2019-04-04 02:57:15', '2019-04-04 02:57:15'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2019-04-04 02:57:15', '2019-04-04 02:57:15'),
(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2019-04-04 02:57:15', '2019-04-04 02:57:15'),
(30, 'menu_items', 'title', 12, 'pt', 'Configurações', '2019-04-04 02:57:15', '2019-04-04 02:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$fQWQQqx7LOV08znmp8GxC.MrA.b3KoJ1sjtjlDouofrYxVGZZ2Cta', 'Hlp61uacEkHUod7gl2YUjJi8VigrvQLSphESqhiOF9slvHBy9zNv4E7vmhFb', NULL, '2019-04-04 02:57:13', '2019-04-04 02:57:13'),
(2, 3, 'Admin Web', 'adminweb@adminweb.com', 'users/default.png', '$2y$10$rIu1kSM8pRQlm3fTkZGI5eemPdvyILBSy4LcarevjSYXG/afuzLty', 'MhCHlcNHN8KZRFB1dFQmcQ2xvOZhopUFaLIkp5mSJ7C9IWOAj4vzFenjZLyO', NULL, '2019-04-04 02:57:20', '2019-04-04 02:57:20'),
(3, 2, 'stalin', 'stalinmca2008@gmail.com', 'users/default.png', '$2y$10$u/bMm6ydfIZeKWirIt4AA.5zesG2lkuy/capB8Rl1RmlRQDtv4d7W', NULL, NULL, '2019-04-10 11:22:35', '2019-04-10 11:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name_unique` (`name`),
  ADD UNIQUE KEY `category_slug_unique` (`slug`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
