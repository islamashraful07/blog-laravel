-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2019 at 03:29 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Wordpress', '2019-04-05 01:13:57', '2019-04-05 02:48:51'),
(3, 'Laravel', '2019-04-05 02:49:00', '2019-04-05 02:49:00'),
(4, 'Node js', '2019-04-05 02:49:13', '2019-04-05 02:49:13'),
(5, 'PHP', '2019-04-05 02:49:45', '2019-04-05 02:50:00'),
(6, 'Vue Js', '2019-04-05 02:57:10', '2019-04-05 02:57:10');

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
(29, '2014_10_12_000000_create_users_table', 1),
(30, '2014_10_12_100000_create_password_resets_table', 1),
(31, '2019_03_23_063911_create_posts_table', 1),
(32, '2019_03_23_065111_create_categories_table', 1),
(33, '2019_03_30_043826_create_tags_table', 1),
(34, '2019_03_30_044333_create_post_tag_table', 1),
(35, '2019_04_03_161345_create_profiles_table', 1),
(36, '2019_04_04_190013_create_settings_table', 2),
(37, '2019_04_06_085610_insert_user_id_collumn', 3),
(38, '2019_04_06_085657_insert_user_id_column', 3);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `featured`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
(3, 'Making A Project With Laravel', 'making-a-project-with-laravel', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus \r\nvestibulum aliquet urna, nec finibus mi euismod ac. Phasellus porta nibh\r\n a semper malesuada. Duis fermentum quis libero blandit varius. Nam \r\nrisus justo, fermentum sed dictum varius, lacinia ut massa. Donec non \r\nporta eros. Praesent ipsum dui, faucibus vitae est eu, ornare vulputate \r\nlorem. Proin luctus ipsum eget sapien pharetra imperdiet. Quisque \r\nscelerisque at justo vitae ultricies. Fusce imperdiet tellus at tempor \r\ncursus. Phasellus sit amet placerat libero, quis consectetur ligula. \r\nVestibulum sed tellus quis enim sollicitudin sollicitudin sed sit amet \r\narcu.\r\n</p>\r\n<p>\r\nFusce in mattis lorem. Quisque posuere est quis purus ultricies \r\nultrices. Aliquam eget metus diam. Pellentesque posuere bibendum felis, \r\nnon egestas justo porta sit amet. Maecenas eleifend diam id velit \r\naliquam accumsan. Duis sagittis arcu vel leo ultrices eleifend. Quisque \r\neu lorem odio. Donec in dui eu quam sollicitudin feugiat. Aliquam \r\ncommodo nisi in turpis lacinia, sit amet eleifend eros rutrum. \r\nVestibulum id urna a justo viverra imperdiet in ut nisi. Nam at sodales \r\nligula. Morbi purus dui, gravida non elementum quis, tristique aliquam \r\nturpis. Vestibulum dolor orci, blandit faucibus sodales ut, rutrum a \r\nelit. Phasellus vel justo facilisis quam sollicitudin cursus id pharetra\r\n turpis. Etiam laoreet, erat nec eleifend laoreet, tellus nulla \r\nmalesuada arcu, ac pretium orci velit eget purus. In consequat feugiat \r\ndignissim.\r\n</p>\r\n<p>\r\nVivamus suscipit arcu tellus, ac scelerisque nulla ultrices ut. Maecenas\r\n eu fringilla dolor. In lectus massa, bibendum et sem ultrices, tempor \r\neuismod quam. Suspendisse ut consequat turpis. Nulla euismod sem \r\nmolestie tellus placerat viverra. Integer dignissim laoreet erat sit \r\namet rhoncus. Aenean a ante dui. Fusce laoreet dui diam, vitae convallis\r\n lorem cursus nec. Pellentesque sed tempor mi. Mauris commodo, sem eu \r\nluctus scelerisque, mi arcu hendrerit risus, ac aliquam nunc mi vel \r\nrisus. Praesent venenatis commodo lorem, vestibulum ultrices arcu rutrum\r\n sed. Cras urna turpis, convallis faucibus luctus vel, feugiat quis \r\ntellus. Etiam velit risus, feugiat sed efficitur eleifend, varius nec \r\nneque.\r\n</p>', 3, 'uploads/posts/1554455111How-to-Create-Routes-in-Laravel-Banner-1.jpg', NULL, '2019-04-05 03:05:11', '2019-04-29 05:00:47', 1),
(5, 'Toastr Notification System Install in laravel', 'toastr-notification-system-install-in-laravel', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus \r\nvestibulum aliquet urna, nec finibus mi euismod ac. Phasellus porta nibh\r\n a semper malesuada. Duis fermentum quis libero blandit varius. Nam \r\nrisus justo, fermentum sed dictum varius, lacinia ut massa. Donec non \r\nporta eros. Praesent ipsum dui, faucibus vitae est eu, ornare vulputate \r\nlorem. Proin luctus ipsum eget sapien pharetra imperdiet. Quisque \r\nscelerisque at justo vitae ultricies. Fusce imperdiet tellus at tempor \r\ncursus. Phasellus sit amet placerat libero, quis consectetur ligula. \r\nVestibulum sed tellus quis enim sollicitudin sollicitudin sed sit amet \r\narcu.\r\n</p>\r\n<p>\r\nFusce in mattis lorem. Quisque posuere est quis purus ultricies \r\nultrices. Aliquam eget metus diam. Pellentesque posuere bibendum felis, \r\nnon egestas justo porta sit amet. Maecenas eleifend diam id velit \r\naliquam accumsan. Duis sagittis arcu vel leo ultrices eleifend. Quisque \r\neu lorem odio. Donec in dui eu quam sollicitudin feugiat. Aliquam \r\ncommodo nisi in turpis lacinia, sit amet eleifend eros rutrum. \r\nVestibulum id urna a justo viverra imperdiet in ut nisi. Nam at sodales \r\nligula. Morbi purus dui, gravida non elementum quis, tristique aliquam \r\nturpis. Vestibulum dolor orci, blandit faucibus sodales ut, rutrum a \r\nelit. Phasellus vel justo facilisis quam sollicitudin cursus id pharetra\r\n turpis. Etiam laoreet, erat nec eleifend laoreet, tellus nulla \r\nmalesuada arcu, ac pretium orci velit eget purus. In consequat feugiat \r\ndignissim.\r\n</p>\r\n<p>\r\nVivamus suscipit arcu tellus, ac scelerisque nulla ultrices ut. Maecenas\r\n eu fringilla dolor. In lectus massa, bibendum et sem ultrices, tempor \r\neuismod quam. Suspendisse ut consequat turpis. Nulla euismod sem \r\nmolestie tellus placerat viverra. Integer dignissim laoreet erat sit \r\namet rhoncus. Aenean a ante dui. Fusce laoreet dui diam, vitae convallis\r\n lorem cursus nec. Pellentesque sed tempor mi. Mauris commodo, sem eu \r\nluctus scelerisque, mi arcu hendrerit risus, ac aliquam nunc mi vel \r\nrisus. Praesent venenatis commodo lorem, vestibulum ultrices arcu rutrum\r\n sed. Cras urna turpis, convallis faucibus luctus vel, feugiat quis \r\ntellus. Etiam velit risus, feugiat sed efficitur eleifend, varius nec \r\nneque.\r\n</p>', 3, 'uploads/posts/1554457887notification.jpg', NULL, '2019-04-05 03:51:27', '2019-04-05 03:51:27', 1),
(7, 'Npm Package', 'npm-package', '<p>asbflahkffpahhajfl<br></p>', 6, 'uploads/posts/1554462859How-to-Create-Routes-in-Laravel-Banner-1.jpg', NULL, '2019-04-05 05:14:19', '2019-04-05 05:14:19', 1),
(8, 'Introduction to PHP', 'introduction-to-php', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus \r\nvestibulum aliquet urna, nec finibus mi euismod ac. Phasellus porta nibh\r\n a semper malesuada. Duis fermentum quis libero blandit varius. Nam \r\nrisus justo, fermentum sed dictum varius, lacinia ut massa. Donec non \r\nporta eros. Praesent ipsum dui, faucibus vitae est eu, ornare vulputate \r\nlorem. Proin luctus ipsum eget sapien pharetra imperdiet. Quisque \r\nscelerisque at justo vitae ultricies. Fusce imperdiet tellus at tempor \r\ncursus. Phasellus sit amet placerat libero, quis consectetur ligula. \r\nVestibulum sed tellus quis enim sollicitudin sollicitudin sed sit amet \r\narcu.\r\n</p>\r\n<p>\r\nFusce in mattis lorem. Quisque posuere est quis purus ultricies \r\nultrices. Aliquam eget metus diam. Pellentesque posuere bibendum felis, \r\nnon egestas justo porta sit amet. Maecenas eleifend diam id velit \r\naliquam accumsan. Duis sagittis arcu vel leo ultrices eleifend. Quisque \r\neu lorem odio. Donec in dui eu quam sollicitudin feugiat. Aliquam \r\ncommodo nisi in turpis lacinia, sit amet eleifend eros rutrum. \r\nVestibulum id urna a justo viverra imperdiet in ut nisi. Nam at sodales \r\nligula. Morbi purus dui, gravida non elementum quis, tristique aliquam \r\nturpis. Vestibulum dolor orci, blandit faucibus sodales ut, rutrum a \r\nelit. Phasellus vel justo facilisis quam sollicitudin cursus id pharetra\r\n turpis. Etiam laoreet, erat nec eleifend laoreet, tellus nulla \r\nmalesuada arcu, ac pretium orci velit eget purus. In consequat feugiat \r\ndignissim.\r\n</p>\r\n<p>\r\nVivamus suscipit arcu tellus, ac scelerisque nulla ultrices ut. Maecenas\r\n eu fringilla dolor. In lectus massa, bibendum et sem ultrices, tempor \r\neuismod quam. Suspendisse ut consequat turpis. Nulla euismod sem \r\nmolestie tellus placerat viverra. Integer dignissim laoreet erat sit \r\namet rhoncus. Aenean a ante dui. Fusce laoreet dui diam, vitae convallis\r\n lorem cursus nec. Pellentesque sed tempor mi. Mauris commodo, sem eu \r\nluctus scelerisque, mi arcu hendrerit risus, ac aliquam nunc mi vel \r\nrisus. Praesent venenatis commodo lorem, vestibulum ultrices arcu rutrum\r\n sed. Cras urna turpis, convallis faucibus luctus vel, feugiat quis \r\ntellus. Etiam velit risus, feugiat sed efficitur eleifend, varius nec \r\nneque.\r\n</p>', 5, 'uploads/posts/1554468548php-1-1024x341.png', NULL, '2019-04-05 06:49:08', '2019-04-05 06:49:08', 1),
(10, 'Array Concept In php', 'array-concept-in-php', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus \r\nvestibulum aliquet urna, nec finibus mi euismod ac. Phasellus porta nibh\r\n a semper malesuada. Duis fermentum quis libero blandit varius. Nam \r\nrisus justo, fermentum sed dictum varius, lacinia ut massa. Donec non \r\nporta eros. Praesent ipsum dui, faucibus vitae est eu, ornare vulputate \r\nlorem. Proin luctus ipsum eget sapien pharetra imperdiet. Quisque \r\nscelerisque at justo vitae ultricies. Fusce imperdiet tellus at tempor \r\ncursus. Phasellus sit amet placerat libero, quis consectetur ligula. \r\nVestibulum sed tellus quis enim sollicitudin sollicitudin sed sit amet \r\narcu.\r\n</p>\r\n<p>\r\nFusce in mattis lorem. Quisque posuere est quis purus ultricies \r\nultrices. Aliquam eget metus diam. Pellentesque posuere bibendum felis, \r\nnon egestas justo porta sit amet. Maecenas eleifend diam id velit \r\naliquam accumsan. Duis sagittis arcu vel leo ultrices eleifend. Quisque \r\neu lorem odio. Donec in dui eu quam sollicitudin feugiat. Aliquam \r\ncommodo nisi in turpis lacinia, sit amet eleifend eros rutrum. \r\nVestibulum id urna a justo viverra imperdiet in ut nisi. Nam at sodales \r\nligula. Morbi purus dui, gravida non elementum quis, tristique aliquam \r\nturpis. Vestibulum dolor orci, blandit faucibus sodales ut, rutrum a \r\nelit. Phasellus vel justo facilisis quam sollicitudin cursus id pharetra\r\n turpis. Etiam laoreet, erat nec eleifend laoreet, tellus nulla \r\nmalesuada arcu, ac pretium orci velit eget purus. In consequat feugiat \r\ndignissim.\r\n</p>\r\n<p>\r\nVivamus suscipit arcu tellus, ac scelerisque nulla ultrices ut. Maecenas\r\n eu fringilla dolor. In lectus massa, bibendum et sem ultrices, tempor \r\neuismod quam. Suspendisse ut consequat turpis. Nulla euismod sem \r\nmolestie tellus placerat viverra. Integer dignissim laoreet erat sit \r\namet rhoncus. Aenean a ante dui. Fusce laoreet dui diam, vitae convallis\r\n lorem cursus nec. Pellentesque sed tempor mi. Mauris commodo, sem eu \r\nluctus scelerisque, mi arcu hendrerit risus, ac aliquam nunc mi vel \r\nrisus. Praesent venenatis commodo lorem, vestibulum ultrices arcu rutrum\r\n sed. Cras urna turpis, convallis faucibus luctus vel, feugiat quis \r\ntellus. Etiam velit risus, feugiat sed efficitur eleifend, varius nec \r\nneque.\r\n</p>', 5, 'uploads/posts/1554468639483233-636247551974583425-16x9.jpg', NULL, '2019-04-05 06:50:39', '2019-04-05 06:50:39', 1),
(11, 'Mysql Connection With PHP', 'mysql-connection-with-php', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus \r\nvestibulum aliquet urna, nec finibus mi euismod ac. Phasellus porta nibh\r\n a semper malesuada. Duis fermentum quis libero blandit varius. Nam \r\nrisus justo, fermentum sed dictum varius, lacinia ut massa. Donec non \r\nporta eros. Praesent ipsum dui, faucibus vitae est eu, ornare vulputate \r\nlorem. Proin luctus ipsum eget sapien pharetra imperdiet. Quisque \r\nscelerisque at justo vitae ultricies. Fusce imperdiet tellus at tempor \r\ncursus. Phasellus sit amet placerat libero, quis consectetur ligula. \r\nVestibulum sed tellus quis enim sollicitudin sollicitudin sed sit amet \r\narcu.\r\n</p>\r\n<p>\r\nFusce in mattis lorem. Quisque posuere est quis purus ultricies \r\nultrices. Aliquam eget metus diam. Pellentesque posuere bibendum felis, \r\nnon egestas justo porta sit amet. Maecenas eleifend diam id velit \r\naliquam accumsan. Duis sagittis arcu vel leo ultrices eleifend. Quisque \r\neu lorem odio. Donec in dui eu quam sollicitudin feugiat. Aliquam \r\ncommodo nisi in turpis lacinia, sit amet eleifend eros rutrum. \r\nVestibulum id urna a justo viverra imperdiet in ut nisi. Nam at sodales \r\nligula. Morbi purus dui, gravida non elementum quis, tristique aliquam \r\nturpis. Vestibulum dolor orci, blandit faucibus sodales ut, rutrum a \r\nelit. Phasellus vel justo facilisis quam sollicitudin cursus id pharetra\r\n turpis. Etiam laoreet, erat nec eleifend laoreet, tellus nulla \r\nmalesuada arcu, ac pretium orci velit eget purus. In consequat feugiat \r\ndignissim.\r\n</p>\r\n<p>\r\nVivamus suscipit arcu tellus, ac scelerisque nulla ultrices ut. Maecenas\r\n eu fringilla dolor. In lectus massa, bibendum et sem ultrices, tempor \r\neuismod quam. Suspendisse ut consequat turpis. Nulla euismod sem \r\nmolestie tellus placerat viverra. Integer dignissim laoreet erat sit \r\namet rhoncus. Aenean a ante dui. Fusce laoreet dui diam, vitae convallis\r\n lorem cursus nec. Pellentesque sed tempor mi. Mauris commodo, sem eu \r\nluctus scelerisque, mi arcu hendrerit risus, ac aliquam nunc mi vel \r\nrisus. Praesent venenatis commodo lorem, vestibulum ultrices arcu rutrum\r\n sed. Cras urna turpis, convallis faucibus luctus vel, feugiat quis \r\ntellus. Etiam velit risus, feugiat sed efficitur eleifend, varius nec \r\nneque.\r\n</p>', 5, 'uploads/posts/1554468894266252_7e54_8.jpg', NULL, '2019-04-05 06:54:54', '2019-04-05 06:54:54', 1),
(12, 'Notification Plugin for PHP', 'notification-plugin-for-php', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus \r\nvestibulum aliquet urna, nec finibus mi euismod ac. Phasellus porta nibh\r\n a semper malesuada. Duis fermentum quis libero blandit varius. Nam \r\nrisus justo, fermentum sed dictum varius, lacinia ut massa. Donec non \r\nporta eros. Praesent ipsum dui, faucibus vitae est eu, ornare vulputate \r\nlorem. Proin luctus ipsum eget sapien pharetra imperdiet. Quisque \r\nscelerisque at justo vitae ultricies. Fusce imperdiet tellus at tempor \r\ncursus. Phasellus sit amet placerat libero, quis consectetur ligula. \r\nVestibulum sed tellus quis enim sollicitudin sollicitudin sed sit amet \r\narcu.\r\n</p>\r\n<p>\r\nFusce in mattis lorem. Quisque posuere est quis purus ultricies \r\nultrices. Aliquam eget metus diam. Pellentesque posuere bibendum felis, \r\nnon egestas justo porta sit amet. Maecenas eleifend diam id velit \r\naliquam accumsan. Duis sagittis arcu vel leo ultrices eleifend. Quisque \r\neu lorem odio. Donec in dui eu quam sollicitudin feugiat. Aliquam \r\ncommodo nisi in turpis lacinia, sit amet eleifend eros rutrum. \r\nVestibulum id urna a justo viverra imperdiet in ut nisi. Nam at sodales \r\nligula. Morbi purus dui, gravida non elementum quis, tristique aliquam \r\nturpis. Vestibulum dolor orci, blandit faucibus sodales ut, rutrum a \r\nelit. Phasellus vel justo facilisis quam sollicitudin cursus id pharetra\r\n turpis. Etiam laoreet, erat nec eleifend laoreet, tellus nulla \r\nmalesuada arcu, ac pretium orci velit eget purus. In consequat feugiat \r\ndignissim.\r\n</p>\r\n<p>\r\nVivamus suscipit arcu tellus, ac scelerisque nulla ultrices ut. Maecenas\r\n eu fringilla dolor. In lectus massa, bibendum et sem ultrices, tempor \r\neuismod quam. Suspendisse ut consequat turpis. Nulla euismod sem \r\nmolestie tellus placerat viverra. Integer dignissim laoreet erat sit \r\namet rhoncus. Aenean a ante dui. Fusce laoreet dui diam, vitae convallis\r\n lorem cursus nec. Pellentesque sed tempor mi. Mauris commodo, sem eu \r\nluctus scelerisque, mi arcu hendrerit risus, ac aliquam nunc mi vel \r\nrisus. Praesent venenatis commodo lorem, vestibulum ultrices arcu rutrum\r\n sed. Cras urna turpis, convallis faucibus luctus vel, feugiat quis \r\ntellus. Etiam velit risus, feugiat sed efficitur eleifend, varius nec \r\nneque.\r\n</p>', 5, 'uploads/posts/1554469089jquery-nice-notification.PNG.jpg', NULL, '2019-04-05 06:58:09', '2019-04-20 02:37:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 2, NULL, NULL),
(5, 5, 2, NULL, NULL),
(6, 6, 2, NULL, NULL),
(7, 7, 2, NULL, NULL),
(8, 8, 2, NULL, NULL),
(9, 9, 2, NULL, NULL),
(10, 10, 2, NULL, NULL),
(11, 11, 2, NULL, NULL),
(12, 12, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `avatar`, `user_id`, `about`, `facebook`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'uploads/avatars/155454270628471348_1463443117098584_6476903855820573553_n.jpg', 1, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Maxime numquam culpa atque perferendis. Aperiam ducimus adipisci nihil? Et fugiat rerum explicabo nemo laboriosam corporis at omnis labore optio minus? Voluptates.', 'https://www.facebook.com/islamashraful07', 'https://www.youtube.com/channel/UCW9gTsm1gZ8MxDqvsK4JKRA?view_as=subscriber', '2019-04-04 08:48:13', '2019-04-06 03:25:07'),
(2, 'uploads/avatars/1.jpg', 2, NULL, NULL, NULL, '2019-04-29 04:50:19', '2019-04-29 04:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `contact_number`, `contact_email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Seekersoft\'s Blog', '01791360367', 'ashraful@seekersofts.com', 'Uttara', '2019-04-04 13:42:30', '2019-04-10 07:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'wordpress', '2019-04-04 08:49:06', '2019-04-04 08:49:06'),
(2, 'css3', '2019-04-05 01:13:30', '2019-04-05 01:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `admin`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ashraful Islam', 'ashrafulaiubian@gmail.com', 1, NULL, '$2y$12$lB2ojj7ThskpqKyX.1WUEeZieBCEXU8dhiF7CRu/8DiSmL0JneDBi', NULL, '2019-04-04 08:48:13', '2019-04-06 07:49:32'),
(2, 'Turzo', 'turzo@gmail.com', 0, NULL, '$2y$10$bGY6DlNDQjUAUwhKb7KJMe5mVwPCJ6kGujOsJEsuIIhCV6Fi9fH7e', NULL, '2019-04-29 04:50:18', '2019-04-29 04:50:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
