-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 24, 2020 at 11:18 AM
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
  `loan_amount` int(11) DEFAULT NULL,
  `repayment_due` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `file_size` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_requests`
--

CREATE TABLE `loan_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `loan_duration` int(11) NOT NULL,
  `monthly_repayment` int(11) NOT NULL,
  `monthly_repayment_due` int(11) NOT NULL DEFAULT 0,
  `monthly_repayment_recived` int(11) NOT NULL DEFAULT 0,
  `total_repayment` int(11) NOT NULL,
  `total_interest` int(11) NOT NULL,
  `approved` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(8, '2019_05_03_000001_create_customer_columns', 1),
(9, '2019_05_03_000002_create_subscriptions_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2020_02_15_172400_create_histories_table', 1),
(12, '2020_02_18_074205_create_loan_requests_table', 1),
(13, '2020_02_19_160049_create_user_details_table', 1),
(14, '2020_02_23_094039_create_jobs_table', 1),
(15, '2020_02_23_124248_create_loans_table', 1);

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
(1, NULL, 'Laravel Personal Access Client', '4phcDe9ntkDqwLmbdd4iSA9tjeOZxVEv03TDcVi1', 'http://localhost', 1, 0, 0, '2020-02-23 09:16:48', '2020-02-23 09:16:48'),
(2, NULL, 'Laravel Password Grant Client', '0TDVNQhwInzmRzNSU3DkYLLyhfu0lxtC775PcLr9', 'http://localhost', 0, 1, 0, '2020-02-23 09:16:48', '2020-02-23 09:16:48');

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
(1, 1, '2020-02-23 09:16:48', '2020-02-23 09:16:48');

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
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`) VALUES
(1, 'f name l name', 'admin@gmail.com', NULL, '$2y$10$7pM/wDRb2XqZXjhGqooNDe3h5P8.D/5h38tzGQpZ/81tHc.zeJX/6', NULL, '2020-02-23 09:17:44', '2020-02-23 09:17:44', NULL, NULL, NULL, NULL),
(2, 'f name l name', 'u1@gmail.com', NULL, '$2y$10$dVHEwiMR2fogLbtEMHIoFOg0TAiGi0iBsDUN22fT1T9SIjuc8/jEe', NULL, '2020-02-23 09:36:43', '2020-02-23 09:36:43', NULL, NULL, NULL, NULL),
(3, 'f name l name', 'u2@gmail.com', NULL, '$2y$10$oVqFR6PYQ7tWk5tsY.wJDO.BNSLpJ7xXk.7q4k9c4jxh2aZPo/tRC', NULL, '2020-02-23 09:37:57', '2020-02-23 09:37:57', NULL, NULL, NULL, NULL),
(4, 'f name l name', 'u3@gmail.com', NULL, '$2y$10$7MpmDuscBXywbwqLHncTXuMqnBb8vJfpWKfpHUqvyO.Jb.yZH8G2y', NULL, '2020-02-23 10:37:05', '2020-02-23 10:37:05', NULL, NULL, NULL, NULL),
(5, 'f name l name', 'u4@gmail.com', NULL, '$2y$10$wiGJROIMVh11Yvmk8CxEjexCqmilCpyhy2CMBt9m7s4pUUZQqZkVu', NULL, '2020-02-23 10:39:17', '2020-02-23 10:39:17', NULL, NULL, NULL, NULL),
(6, 'f name l name', 'u5@gmail.com', NULL, '$2y$10$0p6Nw2lsKF4budvoP5nvAOr4y12pqCGoWkwmLyC7VVTWbm7YwkFAm', NULL, '2020-02-23 10:45:10', '2020-02-23 10:45:10', NULL, NULL, NULL, NULL),
(7, 'f name l name', 'u6@gmail.com', NULL, '$2y$10$lpSqAtRNQOunp2VzxtLLC.XHib9VXTik3MKCyJc45MisTh3FxACLW', NULL, '2020-02-23 10:48:17', '2020-02-23 10:48:17', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `p_d_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `p_d_fName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_d_lName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_d_mName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_d_dateOfBirth` date NOT NULL,
  `p_d_noOfDependents` int(11) NOT NULL,
  `c_d_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_d_currentAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_d_liveDucation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_d_residencial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `user_details` (`id`, `p_d_title`, `user_id`, `p_d_fName`, `p_d_lName`, `p_d_mName`, `p_d_dateOfBirth`, `p_d_noOfDependents`, `c_d_phone`, `c_d_currentAddress`, `c_d_liveDucation`, `c_d_residencial`, `y_i_emplymentStatus`, `y_i_emplyerName`, `y_i_jobTitle`, `y_i_phoneNumber`, `y_i_paidTime`, `y_i_paidWay`, `b_a_accountName`, `b_a_accountNumber`, `b_a_bankName`, `b_a_bvn`, `b_a_accountOld`, `b_a_phoneNumber`, `gov_issue_file_path`, `utility_bill_file_path`, `bank_statement_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'title', 1, 'f name', 'l name', 'm name', '2020-02-22', 23, '(+92)2356142574', 'aslkdjf', 'lskd', 'owner', 'Full time employed', 'name', 'j dkna', '(+92)2356142574', 'weekly', 'Bank deposits', 'a name', '283749832', 'lasdkjf', 'aslkdjf', 'one', '(+92)2356142574', '[object Object]', '[object Object]', '[object Object]', '2020-02-23 09:17:44', '2020-02-23 09:17:44', NULL),
