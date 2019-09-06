-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 03, 2019 at 06:01 PM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.3.7-2+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--
CREATE DATABASE IF NOT EXISTS `homestead` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE `homestead`;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` datetime(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `topic`, `content`, `published_at`, `created_at`, `updated_at`) VALUES
(1, '/test/topic', '{content:body}', '2019-08-12 21:12:26.987', '2019-09-02 20:03:15', '2019-09-02 20:03:15'),
(2, '/test/topic', '{content:body}', '2019-08-12 21:12:26.987', '2019-09-02 20:10:25', '2019-09-02 20:10:25'),
(3, '/test/topic', '{content:body}', '2019-08-12 21:12:26.987', '2019-09-02 20:10:28', '2019-09-02 20:10:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(6, '2016_06_01_000004_create_oauth_clients_table', 2),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(15, '2019_08_27_200540_create_mqtt_messages_table', 3),
(16, '2019_09_01_210216_create_messages_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mqtt_messages`
--

CREATE TABLE `mqtt_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0f208969ca4450b03cbcab33cbe8e226133a660960fe405da8a6d6d9b1e094130dff31545e0eae3a', 2, 3, 'Todo App', '[]', 0, '2019-09-03 17:53:27', '2019-09-03 17:53:27', '2020-09-03 17:53:27'),
('1074255af5cb5d6c774d204b499b62f2aeb2d4db4c063cd4505a4df4f6121d82638cbf48dd73e623', 2, 1, 'Todo App', '[]', 0, '2019-08-24 10:17:55', '2019-08-24 10:17:55', '2020-08-24 10:17:55'),
('20be56f79e9aa0eeaaf92738a367f039f687e4b805934845c579f8d4b9ed0a15c83b467e27af80f8', 2, 3, 'Todo App', '[]', 0, '2019-09-02 18:31:25', '2019-09-02 18:31:25', '2020-09-02 18:31:25'),
('252169b713165e5735e50e00f676ab7b8f0a53164aa2e7bc7b303033718fde2a93d0d7e810025430', 2, 3, 'Todo App', '[]', 0, '2019-09-02 18:34:50', '2019-09-02 18:34:50', '2020-09-02 18:34:50'),
('28f1ae1314a74f3c98c3bf49934c8bb53b5a17f083af42a8eec51fbfd8c909e3c1024e3566ecfb03', 2, 1, 'Todo App', '[]', 0, '2019-08-23 16:07:58', '2019-08-23 16:07:58', '2020-08-23 16:07:58'),
('4d1a10fd1b58138d31fe1a00fceccbd168681cda02ba0155eef044a17bfeb9b8f7c071256e8e629b', 2, 1, 'Todo App', '[]', 0, '2019-08-23 14:52:40', '2019-08-23 14:52:40', '2020-08-23 14:52:40'),
('4e18e7fbdb2d0b7da909bbf63f8ec2fbabb955b22ba65220a45513cbc4b59aecf8b75dcb7a6c43b6', 2, 1, 'Todo App', '[]', 0, '2019-08-23 16:06:50', '2019-08-23 16:06:50', '2020-08-23 16:06:50'),
('5b2ee44ead93e68ce9906b45096881254713d5532f7d89596fd7272674eb869db6f4da9eefc92fbc', 2, 3, 'Todo App', '[]', 0, '2019-09-02 18:07:49', '2019-09-02 18:07:49', '2020-09-02 18:07:49'),
('6eb12b59bff21063be634b1d013c966cb0995c3bf65218163f29c11f78eaa42e90fa836fef6d62bb', 2, 3, 'Todo App', '[]', 0, '2019-09-02 18:27:32', '2019-09-02 18:27:32', '2020-09-02 18:27:32'),
('9008ac87d1e20faf356e5359e4951297143201236bad93578eb35777eb05888821e1282781c9e956', 2, 3, 'Todo App', '[]', 0, '2019-09-02 18:15:40', '2019-09-02 18:15:40', '2020-09-02 18:15:40'),
('920b5fa34d0afd8802cb408083f98167f6f20ba1687cb88719de42213dc823f90eab6d498c6140df', 2, 3, 'Todo App', '[]', 0, '2019-09-02 18:20:04', '2019-09-02 18:20:04', '2020-09-02 18:20:04'),
('9f53a4f207f1118c6ee60d8fa6725447e7e81aaa8ad71b7a699bb6d3eddca2bc4c0a855c0b529971', 2, 3, 'Todo App', '[]', 0, '2019-09-02 18:19:06', '2019-09-02 18:19:06', '2020-09-02 18:19:06'),
('9f75a1cbb454f6c305fc2114b9e180874e4b649b3d165010a4057d0136724bacf6507a95ba866310', 2, 1, 'Todo App', '[]', 0, '2019-08-23 18:52:54', '2019-08-23 18:52:54', '2020-08-23 18:52:54'),
('a6bda0ffbf67faf734cea2ee7a7c60a6683816ff42f65af3872e484ea37529c1ff892c9ad015d107', 2, 1, 'Todo App', '[]', 0, '2019-08-23 16:07:48', '2019-08-23 16:07:48', '2020-08-23 16:07:48'),
('cf61abcf329528ff4a94212525abece26e7d47f6d5358d3244e488e25c9b64538f85413d8f305c75', 2, 3, 'Todo App', '[]', 0, '2019-09-02 18:27:50', '2019-09-02 18:27:50', '2020-09-02 18:27:50'),
('d4ec96191e7dfca6f75993e4e11c083d19866d986bcfac225f595b1f5c567d208d97b1e89d40be63', 2, 3, 'Todo App', '[]', 0, '2019-09-02 18:07:29', '2019-09-02 18:07:29', '2020-09-02 18:07:29'),
('de436d24dcb67d7aad3035a96dfeba64af276ba7aacf4c89b004f17afefc31f3248676f38dd87766', 2, 3, 'Todo App', '[]', 0, '2019-09-02 18:17:49', '2019-09-02 18:17:49', '2020-09-02 18:17:49'),
('efa5ef2e9421f646730a9c8a1e17a0bbabe6691f1e5676d3aca43cb0288fc0473d8fdfc55cccd58d', 2, 3, 'Todo App', '[]', 0, '2019-09-02 18:32:27', '2019-09-02 18:32:27', '2020-09-02 18:32:27'),
('f4410d431a254a916ec5f7f219dcd8041d57b87ad666ee577b8068be0d9da6dd78e3dc04aee0f4ab', 2, 1, 'Todo App', '[]', 0, '2019-08-28 21:23:02', '2019-08-28 21:23:02', '2020-08-28 21:23:02'),
('f6c8d373c11480da8e3cce1d0d71da13080a205a95d8bae9306ff752a58a7e698d9e856b99df1017', 2, 1, 'Todo App', '[]', 0, '2019-08-23 16:07:55', '2019-08-23 16:07:55', '2020-08-23 16:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ChrisIoT Personal Access Client', 'u7OkuA2hRPWITyROEzX9NgCA8vHwMp3HZjfLEA3z', 'http://localhost', 1, 0, 0, '2019-08-23 10:42:22', '2019-08-23 10:42:22'),
(2, NULL, 'ChrisIoT Password Grant Client', 'RvEofAIqfRs3BSPNUNd8tKeCgIYcQoqK0BCgubpc', 'http://localhost', 0, 1, 0, '2019-08-23 10:42:22', '2019-08-23 10:42:22'),
(3, NULL, 'ChrisIoT Personal Access Client', 'qb01Nzs6vxIhspaNtWAFZrcWKq6qcGIPpJ7e3uKc', 'http://localhost', 1, 0, 0, '2019-08-28 21:43:41', '2019-08-28 21:43:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-08-23 10:42:22', '2019-08-23 10:42:22'),
(2, 3, '2019-08-28 21:43:41', '2019-08-28 21:43:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime(3) NOT NULL,
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'DEV-659-b', 'ccccccccccccccccc', '2019-08-21 14:10:25.000', '2019-08-21 14:10:25.000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fan ON Level', 'cbattisson@gmaisdl.com', NULL, '$2y$10$/T2NI4YcJLNHQt9PW6KbCOPFehTh5y.0Z7vuDqkHVIqeHUUIgRIDG', NULL, '2019-08-12 21:12:26', '2019-08-12 21:12:26'),
(2, 'chris', 'cbattisson@gmail.com', NULL, '$2y$10$Ukiq7WbfKMIsTiedHvnxhegRPjqndNujQnavvSQ.bMTaF6DCLQYPC', NULL, '2019-08-23 14:35:06', '2019-08-23 14:35:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mqtt_messages`
--
ALTER TABLE `mqtt_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mqtt_messages`
--
ALTER TABLE `mqtt_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
