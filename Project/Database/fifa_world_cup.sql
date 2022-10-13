-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2022 at 04:48 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fifa_world_cup`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fantasyteams`
--

CREATE TABLE `fantasyteams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `F_team_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` int(11) NOT NULL,
  `Budget_spent` int(11) NOT NULL,
  `budget_remaining` int(11) NOT NULL,
  `transfers_remaining` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goal_keepers`
--

CREATE TABLE `goal_keepers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cleansheets` int(11) NOT NULL,
  `saves` int(11) NOT NULL,
  `conceeded` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Home_goals` int(11) NOT NULL,
  `Away_goals` int(11) NOT NULL,
  `stadium` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Match_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Home_team` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Away_team` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `Home_goals`, `Away_goals`, `stadium`, `Match_time`, `Home_team`, `Away_team`, `created_at`, `updated_at`) VALUES
(1, 0, 3, 'Lusail', '09:00 PM', 'Qatar', 'Argentina', '2022-08-30 03:15:00', '0000-00-00 00:00:00'),
(2, 0, 0, 'Al Khor', '11:00 PM', 'England', 'Netherlands', '2022-08-30 05:15:00', '0000-00-00 00:00:00'),
(3, 0, 0, 'Al Wakrah', '7:00 PM', 'Brazil', 'Spain', '2022-08-31 01:15:00', '0000-00-00 00:00:00'),
(4, 0, 0, 'Doha', '9:00 PM', 'Germany', 'Portugal', '2022-08-31 03:15:00', '0000-00-00 00:00:00'),
(5, 0, 0, 'Al Rayyah', '11:00 PM', 'Qatar', 'England', '2022-08-30 05:15:00', '0000-00-00 00:00:00'),
(6, 0, 0, 'Lusail', '7:00 PM', 'Argentina', 'Netherlands', '2022-09-01 01:15:00', '0000-00-00 00:00:00'),
(7, 0, 0, 'Al Khor', '9:00 PM', 'Brazil', 'Germany', '2022-09-01 03:15:00', '0000-00-00 00:00:00'),
(8, 0, 0, 'Al Wakrah', '11:00 PM', 'Spain', 'Portugal', '2022-09-01 05:15:00', '0000-00-00 00:00:00'),
(9, 0, 0, 'Doha', '7:00 PM', 'Qatar', 'Netherlands', '2022-09-02 01:15:00', '0000-00-00 00:00:00'),
(10, 0, 0, 'Al Rayyah', '9:00 PM', 'England', 'Argentina', '2022-09-02 03:15:00', '0000-00-00 00:00:00'),
(11, 0, 0, 'Lusail', '11:00 PM', 'Brazil', 'Portugal', '2022-09-02 05:15:00', '0000-00-00 00:00:00'),
(12, 0, 0, 'Al Khor', '9:00 PM', 'Germany', 'Spain', '2022-09-03 03:15:00', '0000-00-00 00:00:00');

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
(24, '2014_10_12_000000_create_users_table', 1),
(25, '2014_10_12_100000_create_password_resets_table', 1),
(26, '2019_08_19_000000_create_failed_jobs_table', 1),
(27, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(28, '2022_08_24_090718_create_teams_table', 1),
(29, '2022_08_24_090833_create_venues_table', 1),
(30, '2022_08_24_195618_create_goal_keepers_table', 1),
(31, '2022_08_24_200914_create_players_table', 1),
(32, '2022_08_25_053959_create_fantasyteams_table', 2),
(33, '2022_08_25_055308_create_matches_table', 3),
(34, '2022_08_25_055904_create_players_table', 4),
(35, '2022_08_25_060431_create_teams_table', 5),
(36, '2022_08_25_084128_create_venues_table', 6),
(37, '2022_08_25_084541_create_outfielders_table', 7),
(38, '2022_08_26_160558_create_players_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `outfielders`
--

CREATE TABLE `outfielders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cleansheets` int(11) NOT NULL,
  `Assists` int(11) NOT NULL,
  `goals` int(11) NOT NULL,
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

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$a2xsjlGT7M9NQMM/iAkCyONNIN2ePyieF.OazsJAehHnKtY1Sa4MK', '2022-08-25 23:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Height` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Number_of_matches` int(11) NOT NULL,
  `Y_cards` int(11) NOT NULL,
  `R_cards` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `team_name`, `Height`, `Number_of_matches`, `Y_cards`, `R_cards`, `created_at`, `updated_at`) VALUES
(1, 'Aaron Ramsdale', 'England', '5.11', 0, 0, 0, '1998-05-14 06:00:00', '0000-00-00 00:00:00'),
(2, 'Trent Alexander-Arnold', 'England', '5.6', 0, 0, 0, '1996-05-15 05:00:00', '0000-00-00 00:00:00'),
(12, 'Meshaal Barsham', 'Qatar', '5.8', 0, 0, 0, '1988-02-12 05:00:00', '0000-00-00 00:00:00'),
(23, 'Juan Musso', 'Argentina', '5.4', 0, 0, 0, '2001-06-22 05:00:00', '0000-00-00 00:00:00'),
(24, 'Argentina', 'Nahuel Molina', '5.8', 0, 0, 0, '1993-11-22 03:00:00', '0000-00-00 00:00:00'),
(25, 'Cristian Romero', 'Argentina', '5.6', 0, 0, 0, '1988-06-24 07:00:00', '0000-00-00 00:00:00'),
(26, 'Nicolas Tagliafico', 'Argentina', '5.9', 0, 0, 0, '1999-04-08 02:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Groups` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rank` int(11) NOT NULL,
  `no_of_w` int(11) NOT NULL,
  `no_of_l` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `Groups`, `name`, `Rank`, `no_of_w`, `no_of_l`, `created_at`, `updated_at`) VALUES
(1, 'A', 'England', 5, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'A', 'Qatar', 49, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'A', 'Argentina', 3, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'A', 'Netherlands', 8, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'B', 'Brazil', 1, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'B', 'Spain', 6, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'B', 'Germany', 11, 5, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'B', 'Portugal', 9, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dob` date DEFAULT NULL,
  `fav_team` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fan_id` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `dob`, `fav_team`, `fan_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Arka', 'admin@gmail.com', '2022-08-28 08:25:25', NULL, NULL, NULL, '$2y$10$ZxQiYKGEEQlMu96wpQ..QeLRlrSR20xCMLnmjWj/blHzO9OobpnZO', NULL, '2022-08-24 14:13:38', '2022-08-28 02:25:25'),