(2, 'title', 2, 'f name', 'l name', 'm name', '2020-02-22', 23, '(+92)2356142574', 'aslkdjf', 'lskd', 'owner', 'Full time employed', 'name', 'j dkna', '(+92)2356142574', 'weekly', 'Bank deposits', 'a name', '283749832', 'lasdkjf', 'aslkdjf', 'one', '(+92)2356142574', '/opt/lampp/temp/phpToq4IB', '/opt/lampp/temp/phpdMICNn', '/opt/lampp/temp/phppl9bS9', '2020-02-23 09:36:43', '2020-02-23 09:36:43', NULL),
(3, 'title', 3, 'f name', 'l name', 'm name', '2020-02-22', 23, '(+92)2356142574', 'aslkdjf', 'lskd', 'owner', 'Full time employed', 'name', 'j dkna', '(+92)2356142574', 'weekly', 'Bank deposits', 'a name', '283749832', 'lasdkjf', 'aslkdjf', 'one', '(+92)2356142574', '[object Object]', '[object Object]', '[object Object]', '2020-02-23 09:37:57', '2020-02-23 09:37:57', NULL),
(4, 'title', 4, 'f name', 'l name', 'm name', '2020-02-22', 23, '(+92)2356142574', 'aslkdjf', 'lskd', 'owner', 'Full time employed', 'name', 'j dkna', '(+92)2356142574', 'weekly', 'Bank deposits', 'a name', '283749832', 'lasdkjf', 'aslkdjf', 'one', '(+92)2356142574', '/opt/lampp/temp/phpto23a8', '/opt/lampp/temp/phpzrYpu6', '/opt/lampp/temp/phpdHjSN4', '2020-02-23 10:37:05', '2020-02-23 10:37:05', NULL),
(5, 'title', 4, 'f name', 'l name', 'm name', '2020-02-22', 23, '(+92)2356142574', 'aslkdjf', 'lskd', 'owner', 'Full time employed', 'name', 'j dkna', '(+92)2356142574', 'weekly', 'Bank deposits', 'a name', '283749832', 'lasdkjf', 'aslkdjf', 'one', '(+92)2356142574', '/opt/lampp/temp/phpD94Hft', '/opt/lampp/temp/phpr7gAHR', '/opt/lampp/temp/phpZcFy9f', '2020-02-23 10:38:55', '2020-02-23 10:38:55', NULL),
(6, 'title', 5, 'f name', 'l name', 'm name', '2020-02-22', 23, '(+92)2356142574', 'aslkdjf', 'lskd', 'owner', 'Full time employed', 'name', 'j dkna', '(+92)2356142574', 'weekly', 'Bank deposits', 'a name', '283749832', 'lasdkjf', 'aslkdjf', 'one', '(+92)2356142574', '[object Object]', '[object Object]', '[object Object]', '2020-02-23 10:39:17', '2020-02-23 10:39:17', NULL),
(7, 'title', 6, 'f name', 'l name', 'm name', '2020-02-22', 23, '(+92)2356142574', 'aslkdjf', 'lskd', 'owner', 'Full time employed', 'name', 'j dkna', '(+92)2356142574', 'weekly', 'Bank deposits', 'a name', '283749832', 'lasdkjf', 'aslkdjf', 'one', '(+92)2356142574', '[object Object]', '[object Object]', '[object Object]', '2020-02-23 10:45:11', '2020-02-23 10:45:11', NULL),
(8, 'title', 7, 'f name', 'l name', 'm name', '2020-02-22', 23, '(+92)2356142574', 'aslkdjf', 'lskd', 'owner', 'Full time employed', 'name', 'j dkna', '(+92)2356142574', 'weekly', 'Bank deposits', 'a name', '283749832', 'lasdkjf', 'aslkdjf', 'one', '(+92)2356142574', '[object Object]', '[object Object]', '[object Object]', '2020-02-23 10:48:18', '2020-02-23 10:48:18', NULL);

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
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_requests`
--
ALTER TABLE `loan_requests`
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
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_requests`
--
ALTER TABLE `loan_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
