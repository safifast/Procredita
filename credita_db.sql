-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 17, 2020 at 05:07 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `credita_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `loan_amount` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_size` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `loan_amount`, `user_id`, `file_size`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2000000, 1, 2, '2020-02-15 21:29:20', '2020-02-15 21:29:20', NULL),
(2, 3300000, 1, 2, '2020-02-15 21:29:32', '2020-02-15 21:29:32', NULL);

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_02_11_112735_create_user_details_table', 1),
(10, '2020_02_15_172400_create_histories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1115e03eecc99bc1a74f5aa05c2a9cb40f975c44c28d563ed65eb591cfff5ffe0cae1aa4dfa660da', 1, 1, 'AppName', '[]', 0, '2020-02-15 22:22:02', '2020-02-15 22:22:02', '2021-02-16 04:22:02'),
('20271d6005aa2a2859c76a73a36d994fb43844d0fef9b06da88221fb1944108ed62ab7a168989a87', 2, 1, 'AppName', '[]', 0, '2020-02-15 21:32:27', '2020-02-15 21:32:27', '2021-02-16 03:32:27'),
('a0a91f799d7c448ca66ec47fd4af90419d6232c7d3e1689e9eb4d0e3619d6f61b5bb9cbe860ffe7c', 1, 1, 'AppName', '[]', 0, '2020-02-15 21:27:51', '2020-02-15 21:27:51', '2021-02-16 03:27:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, NULL, 'Laravel Personal Access Client', 'FElOXS9eE8CAHLDWgZyzzFA0nfLiU5vFT0OZtbpW', 'http://localhost', 1, 0, 0, '2020-02-15 21:26:01', '2020-02-15 21:26:01'),
(2, NULL, 'Laravel Password Grant Client', 'LUtK30ks0obA24g98kBdghaSqN1LumePB4O3XoWe', 'http://localhost', 0, 1, 0, '2020-02-15 21:26:01', '2020-02-15 21:26:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-02-15 21:26:01', '2020-02-15 21:26:01');

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
(1, 'fname lname', 'u1@gmail.com', NULL, '$2y$10$N5TPFqA0N6zCg8eV5azh8eVC9gLlubr8MAVfhEbevCWScgrOoHATO', NULL, '2020-02-15 21:27:51', '2020-02-15 21:27:51'),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$fDOxVToCoe7oAV7sr6erPOTlqTMU1CY5cudo1mKX.F3hBp0DecCkO', NULL, '2020-02-15 21:32:27', '2020-02-15 21:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `loan_amount` int(11) NOT NULL,
  `loan_duration` int(11) NOT NULL,
  `monthly_replayment` int(11) NOT NULL,
  `total_replayment` int(11) NOT NULL,
  `total_interest` int(11) NOT NULL,
  `p_d_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_d_fName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_d_lName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_d_mName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_d_dateOfBirth` date NOT NULL,
  `p_d_noOfDependents` int(11) NOT NULL,
  `c_d_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_d_currentAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_d_liveDucation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_d_residencial` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `y_i_emplymentStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `y_i_emplyerName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `y_i_jobTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `y_i_phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `y_i_paidTime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `y_i_paidWay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_a_accountName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_a_accountNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_a_bankName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_a_bvn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_a_accountOld` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_a_phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gov_issue_file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utility_bill_file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_statement_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `loan_amount`, `loan_duration`, `monthly_replayment`, `total_replayment`, `total_interest`, `p_d_title`, `p_d_fName`, `p_d_lName`, `p_d_mName`, `p_d_dateOfBirth`, `p_d_noOfDependents`, `c_d_phone`, `c_d_currentAddress`, `c_d_liveDucation`, `c_d_residencial`, `y_i_emplymentStatus`, `y_i_emplyerName`, `y_i_jobTitle`, `y_i_phoneNumber`, `y_i_paidTime`, `y_i_paidWay`, `b_a_accountName`, `b_a_accountNumber`, `b_a_bankName`, `b_a_bvn`, `b_a_accountOld`, `b_a_phoneNumber`, `gov_issue_file_path`, `utility_bill_file_path`, `bank_statement_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2141225, 3, 1141986, 1141986, 1284735, 'title 1', 'fname', 'lname', 'm name', '2020-02-22', 12, '(+92)2356142574', '55, Crecent Road, Dhanmondi', 'one', 'Tenant', 'Part time employed', 'e name', 'j titile', '(+92)2356142574', 'weekly', 'cheque', 'a name', '234234', 'b name', 'lasdkfj23', '2', '(+92)2356142574', '/opt/lampp/temp/phpC9uXjA', '/opt/lampp/temp/phpcc77hL', '/opt/lampp/temp/phpM9NlgW', '2020-02-15 21:27:52', '2020-02-15 21:27:52', NULL),
(2, 2, 2141225, 3, 1141986, 1141986, 1284735, 'title 1', 'fname', 'lname', 'm name', '2020-02-22', 12, '(+92)2356142574', '55, Crecent Road, Dhanmondi', 'one', 'Tenant', 'Part time employed', 'e name', 'j titile', '(+92)2356142574', 'weekly', 'cheque', 'a name', '234234', 'b name', 'lasdkfj23', '2', '(+92)2356142574', '[object Object]', '[object Object]', '[object Object]', '2020-02-15 21:32:28', '2020-02-15 21:32:28', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