(2, 'Chaney Williamson', 'wegymisieere@mailinator.com', '2022-08-27 20:33:00', NULL, NULL, NULL, '$2y$10$MgmkaY2T67Eff8wlYZ9eHeDkMBJamxP1A321P5Hq3/4uUP6avq5S.', NULL, '2022-08-25 02:02:48', '2022-08-27 14:33:00'),
(3, 'Lara Glenn', 'dasybaj@mailinator.com', '2022-08-26 05:44:03', NULL, NULL, NULL, '$2y$10$5mieAhg.D9ZDA0uGugBuZOsnbkKaWVc5Ioh0iNj8RHKp02ZKzLdtS', NULL, '2022-08-25 23:44:03', '2022-08-25 23:44:03'),
(8, 'Brock Wilkins', 'symylygi@mailinator.com', '2022-08-28 03:36:06', NULL, NULL, NULL, '$2y$10$OilxjD8WirsO8X2MopYspOXX74gtiibp/0kbfnDhXvZqAAQSLUM/2', NULL, '2022-08-27 21:36:06', '2022-08-27 21:36:06'),
(9, 'Steven Foley', 'cysi@mailinator.com', '2022-08-28 04:52:53', NULL, NULL, NULL, '$2y$10$pM7z4IRAWeHWEUvVn.Ls3.BlIqCadeOowz1oVdIoFDKIG3QRT.Asm', NULL, '2022-08-27 22:52:53', '2022-08-27 22:52:53'),
(10, 'Nola Ballard', 'wybabequky@mailinator.com', '2022-08-28 04:55:23', NULL, NULL, NULL, '$2y$10$hkjaVMpXRw8F5jvl6UAeV.sabABD06.ZFaXmbN/o5Rym9p4Up4ZMW', NULL, '2022-08-27 22:55:23', '2022-08-27 22:55:23'),
(11, 'Lucius Madden', 'tewululyx@mailinator.com', '2022-08-28 08:23:06', NULL, NULL, NULL, '$2y$10$Mrv2dWH2QH57uz2vNDtrnu9mZHzL.vv8FkrTcawxx3fM2Cezl6IQO', NULL, '2022-08-28 02:23:06', '2022-08-28 02:23:06'),
(12, 'Stacey Cohen', 'nymer@mailinator.com', '2022-08-28 08:23:38', NULL, NULL, NULL, '$2y$10$A4MOB20yF5tf.cSvWYg/AuTKK0GszYvy7TjDmjSVDAgy5QW2Ct5wu', NULL, '2022-08-28 02:23:38', '2022-08-28 02:23:38'),
(13, 'Kibo Delgado', 'jovap@mailinator.com', '2022-08-28 08:24:51', NULL, NULL, NULL, '$2y$10$18jr8.Ls6/G6QmBlA7ByM.uCabTJ0l7eMrHbAdoZUWeKq8f93mw0u', NULL, '2022-08-28 02:24:30', '2022-08-28 02:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `remianing_seats` int(11) NOT NULL,
  `booked_seats` int(11) NOT NULL,
  `matches_played` int(11) NOT NULL,
  `vip_ticket_price` int(11) NOT NULL,
  `economy_ticket_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`, `capacity`, `remianing_seats`, `booked_seats`, `matches_played`, `vip_ticket_price`, `economy_ticket_price`, `created_at`, `updated_at`) VALUES
(1, 'Lusail', 80000, 0, 0, 12, 305, 175, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Al Khor', 60000, 20000, 40000, 8, 295, 145, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Al Wakrah', 40000, 25000, 15000, 9, 435, 220, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Doha', 45000, 16000, 29000, 17, 356, 195, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Al Rayyan', 40000, 22000, 18000, 4, 275, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fantasyteams`
--
ALTER TABLE `fantasyteams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal_keepers`
--
ALTER TABLE `goal_keepers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outfielders`
--
ALTER TABLE `outfielders`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
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
-- AUTO_INCREMENT for table `fantasyteams`
--
ALTER TABLE `fantasyteams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goal_keepers`
--
ALTER TABLE `goal_keepers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `outfielders`
--
ALTER TABLE `outfielders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
