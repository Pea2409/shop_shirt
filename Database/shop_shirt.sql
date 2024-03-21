-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2023 at 09:40 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_shirt`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `Product_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `name`, `email`, `phone`, `address`, `product_title`, `quantity`, `price`, `image`, `Product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(9, 'user', 'user@gmail.com', '123456789', 'VietNam', 'Puffer Jacket', '1', '60', '1702821263.jpg', '13', '1', '2023-12-18 00:25:54', '2023-12-18 00:25:54'),
(10, 'user', 'user@gmail.com', '123456789', 'VietNam', 'Crewneck Sweatshirt', '1', '14', '1702821360.jpg', '15', '1', '2023-12-18 00:25:57', '2023-12-18 00:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Shirt', '2023-12-13 02:25:14', '2023-12-13 02:25:14'),
(8, 'Sweater', '2023-12-17 06:48:48', '2023-12-17 06:48:48'),
(9, 'Jacket', '2023-12-17 06:48:56', '2023-12-17 06:48:56'),
(10, 'Jean', '2023-12-17 06:49:34', '2023-12-17 06:49:34'),
(11, 'Short', '2023-12-19 20:11:52', '2023-12-19 20:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_12_12_050754_create_sessions_table', 1),
(7, '2023_12_13_091328_create_categories_table', 2),
(8, '2023_12_14_062204_create_products_table', 3),
(9, '2023_12_17_121630_create_carts_table', 4),
(10, '2023_12_18_004318_create_orders_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `product_title`, `quantity`, `price`, `image`, `product_id`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(5, 'user', 'user@gmail.com', '123456789', 'VietNam', '1', 'Fit Bootcut Jeans', '1', '44', '1702821036.jpg', '9', 'cash on delivery', 'processing', '2023-12-17 18:10:57', '2023-12-17 18:10:57'),
(7, 'user', 'user@gmail.com', '123456789', 'VietNam', '1', 'Athletic Men\'s', '1', '16', '1702821407.jpg', '16', 'cash on delivery', 'processing', '2023-12-17 18:16:02', '2023-12-17 18:16:02'),
(8, 'user', 'user@gmail.com', '123456789', 'VietNam', '1', 'Essentials Shirt', '1', '22', '1702821190.jpg', '12', 'paid', 'delivered', '2023-12-18 00:15:59', '2023-12-18 02:47:12'),
(9, 'name1', 'name@gmail.com', '0382436824', 'VietNam', '3', 'Athletic Men\'s', '1', '16', '1702821407.jpg', '16', 'cash on delivery', 'processing', '2023-12-18 03:33:28', '2023-12-18 03:33:28'),
(10, 'name1', 'name@gmail.com', '0382436824', 'VietNam', '3', 'Puffer Jacket', '3', '180', '1702821263.jpg', '13', 'cash on delivery', 'processing', '2023-12-18 03:33:28', '2023-12-18 03:33:28'),
(11, 'Furteen', 'furteen@gmail.com', '0382436824', 'Thừa Thiên Huế', '4', 'Fit Denim Jeans', '5', '95', '1702821071.jpg', '10', 'cash on delivery', 'processing', '2023-12-19 19:53:24', '2023-12-19 19:53:24'),
(12, 'Furteen', 'furteen@gmail.com', '0382436824', 'Thừa Thiên Huế', '4', 'Crewneck Sweatshirt', '3', '42', '1702821360.jpg', '15', 'cash on delivery', 'processing', '2023-12-19 19:53:24', '2023-12-19 19:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `category`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(9, 'Fit Bootcut Jeans', 'RELAXED FIT. This relaxed fit boot cut jean is designed with fashion-forward style. Built with a relaxed fit through the seat, thigh, and knee, our Retro jean sits lower on the waist and leaves plenty of room to fit over your favorite pair of boots', '1702821036.jpg', 'Jean', '10', '50', '44', '2023-12-17 06:50:36', '2023-12-17 06:50:36'),
(10, 'Fit Denim Jeans', 'THE ORIGINAL STRAIGHT FIT: Cut straight through the hips and thighs, these jeans are made from rigid, non-stretch premium denim that gets better with every wear', '1702821071.jpg', 'Jean', '7', '25', '19', '2023-12-17 06:51:11', '2023-12-17 06:51:11'),
(11, 'Short-Sleeve Shirt', 'Work made better: we listen to customer feedback and fine-tune every detail to ensure quality, fit, and comfort', '1702821145.jpg', 'Shirt', '15', '12', '9', '2023-12-17 06:52:25', '2023-12-17 06:52:25'),
(12, 'Essentials Shirt', 'Same fit, new name: We’ve changed the name of this shirt style to “Regular Fit” but the measurements remain the same', '1702821190.jpg', 'Shirt', '6', '30', '22', '2023-12-17 06:53:10', '2023-12-17 06:53:10'),
(13, 'Puffer Jacket', 'WARMING FEATURES: Features our Ultra Loft Faux Down insulation providing for extra warmth and to block out cold temperatures', '1702821263.jpg', 'Jacket', '3', '60', NULL, '2023-12-17 06:54:23', '2023-12-17 06:54:23'),
(14, 'Corduroy Cuffs', 'Experience the classic touch of quintessential corduroy lining in our flannel shirt for men; not only does it enhance durability, but it also ensures the collar and cuffs maintain their shape', '1702821317.jpg', 'Jacket', '11', '25', NULL, '2023-12-17 06:55:17', '2023-12-17 06:55:17'),
(15, 'Crewneck Sweatshirt', 'FLEECE TO FEEL GOOD ABOUT - Hanes EcoSmart midweight sweatshirt is made with cotton sourced from American farms.', '1702821360.jpg', 'Sweater', '12', '14', NULL, '2023-12-17 06:56:00', '2023-12-17 06:56:00'),
(16, 'Athletic Men\'s', 'Russell Athletic, the pioneer, inventor and created of the Sweatshirt Medium-weight 9 oz fleece keeps in body heat so you can stay warm', '1702821407.jpg', 'Sweater', '20', '20', '16', '2023-12-17 06:56:47', '2023-12-17 06:56:47'),
(17, 'Cargo Stretch', 'TRADITIONAL CARGO STYLE. Built for versatility and comfort, this classic cargo short takes you from the outdoors to work, to every day with this timeless silhouette.', '1703041945.jpg', 'Short', '15', '25', NULL, '2023-12-19 20:12:25', '2023-12-19 20:12:25'),
(18, 'Elastic Utility Short', 'Designed with a relaxed fit and comfort waistband, these shorts are made to keep you comfortable through any activity. These shorts feature a 10-inch inseam that hits right at the knee for all day comfort. A mid rise sits at the natural waist.', '1703041993.jpg', 'Short', '20', '29', '25', '2023-12-19 20:13:13', '2023-12-19 20:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('dpUj2lk37caUNviMogxqD80wmmhjnYgXdVtL6ZE5', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR1E3SGpLbFliaGl0QVRzdkZ4SzYzNnczQTI1bVMzN1dDOE1TQ0JnZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0X2RldGFpbHMvMTUiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1703045696);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', '0', '123456789', 'VietNam', NULL, '$2y$12$AXyvtVXr3tCRrggspw.q7O60zCFBqhn8PCWuQKmFRa1yWjyGjDg4W', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-11 22:27:03', '2023-12-11 22:27:03'),
(2, 'admin', 'admin@gmail.com', '1\r\n', '0382436824', 'Thừa Thiên Huế', NULL, '$2y$12$u5gCizLyq5uxPhl6u3OHIOt1B9eV/pQgz..l7FYCscqhwGcWSEAba', NULL, NULL, NULL, 'C9Sd2bSYiljJfKYSYmGNWN8fCrLDQxqsZpjJSaKpENyEHVhGmofmbnoXyNbO', NULL, NULL, '2023-12-11 22:29:07', '2023-12-11 22:29:07'),
(4, 'Furteen', 'furteen@gmail.com', '0', '0382436824', 'Thừa Thiên Huế', NULL, '$2y$12$EBFIhHFLw05WgaZX67OayO5hymp4xRfuWT3n62UXyyTk3fPOIcz/.', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-19 19:52:13', '2023-12-19 19:52:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
