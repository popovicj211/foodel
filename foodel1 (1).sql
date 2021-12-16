-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 16, 2021 at 07:40 AM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodel1`
--

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` bigint UNSIGNED NOT NULL,
  `delivery_number` int UNSIGNED NOT NULL,
  `delivery_date` datetime NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dr.', '2021-12-16 05:28:03', '2021-12-16 05:28:03'),
(2, 'Prof.', '2021-12-16 05:28:03', '2021-12-16 05:28:03'),
(3, 'Miss', '2021-12-16 05:28:03', '2021-12-16 05:28:03');

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kitchen_type`
--

CREATE TABLE `kitchen_type` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kitchen_type`
--

INSERT INTO `kitchen_type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Melyna Abshire', '2021-12-16 05:26:45', '2021-12-16 05:26:45'),
(2, 'Jany Schmidt', '2021-12-16 05:26:45', '2021-12-16 05:26:45'),
(3, 'Johanna Krajcik', '2021-12-16 05:26:45', '2021-12-16 05:26:45');

-- --------------------------------------------------------

--
-- Table structure for table `method_payment`
--

CREATE TABLE `method_payment` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `method_payment`
--

INSERT INTO `method_payment` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Credit card', '2021-12-16 05:22:11', '2021-12-16 05:22:11'),
(2, 'Paypal', '2021-12-16 05:22:11', '2021-12-16 05:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2021_12_14_202658_create_restaurants_table', 1),
(5, '2021_12_14_203057_create_roles_table', 1),
(6, '2021_12_14_203124_create_users_table', 1),
(7, '2021_12_14_215150_create_foods_table', 1),
(8, '2021_12_15_130946_create_restaurants_foods_table', 1),
(9, '2021_12_15_132526_create_weight_table', 1),
(10, '2021_12_15_132615_create_pricelist_table', 1),
(11, '2021_12_15_140009_create_methodpayment_table', 1),
(12, '2021_12_15_142111_create_ingredients_table', 1),
(13, '2021_12_15_142214_create_restfood_ingredients_table', 1),
(14, '2021_12_15_144847_create_orders_table', 1),
(15, '2021_12_15_145857_create_kitchen_type_table', 1),
(16, '2021_12_15_145937_create_restaurants_kitchen_type_table', 1),
(17, '2021_12_15_151822_create_deliery_table', 1),
(18, '2021_12_15_152235_create_orders_deliery_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `order_number` int UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `mp_id` bigint UNSIGNED NOT NULL,
  `resfood_id` bigint UNSIGNED NOT NULL,
  `quantity` int UNSIGNED NOT NULL,
  `total` decimal(8,2) UNSIGNED NOT NULL,
  `order_date` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_delivery`
--

CREATE TABLE `orders_delivery` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `del_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pricelist`
--

