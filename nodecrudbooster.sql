-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 24, 2020 at 11:39 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodecrudbooster`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

DROP TABLE IF EXISTS `cms_apicustom`;
CREATE TABLE IF NOT EXISTS `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE IF NOT EXISTS `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

DROP TABLE IF EXISTS `cms_dashboard`;
CREATE TABLE IF NOT EXISTS `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

DROP TABLE IF EXISTS `cms_email_queues`;
CREATE TABLE IF NOT EXISTS `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

DROP TABLE IF EXISTS `cms_email_templates`;
CREATE TABLE IF NOT EXISTS `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2018-10-03 16:40:04', NULL),
(2, 'Registration', 'registration', 'Registration', '<p>Hi [first_name],</p><p>Your account has been created successfully. Below its your login credentials.</p><p>Email: [email]</p><p>Password: [password]</p><p><br></p><p>Regards,</p><p>Swift Chix Admin</p>', '[first_name][email][password]', 'BSL', 'no-reply@swiftchix.com', NULL, '2019-01-04 10:37:54', '2019-06-14 15:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE IF NOT EXISTS `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(71, '124.29.206.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://69.162.81.82/stablemate-php/public/admin/login', 'admin@stablemate.com login with IP Address 124.29.206.134', '', 2, '2020-01-17 17:02:25', NULL),
(72, '124.29.206.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://69.162.81.82/stablemate-php/public/admin/logout', 'admin@stablemate.com logout', '', 2, '2020-01-17 17:02:55', NULL),
(73, '124.29.206.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://69.162.81.82/stablemate-php/public/admin/login', 'admin@crudbooster.com login with IP Address 124.29.206.134', '', 1, '2020-01-17 17:03:08', NULL),
(74, '124.29.206.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://69.162.81.82/stablemate-php/public/admin/menu_management/delete/21', 'Delete data Drivers at Menu Management', '', 1, '2020-01-17 18:02:21', NULL),
(75, '124.29.206.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://69.162.81.82/stablemate-php/public/admin/menu_management/delete/22', 'Delete data Passengers at Menu Management', '', 1, '2020-01-17 18:02:25', NULL),
(76, '124.29.206.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://69.162.81.82/stablemate-php/public/admin/rental_requests/edit-save/62', 'Update data  at Rental Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-17 18:15:35', NULL),
(77, '124.29.206.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://69.162.81.82/stablemate-php/public/admin/login', 'admin@stablemate.com login with IP Address 124.29.206.134', '', 2, '2020-01-17 18:22:06', NULL),
(78, '124.29.206.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://69.162.81.82/stablemate-php/public/admin/login', 'admin@stablemate.com login with IP Address 124.29.206.134', '', 2, '2020-01-17 20:53:16', NULL),
(79, '124.29.206.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://69.162.81.82/stablemate-php/public/admin/logout', 'admin@stablemate.com logout', '', 2, '2020-01-17 21:28:51', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-20 05:43:03', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/trailor_requests/edit-save/40', 'Update data  at Trailor_requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 05:52:11', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/trailor_requests/edit-save/40', 'Update data  at Trailor_requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 05:53:28', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/trailor_requests/edit-save/40', 'Update data  at Trailor_requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 05:53:43', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/rental_requests/edit-save/83', 'Update data  at Rental Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 06:01:11', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/rental_requests/edit-save/83', 'Update data  at Rental Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 06:03:43', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/rental_requests/edit-save/83', 'Update data  at Rental Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 06:04:10', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/rental_requests/edit-save/83', 'Update data  at Rental Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 06:06:11', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/rental_requests/edit-save/83', 'Update data  at Rental Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 06:06:45', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/trailor_requests/edit-save/40', 'Update data  at Trailor_requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 06:07:07', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/events/add-save', 'Add New Data test at Events', '', 1, '2020-01-20 06:11:55', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/events_requests/edit-save/1', 'Update data  at Events Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 06:35:06', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/events_requests/edit-save/1', 'Update data  at Events Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 06:37:18', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/events_requests/edit-save/2', 'Update data  at Events Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 06:38:04', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/events_requests/edit-save/2', 'Update data  at Events Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 06:38:28', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/events_requests/edit-save/2', 'Update data  at Events Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 06:39:12', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/events_requests/edit-save/2', 'Update data  at Events Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 06:47:41', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Advertisements at Menu Management', '', 1, '2020-01-20 06:53:48', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Advertisements Requests at Menu Management', '', 1, '2020-01-20 06:54:26', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/ads_requests/edit-save/1', 'Update data  at Ads Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td></td></tr></tbody></table>', 1, '2020-01-20 07:09:30', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/ads_requests/edit-save/1', 'Update data  at Ads Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 07:09:36', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/ads_requests/edit-save/1', 'Update data  at Ads Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 07:10:01', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/ads_requests/edit-save/1', 'Update data  at Ads Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 07:13:38', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/ads_requests/edit-save/1', 'Update data  at Ads Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 07:14:01', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/ads_requests/edit-save/1', 'Update data  at Ads Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 08:04:58', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/ads_requests/edit-save/1', 'Update data  at Ads Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 08:09:09', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/ads_requests/edit-save/1', 'Update data  at Ads Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 08:12:06', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/ads_requests/edit-save/1', 'Update data  at Ads Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 08:13:16', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/ads_requests/edit-save/1', 'Update data  at Ads Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 08:14:10', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/ads_requests/edit-save/1', 'Update data  at Ads Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 08:15:49', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/ads_requests/edit-save/1', 'Update data  at Ads Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 08:17:29', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/ads_requests/edit-save/1', 'Update data  at Ads Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 08:17:57', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://localhost:8000/admin/ads_requests/edit-save/1', 'Update data  at Ads Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-20 08:19:13', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-22 05:31:00', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/ads_requests/edit-save/1', 'Update data  at Ads Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-22 06:24:49', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/ads_requests/edit-save/1', 'Update data  at Ads Requests', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-22 06:25:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE IF NOT EXISTS `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(29, 'Manage fare', 'Route', 'AdminManageFareControllerGetIndex', 'normal', 'fa fa-headphones', 0, 1, 0, 1, 6, '2019-06-12 06:06:52', '2019-12-27 17:54:19'),
(36, 'Content Management', 'Route', 'AdminContentManagementControllerGetIndex', 'normal', 'fa fa-music', 0, 1, 0, 1, 7, '2019-06-13 02:54:20', '2019-12-27 17:53:06'),
(38, 'Trailors', 'Route', 'AdminTrailorsControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 1, '2019-12-26 02:20:05', '2019-12-27 17:52:28'),
(39, 'Trailors Requests', 'Route', 'AdminTrailorRequestsControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 2, '2019-12-26 02:48:43', '2019-12-27 17:52:37'),
(40, 'Rentals', 'Route', 'AdminRentalsControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 8, '2019-12-26 04:24:40', '2019-12-27 17:53:15'),
(41, 'Rental Requests', 'Route', 'AdminRentalRequestsControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 9, '2019-12-26 07:04:34', '2019-12-27 17:53:22'),
(42, 'Events', 'Route', 'AdminEvents1ControllerGetIndex', NULL, 'fa fa-glass', 0, 1, 0, 1, 10, '2020-01-20 06:09:33', NULL),
(43, 'Events Requests', 'Route', 'AdminEventsRequestsControllerGetIndex', NULL, 'fa fa-music', 0, 1, 0, 1, 11, '2020-01-20 06:32:34', NULL),
(44, 'Advertisements', 'Module', 'ads', 'normal', 'fa fa-glass', 0, 1, 0, 1, NULL, '2020-01-20 06:53:48', NULL),
(45, 'Advertisements Requests', 'Module', 'ads_requests', 'normal', 'fa fa-glass', 0, 1, 0, 1, NULL, '2020-01-20 06:54:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE IF NOT EXISTS `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(9, 1, 2),
(10, 1, 1),
(27, 7, 2),
(28, 7, 1),
(29, 8, 2),
(30, 8, 1),
(31, 9, 1),
(32, 10, 1),
(33, 11, 1),
(34, 12, 1),
(37, 13, 2),
(38, 13, 1),
(39, 14, 1),
(41, 15, 2),
(42, 15, 1),
(43, 16, 1),
(45, 17, 2),
(46, 17, 1),
(54, 19, 2),
(55, 19, 1),
(56, 20, 2),
(57, 20, 1),
(63, 24, 2),
(64, 24, 1),
(82, 18, 2),
(83, 18, 1),
(84, 19, 1),
(85, 20, 1),
(97, 23, 1),
(98, 23, 2),
(99, 24, 1),
(100, 25, 1),
(101, 25, 2),
(105, 26, 1),
(106, 27, 1),
(107, 27, 2),
(115, 34, 1),
(116, 34, 2),
(117, 35, 1),
(119, 30, 1),
(120, 30, 2),
(121, 31, 1),
(122, 31, 2),
(123, 32, 1),
(124, 32, 2),
(129, 33, 1),
(130, 33, 2),
(149, 28, 1),
(150, 37, 1),
(151, 37, 2),
(159, 38, 2),
(160, 38, 1),
(161, 39, 2),
(162, 39, 1),
(163, 36, 1),
(164, 40, 2),
(165, 40, 1),
(166, 41, 2),
(167, 41, 1),
(168, 21, 1),
(169, 22, 1),
(170, 29, 1),
(171, 42, 1),
(172, 43, 1),
(173, 44, 2),
(174, 44, 1),
(175, 45, 2),
(176, 45, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

DROP TABLE IF EXISTS `cms_moduls`;
CREATE TABLE IF NOT EXISTS `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2018-10-03 16:40:03', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2018-10-03 16:40:03', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2018-10-03 16:40:03', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2018-10-03 16:40:03', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2018-10-03 16:40:03', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2018-10-03 16:40:03', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2018-10-03 16:40:03', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2018-10-03 16:40:03', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2018-10-03 16:40:03', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2018-10-03 16:40:03', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2018-10-03 16:40:03', NULL, NULL),
(14, 'Subscription Plans', 'fa fa-star', 'subscription', 'subscription', 'AdminSubscriptionController', 0, 0, '2018-11-01 15:02:22', NULL, '2018-12-04 17:01:09'),
(15, 'App Users', 'fa fa-glass', 'user', 'user', 'AdminUserController', 0, 0, '2019-01-07 08:45:29', NULL, '2019-02-27 02:40:54'),
(16, 'Plants Management', 'fa fa-glass', 'plants', 'plants', 'AdminPlantsController', 0, 0, '2019-01-07 12:47:24', NULL, '2019-02-20 03:37:06'),
(17, 'Units Management', 'fa fa-glass', 'units', 'units', 'AdminUnitsController', 0, 0, '2019-01-07 12:50:13', NULL, '2019-02-20 03:37:21'),
(18, 'Floors Management', 'fa fa-glass', 'floors', 'floors', 'AdminFloorsController', 0, 0, '2019-01-07 12:55:08', NULL, '2019-02-20 03:36:57'),
(19, 'Ports Management', 'fa fa-glass', 'ports', 'ports', 'AdminPortsController', 0, 0, '2019-01-07 12:58:57', NULL, '2019-02-20 03:37:10'),
(20, 'Product Management', 'fa fa-glass', 'inventory', 'inventory', 'AdminInventoryController', 0, 0, '2019-01-07 13:02:33', NULL, '2019-02-20 03:37:14'),
(21, 'Task Management', 'fa fa-glass', 'task_management', 'task_management', 'AdminTaskManagementController', 0, 0, '2019-01-07 15:37:58', NULL, '2019-01-07 15:44:49'),
(22, 'Task Management', 'fa fa-glass', 'task_management22', 'task_management', 'AdminTaskManagement22Controller', 0, 0, '2019-01-07 15:50:54', NULL, '2019-02-20 03:37:18'),
(23, 'Location Management', 'fa fa-glass', 'plants23', 'plants', 'AdminPlants231Controller', 0, 0, '2019-02-05 11:56:10', NULL, '2019-02-20 03:37:03'),
(24, 'My Trips', 'fa fa-check', 'my_trip', 'my_trip', 'AdminMyTripsController', 0, 0, '2019-02-20 23:43:38', NULL, '2019-03-19 01:26:07'),
(25, 'Users', 'fa fa-glass', 'user25', 'user', 'AdminUser25Controller', 0, 0, '2019-02-27 02:41:18', NULL, '2019-02-27 02:42:58'),
(26, 'Users', 'fa fa-user', 'user26', 'user', 'AdminUser26Controller', 0, 0, '2019-02-27 02:43:21', NULL, '2019-03-19 01:26:03'),
(27, 'Contents', 'fa fa-glass', 'contents', 'contents', 'AdminContentsController', 0, 0, '2019-03-05 23:16:05', NULL, '2019-03-19 01:26:11'),
(28, 'Drivers', 'fa fa-star', 'drivers', 'user', 'AdminDriversController', 0, 0, '2019-03-19 01:26:44', NULL, NULL),
(29, 'Passengers', 'fa fa-user', 'passengers', 'user', 'AdminPassengersController', 0, 0, '2019-03-19 01:34:00', NULL, NULL),
(30, 'All Trips', 'fa fa-glass', 'all-trips', 'trips', 'AdminTripsController', 0, 0, '2019-03-19 01:51:48', NULL, NULL),
(31, 'Passenger Trips', 'fa fa-envelope-o', 'passengers-trips', 'trips', 'AdminPassengersTripsController', 0, 0, '2019-03-19 02:39:22', NULL, '2019-03-19 03:11:18'),
(32, 'Vehicle', 'fa fa-glass', 'vehicle', 'vehicle', 'AdminVehicleController', 0, 0, '2019-04-08 00:08:46', NULL, NULL),
(33, 'Registration Requests', 'fa fa-user', 'registration_requests', 'registration_requests', 'AdminRegistrationRequestsController', 0, 0, '2019-06-12 05:02:57', NULL, NULL),
(34, 'Manage fare', 'fa fa-headphones', 'manage_fare', 'trip_factors', 'AdminManageFareController', 0, 0, '2019-06-12 06:06:52', NULL, NULL),
(35, 'Complete Trips', 'fa fa-heart', 'complete_trips', 'trips', 'AdminCompleteTripsController', 0, 0, '2019-06-12 07:06:41', NULL, NULL),
(36, 'Accepted Trips', 'fa fa-music', 'accepted_trips', 'trips', 'AdminPendingTripsController', 0, 0, '2019-06-13 00:42:36', NULL, NULL),
(37, 'Started Trips', 'fa fa-clock-o', 'started_trips', 'trips', 'AdminStartedTripsController', 0, 0, '2019-06-13 00:51:03', NULL, NULL),
(38, 'Ratings', 'fa fa-power-off', 'user_rating', 'user_rating', 'AdminUserRatingController', 0, 0, '2019-06-13 01:53:06', NULL, NULL),
(39, 'Users Policy', 'fa fa-music', 'users_policy', 'static_content_management', 'AdminUsersPolicyController', 0, 0, '2019-06-13 02:49:55', NULL, '2019-06-13 02:52:38'),
(40, 'Content Management', 'fa fa-music', 'content_management', 'static_content_management', 'AdminContentManagementController', 0, 0, '2019-06-13 02:54:20', NULL, NULL),
(41, 'Transaction', 'fa fa-music', 'transactions', 'user', 'AdminTransactionController', 0, 0, '2019-06-13 06:54:20', NULL, NULL),
(42, 'Trailors', 'fa fa-glass', 'trailors', 'trailors', 'AdminTrailorsController', 0, 0, '2019-12-26 02:20:05', NULL, NULL),
(43, 'Trailor_requests', 'fa fa-glass', 'trailor_requests', 'trailor_requests', 'AdminTrailorRequestsController', 0, 0, '2019-12-26 02:48:43', NULL, NULL),
(44, 'rentals', 'fa fa-glass', 'rentals', 'rentals', 'AdminRentalsController', 0, 0, '2019-12-26 04:24:40', NULL, NULL),
(45, 'Rental Requests', 'fa fa-glass', 'rental_requests', 'rental_requests', 'AdminRentalRequestsController', 0, 0, '2019-12-26 07:04:33', NULL, NULL),
(46, 'Events', 'fa fa-glass', 'events', 'events', 'AdminEvents1Controller', 0, 0, '2020-01-20 06:09:33', NULL, NULL),
(47, 'Events Requests', 'fa fa-music', 'events_requests', 'events_requests', 'AdminEventsRequestsController', 0, 0, '2020-01-20 06:32:33', NULL, NULL),
(48, 'Ads Requests', 'fa fa-music', 'ads_requests', 'ads_requests', 'AdminAdRequestsController', 0, 1, '2020-01-20 06:32:33', NULL, NULL),
(49, 'Advertisements', 'fa fa-music', 'ads', 'clasification_ads', 'AdminAdvertisementsController', 0, 1, '2020-01-20 06:32:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

DROP TABLE IF EXISTS `cms_notifications`;
CREATE TABLE IF NOT EXISTS `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

DROP TABLE IF EXISTS `cms_privileges`;
CREATE TABLE IF NOT EXISTS `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-green', '2018-10-03 16:40:03', NULL),
(2, 'stablemate_admin', 0, 'skin-blue', NULL, NULL),
(3, 'passenger', 0, 'skin-blue', NULL, NULL),
(4, 'driver', 0, 'skin-blue', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

DROP TABLE IF EXISTS `cms_privileges_roles`;
CREATE TABLE IF NOT EXISTS `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 4, NULL, NULL),
(2, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(26, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(27, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(28, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(34, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(35, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(36, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(37, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(40, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(41, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(44, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(45, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(46, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(47, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(48, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(49, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(50, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(58, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(59, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(60, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(70, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(73, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(74, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(77, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(78, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(81, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(84, 1, 1, 1, 1, 1, 1, 30, NULL, NULL),
(88, 1, 1, 1, 1, 1, 1, 31, NULL, NULL),
(92, 1, 1, 1, 1, 1, 1, 32, NULL, NULL),
(93, 1, 1, 1, 1, 1, 1, 33, NULL, NULL),
(94, 1, 1, 1, 1, 1, 1, 34, NULL, NULL),
(95, 1, 1, 1, 1, 1, 1, 35, NULL, NULL),
(96, 1, 1, 1, 1, 1, 1, 36, NULL, NULL),
(97, 1, 1, 1, 1, 1, 1, 37, NULL, NULL),
(98, 1, 1, 1, 1, 1, 1, 38, NULL, NULL),
(99, 1, 1, 1, 1, 1, 1, 39, NULL, NULL),
(100, 1, 1, 1, 1, 1, 1, 40, NULL, NULL),
(114, 1, 1, 1, 1, 1, 3, 29, NULL, NULL),
(115, 1, 1, 1, 1, 1, 4, 28, NULL, NULL),
(116, 1, 1, 1, 1, 1, 1, 42, NULL, NULL),
(117, 1, 1, 1, 1, 1, 1, 43, NULL, NULL),
(118, 1, 1, 1, 1, 1, 1, 44, NULL, NULL),
(119, 1, 1, 1, 1, 1, 1, 45, NULL, NULL),
(120, 1, 1, 1, 1, 1, 2, 45, NULL, NULL),
(121, 1, 1, 1, 1, 1, 2, 44, NULL, NULL),
(122, 1, 1, 1, 1, 1, 2, 43, NULL, NULL),
(123, 1, 1, 1, 1, 1, 2, 42, NULL, NULL),
(124, 1, 1, 1, 1, 1, 1, 46, NULL, NULL),
(125, 1, 1, 1, 1, 1, 1, 47, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE IF NOT EXISTS `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', 'transparent', 'text', NULL, 'Input hexacode', '2018-10-03 16:40:04', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', 'ffffff', 'text', NULL, 'Input hexacode', '2018-10-03 16:40:04', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2018-10/5745230637b8b806bfd96b5142fb43c7.jpg', 'upload_image', NULL, NULL, '2018-10-03 16:40:04', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2018-10-03 16:40:04', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2018-10-03 16:40:04', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2018-10-03 16:40:04', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2018-10-03 16:40:04', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2018-10-03 16:40:04', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2018-10-03 16:40:04', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Stablemate', 'text', NULL, NULL, '2018-10-03 16:40:04', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'A4', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2018-10-03 16:40:04', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2019-12/11460dc6cc9b183fd2452c44360da6d1.png', 'upload_image', NULL, NULL, '2018-10-03 16:40:04', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2019-08/40e3455acd52f56a2d66d4042b2f8b38.png', 'upload_image', NULL, NULL, '2018-10-03 16:40:04', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2018-10-03 16:40:04', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2018-10-03 16:40:04', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2018-10-03 16:40:04', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

DROP TABLE IF EXISTS `cms_statistics`;
CREATE TABLE IF NOT EXISTS `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Swiftchix', 'swiftchix', '2019-05-17 17:37:38', '2019-05-17 17:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

DROP TABLE IF EXISTS `cms_statistic_components`;
CREATE TABLE IF NOT EXISTS `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, '0a963cc7d46b272cf2a874dcb3e9dd58', 'panelcustom', NULL, 0, 'Untitled', NULL, '2019-05-17 17:38:03', NULL),
(2, 1, '48d52abaf58fdc7d69c6d0792c178e5e', 'panelarea', 'area1', 0, NULL, '{\"name\":\"Trips\",\"content\":\"<a class=\\\"fa fa-heart text-normal\\\" href=\\\"admin\\/complete_trips\\\"><span  style=\\\"font-family: \'Source Sans Pro\',\'Helvetica Neue\',Helvetica,Arial,sans-serif;font-size:15px;\\\"> Trips<\\/span><\\/a>\"}', '2019-05-17 17:38:16', NULL),
(3, 1, 'b827aaff668f61083751605537141b17', 'panelarea', 'area2', 0, NULL, '{\"name\":\"Drivers\",\"content\":\"<a class=\\\"fa fa-users text-normal\\\" href=\\\"admin\\/drivers\\\" ><span  style=\\\"font-size:15px;font-family: \'Source Sans Pro\',\'Helvetica Neue\',Helvetica,Arial,sans-serif;\\\"> Drivers<\\/span><\\/a>\"}', '2019-05-17 17:38:20', NULL),
(4, 1, 'b91de4dd4c1b655a40bac19951a31a3a', 'panelarea', 'area3', 0, NULL, '{\"name\":\"Passengers\",\"content\":\"<a class=\\\"fa fa-user text-normal\\\" href=\\\"admin\\/passengers\\\"> <span style=\\\"font-family: \'Source Sans Pro\',\'Helvetica Neue\',Helvetica,Arial,sans-serif;font-size:15px\\\"> Passengers<\\/span><\\/a>\"}', '2019-05-17 17:38:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE IF NOT EXISTS `cms_users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$3eKxl6S76UfpRelXv1ENTetctY18UJt1X0b4yVG.GlMBDFU2VTPxe', 1, '2018-10-03 16:40:03', '2019-01-10 13:29:45', 'Active'),
(2, 'Admin', NULL, 'admin@stablemate.com', '$2y$10$XEW69qQqhIoBoMkiF.xfUOgRXvziYoXEYhjRvCntPJ2UcaKdugwbO', 2, '2018-10-03 17:14:43', '2019-12-27 17:51:04', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