CREATE TABLE `pricelist` (
  `id` bigint UNSIGNED NOT NULL,
  `resfood_id` bigint UNSIGNED NOT NULL,
  `we_id` bigint UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricelist`
--

INSERT INTO `pricelist` (`id`, `resfood_id`, `we_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2714.30', '2021-12-16 05:36:59', '2021-12-16 05:36:59'),
(2, 2, 1, '5113.20', '2021-12-16 05:36:59', '2021-12-16 05:36:59'),
(3, 1, 3, '8.00', '2021-12-16 05:39:03', '2021-12-16 05:39:03'),
(4, 3, 3, '10.00', '2021-12-16 05:39:03', '2021-12-16 05:39:03'),
(5, 3, 1, '8.00', '2021-12-16 05:39:03', '2021-12-16 05:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hours` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `image`, `address`, `hours`, `created_at`, `updated_at`) VALUES
(1, 'Dr.', 'image.jpg', '127 Mara Common Suite 711', '8am-11pm', '2021-12-16 05:01:01', '2021-12-16 05:01:01'),
(2, 'Miss', 'image.jpg', '555 Keaton Wall Apt. 652', '8am-11pm', '2021-12-16 05:01:01', '2021-12-16 05:01:01'),
(3, 'Mrs.', 'image.jpg', '96387 Laurianne Unions', '8am-11pm', '2021-12-16 05:01:01', '2021-12-16 05:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants_foods`
--

CREATE TABLE `restaurants_foods` (
  `id` bigint UNSIGNED NOT NULL,
  `res_id` bigint UNSIGNED NOT NULL,
  `food_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants_foods`
--

INSERT INTO `restaurants_foods` (`id`, `res_id`, `food_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'image.jpg', '2021-12-16 05:30:10', '2021-12-16 05:30:10'),
(2, 1, 3, 'image.jpg', '2021-12-16 05:30:10', '2021-12-16 05:30:10'),
(3, 2, 1, 'image.jpg', '2021-12-16 05:30:10', '2021-12-16 05:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants_kitchen_type`
--

CREATE TABLE `restaurants_kitchen_type` (
  `id` bigint UNSIGNED NOT NULL,
  `res_id` bigint UNSIGNED NOT NULL,
  `kit_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants_kitchen_type`
--

INSERT INTO `restaurants_kitchen_type` (`id`, `res_id`, `kit_id`, `created_at`, `updated_at`) VALUES
(1, 3, 2, '2021-12-16 05:34:34', '2021-12-16 05:34:34'),
(2, 2, 2, '2021-12-16 05:34:34', '2021-12-16 05:34:34'),
(3, 1, 1, '2021-12-16 05:34:34', '2021-12-16 05:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `restfood_ingredients`
--

CREATE TABLE `restfood_ingredients` (
  `id` bigint UNSIGNED NOT NULL,
  `resfood_id` bigint UNSIGNED NOT NULL,
  `ing_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2021-12-16 00:48:55', NULL),
(2, 'User', '2021-12-16 00:48:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL DEFAULT '2',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verify_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `address`, `tel`, `role_id`, `email_verified_at`, `verify_token`, `created_at`, `updated_at`) VALUES
(1, 'joca', 'joca@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Srpska 25a', '+381 69 999 9999', 1, '2021-12-16 00:48:55', 'c5fe25896e49ddfe996db7508cf00534', '2021-12-16 00:48:55', NULL),
(2, 'pera', 'pera@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bosanska 28c', '+381 65 555 5555', 2, '2021-12-16 00:48:55', '79b7cdcd14db14e9cb498f1793817d69', '2021-12-16 00:48:55', NULL),
(4, 'marisol50', 'brenna.hand@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '849 Schaden Pass Suite 465', '1-667-963-3416', 2, '2021-12-16 04:51:48', '401e026eb79e25206dbf53a817d3ad26', '2021-12-16 04:51:48', '2021-12-16 04:51:48'),
(5, 'ambrose12', 'cierra.rau@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3465 Macy Corner', '+12147658810', 2, '2021-12-16 04:51:48', '319da68a44279b262e3140c6ebfe07a2', '2021-12-16 04:51:48', '2021-12-16 04:51:48'),
(6, 'gleichner.davonte', 'kflatley@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '85607 Bins Ports', '1-412-869-6212', 2, '2021-12-16 04:51:48', 'c92b612c51a0eb55026e4137573486c6', '2021-12-16 04:51:48', '2021-12-16 04:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `weight`
--

CREATE TABLE `weight` (
  `id` bigint UNSIGNED NOT NULL,
  `number` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weight`
--

INSERT INTO `weight` (`id`, `number`, `created_at`, `updated_at`) VALUES
(1, 485, '2021-12-16 05:08:37', '2021-12-16 05:08:37'),
(2, 372, '2021-12-16 05:08:37', '2021-12-16 05:08:37'),
(3, 463, '2021-12-16 05:08:37', '2021-12-16 05:08:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kitchen_type`
--
ALTER TABLE `kitchen_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `method_payment`
--
ALTER TABLE `method_payment`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_mp_id_foreign` (`mp_id`),
  ADD KEY `orders_resfood_id_foreign` (`resfood_id`);

--
-- Indexes for table `orders_delivery`
--
ALTER TABLE `orders_delivery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_delivery_order_id_foreign` (`order_id`),
  ADD KEY `orders_delivery_del_id_foreign` (`del_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pricelist`
--
ALTER TABLE `pricelist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pricelist_resfood_id_foreign` (`resfood_id`),
  ADD KEY `pricelist_we_id_foreign` (`we_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants_foods`
--
ALTER TABLE `restaurants_foods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurants_foods_res_id_foreign` (`res_id`),
  ADD KEY `restaurants_foods_food_id_foreign` (`food_id`);

--
-- Indexes for table `restaurants_kitchen_type`
--
ALTER TABLE `restaurants_kitchen_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurants_kitchen_type_res_id_foreign` (`res_id`),
  ADD KEY `restaurants_kitchen_type_kit_id_foreign` (`kit_id`);

--
-- Indexes for table `restfood_ingredients`
--
ALTER TABLE `restfood_ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restfood_ingredients_resfood_id_foreign` (`resfood_id`),
  ADD KEY `restfood_ingredients_ing_id_foreign` (`ing_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `weight`
--
ALTER TABLE `weight`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kitchen_type`
--
ALTER TABLE `kitchen_type`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `method_payment`
--
ALTER TABLE `method_payment`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_delivery`
--
ALTER TABLE `orders_delivery`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pricelist`
--
ALTER TABLE `pricelist`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `restaurants_foods`
--
ALTER TABLE `restaurants_foods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `restaurants_kitchen_type`
--
ALTER TABLE `restaurants_kitchen_type`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `restfood_ingredients`
--
ALTER TABLE `restfood_ingredients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `weight`
--
ALTER TABLE `weight`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_mp_id_foreign` FOREIGN KEY (`mp_id`) REFERENCES `method_payment` (`id`),
  ADD CONSTRAINT `orders_resfood_id_foreign` FOREIGN KEY (`resfood_id`) REFERENCES `restaurants_foods` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders_delivery`
--
ALTER TABLE `orders_delivery`
  ADD CONSTRAINT `orders_delivery_del_id_foreign` FOREIGN KEY (`del_id`) REFERENCES `delivery` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_delivery_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pricelist`
--
ALTER TABLE `pricelist`
  ADD CONSTRAINT `pricelist_resfood_id_foreign` FOREIGN KEY (`resfood_id`) REFERENCES `restaurants_foods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pricelist_we_id_foreign` FOREIGN KEY (`we_id`) REFERENCES `weight` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurants_foods`
--
ALTER TABLE `restaurants_foods`
  ADD CONSTRAINT `restaurants_foods_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `restaurants_foods_res_id_foreign` FOREIGN KEY (`res_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurants_kitchen_type`
--
ALTER TABLE `restaurants_kitchen_type`
  ADD CONSTRAINT `restaurants_kitchen_type_kit_id_foreign` FOREIGN KEY (`kit_id`) REFERENCES `kitchen_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `restaurants_kitchen_type_res_id_foreign` FOREIGN KEY (`res_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restfood_ingredients`
--
ALTER TABLE `restfood_ingredients`
  ADD CONSTRAINT `restfood_ingredients_ing_id_foreign` FOREIGN KEY (`ing_id`) REFERENCES `ingredients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `restfood_ingredients_resfood_id_foreign` FOREIGN KEY (`resfood_id`) REFERENCES `restaurants_foods` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
