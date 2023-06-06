-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 10:59 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` bigint(20) UNSIGNED NOT NULL,
  `id_kategoribuku` bigint(20) UNSIGNED DEFAULT NULL,
  `id_genrebuku` bigint(20) UNSIGNED DEFAULT NULL,
  `id_rakbuku` bigint(20) UNSIGNED DEFAULT NULL,
  `kodebuku` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judulbuku` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kota` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fotocoverbuku` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_buku` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_kategori` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `id_kategoribuku`, `id_genrebuku`, `id_rakbuku`, `kodebuku`, `judulbuku`, `author`, `publisher`, `tahun`, `kota`, `fotocoverbuku`, `status_buku`, `status_kategori`, `created_at`, `updated_at`) VALUES
(243, 41, NULL, 5, 'A1-TK-01-21', 'MEMBANGUN APLIKASI DENGAN ANDROID FLUTTER', 'Nazruddin Safaat H,M.T.', 'Informatika', '2021', 'Bandung', NULL, '0', '0', '2023-06-03 02:03:48', '2023-06-04 05:26:24'),
(244, 41, NULL, 5, 'A1-TK-02-21', 'MEMBANGUN APLIKASI DENGAN ANDROID FLUTTER', 'Nazruddin Safaat H,M.T.', 'Informatika', '2021', 'Bandung', NULL, '0', '0', '2023-06-03 02:03:50', '2023-06-03 02:03:50'),
(245, 41, NULL, 5, 'A1-TK-03-21', 'PEMROGRAMAN BERBASI WEB HTML,PHP 7,MySQLi,DAN BOOTSRAP 4', 'Indra Styawantoro,Agus Komarudin,S.Kom,M.T.I', 'Lakeisha', '2021', 'Boyolali', NULL, '0', '0', '2023-06-03 02:03:53', '2023-06-03 02:03:53'),
(246, 41, NULL, 5, 'A1-TK-04-21', 'PEMROGRAMAN BERBASI WEB HTML,PHP 7,MySQLi,DAN BOOTSRAP 4', 'Indra Styawantoro,Agus Komarudin,S.Kom,M.T.I', 'Lakeisha', '2021', 'Boyolali', NULL, '0', '0', '2023-06-03 02:03:55', '2023-06-03 02:03:55'),
(247, 41, NULL, 5, 'A1-TK-05-20', 'MICROSOFT EXCEL ITU MUDAH', 'Ibnu Teguh Wibowo', 'Start Up', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:03:57', '2023-06-03 02:03:57'),
(248, 41, NULL, 5, 'A1-TK-06-22', 'PANDUAN LENGKAP TEORI & PRAKTIK ARDUINO', 'Oscar Rachman', 'Andi', '2022', 'Yogyakarta', 'fotocover20230604081908.jpg', '', '0', '2023-06-03 02:03:59', '2023-06-04 01:19:08'),
(249, 41, NULL, 5, 'A1-TK-07-21', 'PENGANTAR TEKNIK INFORMATIKA', 'Agus Komarudin,Reni Permata Sari,Nuari Anisa Sivi', 'Lakeisha', '2021', 'Boyolali', NULL, '0', '0', '2023-06-03 02:04:02', '2023-06-03 02:04:02'),
(250, 41, NULL, 5, 'A1-TK-08-21', 'REKAYASA PERANGKAT LUNAK', 'Indra Rianto,S.Kom,Mt', 'Lakeisha', '2021', 'Boyolali', NULL, '0', '0', '2023-06-03 02:04:04', '2023-06-03 02:04:04'),
(251, 41, NULL, 5, 'A1-TK-09-21', 'DATA MINING', 'Retno Tri Vulandari,S,Si,M.Si', 'Gava Media', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:04:06', '2023-06-03 02:04:06'),
(252, 41, NULL, 5, 'A1-TK-10-21', 'BELAJAR CODING ITU PENTING DI ERA REVOLUSI INDUSTRI 4.0', 'Yeni Mulyani', 'Pustaka Baru Press', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:04:08', '2023-06-03 02:04:08'),
(253, 41, NULL, 5, 'A1-TK-11-21', 'SEMUA BISA MENJADI PROGRAMMER MOBILE DENGAN KIVY PYTHON BASIC', 'Ir.Yuniar Supardi,Dede Sofyan,Badru Salam,S.Ak', 'Elexmedia Komputindo', '2021', 'Jakarta', NULL, '0', '0', '2023-06-03 02:04:11', '2023-06-03 02:04:11'),
(254, 41, NULL, 5, 'A1-TK-12-22', 'MENGEKPLORASI FUNGSI VLOOKUP,HLOOKUP&LOOKUP EXCEL', 'Yudhi Wicaksono & Solusi Kantor', 'Elexmedia Komputindo', '2022', 'Jakarta', 'fotocover20230604080522.png', '', '0', '2023-06-03 02:04:13', '2023-06-04 01:05:22'),
(255, 41, NULL, 5, 'A1-TK-13-17', 'OTODIDAK MY SQL UNTUK PEMULA', 'Jubilee Enterprise', 'Elexmedia Komputindo', '2021', 'Jakarta', NULL, '0', '0', '2023-06-03 02:04:15', '2023-06-03 02:04:15'),
(256, 41, NULL, 5, 'A1-TK-14-17', 'OTODIDAK MY SQL UNTUK PEMULA', 'Jubilee Enterprise', 'Elexmedia Komputindo', '2021', 'Jakarta', NULL, '0', '0', '2023-06-03 02:04:18', '2023-06-03 02:04:18'),
(257, 41, NULL, 5, 'A1-TK-15-21', 'PEMROGRAMAN SISTEM PAKAR', 'Anik Andriani,M.Kom', 'Mediakom', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:04:20', '2023-06-03 02:04:20'),
(258, 41, NULL, 5, 'A1-TK-16-19', 'BELAJAR KILAT ADOBE PHOTOSHOP LANGSUNG BISA', 'Arista Prasetya Adi', 'Elexmedia Komputindo', '2021', 'Jakarta', NULL, '0', '0', '2023-06-03 02:04:23', '2023-06-03 02:04:23'),
(259, 41, NULL, 5, 'A1-TK-17-17', 'MUDAH MEMBUAT DAN BERBISNIS APLIKASI ANDROID DENGAN ANDROID STUDIO', 'Yudha Yudhanto,Ardhi Wijayanto', 'Elexmedia Komputindo', '2021', 'Jakarta', NULL, '0', '0', '2023-06-03 02:04:25', '2023-06-03 02:04:25'),
(260, 41, NULL, 5, 'A1-TK-18-21', 'BUKU SAKTI PEMROGRAMAN WEB - HTML,CSS,PHP,MYSQL & JAVASCRIPT', 'Didik Setiawan', 'Start Up', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:04:27', '2023-06-03 02:04:27'),
(261, 41, NULL, 5, 'A1-TK-19-21', 'BUKU SAKTI PEMROGRAMAN WEB - HTML,CSS,PHP,MYSQL & JAVASCRIPT', 'Didik Setiawan', 'Start Up', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:04:30', '2023-06-03 02:04:30'),
(262, 41, NULL, 5, 'A1-TK-20-21', 'BUKU SAKTI PEMROGRAMAN WEB - HTML,CSS,PHP,MYSQL & JAVASCRIPT', 'Didik Setiawan', 'Start Up', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:04:32', '2023-06-03 02:04:32'),
(263, 41, NULL, 5, 'A1-TK-21-21', 'BUKU SAKTI PEMROGRAMAN WEB - HTML,CSS,PHP,MYSQL & JAVASCRIPT', 'Didik Setiawan', 'Start Up', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:04:35', '2023-06-03 02:04:35'),
(264, 41, NULL, 5, 'A1-TK-22-21', 'BUKU SAKTI PEMROGRAMAN WEB - HTML,CSS,PHP,MYSQL & JAVASCRIPT', 'Didik Setiawan', 'Start Up', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:04:37', '2023-06-03 02:04:37'),
(265, 41, NULL, 5, 'A1-TK-23-22', 'BUKU SAKTI PEMROGRAMAN WEB - SERI PHP', 'Mundzir Mf', 'Start Up', '2022', 'Yogyakarta', 'fotocover20230604082821.jpeg', '', '0', '2023-06-03 02:04:40', '2023-06-04 01:28:21'),
(266, 41, NULL, 5, 'A1-TK-24-22', 'BUKU SAKTI PEMROGRAMAN WEB - SERI PHP', 'Mundzir Mf', 'Start Up', '2022', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:04:42', '2023-06-03 02:04:42'),
(267, 41, NULL, 5, 'A1-TK-25-22', 'BUKU SAKTI PEMROGRAMAN WEB - SERI PHP', 'Mundzir Mf', 'Start Up', '2022', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:04:45', '2023-06-03 02:04:45'),
(268, 41, NULL, 5, 'A1-TK-26-21', 'TRIK KOLABORASI REACT DENGN PHP DN MY SQL', 'I Nyoman Sweta', 'Lokomedia', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:04:48', '2023-06-03 02:04:48'),
(269, 41, NULL, 6, 'A2-TK-01-20', 'IMPLEMENTASI ALGORITMA DALAM BAHASA PYTHON', 'Wendi Zarman,Mochamad Fajar Wicaksono', 'Informatika', '2020', 'Bandung', NULL, '0', '0', '2023-06-03 02:04:50', '2023-06-03 02:04:50'),
(270, 41, NULL, 6, 'A2-TK-02-20', 'ALGORITMA DAN PEMROGRAMAN', 'Dr.Suarga,M.Sc,M.Math.,Ph.D', 'Andi', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:04:53', '2023-06-03 02:04:53'),
(271, 41, NULL, 6, 'A2-TK-03-20', 'BELAJAR OTODIDAK BAHASA PEMROGRAMAN SQL MENGGUNAKAN MARIADB', 'Randi Adrika Putra,S.T', 'Gava Media', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:04:55', '2023-06-03 02:04:55'),
(272, 41, NULL, 6, 'A2-TK-04-21', 'BELAJAR OTODIDAK BAHASA PEMROGRAMAN SQL MENGGUNAKAN MARIADB', 'Randi Adrika Putra,S.T', 'Gava Media', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:04:58', '2023-06-03 02:04:58'),
(273, 41, NULL, 6, 'A2-TK-05-20', 'JARINGAN NIRKABEL BERBASIS 5G CLOUD', 'Onno W.Purbo', 'Andi', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:05:01', '2023-06-03 02:05:01'),
(274, 41, NULL, 6, 'A2-TK-06-20', 'DATA MINING ALGORITMA DAN IMPLEMENTASI', 'Muhammad Arhami,Muhammad Nasir', 'Andi', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:05:03', '2023-06-03 02:05:03'),
(275, 41, NULL, 6, 'A2-TK-07-21', 'DATA MINING ALGORITMA DAN IMPLEMENTASI', 'Muhammad Arhami,Muhammad Nasir', 'Andi', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:05:06', '2023-06-03 02:05:06'),
(276, 41, NULL, 6, 'A2-TK-08-20', 'APLIKASI ANDROID GAME PEMBELAJARAN BERBASIS RPG MAKER', 'Wahyu Hari Kristiyanto,Frasula Sekar Meta,Nurjanawati', 'Gava Media', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:05:09', '2023-06-03 02:05:09'),
(277, 41, NULL, 6, 'A2-TK-09-20', 'OTODIDAK WEB PROGRAMMING MEMBUAT WEBSITE EDUTAINMENT', 'Muhammad Ibnu Sa\'Ad', 'Elexmedia Komputindo', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:05:11', '2023-06-03 02:05:11'),
(278, 41, NULL, 6, 'A2-TK-10-20', 'OTODIDAK WEB PROGRAMMING MEMBUAT WEBSITE EDUTAINMENT', 'Muhammad Ibnu Sa\'Ad', 'Elexmedia Komputindo', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:05:14', '2023-06-03 02:05:14'),
(279, 41, NULL, 6, 'A2-TK-11-20', 'OTODIDAK WEB PROGRAMMING MEMBUAT WEBSITE EDUTAINMENT', 'Muhammad Ibnu Sa\'Ad', 'Elexmedia Komputindo', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:05:17', '2023-06-03 02:05:17'),
(280, 41, NULL, 6, 'A2-TK-12-20', 'TIP AND TRIK PROGRAM DATABASE PHYTHON', 'Yuniar Supardi,Yogi Syarif,S.T,M.Kom.', 'Elexmedia Komputindo', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:05:20', '2023-06-03 02:05:20'),
(281, 41, NULL, 6, 'A2-TK-13-21', 'TIP AND TRIK PROGRAM DATABASE PHYTHON', 'Yuniar Supardi,Yogi Syarif,S.T,M.Kom.', 'Elexmedia Komputindo', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:05:22', '2023-06-03 02:05:22'),
(282, 41, NULL, 6, 'A2-TK-14-20', 'DESAIN WEB BAGI PEMULA MENGGUNAKAN HTML DA CSS', 'Candra Surya,Miftahul Jannah', 'Elexmedia Komputindo', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:05:25', '2023-06-03 02:05:25'),
(283, 41, NULL, 6, 'A2-TK-15-20', 'DESAIN WEB BAGI PEMULA MENGGUNAKAN HTML DA CSS', 'Candra Surya,Miftahul Jannah', 'Elexmedia Komputindo', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:05:28', '2023-06-03 02:05:28'),
(284, 41, NULL, 6, 'A2-TK-16-20', 'MEMBUAT APLIKASI MOBILE DENGAN APPSMAKERSTORE', 'Rio Hakim Zul Yusuf,Uus Rusmawan', 'Elexmedia Komputindo', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:05:31', '2023-06-03 02:05:31'),
(285, 41, NULL, 6, 'A2-TK-17-20', 'MEMBUAT APLIKASI MOBILE DENGAN APPSMAKERSTORE', 'Rio Hakim Zul Yusuf,Uus Rusmawan', 'Elexmedia Komputindo', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:05:34', '2023-06-03 02:05:34'),
(286, 41, NULL, 6, 'A2-TK-18-20', 'MEMBUAT APLIKASI MOBILE DENGAN APPSMAKERSTORE', 'Rio Hakim Zul Yusuf,Uus Rusmawan', 'Elexmedia Komputindo', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:05:37', '2023-06-03 02:05:37'),
(287, 41, NULL, 6, 'A2-TK-19-20', 'PEMROGRAMAN DATABASE KOMPLET', 'Jubilee Enterprise', 'Elexmedia Komputindo', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:05:40', '2023-06-03 02:05:40'),
(288, 41, NULL, 6, 'A2-TK-20-20', 'PEMROGRAMAN DATABASE KOMPLET', 'Jubilee Enterprise', 'Elexmedia Komputindo', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:05:42', '2023-06-03 02:05:42'),
(289, 41, NULL, 6, 'A2-TK-21-20', 'KONSEP DAN IMPLEMENTASI PEMROGRAMAN LARAVEL 7', 'Lukmanul Hakim', 'Lokomedia', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:05:45', '2023-06-03 02:05:45'),
(290, 41, NULL, 6, 'A2-TK-22-20', 'MUDAH MEMBUAT DAN BERBISNIS APLIKASI ANDROID DENGAN ANDROID STUDIO', 'Yudha Yudhanto,Ardhi Wijayanto', 'Elexmedia Komputindo', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:05:48', '2023-06-03 02:05:48'),
(291, 41, NULL, 6, 'A2-TK-23-20', 'PANDUAN MEMBANGUN E-LEARNING PLATFORM', 'Andre Andhara,Fauzan Akbar,Akmal Firmansyah', 'Elexmedia Komputindo', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:05:51', '2023-06-03 02:05:51'),
(292, 41, NULL, 6, 'A2-TK-24-20', 'PANDUAN KILAT PEMROGRAMAN PHP,LANGSUNG BISA', 'Arista Prasetya Adi', 'Elexmedia Komputindo', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:05:54', '2023-06-03 02:05:54'),
(293, 41, NULL, 6, 'A2-TK-25-20', 'MENGUASAI PEMROGRAMAN ARDUINO DAN ROBOTIK', 'Prof.Dr.Ir.Widodo Budiharto', 'Andi', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:05:57', '2023-06-03 02:05:57'),
(294, 41, NULL, 6, 'A2-TK-26-20', 'MENGUASAI PEMROGRAMAN ARDUINO DAN ROBOTIK', 'Prof.Dr.Ir.Widodo Budiharto', 'Andi', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:06:00', '2023-06-03 02:06:00'),
(295, 41, NULL, 6, 'A2-TK-27-20', 'MENGUASAI PEMROGRAMAN ARDUINO DAN ROBOTIK', 'Prof.Dr.Ir.Widodo Budiharto', 'Andi', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:06:04', '2023-06-03 02:06:04'),
(296, 41, NULL, 6, 'A2-K-28-20', 'JALAN PINTAS MENJADI MASTER REACTJS', 'Lukmanul Hakim', 'Lokomedia', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:06:07', '2023-06-03 02:06:07'),
(297, 41, NULL, 6, 'A2-TK-29-20', 'PEMROGRAMAN WEB SERI PHP', 'Rizki Hidayatullah', 'Start Up', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:06:10', '2023-06-03 02:06:10'),
(298, 41, NULL, 6, 'A2-TK-30-20', 'PEMROGRAMAN WEB SERI PHP', 'Rizki Hidayatullah', 'Start Up', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:06:13', '2023-06-03 02:06:13'),
(299, 41, NULL, 6, 'A2-TK-31-20', 'PEMROGRAMAN WEB SERI PHP', 'Rizki Hidayatullah', 'Start Up', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:06:16', '2023-06-03 02:06:16'),
(300, 41, NULL, 6, 'A2-TK-32-20', 'PEMROGRAMAN WEB SERI PHP', 'Rizki Hidayatullah', 'Start Up', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:06:19', '2023-06-03 02:06:19'),
(301, 41, NULL, 6, 'A2-TK-33-20', 'PEMROGRAMAN WEB SERI PHP', 'Rizki Hidayatullah', 'Start Up', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:06:22', '2023-06-03 02:06:22'),
(302, 41, NULL, 6, 'A2-TK-34-20', 'PEMROGRAMAN WEB SERI PHP', 'Rizki Hidayatullah', 'Start Up', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:06:25', '2023-06-03 02:06:25'),
(303, 41, NULL, 7, 'A3-TK-01-99', 'MUDAH MENGUASAI VISUAL BASIC 6', 'Djoko Pramono', 'Elexmedia Komputindo', '1999', 'Jakarta', NULL, '0', '0', '2023-06-03 02:06:29', '2023-06-03 02:06:29'),
(304, 41, NULL, 7, 'A3-TK-02-13', 'PROYEK WEBSITE SUPER WOW! DENGAN PHP & JQUERY', 'Lukmanul Hakim', 'Lokomedia', '2013', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:06:32', '2023-06-03 02:06:32'),
(305, 41, NULL, 7, 'A3-TK-03-09', '4 HARI JAGO MANIPULASI PHOTOSHOP', 'Asep Effendhy', 'Mediakita', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 02:06:35', '2023-06-03 02:06:35'),
(306, 41, NULL, 7, 'A3-TK-04-10', 'PHOTOSHOP MAGIC', 'Aditya,S.T', 'Mediakita', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 02:06:39', '2023-06-03 02:06:39'),
(307, 41, NULL, 7, 'A3-TK-05-11', 'RAHASIA LAKU KERAS JUALAN KASKUS UNTUK PEMULA', 'Heri Hidayat', 'Dunia Komputer', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 02:06:42', '2023-06-03 02:06:42'),
(308, 41, NULL, 7, 'A3-TK-06-05', 'MEMBUAT LOGO DENGAN CORELDRAW & PHOTOSHOP', 'Chandra', 'Maxikom', '2005', 'Palembang', NULL, '0', '0', '2023-06-03 02:06:45', '2023-06-03 02:06:45'),
(309, 41, NULL, 7, 'A3-TK-07-11', 'TEKNIK DASAR BLOGSPOT UNTUK BLOGGER KREATIF', 'Lea Wilsen', 'Elexmedia Komputindo', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 02:06:48', '2023-06-03 02:06:48'),
(310, 41, NULL, 7, 'A3-TK-08-10', 'PANDUAN HARDWARE KOMPUTER', 'Ali Zaki', 'Andi', '2010', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:06:52', '2023-06-03 02:06:52'),
(311, 41, NULL, 7, 'A3-TK-09-09', 'VISUAL BASIC', 'Mesran', 'Mitra Wacana Media', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 02:06:55', '2023-06-03 02:06:55'),
(312, 41, NULL, 7, 'A3-TK-10-12', 'RAHASIA BLENDING PHOTOSHOP', 'Christopher Lee', 'Elexmedia Komputindo', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 02:06:59', '2023-06-03 02:06:59'),
(313, 41, NULL, 7, 'A3-TK-11-08', 'EXTREME DISTRO DENGAN CORELDRAW X3', 'Slamet Hariyadi', 'Elexmedia Komputindo', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 02:07:02', '2023-06-03 02:07:02'),
(314, 41, NULL, 7, 'A3-TK-12-09', 'MEMBUAT BLOG UNTUK ORANG AWAM', 'Rulianto Kurniawan', 'Maxikom', '2009', 'Palembang', NULL, '0', '0', '2023-06-03 02:07:06', '2023-06-03 02:07:06'),
(315, 41, NULL, 7, 'A3-TK-13-08', 'TRIK JITU MEMPOPULERKAN SITUS WEB', 'Ganesha Progress,Rahmat Rafiudin', 'Elexmedia Komputindo', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 02:07:09', '2023-06-03 02:07:09'),
(316, 41, NULL, 7, 'A3-TK-14-14', 'PROGRAM ABSENSI SISWA REALTIME DENGAN PHP & SMS GATEWAY', 'Aminudin', 'Lokomedia', '2014', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:07:13', '2023-06-03 02:07:13'),
(317, 41, NULL, 7, 'A3-TK-15-09', 'KIAT JITU MEMBUAT WEBSITE TANPA MODAL', 'Ali Zaki,Smitdeev Community', 'Elexmedia Komputindo', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 02:07:17', '2023-06-03 02:07:17'),
(318, 41, NULL, 7, 'A3-TK-16-12', 'JURUS KILAT MAHIR VISUAL BASIC', 'Roy Larry', 'Dunia Komputer', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 02:07:20', '2023-06-03 02:07:20'),
(319, 41, NULL, 7, 'A3-TK-17-06', 'TRIK CEPAT BELAJAR SENDIRI MICROSOFT WORD', 'Abdul Razaq Rizky,Sip', 'Yrama Widya', '2006', 'Bandung', NULL, '0', '0', '2023-06-03 02:07:24', '2023-06-03 02:07:24'),
(320, 41, NULL, 8, 'A4-TK-01-19', 'DASAR PEMROGRAMAN WEB DINAMIS MENGGUNAKAN PHP', 'Zo\'R : The Teenagers', 'Andi', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:07:27', '2023-06-03 02:07:27'),
(321, 41, NULL, 8, 'A4-TK-02-19', 'PEMROGRAMAN WEB DENGAN NODE.JS DAN JAVASCRIPT', 'Budi Raharjo', 'Informatika', '2019', 'Bandung', NULL, '0', '0', '2023-06-03 02:07:31', '2023-06-03 02:07:31'),
(322, 41, NULL, 8, 'A4-TK-03-18', 'PEMROGRAMAN PHYTHON UNTUK ILMU KOMPUTER DAN TEKNIK', 'Widodo Budiharto', 'Andi', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:07:35', '2023-06-03 02:07:35'),
(323, 41, NULL, 8, 'A4-TK-04-19', 'PEMROGRAMAN PHYTON UNTUK PENANGANAN BIG DATA', 'Hanna Arini Parhusip', 'Andi', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:07:39', '2023-06-03 02:07:39'),
(324, 41, NULL, 8, 'A4-TK-05-19', 'KOLEKSI PPROGRAM WEB JAVA', 'Ir.Yuniar Supardi', 'Elexmedia Komputindo', '2019', 'Jakarta', NULL, '0', '0', '2023-06-03 02:07:42', '2023-06-03 02:07:42'),
(325, 41, NULL, 8, 'A4-TK-06-19', 'KOLEKSI PPROGRAM WEB JAVA', 'Ir.Yuniar Supardi', 'Elexmedia Komputindo', '2019', 'Jakarta', NULL, '0', '0', '2023-06-03 02:07:46', '2023-06-03 02:07:46'),
(326, 41, NULL, 8, 'A4-TK-07-19', 'THE POWER OF COREL DRAW', 'Arista Prasetya Adi', 'Elexmedia Komputindo', '2019', 'Jakarta', NULL, '0', '0', '2023-06-03 02:07:50', '2023-06-03 02:07:50'),
(327, 41, NULL, 8, 'A4-TK-08-19', 'TEKNIK PENULISAN TUGAS AKHIR DAN SKRIPSI PEMROGRAMAN', 'Uus Rusmawan', 'Elexmedia Komputindo', '2019', 'Jakarta', NULL, '0', '0', '2023-06-03 02:07:53', '2023-06-03 02:07:53'),
(328, 41, NULL, 8, 'A4-TK-09-19', 'KOLABORASI LARAVEL DAN DATABASE POSTGRESQL DI LINUX', 'Anton Subagia', 'Elexmedia Komputindo', '2019', 'Jakarta', NULL, '0', '0', '2023-06-03 02:07:57', '2023-06-03 02:07:57'),
(329, 41, NULL, 8, 'A4-TK-10-19', 'KOLABORASI LARAVEL DAN DATABASE POSTGRESQL DI LINUX', 'Anton Subagia', 'Elexmedia Komputindo', '2019', 'Jakarta', NULL, '0', '0', '2023-06-03 02:08:01', '2023-06-03 02:08:01'),
(330, 41, NULL, 8, 'A4-TK-11-19', 'BUKU SAKTI HTML,CSS & JAVASCRIPT', 'Adam Saputra,S.Si', 'Start Up', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:08:05', '2023-06-03 02:08:05'),
(331, 41, NULL, 9, 'A5-TK-01-17', 'MEMBUAT DATABASE DENGAN MICROSOFT ACCESS', 'Imam Heryanto', 'Informatika', '2009', 'Bandung', NULL, '0', '0', '2023-06-03 02:08:08', '2023-06-03 02:08:08'),
(332, 41, NULL, 9, 'A5-TK-02-15', 'PEMROGRAMAN DATABASE MENGGUNAKAN MySQL', 'Dr.Eng,R.H.Sianipar,S,M.Eng', 'Andi', '2008', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:08:12', '2023-06-03 02:08:12'),
(333, 41, NULL, 9, 'A5-TK-03-16', 'VISUAL PROGRAMMING iOS', 'Rizki Syaputra,S.St & Syaful Amin', 'Mediakom', '2008', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:08:16', '2023-06-03 02:08:16'),
(334, 41, NULL, 9, 'A5-TK-04-17', 'DASAR PROGRAMMING VISUAL FOXPRO', 'Hendra Wijaya', 'Elexmedia Komputindo', '2017', 'Jakarta', NULL, '0', '0', '2023-06-03 02:08:20', '2023-06-03 02:08:20'),
(335, 41, NULL, 9, 'A5-TK-05-17', 'BUKU WORKSHOP GRAFIS DAN DIGITAL IMAGING', 'Jubilee Enterprise', 'Elexmedia Komputindo', '2017', 'Jakarta', NULL, '0', '0', '2023-06-03 02:08:24', '2023-06-03 02:08:24'),
(336, 41, NULL, 9, 'A5-TK-06-17', 'LANGKAH MUDAH BELAJAR STRUKTUR DATA MENGGUNAKAN C/C++', 'Prof.Dr.Ema Utami,Windha Mega Pradnya', 'Elexmedia Komputindo', '2017', 'Jakarta', NULL, '0', '0', '2023-06-03 02:08:28', '2023-06-03 02:08:28'),
(337, 41, NULL, 9, 'A5-TK-07-18', 'INFORMATION TECHNOLOGY BUSINESS START UP', 'Yudho Yudhanto', 'Elexmedia Komputindo', '2018', 'Jakarta', NULL, '0', '0', '2023-06-03 02:08:32', '2023-06-03 02:08:32'),
(338, 41, NULL, 9, 'A5-TK-08-16', 'SIMULASI JARINGAN KOMPUTER DENGAN CISCO PACKET TRACER', 'Dian Ariawal & Onno W Purbo', 'Elexmedia Komputindo', '2016', 'Jakarta', NULL, '0', '0', '2023-06-03 02:08:36', '2023-06-03 02:08:36'),
(339, 41, NULL, 9, 'A5-TK-09-14', 'PANDUAN VBA UNTUK MICROSOFT  OFFICE', 'Tim Ems', 'Elexmedia Komputindo', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:08:40', '2023-06-03 02:08:40'),
(340, 41, NULL, 9, 'A5-TK-10-17', 'BELAJAR VB,VISUAL C# DAN PHYTHON MENGGUNAKAN VISUAL STUDIO', 'Jubilee Enterprise', 'Elexmedia Komputindo', '2017', 'Jakarta', NULL, '0', '0', '2023-06-03 02:08:44', '2023-06-03 02:08:44'),
(341, 41, NULL, 10, 'A6-TK-01-02', 'ALJABAR LINIER DASAR', 'R.Gunawan Santosa', 'Andi', '2009', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:08:48', '2023-06-03 02:08:48'),
(342, 41, NULL, 10, 'A6-TK-02-02', 'MATEMATIKA DISKRIT', 'Seymour Lipschutz,Marc Lars Lipson', 'Salemba Teknika', '2002', 'Jakarta', NULL, '0', '0', '2023-06-03 02:08:52', '2023-06-03 02:08:52'),
(343, 41, NULL, 10, 'A6-TK-03-10', 'MICROSOFT EXCEL 2010 UNTUK PENGOLAHAN DATA', 'Wahana Komputer', 'Andi', '2010', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:08:56', '2023-06-03 02:08:56'),
(344, 41, NULL, 10, 'A6-TK-04-07', '7 LANGKAH MUDAH MENJADI WEBMASTER', 'Dadan Sutisna', 'Mediakita', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 02:09:00', '2023-06-03 02:09:00'),
(345, 41, NULL, 10, 'A6-TK-05-09', 'FISIKA DASAR UNTUK MAHASISWA ILMU KOMPUTER DAN INFORMATIKA', 'Tri Kuntoro Priyambodo,Bambang Murdaka Eka Jati', 'Andi', '2009', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:09:04', '2023-06-03 02:09:04'),
(346, 41, NULL, 10, 'A6-TK-06-13', 'PENGENALAN TEKNOLOGI INFORMASI', 'Abdul Kadir & Terra Ch.Triwahyuni', 'Andi', '2013', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:09:08', '2023-06-03 02:09:08'),
(347, 41, NULL, 10, 'A6-TK-07-11', 'ADOBE PREMIERE PRO CS5', 'Wahana Komputer', 'Andi', '2011', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:09:12', '2023-06-03 02:09:12'),
(348, 41, NULL, 10, 'A6-TK-08-08', 'PHP & MYSQL UNTUK PEMULA', 'Madcoms', 'Andi', '2008', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:09:17', '2023-06-03 02:09:17'),
(349, 41, NULL, 10, 'A6-TK-09-18', 'EXTREME PROGRAMMING : RAHASIA MEMBUAT MENGGUNAKAN VISUAL BASIC DAN DELPHI', 'Anhar', 'Mediakom', '2010', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:09:21', '2023-06-03 02:09:21'),
(350, 41, NULL, 10, 'A6-TK-10-03', 'PEMROGRAMAN C++ DI LINUX', 'Iwan Binanto', 'Andi', '2003', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:09:31', '2023-06-03 02:09:31'),
(351, 41, NULL, 10, 'A6-TK-11-04', 'PENGEMBANGAN PERANGKAT LUNAK SIMULASI DENGAN C++ BUILDER', 'Wahana Komputer', 'Andi', '2004', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:09:36', '2023-06-03 02:09:36'),
(352, 41, NULL, 10, 'A6-TK-12-05', 'KONSEP DASAR SISTEM PAKAR', 'Muhammad Arhami', 'Andi', '2005', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:09:40', '2023-06-03 02:09:40'),
(353, 41, NULL, 10, 'A6-TK-13-03', 'APLIKASI DATABASE VISUAL BASIC 6.0 DENGAN CRYSTAL REPORT', 'Madcoms', 'Andi', '2003', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:09:45', '2023-06-03 02:09:45'),
(354, 41, NULL, 10, 'A6-TK-14-09', 'BE SMART,BE PROFESSIONAL WITH MICROSOFT OFFICE 2007', 'Cato Chandra,Ir.Teddy Marcus Zakaria', 'Informatika', '2009', 'Bandung', NULL, '0', '0', '2023-06-03 02:09:49', '2023-06-03 02:09:49'),
(355, 41, NULL, 10, 'A6-TK-15-06', 'CARA MUDAH BELAJAR DESAIN ADOBE ILUSTRATOR SC', 'Arya Maulana', 'Restu Agung', '2006', 'Jakarta', NULL, '0', '0', '2023-06-03 02:09:54', '2023-06-03 02:09:54'),
(356, 41, NULL, 10, 'A6-TK-16-05', 'EKSPORASI KEKUATAN WIN 32-API DENGAN VISUAL BASIC', 'Johan Saputra', 'Elexmedia Komputindo', '2005', 'Jakarta', NULL, '0', '0', '2023-06-03 02:09:58', '2023-06-03 02:09:58'),
(357, 41, NULL, 11, 'A7-TK-01-85', 'JT,BAHASA KOMPUTER DALAM BAHASA INDONESIA', 'Pusat Pendidikan Komputer', 'Pt.Multi Media', '1985', 'Jakarta', NULL, '0', '0', '2023-06-03 02:10:02', '2023-06-03 02:10:02'),
(358, 41, NULL, 11, 'A7-TK-02-11', 'LANGSUNG JAGO BIKIN WEBSITE-GRATIS DENGAN WEB OPEN SOURCE', 'Arya Dipanegara', 'Agogos Publishing', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 02:10:07', '2023-06-03 02:10:07'),
(359, 41, NULL, 11, 'A7-TK-03-97', 'ALJABAR ABSTRAK SUATU PENGANTAR', 'Saib Suwilo,Tulus,Syam Rosli Lubis', 'Usu Press', '1997', 'Medan', NULL, '0', '0', '2023-06-03 02:10:11', '2023-06-03 02:10:11'),
(360, 41, NULL, 11, 'A7-TK-04-90', 'SECEPAT DAN SEMUDAH LOTUS 1-2-3 VERSI 2.2', 'Winardi Sutantyo', 'Elexmedia Komputindo', '1990', 'Jakarta', NULL, '0', '0', '2023-06-03 02:10:16', '2023-06-03 02:10:16'),
(361, 41, NULL, 11, 'A7-TK-05-82', 'MIKRO KOMPUTER', 'A.J.Dirksen', 'Angkasa', '1982', 'Bandung', NULL, '0', '0', '2023-06-03 02:10:20', '2023-06-03 02:10:20'),
(362, 41, NULL, 11, 'A7-TK-06-10', 'MICROSOFT ACCESS 2010 UNTUK PEMULA', 'Hengky Alexander Mangkulo', 'Elexmedia Komputindo', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 02:10:25', '2023-06-03 02:10:25'),
(363, 41, NULL, 11, 'A7-TK-07-13', 'MIKROTIK KUNG FU KITAB 1', 'Rendra Towidjojo', 'Jasakom', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 02:10:29', '2023-06-03 02:10:29'),
(364, 41, NULL, 11, 'A7-TK-08-00', 'BELAJAR SENDIRI DALAM 10 MENIT SQL', 'Ben Forta', 'Andi', '2000', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:10:34', '2023-06-03 02:10:34'),
(365, 41, NULL, 11, 'A7-TK-09-03', 'BUKU LATIHAN 3D STUDIO MAX 5.X', 'Ir Bayu Adjie', 'Elexmedia Komputindo', '2003', 'Jakarta', NULL, '0', '0', '2023-06-03 02:10:39', '2023-06-03 02:10:39'),
(366, 41, NULL, 11, 'A7-TK-10-01', 'CARA MUDAH BELAJAR C DAN FLOWCHART LEWAT PRAKTEK', 'Ir.Yuniar Supardi', 'Dinastindo', '2001', 'Jakarta', NULL, '0', '0', '2023-06-03 02:10:43', '2023-06-03 02:10:43'),
(367, 41, NULL, 11, 'A7-TK-11-07', 'CARA-CARA MENGINSTAL SOFTWARE DAN DRIVER', 'Nana Suarna,St', 'Yrama Widya', '2007', 'Bandung', NULL, '0', '0', '2023-06-03 02:10:48', '2023-06-03 02:10:48'),
(368, 41, NULL, 11, 'A7-TK-12-08', 'PENGANTAR PERANGKAT KERAS', 'Nana Suarna,St', 'Yrama Widya', '2008', 'Bandung', NULL, '0', '0', '2023-06-03 02:10:53', '2023-06-03 02:10:53'),
(369, 41, NULL, 11, 'A7-TK-13-09', 'TAK TIK BLOG CARA BIKIN BLOG PALING TOKCER,CEPAT POPULER', 'Angel & Ollie', 'Bukune', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 02:10:57', '2023-06-03 02:10:57'),
(370, 41, NULL, 12, 'A8-TK-01-05', 'MATEMATIKA DISKRIT', 'Rinaldi Munir', 'Informatika', '2005', 'Bandung', NULL, '0', '0', '2023-06-03 02:11:02', '2023-06-03 02:11:02'),
(371, 41, NULL, 12, 'A8-TK-02-87', 'KALKULUS DAN GEOMETRI ANALITIS', 'Edwin J.Purcell Dale Varberg', 'Erlangga', '1987', 'Jakarta', NULL, '0', '0', '2023-06-03 02:11:07', '2023-06-03 02:11:07'),
(372, 41, NULL, 12, 'A8-TK-03-06', 'APLIKASI WEB DENGAN PHP DAN MYSQL', 'Kasiman Peranginangin', 'Andi', '2006', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:11:12', '2023-06-03 02:11:12'),
(373, 41, NULL, 12, 'A8-TK-04-04', '212 TIP MENGUASAI ADOBE PHOTOSHOP CS', 'Edi S.Mulyanta', 'Andi', '2004', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:11:17', '2023-06-03 02:11:17'),
(374, 41, NULL, 12, 'A8-TK-05-12', 'ANALISA KEBUTUHAN DALAM REKAYASA PERANGKAT LUNAK', 'Daniel Siahaan', 'Andi', '2012', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:11:22', '2023-06-03 02:11:22'),
(375, 41, NULL, 12, 'A8-TK-06-14', 'PEMROGRAMAN WEB PHP', 'Betha Sidik', 'Informatika', '2014', 'Bandung', NULL, '0', '0', '2023-06-03 02:11:26', '2023-06-03 02:11:26'),
(376, 41, NULL, 12, 'A8-TK-07-14', 'UNITY TUTORIAL GAME ENGINE', 'Rickman Roedavan', 'Informatika', '2014', 'Bandung', NULL, '0', '0', '2023-06-03 02:11:31', '2023-06-03 02:11:31'),
(377, 41, NULL, 12, 'A8-TK-08-14', 'PEMROGRAMAN WEB DENGAN HTML', 'Betha Sidik,Husni I Pohan', 'Informatika', '2014', 'Bandung', NULL, '0', '0', '2023-06-03 02:11:36', '2023-06-03 02:11:36'),
(378, 41, NULL, 12, 'A8-TK-09-11', 'EASY WEB PROGRAMMING WITH PHP PLUS HTML 5', 'Edy Winarno,Ali Zaki & Smithdev Community', 'Elexmedia Komputindo', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 02:11:41', '2023-06-03 02:11:41'),
(379, 41, NULL, 12, 'A8-TK-10-17', 'PEMROGRAMAN PHP 7 UNTUK PEMULA', 'Jubilee Enterprise', 'Elexmedia Komputindo', '2017', 'Jakarta', NULL, '0', '0', '2023-06-03 02:11:46', '2023-06-03 02:11:46'),
(380, 41, NULL, 12, 'A8-TK-11-16', 'MEMBUAT PROGRAM ANTI VIRUS DENGAN VISUAL BASIC 6.0', 'Anhar', 'Elexmedia Komputindo', '2016', 'Jakarta', NULL, '0', '0', '2023-06-03 02:11:50', '2023-06-03 02:11:50'),
(381, 41, NULL, 12, 'A8-TK-12-11', 'BLING TEXT WITH PHOTOSHOP CS5', 'Fleconi,Inc', 'Elexmedia Komputindo', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 02:11:55', '2023-06-03 02:11:55'),
(382, 41, NULL, 12, 'A8-TK-13-10', '40 TOTAL DASYAT UNTUK MENGELOLA BISNIS UKM', 'Alfa Hartoko', 'Elexmedia Komputindo', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 02:12:00', '2023-06-03 02:12:00'),
(383, 41, NULL, 13, 'A9-TK-01-05', 'ANALISIS DAN DESAIN SISTEM INFORMASI', 'Al-Bahra Bin Ladjamudin', 'Graha Ilmu', '2005', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:12:05', '2023-06-03 02:12:05'),
(384, 41, NULL, 13, 'A9-TK-03-11', 'ALGORITMA DAN PEMROGRAMAN DALAM BAHASA PASCAL DAN C', 'Rinaldi Munir', 'Informatika', '2011', 'Bandung', NULL, '0', '0', '2023-06-03 02:12:15', '2023-06-03 02:12:15'),
(385, 41, NULL, 13, 'A9-TK-04-13', 'ADOBE FIREWORKS CS6 UNTUK DESAIN WEB', 'Wahana Komputer', 'Andi', '2013', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:12:20', '2023-06-03 02:12:20'),
(386, 41, NULL, 13, 'A9-TK-05-09', 'PROFESSIONAL WEBSITE JOOMLA! 1.5', 'Rachmad Hakim S.,Nanang Indra P.', 'Elexmedia Komputindo', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 02:12:25', '2023-06-03 02:12:25'),
(387, 41, NULL, 13, 'A9-TK-06-11', 'VECTOR DESIGN FINE-ART DENGAN COREL DRAW', 'Rahmad Widiyanto,Asmad Community', 'Elexmedia Komputindo', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 02:12:30', '2023-06-03 02:12:30'),
(388, 41, NULL, 13, 'A9-TK-07-08', 'MEMBUAT DESAIN WEB UNTUK PEMULA', 'Madcoms', 'Andi', '2008', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:12:35', '2023-06-03 02:12:35'),
(389, 41, NULL, 13, 'A9-TK-08-07', 'DESAIN WEB MENGGUNAKAN HTML+CSS', 'Sugiri,Budi Kurniawan', 'Andi', '2007', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:12:40', '2023-06-03 02:12:40'),
(390, 41, NULL, 13, 'A9-TK-09-14', 'KOLABORASI PHP 5 & MYSQL 5 UNTUK PENGEMBANGAN WEBSITE', 'Eko Priyo Utomo', 'Andi', '2014', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:12:46', '2023-06-03 02:12:46'),
(391, 41, NULL, 13, 'A9-TK-10-09', 'CARA MUDAH MEMBUAT ANIMASI DENGAN MACROMEDIA FLASH', 'Drs.H.Widada R', 'Cakrawala', '2009', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:12:51', '2023-06-03 02:12:51'),
(392, 41, NULL, 13, 'A9-TK-11-16', 'CEPAT KUASAI PHP+MYSQL', 'Andreas Hery Prasetya', 'Andi', '2016', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:12:57', '2023-06-03 02:12:57'),
(393, 41, NULL, 13, 'A9-TK-12-05', 'LANGKAH MUDAH MEMBANGUN JARINGAN KOMPUTER', 'Zaenal Arifin', 'Andi', '2005', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:13:02', '2023-06-03 02:13:02'),
(394, 41, NULL, 13, 'A9-TK-13-08', 'PANDUAN LENGKAP MENGGUNAKAN ROUTER MASA DEPAN MENGGUNAKAN MIKROTIK ROUTEROS™', 'Moch.Linto Herlambang,Azis Catur L', 'Andi', '2008', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:13:08', '2023-06-03 02:13:08'),
(395, 41, NULL, 13, 'A9-TK-14-07', 'SHARING KNOWLEDGE AND SHARING EXPERIENCE WINDOWS SERVER SYSTEM INDONESIA', 'Tutang', 'Datakom', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 02:13:13', '2023-06-03 02:13:13'),
(396, 42, NULL, 14, 'A10-ST-01-87', 'KALKULUS DAN GEOMETRI ANALITIS', 'Edwin J.Purcell Dale Varberg', 'Erlangga', '1987', 'Jakarta', NULL, '0', '0', '2023-06-03 02:13:19', '2023-06-03 02:13:19'),
(397, 42, NULL, 14, 'A10-ST-02-08', 'PENGANTAR STATISTIKA', 'Prof.Dr.Husaini Usman,R.Purnomo Setyadi Akbar', 'Bumi Aksara', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 02:13:25', '2023-06-03 02:13:25'),
(398, 42, NULL, 14, 'A10-ST-03-16', 'STATISTIKA DESKRIPTIF DAN PROBABILITAS', 'Drs.Danang Sunyoto,S.H,S.E.,M.M', 'Caps', '2016', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:13:30', '2023-06-03 02:13:30'),
(399, 42, NULL, 14, 'A10-ST-04-12', 'CARA KILAT BELAJAR ANALISIS DATA DENGAN SPSS 20', 'Duwi Priyanto', 'Andi', '2012', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:13:36', '2023-06-03 02:13:36'),
(400, 42, NULL, 14, 'A10-ST-05-14', 'ANALISIS DATA PENELITIAN EKONOMI & MANAJEMEN', 'Dr.Juliansyah Noor,S.E.,M.M.', 'Grasindo', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:13:42', '2023-06-03 02:13:42'),
(401, 42, NULL, 14, 'A10-ST-06-09', 'TEKNIK SAMPLING UNTUK PENELITIAN KESEHATAN', 'Heru Subaris Kasjono', 'Graha Ilmu', '2009', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:13:48', '2023-06-03 02:13:48'),
(402, 42, NULL, 14, 'A10-ST-07-10', 'MENGOLAH DATA STATISTIK HASIL PENELITIAN DENGAN SPSS 17', 'Wahana Komputer', 'Andi', '2010', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:13:54', '2023-06-03 02:13:54'),
(403, 42, NULL, 14, 'A10-ST-08-16', 'SPSS HANDBOOK ANALISIS DATA,OLAH DATA & PENYELESAIAN KASUS-KASUS STATISTIK', 'Duwi Priyanto', 'Mediakom', '2016', 'Jakarta', NULL, '0', '0', '2023-06-03 02:14:00', '2023-06-03 02:14:00'),
(404, 42, NULL, 14, 'A10-ST-09-20', 'STATISTIKA DESKRIPTIF & KONSEP PELUANG APLIKASI R-STAT', 'Prof.Dr.Ir.Sugianto,M.Sc,Ir.Hongyanto Setio,Mba', 'Andi', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:14:06', '2023-06-03 02:14:06'),
(405, 42, NULL, 14, 'A10-ST-10-20', 'STATISTIKA DESKRIPTIF & KONSEP PELUANG APLIKASI R-STAT', 'Prof.Dr.Ir.Sugianto,M.Sc,Ir.Hongyanto Setio,Mba', 'Andi', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:14:12', '2023-06-03 02:14:12'),
(406, 42, NULL, 14, 'A10-ST-11-02', 'METODE STATISTIKA', 'Prof.Dr.Sudjana M.A.,M.Sc', 'Tarsito', '2002', 'Bandung', NULL, '0', '0', '2023-06-03 02:14:18', '2023-06-03 02:14:18'),
(407, 42, NULL, 14, 'A10-ST-12-84', 'METODE STATISTIKA', 'Prof.Dr.Sudjana M.A.,M.Sc', 'Tarsito', '1984', 'Bandung', NULL, '0', '0', '2023-06-03 02:14:23', '2023-06-03 02:14:23'),
(408, 42, NULL, 14, 'A10-ST-13-09', '25 MODEL ANALISIS STATISTIKA DENGAN SPSS 17', 'Teguh Wahyono', 'Elexmedia Komputindo', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 02:14:29', '2023-06-03 02:14:29'),
(409, 42, NULL, 14, 'A10-ST-14-12', 'MENGOLAH DATA BISNIS DENGAN SPSS 20', 'Mikael Sugianto,St,Smitdev Community', 'Elexmedia Komputindo', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 02:14:35', '2023-06-03 02:14:35'),
(410, 42, NULL, 14, 'A10-ST-15-18', 'MAHIR STATISTIKK PARAMETRIK', 'Singgih Santoso', 'Elexmedia Komputindo', '2018', 'Jakarta', NULL, '0', '0', '2023-06-03 02:14:41', '2023-06-03 02:14:41'),
(411, 42, NULL, 14, 'A10-ST-16-02', 'METODA STATISTIKA', 'Prof.Dr.Sudjana M.A.,M.Sc', 'Tarsito', '2002', 'Bandung', NULL, '0', '0', '2023-06-03 02:14:48', '2023-06-03 02:14:48'),
(412, 43, NULL, 15, 'A11-MP-01-12', 'METODE PENELITIAN HUKUM', 'Valerine,J.L.K.', 'Bayumedia', '2012', 'Bandung', NULL, '0', '0', '2023-06-03 02:15:00', '2023-06-03 02:15:00'),
(413, 43, NULL, 15, 'A11-MP-02-21', 'METODOLOGI PENELITIAN KUALITATIF', 'Prof.Dr.Lexy J.Moleong,Ma', 'Rosda', '2021', 'Bandung', NULL, '0', '0', '2023-06-03 02:15:07', '2023-06-03 02:15:07'),
(414, 43, NULL, 15, 'A11-MP-03-21', 'METODOLOGI PENELITIAN KUALITATIF', 'Prof.Dr.Lexy J.Moleong,Ma', 'Rosda', '2021', 'Bandung', NULL, '0', '0', '2023-06-03 02:15:13', '2023-06-03 02:15:13'),
(415, 43, NULL, 15, 'A11-MP-04-18', 'METODE PENELITIAN KUANTITATIF KUALITATIF DAN R&D', 'Prof.Dr.Sugiyono', 'Alfabeta', '2018', 'Bandung', NULL, '0', '0', '2023-06-03 02:15:19', '2023-06-03 02:15:19'),
(416, 43, NULL, 15, 'A11-MP-05-18', 'METODE PENELITIAN KUANTITATIF KUALITATIF DAN R&D', 'Prof.Dr.Sugiyono', 'Alfabeta', '2018', 'Bandung', NULL, '0', '0', '2023-06-03 02:15:27', '2023-06-03 02:15:27'),
(417, 43, NULL, 15, 'A11-MP-06-16', 'METODE PENELITIAN AKUNTANSI DAN FORMAT PENULISAN TESIS', 'Ade Fatma Lubis', 'Usu Press', '2016', 'Medan', NULL, '0', '0', '2023-06-03 02:15:33', '2023-06-03 02:15:33'),
(418, 43, NULL, 15, 'A11-MP-08-22', 'METODOLOGI PENELITIAN LENGKAP,PRAKTIS DAN MUDAH DIPAHAMI', 'V.Wiratna Sujarweni', 'Pustaka Baru Press', '2022', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:15:46', '2023-06-03 02:15:46'),
(419, 43, NULL, 15, 'A11-MP-09-22', 'METODOLOGI PENELITIAN LENGKAP,PRAKTIS DAN MUDAH DIPAHAMI', 'V.Wiratna Sujarweni', 'Pustaka Baru Press', '2022', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:15:52', '2023-06-03 02:15:52'),
(420, 43, NULL, 15, 'A11-MP-10-19', 'METODOLOGI PENELITIAN BISNIS DAN EKONOMI PENDEKATAN KUANTITATIF', 'V.Wiratna Sujarweni', 'Pustaka Baru Press', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:15:58', '2023-06-03 02:15:58'),
(421, 43, NULL, 15, 'A11-MP-11-19', 'METODOLOGI PENELITIAN BISNIS DAN EKONOMI PENDEKATAN KUANTITATIF', 'V.Wiratna Sujarweni', 'Pustaka Baru Press', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:16:04', '2023-06-03 02:16:04'),
(422, 43, NULL, 15, 'A11-MP-12-20', 'METODOLOGI PENELITIAN BISNIS DAN EKONOMI', 'V.Wiratna Sujarweni', 'Pustaka Baru Press', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:16:11', '2023-06-03 02:16:11'),
(423, 43, NULL, 15, 'A11-MP-13-82', 'PENGANTAR PENELITIAN ILMIAH DASAR METODA TEKNIK', 'Prof.Dr.Winarno Surakmad,M.Sc.Ed', 'Tarsito', '1982', 'Bandung', NULL, '0', '0', '2023-06-03 02:16:17', '2023-06-03 02:16:17'),
(424, 43, NULL, 15, 'A11-MP-14-12', 'BUKU AJAR BAHASA INDONESIA DAN TEKNIK PENULISAN KARYA ILMIAH', 'Tim Dosen', 'Umsu', '2012', 'Medan', NULL, '0', '0', '2023-06-03 02:16:23', '2023-06-03 02:16:23'),
(425, 43, NULL, 15, 'A11-MP-15-14', 'MENULIS KARYA ILMIAH', 'Dr.H.Dalman,M.Pd.', 'Pt.Rajagrafindo Persada', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:16:29', '2023-06-03 02:16:29'),
(426, 43, NULL, 15, 'A11-MP-16-07', 'METODOLOGI PENELITIAN PENDIDIKAN', 'Drs.Rusdin Pohan', 'Lanarka', '2007', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:16:36', '2023-06-03 02:16:36'),
(427, 43, NULL, 15, 'A11-MP-17-12', 'PANDUAN LENGKAP MENYUSUN PROPOSAL SEGALA MACAM USAHA', 'Agus N.Cahyo', 'Buku Biru', '2012', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:16:43', '2023-06-03 02:16:43'),
(428, 44, NULL, 16, 'A12-MA-01-09', 'PSIKOLOGI PENDIDIKAN EDUCATIONAL PSYCHOLOGY', 'John W.Santrock', 'Salemba Humanika', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 02:16:49', '2023-06-03 02:16:49'),
(429, 44, NULL, 16, 'A12-MA-02-07', 'MODEL PEMBELAJARAN MENCIPTAKAN PROSES BELAJAR MENGAJAR YANG KREATIF DAN EFEKTIF', 'Prof.Dr.H.Hamzah B.Uno,M.Pd.', 'Bumi Aksara', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 02:16:55', '2023-06-03 02:16:55'),
(430, 44, NULL, 16, 'A12-MA-04-09', 'MENDESAIN MODEL PEMBELAJARAN INOVATIF-PROGRESIF', 'Trianto,M.Pd.', 'Prenada Media', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 02:17:08', '2023-06-03 02:17:08'),
(431, 44, NULL, 16, 'A12-MA-05-14', 'MODEL-MODEL PEMBELAJARAN MENGEMBANGKAN PROFESIONALISME GURU', 'Dr.Rusman,M.Pd.', 'Rajawali Press', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:17:15', '2023-06-03 02:17:15'),
(432, 44, NULL, 16, 'A12-MA-06-14', '68 MODEL PEMBELAJARAN INOVATIF DALAM KURIKULUM 2013', 'Aris Shoimin', 'Ar-Ruzz Media', '2014', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:17:22', '2023-06-03 02:17:22'),
(433, 44, NULL, 16, 'A12-MA-07-14', '68 MODEL PEMBELAJARAN INOVATIF DALAM KURIKULUM 2013', 'Aris Shoimin', 'Ar-Ruzz Media', '2014', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:17:28', '2023-06-03 02:17:28'),
(434, 44, NULL, 16, 'A12-MA-08-88', 'DASAR-DASAR METODOLOGI PENGAJARAN', 'Dr.Engkoswara,.M.Ed.', 'Bina Aksara', '1988', 'Jakarta', NULL, '0', '0', '2023-06-03 02:17:35', '2023-06-03 02:17:35'),
(435, 44, NULL, 16, 'A12-MA-09-08', 'STRATEGI PEMBELAJARAN,POLA DAN STRATEGI PENGEMBANGAN DALAM KTSP', 'Dr.Siti Halimah,M.Pd', 'Citapustaka Media Perintis', '2008', 'Bandung', NULL, '0', '0', '2023-06-03 02:17:41', '2023-06-03 02:17:41'),
(436, 45, NULL, 17, 'B1-AK-01-14', 'AKUNTANSI KEUANGAN,PERSPEKTIF IFRS', 'Nelson Lam,Peter Lau', 'Salemba Empat', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:17:47', '2023-06-03 02:17:47'),
(437, 45, NULL, 17, 'B1-AK-02-18', 'AKUNTANSI INTERMEDIATE', 'Rudianto', 'Erlangga', '2018', 'Jakarta', NULL, '0', '0', '2023-06-03 02:17:54', '2023-06-03 02:17:54'),
(438, 45, NULL, 17, 'B1-AK-03-07', 'AKUNTANSI KEUANGAN', 'Bantu Tampubolon,Drs.Oloan Simanjuntak,Hamonangan Sialagan', 'Universitas Hkbp Nommensen', '2007', 'Medan', NULL, '0', '0', '2023-06-03 02:18:01', '2023-06-03 02:18:01'),
(439, 45, NULL, 17, 'B1-AK-04-10', 'AKUNTANSI KEUANGAN LANJUTAN (PERSPEKTIF INDONESIA)', 'Mc Graw Hill Education', 'Salemba Empat', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 02:18:08', '2023-06-03 02:18:08'),
(440, 45, NULL, 17, 'B1-AK-05-21', 'AKUNTANSI KEUANGAN UMKM PENDEKATAN PRAKTIS', 'Slamet Sugiri Sodikin', 'Upp Stim Ykpn', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:18:15', '2023-06-03 02:18:15'),
(441, 45, NULL, 17, 'B1-AK-06-21', 'AKUNTANSI KEUANGAN MENENGAH BERBASIS PSAK', 'Dwi Martani,Sylvia Veronica,Ratna Wardhani,Aria Farahmita,Edward Tanujaya', 'Salemba Empat', '2021', 'Jakarta', NULL, '0', '0', '2023-06-03 02:18:22', '2023-06-03 02:18:22'),
(442, 45, NULL, 17, 'B1-AK-07-21', 'SAK (STANDAR AKUNTANSI KEUANGAN SYARIAH)', 'Dewan Standar Akuntansi Syariah', 'Ikatan Akuntansi Indonesia', '2021', 'Jakarta', NULL, '0', '0', '2023-06-03 02:18:29', '2023-06-03 02:18:29'),
(443, 45, NULL, 17, 'B1-AK-08-89', 'AKUNTANSI INTERMEDIATE VOLUME KOMPREHENSIF', 'Jay M.Smith,K.Fred Skousen', 'Erlangga', '1989', 'Jakarta', NULL, '0', '0', '2023-06-03 02:18:36', '2023-06-03 02:18:36'),
(444, 45, NULL, 17, 'B1-AK-09-13', 'BUDGETING', 'Julita,Se.,M.Si', 'Citapustaka Media Perintis', '2013', 'Medan', NULL, '0', '0', '2023-06-03 02:18:43', '2023-06-03 02:18:43'),
(445, 45, NULL, 17, 'B1-AK-10-15', 'AKUNTANSI KEUANGAN MENENGAH 2', 'Hery,Widyawati Lekok', 'Bumi Aksara', '2015', 'Jakarta', NULL, '0', '0', '2023-06-03 02:18:50', '2023-06-03 02:18:50'),
(446, 45, NULL, 17, 'B1-AK-11-21', 'AKUNTANSI KEUANGAN', 'Wati Aris Astuti,Dr.Surtikanti', 'Rekayasa Sains', '2021', 'Bandung', NULL, '0', '0', '2023-06-03 02:18:57', '2023-06-03 02:18:57'),
(447, 45, NULL, 17, 'B1-AK-12-15', 'AKUNTANSI KEUANGAN DAERAH BERBASIS AKRUAL', 'Prof.Erlina,Omar Sakti Rambe,Drs.Rasdianto', 'Salemba Empat', '2015', 'Jakarta', NULL, '0', '0', '2023-06-03 02:19:04', '2023-06-03 02:19:04'),
(448, 45, NULL, 17, 'B1-AK-13-19', 'AKUNTANSI KEUANGAN TEORI DAN PRAKTIK', 'Tm Books', 'Andi', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:19:10', '2023-06-03 02:19:10'),
(449, 45, NULL, 17, 'B1-AK-14-19', 'AKUNTANSI KEUANGAN TEORI DAN PRAKTIK', 'Tm Books', 'Andi', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:19:17', '2023-06-03 02:19:17'),
(450, 45, NULL, 17, 'B1-AK-15-17', 'AKUNTANSI KEUANGAN MENENGAH', 'Anastasia Diana,Lilis Setiawati', 'Andi', '2017', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:19:24', '2023-06-03 02:19:24'),
(451, 45, NULL, 17, 'B1-AK-16-20', 'AKUNTANSI KEUANGAN MENENGAH  EDISI 2', 'Dwi Martani,Sylvia Veronica,Ratna Wardhani,Aria Farahmita,Edward Tanujaya', 'Salemba Empat', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:19:31', '2023-06-03 02:19:31'),
(452, 45, NULL, 17, 'B1-AK-17-20', 'TEORI AKUNTANSI KEUANGAN TEORI DAN KASUS EDISI 12', 'Schroeder,Clark,Cathey', 'Salemba Empat', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:19:38', '2023-06-03 02:19:38'),
(453, 45, NULL, 18, 'B2-AK-01-09', 'PENGANTAR AKUNTANSI ADAPTASI INDONESIA BUKU 1', 'Cengage Learning Asia', 'Salemba Empat', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 02:19:45', '2023-06-03 02:19:45'),
(454, 45, NULL, 18, 'B2-AK-02-09', 'PENGANTAR AKUNTANSI ADAPTASI INDONESIA BUKU 1', 'Cengage Learning Asia', 'Salemba Empat', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 02:19:51', '2023-06-03 02:19:51'),
(455, 45, NULL, 18, 'B2-AK-03-09', 'PENGANTAR AKUNTANSI ADAPTASI INDONESIA BUKU 1', 'Cengage Learning Asia', 'Salemba Empat', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 02:19:58', '2023-06-03 02:19:58'),
(456, 45, NULL, 18, 'B2-AK-04-09', 'PENGANTAR AKUNTANSI ADAPTASI INDONESIA BUKU 1', 'Cengage Learning Asia', 'Salemba Empat', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 02:20:05', '2023-06-03 02:20:05'),
(457, 45, NULL, 18, 'B2-AK-05-20', 'SISTEM AKUNTANSI EDISI 4', 'Mulyadi', 'Salemba Empat', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:20:11', '2023-06-03 02:20:11'),
(458, 45, NULL, 18, 'B2-AK-06-20', 'PENGANTAR AKUNTANSI KONSEP & TEKNIK PENYUSUNAN LAPORAN KEUANGAN', 'Rudianto', 'Erlangga', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:20:18', '2023-06-03 02:20:18'),
(459, 45, NULL, 18, 'B2-AK-07-11', 'PRAKTIKUM PENGANTAR AKUNTANSI 1 SERI 3', 'Selvy Monalisa', 'Salemba Empat', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 02:20:25', '2023-06-03 02:20:25'),
(460, 45, NULL, 18, 'B2-AK-08-20', 'ACCOUNTING PRINCIPLES BERBASIS SAK TETAP', 'Rizal Effendi,S.E,M.Si', 'Rajawali Press', '2020', 'Depok', NULL, '0', '0', '2023-06-03 02:20:32', '2023-06-03 02:20:32'),
(461, 45, NULL, 18, 'B2-AK-09-20', 'TEORI AKUNTANSI ACCOUNTING THEORY', 'Arfan Ikhsan.,Dkk', 'Madenatera', '2020', 'Medan', NULL, '0', '0', '2023-06-03 02:20:39', '2023-06-03 02:20:39'),
(462, 45, NULL, 18, 'B2-AK-10-20', 'PENGANTAR AKUNTANSI DARI TEORI KE PRAKTIK (ADOPSI IFRS)', 'Agus Arwani,S.E.,M.Ag.', 'Pt.Refika Aditama', '2020', 'Bandung', NULL, '0', '0', '2023-06-03 02:20:46', '2023-06-03 02:20:46'),
(463, 45, NULL, 18, 'B2-AK-11-14', 'APLIKASI AKUNTANSI DENGAN MYOB ACOUNTING VERSI 18.2', 'Anggiat Situngkir,Sastra Karo-Karo', 'Citapustaka Media', '2014', 'Bandung', NULL, '0', '0', '2023-06-03 02:20:53', '2023-06-03 02:20:53'),
(464, 45, NULL, 18, 'B2-AK-12-17', 'AKUNTANSI DASAR 1 DAN 2', 'Hery,S.E.,M.Si', 'Grasindo', '2017', 'Jakarta', NULL, '0', '0', '2023-06-03 02:20:59', '2023-06-03 02:20:59'),
(465, 45, NULL, 18, 'B2-AK-13-17', 'TEORI AKUNTANSI PENDEKATAN KONSEP DAN ANALISIS', 'Hery,S.E.,M.Si', 'Grasindo', '2017', 'Jakarta', NULL, '0', '0', '2023-06-03 02:21:06', '2023-06-03 02:21:06'),
(466, 45, NULL, 18, 'B2-AK-14-08', 'MEMAHAMI AKUNTANSI DASAR PENDEKATAN TEKNIS SIKLUS AKUNTANSI', 'Drs.Hadri Mulya,M.Si', 'Mitra Wacana Media', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 02:21:13', '2023-06-03 02:21:13'),
(467, 45, NULL, 18, 'B2-AK-15-05', 'DASAR-DASAR AKUNTANSI JILID 1', 'Al.Haryono Jusuf', 'Stie Ykpn', '2005', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:21:20', '2023-06-03 02:21:20'),
(468, 45, NULL, 18, 'B2-AK-16-20', 'PENGANTAR AKUNTANSI 2 ADAPTASI INDONESIA EDISI 4', 'Carl S.Warren,Dkk', 'Salemba Empat', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:21:27', '2023-06-03 02:21:27'),
(469, 45, NULL, 18, 'B2-AK-17-15', '4 IN 1 APLIKASI AKUNTANSI YANG PALING DIBUTUHKAN', 'Supriyanta,S.Kom,Dkk', 'Mediakom', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:21:33', '2023-06-03 02:21:33'),
(470, 45, NULL, 18, 'B2-AK-18-11', 'DASAR-DASAR AKUNTANSI', 'Prof.Drs.H.Lili M.Sadeli', 'Bumi Aksara', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 02:21:40', '2023-06-03 02:21:40'),
(471, 45, NULL, 18, 'B2-AK-19-20', 'PROFESI AKUNTAN PUBLIK DI INDONESIA', 'Marisi P.Purba,S.E', 'Graha Ilmu', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:21:47', '2023-06-03 02:21:47'),
(472, 45, NULL, 18, 'B2-AK-20-20', 'ASPEK AKUNTANSI UNDANG-UNDANG PERSEROAN TERBATAS', 'Marisi P.Purba,S.E', 'Graha Ilmu', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:21:54', '2023-06-03 02:21:54'),
(473, 45, NULL, 18, 'B2-AK-21-03', 'SERI PANDUAN LENGKAP MYOB ACCOUNTING', 'Madcoms', 'Andi', '2003', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:22:02', '2023-06-03 02:22:02'),
(474, 45, NULL, 18, 'B2-AK-22-19', 'PENGANTAR AKUNTANSI 2', 'V.Wiratna Sujarweni', 'Pustaka Baru Press', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:22:09', '2023-06-03 02:22:09'),
(475, 45, NULL, 18, 'B2-AK-23-07', 'ALPHA TEACH YOURSELF ACCOUNTING DALAM 24 JAM', 'Carol Costa,C.Wesley Addison', 'Prenada Media', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 02:22:16', '2023-06-03 02:22:16'),
(476, 45, NULL, 18, 'B2-AK-24-11', 'ACTIVITY BASED COSTING,TEORI DAN APLIKASI', 'Dr.Islahuzzahman,S.E,M.Si', 'Alfabeta', '2011', 'Bandung', NULL, '0', '0', '2023-06-03 02:22:23', '2023-06-03 02:22:23'),
(477, 45, NULL, 18, 'B2-AK-25-22', 'PENGANTAR AKUNTANSI 1', 'Alexander Hery,S.E.,M.Si.', 'Yrama Widya', '2022', 'Bandung', NULL, '0', '0', '2023-06-03 02:22:31', '2023-06-03 02:22:31'),
(478, 45, NULL, 18, 'B2-AK-26-21', 'PENGANTAR AKUNTANSI BERDASARKAN SAK ETAP DAN IFRS', 'Syaiful Bahri,S.E,Msa', 'Andi', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:22:38', '2023-06-03 02:22:38'),
(479, 45, NULL, 19, 'B3-AK-02-14', 'MAHIR AKUNTANSI |AKUNTANSI BIAYA DAN MANAJEMEN', 'Temy Setiawan,Ahalik', 'Pt.Bhuana Ilmu Populer', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:22:52', '2023-06-03 02:22:52'),
(480, 45, NULL, 19, 'B3-AK-03-13', 'AKUNTANSI MANAJERIAL EDISI 14 BUKU 1', 'Garrison,Noreen,Brewer', 'Salemba Empat', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 02:22:59', '2023-06-03 02:22:59'),
(481, 45, NULL, 19, 'B3-AK-04-13', 'AKUNTANSI MANAJERIAL EDISI 14 BUKU 1', 'Garrison,Noreen,Brewer', 'Salemba Empat', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 02:23:06', '2023-06-03 02:23:06'),
(482, 45, NULL, 19, 'B3-AK-05-13', 'AKUNTANSI MANAJERIAL EDISI 14 BUKU 1', 'Garrison,Noreen,Brewer', 'Salemba Empat', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 02:23:14', '2023-06-03 02:23:14'),
(483, 45, NULL, 19, 'B3-AK-06-08', 'AKUNTANSI MANAJEMEN EDISI 2', 'Darsono Prawironegoro,Ari Purwanti', 'Mitra Wacana Media', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 02:23:21', '2023-06-03 02:23:21'),
(484, 45, NULL, 19, 'B3-AK-07-20', 'AKUNTANSI MANAJEMEN INFORMASI UNTUK PENGAMBILAN KEPUTUSAN STRATEGIS', 'Rudianto', 'Erlangga', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:23:28', '2023-06-03 02:23:28'),
(485, 45, NULL, 19, 'B3-AK-08-14', 'AKUNTANSI MANAJEMEN', 'Drs.Jihen Ginting,M.Si,Ak', 'Unimed Press', '2014', 'Medan', NULL, '0', '0', '2023-06-03 02:23:35', '2023-06-03 02:23:35'),
(486, 45, NULL, 19, 'B3-AK-09-06', 'AKUNTANSI MANAJEMEN', 'Armila Krisna Warindrani', 'Graha Ilmu', '2006', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:23:43', '2023-06-03 02:23:43'),
(487, 45, NULL, 19, 'B3-AK-10-21', 'AKUNTANSI MANAJEMEN DASAR-DASAR KONSEP BIAYA DAN PENGAMBILAN KEPUTUSAN', 'Kamaruddin Ahmad', 'Pt.Rajagrafindo Persada', '2021', 'Jakarta', NULL, '0', '0', '2023-06-03 02:23:50', '2023-06-03 02:23:50'),
(488, 45, NULL, 19, 'B3-AK-11-21', 'AKUNTANSI MANAJEMEN DASAR-DASAR KONSEP BIAYA DAN PENGAMBILAN KEPUTUSAN', 'Kamaruddin Ahmad', 'Pt.Rajagrafindo Persada', '2021', 'Jakarta', NULL, '0', '0', '2023-06-03 02:23:57', '2023-06-03 02:23:57'),
(489, 45, NULL, 20, 'B4-AK-01-20', 'AKUNTANSI BIAYA EDISI 4 REVISI', 'Firdaus A.Dunia,Wasilah Abdullah,Catur Sasongko', 'Salemba Empat', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:24:04', '2023-06-03 02:24:04');
INSERT INTO `buku` (`id_buku`, `id_kategoribuku`, `id_genrebuku`, `id_rakbuku`, `kodebuku`, `judulbuku`, `author`, `publisher`, `tahun`, `kota`, `fotocoverbuku`, `status_buku`, `status_kategori`, `created_at`, `updated_at`) VALUES
(490, 45, NULL, 20, 'B4-AK-02-20', 'AKUNTANSI PAJAK EDISI 7', 'Waluyo', 'Salemba Empat', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:24:12', '2023-06-03 02:24:12'),
(491, 45, NULL, 20, 'B4-AK-03-21', 'AKUNTANSI BUMDES (BADAN USAHA MILIK DESA)', 'V.Wiratna Sujarweni', 'Pustaka Baru Press', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:24:19', '2023-06-03 02:24:19'),
(492, 45, NULL, 20, 'B4-AK-04-21', 'AKUNTANSI BUMDES (BADAN USAHA MILIK DESA)', 'V.Wiratna Sujarweni', 'Pustaka Baru Press', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:24:26', '2023-06-03 02:24:26'),
(493, 45, NULL, 20, 'B4-AK-05-21', 'AKUNTANSI BUMDES (BADAN USAHA MILIK DESA)', 'V.Wiratna Sujarweni', 'Pustaka Baru Press', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:24:34', '2023-06-03 02:24:34'),
(494, 45, NULL, 20, 'B4-AK-06-21', 'AKUNTANSI UMKM (USAHA MIKRO KECIL MENENGAH)', 'V.Wiratna Sujarweni', 'Pustaka Baru Press', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:24:41', '2023-06-03 02:24:41'),
(495, 45, NULL, 20, 'B4-AK-07-21', 'AKUNTANSI KEPERILAKUAN', 'R.A Supriyono', 'Ugm Press', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:24:48', '2023-06-03 02:24:48'),
(496, 45, NULL, 20, 'B4-AK-08-15', 'AKUNTANSI INTERNASIONAL | ISU-ISU AKUNTANSI DALAM PERSPEKTIF INTERNASIONAL', 'Drs.Sunardi,Drs.Danang Sunyoto', 'Pt.Buku Seru', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:24:56', '2023-06-03 02:24:56'),
(497, 45, NULL, 20, 'B4-AK-09-15', 'AKUNTANSI INTERNASIONAL | ISU-ISU AKUNTANSI DALAM PERSPEKTIF INTERNASIONAL', 'Drs.Sunardi,Drs.Danang Sunyoto', 'Pt.Buku Seru', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:25:03', '2023-06-03 02:25:03'),
(498, 45, NULL, 20, 'B4-AK-10-20', 'AKUNTANSI BIAYA DALAM PERSPEKTIF MANAJERIAL', 'Dr.Wiwik Lestari,Dhyka Bagus Permana', 'Pt.Rajagrafindo Persada', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:25:11', '2023-06-03 02:25:11'),
(499, 45, NULL, 20, 'B4-AK-11-09', 'AKUNTANSI PAJAK LANJUTAN', 'Djoko Muljono', 'Andi', '2009', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:25:18', '2023-06-03 02:25:18'),
(500, 45, NULL, 20, 'B4-AK-12-15', 'AKUNTANSI BIAYA TEORI DAN PENERAPANNYA', 'V.Wiratna Sujarweni', 'Pustaka Baru Press', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:25:26', '2023-06-03 02:25:26'),
(501, 45, NULL, 20, 'B4-AK-13-09', 'AKUNTTANSI SYARIAH MUDAH DAN SEDERHANA', 'Firdaus Furywardhana,Se.', 'Ppps', '2009', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:25:35', '2023-06-03 02:25:35'),
(502, 45, NULL, 21, 'B5-AK-01-14', 'JASA AUDIT DAN ASSURANCE PENDEKATAN SISTEMATIS EDISI 8 | BUKU 1', 'William F.Messer,Steven M.Glover,Douglas', 'Salemba Empat', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:25:43', '2023-06-03 02:25:43'),
(503, 45, NULL, 21, 'B5-AK-02-14', 'JASA AUDIT DAN ASSURANCE PENDEKATAN SISTEMATIS EDISI 8 | BUKU 1', 'William F.Messer,Steven M.Glover,Douglas', 'Salemba Empat', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:25:51', '2023-06-03 02:25:51'),
(504, 45, NULL, 21, 'B5-AK-03-09', 'PRAKTIKUM AUDIT SERI 2', 'Sukrisno Agoes,Estralita Trisnawati', 'Salemba Empat', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 02:25:58', '2023-06-03 02:25:58'),
(505, 45, NULL, 21, 'B5-AK-04-14', 'PRAKTIKUM AUDIT EDISI 3 | BUKU 1 INTRUKSI UMUM,BERKAS PERMANEN', 'Sukrisno Agoes,Estralita Trisnawati', 'Salemba Empat', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:26:06', '2023-06-03 02:26:06'),
(506, 45, NULL, 21, 'B5-AK-05-14', 'PRAKTIKUM AUDIT EDISI 3 | BUKU 1 INTRUKSI UMUM,BERKAS PERMANEN', 'Sukrisno Agoes,Estralita Trisnawati', 'Salemba Empat', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:26:14', '2023-06-03 02:26:14'),
(507, 45, NULL, 21, 'B5-AK-06-14', 'PRAKTIKUM AUDIT EDISI 3 | BUKU 1 INTRUKSI UMUM,BERKAS PERMANEN', 'Sukrisno Agoes,Estralita Trisnawati', 'Salemba Empat', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:26:21', '2023-06-03 02:26:21'),
(508, 45, NULL, 21, 'B5-AK-07-14', 'PRAKTIKUM AUDIT EDISI 3 | BUKU 2 KERTAS KERJA PEMERIKSAAN', 'Sukrisno Agoes,Estralita Trisnawati', 'Salemba Empat', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:26:29', '2023-06-03 02:26:29'),
(509, 45, NULL, 21, 'B5-AK-08-14', 'PRAKTIKUM AUDIT EDISI 3 | BUKU 2 KERTAS KERJA PEMERIKSAAN', 'Sukrisno Agoes,Estralita Trisnawati', 'Salemba Empat', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:26:37', '2023-06-03 02:26:37'),
(510, 45, NULL, 21, 'B5-AK-09-14', 'PRAKTIKUM AUDIT EDISI 3 | BUKU 2 KERTAS KERJA PEMERIKSAAN', 'Sukrisno Agoes,Estralita Trisnawati', 'Salemba Empat', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:26:45', '2023-06-03 02:26:45'),
(511, 45, NULL, 21, 'B5-AK-10-14', 'PRAKTIKUM AUDIT EDISI 3 | BUKU 2 KERTAS KERJA PEMERIKSAAN', 'Sukrisno Agoes,Estralita Trisnawati', 'Salemba Empat', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:26:53', '2023-06-03 02:26:53'),
(512, 45, NULL, 21, 'B5-AK-11-14', 'PRAKTIKUM AUDIT EDISI 3 | BUKU 2 KERTAS KERJA PEMERIKSAAN', 'Sukrisno Agoes,Estralita Trisnawati', 'Salemba Empat', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:27:01', '2023-06-03 02:27:01'),
(513, 45, NULL, 21, 'B5-AK-12-14', 'PRAKTIKUM AUDIT EDISI 3 | BUKU 2 KERTAS KERJA PEMERIKSAAN', 'Sukrisno Agoes,Estralita Trisnawati', 'Salemba Empat', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:27:09', '2023-06-03 02:27:09'),
(514, 45, NULL, 21, 'B5-AK-13-04', 'AUDITING (PEMERIKSAAN AKUNTAN OLEH KANTOR AKUNTANSI PUBLIK)', 'Sukrisno Agoes', 'Lp-Feui', '2004', 'Jakarta', NULL, '0', '0', '2023-06-03 02:27:17', '2023-06-03 02:27:17'),
(515, 45, NULL, 21, 'B5-AK-14-19', 'PRAKTIKUM AUDIT EDISI 4  INTRUKSI UMUM,BERKAS PERMANEN,PERMASALAHAN', 'Sukrisno Agoes,Estralita Trisnawati', 'Salemba Empat', '2019', 'Jakarta', NULL, '0', '0', '2023-06-03 02:27:25', '2023-06-03 02:27:25'),
(516, 45, NULL, 21, 'B5-AK-15-13', 'AUDIT BERBASIS ISA (INTERNATIONAL STANDARDS ON AUDITING)', 'Theodorus M.Tuankotta', 'Salemba Empat', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 02:27:33', '2023-06-03 02:27:33'),
(517, 45, NULL, 22, 'B6-AK-01-07', 'PENYUSUNAN ANGGARAN PERUSAHAAN', 'Tendi Haruman,Sri Rahayu', 'Graha Ilmu', '2007', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:27:41', '2023-06-03 02:27:41'),
(518, 45, NULL, 22, 'B6-AK-02-07', 'PENYUSUNAN ANGGARAN PERUSAHAAN', 'Tendi Haruman,Sri Rahayu', 'Graha Ilmu', '2007', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:27:50', '2023-06-03 02:27:50'),
(519, 45, NULL, 22, 'B6-AK-03-07', 'PENYUSUNAN ANGGARAN PERUSAHAAN', 'Tendi Haruman,Sri Rahayu', 'Graha Ilmu', '2007', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:27:58', '2023-06-03 02:27:58'),
(520, 45, NULL, 22, 'B6-AK-04-14', 'FINANCIAL RATIO FOR BUSINESS', 'Hery S.E,M.Si,Rsa', 'Grasindo', '2016', 'Jakarta', NULL, '0', '0', '2023-06-03 02:28:06', '2023-06-03 02:28:06'),
(521, 45, NULL, 22, 'B6-AK-05-06', 'AKUNTANSI SEKTOR PUBLIK', 'Deddi Nordiawan', 'Salemba Empat', '2006', 'Jakarta', NULL, '0', '0', '2023-06-03 02:28:15', '2023-06-03 02:28:15'),
(522, 45, NULL, 22, 'B6-AK-06-15', 'AKUNTANSI SEKTOR PUBLIK | TEORI KONSEP APLIKASI', 'V.Wiratna Sujarweni', 'Pustaka Baru Press', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:28:23', '2023-06-03 02:28:23'),
(523, 45, NULL, 22, 'B6-AK-07-02', 'AKUNTANSI SEKTOR PUBLIK', 'Prof.Dr.Mardiasmo,Mba,Ak', 'Andi', '2002', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:28:31', '2023-06-03 02:28:31'),
(524, 45, NULL, 22, 'B6-AK-08-02', 'AKUNTANSI SEKTOR PUBLIK', 'Prof.Dr.Mardiasmo,Mba,Ak', 'Andi', '2002', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:28:39', '2023-06-03 02:28:39'),
(525, 45, NULL, 22, 'B6-AK-09-02', 'AKUNTANSI SEKTOR PUBLIK', 'Prof.Dr.Mardiasmo,Mba,Ak', 'Andi', '2002', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:28:48', '2023-06-03 02:28:48'),
(526, 45, NULL, 23, 'B7-AK-01-01', 'SISTEM AKUNTANSI', 'Mulyadi', 'Salemba Empat', '2001', 'Jakarta', NULL, '0', '0', '2023-06-03 02:28:56', '2023-06-03 02:28:56'),
(527, 45, NULL, 23, 'B7-AK-02-09', 'ACCOUNTING INFORMATION SYSTEMS | SISTEM INFORMASI AKUNTANSI', 'James A.Hall', 'Salemba Empat', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 02:29:04', '2023-06-03 02:29:04'),
(528, 45, NULL, 23, 'B7-AK-03-21', 'SISTEM INFORMASI AKUNTANSI', 'Dr.Lilis Puspitawati,S.E', 'Rekayasa Sains', '2021', 'Bandung', NULL, '0', '0', '2023-06-03 02:29:13', '2023-06-03 02:29:13'),
(529, 45, NULL, 23, 'B7-AK-04-18', 'SISTEM INFORMASI AKUNTANSI', 'Faiz Zamzami,Nabella Duta Nusa,Ihda Arifin', 'Ugm Press', '2018', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:29:21', '2023-06-03 02:29:21'),
(530, 45, NULL, 23, 'B7-AK-05-18', 'SISTEM INFORMASI AKUNTANSI', 'Faiz Zamzami,Nabella Duta Nusa,Ihda Arifin', 'Ugm Press', '2018', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:29:30', '2023-06-03 02:29:30'),
(531, 45, NULL, 23, 'B7-AK-06-19', 'SISTEM AKUNTANSI', 'V.Wiratna Sujarweni', 'Pustaka Baru Press', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:29:39', '2023-06-03 02:29:39'),
(532, 46, NULL, 24, 'B8-AB-01-10', 'MODUL KEWIRAUSAHAAN UNTUK PROGRAM STRATA 1', 'Rhenaldi Kasali,Dkk', 'Hikmah', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 02:29:48', '2023-06-03 02:29:48'),
(533, 46, NULL, 24, 'B8-AB-02-21', 'KEWIRAUSAHAAN | BUKU AJAR UNTUK MAHASISWA', 'Alexander Hery,S.E.,M.Si.', 'Yrama Widya', '2021', 'Bandung', NULL, '0', '0', '2023-06-03 02:29:56', '2023-06-03 02:29:56'),
(534, 46, NULL, 24, 'B8-AB-03-21', 'BISNIS DI ERA DIGITAL WHY NOT?', 'Irsyad Kamal,Kurnia Khafidhaturafiah', 'Yrama Widya', '2021', 'Bandung', NULL, '0', '0', '2023-06-03 02:30:17', '2023-06-03 02:30:17'),
(535, 46, NULL, 24, 'B8-AB-04-12', 'MENGGELUTI DUNIA WIRAUSAHA', 'Daryanto', 'Gava Media', '2012', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:30:28', '2023-06-03 02:30:28'),
(536, 46, NULL, 24, 'B8-AB-05-21', 'GREEN BUSINES | MANAJEMEN BISNIS BERKONSEP RAMAH LINGKUNGAN', 'Dr.Agus Sugianto,Dkk', 'Gava Media', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:30:39', '2023-06-03 02:30:39'),
(537, 46, NULL, 24, 'B8-AB-06-21', 'TOTAL CUSTOMER | PERCEPATAN LABA SEPANJANG MASA', 'Heri Smile Suchaeri', 'Metagraf', '2012', 'Solo', NULL, '0', '0', '2023-06-03 02:30:48', '2023-06-03 02:30:48'),
(538, 46, NULL, 24, 'B8-AB-07-19', 'PENGEMBANGAN KEWIRAUSAHAAN UNTUK PEMBERDAYAAN UKM DAERAH', 'Prof.Dr.Ir.Achmad Suryana', 'Obor', '2019', 'Jakarta', NULL, '0', '0', '2023-06-03 02:30:57', '2023-06-03 02:30:57'),
(539, 46, NULL, 24, 'B8-AB-08-22', 'PENGAPLIKASIAN MODEL BISNIS CANVAS PADA USAHA MIKRO KECIL MENENGAH', 'Dian Yulie Reindrawati,Dkk', 'Lakeisha', '2022', 'Klaten', NULL, '0', '0', '2023-06-03 02:31:05', '2023-06-03 02:31:05'),
(540, 46, NULL, 24, 'B8-AB-09-14', 'HANDBOOK DATA WARALABA INDONESIA', 'Redaksi Majalah Franchise', 'Neo Mediatama', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:31:12', '2023-06-03 02:31:12'),
(541, 46, NULL, 24, 'B8-AB-10-82', 'TERBENTUKNYA MASYARAKAT INDONESIA', 'Robert L.Heilbroner', 'Ghalia Indonesia', '1982', 'Jakarta', NULL, '0', '0', '2023-06-03 02:31:20', '2023-06-03 02:31:20'),
(542, 46, NULL, 24, 'B8-AB-11-21', 'BUSINESS MODEL AND BUSINESS PLAN DI ERA 4.0', 'Indra Mahadirka Putra', 'Quadrant', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:31:28', '2023-06-03 02:31:28'),
(543, 46, NULL, 24, 'B8-AB-12-09', 'BUSINESS REVOLUSIONER', 'John Afifi', 'Noktah', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:31:36', '2023-06-03 02:31:36'),
(544, 46, NULL, 24, 'B8-AB-13-20', 'PROFESSIONAL DAN MAPAN LEWAT BISNIS RECEHAN', 'John Afifi', 'Laksana', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:31:43', '2023-06-03 02:31:43'),
(545, 46, NULL, 24, 'B8-AB-14-20', 'PROFESSIONAL DAN MAPAN LEWAT BISNIS RECEHAN', 'John Afifi', 'Laksana', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:31:50', '2023-06-03 02:31:50'),
(546, 46, NULL, 24, 'B8-AB-15-21', 'IT\'S ME MY MIAW MARKETING IN A WEEK', 'Donny Susilo', 'Yrama Widya', '2021', 'Bandung', NULL, '0', '0', '2023-06-03 02:31:57', '2023-06-03 02:31:57'),
(547, 46, NULL, 24, 'B8-AB-16-21', 'IT\'S ME MY MIAW MARKETING IN A WEEK', 'Donny Susilo', 'Yrama Widya', '2021', 'Bandung', NULL, '0', '0', '2023-06-03 02:32:03', '2023-06-03 02:32:03'),
(548, 46, NULL, 24, 'B8-AB-17-09', 'FRANCHISE BIBLE | ANDA MAU MEMFRANCHISEKAN USAHA ATAU BELI FRANCHISE?', 'Redaksi Majalah Franchise', 'Info Franchise Publishing', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 02:32:10', '2023-06-03 02:32:10'),
(549, 46, NULL, 24, 'B8-AB-18-21', 'PRAKTIS DAN MUDAH MENYUSUN ANALISIS BEBAN KERJA', 'Suci R.Mar\'Ih Koesomowidjojo', 'Raih Asa Sukses', '2021', 'Depok', NULL, '0', '0', '2023-06-03 02:32:17', '2023-06-03 02:32:17'),
(550, 46, NULL, 24, 'B8-AB-19-21', 'PRAKTIS DAN MUDAH MENYUSUN ANALISIS BEBAN KERJA', 'Suci R.Mar\'Ih Koesomowidjojo', 'Raih Asa Sukses', '2021', 'Depok', NULL, '0', '0', '2023-06-03 02:32:23', '2023-06-03 02:32:23'),
(551, 46, NULL, 25, 'B9-AB-01-16', 'TEORI ORGANISASI DAN ADMINISTRASI', 'Kusdi', 'Salemba Humanika', '2016', 'Jakarta', NULL, '0', '0', '2023-06-03 02:32:30', '2023-06-03 02:32:30'),
(552, 46, NULL, 25, 'B9-AB-02-01', 'ADMINISTRASI UMUM | PROGRAM KEAHLIAN PERHOTELAN DAN JASA PARIWISATA', 'Tuwuh Adhistyo Wijoyo', 'Bumi Aksara', '2001', 'Jakarta', NULL, '0', '0', '2023-06-03 02:32:37', '2023-06-03 02:32:37'),
(553, 46, NULL, 25, 'B9-AB-03-01', 'ADMINISTRASI UMUM | PROGRAM KEAHLIAN PERHOTELAN DAN JASA PARIWISATA', 'Tuwuh Adhistyo Wijoyo', 'Bumi Aksara', '2001', 'Jakarta', NULL, '0', '0', '2023-06-03 02:32:44', '2023-06-03 02:32:44'),
(554, 46, NULL, 25, 'B9-AB-04-12', 'PANDUAN LENGKAP PEKERJAAN SEKRETARIS', 'Caroline F.Ch.Lawalata', 'Akademia', '2012', 'Padang', NULL, '0', '0', '2023-06-03 02:32:51', '2023-06-03 02:32:51'),
(555, 46, NULL, 25, 'B9-AB-05-18', 'ADMINISTRASI PERKANTORAN', 'Diah Wijayanti Sutha', 'Indomedia Pustaka', '2018', 'Sidoarjo', NULL, '0', '0', '2023-06-03 02:32:58', '2023-06-03 02:32:58'),
(556, 46, NULL, 25, 'B9-AB-06-18', 'MANAJEMEN KEARSIPAN', 'Dra.Armida Silia Asriel,M.Si', 'Rosda', '2018', 'Bandung', NULL, '0', '0', '2023-06-03 02:33:04', '2023-06-03 02:33:04'),
(557, 46, NULL, 25, 'B9-AB-07-20', 'PENGELOLAAN ARSIP ELEKTRONIK', 'Muhammad Rustam', 'Universitas Terbuka', '2020', 'Banten', NULL, '0', '0', '2023-06-03 02:33:11', '2023-06-03 02:33:11'),
(558, 46, NULL, 25, 'B9-AB-08-20', 'JALAN SEDERHANA MEMAHAMI  ADMINISTRASI PUBLIK BISNIS', 'Irfan Ridwan Maksum', 'Deepublish', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:33:18', '2023-06-03 02:33:18'),
(559, 46, NULL, 25, 'B9-AB-09-14', 'UNDANG-UNDANG ADMINISTRASI PEMERINTAHAN DAN KEPENDUDUKAN', 'Redaksi Sinar Grafika', 'Sinar Grafika', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:33:25', '2023-06-03 02:33:25'),
(560, 46, NULL, 26, 'B10-AB-01-14', 'PRACTICAL COMMUNICATION SKILL', 'Johnon Alvonco,Ph.D', 'Elexmedia Komputindo', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:33:32', '2023-06-03 02:33:32'),
(561, 46, NULL, 26, 'B10-AB-02-07', 'KOMUNIKASI BISNIS', 'Sutrisna Dewi', 'Andi', '2007', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:33:39', '2023-06-03 02:33:39'),
(562, 46, NULL, 26, 'B10-AB-03-19', 'KOMUNIKASI BISNIS UNTUK MAHASISWA DAN KALANGAN UMUM', 'Cahya Purnama Asri', 'Pustaka Baru Press', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:33:46', '2023-06-03 02:33:46'),
(563, 46, NULL, 26, 'B10-AB-04-21', 'KOMUNIKASI BISNIS', 'Dr.H.C.Hery,S.E,M.Si', 'Gava Media', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:33:53', '2023-06-03 02:33:53'),
(564, 46, NULL, 26, 'B10-AB-05-15', 'KOMUNIKASI BISNIS STRATEGI KOMUNIKASI DALAM MENGELOLA BISNIS', 'Andri Feriyanto,Endang Shyta Triana', 'Mediatera', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:34:00', '2023-06-03 02:34:00'),
(565, 46, NULL, 26, 'B10-AB-06-10', 'SILATURAHMI MARKETING | RAHASIA SUKSES BISNIS SEPANJANG MASA', 'Gagan Gartika', 'Pt.Gramedia Pustaka Utama', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 02:34:07', '2023-06-03 02:34:07'),
(566, 46, NULL, 26, 'B10-AB-07-21', 'PENGANTAR ILMU KOMUNIKASI EDISI KELIMA', 'Prof.Dr.H.Hafied Cangara', 'Rajawali Press', '2021', 'Depok', NULL, '0', '0', '2023-06-03 02:34:14', '2023-06-03 02:34:14'),
(567, 46, NULL, 26, 'B10-AB-08-20', 'ILMU KOMUNIKASI SUATU PENGANTAR', 'Prof.Deddy Mulyana,M.A.Ph.D.', 'Rosda', '2020', 'Bandung', NULL, '0', '0', '2023-06-03 02:34:21', '2023-06-03 02:34:21'),
(568, 46, NULL, 26, 'B10-AB-09-20', 'PSIKOLOGI KOMUNIKASI EDISI REVISI', 'Dr.Jalaluddin Rakhmat,M.Sc', 'Simbiosa', '2020', 'Bandung', NULL, '0', '0', '2023-06-03 02:34:28', '2023-06-03 02:34:28'),
(569, 46, NULL, 26, 'B10-AB-10-20', 'LOGIKA KOMUNIKASI', 'Zainul Maarif', 'Rajawali Press', '2020', 'Depok', NULL, '0', '0', '2023-06-03 02:34:35', '2023-06-03 02:34:35'),
(570, 46, NULL, 27, 'B11-AB-01-09', 'MATEMATIKA EKONOMI & KEUANGAN', 'D.Sriyono', 'Andi', '2009', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:34:42', '2023-06-03 02:34:42'),
(571, 46, NULL, 27, 'B11-AB-02-12', 'MATEMATIKA EKONOMI DAN BISNIS EDISI 2 BUKU 1', 'Josep Bintang Kalani', 'Salemba Empat', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 02:34:49', '2023-06-03 02:34:49'),
(572, 46, NULL, 27, 'B11-AB-03-12', 'MATEMATIKA EKONOMI DAN BISNIS EDISI 2 BUKU 1', 'Josep Bintang Kalani', 'Salemba Empat', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 02:34:56', '2023-06-03 02:34:56'),
(573, 46, NULL, 27, 'B11-AB-04-12', 'MATEMATIKA EKONOMI DAN BISNIS EDISI 2 BUKU 1', 'Josep Bintang Kalani', 'Salemba Empat', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 02:35:03', '2023-06-03 02:35:03'),
(574, 46, NULL, 27, 'B11-AB-05-12', 'MATEMATIKA EKONOMI DAN BISNIS EDISI 2 BUKU 1', 'Josep Bintang Kalani', 'Salemba Empat', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 02:35:10', '2023-06-03 02:35:10'),
(575, 46, NULL, 27, 'B11-AB-06-12', 'MATEMATIKA EKONOMI DAN BISNIS EDISI 2 BUKU 1', 'Josep Bintang Kalani', 'Salemba Empat', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 02:35:18', '2023-06-03 02:35:18'),
(576, 46, NULL, 27, 'B11-AB-07-06', 'DASAR-DASAR MATEMATIKA EKONOMI EDISI 4 JILID 1', 'Alpha C.Chiang,Kevin Wainwaright', 'Erlangga', '2006', 'Jakarta', NULL, '0', '0', '2023-06-03 02:35:25', '2023-06-03 02:35:25'),
(577, 46, NULL, 27, 'B11-AB-08-19', 'BUKU PRAKTIK MATEMATIKA BISNIS UNTUK PROGRAM DIPLOMA', 'I Made Wijana', 'In Media', '2019', 'Bogor', NULL, '0', '0', '2023-06-03 02:35:32', '2023-06-03 02:35:32'),
(578, 46, NULL, 27, 'B11-AB-09-19', 'MATEMATIKA EKONOMI', 'Amir Tjolleng', 'Yrama Widya', '2019', 'Bandung', NULL, '0', '0', '2023-06-03 02:35:39', '2023-06-03 02:35:39'),
(579, 46, NULL, 27, 'B11-AB-10-05', 'DASAR-DASAR EKONOMETRIKA', 'Drs.Sarwoko,M.Si', 'Andi', '2005', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:35:47', '2023-06-03 02:35:47'),
(580, 46, NULL, 27, 'B11-AB-11-14', 'MATEMATIKA EKONOMI DAN BISNIS', 'Ir.B.Yulianto Nugroho,Dkk', 'Rajawali Press', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:35:54', '2023-06-03 02:35:54'),
(581, 46, NULL, 27, 'B11-AB-12-17', 'MATEMATIKA EKONOMI', 'Prof.Dr.Sofjan Assauri', 'Rajawali Press', '2017', 'Jakarta', NULL, '0', '0', '2023-06-03 02:36:01', '2023-06-03 02:36:01'),
(582, 46, NULL, 28, 'B12-AB-01-06', 'KEWIRAUSAHAAN | PEDOMAN PRAKTIS : KIAT DAN PROSES MENUJU SUKSES', 'Dr.Suryana,M.Si', 'Salemba Empat', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 02:36:08', '2023-06-03 02:36:08'),
(583, 46, NULL, 28, 'B12-AB-02-07', 'STUDI KELAYAKAN BISNIS', 'H.Dadang Husen Sobana,M.Ag.', 'Pustaka Setia', '2020', 'Bandung', NULL, '0', '0', '2023-06-03 02:36:16', '2023-06-03 02:36:16'),
(584, 46, NULL, 28, 'B12-AB-03-17', 'KEWIRAUSAHAAN', 'Hery,S.E.,M.Si', 'Grasindo', '2017', 'Jakarta', NULL, '0', '0', '2023-06-03 02:36:23', '2023-06-03 02:36:23'),
(585, 46, NULL, 28, 'B12-AB-04-20', 'ETIKA BISNIS | TEORI,KASUS DAN SOLUSI', 'Irham Fahmi', 'Alfabeta', '2020', 'Bandung', NULL, '0', '0', '2023-06-03 02:36:31', '2023-06-03 02:36:31'),
(586, 46, NULL, 28, 'B12-AB-05-21', 'PENGANTAR KEWIRAUSAHAAN', 'Bahri,S.E.,M.M.', 'Pustaka Baru Press', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:36:38', '2023-06-03 02:36:38'),
(587, 46, NULL, 28, 'B12-AB-06-15', 'PERDAGANGAN INTERNASIONAL | KUPAS TUNTAS PROSEDUR EKSPOR IMPOR', 'Andri Feriyanto,S.E.', 'Mediatera', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:36:46', '2023-06-03 02:36:46'),
(588, 46, NULL, 28, 'B12-AB-07-15', 'PERDAGANGAN INTERNASIONAL | KUPAS TUNTAS PROSEDUR EKSPOR IMPOR', 'Andri Feriyanto,S.E.', 'Mediatera', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:36:53', '2023-06-03 02:36:53'),
(589, 46, NULL, 28, 'B12-AB-08-19', 'ETIKA BISNIS | PANDUAN BISNIS BERWAWASAN LINGKUNGAN BAGI PROFESIONAL INDONESIA', 'Nikodemus Hans,Dkk', 'Andi', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:37:01', '2023-06-03 02:37:01'),
(590, 46, NULL, 28, 'B12-AB-09-16', 'ETIKA BISNIS', 'Drs.Danang Sunyoto,S.H,S.E.,M.M', 'Caps', '2016', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:37:08', '2023-06-03 02:37:08'),
(591, 46, NULL, 28, 'B12-AB-10-15', 'ETIKA ADMINISTRASI NEGARA', 'Wahyudi Kumorotomo', 'Rajawali Press', '2015', 'Jakarta', NULL, '0', '0', '2023-06-03 02:37:16', '2023-06-03 02:37:16'),
(592, 46, NULL, 28, 'B12-AB-11-20', 'ETIKA BISNIS ISLAM | SEI BERBISNIS KEBERKAHAN', 'H.Fakhry Zamzam,Havis Aravik', 'Deepublish', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:37:23', '2023-06-03 02:37:23'),
(593, 46, NULL, 29, 'B13-AB-01-97', 'PENGANTAR BISNIS', 'Firman P.A.Siregar,T.Sihol Nababan', 'Uhn', '1997', 'Medan', NULL, '0', '0', '2023-06-03 02:37:31', '2023-06-03 02:37:31'),
(594, 46, NULL, 29, 'B13-AB-02-12', 'PENGANTAR BISNIS', 'Prof.Dr.H.Buchari Alma', 'Alfabeta', '2012', 'Bandung', NULL, '0', '0', '2023-06-03 02:37:38', '2023-06-03 02:37:38'),
(595, 46, NULL, 29, 'B13-AB-03-15', 'PENGANTAR BISNIS', 'Jasman Saripuddin Hasibuan,Dkk', 'Perdana Publishing', '2015', 'Medan', NULL, '0', '0', '2023-06-03 02:37:46', '2023-06-03 02:37:46'),
(596, 46, NULL, 29, 'B13-AB-04-05', 'PENGANTAR BISNIS', 'M.Fuad,Christine H,Nurlela,Sugiarto,Paulus', 'Pt.Gramedia Pustaka Utama', '2005', 'Jakarta', NULL, '0', '0', '2023-06-03 02:37:53', '2023-06-03 02:37:53'),
(597, 46, NULL, 29, 'B13-AB-05-05', 'PENGANTAR BISNIS', 'M.Fuad,Christine H,Nurlela,Sugiarto,Paulus', 'Pt.Gramedia Pustaka Utama', '2005', 'Jakarta', NULL, '0', '0', '2023-06-03 02:38:01', '2023-06-03 02:38:01'),
(598, 46, NULL, 29, 'B13-AB-06-05', 'PENGANTAR BISNIS', 'M.Fuad,Christine H,Nurlela,Sugiarto,Paulus', 'Pt.Gramedia Pustaka Utama', '2005', 'Jakarta', NULL, '0', '0', '2023-06-03 02:38:09', '2023-06-03 02:38:09'),
(599, 46, NULL, 29, 'B13-AB-07-11', 'MANFAAT PERJANJIAN KERJA SAMA DALAM HUBUNGAN INDUSTRIAL BAGI PENGUSAHA DAN PEKERJA/BURUH', 'Dr.Jaminuddin Marbun,S.H,M.Hum', 'Usu Press', '2011', 'Medan', NULL, '0', '0', '2023-06-03 02:38:16', '2023-06-03 02:38:16'),
(600, 46, NULL, 29, 'B13-AB-08-07', 'THE WALL STREET DIET | MENUJU PERUSAHAAN LANGSING DAN SEHAT', 'Charles C.Poirier,Michael J.Bauer,Wiliam F.H', 'Hikmah', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 02:38:24', '2023-06-03 02:38:24'),
(601, 46, NULL, 29, 'B13-AB-09-05', 'PENGANTAR BISNIS', 'Amirullah & Iman Hardjanto', 'Graha Ilmu', '2005', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:38:32', '2023-06-03 02:38:32'),
(602, 46, NULL, 29, 'B13-AB-10-05', 'KONSEP DASAR SISTEM PAKAR', 'Muhammad Arhami', 'Andi', '2005', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:38:39', '2023-06-03 02:38:39'),
(603, 46, NULL, 29, 'B13-AB-11-10', 'PENGANTAR EKONOMI PERTANIAN', 'Rita Hannafie', 'Andi', '2010', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:38:47', '2023-06-03 02:38:47'),
(604, 46, NULL, 29, 'B13-AB-12-91', 'KELAPA | KAJIAN SOSIAL EKONOMI', 'San Afri Awang', 'Aditya Media', '1991', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:38:55', '2023-06-03 02:38:55'),
(605, 46, NULL, 29, 'B13-AB-13-18', 'PENGANTAR BISNIS', 'Dr.Francis Tantri', 'Pt.Rajagrafindo Persada', '2009', 'Depok', NULL, '0', '0', '2023-06-03 02:39:03', '2023-06-03 02:39:03'),
(606, 46, NULL, 30, 'B14-AB-01-22', 'PENGANTAR PUBLIC RELATIONS DI ERA 4.0', 'Raditia Yudistira Sijanto,M.A', 'Pustaka Baru Press', '2022', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:39:10', '2023-06-03 02:39:10'),
(607, 46, NULL, 30, 'B14-AB-02-22', 'PENGANTAR PUBLIC RELATIONS DI ERA 4.0', 'Raditia Yudistira Sijanto,M.A', 'Pustaka Baru Press', '2022', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:39:18', '2023-06-03 02:39:18'),
(608, 46, NULL, 30, 'B14-AB-03-13', 'PENGANTAR PUBLIC RELATIONS TEORI DAN PRAKTIK', 'Keith Butterick', 'Pt.Rajagrafindo Persada', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 02:39:26', '2023-06-03 02:39:26'),
(609, 46, NULL, 30, 'B14-AB-04-21', '14 JAM BELAJAR PUBLIC RELATION', 'Sri Lestari', 'Quadrant', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:39:35', '2023-06-06 01:47:36'),
(610, 46, NULL, 30, 'B14-AB-05-21', '14 JAM BELAJAR PUBLIC RELATION', 'Sri Lestari', 'Quadrant', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:39:43', '2023-06-06 01:46:12'),
(611, 46, NULL, 30, 'B14-AB-06-21', '14 JAM BELAJAR PUBLIC RELATION', 'Sri Lestari', 'Quadrant', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:39:51', '2023-06-03 02:39:51'),
(612, 46, NULL, 30, 'B14-AB-07-21', '14 JAM BELAJAR PUBLIC RELATION', 'Sri Lestari', 'Quadrant', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:39:59', '2023-06-03 02:39:59'),
(613, 46, NULL, 30, 'B14-AB-08-21', 'CARA SUKSES PUBLIC SPEAKING', 'Arisatya Yogaswara,Niken Raditya Yogaswara', 'Checklist', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:40:07', '2023-06-03 02:40:07'),
(614, 46, NULL, 30, 'B14-AB-09-21', 'CARA SUKSES PUBLIC SPEAKING', 'Arisatya Yogaswara,Niken Raditya Yogaswara', 'Checklist', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:40:15', '2023-06-03 02:40:15'),
(615, 46, NULL, 31, 'B15-AB-01-05', 'MANAJERIAL ECONOMICS | EKONOMI MANAJERIAL DALAM PEREKONOMIAN GLOBAL', 'Dominick Salvatore', 'Salemba Empat', '2005', 'Jakarta', NULL, '0', '0', '2023-06-03 02:40:23', '2023-06-03 02:40:23'),
(616, 46, NULL, 31, 'B15-AB-02-06', 'TEORI EKONOMI MIKRO SUATU PENGANTAR EDISI KETIGA', 'Prathama Rahardja,Mandala Manurung', 'Feui Press', '2006', 'Jakarta', NULL, '0', '0', '2023-06-03 02:40:31', '2023-06-03 02:40:31'),
(617, 46, NULL, 31, 'B15-AB-03-06', 'TEORI EKONOMI MIKRO SUATU PENGANTAR EDISI KETIGA', 'Prathama Rahardja,Mandala Manurung', 'Feui Press', '2006', 'Jakarta', NULL, '0', '0', '2023-06-03 02:40:39', '2023-06-03 02:40:39'),
(618, 46, NULL, 31, 'B15-AB-04-06', 'TEORI EKONOMI MIKRO SUATU PENGANTAR EDISI KETIGA', 'Prathama Rahardja,Mandala Manurung', 'Feui Press', '2006', 'Jakarta', NULL, '0', '0', '2023-06-03 02:40:47', '2023-06-03 02:40:47'),
(619, 46, NULL, 31, 'B15-AB-05-12', 'TEORI EKONOMI MIKRO', 'Tati Suhartati Joesron,M.Fathorrazi', 'Graha Ilmu', '2012', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:40:55', '2023-06-03 02:40:55'),
(620, 46, NULL, 31, 'B15-AB-06-12', 'TEORI EKONOMI MIKRO', 'Tati Suhartati Joesron,M.Fathorrazi', 'Graha Ilmu', '2012', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:41:04', '2023-06-03 02:41:04'),
(621, 46, NULL, 31, 'B15-AB-06-12', 'MAKROEKONOMI TEORI PENGANTAR', 'Sadono Sukirno', 'Pt.Rajagrafindo Persada', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 02:41:12', '2023-06-03 02:41:12'),
(622, 46, NULL, 31, 'B15-AB-07-10', 'MIKROEKONOMI |TEORI PENGANTAR EDISI 3', 'Sadono Sukirno', 'Pt.Rajagrafindo Persada', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 02:41:21', '2023-06-03 02:41:21'),
(623, 46, NULL, 31, 'B15-AB-08-97', 'MAKROEKONOMI EDISI KEEMPAT', 'Rudiger Dornbusch,Stanley,J.Mulyadi', 'Erlangga', '1997', 'Jakarta', NULL, '0', '0', '2023-06-03 02:41:29', '2023-06-03 02:41:29'),
(624, 46, NULL, 31, 'B15-AB-09-12', 'ILMU EKONOMI REGIONAL', 'Dr.H.Muhammad Yusuf,M.Si', 'Perdana Publishing', '2012', 'Medan', NULL, '0', '0', '2023-06-03 02:41:37', '2023-06-03 02:41:37'),
(625, 46, NULL, 31, 'B15-AB-10-12', 'EKONOMI SYARIAH', 'Prof.Dr.H.Juhaya S.Pradja,M.A', 'Cv.Pustaka Setia', '2012', 'Bandung', NULL, '0', '0', '2023-06-03 02:41:46', '2023-06-03 02:41:46'),
(626, 46, NULL, 31, 'B15-AB-11-87', 'EKONOMI MONETER EDISI 1', 'Nopirin,Ph.D.', 'Bpfe', '1987', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:41:54', '2023-06-03 02:41:54'),
(627, 46, NULL, 31, 'B15-AB-12-13', 'PENGANTAR ILMU EKONOMI MAKRO (TEORI DAN SOAL)', 'Erni Umi Hasanah,Drs.Danang Sunyoto', 'Caps', '2013', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:42:02', '2023-06-03 02:42:02'),
(628, 46, NULL, 31, 'B15-AB-13-06', 'EKONOMI MAKRO', 'Asfia Murni,S.E.,M.Pd', 'Refika Aditama', '2006', 'Bandung', NULL, '0', '0', '2023-06-03 02:42:11', '2023-06-03 02:42:11'),
(629, 46, NULL, 31, 'B15-AB-14-20', 'PENGANTAR ILMU EKONOMI MIKRO', 'Dr.Busra,Yuli Anisah,Zulkarnaini', 'Andi', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:42:19', '2023-06-03 02:42:19'),
(630, 46, NULL, 31, 'B15-AB-15-20', 'PENGANTAR ILMU EKONOMI MIKRO', 'Dr.Busra,Yuli Anisah,Zulkarnaini', 'Andi', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:42:28', '2023-06-03 02:42:28'),
(631, 46, NULL, 31, 'B15-AB-16-86', 'DASAR-DASAR ILMU EKONOMI DAN KOPERASI', 'Prof.Dr.Syamsuddin Mahmud', 'Pt.Intermasa', '1986', 'Aceh', NULL, '0', '0', '2023-06-03 02:42:37', '2023-06-03 02:42:37'),
(632, 46, NULL, 31, 'B15-AB-17-18', 'PENGANTAR MIKROEKONOMI', 'Indra Mahadirka', 'Quadrant', '2018', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:42:45', '2023-06-03 02:42:45'),
(633, 46, NULL, 31, 'B15-AB-18-18', 'PENGANTAR MIKROEKONOMI', 'Indra Mahadirka', 'Quadrant', '2018', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:42:54', '2023-06-03 02:42:54'),
(634, 46, NULL, 31, 'B15-AB-19-13', 'PENGANTAR ILMU EKONOMI MIKRO (TEORI DAN SOAL)', 'Drs.Henry Sarnowo,Drs.Danang Sunyoto', 'Caps', '2013', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:43:02', '2023-06-03 02:43:02'),
(635, 46, NULL, 31, 'B15-AB-20-14', 'METODE RISET UNTUK EKONOMI & BISNIS', 'Albert Kurniawan', 'Alfabeta', '2014', 'Bandung', NULL, '0', '0', '2023-06-03 02:43:11', '2023-06-03 02:43:11'),
(636, 46, NULL, 31, 'B15-AB-21-99', 'EKONOMI MIKRO EDISI I', 'Dr.Sri Adiningsih,M.Sc.', 'Bpfe', '1999', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:43:19', '2023-06-03 02:43:19'),
(637, 46, NULL, 31, 'B15-AB-22-04', 'TEORI EKONOMI MIKRO | ANALISIS MATEMATIS', 'Jogiyanto Hartono,Mba,Ph.D.', 'Andi', '2004', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:43:28', '2023-06-03 02:43:28'),
(638, 46, NULL, 31, 'B15-AB-23-19', 'PENGANTAR EKONOMI MIKRO', 'Agus Tri Basuki,Imamudin Yuliadi', 'Gosyen Publishing', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:43:36', '2023-06-03 02:43:36'),
(639, 46, NULL, 31, 'B15-AB-24-13', 'PENGANTAR ILMU EKONOMI MAKRO (TEORI DAN SOAL)', 'Erni Umi Hasanah,Drs.Danang Sunyoto', 'Caps', '2013', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:43:45', '2023-06-03 02:43:45'),
(640, 46, NULL, 31, 'B15-AB-25-75', 'DASAR-DASAR ANALISA EKONOMI MAKRO', 'Alfred W.Stonier,Douglas C.Hague', 'Tarsito', '1975', 'Bandung', NULL, '0', '0', '2023-06-03 02:43:53', '2023-06-03 02:43:53'),
(641, 46, NULL, 31, 'B15-AB-26-90', 'PENGANTAR EKONOMI MIKRO (TEORI HARGA)', 'Prof.Dr.Winardi,S.E.', 'Mandar Maju', '1990', 'Bandung', NULL, '0', '0', '2023-06-03 02:44:02', '2023-06-03 02:44:02'),
(642, 46, NULL, 31, 'B15-AB-27-04', 'EKONOMI | STRATEGI TEMBUS PERGURUAN TINGGI FAVORIT', 'Drs.Bambang Puji Raharjo', 'Andi', '2004', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:44:10', '2023-06-03 02:44:10'),
(643, 46, NULL, 31, 'B15-AB-28-01', 'EKONOMI POLITIK DAN KEBIJAKAN PUBLIK', 'Bustanul Arifin,Didik J.Rachbini', 'Grasindo', '2001', 'Jakarta', NULL, '0', '0', '2023-06-03 02:44:19', '2023-06-03 02:44:19'),
(644, 46, NULL, 31, 'B15-AB-29-89', 'EKONOMI MIKRO :PERILAKU HARGA PASAR DAN KONSUMEN | EDISI 3', 'Dr.Soediyono,R,M.B.A', 'Liberty', '1989', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:44:27', '2023-06-03 02:44:27'),
(645, 46, NULL, 31, 'B15-AB-31-92', 'PENGANTAR EKONOMI PERUSAHAAN', 'Drs.Wasis', 'Alumni', '1992', 'Bandung', NULL, '0', '0', '2023-06-03 02:44:45', '2023-06-03 02:44:45'),
(646, 46, NULL, 31, 'B15-AB-32-83', 'PENGANTAR TEORI EKONOMI MONETER', 'Drs.M.Manullang', 'Ghalia Indonesia', '1983', 'Jakarta', NULL, '0', '0', '2023-06-03 02:44:54', '2023-06-03 02:44:54'),
(647, 46, NULL, 32, 'B16-AB-01-07', 'INTRODUCTION TO BUSINESS | PENGANTAR BISNIS EDISI 4', 'Jeff Madura', 'Salemba Empat', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 02:45:02', '2023-06-03 02:45:02'),
(648, 46, NULL, 32, 'B16-AB-02-07', 'INTRODUCTION TO BUSINESS | PENGANTAR BISNIS EDISI 4', 'Jeff Madura', 'Salemba Empat', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 02:45:11', '2023-06-03 02:45:11'),
(649, 46, NULL, 32, 'B16-AB-03-07', 'INTRODUCTION TO BUSINESS | PENGANTAR BISNIS EDISI 4', 'Jeff Madura', 'Salemba Empat', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 02:45:20', '2023-06-03 02:45:20'),
(650, 46, NULL, 32, 'B16-AB-04-07', 'INTRODUCTION TO BUSINESS | PENGANTAR BISNIS EDISI 4', 'Jeff Madura', 'Salemba Empat', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 02:45:29', '2023-06-03 02:45:29'),
(651, 46, NULL, 32, 'B16-AB-05-07', 'INTRODUCTION TO BUSINESS | PENGANTAR BISNIS EDISI 4', 'Jeff Madura', 'Salemba Empat', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 02:45:38', '2023-06-03 02:45:38'),
(652, 46, NULL, 32, 'B16-AB-06-21', 'INTRODUCTION TO INFORMATION SYSTEMS | PERSPEKTIF BISNIS DAN MANAJERIAL', 'Mcgrawl-Hill,Irwin', 'Salemba Empat', '2021', 'Jakarta', NULL, '0', '0', '2023-06-03 02:45:46', '2023-06-03 02:45:46'),
(653, 46, NULL, 32, 'B16-AB-07-89', 'ANALISIS & DESAIN', 'Prof.Dr.Jogiyanto Hm,Mba,Akt.', 'Andi', '1989', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:45:55', '2023-06-03 02:45:55'),
(654, 46, NULL, 32, 'B16-AB-08-06', 'KAMUS LENGKAP EKONOMI', 'Windy Novia,Spd.', 'Wacana Intelektual', '2006', 'Jakarta', NULL, '0', '0', '2023-06-03 02:46:04', '2023-06-03 02:46:04'),
(655, 46, NULL, 32, 'B16-AB-09-99', 'EKONOMI PUBLIK EDISI 3', 'Dr.Guritno Mangkoesoebroto,M.Ec', 'Bpfe', '1999', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:46:13', '2023-06-03 02:46:13'),
(656, 47, NULL, 33, 'C1-NO-01-15', 'TIONGKOK WISE STORIES', 'Rita Lauw Fu', 'Pt.Bhuana Ilmu Populer', '2015', 'Jakarta', NULL, '0', '0', '2023-06-03 02:46:22', '2023-06-03 02:46:22'),
(657, 47, NULL, 33, 'C1-NO-02-10', 'A FAREWELL TO ARMS', 'Ernest Hemingway', 'Narasi', '2010', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:46:31', '2023-06-03 02:46:31'),
(658, 47, NULL, 33, 'C1-NO-03-10', 'MEN ARE FROM ARMS,WOMEN ARE FROM VENUS', 'John Gray,Ph.D', 'Pt.Gramedia Pustaka Utama', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 02:46:40', '2023-06-03 02:46:40'),
(659, 47, NULL, 33, 'C1-NO-04-09', 'ANNE OF GREEN GABLES', 'Lucy M.Montgomery', 'Qanita', '2009', 'Bandung', NULL, '0', '0', '2023-06-03 02:46:49', '2023-06-03 02:46:49'),
(660, 47, NULL, 33, 'C1-NO-05-04', 'JANGAN BERI AKU NARKOBA…', 'Alberthiene Endah', 'Pt.Gramedia Pustaka Utama', '2004', 'Jakarta', NULL, '0', '0', '2023-06-03 02:46:58', '2023-06-03 02:46:58'),
(661, 47, NULL, 33, 'C1-NO-06-13', '88 CERITA RAKYAT TERINDAH DARI NEGERI CHINA', 'Yusin Hendri W.', 'Pt.Gramedia Pustaka Utama', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 02:47:07', '2023-06-03 02:47:07'),
(662, 47, NULL, 33, 'C1-NO-07-10', 'HUMMINGBIRD | DILEMA CINTA', 'Lavyrle Spencer', 'Gagasmedia', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 02:47:17', '2023-06-03 02:47:17'),
(663, 47, NULL, 33, 'C1-NO-08-07', 'TO KILL A MOCKINGBIRD', 'Harper Lee', 'Qanita', '2007', 'Bandung', NULL, '0', '0', '2023-06-03 02:47:26', '2023-06-03 02:47:26'),
(664, 47, NULL, 33, 'C1-NO-09-10', 'CHICKEN SOUP FOR THE ROMANTIC SOUL0', 'Jack Canfield,And Friends', 'Pt.Gramedia Pustaka Utama', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 02:47:35', '2023-06-03 02:47:35'),
(665, 47, NULL, 33, 'C1-NO-10-07', 'TRUE STORY | HIDUPLAH ANAKKU,IBU MENDAMPINGIMU', 'Michiyo Inoue', 'Elexmedia Komputindo', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 02:47:44', '2023-06-03 02:47:44'),
(666, 47, NULL, 33, 'C1-NO-11-11', 'PRIDE AND PREJUDICE', 'Jane Austen', 'Bukune', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 02:47:54', '2023-06-03 02:47:54'),
(667, 47, NULL, 33, 'C1-NO-12-10', 'KISAH-KISAH TENGAH MALAM', 'Edgar Allan Poe', 'Pt.Gramedia Pustaka Utama', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 02:48:03', '2023-06-03 02:48:03'),
(668, 47, NULL, 33, 'C1-NO-13-09', 'SONS OF DESTINY | ANAK-ANAK TAKDIR', 'Darren Shan', 'Pt.Gramedia Pustaka Utama', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 02:48:12', '2023-06-03 02:48:12'),
(669, 47, NULL, 33, 'C1-NO-14-08', 'LORD OF THE SHADOWS | PENGUASA KEGELAPAN', 'Darren Shan', 'Pt.Gramedia Pustaka Utama', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 02:48:22', '2023-06-03 02:48:22'),
(670, 47, NULL, 33, 'C1-NO-15-10', 'CLASSIC LOVE STORY | GREAT GASBY', 'F.Scott Fitzgerald', 'Pt.Serambi Ilmu Semesta', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 02:48:31', '2023-06-03 02:48:31'),
(671, 47, NULL, 33, 'C1-NO-16-09', 'BREAKFAST AT TIFFANY\'S', 'Truman Capote', 'Pt.Serambi Ilmu Semesta', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 02:48:41', '2023-06-03 02:48:41'),
(672, 47, NULL, 33, 'C1-NO-17-16', 'KINDFULNESS', 'Ajahn Brahm', 'Bentang', '2016', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:48:50', '2023-06-03 02:48:50'),
(673, 47, NULL, 33, 'C1-NO-18-13', 'MANUSIA SETENGAH SALMON', 'Raditya Dika', 'Gagasmedia', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 02:49:00', '2023-06-03 02:49:00'),
(674, 47, NULL, 33, 'C1-NO-19-18', 'AMOR FATI : CINTAI TAKDIRMU', 'Rando Kim', 'Bhuana Ilmu Populer', '2018', 'Jakarta', NULL, '0', '0', '2023-06-03 02:49:09', '2023-06-03 02:49:09'),
(675, 47, NULL, 33, 'C1-NO-20-10', 'THE OLD MAN AND THE SEA', 'Ernest Hemingway', 'Liris', '2010', 'Surabaya', NULL, '0', '0', '2023-06-03 02:49:19', '2023-06-03 02:49:19'),
(676, 47, NULL, 33, 'C1-NO-21-07', 'CAN YOU KEEP A SECRET? | JANGAN BILANG-BILANG,YA…', 'Sophie Kinsella', 'Pt.Gramedia Pustaka Utama', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 02:49:28', '2023-06-03 02:49:28'),
(677, 47, NULL, 33, 'C1-NO-22-06', 'ASKING FOR TROUBLE', 'Elizabeth Young', 'Pt.Gramedia Pustaka Utama', '2006', 'Jakarta', NULL, '0', '0', '2023-06-03 02:49:38', '2023-06-03 02:49:38'),
(678, 47, NULL, 33, 'C1-NO-23-08', 'THE CHRONICLES OF NARNIA | THE VOYAGE OF THE DAWN TREADER', 'C.S.Lewis', 'Pt.Gramedia Pustaka Utama', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 02:49:47', '2023-06-03 02:49:47'),
(679, 47, NULL, 33, 'C1-NO-24-05', 'THE CHRONICLES OF NARNIA | PRINCE CASPIAN', 'C.S.Lewis', 'Pt.Gramedia Pustaka Utama', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 02:49:57', '2023-06-03 02:49:57'),
(680, 47, NULL, 33, 'C1-NO-25-06', 'IF ONLY IT WERE TTRUE | ANDAI DIA NYATA', 'Marc Levy', 'Pt.Gramedia Pustaka Utama', '2006', 'Jakarta', NULL, '0', '0', '2023-06-03 02:50:07', '2023-06-03 02:50:07'),
(681, 47, NULL, 33, 'C1-NO-26-16', 'A MAN CALLED #AHOK | SEPENGGAL KISAH PERJUANGAN & KETULUSAN', 'Kurawa', 'Kurawa Book', '2016', 'Jakarta', NULL, '0', '0', '2023-06-03 02:50:16', '2023-06-03 02:50:16'),
(682, 48, NULL, 34, 'C2-TP-01-12', '8 JALUR MENDAPATKAN MEREK TERDAFTAR ®', 'Benny Muliawan', 'Pt.Neo Mediatama', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 02:50:26', '2023-06-03 02:50:26'),
(683, 48, NULL, 34, 'C2-TP-02-16', 'MIRACLES ON DEMAND', 'Widya Saraswati & Kristin Liu', 'Pt.Gramedia Pustaka Utama', '2016', 'Jakarta', NULL, '0', '0', '2023-06-03 02:50:36', '2023-06-03 02:50:36'),
(684, 48, NULL, 34, 'C2-TP-03-16', 'WIRAUSAHA MUDA MANDIRI', 'Rhenald Kasali', 'Pt.Gramedia Pustaka Utama', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 02:50:45', '2023-06-03 02:50:45'),
(685, 48, NULL, 34, 'C2-TP-04-07', 'RICH DAD,POOR DAD', 'Robert T.Kiyosaki', 'Pt.Gramedia Pustaka Utama', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 02:50:55', '2023-06-03 02:50:55'),
(686, 48, NULL, 34, 'C2-TP-05-10', '80 RAHASIA MELEJITKAN OMZET DARI 50 PAKAR PENJUALAN DUNIA', 'Michael Dalton Johnson', 'Pt.Gramedia Pustaka Utama', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 02:51:05', '2023-06-03 02:51:05'),
(687, 48, NULL, 34, 'C2-TP-06-16', 'MANUSIA IDE', 'Mochtar Riady', 'Pt.Kompas Media Nusantara', '2016', 'Jakarta', NULL, '0', '0', '2023-06-03 02:51:14', '2023-06-03 02:51:14'),
(688, 48, NULL, 34, 'C2-TP-07-12', 'CATATATN PINGGIR 3', 'Goenawan Mohamad', 'Tempo', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 02:51:24', '2023-06-03 02:51:24'),
(689, 48, NULL, 34, 'C2-TP-08-13', 'SAKSI KUNCI | KISAH NYATA PERBURUAN VINCENT,PEMBOCOR RAHASIA PAJAK ASIAN AGRI GROUP', 'Metta Dharmasaputra', 'Tempo', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 02:51:34', '2023-06-03 02:51:34'),
(690, 48, NULL, 34, 'C2-TP-09-08', 'THE COLLECTED TEACHINGS OF AJAHN CHAH | FOOD FOR THE HEART', 'Achan Chah', 'Bodhi Buddhist Centre', '2008', 'Medan', NULL, '0', '0', '2023-06-03 02:51:44', '2023-06-03 02:51:44'),
(691, 48, NULL, 34, 'C2-TP-10-11', 'HOKI INTELLIGENCE', 'Leman Yap', 'Pt.Gramedia Pustaka Utama', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 02:51:53', '2023-06-03 02:51:53'),
(692, 48, NULL, 34, 'C2-TP-11-10', '22 WISDOM & SUCCESS', 'Andrie Wongso', 'Aw  Publishing', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 02:52:03', '2023-06-03 02:52:03'),
(693, 48, NULL, 34, 'C2-TP-12-07', 'THE MILLIONAIRE MAKER', 'Loral Langemeier', 'Andi', '2006', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:52:13', '2023-06-03 02:52:13'),
(694, 48, NULL, 34, 'C2-TP-13-02', 'YOU ARE A LEADER! | KEKUATAN MEMILIH', 'Arvan Pradiansyah', 'Elexmedia Komputindo', '2002', 'Jakarta', NULL, '0', '0', '2023-06-03 02:52:23', '2023-06-03 02:52:23'),
(695, 48, NULL, 34, 'C2-TP-15-14', 'BEASISWA 5 BENUA', 'A.Fuadi', 'Pt.Gramedia Pustaka Utama', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 02:52:43', '2023-06-03 02:52:43'),
(696, 48, NULL, 34, 'C2-TP-16-12', '10 RAHASIA BISNIS FRANCHISE', 'Suryono Ekotama', 'Pt.Gramedia Pustaka Utama', '2012', 'Jakarta', NULL, '1', '0', '2023-06-03 02:52:53', '2023-06-06 01:46:34'),
(697, 48, NULL, 34, 'C2-TP-17-14', 'SAATNYA ANDA MENJADI GURU TERHEBAT', 'Agustina Soebachman', 'In Azna Books', '2014', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:53:03', '2023-06-03 02:53:03'),
(698, 48, NULL, 34, 'C2-TP-18-17', 'SERI SEHAT ALAMI | TUHAN INGIN KITA SEHAT', 'Arlaine Djim', 'Yayasan Cahaya Maranatha Cemerlang', '2017', 'Jakarta', NULL, '0', '0', '2023-06-03 02:53:12', '2023-06-03 02:53:12'),
(699, 48, NULL, 34, 'C2-TP-19-16', 'LEADER IN ACTION | AKSI PRAKTIS MENJADI PEMIMPIN SUKSES', 'Suhartono & Cyltamia Irawan', 'Literati', '2016', 'Ciputat', NULL, '0', '0', '2023-06-03 02:53:22', '2023-06-03 02:53:22'),
(700, 48, NULL, 34, 'C2-TP-20-20', 'LEAD OR LEAVE IT TO MILLENIALS', 'Jazak Yus Afriansyah', 'Grasindo', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:53:32', '2023-06-03 02:53:32'),
(701, 48, NULL, 34, 'C2-TP-21-20', 'LEAD OR LEAVE IT TO MILLENIALS', 'Jazak Yus Afriansyah', 'Grasindo', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:53:42', '2023-06-03 02:53:42'),
(702, 48, NULL, 34, 'C2-TP-22-19', 'REVOLUSI INDUSTRI 4.0', 'Astrid Savitri', 'Genesis', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:53:52', '2023-06-03 02:53:52'),
(703, 48, NULL, 34, 'C2-TP-23-12', 'SUPER ACTIVE INCOME | RAWAN BAGAIKAN NERAKA PEKAN PROMOSI', 'Tosan Liem,Drs.Asep Haerul Gani', 'Cergas Media', '2012', 'Tangerang', NULL, '0', '0', '2023-06-03 02:54:02', '2023-06-03 02:54:02'),
(704, 48, NULL, 34, 'C2-TP-24-12', 'SUPER ACTIVE INCOME | RAWAN BAGAIKAN NERAKA PEKAN PROMOSI', 'Tosan Liem,Drs.Asep Haerul Gani', 'Cergas Media', '2012', 'Tangerang', NULL, '0', '0', '2023-06-03 02:54:12', '2023-06-03 02:54:12'),
(705, 48, NULL, 34, 'C2-TP-25-16', 'IF YOU\'RE SO SMART,WHY AREN\'T YOU HAPPY?', 'Raj Raghunathan', 'Penguin', '2016', 'New York', NULL, '0', '0', '2023-06-03 02:54:22', '2023-06-03 02:54:22'),
(706, 48, NULL, 34, 'C2-TP-26-14', 'DON\'T WORRY BE GRUMPY', 'Ajahn Brahm', 'Wisdom', '2014', 'Usa', NULL, '0', '0', '2023-06-03 02:54:33', '2023-06-03 02:54:33'),
(707, 48, NULL, 34, 'C2-TP-27-05', 'WHO ORDERED THIS TRUCKLOAD OF DUNG', 'Ajahn Brahm', 'Wisdom', '2005', 'Usa', NULL, '0', '0', '2023-06-03 02:54:43', '2023-06-03 02:54:43'),
(708, 48, NULL, 34, 'C2-TP-28-14', 'SECRETS OF HAPPY PEOPLE', 'Matt Avery', 'Mcgraw Hill', '2014', 'Uk', NULL, '0', '0', '2023-06-03 02:54:53', '2023-06-03 02:54:53'),
(709, 48, NULL, 34, 'C2-TP-29-17', 'THE PANAMA PAPERS', 'Bastian Obermayer And Frederik Obermaier', 'Oneworld', '2017', 'England', NULL, '0', '0', '2023-06-03 02:55:03', '2023-06-03 02:55:03'),
(710, 48, NULL, 34, 'C2-TP-30-07', 'SOCIAL INTELLIGENCE', 'Daniel Goleman', 'Arrow Books', '2007', 'London', NULL, '0', '0', '2023-06-03 02:55:13', '2023-06-03 02:55:13'),
(711, 48, NULL, 34, 'C2-TP-31-07', 'THE GREEK MYTHS', 'Stephen P.Kershaw', 'Robinson', '2007', 'London', NULL, '0', '0', '2023-06-03 02:55:23', '2023-06-03 02:55:23'),
(712, 48, NULL, 34, 'C2-TP-32-11', 'THE DYSSEY OF HOMER', 'W.H.D.Rouse', 'Oncor', '2011', 'Depok', NULL, '0', '0', '2023-06-03 02:55:33', '2023-06-03 02:55:33'),
(713, 48, NULL, 34, 'C2-TP-33-17', 'THE SWEDISH SECRET OF LIVING WELL LAGOM', 'Lola.A.Akerström', 'Headline', '2017', 'Uk', NULL, '0', '0', '2023-06-03 02:55:44', '2023-06-03 02:55:44'),
(714, 48, NULL, 34, 'C2-TP-34-11', 'JOHN GRISHAM THE LITIGATORS', 'Street Lawyers - Street Rules', 'Hodder & Stoughton', '2011', 'Uk', NULL, '0', '0', '2023-06-03 02:55:54', '2023-06-03 02:55:54'),
(715, 48, NULL, 34, 'C2-TP-35-85', 'HOW TO STOP WORRYING AND START LIVING', 'Dale Carnegie', 'Pocket Books', '1985', 'Usa', NULL, '0', '0', '2023-06-03 02:56:04', '2023-06-03 02:56:04'),
(716, 48, NULL, 35, 'C3-TP-01-06', 'MAYO CLINIC FAMILY HEALTH BOOK', 'Scott C.Litin,M.D', 'Intisari', '2006', 'Jakarta', NULL, '0', '0', '2023-06-03 02:56:14', '2023-06-03 02:56:14'),
(717, 48, NULL, 35, 'C3-TP-02-17', 'PRIBADI PROFESIMU', 'Paul D.Tieger,Barbara Barron,Kelly Tieger', 'Kpg', '2017', 'Jakarta', NULL, '0', '0', '2023-06-03 02:56:25', '2023-06-03 02:56:25'),
(718, 48, NULL, 35, 'C3-TP-03-08', 'CHAMP!ON | 101 TIPS MOTIVASI & INSPIRASI SUKSES MENJADI JUARA SEJATI', 'Darmadi Darmawangsa', 'Elexmedia Komputindo', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 02:56:35', '2023-06-03 02:56:35'),
(719, 48, NULL, 35, 'C3-TP-04-06', 'MINDSET | MENGERTI KEKUATAN POLA PIKIR UNTUK PERUBAHAN BESAR DALAM HIDUP ANDA', 'Carol S.Dweck,Ph,D', 'Baca', '2006', 'Tangerang', NULL, '0', '0', '2023-06-03 02:56:45', '2023-06-03 02:56:45'),
(720, 48, NULL, 35, 'C3-TP-05-04', 'MENCARI KEADILAN DALAM SISTEM PENGADILAN ANAK | MASIH ADAKAH HARAPAN?', 'Khairul Amri,Dkk', 'Yayasan Pusaka Indonesia', '2004', 'Medan', NULL, '0', '0', '2023-06-03 02:56:56', '2023-06-03 02:56:56'),
(721, 48, NULL, 35, 'C3-TP-07-14', 'ETIKA PROFESI GURU', 'Dr.Manpan Drajat,M.Ag.,M.Ridwan Effendi,S.Pd', 'Alfabeta', '2014', 'Bandung', NULL, '0', '0', '2023-06-03 02:57:17', '2023-06-03 02:57:17'),
(722, 48, NULL, 35, 'C3-TP-08-07', '6 RAHASIA SUKSES MENJADI JUTAWAN INTERNET', 'Ajen Dianawati', 'Mediakita', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 02:57:27', '2023-06-03 02:57:27'),
(723, 48, NULL, 35, 'C3-TP-09-15', 'BERBISNIS UNTUK MENANG ATAU TIDAK BERBISNIS SAMA SEKALI', 'Frans M.Royan,Hendy Kusmarian', 'Pt.Gramedia Pustaka Utama', '2015', 'Jakarta', NULL, '0', '0', '2023-06-03 02:57:38', '2023-06-03 02:57:38'),
(724, 48, NULL, 35, 'C3-TP-10-15', 'EMOTIONAL INTELLIGENCE | KECERDASAN EMOSIONAL', 'Daniel Goleman', 'Pt.Gramedia Pustaka Utama', '2015', 'Jakarta', NULL, '0', '0', '2023-06-03 02:57:48', '2023-06-03 02:57:48'),
(725, 48, NULL, 35, 'C3-TP-11-17', 'THE POWER OF WHEN', 'Michael Breus,Ph.D', 'Bentang', '2017', 'Bandung', NULL, '0', '0', '2023-06-03 02:57:58', '2023-06-03 02:57:58'),
(726, 48, NULL, 35, 'C3-TP-12-07', 'THE CASHFLOW QUADRANT', 'Robert T.Kiyosaki', 'Pt.Gramedia Pustaka Utama', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 02:58:09', '2023-06-03 02:58:09'),
(727, 48, NULL, 35, 'C3-TP-13-12', 'MENCIPTAKAN SDM SUMBER DAYA MANUSIA YANG HANDAL', 'Afin Murtie', 'Laskar Aksara', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 02:58:19', '2023-06-03 02:58:19'),
(728, 48, NULL, 35, 'C3-TP-14-11', 'SALES DOCTOR DOUBLE YOUR SALES IN 6 MONTHS', 'Johanes Lim,Ph.D', 'Pt.Gramedia Pustaka Utama', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 02:58:30', '2023-06-03 02:58:30'),
(729, 48, NULL, 35, 'C3-TP-15-11', 'SALES DOCTOR DOUBLE YOUR SALES IN 6 MONTHS', 'Johanes Lim,Ph.D', 'Pt.Gramedia Pustaka Utama', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 02:58:40', '2023-06-03 02:58:40'),
(730, 48, NULL, 35, 'C3-TP-16-12', 'PERPSPEKTIF', 'Isran Noor Dalam', 'Apkasi', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 02:58:51', '2023-06-03 02:58:51'),
(731, 48, NULL, 35, 'C3-TP-17-02', 'POTRET NEGARA INDONESIA', 'Dr.Muchtar Pakpahan', 'Pt.Bumi Intitama Sejahtera', '2002', 'Jakarta', NULL, '0', '0', '2023-06-03 02:59:01', '2023-06-03 02:59:01'),
(732, 48, NULL, 35, 'C3-TP-18-12', 'POLITIK OTONOMI DAERAH UNTUK PENGUATAN NKRI', 'Isran Noor Dalam', 'Seven Strategic Studies', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 02:59:12', '2023-06-03 02:59:12'),
(733, 48, NULL, 35, 'C3-TP-19-20', 'KAYA HARTA,KAYA AMAL', 'Irwan Abdallah', 'Elexmedia Komputindo', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 02:59:22', '2023-06-03 02:59:22'),
(734, 48, NULL, 35, 'C3-TP-20-13', '2 MENIT MEMBACA PIKIRAN ORANG', 'Bayu W.Ayogya', 'Buku Pintar', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 02:59:33', '2023-06-03 02:59:33'),
(735, 48, NULL, 35, 'C3-TP-21-20', 'PEDOMAN PRAKTIS MENJADI SALES SUKSES', 'Muhammad Syafii Masykur', 'Quadrant', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:59:43', '2023-06-03 02:59:43'),
(736, 48, NULL, 35, 'C3-TP-22-21', 'SENI MENGATUR KEUANGAN KELUARGA DALAM SEGALA SITUASI', 'Richard Mahaputra', 'Scritto Books', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 02:59:54', '2023-06-03 02:59:54'),
(737, 48, NULL, 35, 'C3-TP-23-21', 'THE PSYCHOLOGY OF MONEY', 'Morgan Housel', 'Baca', '2021', 'Tangerang', NULL, '0', '0', '2023-06-03 03:00:05', '2023-06-03 03:00:05'),
(738, 48, NULL, 35, 'C3-TP-24-21', 'APPLIED PSYCHOLOGY', 'Warren Hilton', 'Gemilang', '2021', 'Jakarta', NULL, '0', '0', '2023-06-03 03:00:15', '2023-06-03 03:00:15'),
(739, 48, NULL, 35, 'C3-TP-25-20', 'BISNIS MODAL 10 JUTAAN | INSPIRASI BISNIS DENGAN MODAL MINIMAN UNTUNG MAKSIMAL', 'Oppi Andini', 'Garasi', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:00:26', '2023-06-03 03:00:26');
INSERT INTO `buku` (`id_buku`, `id_kategoribuku`, `id_genrebuku`, `id_rakbuku`, `kodebuku`, `judulbuku`, `author`, `publisher`, `tahun`, `kota`, `fotocoverbuku`, `status_buku`, `status_kategori`, `created_at`, `updated_at`) VALUES
(740, 48, NULL, 35, 'C3-TP-26-09', 'FRANCHISE GUIDE SERIES | KIAT MEMILIH USAHA DENGAN BIAYA KECIL UNTUNG BESAR 7 | PRA SEKOLAH', 'Deden Setiawan,', 'Dian Rakyat', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 03:00:37', '2023-06-03 03:00:37'),
(741, 48, NULL, 35, 'C3-TP-27-12', 'ENERGI SUPRANATURAL | BANGKITKAN INDRA KE 6 ANDA DALAM 30 HARI', 'Muriel Macfarlane', 'Dahara Prize', '2012', 'Semarang', NULL, '0', '0', '2023-06-03 03:00:47', '2023-06-03 03:00:47'),
(742, 48, NULL, 35, 'C3-TP-28-15', 'TRIK PENGARUHI SESEORANG BERDASARKAN KARAKTER & KEPRIBADIANNYA', 'Rr Prima Purnama Sari,S.Psi', 'Notebook', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:00:58', '2023-06-03 03:00:58'),
(743, 48, NULL, 35, 'C3-TP-29-13', 'SENI BERBICARA KEPADA SIAPA SAJA,KAPAN SAJA,DIMANA SAJA', 'Larry King,Bill Gilbert', 'Pt.Gramedia Pustaka Utama', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 03:01:09', '2023-06-03 03:01:09'),
(744, 48, NULL, 35, 'C3-TP-30-09', 'MENYEIMBANGKAN OTAK KIRI DAN OTAK KANAN', 'Pangkalan Ide', 'Elexmedia Komputindo', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 03:01:20', '2023-06-03 03:01:20'),
(745, 48, NULL, 35, 'C3-TP-31-18', 'EMOTIONAL HEALING THERAPY', 'Irma Rahayu', 'Grasindo', '2018', 'Jakarta', NULL, '0', '0', '2023-06-03 03:01:31', '2023-06-03 03:01:31'),
(746, 48, NULL, 35, 'C3-TP-32-14', 'HYPNOTIC POWER | RAHASIA MEMBACA DAN MEMPENGARUHI ISI HATI & PIKIRAN ORANG LAIN DENGAN HIPNOTIS', 'Derry Arter', 'Mantra Books', '2014', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:01:41', '2023-06-03 03:01:41'),
(747, 48, NULL, 35, 'C3-TP-34-15', 'PINTAR MENGINTIP KEPRIBADIAN ORANG LAIN', 'Rr Prima Purnama Sari,S.Psi', 'Notebook', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:02:03', '2023-06-03 03:02:03'),
(748, 48, NULL, 35, 'C3-TP-35-96', 'BAGAIMANA MENCARI KARYAWAN DAN MEMPENGARUHI ORANG LAIN', 'Dale Carnegie', 'Binarupa Aksara', '1996', 'Jakarta', NULL, '0', '0', '2023-06-03 03:02:14', '2023-06-03 03:02:14'),
(749, 48, NULL, 35, 'C3-TP-36-16', '5 LANGKAH MENJADI PRIBADI YANG MENARIK', 'Bayu W.Ayogya', 'Psikopedia', '2016', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:02:25', '2023-06-03 03:02:25'),
(750, 48, NULL, 35, 'C3-TP-37-16', 'TIP MEMBINA HUBUNGAN DENGAN ORANG LAIN', 'Bayu W.Ayogya', 'Psikopedia', '2016', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:02:36', '2023-06-03 03:02:36'),
(751, 48, NULL, 35, 'C3-TP-38-18', 'THE SUBTLE ART OF NOT GIVING A FUCK | SEBUAH SENI UNTUK BERSIKAP BODO AMAT', 'Mark Manson', 'Harper One', '2018', 'Jakarta', NULL, '0', '0', '2023-06-03 03:02:46', '2023-06-03 03:02:46'),
(752, 48, NULL, 35, 'C3-TP-39-06', 'CHINA UNDERCOVER \"RAHASIA\" DI BALIK KEMAJUAN CINA', 'Chen Guidi Dan Wu Chuntao', 'Ufuk Press', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 03:02:57', '2023-06-03 03:02:57'),
(753, 48, NULL, 35, 'C3-TP-40-15', 'RAHASIA KAYA RAYA DARI BISNIS BATU MULIA', 'A.Albab', 'Real Books', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:03:08', '2023-06-03 03:03:08'),
(754, 49, NULL, 36, 'C4-LG-01-08', 'SOUNDWAVES TEACHER\'S GUIDE 1', 'Nicola Gram,Janet Battiste', 'Mcgraw Hill', '2008', 'New York', NULL, '0', '0', '2023-06-03 03:03:20', '2023-06-03 03:03:20'),
(755, 49, NULL, 36, 'C4-LG-02-02', 'BIMBINGAN PEMANTAPAN BAHASA INGGRIS', 'Otong Setiawan Djuharie', 'Yrama Widya', '2002', 'Bandung', NULL, '0', '0', '2023-06-03 03:03:30', '2023-06-03 03:03:30'),
(756, 49, NULL, 36, 'C4-LG-03-05', 'IELTS PRACTICE TESTS PLUS 2', 'Morgan Terry,Judith Wilson', 'Pearson Longman', '2005', 'Malaysia', NULL, '0', '0', '2023-06-03 03:03:41', '2023-06-03 03:03:41'),
(757, 49, NULL, 36, 'C4-LG-04-07', 'BARRON\'S TOEFL iBT | INTERNET-BASED TEST WITH 10 AUDIO CDs', 'Pamela J.Sharpe,Phd', 'Binarupa Aksara', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 03:03:52', '2023-06-03 03:03:52'),
(758, 49, NULL, 36, 'C4-LG-05-06', 'READING RITES | IMPROVE YOUR COMPRHENSION SKILLS', 'Mervyn Blake', 'Epb Pan Pacific', '2006', 'Singapore', NULL, '0', '0', '2023-06-03 03:04:03', '2023-06-03 03:04:03'),
(759, 49, NULL, 36, 'C4-LG-06-12', 'ENGLISH THEMATIC COMPOSITION WRITING', 'Loh Xiu Ruth', 'Eph', '2012', 'Singapore', NULL, '0', '0', '2023-06-03 03:04:14', '2023-06-03 03:04:14'),
(760, 49, NULL, 36, 'C4-LG-07-16', 'BAHASA INDONESIA BAGI MAHASISWA NON JURUSAN BAHASA INDONESIA', 'Achmad Yuhdi,Dkk', 'Padang Bulan', '2016', 'Medan', NULL, '0', '0', '2023-06-03 03:04:25', '2023-06-03 03:04:25'),
(761, 49, NULL, 36, 'C4-LG-08-96', 'CAMBRIDGE PRACTICE TESTS FOR IELTS 1 | SELF-STUDY EDITION', 'Jakeman & Mcdowell', 'Cambridge University Press', '1996', 'Uk', NULL, '0', '0', '2023-06-03 03:04:37', '2023-06-03 03:04:37'),
(762, 49, NULL, 36, 'C4-LG-09-93', 'FUNDAMENTALS OF ENGLISH GRAMMAR SECOND EDITION', 'Betty Schrampfer Azar', 'Binarupa Aksara', '1993', 'Jakarta', NULL, '0', '0', '2023-06-03 03:04:47', '2023-06-03 03:04:47'),
(763, 49, NULL, 36, 'C4-LG-10-06', 'NORTH STAR | BUILDING SKILL FOR THE TOEFL iBT', 'Linda Robinson Fellag', 'Pearson Longman', '2006', 'New York', NULL, '0', '0', '2023-06-03 03:04:58', '2023-06-03 03:04:58'),
(764, 49, NULL, 36, 'C4-LG-11-10', '1700 BANK SOAL BIMBINGAN PEMANTAPAN BAHASA INGGRIS', 'Otong Setiawan Djuharie', 'Yrama Widya', '2010', 'Bandung', NULL, '0', '0', '2023-06-03 03:05:10', '2023-06-03 03:05:10'),
(765, 49, NULL, 36, 'C4-LG-12-95', 'OXFORD | ADVANCED LEARNER\'S DICTIONARY', 'A.S Hornby', 'Oxford University Press', '1995', 'Uk', NULL, '0', '0', '2023-06-03 03:05:21', '2023-06-03 03:05:21'),
(766, 49, NULL, 36, 'C4-LG-13-15', 'BACA INI KAMU PASTI KULIAH KE LUAR NEGERI DIJAMIN 100%', 'Miftachudin Arjuna,Dkk', 'Inspira', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:05:32', '2023-06-03 03:05:32'),
(767, 49, NULL, 36, 'C4-LG-14-04', '400 KALIMAT BAHASA TIONGHOA II', 'Yayasan Pendidikan Cinta Budaya Medan Indonesia', 'Yayasan Pendidikan Cinta Budaya Medan Indonesia', '2004', 'Medan', NULL, '0', '0', '2023-06-03 03:05:43', '2023-06-03 03:05:43'),
(768, 49, NULL, 36, 'C4-LG-15-95', 'ENGLISH FOR SPECIFIC PURPOSES LAW', 'Dra.H.Sofia Rangkuti Hasibuan,M.A.', 'Pt.Gramedia Pustaka Utama', '1995', 'Jakarta', NULL, '0', '0', '2023-06-03 03:05:55', '2023-06-03 03:05:55'),
(769, 49, NULL, 36, 'C4-LG-16-93', 'COMMON ERRORS FOR SPM ENGLISH', 'Annie Lee', 'Fajar Bakti Sdn.Bhd', '1993', 'Malaysia', NULL, '0', '0', '2023-06-03 03:06:06', '2023-06-03 03:06:06'),
(770, 49, NULL, 36, 'C4-LG-19-05', '400 KALIMAT BAHASA TIONGHOA I', 'Yayasan Pendidikan Cinta Budaya Medan Indonesia', 'Yayasan Pendidikan Cinta Budaya Medan Indonesia', '2005', 'Medan', NULL, '0', '0', '2023-06-03 03:06:40', '2023-06-03 03:06:40'),
(771, 49, NULL, 36, 'C4-LG-20-14', 'BUKU PINTAR IELTS', 'Purwaningsih & Yenni', 'B First', '2014', 'Bandung', NULL, '0', '0', '2023-06-03 03:06:51', '2023-06-03 03:06:51'),
(772, 49, NULL, 36, 'C4-LG-21-72', 'AN EASY TO USE THESAURUS | ALLEN\'S SYNONIMS AND ANTHONYMS', 'F.Sturges Allen,Ll.B', 'First Barnes & Noble', '1972', 'New York', NULL, '0', '0', '2023-06-03 03:07:03', '2023-06-03 03:07:03'),
(773, 49, NULL, 36, 'C4-LG-22-02', 'BAHASA GAUL REMAJA AMERIKA | STREET TALK 2A', 'David Burke', 'Lingkaran Pustaka', '2002', 'Jakarta', NULL, '0', '0', '2023-06-03 03:07:14', '2023-06-03 03:07:14'),
(774, 50, NULL, 36, 'C4-PS-01-14', 'ALBUM LENGKAP SOAL-SOAL PSIKOTES', 'A.T.Widyatna&Tim', 'Raya', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 03:07:48', '2023-06-03 03:07:48'),
(775, 50, NULL, 36, 'C4-PS-02-17', 'DRILLING SEMUA JENIS SOAL PSIKOTES & TPA', 'Wulan Sasmita', 'Grasindo', '2017', 'Jakarta', NULL, '0', '0', '2023-06-03 03:08:00', '2023-06-03 03:08:00'),
(776, 50, NULL, 36, 'C4-PS-03-19', 'THE MASTER BOOKS OF TPA | VERSI TES TPA OTO BAPPENAS', 'Tim Gensmart', 'Gensmart', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:08:12', '2023-06-03 03:08:12'),
(777, 50, NULL, 36, 'C4-PS-04-14', 'LOLOS PSIKOTES DAN TPA', 'Rabia Edra Almira', 'Indo Literasi', '2014', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:08:23', '2023-06-03 03:08:23'),
(778, 50, NULL, 36, 'C4-PS-05-12', 'BUKU JAGOAN PSIKOTES 99% LOLOS', 'Team Redaksi Pm', 'Pustaka Makmur', '2012', 'Depok', NULL, '0', '0', '2023-06-03 03:08:34', '2023-06-03 03:08:34'),
(779, 50, NULL, 36, 'C4-PS-06-11', 'BUKU BABON PSIKOTES SUPERLENGKAP', 'Tim Psikologi', 'Visimedia', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 03:08:46', '2023-06-03 03:08:46'),
(780, 51, NULL, 37, 'C9-BD-01-14', 'BATIN YANG DAMAI', 'Shih Cheng Yen', 'Pt.Jing Si Mustika Abadi Indonesia', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 03:08:58', '2023-06-03 03:08:58'),
(781, 51, NULL, 37, 'C9-BD-02-08', 'BE HAPPY', 'Sri Dhammananda', 'Karaniya', '2008', 'Indonesia', NULL, '0', '0', '2023-06-03 03:09:09', '2023-06-03 03:09:09'),
(782, 51, NULL, 37, 'C9-BD-03-00', 'BRIEF DISCUSSION ON ANAPANASATI (MINDFULNESS OF THE BREATH)', 'Inntakaw-Pa Auk', 'Indonesia Vidya Carita', '2000', 'Medan', NULL, '0', '0', '2023-06-03 03:09:21', '2023-06-03 03:09:21'),
(783, 51, NULL, 37, 'C9-BD-04-11', 'LIVING MEDITATION,LIVING INSIGHT', 'Dr.Thynn Thynn', 'Samwara', '2011', 'Medan', NULL, '0', '0', '2023-06-03 03:09:32', '2023-06-03 03:09:32'),
(784, 51, NULL, 37, 'C9-BD-05-12', 'BERSAHABAT DENGAN KEHIDUPAN | MEMAKNAI  DENGAN KEARIFAN', 'Sri Pannyavaro', 'Suwung', '2012', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:09:44', '2023-06-03 03:09:44'),
(785, 51, NULL, 37, 'C9-BD-06-08', 'BINGKAI KEHIDUPAN | KUMPULAN CERAMAH DHARMA BHANTE PANNAVARO', 'Bodhi Buddhist Centre Indonesia', 'Samwara', '2008', 'Medan', NULL, '0', '0', '2023-06-03 03:09:56', '2023-06-03 03:09:56'),
(786, 51, NULL, 37, 'C9-BD-07-11', 'THE ART OF DISAPPERING | THE BUDDHA\'S PATH TO LASTING JOY', 'Ajahn Brahm', 'Brahm Centre.Ltd', '2011', 'Singapore', NULL, '0', '0', '2023-06-03 03:10:07', '2023-06-03 03:10:07'),
(787, 51, NULL, 37, 'C9-BD-08-17', 'HERE AND NOW | KUMPULAN PENGAJARAN CARA HIDUP MEDITATIF', 'Ajahn Brahm', 'Ehipassiko', '2017', 'Jakarta', NULL, '0', '0', '2023-06-03 03:10:19', '2023-06-03 03:10:19'),
(788, 51, NULL, 37, 'C9-BD-09-11', 'DALAI LAMA | SAMUDRA KEBIJAKSANAAN', 'Dalai Lama,Et Al.', 'Ehipassiko', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 03:10:31', '2023-06-03 03:10:31'),
(789, 51, NULL, 37, 'C9-BD-10-10', 'HIDUP SENANG MATI TENANG', 'Ajahn Brahm', 'Ehipassiko', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 03:10:43', '2023-06-03 03:10:43'),
(790, 51, NULL, 37, 'C9-BD-11-16', 'BE HAPPY', 'Sri Dhammananda', 'Ehipassiko', '2016', 'Jakarta', NULL, '0', '0', '2023-06-03 03:10:55', '2023-06-03 03:10:55'),
(791, 51, NULL, 37, 'C9-BD-12-18', 'BEAR MEDITATION | MEDITASI MENJINAKAN PIKIRAN LIAR', 'Ajahn Brahm', 'Ehipassiko', '2018', 'Jakarta', NULL, '0', '0', '2023-06-03 03:11:07', '2023-06-03 03:11:07'),
(792, 51, NULL, 37, 'C9-BD-13-79', 'RIWAYAT HIDUP BUDDHA GOTAMA', 'Maha Pandita S.Widyadharma', 'Cetiya Vatthu Daya', '1979', 'Jakarta', NULL, '0', '0', '2023-06-03 03:11:19', '2023-06-03 03:11:19'),
(793, 51, NULL, 37, 'C9-BD-14-06', 'BUDDHISM : THE WISDOM OF COMPASSION & AWAKENING', 'Master Chin Kung', 'Vuddhist Society', '2006', 'Unknown', NULL, '0', '0', '2023-06-03 03:11:31', '2023-06-03 03:11:31'),
(794, 51, NULL, 37, 'C9-BD-15-14', 'WHITE HEART | HATI PUTIH', 'Danai Chanchaochai', 'Karaniya', '2014', 'Thailand', NULL, '0', '0', '2023-06-03 03:11:43', '2023-06-03 03:11:43'),
(795, 51, NULL, 37, 'C9-BD-16-12', 'BETAPA PENTINGNYA KEHIDUPAN SAAT INI', 'Somdet Phra Nana Samuara', 'Bodhi Buddhist Centre', '2012', 'Thailand', NULL, '0', '0', '2023-06-03 03:11:55', '2023-06-03 03:11:55'),
(796, 51, NULL, 37, 'C9-BD-17-10', 'KHEMA & UPPALAWANNA SISWI UTAMA', 'Handaka Vijjananda & Fredy Siloy', 'Ehipassiko', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 03:12:07', '2023-06-03 03:12:07'),
(797, 51, NULL, 37, 'C9-BD-18-07', 'DHARMA AJARAN MULIA SANG BUDDHA', 'Bikkhu Sukhemo Mahathera,Ma', 'Magabudhi', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 03:12:19', '2023-06-03 03:12:19'),
(798, 51, NULL, 37, 'C9-BD-19-12', 'WARISAN EYANG | BIOGRAFI BHIKKU JINADHAMMO MAHATHERA', 'Tim Indonesia Vidya Carita', 'Ehipassiko', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 03:12:31', '2023-06-03 03:12:31'),
(799, 51, NULL, 37, 'C9-BD-20-14', 'DALAI LAMA | PEMIKIRAN EMAS SANG PEMERCIK KEDAMAIAN', 'Radis Bastian', 'Palapa', '2014', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:12:44', '2023-06-03 03:12:44'),
(800, 51, NULL, 37, 'C9-BD-21-86', 'BATAS AIR | BUKU I', 'Shih Nai-An', 'Grafitti Press', '1986', 'Jakarta', NULL, '0', '0', '2023-06-03 03:12:56', '2023-06-03 03:12:56'),
(801, 51, NULL, 37, 'C9-BD-22-87', 'BATAS AIR | BUKU II', 'Shih Nai-An', 'Grafitti Press', '1987', 'Jakarta', NULL, '0', '0', '2023-06-03 03:13:08', '2023-06-03 03:13:08'),
(802, 51, NULL, 37, 'C9-BD-23-87', 'BATAS AIR | BUKU III', 'Shih Nai-An', 'Grafitti Press', '1987', 'Jakarta', NULL, '0', '0', '2023-06-03 03:13:20', '2023-06-03 03:13:20'),
(803, 51, NULL, 37, 'C9-BD-24-87', 'BATAS AIR | BUKU IV', 'Shih Nai-An', 'Grafitti Press', '1987', 'Jakarta', NULL, '0', '0', '2023-06-03 03:13:33', '2023-06-03 03:13:33'),
(804, 52, NULL, 38, 'C10-AI-01-98', 'PELAJARAN TAUHID UNTUK PEMULA', 'Dr.Abdul Aziz Bin Muhammad Alu Abd.Lathif', 'Yayasan Al-Sofwa', '1998', 'Jakarta', NULL, '0', '0', '2023-06-03 03:13:45', '2023-06-03 03:13:45'),
(805, 52, NULL, 38, 'C10-AI-02-91', 'ZIKIR DAN DOA DALAM KESIBUKAN', 'K.H.Mawardi Labay El Suthani', 'Percetakan Negara Ri', '1991', 'Jakarta', NULL, '0', '0', '2023-06-03 03:13:57', '2023-06-03 03:13:57'),
(806, 52, NULL, 38, 'C10-AI-03-01', 'PEMBERDAYAAN EKONOMI KELUARGA SAKINAH', 'Departemen Agama Ri', 'Departermen Agama Ri', '2001', 'Jakarta', NULL, '0', '0', '2023-06-03 03:14:10', '2023-06-03 03:14:10'),
(807, 52, NULL, 38, 'C10-AI-04-98', 'PELAJARAN TAUHID UNTUK TINGKAT LANJUTAN', 'Dr.Abdul Aziz Bin Muhammad Alu Abd.Lathif', 'Yayasan Al-Sofwa', '1998', 'Jakarta', NULL, '0', '0', '2023-06-03 03:14:22', '2023-06-03 03:14:22'),
(808, 52, NULL, 38, 'C10-AI-05-94', 'HUKUM PERKAWINAN (NIKAH,TALAK,CERAI,DAN RUJUK', 'A.Zuhdi Muhdlor', 'Al-Bayan', '1994', 'Bandung', NULL, '0', '0', '2023-06-03 03:14:35', '2023-06-03 03:14:35'),
(809, 52, NULL, 38, 'C10-AI-06-10', 'ILMU ALAMIAH DASAR', 'Ir.Heri Purnama', 'Rineka Cipta', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 03:14:47', '2023-06-03 03:14:47'),
(810, 52, NULL, 38, 'C10-AI-07-12', 'FILSAFAT AGAMA |WISATA PEMIKIRAN DAN KEPERCAYAAN MANUSIA', 'Prof.Dr.Amsal Bakhtiar,M.A', 'Rajawali Press', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 03:14:59', '2023-06-03 03:14:59'),
(811, 52, NULL, 38, 'C10-AI-08-16', 'KISAH PENGHARAPAN | SEKILAS KETIKA PENDERITAAN TIDAK AKAN ADA LAGI', 'Ellen G.White', 'Indonesia Publishing House', '2016', 'Jakarta', NULL, '0', '0', '2023-06-03 03:15:12', '2023-06-03 03:15:12'),
(812, 53, NULL, 39, 'D1-PM-01-97', 'MANAJEMEN BUKU 1', 'John R.Schermerhorn,Jr.', 'Andi', '1997', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:15:24', '2023-06-03 03:15:24'),
(813, 53, NULL, 39, 'D1-PM-02-97', 'MANAJEMEN BUKU 1', 'John R.Schermerhorn,Jr.', 'Andi', '1997', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:15:37', '2023-06-03 03:15:37'),
(814, 53, NULL, 39, 'D1-PM-03-03', 'MANAGEMENT | MANAJEMEN EDISI 6 BUKU 1', 'Richard L.Daft', 'Salemba Empat', '2003', 'Jakarta', NULL, '0', '0', '2023-06-03 03:15:49', '2023-06-03 03:15:49'),
(815, 53, NULL, 39, 'D1-PM-04-08', 'MANAGEMENT INFORMATION SYSTEMS | SISTEM INFORMASI MANAJEMEN', 'Raymond Mcleod,Jr.,George P.Schell', 'Salemba Empat', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 03:16:02', '2023-06-03 03:16:02'),
(816, 53, NULL, 39, 'D1-PM-05-11', 'MANAJEMEN OPERASIONAL | TEORI,SOAL-JAWAB,& SOAL MANDIRI', 'Drs.Danang Sunyoto,Drs.Danang Wahyudi', 'Caps', '2011', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:16:14', '2023-06-03 03:16:14'),
(817, 53, NULL, 39, 'D1-PM-06-03', 'EXECUTIVE\'S GUIDE TO KNOWLEDGE MANAGEMENT', 'James J.Stapleton', 'Erlangga', '2003', 'Jakarta', NULL, '0', '0', '2023-06-03 03:16:27', '2023-06-03 03:16:27'),
(818, 53, NULL, 39, 'D1-PM-07-19', 'PENGANTAR MANAJEMEN | FUNGSI - PROSES - PENGENDALIAN', 'Amirullah,S.E,M.M.', 'Mitra Wacana Media', '2019', 'Jakarta', NULL, '0', '0', '2023-06-03 03:16:39', '2023-06-03 03:16:39'),
(819, 53, NULL, 39, 'D1-PM-08-22', 'PENGANTAR MANAJEMEN', 'Dr.Heru Setiawan,Ratu Hedy S,Muhammad Iqbal B', 'Refika Aditama', '2022', 'Bandung', NULL, '0', '0', '2023-06-03 03:16:52', '2023-06-03 03:16:52'),
(820, 53, NULL, 39, 'D1-PM-09-20', 'DASAR-DASAR MANAJEMEN EDISI REVISI', 'George R.Terry,Leslie W.Rue', 'Bumi Aksara', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 03:17:04', '2023-06-03 03:17:04'),
(821, 53, NULL, 39, 'D1-PM-10-09', 'MANAJEMEN | DASAR,PENGERTIAN DAN MASALAH', 'Drs.H.Malayu S.P.Hasibuan', 'Bumi Aksara', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 03:17:17', '2023-06-03 03:17:17'),
(822, 53, NULL, 39, 'D1-PM-11-18', 'PENGANTAR MANAJEMEN EDISI REVISI', 'Dr.H.Fauzi,S.E,Hj.Rita Irviani,S.E', 'Andi', '2018', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:17:30', '2023-06-03 03:17:30'),
(823, 53, NULL, 39, 'D1-PM-12-19', 'SISTEM INFORMASI MANAJEMEN', 'Prof.Dr.Sondang P.Siagian,M.P.A', 'Bumi Aksara', '2019', 'Jakarta', NULL, '0', '0', '2023-06-03 03:17:43', '2023-06-03 03:17:43'),
(824, 53, NULL, 39, 'D1-PM-13-18', 'PENGANTAR MANAJEMEN', 'R.Supomo', 'Yrama Widya', '2018', 'Bandung', NULL, '0', '0', '2023-06-03 03:17:55', '2023-06-03 03:17:55'),
(825, 53, NULL, 39, 'D1-PM-14-14', 'SISTEM INFORMASI MANAJEMEN | PERSPEKTIF ORGANISASI', 'Drs.Danang Sunyoto,S.H,S.E.,M.M', 'Caps', '2014', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:18:08', '2023-06-03 03:18:08'),
(826, 53, NULL, 39, 'D1-PM-15-09', 'MANAJEMEN | DASAR,PENGERTIAN DAN MASALAH', 'Drs.H.Malayu S.P.Hasibuan', 'Bumi Aksara', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 03:18:21', '2023-06-03 03:18:21'),
(827, 53, NULL, 39, 'D1-PM-16-03', 'EXECUTIVE\'S GUIDE TO KNOWLEDGE MANAGEMENT', 'James J.Stapleton', 'Erlangga', '2003', 'Jakarta', NULL, '0', '0', '2023-06-03 03:18:34', '2023-06-03 03:18:34'),
(828, 53, NULL, 39, 'D1-PM-17-20', 'MANAJEMEN EDISI 7 JILID 2', 'Ricky W.Griffin', 'Erlangga', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 03:18:47', '2023-06-03 03:18:47'),
(829, 53, NULL, 39, 'D1-PM-18-17', 'PENGANTAR MANAJEMEN', 'Dr.Sudaryono', 'Caps', '2017', 'Jakarta', NULL, '0', '0', '2023-06-03 03:18:59', '2023-06-03 03:18:59'),
(830, 53, NULL, 39, 'D1-PM-19-21', 'PENGANTAR MANAJEMEN', 'Catharina Vista Okta Frida', 'Gosyen Publisihing', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:19:12', '2023-06-03 03:19:12'),
(831, 53, NULL, 39, 'D1-PM-20-84', 'MANAJEMEN EDISI 2', 'T.Hani Handoko', 'Bpfe', '1984', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:19:25', '2023-06-03 03:19:25'),
(832, 53, NULL, 39, 'D1-PM-21-84', 'MANAJEMEN EDISI 2', 'T.Hani Handoko', 'Bpfe', '1984', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:19:38', '2023-06-03 03:19:38'),
(833, 53, NULL, 39, 'D1-PM-22-84', 'MANAJEMEN EDISI 2', 'T.Hani Handoko', 'Bpfe', '1984', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:19:51', '2023-06-03 03:19:51'),
(834, 53, NULL, 39, 'D1-PM-23-20', 'PRINSIP-PRINSIP MANAJEMEN', 'George R.Terry', 'Bumi Aksara', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 03:20:04', '2023-06-03 03:20:04'),
(835, 53, NULL, 39, 'D1-PM-24-83', 'ASAS-ASAS MENEJEMEN', 'Dr.Winardi S.E', 'Alumni', '1983', 'Bandung', NULL, '0', '0', '2023-06-03 03:20:17', '2023-06-03 03:20:17'),
(836, 53, NULL, 39, 'D1-PM-25-80', 'STRATEGI MANAJEMEN', 'Benjamin B.Tregoe,John W.Zimmenman', 'Erlangga', '1980', 'Jakarta', NULL, '0', '0', '2023-06-03 03:20:30', '2023-06-03 03:20:30'),
(837, 53, NULL, 39, 'D1-PM-26-06', 'DASAR-DASAR MANAJEMEN', 'M.Manullang', 'Ugm Press', '2006', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:20:43', '2023-06-03 03:20:43'),
(838, 53, NULL, 39, 'D1-PM-27-21', 'DASAR-DASAR ILMU MANAJEMEN', 'Erna Novitasari,S.E', 'Unicorn', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:20:55', '2023-06-03 03:20:55'),
(839, 53, NULL, 39, 'D1-PM-28-21', 'DASAR-DASAR ILMU MANAJEMEN', 'Erna Novitasari,S.E', 'Unicorn', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:21:08', '2023-06-03 03:21:08'),
(840, 53, NULL, 39, 'D1-PM-29-21', 'DASAR-DASAR ILMU MANAJEMEN', 'Erna Novitasari,S.E', 'Unicorn', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:21:21', '2023-06-03 03:21:21'),
(841, 53, NULL, 39, 'D1-PM-30-21', 'DASAR-DASAR ILMU MANAJEMEN', 'Erna Novitasari,S.E', 'Unicorn', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:21:34', '2023-06-03 03:21:34'),
(842, 53, NULL, 39, 'D1-PM-31-21', 'DASAR-DASAR ILMU MANAJEMEN', 'Erna Novitasari,S.E', 'Unicorn', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:21:48', '2023-06-03 03:21:48'),
(843, 54, NULL, 40, 'D2-MPJ-02-19', 'MODUL PERPAJAKAN', 'Stevfy,S.E,S.H,M.M,Bba', 'Politeknik It&B', '2019', 'Medan', NULL, '0', '0', '2023-06-03 03:22:14', '2023-06-03 03:22:14'),
(844, 54, NULL, 40, 'D2-MPJ-03-16', 'PERPAJAKAN INDONESIA', 'Mulyo Agung', 'Lentera Ilmu Cendekia', '2016', 'Jakarta', NULL, '0', '0', '2023-06-03 03:22:27', '2023-06-03 03:22:27'),
(845, 54, NULL, 40, 'D2-MPJ-04-10', 'DASAR-DASAR PERPAJAKAN & AKUNTANSI PAJAK', 'Herry Purwono', 'Erlangga', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 03:22:40', '2023-06-03 03:22:40'),
(846, 54, NULL, 40, 'D2-MPJ-05-09', 'PERPAJAKAN : TEORI DAN KASUS | BUKU 1 EDISI 5', 'Siti Resmi', 'Salemba Empat', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 03:22:53', '2023-06-03 03:22:53'),
(847, 54, NULL, 40, 'D2-MPJ-06-19', 'PERPAJAKAN KUP BERBASIS ONLINE', 'Ari Bramasto,Dr.Gun Gunawan Rachman', 'Refika Aditama', '2019', 'Bandung', NULL, '0', '0', '2023-06-03 03:23:07', '2023-06-03 03:23:07'),
(848, 54, NULL, 40, 'D2-MPJ-07-16', 'PERPAJAKAN EDISI TERBARU 2016', 'Prof.Dr.Mardiasmo,Mba,Ak', 'Andi', '2016', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:23:20', '2023-06-03 03:23:20'),
(849, 54, NULL, 40, 'D2-MPJ-08-19', 'PERPAJAKAN TEORI & KASUS EDISI 11 BUKU 1', 'Siti Resmi', 'Salemba Empat', '2019', 'Jakarta', NULL, '0', '0', '2023-06-03 03:23:33', '2023-06-03 03:23:33'),
(850, 54, NULL, 40, 'D2-MPJ-09-19', 'PERPAJAKAN EDISI 2019', 'Prof.Dr.Mardiasmo,Mba,Ak', 'Andi', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:23:46', '2023-06-03 03:23:46'),
(851, 54, NULL, 40, 'D2-MPJ-10-19', 'PERPAJAKAN EDISI 2019', 'Prof.Dr.Mardiasmo,Mba,Ak', 'Andi', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:24:00', '2023-06-03 03:24:00'),
(852, 54, NULL, 40, 'D2-MPJ-11-11', 'PERPAJAKAN EDISI REVISI', 'Prof.Dr.Mardiasmo,Mba,Ak', 'Andi', '2011', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:24:13', '2023-06-03 03:24:13'),
(853, 54, NULL, 40, 'D2-MPJ-12-11', 'PERPAJAKAN |EDISI REVISI', 'Prof.Dr.Mardiasmo,Mba,Ak', 'Andi', '2011', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:24:26', '2023-06-03 03:24:26'),
(854, 54, NULL, 40, 'D2-MPJ-13-16', 'KONSEP DAN ANALISIS RASIO PAJAK', 'Dr.Adinur Prasetyo,Ak,M.Si', 'Elexmedia Komputindo', '2016', 'Jakarta', NULL, '0', '0', '2023-06-03 03:24:40', '2023-06-03 03:24:40'),
(855, 54, NULL, 40, 'D2-MPJ-14-20', 'AKUNTANSI PAJAK EDISI REVISI', 'Djoko Muljono', 'Andi', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:24:53', '2023-06-03 03:24:53'),
(856, 54, NULL, 40, 'D2-MPJ-15-09', 'PANDUAN LENGKAP PAJAK', 'Yustinus Prastowo', 'Raih Asa Sukses', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 03:25:06', '2023-06-03 03:25:06'),
(857, 54, NULL, 40, 'D2-MPJ-16-17', 'TAX AMNESTY DI INDONESIA', 'Marihot Pahala Siahaan,S.E,M.T.', 'Rajawali Press', '2017', 'Jakarta', NULL, '0', '0', '2023-06-03 03:25:20', '2023-06-03 03:25:20'),
(858, 54, NULL, 40, 'D2-MPJ-17-15', 'HUKUM PAJAK', 'Rosistua Pandiangan,S.E,M.M.', 'Graha Ilmu', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:25:33', '2023-06-03 03:25:33'),
(859, 54, NULL, 40, 'D2-MPJ-18-15', 'HUKUM PAJAK', 'Rosistua Pandiangan,S.E,M.M.', 'Graha Ilmu', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:25:47', '2023-06-03 03:25:47'),
(860, 54, NULL, 40, 'D2-MPJ-19-15', 'HUKUM PAJAK', 'Rosistua Pandiangan,S.E,M.M.', 'Graha Ilmu', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:26:00', '2023-06-03 03:26:00'),
(861, 54, NULL, 40, 'D2-MPJ-20-15', 'HUKUM PAJAK', 'Rosistua Pandiangan,S.E,M.M.', 'Graha Ilmu', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:26:14', '2023-06-03 03:26:14'),
(862, 54, NULL, 40, 'D2-MPJ-21-15', 'HUKUM PAJAK', 'Rosistua Pandiangan,S.E,M.M.', 'Graha Ilmu', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:26:27', '2023-06-03 03:26:27'),
(863, 54, NULL, 40, 'D2-MPJ-22-13', 'PERPAJAKAN', 'Citra Umbara', 'Citra Umbara', '2013', 'Bandung', NULL, '0', '0', '2023-06-03 03:26:41', '2023-06-03 03:26:41'),
(864, 54, NULL, 40, 'D2-MPJ-23-13', 'MANAJEMEN PERPAJAKAN | STRATEGI PERENCANANAAN PAJAK DAN BISNIS', 'Drs.Chairil Anwar Pohan,M.Si.,Mba', 'Pt.Gramedia Pustaka Utama', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 03:26:54', '2023-06-03 03:26:54'),
(865, 54, NULL, 40, 'D2-MPJ-24-20', 'PAJAK PENGHASILAN | TEORI,KASUS DAN PRAKTIK', 'Jumaiyah', 'Lautan Pustaka', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:27:08', '2023-06-03 03:27:08'),
(866, 55, NULL, 41, 'D3-MPS-02-04', 'DASAR-DASAR PEMASARAN EDISI 9 JILID 2', 'Kotler & Armstrong', 'Pt.Indeks', '2004', 'Jakarta', NULL, '0', '0', '2023-06-03 03:27:35', '2023-06-03 03:27:35'),
(867, 55, NULL, 41, 'D3-MPS-04-20', 'MANAJEMEN KEWIRAUSAHAAN', 'Kurnia Dewi,Hasanah Yaspita,Airine Yulianda', 'Deepublish', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:28:02', '2023-06-03 03:28:02'),
(868, 55, NULL, 41, 'D3-MPS-05-92', 'STRATEGI DAN PROGRAM MANAJEMEN PEMASARAN', 'Joseph P.Guiltinan,Gordon W.Paul', 'Erlangga', '1992', 'Jakarta', NULL, '0', '0', '2023-06-03 03:28:16', '2023-06-03 03:28:16'),
(869, 55, NULL, 41, 'D3-MPS-06-18', 'MANAJEMEN E-COMMERCE', 'Rakhmat Makmur', 'Informatika', '2018', 'Bandung', NULL, '0', '0', '2023-06-03 03:28:30', '2023-06-03 03:28:30'),
(870, 55, NULL, 41, 'D3-MPS-07-15', 'MANAJEMEN PELAYANAN PUBLIK', 'Dr.H.Zaenal Mukarom,Muhibin Wijaya Laksana', 'Pustaka Setia', '2015', 'Bandung', NULL, '0', '0', '2023-06-03 03:28:43', '2023-06-03 03:28:43'),
(871, 55, NULL, 41, 'D3-MPS-08-21', 'MANAJEMEN PEMASARAN DENGAN PENDEKATAN DIGITAL MARKETING', 'Ibrahim Daus', 'Indomedia Pustaka', '2021', 'Sidoarjo', NULL, '0', '0', '2023-06-03 03:28:57', '2023-06-03 03:28:57'),
(872, 55, NULL, 41, 'D3-MPS-09-15', 'MANAJEMEN PEMASARAN JASA', 'Dr.Muhammad Adam,S.E.,M.B.A.', 'Alfabeta', '2015', 'Bandung', NULL, '0', '0', '2023-06-03 03:29:11', '2023-06-03 03:29:11'),
(873, 55, NULL, 41, 'D3-MPS-10-97', 'MANAJEMEN PEMASARAN', 'Drs.M.Mursid', 'Bumi Aksara', '1997', 'Jakarta', NULL, '0', '0', '2023-06-03 03:29:25', '2023-06-03 03:29:25'),
(874, 55, NULL, 41, 'D3-MPS-11-13', 'DASAR-DASAR MANAJEMEN PEMASARAN', 'Drs.Danang Sunyoto,S.H,S.E.,M.M', 'Caps', '2013', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:29:39', '2023-06-03 03:29:39'),
(875, 55, NULL, 41, 'D3-MPS-12-20', 'MANAJEMEN PEMASARAN', 'Dr.Melati,S.E.,M.Si.', 'Deepublish', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:29:53', '2023-06-03 03:29:53'),
(876, 55, NULL, 41, 'D3-MPS-13-20', 'MANAJEMEN PEMASARAN', 'Prof.Dr.Sofian Assauri,M.B.A.', 'Pt.Rajagrafindo Persada', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 03:30:07', '2023-06-03 03:30:07'),
(877, 56, NULL, 42, 'D4-ORG-01-94', 'KEPEMIMPINAN DALAM ORGANISASI | LEADERSHIP IN ORGANIZATIONS 3E', 'Gary Yukl', 'Prenhallindo', '1994', 'Jakarta', NULL, '0', '0', '2023-06-03 03:30:21', '2023-06-03 03:30:21'),
(878, 56, NULL, 42, 'D4-ORG-02-02', 'PRINSIP-PRINSIP PERILAKU ORGANISASI EDISI 5', 'Stephen P.Robbins', 'Erlangga', '2002', 'Jakarta', NULL, '0', '0', '2023-06-03 03:30:35', '2023-06-03 03:30:35'),
(879, 56, NULL, 42, 'D4-ORG-03-19', 'SOAL-JAWAB PERILAKU ORGANISASI EDISI LENGKAP,MUDAH,DAN PRAKTIS', 'Hery,S.E.,M.Si', 'Gava Media', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:30:49', '2023-06-03 03:30:49'),
(880, 56, NULL, 42, 'D4-ORG-04-15', 'STRATEGI PINTAR MEYUSUN SOP (STANDARD OPERATING PROCEDURE)', 'Endah Nur Fatimah,Dkk', 'Pustaka Baru Press', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:31:03', '2023-06-03 03:31:03'),
(881, 56, NULL, 42, 'D4-ORG-05-19', 'KEPEMIMPINAN MANAJERIAL | KAJIAN PERANAN PENTING KEPEMIMPINAN DALAM KERANGKA MANAJEMEN', 'Drs.Danang Sunyoto,Fathonah Eka Susanti', 'Caps', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:31:17', '2023-06-03 03:31:17'),
(882, 56, NULL, 42, 'D4-ORG-06-20', 'STANDARD OPERATING PROCEDURE', 'Fajar Nur\'Aini D.F.', 'Quadrant', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:31:31', '2023-06-03 03:31:31'),
(883, 56, NULL, 42, 'D4-ORG-07-20', 'PANDUAN MUDAH MENYUSUN SOP (STANDARD OPERATING PROCEDURE', 'Indra Mahadirka Putra', 'Quadrant', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:31:45', '2023-06-03 03:31:45'),
(884, 56, NULL, 42, 'D4-ORG-08-20', 'MENYUSUN SOP (STANDARD OPERATING PROCEDURE)', 'Arini T.Soemohadwijojo', 'Raih Asa Sukses', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 03:31:59', '2023-06-03 03:31:59'),
(885, 57, NULL, 43, 'D5-MB-01-16', 'MANAJEMEN OPERASI PRODUKSI | PENCAPAIAN SASARAN ORGANISASI BERKESINAMBUNGAN', 'Prof.Dr.Sofjan Assauri,Mba', 'Pt.Rajagrafindo Persada', '2016', 'Jakarta', NULL, '0', '0', '2023-06-03 03:32:14', '2023-06-03 03:32:14'),
(886, 57, NULL, 43, 'D5-MB-02-17', 'MANAJEMEN BISNIS BERBASIS TEKNOLOGI DIGITAL', 'Dr.Ir.H.R Zulki Zulkifli Noor', 'Deepublish', '2017', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:32:28', '2023-06-03 03:32:28'),
(887, 57, NULL, 43, 'D5-MB-03-10', 'EKONOMI FINANSIAL', 'Prof.Dr.Adler Haymans Manurung', 'Adler Manurung Press', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 03:32:42', '2023-06-03 03:32:42'),
(888, 57, NULL, 43, 'D5-MB-04-21', 'MANAJEMEN MODAL INSANI', 'Dr.Willy Susilo,S.Pd,M.B.A.', 'Andi', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:32:56', '2023-06-03 03:32:56'),
(889, 57, NULL, 43, 'D5-MB-05-21', 'MANAJEMEN MODAL INSANI', 'Dr.Willy Susilo,S.Pd,M.B.A.', 'Andi', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:33:10', '2023-06-03 03:33:10'),
(890, 57, NULL, 43, 'D5-MB-06-21', 'MANAJEMEN MODAL INSANI', 'Dr.Willy Susilo,S.Pd,M.B.A.', 'Andi', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:33:25', '2023-06-03 03:33:25'),
(891, 57, NULL, 43, 'D5-MB-07-21', 'MANAJEMEN MODAL INSANI', 'Dr.Willy Susilo,S.Pd,M.B.A.', 'Andi', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:33:39', '2023-06-03 03:33:39'),
(892, 57, NULL, 43, 'D5-MB-08-21', 'MANAJEMEN MODAL INSANI', 'Dr.Willy Susilo,S.Pd,M.B.A.', 'Andi', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:33:53', '2023-06-03 03:33:53'),
(893, 57, NULL, 43, 'D5-MB-09-19', 'PENGANTAR PASAR MODAL', 'Martalena,Maya Malinda,Ph.D,Cfp', 'Andi', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:34:08', '2023-06-03 03:34:08'),
(894, 57, NULL, 43, 'D5-MB-10-19', 'PENGANTAR MANAJEMEN BISNIS', 'Dr.Bambang Suryanto,Dr.Daryanto', 'Gava Media', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:34:22', '2023-06-03 03:34:22'),
(895, 57, NULL, 43, 'D5-MB-11-19', 'PENGANTAR MANAJEMEN BISNIS', 'Dr.Bambang Suryanto,Dr.Daryanto', 'Gava Media', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:34:36', '2023-06-03 03:34:36'),
(896, 57, NULL, 43, 'D5-MB-12-21', 'ATURAN PENILAIN BISNIS BUMN', 'Dr.Wawan Zulmawan', 'Jala Permata Aksara', '2021', 'Jakarta', NULL, '0', '0', '2023-06-03 03:34:51', '2023-06-03 03:34:51'),
(897, 57, NULL, 43, 'D5-MB-13-21', 'MANAJEMEN PRODUKSI', 'Daryanto', 'Yrama Widya', '2021', 'Bandung', NULL, '0', '0', '2023-06-03 03:35:05', '2023-06-03 03:35:05'),
(898, 57, NULL, 43, 'D5-MB-14-21', 'MANAJEMEN PRODUKSI', 'Daryanto', 'Yrama Widya', '2021', 'Bandung', NULL, '0', '0', '2023-06-03 03:35:20', '2023-06-03 03:35:20'),
(899, 57, NULL, 43, 'D5-MB-15-21', 'MANAJEMEN PRODUKSI', 'Daryanto', 'Yrama Widya', '2021', 'Bandung', NULL, '0', '0', '2023-06-03 03:35:35', '2023-06-03 03:35:35'),
(900, 57, NULL, 43, 'D5-MB-16-21', 'MANAJEMEN PRODUKSI', 'Daryanto', 'Yrama Widya', '2021', 'Bandung', NULL, '0', '0', '2023-06-03 03:35:51', '2023-06-03 03:35:51'),
(901, 57, NULL, 43, 'D5-MB-17-06', 'PENERAPAN GOOD CORPORATE GOVERNANCE', 'Indra Surya,S.H,Ivan Kustiavandana', 'Prenada Media', '2006', 'Jakarta', NULL, '0', '0', '2023-06-03 03:36:06', '2023-06-03 03:36:06'),
(902, 57, NULL, 43, 'D5-MB-19-04', 'MANAJEMEN TEKNOLOGI AGRIBISNIS', 'E.Gumbira-Sa\'Id,Rachmayanti,M.Zahrul Muttaqin', 'Ghalia Indonesia', '2004', 'Jakarta', NULL, '0', '0', '2023-06-03 03:36:36', '2023-06-03 03:36:36'),
(903, 57, NULL, 43, 'D5-MB-20-13', 'INVESTASI SECARA BENAR : MENGUNGKAP RAHASIA FOREX', 'Frento T.Suharto,Mm,Mba', 'Elexmedia Komputindo', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 03:36:51', '2023-06-03 03:36:51'),
(904, 57, NULL, 43, 'D5-MB-21-20', 'ANALISIS FUNDAMENTAL SAHAM', 'Desmond Wira', 'Exceed', '2020', 'Unknown', NULL, '0', '0', '2023-06-03 03:37:06', '2023-06-03 03:37:06'),
(905, 58, NULL, 44, 'D6-MR-02-15', 'MANAJEMEN RISIKO 1', 'Ikatan Bankir Indonesia', 'Pt.Gramedia Pustaka Utama', '2015', 'Jakarta', NULL, '0', '0', '2023-06-03 03:37:38', '2023-06-03 03:37:38'),
(906, 58, NULL, 44, 'D6-MR-03-17', 'MANAJEMEN RISIKO 2', 'Ikatan Bankir Indonesia', 'Pt.Gramedia Pustaka Utama', '2017', 'Jakarta', NULL, '0', '0', '2023-06-03 03:37:53', '2023-06-03 03:37:53'),
(907, 58, NULL, 44, 'D6-MR-04-12', 'MANAJEMEN RISIKO 3', 'Ikatan Bankir Indonesia', 'Pt.Gramedia Pustaka Utama', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 03:38:09', '2023-06-03 03:38:09'),
(908, 58, NULL, 44, 'D6-MR-05-20', 'MANAJEMEN STRATEGIS PRAKTIS', 'Eiichi \'Eric\'Kasahara', 'Lautan Pustaka', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:38:24', '2023-06-03 03:38:24'),
(909, 58, NULL, 44, 'D6-MR-06-20', 'MANAJEMEN STRATEGIS PRAKTIS', 'Eiichi \'Eric\'Kasahara', 'Lautan Pustaka', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:38:39', '2023-06-03 03:38:39'),
(910, 58, NULL, 44, 'D6-MR-07-20', 'MANAJEMEN STRATEGIS PRAKTIS', 'Eiichi \'Eric\'Kasahara', 'Lautan Pustaka', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:38:54', '2023-06-03 03:38:54'),
(911, 58, NULL, 44, 'D6-MR-08-19', 'MANAJEMEN STRATEGIS SEKTOR PUBLIK | KONSEP,TEORI DAN IMPLEMENTASINYA', 'Dr.H.Hardiyansyah,Dr.H.Lin Yan Syah,Dr.Dina Melita', 'Gava Media', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:39:10', '2023-06-03 03:39:10'),
(912, 58, NULL, 44, 'D6-MR-09-19', 'MANAJEMEN STRATEGIS SEKTOR PUBLIK | KONSEP,TEORI DAN IMPLEMENTASINYA', 'Dr.H.Hardiyansyah,Dr.H.Lin Yan Syah,Dr.Dina Melita', 'Gava Media', '2019', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:39:25', '2023-06-03 03:39:25'),
(913, 58, NULL, 44, 'D6-MR-10-14', 'PEMERINTAHAN DAN MANAJEMEN SEKTOR PUBLIK', 'Budi Setiyono,M.Pol.Admin.,Phd.', 'Caps', '2014', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:39:41', '2023-06-03 03:39:41'),
(914, 59, NULL, 45, 'D7-LK-01-12', 'MEMAHAMI BISNIS BANK', 'Ikatan Bankir Indonesia', 'Pt.Gramedia Pustaka Utama', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 03:39:56', '2023-06-03 03:39:56'),
(915, 59, NULL, 45, 'D7-LK-02-04', 'PENGANTAR LEMBAGA KEUANGAN BANK & NON BANK', 'Drs.O.P.Simorangkir', 'Ghalia Indonesia', '2004', 'Bogor', NULL, '0', '0', '2023-06-03 03:40:11', '2023-06-03 03:40:11'),
(916, 59, NULL, 45, 'D7-LK-03-19', 'MANAJEMEN PERBANKAN', 'Dr.Kuras Purba,S.E', 'Yrama Widya', '2019', 'Bandung', NULL, '0', '0', '2023-06-03 03:40:27', '2023-06-03 03:40:27'),
(917, 59, NULL, 45, 'D7-LK-04-13', 'OTORITAS JASA KEUANGAN : PELINDUNG INVESTOR', 'Prof.Dr.Adler Haymans Manurung', 'Adler Manurung Press', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 03:40:42', '2023-06-03 03:40:42'),
(918, 59, NULL, 45, 'D7-LK-05-19', 'PEDOMAN DAN STRATEGI AUDIT INTERN BANK', 'Ikatan Bankir Indonesia', 'Pt.Gramedia Pustaka Utama', '2019', 'Jakarta', NULL, '0', '0', '2023-06-03 03:40:58', '2023-06-03 03:40:58'),
(919, 59, NULL, 45, 'D7-LK-06-94', 'PROFIL USAHA KECIL & KEBIJAKAN KREDIT PERBANKAN DI INDONESIA', 'Heru Sutojo,Dkk', 'Feui Press', '1994', 'Jakarta', NULL, '0', '0', '2023-06-03 03:41:13', '2023-06-03 03:41:13'),
(920, 59, NULL, 45, 'D7-LK-07-13', 'AUDITING | PEMERIKSAAN AKUNTANSI 1', 'Hery,S.E.,M.Si', 'Caps', '2013', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:41:29', '2023-06-03 03:41:29'),
(921, 59, NULL, 45, 'D7-LK-08-13', 'MANAJEMEN PERBANKAN | DARI TEORI MENUJU APLIKASI', 'Drs.Ismail,Mba,Ak.', 'Prenada Media', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 03:41:44', '2023-06-03 03:41:44'),
(922, 59, NULL, 45, 'D7-LK-09-74', 'PERBANKAN | MASALAH PERMODALAN,DANA DAN POTENSI', 'R.Tjiptoadinugroho', 'Pt.Pradnya Paramita', '1974', 'Jakarta', NULL, '0', '0', '2023-06-03 03:42:00', '2023-06-03 03:42:00'),
(923, 59, NULL, 45, 'D7-LK-10-81', 'ADMINISTRASI BANK (BANK ACCOUNTING)', 'B.A Umar', 'Pt.Pradnya Paramita', '1981', 'Jakarta', NULL, '0', '0', '2023-06-03 03:42:15', '2023-06-03 03:42:15'),
(924, 59, NULL, 45, 'D7-LK-11-77', 'ETIKET PERBANKAN', 'Drs.O.P.Simorangkir', 'Perbanas', '1977', 'Jakarta', NULL, '0', '0', '2023-06-03 03:42:31', '2023-06-03 03:42:31'),
(925, 59, NULL, 45, 'D7-LK-12-08', 'SERI ASPEK HUKUM PASAR MODAL ETF | EXCHANGE TRADE FUND DI INDONESIA', 'Gunawan Widjaja,Parendra Tama', 'Rajawali Press', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 03:42:47', '2023-06-03 03:42:47'),
(926, 59, NULL, 45, 'D7-LK-13-08', 'SERI PASAL MODAL 1 | PASAR MODAL SEBAGAI SARANA PEMBIAYAAN DAN INVESTASI', 'Dr.H.Jusuh Arwar,S.H.,M.A.', 'Alumni', '2008', 'Bandung', NULL, '0', '0', '2023-06-03 03:43:02', '2023-06-03 03:43:02'),
(927, 59, NULL, 45, 'D7-LK-14-04', 'PASAR MODAL (PENAWARAN UMUM DAN PERMASALAHANNYA)', 'Asril Sitompul,S.H', 'Pt.Citra Aditya Bakti', '2004', 'Bandung', NULL, '0', '0', '2023-06-03 03:43:18', '2023-06-03 03:43:18'),
(928, 59, NULL, 45, 'D7-LK-15-93', 'PEMBINAAN DAN PENGAWASAN BANK', 'Bank Indonesia', 'Bank Indonesia', '1993', 'Jakarta', NULL, '0', '0', '2023-06-03 03:43:34', '2023-06-03 03:43:34'),
(929, 59, NULL, 45, 'D7-LK-16-96', 'ESENSI-ESENSI PERBANKAN INTERNASIONAL', 'Julius R.Latumaerissa,S.E,.M.M.', 'Bumi Aksara', '1996', 'Jakarta', NULL, '0', '0', '2023-06-03 03:43:50', '2023-06-03 03:43:50'),
(930, 60, NULL, 46, 'D8-SDM-01-21', 'MANAJEMEN MUTU TERPADU | TOTAL QUALITY MANAGEMENT', 'Dr.Tatang Ibrahim,Dr.H.A.Rusdiana', 'Yrama Widya', '2021', 'Bandung', NULL, '0', '0', '2023-06-03 03:44:21', '2023-06-03 03:44:21'),
(931, 60, NULL, 46, 'D8-SDM-02-15', 'MANAJEMEN SUMBER DAYA MANUSIA | EDISI REVISI', 'Sarinah Sihombing,R.Simon Gultom,Sonya Sidjabat', 'In Media', '2015', 'Jakarta', NULL, '0', '0', '2023-06-03 03:44:37', '2023-06-03 03:44:37'),
(932, 60, NULL, 46, 'D8-SDM-03-15', 'MANAJEMEN SUMBER DAYA MANUSIA PERUSAHAAN', 'Dr.A.A.Anwar Prabu Mangkunegara', 'Rosda', '2020', 'Bandung', NULL, '0', '0', '2023-06-03 03:44:52', '2023-06-03 03:44:52'),
(933, 60, NULL, 46, 'D8-SDM-04-15', 'MANAJEMEN SUMBER DAYA MANUSIA PERUSAHAAN', 'Dr.A.A.Anwar Prabu Mangkunegara', 'Rosda', '2020', 'Bandung', NULL, '0', '0', '2023-06-03 03:45:08', '2023-06-03 03:45:08'),
(934, 60, NULL, 46, 'D8-SDM-05-13', 'MANAJEMEN SUMBER DAYA MANUSIA EDISI REVISI', 'Drs.H.Malayu S.P.Hasibuan', 'Bumi Aksara', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 03:45:24', '2023-06-03 03:45:24'),
(935, 60, NULL, 46, 'D8-SDM-06-13', 'MANAJEMEN SUMBER DAYA MANUSIA EDISI REVISI', 'Drs.H.Malayu S.P.Hasibuan', 'Bumi Aksara', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 03:45:40', '2023-06-03 03:45:40'),
(936, 60, NULL, 46, 'D8-SDM-07-13', 'MANAJEMEN SUMBER DAYA MANUSIA EDISI REVISI', 'Drs.H.Malayu S.P.Hasibuan', 'Bumi Aksara', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 03:45:56', '2023-06-03 03:45:56'),
(937, 60, NULL, 46, 'D8-SDM-08-13', 'MANAJEMEN SUMBER DAYA MANUSIA EDISI REVISI', 'Drs.H.Malayu S.P.Hasibuan', 'Bumi Aksara', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 03:46:12', '2023-06-03 03:46:12'),
(938, 60, NULL, 46, 'D8-SDM-09-09', 'SISTEM PENGENDALIAN MANAJEMEN | KONSEP DAN APLIKASI', 'Dr.Hanif Ismail,Dr.Sarsono Prawironegoro', 'Mitra Wacana Media', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 03:46:28', '2023-06-03 03:46:28'),
(939, 60, NULL, 46, 'D8-SDM-10-14', 'EKONOMI SUMBER DAYA MANUSIA | DALAM PERSPEKTIF INDONESIA', 'Dr.Drs.Nur Feriyanto,M.Si', 'Upp Stim Ykpn', '2014', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:46:44', '2023-06-03 03:46:44'),
(940, 60, NULL, 46, 'D8-SDM-11-20', 'MANAJEMEN SUMBER DAYA MANUSIA', 'Drs.H.Malayu S.P.Hasibuan', 'Bumi Aksara', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 03:47:00', '2023-06-03 03:47:00'),
(941, 60, NULL, 46, 'D8-SDM-12-20', 'MANAJEMEN SUMBER DAYA MANUSIA', 'Prof.Dr.H.Edy Sutrisno', 'Kencana', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 03:47:16', '2023-06-03 03:47:16'),
(942, 60, NULL, 46, 'D8-SDM-13-20', 'MANAJEMEN SUMBER DAYA MANUSIA', 'Prof.Dr.H.Edy Sutrisno', 'Kencana', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 03:47:32', '2023-06-03 03:47:32'),
(943, 60, NULL, 46, 'D8-SDM-14-90', 'SERI PEDOMAN MANAJEMEN |MANAJEMEN SUMBERDAYA MANUSIA', 'Michael Armstrong', 'Elexmedia Komputindo', '1990', 'Jakarta', NULL, '0', '0', '2023-06-03 03:47:48', '2023-06-03 03:47:48'),
(944, 60, NULL, 46, 'D8-SDM-15-92', 'MANAJEMEN SUMBER DAYA MANUSIA EDISI 2', 'Kol.Kal.Susilo Martoyo,S.E.', 'Bpfe', '1992', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:48:04', '2023-06-03 03:48:04'),
(945, 60, NULL, 46, 'D8-SDM-16-09', 'MANAJEMEN SUMBER DAYA MANUSIA', 'Prof.Dr.Edy Sutrisno,M.Si.', 'Kencana', '2009', 'Jakarta', NULL, '0', '0', '2023-06-03 03:48:20', '2023-06-03 03:48:20'),
(946, 60, NULL, 46, 'D8-SDM-17-20', 'KOMPETENSI SDM DI ERA 4.0', 'A.M.Lilik Agung', 'Elexmedia Komputindo', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 03:48:36', '2023-06-03 03:48:36'),
(947, 60, NULL, 46, 'D8-SDM-18-93', 'PSIKOLOGI YANG EFEKTIF UNTUK MANAJER', 'Mortimer R.Feinberg,Ph.D.', 'Spektrum', '1993', 'Jakarta', NULL, '0', '0', '2023-06-03 03:48:52', '2023-06-03 03:48:52'),
(948, 60, NULL, 46, 'D8-SDM-19-20', 'MANAJEMEN PENGEMBANGAN SUMBER DAYA MANUSIA', 'Dr.H Aras Solong,M.Si', 'Deepublish', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:49:09', '2023-06-03 03:49:09'),
(949, 61, NULL, 47, 'D9-AL-01-12', 'PRINSIP-PRINSIP MANAJEMEN KEUANGAN', 'James C.Van Horne', 'Salemba Empat', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 03:49:25', '2023-06-03 03:49:25'),
(950, 61, NULL, 47, 'D9-AL-02-12', 'MANAJEMEN KEUANGAN | SEBAGAI ALAT UNTUK PENGAMBILAN KEPUTUSAN', 'Ade Fatma Lubis,Adi Syah Putra', 'Usu Press', '2017', 'Medan', NULL, '0', '0', '2023-06-03 03:49:41', '2023-06-03 03:49:41'),
(951, 61, NULL, 47, 'D9-AL-03-22', 'DASAR-DASAR AUDIT LAPORAN KEUANGAN', 'Alexander Hery,S.E.,M.Si.', 'Yrama Widya', '2022', 'Bandung', NULL, '0', '0', '2023-06-03 03:49:57', '2023-06-03 03:49:57'),
(952, 61, NULL, 47, 'D9-AL-04-20', 'ANALISIS LAPORAN KEUANGAN EDISI 5', 'Dr.Mamduh M.Hanafi,Prof.Dr.Abdul Halim', 'Upp Stim Ykpn', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:50:13', '2023-06-03 03:50:13'),
(953, 61, NULL, 47, 'D9-AL-05-21', 'ANALISIS LAPORAN KEUANGAN | TEORI,APLIKASI & HASIL PENELITIAN', 'V.Wiratna Sujarweni', 'Pustaka Baru Press', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:50:29', '2023-06-03 03:50:29'),
(954, 61, NULL, 47, 'D9-AL-06-21', 'ANALISIS LAPORAN KEUANGAN | TEORI,APLIKASI & HASIL PENELITIAN', 'V.Wiratna Sujarweni', 'Pustaka Baru Press', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:50:46', '2023-06-03 03:50:46'),
(955, 61, NULL, 47, 'D9-AL-07-21', 'MANAJEMEN KEUANGAN | TEORI,APLIKASI DAN HASIL PENELITIAN', 'V.Wiratna Sujarweni', 'Pustaka Baru Press', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:51:03', '2023-06-03 03:51:03'),
(956, 61, NULL, 47, 'D9-AL-08-21', 'ANALISIS DETAIL DAN MENDALAM ATAS DATA KUANTITATIF LAPORAN KEUANGAN', 'Dr.H.C.Hery,S.E,M.Si', 'Gava Media', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:51:19', '2023-06-03 03:51:19'),
(957, 61, NULL, 47, 'D9-AL-09-20', 'ANALISIS LAPORAN KEUANGAN', 'Kasmir,S.E.,M.M.', 'Pt.Rajagrafindo Persada', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 03:51:36', '2023-06-03 03:51:36'),
(958, 61, NULL, 47, 'D9-AL-10-20', 'ANALISIS LAPORAN KEUANGAN', 'Kasmir,S.E.,M.M.', 'Pt.Rajagrafindo Persada', '2020', 'Jakarta', NULL, '0', '0', '2023-06-03 03:51:53', '2023-06-03 03:51:53'),
(959, 62, NULL, 48, 'D10-ME-01-20', 'MANAJEMEN KINERJA', 'Dr.H.C.Hery,S.E,M.Si', 'Gava Media', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:52:09', '2023-06-03 03:52:09'),
(960, 62, NULL, 48, 'D10-ME-02-20', 'MANAJEMEN KINERJA', 'Dr.H.C.Hery,S.E,M.Si', 'Gava Media', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:52:26', '2023-06-03 03:52:26'),
(961, 62, NULL, 48, 'D10-ME-03-20', 'MANAJEMEN KINERJA', 'Dr.H.C.Hery,S.E,M.Si', 'Gava Media', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:52:43', '2023-06-03 03:52:43'),
(962, 62, NULL, 48, 'D10-ME-04-20', 'MANAJEMEN KINERJA', 'Dr.H.C.Hery,S.E,M.Si', 'Gava Media', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:52:59', '2023-06-03 03:52:59'),
(963, 62, NULL, 48, 'D10-ME-05-20', 'MANAJEMEN KONFILIK', 'Andri Kristanto', 'Gava Media', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:53:16', '2023-06-03 03:53:16'),
(964, 62, NULL, 48, 'D10-ME-06-90', 'STUDI KASUS MANAJEMEN KUD SETIA KAWAN', 'Lembaga Management Feui', 'Feui Press', '1990', 'Jakarta', NULL, '0', '0', '2023-06-03 03:53:33', '2023-06-03 03:53:33'),
(965, 62, NULL, 48, 'D10-ME-07-21', 'PENGANTAR TEORI MANAJEMEN KOMUNIKASI DAN ORGANISASI', 'Dr.Riinawati,M.Pd.', 'Pustaka Baru Press', '2021', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:53:50', '2023-06-03 03:53:50'),
(966, 62, NULL, 48, 'D10-ME-08-20', 'MANAJEMEN PERUBAHAN', 'Drs.M.Nur Nasution,M.Sc,Apu', 'Ghalia Indonesia', '2020', 'Bogor', NULL, '0', '0', '2023-06-03 03:54:07', '2023-06-03 03:54:07'),
(967, 62, NULL, 48, 'D10-ME-09-20', 'MANAJEMEN MEDIA MASSA | KONSEP DASAR,PENGELOLAAN DAN ETIKA PROFESI', 'Ade Putranto Prasetyo', 'Pustaka Baru Press', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:54:23', '2023-06-03 03:54:23'),
(968, 62, NULL, 48, 'D10-ME-10-20', 'MANAJEMEN MEDIA MASSA | KONSEP DASAR,PENGELOLAAN DAN ETIKA PROFESI', 'Ade Putranto Prasetyo', 'Pustaka Baru Press', '2020', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:54:40', '2023-06-03 03:54:40'),
(969, 62, NULL, 48, 'D10-ME-11-14', 'SISTEM PENGENDALIAN MANAJEMEN | KONSEP DAN APLIKASI', 'Drs.Jihen Ginting,M.Si,Ak', 'Unimed Press', '2014', 'Medan', NULL, '0', '0', '2023-06-03 03:54:57', '2023-06-03 03:54:57'),
(970, 63, NULL, 49, 'D11-PW-01-99', 'PERATURAN PERUNDANG-UNDANGAN KEPARIWISATAAN DI INDONESIA', 'Hadi Setia Tunggal,S.H.', 'Harvarindo', '1999', 'Jakarta', NULL, '0', '0', '2023-06-03 03:55:14', '2023-06-03 03:55:14'),
(971, 63, NULL, 49, 'D11-PW-02-17', 'PENGANTAR HOUSEKEEPING PERHOTELAN', 'Aulia Fadhli', 'Gava Media', '2017', 'Yogyakarta', NULL, '0', '0', '2023-06-03 03:55:30', '2023-06-03 03:55:30'),
(972, 63, NULL, 49, 'D11-PW-03-19', 'ENGLISH FOR PROFESSIONAL | FOOD & BEVERAGES SERVICES', 'Sutanto Leo', 'Erlangga', '2019', 'Jakarta', NULL, '0', '0', '2023-06-03 03:55:47', '2023-06-03 03:55:47'),
(973, 64, NULL, 50, 'F2-HP-01-14', 'PERLINDUNGAN HUKUM TERHADAP ANAK DALAM SISTEM PERADILAN PIDANA ANAK DI INDONESIA', 'Prof.Dr.Maidin Gultom,Sh.,M.Hum', 'Refika Aditama', '2014', 'Bandung', NULL, '0', '0', '2023-06-03 03:56:04', '2023-06-03 03:56:04'),
(974, 64, NULL, 50, 'F2-HP-02-97', 'DASAR DASAR HUKUM PIDANA INDONESIA', 'Drs.P.A.F.Lamintang,S.H', 'Pt.Citra Aditya Bakti', '1997', 'Bandung', NULL, '0', '0', '2023-06-03 03:56:21', '2023-06-03 03:56:21'),
(975, 64, NULL, 50, 'F2-HP-03-11', 'DASAR-DASAR HUKUM PIDANA INDONESIA', 'Drs.P.A.F.Lamintang,S.H', 'Pt.Citra Aditya Bakti', '2011', 'Bandung', NULL, '0', '0', '2023-06-03 03:56:38', '2023-06-03 03:56:38'),
(976, 64, NULL, 50, 'F2-HP-04-07', 'PERTANGGUNGJAWABAN PIDANA KORPORASI', 'Prof.Dr.Sutan Remy Sjahdeini,S.H.', 'Grafitti Press', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 03:56:55', '2023-06-03 03:56:55'),
(977, 64, NULL, 50, 'F2-HP-05-14', 'PELAJARAN HUKUM PIDANA BAGIAN I', 'Drs.Adami Chazawi,S.H.', 'Rajawali Press', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 03:57:12', '2023-06-03 03:57:12'),
(978, 64, NULL, 50, 'F2-HP-06-14', 'KORUPSI | KONSEP,TINDAK PIDANA,DAN PEMBERANTASANNYA', 'Prof.Dr.H.Elwi Danil,S.H.,M.H.', 'Pt.Rajagrafindo Persada', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 03:57:29', '2023-06-03 03:57:29'),
(979, 64, NULL, 50, 'F2-HP-07-08', 'ASAS-ASAS HUKUM PIDANA EDISI REVISI', 'Prof.Moeljatno,S.H.', 'Rineka Cipta', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 03:57:46', '2023-06-03 03:57:46'),
(980, 64, NULL, 50, 'F2-HP-08-15', 'TINDAK PIDANA INFORMASI & TRANSAKSI ELEKTRONIK', 'Drs.Adami Chazawi,S.H.,Ardi Ferdian', 'Media Nusa Creative', '2015', 'Malang', NULL, '0', '0', '2023-06-03 03:58:03', '2023-06-03 03:58:03'),
(981, 64, NULL, 50, 'F2-HP-09-95', 'KITAB UNDANG-UNDANG HUKUM PIDANA (KUHP)', 'R.Soesilo', 'Politteia', '1995', 'Bogor', NULL, '0', '0', '2023-06-03 03:58:21', '2023-06-03 03:58:21'),
(982, 64, NULL, 50, 'F2-HP-10-10', 'HUKUM ACARA PIDANA INDONESIA', 'Prof.Dr.Jur.Andi Hamzah', 'Sinar Grafika', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 03:58:38', '2023-06-03 03:58:38'),
(983, 64, NULL, 50, 'F2-HP-11-10', 'PERBANDINGAN HUKUM PIDANA', 'Prof.Dr.Barda Nawawi Arief,S.H.', 'Rajawali Press', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 03:58:55', '2023-06-03 03:58:55'),
(984, 65, NULL, 51, 'F3-HK-01-04', 'HUKUM KONTRAK INTERNASIONAL', 'Dr.Ningrum Natasya Sirait', 'Universitas Medan Area', '2004', 'Medan', NULL, '0', '0', '2023-06-03 03:59:13', '2023-06-03 03:59:13'),
(985, 65, NULL, 51, 'F3-HK-02-11', 'MENGGUGAT KONSEP HUBUNGAN KERJA', 'Asri Wijayanti,Sh.,Mh.', 'Lubuk Agung', '2011', 'Bandung', NULL, '0', '0', '2023-06-03 03:59:30', '2023-06-03 03:59:30'),
(986, 65, NULL, 51, 'F3-HK-03-15', 'HUKUM PENANAMAN MODAL', 'Dr.Ermanto Fahamsyah,S.H.,M.H.', 'Laksbang Group', '2015', 'Bandung', NULL, '0', '0', '2023-06-03 03:59:48', '2023-06-03 03:59:48'),
(987, 65, NULL, 51, 'F3-HK-04-14', 'POLITIK HUKUM ISLAM', 'Prof.Dr.H.Deddy Ismatullah,M.Hum', 'Pustaka Setia', '2014', 'Bandung', NULL, '0', '0', '2023-06-03 04:00:05', '2023-06-03 04:00:05'),
(988, 65, NULL, 51, 'F3-HK-05-10', 'TANGGUNGJAWAB SOSIAL PERUSAHAAN', 'Prof.Dr.Bismar Nasution,Sh,Mh', 'Books Terrace& Library', '2010', 'Bandung', NULL, '0', '0', '2023-06-03 04:00:22', '2023-06-03 04:00:22'),
(989, 65, NULL, 51, 'F3-HK-06-14', 'PENGANTAR HUKUM KETENAGAKERJAAN', 'Rachmat Trijono', 'Papas Sinar Sinanti', '2014', 'Jakarta', NULL, '0', '0', '2023-06-03 04:00:40', '2023-06-03 04:00:40');
INSERT INTO `buku` (`id_buku`, `id_kategoribuku`, `id_genrebuku`, `id_rakbuku`, `kodebuku`, `judulbuku`, `author`, `publisher`, `tahun`, `kota`, `fotocoverbuku`, `status_buku`, `status_kategori`, `created_at`, `updated_at`) VALUES
(990, 65, NULL, 51, 'F3-HK-07-04', 'LAPORAN PELAPOR KHUSUS PBB MENGENAI KEKERASAN TERHADAP PEREMPUAN', 'Komnas Perempuan', 'Komnas Perempuan', '2004', 'Jakarta', NULL, '0', '0', '2023-06-03 04:00:57', '2023-06-03 04:00:57'),
(991, 65, NULL, 51, 'F3-HK-08-05', 'HUKUM BISNIS UNTUK PERUSAHAAN | TEORI DAN CONTOH KASUS', 'Dr.Abdul R.R.Saliman,S.H.,M.M.', 'Kencana', '2005', 'Jakarta', NULL, '0', '0', '2023-06-03 04:01:15', '2023-06-03 04:01:15'),
(992, 65, NULL, 51, 'F3-HK-09-08', 'HUKUM KEPAILITAN', 'Jono,S.H.', 'Sinar Grafika', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 04:01:33', '2023-06-03 04:01:33'),
(993, 65, NULL, 51, 'F3-HK-10-90', 'KAPITA SELEKTA PENGETAHUAN HUKUM DAGANG', 'Mustafa A.Siregar,S.H.', 'Ind-Hill-Co', '1990', 'Jakarta', NULL, '0', '0', '2023-06-03 04:01:50', '2023-06-03 04:01:50'),
(994, 65, NULL, 51, 'F3-HK-11-08', 'HUKUM AGRARIA INDONESIA', 'Prof.Boedi Harsono', 'Djambatan', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 04:02:08', '2023-06-03 04:02:08'),
(995, 65, NULL, 51, 'F3-HK-12-11', 'AZAS-AZAS HUKUM PERJANJIAN', 'Prof.Dr.R.Wirjono Prodjodikoro', 'Mandar Maju', '2011', 'Bandung', NULL, '0', '0', '2023-06-03 04:02:25', '2023-06-03 04:02:25'),
(996, 65, NULL, 51, 'F3-HK-13-08', 'HUKUM KETENAGAKERJAAN DI INDONESIA', 'Soedarjadi,S.H.', 'Pustaka Yustisia', '2008', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:02:42', '2023-06-03 04:02:42'),
(997, 65, NULL, 51, 'F3-HK-14-02', 'DOKTRIN-DOKTRIN MODERN DALAM CORPORATE LAW DAN EKSISTENSINYA DALAM HUKUM INDONESIA', 'Munir Fuady,S.H.,M.H.,Ll.M.', 'Pt.Citra Aditya Bakti', '2002', 'Jakarta', NULL, '0', '0', '2023-06-03 04:03:00', '2023-06-03 04:03:00'),
(998, 65, NULL, 51, 'F3-HK-15-07', 'HUKUM INVESTASI', 'Dr.Budiman Ginting,S.H,.M.Hum', 'Pustaka Bangsa Press', '2007', 'Medan', NULL, '0', '0', '2023-06-03 04:03:18', '2023-06-03 04:03:18'),
(999, 65, NULL, 51, 'F3-HK-16-86', 'HUKUM WESEL CEK DAN AKSEP DI INDONESIA', 'Dr.Wirjono Prodjodikoro,S.H.', 'Sumur', '1986', 'Bandung', NULL, '0', '0', '2023-06-03 04:03:35', '2023-06-03 04:03:35'),
(1000, 65, NULL, 51, 'F3-HK-17-09', 'PENYELESAIAN PERSELISIHAN PERBURUHAN INDUSTRIAL DI INDONESIA', 'Moch.Faisal Salam,S.H.,M.H.', 'Mandar Maju', '2009', 'Bandung', NULL, '0', '0', '2023-06-03 04:03:53', '2023-06-03 04:03:53'),
(1001, 65, NULL, 51, 'F3-HK-18-92', 'PERATURAN MENTRI TENAGA KERJA REPUBLIK INDONESIA NOMOR PER-05/MEN/1993 TENTANG PETUNJUK TEKNIS PENDAFTARAN KEPESERTAAN,PEMBAYARAN IURAN,PEMBAYARAN SANTUNAN DAN PELAYANAN JAMSOSTEK', 'Soeharto', 'Pt.Astek', '1993', 'Jakarta', NULL, '0', '0', '2023-06-03 04:04:10', '2023-06-03 04:04:10'),
(1002, 65, NULL, 51, 'F3-HK-19-05', 'HUKUM AGRARIA', 'Suardi,S.H,M.H.', 'Iblam', '2005', 'Jakarta', NULL, '0', '0', '2023-06-03 04:04:28', '2023-06-03 04:04:28'),
(1003, 65, NULL, 51, 'F3-HK-20-08', 'HUKUM AGRARIA INDONESIA', 'Prof.Boedi Harsono', 'Djambatan', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 04:04:45', '2023-06-03 04:04:45'),
(1004, 65, NULL, 51, 'F3-HK-21-82', 'HUKUM KOPERASI', 'Abdulkadir Muhammad,S.H.', 'Alumni', '1982', 'Bandung', NULL, '0', '0', '2023-06-03 04:05:03', '2023-06-03 04:05:03'),
(1005, 65, NULL, 51, 'F3-HK-22-93', 'SENDI-SENDI HUBUNGAN PEKERJA DENGAN PENGUSAHA', 'Saiful Anwar,S.H', 'Fakultas Hukum Usu', '1993', 'Medan', NULL, '0', '0', '2023-06-03 04:05:21', '2023-06-03 04:05:21'),
(1006, 65, NULL, 51, 'F3-HK-23-82', 'HUKUM DAGANG INDONESIA | KAPITA SELEKTA', 'Prof.Dr.Soekardono', 'Rajawali Press', '1982', 'Jakarta', NULL, '0', '0', '2023-06-03 04:05:39', '2023-06-03 04:05:39'),
(1007, 65, NULL, 51, 'F3-HK-24-93', 'HUKUM DAGANG SURAT-SURAT BERHARGA', 'Prof.Emmy Pangaribuan Simanjuntak,S.H.', 'Ugm Press', '1993', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:05:57', '2023-06-03 04:05:57'),
(1008, 65, NULL, 51, 'F3-HK-25-10', 'MEMBINA BURUH MENJADI ENTEREPRENEUR MELALUI PROGRAM CSR', 'Wowok Sutarso,W.Se', 'Mutiara Benua', '2010', 'Tangerang', NULL, '0', '0', '2023-06-03 04:06:15', '2023-06-03 04:06:15'),
(1009, 65, NULL, 51, 'F3-HK-26-08', 'PENGANTAR HUKUM BISNIS |MENATA BISNIS MODERN DI ERA GLOBAL', 'Dr.Munir Fuady,S.H.,M.H.,Ll.M', 'Pt.Citra Aditya Bakti', '2008', 'Bandung', NULL, '0', '0', '2023-06-03 04:06:33', '2023-06-03 04:06:33'),
(1010, 65, NULL, 51, 'F3-HK-27-09', 'DASAR-DASAR HUKUM KETENAGAKERJAAN INDONESIA', 'Abdul Khakim,S.H.,M.Hum.', 'Pt.Citra Aditya Bakti', '2009', 'Bandung', NULL, '0', '0', '2023-06-03 04:06:51', '2023-06-03 04:06:51'),
(1011, 65, NULL, 51, 'F3-HK-28-16', 'HUKUM PERIKATAN', 'I Ketut Oka Setiawan', 'Sinar Grafika', '2016', 'Jakarta', NULL, '0', '0', '2023-06-03 04:07:09', '2023-06-03 04:07:09'),
(1012, 65, NULL, 52, 'F5-HK-01-11', 'HAK CIPTA TANPA HAK MORAL', 'Dr.Henry Soelistyo,S.H.,Ll.M', 'Rajawali Press', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 04:07:27', '2023-06-03 04:07:27'),
(1013, 65, NULL, 52, 'F5-HK-02-05', 'HUKUM INTERNASIONAL |PENGERTIAN PERANAN DAN FUNGSI DALAM ERA DINAMIKA GLOBAL | EDISI KE-2', 'Dr.Boer Mauna', 'Alumni', '2005', 'Bandung', NULL, '0', '0', '2023-06-03 04:07:45', '2023-06-03 04:07:45'),
(1014, 65, NULL, 52, 'F5-HK-03-07', 'HAK ASASI MANUSIA | HAKEKAR,KONSEP DAN IMPLIKASINYA DALAM PERSPEKTIF HUKUM DAN MASYARAKAT', 'Prof.Dr.H.Muladi,Sh.', 'Refika Aditama', '2007', 'Bandung', NULL, '0', '0', '2023-06-03 04:08:04', '2023-06-03 04:08:04'),
(1015, 65, NULL, 52, 'F5-HK-04-13', 'CARA MUDAH MENGURUS SURAT TANAH DAN RUMAH (BUKU TERLENGKAP)', 'Wiirahadi Prasetyono,S.H.', 'Flash Books', '2013', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:08:23', '2023-06-03 04:08:23'),
(1016, 65, NULL, 52, 'F5-HK-05-12', 'PERLINDUNGAN HUKUM TERHADAP ANAK DAN PEREMPUAN', 'Prof.Dr.Maidin Gultom,Sh.,M.Hum', 'Refika Aditama', '2012', 'Bandung', NULL, '0', '0', '2023-06-03 04:08:42', '2023-06-03 04:08:42'),
(1017, 65, NULL, 52, 'F5-HK-07-10', 'ASPEK HUKUM HAK KEKAYAAN INTELEKTUAL', 'H.Ok.Saidin,S.H.,M.Hum.', 'Rajawali Press', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 04:09:19', '2023-06-03 04:09:19'),
(1018, 65, NULL, 52, 'F5-HK-08-08', 'PERLINDUNGAN HUKUM TERHADAP PEMBELI SAHAM YANG DIGADAIKAN', 'Megarita', 'Usu Press', '2008', 'Medan', NULL, '0', '0', '2023-06-03 04:09:38', '2023-06-03 04:09:38'),
(1019, 65, NULL, 52, 'F5-HK-09-03', 'IKTIKAD BAIK DALAM KEBEBASAN BERKONTRAK', 'Ridwan Khairandy', 'Fhui Press', '2003', 'Jakarta', NULL, '0', '0', '2023-06-03 04:09:58', '2023-06-03 04:09:58'),
(1020, 65, NULL, 52, 'F5-HK-10-12', 'CONTOH-CONTOH PERJANJIAN PRAKTIS SEHARI-HARI', 'L&J A Law Firm', 'Rana Pustaka', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 04:10:16', '2023-06-03 04:10:16'),
(1021, 65, NULL, 52, 'F5-HK-11-08', 'PERLINDUNGAN HUKUM TERHADAP PEMBELI BARANG JAMINAN TIDAK BERGERAK MELALUI LELANG', 'Dr.Purnama Tioria Sianturi,S.H.,M.Hum.', 'Mandar Maju', '2008', 'Bandung', NULL, '0', '0', '2023-06-03 04:10:35', '2023-06-03 04:10:35'),
(1022, 65, NULL, 52, 'F5-HK-12-83', 'PENGANTAR DALAM HUKUM INDONESIA | CETAKAN KESEPULUH', 'E.Utrecht/Moh.Saleh Djindang Sh.', 'Pt.Ichtiar Baru', '1983', 'Jakarta', NULL, '0', '0', '2023-06-03 04:10:53', '2023-06-03 04:10:53'),
(1023, 65, NULL, 52, 'F5-HK-13-86', 'PENGANTAR ILMU HUKUM DAN TATA HUKUM INDONESIA', 'Drs.C.S.T.Kansil,S.H.', 'Pn.Balai Pustaka', '1986', 'Jakarta', NULL, '0', '0', '2023-06-03 04:11:11', '2023-06-03 04:11:11'),
(1024, 65, NULL, 52, 'F5-HK-14-88', 'PENGANTAR DAN ASAS-ASAS HUKUM ADAT', 'Soerojo Wignjodipoero,S.H.', 'Cv.Haji Masagung', '1988', 'Jakarta', NULL, '0', '0', '2023-06-03 04:11:29', '2023-06-03 04:11:29'),
(1025, 65, NULL, 52, 'F5-HK-15-82', 'PENGANTAR FILSAFAT HUKUM', 'Roscoe Pound', 'Bhratara Karya Aksara', '1982', 'Jakarta', NULL, '0', '0', '2023-06-03 04:11:47', '2023-06-03 04:11:47'),
(1026, 65, NULL, 52, 'F5-HK-16-07', 'PENGANTAR KE FILSAFAT HUKUM', 'Antonius Cahyadi,E,Fernando M.Manullang', 'Kencana', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 04:12:05', '2023-06-03 04:12:05'),
(1027, 65, NULL, 52, 'F5-HK-17-03', 'PENGANTAR HUKUM INTERNASIONAL', 'Mochtar Kusumatmadja,Etty R.Agoes', 'Alumni', '2003', 'Bandung', NULL, '0', '0', '2023-06-03 04:12:24', '2023-06-03 04:12:24'),
(1028, 65, NULL, 52, 'F5-HK-18-85', 'SENDI-SENDI ILMU HUKUM DAN TATA HUKUM', 'Purnadi Purbacaraka,S.H.,Prof.Dr.Soerjono Soekanto', 'Alumni', '1985', 'Bandung', NULL, '0', '0', '2023-06-03 04:12:42', '2023-06-03 04:12:42'),
(1029, 65, NULL, 52, 'F5-HK-19-83', 'PENGANTAR DAN ASAS-ASAS HUKUM ADAT', 'Soerojo Wignjodipoero,S.H.', 'Pt.Toko Gunung Agung', '1983', 'Jakarta', NULL, '0', '0', '2023-06-03 04:13:00', '2023-06-03 04:13:00'),
(1030, 65, NULL, 52, 'F5-HK-20-83', 'ASAS-ASAS HUKUM TATA NEGARA', 'Abu Daud Busroh,S.H.,H.Abubakar Busro,S.H.', 'Ghalia Indonesia', '1983', 'Jakarta', NULL, '0', '0', '2023-06-03 04:13:18', '2023-06-03 04:13:18'),
(1031, 65, NULL, 52, 'F5-HK-21-08', 'POKOK-POKOK FILSAFAT HUKUM | APA DAN BAGAIMANA FILSAFAT HUKUM INDONESIA', 'Prof.Darji Darmodiharjo,S.H.,Dr.Shidarta', 'Pt.Gramedia Pustaka Utama', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 04:13:37', '2023-06-03 04:13:37'),
(1032, 65, NULL, 52, 'F5-HK-22-13', 'KUMPULAN PERATURAN PERUNDANGAN PROGRAM JAMSOSTEK EDISI MEI 2013', 'Pt.Jamsostek (Persero)', 'Pt.Jamsostek (Persero)', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 04:13:55', '2023-06-03 04:13:55'),
(1033, 65, NULL, 52, 'F5-HK-23-07', 'PENEMUAN HUKUM SEBUAH PENGANTAR', 'Prof.Dr.Sudikno Mertokusumo,S.H.', 'Liberty', '2007', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:14:13', '2023-06-03 04:14:13'),
(1034, 65, NULL, 52, 'F5-HK-24-87', 'PERATURAN DAN INTRUKSI LELANG', 'Prof.Dr.H.Rochmat Soemitro,S.H.', 'Eresco', '1987', 'Bandung', NULL, '0', '0', '2023-06-03 04:14:31', '2023-06-03 04:14:31'),
(1035, 65, NULL, 52, 'F5-HK-25-10', '101 KASUS & SOLUSI TENTANG PERJANJIAN', 'Hukumonline.Com', 'Kataelha', '2010', 'Tangerang', NULL, '0', '0', '2023-06-03 04:14:50', '2023-06-03 04:14:50'),
(1036, 65, NULL, 52, 'F5-HK-26-10', 'PENGANTAR PENELITIAN HUKUM', 'Soerjono Soekanto', 'Ui Press', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 04:15:08', '2023-06-03 04:15:08'),
(1037, 65, NULL, 52, 'F5-HK-27-07', 'ADA APA DENGAN NARKOBA', 'Winarto,S.S.', 'Aneka Ilmu', '2007', 'Semarang', NULL, '0', '0', '2023-06-03 04:15:26', '2023-06-03 04:15:26'),
(1038, 65, NULL, 52, 'F5-HK-28-12', 'PROSEDUR GUGATAN CERAI + PEMBAGIAN HARTA GONO GINI + HAK ASUH ANAK', 'Adib Bahari,S.H', 'Pustaka Yustisia', '2012', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:15:45', '2023-06-03 04:15:45'),
(1039, 66, NULL, 53, 'F6-HT-01-08', 'HUKUM ACARA PERDATA', 'M.Yahya Harahap', 'Sinar Grafika', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 04:16:04', '2023-06-03 04:16:04'),
(1040, 66, NULL, 53, 'F6-HT-02-02', 'HUKUM ACARA PERDATA INDONESIA EDISI 7', 'Prof.Dr.Sudikno Mertokusumo,S.H.', 'Liberty', '2002', 'Jakarta', NULL, '0', '0', '2023-06-03 04:16:22', '2023-06-03 04:16:22'),
(1041, 66, NULL, 53, 'F6-HT-03-12', 'HUKUM PERDATA INDONESIA', 'Prof.Abdulkadir Muhammad,S.H.', 'Pt.Citra Aditya Bakti', '2012', 'Bandung', NULL, '0', '0', '2023-06-03 04:16:40', '2023-06-03 04:16:40'),
(1042, 66, NULL, 53, 'F6-HT-04-10', 'KUMPULAN TULISAN HUKUM PERDATA', 'Dr.Herlien Budiono,S.H', 'Pt.Citra Aditya Bakti', '2010', 'Bandung', NULL, '0', '0', '2023-06-03 04:16:59', '2023-06-03 04:16:59'),
(1043, 66, NULL, 53, 'F6-HT-05-09', 'HUKUM ACARA PERDATA DALAM TEORI DAN PRAKTER', 'Ny.Retnowulan Sutantio,S.H.', 'Cv.Mandar Biru', '2009', 'Bandung', NULL, '0', '0', '2023-06-03 04:17:18', '2023-06-03 04:17:18'),
(1044, 66, NULL, 53, 'F6-HT-06-82', 'POKOK-POKOK HUKUM PERDATA', 'Prof.Subekti,S.H.', 'Intermasa', '1982', 'Jakarta', NULL, '0', '0', '2023-06-03 04:17:36', '2023-06-03 04:17:36'),
(1045, 66, NULL, 53, 'F6-HT-07-87', 'PENGANTAR HUKUM PERDATA INTERNASIONAL INDONESIA', 'Prof.Dr.S.Gautama,S.H.', 'Binacipta', '1987', 'Bandung', NULL, '0', '0', '2023-06-03 04:17:56', '2023-06-03 04:17:56'),
(1046, 66, NULL, 53, 'F6-HT-08-87', 'PENGANTAR HUKUM PERDATA INTERNASIONAL INDONESIA', 'Prof.Dr.S.Gautama,S.H.', 'Binacipta', '1987', 'Bandung', NULL, '0', '0', '2023-06-03 04:18:15', '2023-06-03 04:18:15'),
(1047, 66, NULL, 53, 'F6-HT-09-92', 'POKOK-POKOK HUKUM PERDATA', 'Prof.Subekti,S.H.', 'Intermasa', '1992', 'Jakarta', NULL, '0', '0', '2023-06-03 04:18:35', '2023-06-03 04:18:35'),
(1048, 66, NULL, 53, 'F6-HT-10-92', 'POKOK-POKOK HUKUM PERDATA', 'Prof.Subekti,S.H.', 'Intermasa', '1992', 'Jakarta', NULL, '0', '0', '2023-06-03 04:18:54', '2023-06-03 04:18:54'),
(1049, 66, NULL, 53, 'F6-HT-11-92', 'POKOK-POKOK HUKUM PERDATA', 'Prof.Subekti,S.H.', 'Intermasa', '1992', 'Jakarta', NULL, '0', '0', '2023-06-03 04:19:14', '2023-06-03 04:19:14'),
(1050, 66, NULL, 53, 'F6-HT-12-83', 'FILSAFAT HUKUM PERDATA DALAM TANYA JAWAB', 'Purnadi Purbacaraka,S.H.,A.Ridwan Halim,S.H.', 'Rajawali Press', '1983', 'Jakarta', NULL, '0', '0', '2023-06-03 04:19:33', '2023-06-03 04:19:33'),
(1051, 67, NULL, 54, 'G2-TL-01-06', 'OPERASI SISTEM TENAGA LISTRIK', 'Djiteng Marsudi', 'Graha Ilmu', '2006', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:19:52', '2023-06-03 04:19:52'),
(1052, 67, NULL, 54, 'G2-TL-02-00', 'DASAR TEKNIK TENAGA LISTRIK DAN ELEKTRONIK DAYA', 'Zuhal', 'Pt.Gramedia Pustaka Utama', '2000', 'Jakarta', NULL, '0', '0', '2023-06-03 04:20:11', '2023-06-03 04:20:11'),
(1053, 67, NULL, 54, 'G2-TL-03-87', 'ELECTRIC CIRCUITS AND MACHINES', 'Eugene C.Lister,Michael R.Golding', 'Mcgraw Hill', '1987', 'Canada', NULL, '0', '0', '2023-06-03 04:20:31', '2023-06-03 04:20:31'),
(1054, 67, NULL, 54, 'G2-TL-04-94', 'PELAJARAN ELEKTRONIKA | TEHNIK ARUS SEARAH 1', 'Wasito S', 'Karya Utama', '1994', 'Jakarta', NULL, '0', '0', '2023-06-03 04:20:50', '2023-06-03 04:20:50'),
(1055, 67, NULL, 54, 'G2-TL-05-06', 'TEKNIK PENGERJAAN LISTRIK', 'Drs.Daryanto', 'Bumi Aksara', '2006', 'Jakarta', NULL, '0', '0', '2023-06-03 04:21:11', '2023-06-03 04:21:11'),
(1056, 67, NULL, 54, 'G2-TL-06-06', 'TEKNIK PENGERJAAN LISTRIK', 'Drs.Daryanto', 'Bumi Aksara', '2006', 'Jakarta', NULL, '0', '0', '2023-06-03 04:21:31', '2023-06-03 04:21:31'),
(1057, 67, NULL, 54, 'G2-TL-07-93', 'TRANSMISI DAYA LISTRIK', 'Prof.Ir.T.S.Hutauruk,Msc.', 'Erlangga', '1993', 'Jakarta', NULL, '0', '0', '2023-06-03 04:21:51', '2023-06-03 04:21:51'),
(1058, 67, NULL, 54, 'G2-TL-08-14', 'ENERGI NUKLIR | SOLUSI ENERGI LISTRIK DI INDONESIA', 'Ir.Hasan,Mt', 'Satu Nusa', '1994', 'Bandung', NULL, '0', '0', '2023-06-03 04:22:11', '2023-06-03 04:22:11'),
(1059, 68, NULL, 55, 'G3-TM-01-93', 'MENGGAMBAR TEKNIK MESIN', 'Moyn Marun', 'M2S', '1993', 'Bandung', NULL, '0', '0', '2023-06-03 04:22:32', '2023-06-03 04:22:32'),
(1060, 68, NULL, 55, 'G3-TM-02-12', 'MENGGAMBAR TEKNIK MESIN DENGAN STANDAR ISO', 'Ir.Ohan Juhana,M.Suratman,S.Pd', 'Pustaka Grafika', '2012', 'Bandung', NULL, '0', '0', '2023-06-03 04:22:53', '2023-06-03 04:22:53'),
(1061, 68, NULL, 55, 'G3-TM-03-81', 'MENGGAMBAR MESIN MENURUT STANDAR I.S.O', 'G.Takeshi Sato,N.Sugiarto Hartanto', 'Pt.Pradnya Paramita', '1981', 'Jakarta', NULL, '0', '0', '2023-06-03 04:23:13', '2023-06-03 04:23:13'),
(1062, 68, NULL, 55, 'G3-TM-04-15', 'MOTOR BAKAR TORAK (TEORI & APLIKASINYA)', 'Ir.Philip Kristanto', 'Andi', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:23:34', '2023-06-03 04:23:34'),
(1063, 68, NULL, 55, 'G3-TM-05-13', 'DASAR PERENCANAAN DAN PEMILIHAN ELEMEN MESIN', 'Sularso,Kiyokatsu Suga', 'Pt.Pradnya Paramita', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 04:23:56', '2023-06-03 04:23:56'),
(1064, 68, NULL, 55, 'G3-TM-06-13', 'DASAR PERENCANAAN DAN PEMILIHAN ELEMEN MESIN', 'Sularso,Kiyokatsu Suga', 'Pt.Pradnya Paramita', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 04:24:17', '2023-06-03 04:24:17'),
(1065, 68, NULL, 55, 'G3-TM-07-13', 'DASAR PERENCANAAN DAN PEMILIHAN ELEMEN MESIN', 'Sularso,Kiyokatsu Suga', 'Pt.Pradnya Paramita', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 04:24:37', '2023-06-03 04:24:37'),
(1066, 68, NULL, 55, 'G3-TM-08-13', 'DASAR PERENCANAAN DAN PEMILIHAN ELEMEN MESIN', 'Sularso,Kiyokatsu Suga', 'Pt.Pradnya Paramita', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 04:24:58', '2023-06-03 04:24:58'),
(1067, 68, NULL, 55, 'G3-TM-09-12', 'MODUL MEMELIHARA UNIT FINAL DRIVE/GARDAN', 'Supriyadi', 'Erlangga', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 04:25:19', '2023-06-03 04:25:19'),
(1068, 68, NULL, 55, 'G3-TM-10-03', 'MENGGAMBAR MESIN MENURUT STANDAR ISO', 'G.Takeshi Sato,N.Sugiarto Hartanto', 'Pt.Pradnya Paramita', '2003', 'Jakarta', NULL, '0', '0', '2023-06-03 04:25:40', '2023-06-03 04:25:40'),
(1069, 68, NULL, 55, 'G3-TM-11-13', 'MOTOR DIESEL PUTARAN TINGGI', 'Wiranto Arismunandar,Koichi Tsuda', 'Pt.Pradnya Paramita', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 04:26:01', '2023-06-03 04:26:01'),
(1070, 68, NULL, 55, 'G3-TM-12-13', 'MENGGAMBAR MESIN MENURUT STANDAR ISO', 'G.Takeshi Sato,N.Sugiarto Hartanto', 'Pt.Pradnya Paramita', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 04:26:22', '2023-06-03 04:26:22'),
(1071, 68, NULL, 55, 'G3-TM-13-13', 'MENGGAMBAR MESIN MENURUT STANDAR ISO', 'G.Takeshi Sato,N.Sugiarto Hartanto', 'Pt.Pradnya Paramita', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 04:26:44', '2023-06-03 04:26:44'),
(1072, 68, NULL, 55, 'G3-TM-14-13', 'MENGGAMBAR MESIN MENURUT STANDAR ISO', 'G.Takeshi Sato,N.Sugiarto Hartanto', 'Pt.Pradnya Paramita', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 04:27:05', '2023-06-03 04:27:05'),
(1073, 68, NULL, 55, 'G3-TM-15-11', 'PRINSIP DASAR MESIN OTOMOTIF (BEKAL KETERAMPILAN BAGI PEMULA)', 'Drs.Daryanto', 'Alfabeta', '2011', 'Bandung', NULL, '0', '0', '2023-06-03 04:27:26', '2023-06-03 04:27:26'),
(1074, 68, NULL, 55, 'G3-TM-16-94', 'POMPA DAN KOMPRESSOR | PEMILIHAN,PEMAKAIAN DAN PEMELIHARAAN', 'Ir.Sularso,Prof.Dr.Haruo Tahara', 'Pt.Pradnya Paramita', '1994', 'Jakarta', NULL, '0', '0', '2023-06-03 04:27:47', '2023-06-03 04:27:47'),
(1075, 68, NULL, 55, 'G3-TM-17-07', 'KOPLING,DIFERENSIAL,POROS PENGGERAK RODA,DAN PENGGERAK EMPAT RODA', 'M.Abdullah Nurhidayat', 'Yrama Widya', '2007', 'Bandung', NULL, '0', '0', '2023-06-03 04:28:08', '2023-06-03 04:28:08'),
(1076, 68, NULL, 55, 'G3-TM-18-87', 'KETEL UAP', 'Ir.M.J.Djokosetyardjo', 'Pt.Pradnya Paramita', '1987', 'Jakarta', NULL, '0', '0', '2023-06-03 04:28:29', '2023-06-03 04:28:29'),
(1077, 68, NULL, 55, 'G3-TM-19-13', 'TEKNIK LAS', 'Daryanto', 'Alfabeta', '2013', 'Bandung', NULL, '0', '0', '2023-06-03 04:28:50', '2023-06-03 04:28:50'),
(1078, 68, NULL, 55, 'G3-TM-20-77', 'TEKNIK KENDARAAN BERMOTOR 2', 'H.Schuring,J.Alserda', 'Binacipta', '1977', 'Bandung', NULL, '0', '0', '2023-06-03 04:29:11', '2023-06-03 04:29:11'),
(1079, 68, NULL, 55, 'G3-TM-21-12', 'MOTOR BENSIN MODERN', 'Wahyu Hidayat,St.', 'Rineka Cipta', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 04:29:32', '2023-06-03 04:29:32'),
(1080, 68, NULL, 55, 'G3-TM-22-08', 'PENUNTUN PRAKTIKUM TEKNOLOGI PERLENGKAPAN MESIN DIESEL', 'E.Karyanto', 'Restu Agung', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 04:29:54', '2023-06-03 04:29:54'),
(1081, 68, NULL, 55, 'G3-TM-23-93', 'DINAMIKA PERMESINAN', 'A.R Holowenko,Cendy Prapto', 'Erlangga', '1993', 'Jakarta', NULL, '0', '0', '2023-06-03 04:30:15', '2023-06-03 04:30:15'),
(1082, 68, NULL, 55, 'G3-TM-24-90', 'PESAWAT PESAWAT PENGANGKAT', 'Ir.Syamsir A.Muin', 'Rajawali Press', '1990', 'Jakarta', NULL, '0', '0', '2023-06-03 04:30:36', '2023-06-03 04:30:36'),
(1083, 68, NULL, 55, 'G3-TM-25-99', 'TURBIN UAP TEORI DAN RANCANGAN', 'P.Shlyakhin', 'Erlangga', '1999', 'Jakarta', NULL, '0', '0', '2023-06-03 04:30:58', '2023-06-03 04:30:58'),
(1084, 68, NULL, 55, 'G3-TM-26-10', 'MEKANIKA KEKUATAN MATERIAL LANJUT', 'Mhd.Daud Pinem', 'Rekayasa Sains', '2010', 'Bandung', NULL, '0', '0', '2023-06-03 04:31:19', '2023-06-03 04:31:19'),
(1085, 68, NULL, 55, 'G3-TM-27-99', 'PERENCANAAN TEKNIK MESIN EDISI 4 JILID 1', 'Joseph E.Shigley,Larry D.Mitchell,Gandhi Harahap', 'Erlangga', '1999', 'Jakarta', NULL, '0', '0', '2023-06-03 04:31:41', '2023-06-03 04:31:41'),
(1086, 68, NULL, 55, 'G3-TM-28-11', 'PRINSIP DASAR MESIN OTOMOTIF (BEKAL KETERAMPILAN BAGI PEMULA)', 'Drs.Daryanto', 'Alfabeta', '2011', 'Bandung', NULL, '0', '0', '2023-06-03 04:32:02', '2023-06-03 04:32:02'),
(1087, 68, NULL, 55, 'G3-TM-29-13', 'TEKNIK MERAWAT AUTOMOBIL LENGKAP', 'Drs.Daryanto', 'Yrama Widya', '2013', 'Bandung', NULL, '0', '0', '2023-06-03 04:32:23', '2023-06-03 04:32:23'),
(1088, 68, NULL, 55, 'G3-TM-30-93', 'MESIN PENGANGKAT I', 'Ir.M.J.Djokosetyardjo', 'Pt.Pradnya Paramita', '1993', 'Jakarta', NULL, '0', '0', '2023-06-03 04:32:44', '2023-06-03 04:32:44'),
(1089, 68, NULL, 55, 'G3-TM-31-97', 'SERVICE AUTO MOBIL | PENGANTAR PRAKTIS TEKNIK OTOMOTIF', 'Rs.Northop', 'Pustaka Setia', '1997', 'Bandung', NULL, '0', '0', '2023-06-03 04:33:05', '2023-06-03 04:33:05'),
(1090, 68, NULL, 55, 'G3-TM-32-90', 'PESAWAT PESAWAT PENGANGKAT', 'Ir.Syamsir A.Muin', 'Rajawali Press', '1990', 'Jakarta', NULL, '0', '0', '2023-06-03 04:33:26', '2023-06-03 04:33:26'),
(1091, 68, NULL, 55, 'G3-TM-33-13', 'TEKNIK MERAWAT AUTOMOBIL LENGKAP', 'Drs.Daryanto', 'Yrama Widya', '2013', 'Bandung', NULL, '0', '0', '2023-06-03 04:33:48', '2023-06-03 04:33:48'),
(1092, 68, NULL, 55, 'G3-TM-34-84', 'TEKNOLOGI DASAR MESIN TURBIN GAS PESAWAT TERBANG', 'E.Karyanto', 'Ghalia Indonesia', '1984', 'Jakarta', NULL, '0', '0', '2023-06-03 04:34:09', '2023-06-03 04:34:09'),
(1093, 68, NULL, 55, 'G3-TM-35-03', 'PERALATAN BENGKEL OTOMOTIF (KONSTRUKSI & PENGGUNAANYA)', 'Zevy D.Maran', 'Andi', '2003', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:34:31', '2023-06-03 04:34:31'),
(1094, 68, NULL, 55, 'G3-TM-36-97', 'TEKNIK MOTOR DIESEL MOBIL', 'Drs.Boentarto', 'Cv.Aneka', '1997', 'Solo', NULL, '0', '0', '2023-06-03 04:34:52', '2023-06-03 04:34:52'),
(1095, 68, NULL, 55, 'G3-TM-37-03', 'PERALATAN BENGKEL OTOMOTIF (KONSTRUKSI & PENGGUNAANYA)', 'Zevy D.Maran', 'Andi', '2003', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:35:14', '2023-06-03 04:35:14'),
(1096, 68, NULL, 55, 'G3-TM-38-97', 'DASAR-DASAR TEKNIK MOBIL', 'Drs.Daryanto', 'Bumi Aksara', '1997', 'Jakarta', NULL, '0', '0', '2023-06-03 04:35:35', '2023-06-03 04:35:35'),
(1097, 69, NULL, 55, 'G3-AS-01-97', 'GRAFIK ARTSITEKTUR', 'Frank Ching', 'Erlangga', '1997', 'Jakarta', NULL, '0', '0', '2023-06-03 04:35:57', '2023-06-03 04:35:57'),
(1098, 69, NULL, 55, 'G3-AS-02-07', 'ARSITEKTUR : BENTUK,RUANG,DAN TATANAN (COPY)', 'Franchise D.K.Ching', 'Erlangga', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 04:36:19', '2023-06-03 04:36:19'),
(1099, 69, NULL, 55, 'G3-AS-03-07', 'ARSITEKTUR : BENTUK,RUANG,DAN TATANAN', 'Franchise D.K.Ching', 'Erlangga', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 04:36:41', '2023-06-03 04:36:41'),
(1100, 69, NULL, 55, 'G3-AS-04-02', 'DATA ARSITEK EDISI 33 JILID 2', 'Ernst Neufert', 'Erlangga', '2002', 'Jakarta', NULL, '0', '0', '2023-06-03 04:37:02', '2023-06-03 04:37:02'),
(1101, 69, NULL, 55, 'G3-AS-05-08', 'ARCHITECTURAL DESIGNS', 'Architectural Designs', 'Architectural Designs', '2008', 'Usa', NULL, '0', '0', '2023-06-03 04:37:24', '2023-06-03 04:37:24'),
(1102, 69, NULL, 55, 'G3-AS-06-82', 'MEMBANGUN KINERJA PELAYANAN PUBLIK', 'Zainal A.Z.,B.A.E.', 'Pt.Gramedia Pustaka Utama', '1982', 'Jakarta', NULL, '0', '0', '2023-06-03 04:37:46', '2023-06-03 04:37:46'),
(1103, 69, NULL, 55, 'G3-AS-07-81', 'RUMAH TUMBUH | MEMBANGUN RUMAH TAHAP DEMI TAHAP RENCANA DAN BAHAN-BAHAN YANG DIPAKAI', 'Zainal A.Z.,B.A.E.', 'Pt.Gramedia Pustaka Utama', '1981', 'Jakarta', NULL, '0', '0', '2023-06-03 04:38:08', '2023-06-03 04:38:08'),
(1104, 69, NULL, 55, 'G3-AS-09-95', 'WASTU CITRA', 'Y.B.Mangunwijaya', 'Pt.Gramedia Pustaka Utama', '1995', 'Jakarta', NULL, '0', '0', '2023-06-03 04:38:57', '2023-06-03 04:38:57'),
(1105, 69, NULL, 55, 'G3-AS-10-85', 'PENGANTAR ARSITEKTUR', 'James C.Snyder,Anthony J.Catanese', 'Erlangga', '1985', 'Jakarta', NULL, '0', '0', '2023-06-03 04:39:20', '2023-06-03 04:39:20'),
(1106, 69, NULL, 55, 'G3-AS-11-11', 'PENGANTAR ARSITEKTUR KOTA', 'Hestin Mulyandari', 'Andi', '2011', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:39:41', '2023-06-03 04:39:41'),
(1107, 69, NULL, 55, 'G3-AS-12-10', 'STRUKTUR TATA RUANG KOTA', 'Hadi Sabari Yunus', 'Pustaka Pelajar', '2010', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:40:03', '2023-06-03 04:40:03'),
(1108, 69, NULL, 55, 'G3-AS-13-12', 'PERENCANAAN RUMAH SEDERHANA TAHAN GEMPA', 'Dr.Ir.H.Suharjanto', 'Kepel Press', '2012', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:40:26', '2023-06-03 04:40:26'),
(1109, 69, NULL, 55, 'G3-AS-14-06', 'ARSITEKTUR STRATEGIK', 'Diah Tuhfat Yoshida', 'Elexmedia Komputindo', '2006', 'Jakarta', NULL, '0', '0', '2023-06-03 04:40:51', '2023-06-03 04:40:51'),
(1110, 69, NULL, 55, 'G3-AS-15-13', 'BUKU PINTAR MENDESAIN RUMAH DENGAN GOOGLE SKETCHUP', 'Rio Manullang', 'Elexmedia Komputindo', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 04:41:14', '2023-06-03 04:41:14'),
(1111, 69, NULL, 55, 'G3-AS-16-08', 'ARCHICAD 10 UNTUK RANCANG BANGUN ARSITEKTUR', 'Suparno Sastra', 'Andi', '2008', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:41:36', '2023-06-03 04:41:36'),
(1112, 69, NULL, 55, 'G3-AS-18-12', 'PENCAHAYAAN ALAMI DALAM ARSITEKTUR', 'Parmonangan Manurung', 'Andi', '2012', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:42:22', '2023-06-03 04:42:22'),
(1113, 69, NULL, 55, 'G3-AS-19-05', 'ARSITEKTUR SADAR ENERGI', 'Prasasto Satwiko', 'Andi', '2005', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:42:44', '2023-06-03 04:42:44'),
(1114, 69, NULL, 55, 'G3-AS-20-17', 'TEKNIK MENINGKAT RUMAH CARA DAK', 'Mistra', 'Griya Kreasi', '2017', 'Jakarta', NULL, '0', '0', '2023-06-03 04:43:05', '2023-06-03 04:43:05'),
(1115, 69, NULL, 55, 'G3-AS-21-85', 'PENGANTAR ARSITEKTUR', 'James C.Snyder,Anthony J.Catanese', 'Erlangga', '1985', 'Jakarta', NULL, '0', '0', '2023-06-03 04:43:27', '2023-06-03 04:43:27'),
(1116, 69, NULL, 55, 'G3-AS-22-84', 'PENGANTAR ARSITEKTUR', 'James C.Snyder,Anthony J.Catanese', 'Erlangga', '1984', 'Jakarta', NULL, '0', '0', '2023-06-03 04:43:50', '2023-06-03 04:43:50'),
(1117, 69, NULL, 55, 'G3-AS-23-97', 'ARSITEK BICARA TENTANG ARSITEKTUR INDONESIA', 'Prof.Ir.Eko Budihardjo', 'Alumni', '1997', 'Bandung', NULL, '0', '0', '2023-06-03 04:44:13', '2023-06-03 04:44:13'),
(1118, 69, NULL, 55, 'G3-AS-24-87', 'DEKORASI PETUNJUK PRAKTIS MEMPERINDAH RUMAH ANDA', 'Mary Yean Alexander', 'Dahara Prize', '1987', 'Semarang', NULL, '0', '0', '2023-06-03 04:44:37', '2023-06-03 04:44:37'),
(1119, 69, NULL, 55, 'G3-AS-25-94', 'DASAR PENYUSUNAN ANGGARAN BIAYA BANGUNAN', 'Ir.J.A.Mukomoko', 'Gaya Media Pratama', '1994', 'Jakarta', NULL, '0', '0', '2023-06-03 04:45:01', '2023-06-03 04:45:01'),
(1120, 69, NULL, 55, 'G3-AS-26-11', 'DASAR PENYUSUNAN ANGGARAN BIAYA BANGUNAN', 'Ir.J.A.Mukomoko', 'Gaya Media Pratama', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 04:45:32', '2023-06-03 04:45:32'),
(1121, 69, NULL, 55, 'G3-AS-27-11', 'DASAR PENYUSUNAN ANGGARAN BIAYA BANGUNAN', 'Ir.J.A.Mukomoko', 'Gaya Media Pratama', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 04:46:05', '2023-06-03 04:46:05'),
(1122, 69, NULL, 55, 'G3-AS-28-79', 'MEKANIKA TEKNIK 1 | STATIKA DAN KEGUNAANYA', 'Ir.Heinz Frick', 'Yayasan Kanisius', '1979', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:46:40', '2023-06-03 04:46:40'),
(1123, 69, NULL, 55, 'G3-AS-29-79', 'MEKANIKA TEKNIK 2 | STATIKA DAN KEGUNAANYA', 'Ir.Heinz Frick', 'Yayasan Kanisius', '1979', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:47:12', '2023-06-03 04:47:12'),
(1124, 69, NULL, 55, 'G3-AS-30-04', 'ANALISA UPAH DAN BAHAN (ANALISIS BOW)', 'Redaksi Bumi Aksara', 'Pt.Bumi Aksara', '2004', 'Jakarta', NULL, '0', '0', '2023-06-03 04:47:43', '2023-06-03 04:47:43'),
(1125, 69, NULL, 55, 'G3-AS-31-09', 'FISIKA BANGUNAN', 'Prasasto Satwiko', 'Andi', '2009', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:48:15', '2023-06-03 04:48:15'),
(1126, 69, NULL, 55, 'G3-AS-32-99', 'PONDASI TIANG PANCANG JILID 2', 'Ir.Sardjono,Hs.', 'Sinar Wijaya', '1988', 'Surabaya', NULL, '0', '0', '2023-06-03 04:48:49', '2023-06-03 04:48:49'),
(1127, 69, NULL, 55, 'G3-AS-33-08', 'ALAT BERAT UNTUK PROYEK KONSTRUKSI EDISI KEDUA', 'Ir.Susy Fatena Rostiyanti,M.Sc.', 'Rineka Cipta', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 04:49:23', '2023-06-03 04:49:23'),
(1128, 69, NULL, 55, 'G3-AS-34-94', 'KONSTRUKSI KAYU', 'Tjoa Pwee Hong,Fh.Djokowahjono', 'Universitas Atmajaya', '1994', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:50:09', '2023-06-03 04:50:09'),
(1129, 69, NULL, 55, 'G3-AS-35-05', 'ANALISIS EKONOMI TEKNIK', 'Robert J.Kodoatie', 'Andi', '2005', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:50:52', '2023-06-03 04:50:52'),
(1130, 69, NULL, 55, 'G3-AS-36-05', 'ANALISIS EKONOMI TEKNIK', 'Robert J.Kodoatie', 'Andi', '2005', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:51:26', '2023-06-03 04:51:26'),
(1131, 69, NULL, 55, 'G3-AS-37-13', 'MEMAHAMI HIDRAULIKA', 'Lucio Canonica', 'Angkasa', '2013', 'Bandung', NULL, '0', '0', '2023-06-03 04:52:01', '2023-06-03 04:52:01'),
(1132, 69, NULL, 55, 'G3-AS-38-14', 'PENGENALAN DASAR DAN MANAJEMEN MATERIAL BAJA', 'Maria Dwi Ferdiana', 'Taka', '2014', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:52:35', '2023-06-03 04:52:35'),
(1133, 70, NULL, 56, 'H1-IA-01-92', 'ILMU KIMIA UNTUK UNIVERSITAS EDISI KEENAM', 'Keenan,Kleinfelter,Wood', 'Erlangga', '1992', 'Jakarta', NULL, '0', '0', '2023-06-03 04:53:09', '2023-06-03 04:53:09'),
(1134, 70, NULL, 56, 'H1-IA-02-13', 'PENGETAHUAN BAHAN DALAM PENGERJAAN LOGAM', 'Ing.Alois Schonmetz', 'Angkasa', '2013', 'Bandung', NULL, '0', '0', '2023-06-03 04:53:41', '2023-06-03 04:53:41'),
(1135, 70, NULL, 56, 'H1-IA-03-13', 'TEKNOLOGI PENGAWETAN PANGAN', 'Dr.Ir.Leni Herliani Afrianti,Ms', 'Alfabeta', '2013', 'Bandung', NULL, '0', '0', '2023-06-03 04:54:12', '2023-06-03 04:54:12'),
(1136, 70, NULL, 56, 'H1-IA-04-06', 'MIKROBIOLOGI INDUSTRI', 'Nur Hidayat,Masdiana,Sri Suhartini', 'Andi', '2006', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:54:45', '2023-06-03 04:54:45'),
(1137, 70, NULL, 56, 'H1-IA-07-94', 'ILMU BAHAN LOGAM JILID III', 'B.J.Mbeumer Ing', 'Bhratara Karya Aksara', '1994', 'Jakarta', NULL, '0', '0', '2023-06-03 04:56:10', '2023-06-03 04:56:10'),
(1138, 70, NULL, 56, 'H1-IA-08-94', 'ILMU BAHAN LOGAM JILID III', 'B.J.Mbeumer Ing', 'Bhratara Karya Aksara', '1994', 'Jakarta', NULL, '0', '0', '2023-06-03 04:56:32', '2023-06-03 04:56:32'),
(1139, 70, NULL, 56, 'H1-IA-09-11', 'ILMU ALAMIAH DASAR', 'Drs.Maskoeri Jasin', 'Pt.Rajagrafindo Persada', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 04:57:04', '2023-06-03 04:57:04'),
(1140, 71, NULL, 57, 'H2-TB-01-92', 'PENGETAHUAN BAHAN TEKNIK', 'Prof.Ir.Tata Surdia,Prof.Dr.Shinroku Saito', 'Pradnya Paramita', '1992', 'Jakarta', NULL, '0', '0', '2023-06-03 04:57:31', '2023-06-03 04:57:31'),
(1141, 71, NULL, 57, 'H2-TB-02-08', 'TEKNOLOGI DAN PERENCANAAN SISTEM PERPIPAAN', 'Raswari', 'Ui Press', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 04:58:04', '2023-06-03 04:58:04'),
(1142, 71, NULL, 57, 'H2-TB-03-75', 'MENGGAMBAR BANGUNAN KAYU', 'Ir.Heinz Frick', 'Kanisius', '1975', 'Yogyakarta', NULL, '0', '0', '2023-06-03 04:58:37', '2023-06-03 04:58:37'),
(1143, 71, NULL, 57, 'H2-TB-04-11', 'DISHARMONI PENGATURAN PENGADAAN JASA KONSTRUKSI PEMERINTAH DI INDONESIA', 'Marthen H.Toelle,S.H,.M.H', 'Griya Media', '2004', 'Salatiga', NULL, '0', '0', '2023-06-03 04:59:11', '2023-06-03 04:59:11'),
(1144, 71, NULL, 57, 'H2-TB-05-05', 'KONSTRUKSI KAYU', 'Ir.K.H.Felix Yap', 'Binacipta', '2005', 'Bandung', NULL, '0', '0', '2023-06-03 04:59:43', '2023-06-03 04:59:43'),
(1145, 71, NULL, 57, 'H2-TB-06-05', 'KONSTRUKSI KAYU', 'Ir.K.H.Felix Yap', 'Binacipta', '2005', 'Bandung', NULL, '0', '0', '2023-06-03 05:00:12', '2023-06-03 05:00:12'),
(1146, 71, NULL, 57, 'H2-TB-07-97', 'POLA STRUKTURAL DAN TEKNIK BANGUNAN DI INDONESIA', 'Heinz Frick', 'Kanisius', '1997', 'Yogyakarta', NULL, '0', '0', '2023-06-03 05:00:42', '2023-06-03 05:00:42'),
(1147, 71, NULL, 57, 'H2-TB-08-01', 'ILMU KONSTRUKSI STRUKTUR BANGUNAN', 'Heinz Frick,Pujo L.Setiawan', 'Kanisius', '2001', 'Yogyakarta', NULL, '0', '0', '2023-06-03 05:01:15', '2023-06-03 05:01:15'),
(1148, 71, NULL, 57, 'H2-TB-09-01', 'ILMU KONSTRUKSI STRUKTUR BANGUNAN', 'Heinz Frick,Pujo L.Setiawan', 'Kanisius', '2001', 'Yogyakarta', NULL, '0', '0', '2023-06-03 05:01:48', '2023-06-03 05:01:48'),
(1149, 71, NULL, 57, 'H2-TB-10-01', 'STRUKTUR BANGUNAN BERTINGKAT TINGGI', 'Wolfgang Schueller', 'Refika Aditama', '2001', 'Bandung', NULL, '0', '0', '2023-06-03 05:02:22', '2023-06-03 05:02:22'),
(1150, 71, NULL, 57, 'H2-TB-11-84', 'PERATURAN PERANCANGAN BANGUNAN BAJA INDONESIA (PPBBI)', 'Yayasan Lembaga Penyelidikan Masalah Bangunan', 'Yayasan Lembaga Penyelidikan Masalah Bangunan', '1984', 'Unknown', NULL, '0', '0', '2023-06-03 05:02:55', '2023-06-03 05:02:55'),
(1151, 72, NULL, 58, 'H3-UU-01-08', 'PEMBAHASAN PERMASALAHAN DAN PENERAPAN KUHAP | EDISI 2', 'M.Yahya Harahap,S.H.', 'Sinar Grafika', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 05:03:28', '2023-06-03 05:03:28'),
(1152, 72, NULL, 58, 'H3-UU-02-12', 'CARA MUDAH MEMAHAMI | KETENTUAN UMUM DAN TATA CARA PERPAJAKAN (KUP)', 'Ahmad Komara', 'Bee Media Indonesia', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 05:04:02', '2023-06-03 05:04:02'),
(1153, 72, NULL, 58, 'H3-UU-03-11', 'KUMPULAN PERATURAN TENTANG LELANG TAHUN 2012', 'Direktorat Lelang-Djkn', 'Kemenkeu Ri', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 05:04:35', '2023-06-03 05:04:35'),
(1154, 72, NULL, 58, 'H3-UU-04-13', 'UNDANG-UNDANG KOMPILASI HUKUM ISLAM', 'Fokusindo Mandiri', 'Fokusindo Mandiri', '2013', 'Bandung', NULL, '0', '0', '2023-06-03 05:05:08', '2023-06-03 05:05:08'),
(1155, 72, NULL, 58, 'H3-UU-05-10', 'UNDANG-UNDANG R.I.NOMOR 51 TAHHUN 2009 TENTANG PERADILAN TATA USAHA NEGARA (PTUN)', 'Republik Indonesia', 'Citra Umbara', '2010', 'Bandung', NULL, '0', '0', '2023-06-03 05:05:42', '2023-06-03 05:05:42'),
(1156, 72, NULL, 58, 'H3-UU-06-14', 'UNDANG-UNDANG MAHKAMAH KONSTITUSI', 'Mahkamah Konstitusi', 'Fokusmedia', '2014', 'Bandung', NULL, '0', '0', '2023-06-03 05:06:15', '2023-06-03 05:06:15'),
(1157, 72, NULL, 58, 'H3-UU-07-81', 'KUHP DAN PENJELASANNYA', 'R.Sugandhi,Sh', 'Usaha Nasional', '1981', 'Surabaya', NULL, '0', '0', '2023-06-03 05:06:48', '2023-06-03 05:06:48'),
(1158, 72, NULL, 58, 'H3-UU-08-04', 'KITAB UNDANG-UNDANG HUKUM PERDATA', 'Prof.R.Subekti,S.H.,R.Thitrosudibio', 'Pt.Pradnya Paramita', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 05:07:18', '2023-06-03 05:07:18'),
(1159, 72, NULL, 58, 'H3-UU-09-08', 'KITAB UNDANG-UNDANG HUKUM DAGANG DAN UNDANG-UNDANG KEPAILITAN', 'Prof.R.Subekti,S.H.,R.Thitrosudibio', 'Pt.Pradnya Paramita', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 05:07:42', '2023-06-03 05:07:42'),
(1160, 72, NULL, 58, 'H3-UU-10-07', 'KUHP & KUHAP EDISI REVISI 2008', 'Dr.Andi Hamzah,S.H.', 'Rineka Cipta', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 05:08:06', '2023-06-03 05:08:06'),
(1161, 72, NULL, 58, 'H3-UU-11-07', 'UUD 1945 HASIL AMANDEMEN & PROSES AMANDEMEN UUD 1945 SECARA LENGKAP', 'Mpr-Ri', 'Sinar Grafika', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 05:08:29', '2023-06-03 05:08:29'),
(1162, 72, NULL, 58, 'H3-UU-12-06', 'UNDANG-UNDANG TENTANG PENGADILAN HAK ASASI MANUSIA TAHUN 2000 & UNDANG-UNDANG HAM TAHUN 1999', 'Republik Indonesia', 'Citra Umbara', '2006', 'Bandung', NULL, '0', '0', '2023-06-03 05:08:52', '2023-06-03 05:08:52'),
(1163, 72, NULL, 58, 'H3-UU-13-08', 'KITAB UNDANG-UNDANG HUKUM DAGANG DAN UNDANG-UNDANG KEPAILITAN', 'Prof.R.Subekti,S.H.,R.Thitrosudibio', 'Pt.Pradnya Paramita', '2008', 'Jakarta', NULL, '0', '0', '2023-06-03 05:09:16', '2023-06-03 05:09:16'),
(1164, 72, NULL, 58, 'H3-UU-14-06', 'UNDANG-UNDANG REPUBLIK INDONESIA NOMOR 12 TAHUN 2006 TENTANG KEWARGANEGARAAN REPUBLIK INDONESIA', 'Lian Nury Sanusi', 'Kawan Pustaka', '2006', 'Jakarta', NULL, '0', '0', '2023-06-03 05:09:39', '2023-06-03 05:09:39'),
(1165, 73, NULL, 59, 'H4-PP-01-13', 'PARADIGMA BARU PENDIDIKAN KEWARGANEGARAAN | EDISI 2', 'Winarno,S.Pd.,M.Si', 'Bumi Aksara', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 05:10:02', '2023-06-03 05:10:02'),
(1166, 73, NULL, 59, 'H4-PP-02-13', 'PARADIGMA BARU PENDIDIKAN KEWARGANEGARAAN | EDISI 2', 'Winarno,S.Pd.,M.Si', 'Bumi Aksara', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 05:10:30', '2023-06-03 05:10:30'),
(1167, 73, NULL, 59, 'H4-PP-03-13', 'PARADIGMA BARU PENDIDIKAN KEWARGANEGARAAN | EDISI 2', 'Winarno,S.Pd.,M.Si', 'Bumi Aksara', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 05:11:01', '2023-06-03 05:11:01'),
(1168, 73, NULL, 59, 'H4-PP-04-13', 'PARADIGMA BARU PENDIDIKAN KEWARGANEGARAAN | EDISI 2', 'Winarno,S.Pd.,M.Si', 'Bumi Aksara', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 05:11:34', '2023-06-03 05:11:34'),
(1169, 73, NULL, 59, 'H4-PP-05-13', 'PARADIGMA BARU PENDIDIKAN KEWARGANEGARAAN | EDISI 2', 'Winarno,S.Pd.,M.Si', 'Bumi Aksara', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 05:12:05', '2023-06-03 05:12:05'),
(1170, 73, NULL, 59, 'H4-PP-06-10', 'PENDIDIKAN PANCASILA | EDISI REFORMASI 2010', 'Prof.Dr.Kaelan,M.S.', 'Paradigma', '2010', 'Yogyakarta', NULL, '0', '0', '2023-06-03 05:12:31', '2023-06-03 05:12:31'),
(1171, 73, NULL, 59, 'H4-PP-07-10', 'PENDIDIKAN PANCASILA | EDISI REFORMASI 2010', 'Prof.Dr.Kaelan,M.S.', 'Paradigma', '2010', 'Yogyakarta', NULL, '0', '0', '2023-06-03 05:12:57', '2023-06-03 05:12:57'),
(1172, 73, NULL, 59, 'H4-PP-08-10', 'PENDIDIKAN PANCASILA | EDISI REFORMASI 2010', 'Prof.Dr.Kaelan,M.S.', 'Paradigma', '2010', 'Yogyakarta', NULL, '0', '0', '2023-06-03 05:13:24', '2023-06-03 05:13:24'),
(1173, 73, NULL, 59, 'H4-PP-09-95', 'SEMANGAT JUANG 445 SUMATERA UTARA KUMPULAN TULISAN PERJUANGAN PARA PEJUANG SUMATERA UTARA', 'Tim Pembangunan Tatengger I Profsu', 'Tim Pembangunan Tatengger I Profsu', '1995', 'Medan', NULL, '0', '0', '2023-06-03 05:13:51', '2023-06-03 05:13:51'),
(1174, 73, NULL, 59, 'H4-PP-10-95', 'PERJUANGAN MENEGAKKAN DAN MEMPERTAHANKAN KEMERDEKAAN REPUBLIK INDONESIA DI SUMATERA UTARA (1945-1949)', 'Tim Pembangunan Tatengger I Profsu', 'Tim Pembangunan Tatengger I Profsu', '1995', 'Medan', NULL, '0', '0', '2023-06-03 05:14:23', '2023-06-03 05:14:23'),
(1175, 73, NULL, 59, 'H4-PP-11-95', 'PERJUANGAN MENEGAKKAN DAN MEMPERTAHANKAN KEMERDEKAAN REPUBLIK INDONESIA DI SUMATERA UTARA (1945-1949)', 'Tim Pembangunan Tatengger I Profsu', 'Tim Pembangunan Tatengger I Profsu', '1995', 'Medan', NULL, '0', '0', '2023-06-03 05:14:58', '2023-06-03 05:14:58'),
(1176, 74, NULL, 60, 'H6-HC-01-15', 'CYBER LAW', 'Dr.Sinta Dewi Rosadi,Sh.,Ll.M.', 'Refika Aditama', '2015', 'Bandung', NULL, '0', '0', '2023-06-03 05:15:32', '2023-06-03 05:15:32'),
(1177, 74, NULL, 60, 'H6-HC-02-11', 'JAMINAN PERBANKAN INTERNASIONAL', 'Ramlan Ginting', 'Universitas Trisakti', '2011', 'Jakarta', NULL, '0', '0', '2023-06-03 05:16:10', '2023-06-03 05:16:10'),
(1178, 74, NULL, 60, 'H6-HC-03-15', 'HUKUM PAJAK', 'Roristua Pandiangan,S.E.,M.M.', 'Graha Ilmu', '2015', 'Yogyakarta', NULL, '0', '0', '2023-06-03 05:16:47', '2023-06-03 05:16:47'),
(1179, 74, NULL, 60, 'H6-HC-04-13', 'ECONOMIC ANALYSIS OF LAW', 'Dr.Fajar Sugianto,S.H.,M.H.', 'Kencana', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 05:17:16', '2023-06-03 05:17:16'),
(1180, 74, NULL, 60, 'H6-HC-05-08', 'KOMPILASI UNDANG-UNDANG BIDANG HAK KEKAYAAN INTELEKTUAL & TRIPS\'S', 'Syafruddin', 'Pustaka Bangsa Press', '2008', 'Medan', NULL, '0', '0', '2023-06-03 05:17:44', '2023-06-03 05:17:44'),
(1181, 74, NULL, 60, 'H6-HC-06-07', 'HUKUM KEGIATAN EKONOMI I', 'Bismar Nasution', 'Books Terrace& Library', '2007', 'Bandung', NULL, '0', '0', '2023-06-03 05:18:12', '2023-06-03 05:18:12'),
(1182, 74, NULL, 60, 'H6-HC-07-01', 'HUKUM PERBANKAN MODERN | BUKU KEDUA (TINGKAT ADVANCE)', 'Munir Fuady,S.H.,M.H.,Ll.M.', 'Pt.Citra Aditya Bakti', '2001', 'Bandung', NULL, '0', '0', '2023-06-03 05:18:39', '2023-06-03 05:18:39'),
(1183, 74, NULL, 60, 'H6-HC-08-07', 'HUKUM PERKAWINAN INDONESIA', 'Prof.H.Hilman Hadikusuma,S.H.', 'Cv.Mandar Maju', '2007', 'Bandung', NULL, '0', '0', '2023-06-03 05:19:07', '2023-06-03 05:19:07'),
(1184, 74, NULL, 60, 'H6-HC-09-93', 'HUKUM PERTANGGUNGAN LAUT', 'Wiwoho Soedjono,S.H.', 'Rineka Cipta', '1993', 'Jakarta', NULL, '0', '0', '2023-06-03 05:19:34', '2023-06-03 05:19:34'),
(1185, 74, NULL, 60, 'H6-HC-10-01', 'PENGANTAR HUKUM ADMINISTRASI INDONESIA', 'Philipus M.Hadjon,Dkk', 'Ugm Press', '2001', 'Yogyakarta', NULL, '0', '0', '2023-06-03 05:20:03', '2023-06-03 05:20:03'),
(1186, 74, NULL, 60, 'H6-HC-11-97', 'HUKUM JAMINAN,HAK JAMINAN KEBENDAAN,HAK TANGGUNGAN BUKU 1', 'J.Satrio,S.H.', 'Pt.Citra Aditya Bakti', '1997', 'Bandung', NULL, '0', '0', '2023-06-03 05:20:30', '2023-06-03 05:20:30'),
(1187, 75, NULL, 61, 'H7-IS-01-06', 'FILSAFAT ILMU', 'Prof.Dr.H.Lili Rasjidi,S.Sos', 'Universitas Pasundan', '2006', 'Bandung', NULL, '0', '0', '2023-06-03 05:20:57', '2023-06-03 05:20:57'),
(1188, 75, NULL, 61, 'H7-IS-02-06', 'KEPENDUDUKAN DAN LINGKUNGAN HIDUP', 'Abdurrahman Ritonga,Dkk', 'Feui Press', '2001', 'Jakarta', NULL, '0', '0', '2023-06-03 05:21:25', '2023-06-03 05:21:25'),
(1189, 75, NULL, 61, 'H7-IS-03-12', 'MEDIA PENDIDIKAN KESEHATAN', 'I Putusuiraoka,I Dewa Nyoman Supariasa', 'Graha Ilmu', '2012', 'Yogyakarta', NULL, '0', '0', '2023-06-03 05:21:53', '2023-06-03 05:21:53'),
(1190, 75, NULL, 61, 'H7-IS-04-05', 'KESEHATAN LINGKUNGAN', 'Ricki M.Mulia', 'Graha Ilmu', '2005', 'Yogyakarta', NULL, '0', '0', '2023-06-03 05:22:21', '2023-06-03 05:22:21'),
(1191, 75, NULL, 61, 'H7-IS-05-70', 'SOSIOLOGI SUATU PENGANTAR', 'Soerjono Soekanto', 'Ui Press', '1970', 'Jakarta', NULL, '0', '0', '2023-06-03 05:22:49', '2023-06-03 05:22:49'),
(1192, 75, NULL, 61, 'H7-IS-06-95', 'PRAHARA BUDAYA | KILAS BALIK OFFENSIF LEKRA/PKI,DKK', 'D.S.Moeljanto,Taufiq Ismail', 'Mizan', '1995', 'Bandung', NULL, '0', '0', '2023-06-03 05:23:18', '2023-06-03 05:23:18'),
(1193, 75, NULL, 61, 'H7-IS-07-83', 'PENGANGKUTAN LAUT DALAM HUBUNGANNYA DENGAN WAWASAN NUSANTARA', 'Wiwoho Soedjono,S.H.', 'Bina Aksara', '1983', 'Jakarta', NULL, '0', '0', '2023-06-03 05:23:47', '2023-06-03 05:23:47'),
(1194, 75, NULL, 61, 'H7-IS-08-19', 'KEPEMIMPINAN NUSANTARA ARCHIPELAGO LEADERSHIP', 'Prof.Dr.Marsetio', 'Universitas Pertahanan', '2019', 'Bogor', NULL, '0', '0', '2023-06-03 05:24:21', '2023-06-03 05:24:21'),
(1195, 75, NULL, 61, 'H7-IS-09-05', 'FILSAFAT ILMU SEBUAH PENGANTAR POPULER', 'Jujun S.Suriasumantri', 'Pustaka Sinar Harapan', '2005', 'Jakarta', NULL, '0', '0', '2023-06-03 05:24:56', '2023-06-03 05:24:56'),
(1196, 75, NULL, 61, 'H7-IS-10-82', 'SOSIOLOGI SUATU PENGANTAR', 'Soerjono Soekanto', 'Rajawali Press', '1982', 'Jakarta', NULL, '0', '0', '2023-06-03 05:25:29', '2023-06-03 05:25:29'),
(1197, 75, NULL, 61, 'H7-IS-11-99', 'FILSAFAT ILMU SEBUAH PENGANTAR POPULER', 'Jujun S.Suriasumantri', 'Pustaka Sinar Harapan', '1999', 'Jakarta', NULL, '0', '0', '2023-06-03 05:25:57', '2023-06-03 05:25:57'),
(1198, 75, NULL, 61, 'H7-IS-12-10', 'SISTEM SOSIAL INDONESIA', 'Dr.Nasikun', 'Pt.Rajagrafindo Persada', '2010', 'Jakarta', NULL, '0', '0', '2023-06-03 05:26:21', '2023-06-03 05:26:21'),
(1199, 75, NULL, 61, 'H7-IS-13-07', 'FILSAFAT ILMU SEBUAH PENGANTAR POPULER', 'Jujun S.Suriasumantri', 'Pustaka Sinar Harapan', '2007', 'Jakarta', NULL, '0', '0', '2023-06-03 05:26:45', '2023-06-03 05:26:45'),
(1200, 76, NULL, 62, 'H8-IN-01-00', 'MERUBAH KEBIJAKAN PUBLIK', 'Roem Topatimasang,Dkk', 'Pustaka Pelajar', '2000', 'Yogyakarta', NULL, '0', '0', '2023-06-03 05:27:12', '2023-06-03 05:27:12'),
(1201, 76, NULL, 62, 'H8-IN-02-15', 'PENGANTAR ILMU PEMERINTAHAN', 'Dr.H.Dadang Sufianto,M.M.', 'Pustaka Setia', '2015', 'Bandung', NULL, '0', '0', '2023-06-03 05:27:39', '2023-06-03 05:27:39'),
(1202, 76, NULL, 62, 'H8-IN-03-09', 'SISTEM KETATANEGARAAN INDONESIA PASCA PERUBAHAN UUD 1945', 'Prof.Dr.H.R.Sri Soemantri,Prof.Dr.I Gede Pantja A', 'Fokusmedia', '2009', 'Bandung', NULL, '0', '0', '2023-06-03 05:28:07', '2023-06-03 05:28:07'),
(1203, 76, NULL, 62, 'H8-IN-04-05', 'PENDIDIKAN KEWARGANEGARAAN', 'S.Sumasono', 'Pt.Gramedia Pustaka Utama', '2005', 'Jakarta', NULL, '0', '0', '2023-06-03 05:28:32', '2023-06-03 05:28:32'),
(1204, 76, NULL, 62, 'H8-IN-06-75', 'GARIS-GARIS BESAR ILMU KEUANGAN NEGARA', 'Dr.C.Goedhart', 'Djambatan', '1975', 'Jakarta', NULL, '0', '0', '2023-06-03 05:29:24', '2023-06-03 05:29:24'),
(1205, 76, NULL, 62, 'H8-IN-07-12', 'UNDANG-UNDANG REPUBLIK INDONESIA NOMOR 24 TAHUN 2011 TENTANG BADAN PENYELENGGARA JAMINAN SOSIAL', 'Presiden Republik Indonesia', 'Kantor Pusat Jamsostek', '2012', 'Jakarta', NULL, '0', '0', '2023-06-03 05:29:49', '2023-06-03 05:29:49'),
(1206, 76, NULL, 62, 'H8-IN-08-03', 'KAPITA SELEKTA MANAJEMEN PEMERINTAHAN DAERAH', 'Prof.Dr.Sadu Wasistiono,M.S.', 'Fokusmedia', '2003', 'Bandung', NULL, '0', '0', '2023-06-03 05:30:14', '2023-06-03 05:30:14'),
(1207, 76, NULL, 62, 'H8-IN-09-08', 'HUKUM TATA NEGARA', 'Prof.Dr.M.Solly Lubis,S.H.', 'Mandar Maju', '2008', 'Bandung', NULL, '0', '0', '2023-06-03 05:30:40', '2023-06-03 05:30:40'),
(1208, 76, NULL, 62, 'H8-IN-10-86', 'ILMU NEGARA', 'Soehino,S.H.', 'Liberty', '1986', 'Yogyakarta', NULL, '0', '0', '2023-06-03 05:31:07', '2023-06-03 05:31:07'),
(1209, 76, NULL, 62, 'H8-IN-11-13', 'KEMENTRIAN KEUANGAN RI', 'Kementrian Keuangan Ri', 'Kemenkeu Ri', '2013', 'Jakarta', NULL, '0', '0', '2023-06-03 05:31:32', '2023-06-03 05:31:32'),
(1210, 76, NULL, 62, 'H8-IN-12-13', 'ILMU PEMERINTAHAN EDISI REVISI KEDUA', 'Pro.Dr.H.Inu Kencana Syafiie,M.Si.', 'Mandar Maju', '2013', 'Bandung', NULL, '0', '0', '2023-06-03 05:31:57', '2023-06-03 05:31:57'),
(1211, 76, NULL, 62, 'H8-IN-13-08', 'MAHKAMAH KONSTITUSI DALAM SISTEM KETATANEGARAAN REPUBLIK INDONESIA', 'Prof.Dr.Jimly Asshiddiqie,S.H.', 'Unknown', '2008', 'Medan', NULL, '0', '0', '2023-06-03 05:32:23', '2023-06-03 05:32:23'),
(1212, 76, NULL, 62, 'H8-IN-14-87', 'KEBIJAKSANAAN MONETER ORDE BARU', 'Drs.M.Sinungan', 'Bina Aksara', '1987', 'Jakarta', NULL, '0', '0', '2023-06-03 05:32:48', '2023-06-03 05:32:48'),
(1213, 76, NULL, 62, 'H8-IN-15-02', 'POTRET NEGARA INDONESIA', 'Dr.Muchtar Pakpahan', 'Pt.Bumi Intitama Sejahtera', '2002', 'Jakarta', NULL, '0', '0', '2023-06-03 05:33:13', '2023-06-03 05:33:13'),
(1214, 76, NULL, 62, 'H8-IN-16-86', 'EXOTIC GEMS', 'Samidjo,S.H.', 'Armico', '1997', 'Bandung', NULL, '0', '0', '2023-06-03 05:33:40', '2023-06-03 05:33:40'),
(1215, 77, NULL, 63, '18020010001', 'PENGARUH PELATIHAN KERJA TERHADAP PRODUKTIVITAS KERJA KARYAWAN ASIA KING MART', 'Ansel Jovan Chuanggi', 'Politeknik It&B', '2020', 'Medan', NULL, '3', '0', '2023-06-03 05:34:07', '2023-06-03 05:34:07'),
(1216, 77, NULL, 63, '18020010002', 'PENGARUH GAYA KEPEMIMPINAN TERHADAP KEPUASAN KERJA KARYAWAN DI BRASTAGI SUPERMARKET', 'Bianca Airin Sinaga', 'Politeknik It&B', '2020', 'Medan', NULL, '3', '0', '2023-06-03 05:34:33', '2023-06-03 05:34:33'),
(1217, 77, NULL, 63, '18020010004', 'PENGARUH DISIPLIN KERJA TERHADAP KINERJA KARYAWAN DI CV.AMAN JAYA', 'Cindy Chairil', 'Politeknik It&B', '2020', 'Medan', NULL, '3', '0', '2023-06-03 05:34:59', '2023-06-03 05:34:59'),
(1218, 77, NULL, 63, '18020010005', 'PENGARUH PEMBERIAN INSENTIF TERHADAP KINERJA KARYAWAN DI PERUSAHAAN ASURANSI FWD LIFE', 'Denis', 'Politeknik It&B', '2020', 'Medan', NULL, '3', '0', '2023-06-03 05:35:25', '2023-06-03 05:35:25'),
(1219, 77, NULL, 63, '18020010006', 'PENGARUH KUALITAS LAYANAN TERHADAP LOYALITAS PELANGGAN PADA PT.GROWTH SUMATER', 'Devi Wulandari', 'Politeknik It&B', '2020', 'Medan', NULL, '3', '0', '2023-06-03 05:35:52', '2023-06-03 05:35:52'),
(1220, 77, NULL, 63, '18020010007', 'PENGARUH MOTIVASI KERJA TERHADAP KINERJA KARYAWAN PT.KURINIA PUTRA MANDIRI', 'Dikson Wijaya', 'Politeknik It&B', '2020', 'Medan', NULL, '3', '0', '2023-06-03 05:36:19', '2023-06-03 05:36:19'),
(1221, 77, NULL, 63, '18020010008', 'PENGARUH STRESS KERJA TERHADAP KINERJA KARYWAN PT.PUNDI MAS BERJAYA', 'Jose Renaldo Tamdy', 'Politeknik It&B', '2020', 'Medan', NULL, '3', '0', '2023-06-03 05:36:45', '2023-06-03 05:36:45'),
(1222, 77, NULL, 63, '18020010009', 'PENGARUH GAYA KEPEMIMPINAN TERHADAP KINERJA KARYAWAN DI PT,PUNDI MAS BERJAYA MEDAN', 'Michael Vetrico', 'Politeknik It&B', '2020', 'Medan', NULL, '3', '0', '2023-06-03 05:37:11', '2023-06-03 05:37:11'),
(1223, 77, NULL, 63, '18020010010', 'PENGARUH KOMUNIKASI TERHADAP KINERJA KARYWAN PADA PERCETAKAN SERASI LESTARI', 'Sellyna Chandra', 'Politeknik It&B', '2020', 'Medan', NULL, '3', '0', '2023-06-03 05:37:36', '2023-06-03 05:37:36'),
(1224, 77, NULL, 63, '18020010011', 'PENGARUH DISIPLIN KERJA TERHADAP KINERJA KARYAWAN PT.KURNIA PUTRA MANDIRI MEDAN', 'Shelyn Tanyoto', 'Politeknik It&B', '2020', 'Medan', NULL, '3', '0', '2023-06-03 05:38:03', '2023-06-03 05:38:03'),
(1225, 77, NULL, 63, '18020010012', 'PENGARUH DISIPLIN KERJA TERHADAP KINERJA KARYWAN PT.FAJAR ABADI JAYA PERKASA MEDAN', 'Sirfhanny', 'Politeknik It&B', '2020', 'Medan', NULL, '3', '0', '2023-06-03 05:38:29', '2023-06-03 05:38:29'),
(1226, 77, NULL, 63, '18020010013', 'PENGARUH KOMPENSASI TERHADAP KINERJA KARYAWAN PADA PERUSAHAAN CV.KARYA NUSANTARA', 'Steven Wijaya', 'Politeknik It&B', '2020', 'Medan', NULL, '3', '0', '2023-06-03 05:38:55', '2023-06-03 05:38:55'),
(1227, 77, NULL, 63, '18020010016', 'PENGARUH MOTIVASI KERJA TERHADAP KINERJA KARYAWAN DI CV MITRA WALET', 'Mayshara', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 05:39:21', '2023-06-03 05:39:21'),
(1228, 77, NULL, 63, '18020010017', 'PENGARUH KEBIJAKAN DIVIDEN TERHADAP HARGA SAHAM PADA PERUSAHAAN LQ45 DI BURSA EFEK INDONESIA PERIODE 2016-2019', 'Stefani Forenski', 'Politeknik It&B', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:39:48', '2023-06-03 05:39:48'),
(1229, 78, NULL, 64, '18010010020', 'PENGARUH PENGAWASAN TERHADAP KINERJA GURU DI SEKOLAH MEDAN MULIA', 'Stella', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:40:13', '2023-06-03 05:40:13'),
(1230, 78, NULL, 64, '18010010020', 'PENGARUH PENGAWASAN TERHADAP KINERJA GURU DI SEKOLAH MEDAN MULIA', 'Stella', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:40:39', '2023-06-03 05:40:39'),
(1231, 78, NULL, 64, '19010010001', 'ANALISIS PENGARUH FAKTOR KEBUDAYAAN TERHADAP KEPUTUSAN PEMBELIAN PRODUK DI TOKO ROSITA', 'Amandha Poetry Kusuma', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:41:05', '2023-06-03 05:41:05'),
(1232, 78, NULL, 64, '19010010003', 'PENGARUH KUALITAS PELAYANAN TERHADAP KEPUASAN PELANGGAN DI PT.TOP REMIT', 'Arvin Julius', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:41:32', '2023-06-03 05:41:32');
INSERT INTO `buku` (`id_buku`, `id_kategoribuku`, `id_genrebuku`, `id_rakbuku`, `kodebuku`, `judulbuku`, `author`, `publisher`, `tahun`, `kota`, `fotocoverbuku`, `status_buku`, `status_kategori`, `created_at`, `updated_at`) VALUES
(1233, 78, NULL, 64, '19010010005', 'PENGARUH CITRA MEREK TERHADAP SIKAP PELANGGAN DI TOKO FERY ELEKTRONIK', 'Delvin Felix Chandra', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:41:58', '2023-06-03 05:41:58'),
(1234, 78, NULL, 64, '19010010006', 'DAMPAK LINGKUNGAN KERJA TERHADAP KINERJA STAFF DI SEKOLAH CINTA BUDAYA', 'Dennis Pangestu', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:42:24', '2023-06-03 05:42:24'),
(1235, 78, NULL, 64, '19010010006', 'DAMPAK LINGKUNGAN KERJA TERHADAP KINERJA STAFF DI SEKOLAH CINTA BUDAYA', 'Dennis Pangestu', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:42:51', '2023-06-03 05:42:51'),
(1236, 78, NULL, 64, '19010010008', 'PENGARUH DISIPLIN KERJA TERHADAP KINERJA PEGAWAI DI SEKOLAH DASAR GUANG MING', 'Harison', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:43:17', '2023-06-03 05:43:17'),
(1237, 78, NULL, 64, '19010010009', 'ANALISIS MOTIVASI KERJA TERHADAP PENINGKATAN KERJA KARYAWAN DI PT.WINWIN SOLUSINDO', 'Jesiani Wijaya', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:43:47', '2023-06-03 05:43:47'),
(1238, 78, NULL, 64, '19010010011', 'PENGARUH KOMPENSASI TERHADAP KEPUASAN KERJA KARYAWAN DI CV.JAYA DIESEL', 'Mey Linda Wijaya', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:44:17', '2023-06-03 05:44:17'),
(1239, 78, NULL, 64, '19010010012', 'PENGARUH PROMOSI TERHADAP KEPUTUSAN PEMBELIAN DI TOKOPEDIA (STUDI KASUS PADA MAHASISWA POLITEKNIK UNGGULAN CIPTA MANDIRI)', 'Micheal Fernando', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:44:42', '2023-06-03 05:44:42'),
(1240, 78, NULL, 64, '19010010013', 'ANALISIS PERBEDAAN PERILAKU BELANJA KONSUMEN SEBELUM DAN SESUDAH COVID-19 DI TOKO DEWI', 'Mutiara', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:45:13', '2023-06-03 05:45:13'),
(1241, 78, NULL, 64, '19010010014', 'ANALISIS KEPUASAN PELANGGAN PAPDA CV MANDIRI MAKMUR SENTOSA', 'Novianty', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:45:45', '2023-06-03 05:45:45'),
(1242, 78, NULL, 64, '19010010016', 'PENGARUH KOMUNIKASI KARYAWAN TERHADAP LINGKUNGAN KERJA DI PT.SARI LAUT NELAYAN', 'Peterson Chandra', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:46:12', '2023-06-03 05:46:12'),
(1243, 78, NULL, 64, '19010010018', 'PENGARUH MOTIVASI KERJA TERHADAP KINERJA KARYAWAN PADA PT.RUBBER HOK LIE RANTAU PARAPAT', 'Shelly', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:46:37', '2023-06-03 05:46:37'),
(1244, 78, NULL, 64, '19010010019', 'PENGARUH KUALITAS PRODUK TERHADAP SIKAP PELANGGAN PADA BISNIS HOMEMADE COOKIES MACARON', 'Sinta Kartika', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:47:04', '2023-06-03 05:47:04'),
(1245, 78, NULL, 64, '19010010023', 'PENGARUH SIKAP KARYAWAN TERHADAP CUSTOMER DI TOKO WINA PRATAMA', 'Verawati', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:47:30', '2023-06-03 05:47:30'),
(1246, 78, NULL, 64, '19010020002', 'ANALISIS DAMPAK COVID-19 TERHADAP KINERJA KEUANGAN BANK DI INDONESIA', 'Maria Ester Tripena Lingga', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:47:57', '2023-06-03 05:47:57'),
(1247, 78, NULL, 64, '19010020003', 'PENGARUH RASIO KEUANGAN UKURAN PERUSAHAAN ARUS KAS OPERASI TERHADAP HARGA SAHAM SYARIAH (PADA PERUSAHAAN INDUSTRI MAKANAN DAN MINUMAN PERIODE 2018-2021)', 'Mita Yohana Tinambunan', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:48:23', '2023-06-03 05:48:23'),
(1248, 78, NULL, 64, '19010020005', 'PENGARUH TIME BUDGET PRESSURE DAN RESIKO AUDIT TERHADAP KUALITAS AUDIT PADA KANTOR AKUNTAN PUBLIK DI MEDAN', 'Angeline', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:48:49', '2023-06-03 05:48:49'),
(1249, 78, NULL, 64, '19010020006', 'PENGARUH EPS DAN PERTUMBUHAN PENJUALAN TERHADAP HARGA SAHAM PERUSAHAAN LQ45 YANG TERDAFTAR PADA BEI TAHUN 2018-2020', 'Angeline Ferren', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:49:15', '2023-06-03 05:49:15'),
(1250, 78, NULL, 64, '19010020007', 'ANALISA PENGARUH BIAYA PENYUSUTAN DAN METODE PENYUSUTAN ASET TETAP TERHADAP LABA PADA PERUSAHAAN BANK YANG TERDAFTAR DI BEI TAHUN 2018-2020', 'Anita', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:49:41', '2023-06-03 05:49:41'),
(1251, 78, NULL, 64, '19010020008', 'PENGARUH RASIO LIKUIDITAS DAN PROFITABILITAS TERHADAP HARGA SAHAM', 'Darmadi Setiawan', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:50:08', '2023-06-03 05:50:08'),
(1252, 78, NULL, 64, '19010020011', 'PENGARUH STRESS KERJA DAN MOTIVASI KERJA TERHADAP KINERJA AUDITOR PADA KANTOR AKUNTAN PUBLIK MEDAN', 'Jessica', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:50:33', '2023-06-03 05:50:33'),
(1253, 78, NULL, 64, '19010020012', 'PENGARUH KECERDASAN EMOSIONAL DAN KECERDASAN SPIRITUAL TERHADAP PEMAHAMAN AKUNTANSI', 'Jimi', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:50:59', '2023-06-03 05:50:59'),
(1254, 78, NULL, 64, '19010020014', 'ANALISIS PENGARUH LAPORAN KEUANGAN DALAM MEMPERTIMBANGKAN PEMBERIAN KREDIT PADA PT BANK SUMUT', 'Monica Elisabeth Lingga', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:51:25', '2023-06-03 05:51:25'),
(1255, 78, NULL, 64, '19010020015', 'PENGARUH CURRENT RATIO (CR) DAN DEBT TO EQUITY RATIO (DER) TERHADAP RETURN ON ASSET (ROA) PADA PT.SINAR RAYA PERKASA MEDAN TAHUN 2017-2021', 'Ping Ping', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:51:52', '2023-06-03 05:51:52'),
(1256, 78, NULL, 64, '19010020016', 'PENGARUH TAX PLANNING DAN PROFITABILITAS TERHADAP NILAI PERUSAHAAN PADA PERUSAHAAN REAL ESTATE DAN PROPERTI YANG TERDAFTAR PADA BURSA EFEK INDONESIA TAHUN 2018-2020', 'Sellya Monica Yen', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:52:18', '2023-06-03 05:52:18'),
(1257, 78, NULL, 64, '19010020017', 'ANALISIS HARGA SAHAM TERHADAP PERISTIWA KRISIS PANDEMI COVID-19 DI INDONESIA (STUDI KASUS PADA PERUSAHAAN KESEHATAN DI BURSA EFEK INDONESIA)', 'Shieren Florence', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:52:44', '2023-06-03 05:52:44'),
(1258, 78, NULL, 64, '19010020018', 'PENGARUH PROFITABILITAS DAN KEBIJAKAN DIVIDEN TERHADAP HARGA SAHAM PADA PERUSAHAAN MAKANAN DAN MINUMAN YANG TERDAFTAR DI BEI 2017-2019', 'Tasya Spanic', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:53:10', '2023-06-03 05:53:10'),
(1259, 78, NULL, 64, '19010020019', 'ANALISIS PENGENDALIAN PERSEDIAAN BAHAN BAKU PADA CV KIAN HO MEDAN', 'Winston Susanto', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 05:53:36', '2023-06-03 05:53:36'),
(1260, 77, NULL, 65, '18010010001', 'PENGARUH KEPERCAYAAN MEREK PRODUK TERHADAP LOYALITAS PELANGGAN PADA CV.USAHA JAYA BINJAI', 'Andy Steven', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 05:54:03', '2023-06-03 05:54:03'),
(1261, 77, NULL, 65, '18010010005', 'PENGARUH KOMPETISI DAN HASIL INSENTIF TERHADAP KINERJA KARYAWAN PT.BINTANG PARABOLA', 'Darwin Sulistio', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 05:54:29', '2023-06-03 05:54:29'),
(1262, 77, NULL, 65, '18010010006', 'STRATEGI PENGEMBANGAN USAHA TERHADAP TOKO ROTI CEPAT LARIS', 'Diana Sanchia', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 05:54:55', '2023-06-03 05:54:55'),
(1263, 77, NULL, 65, '18010010007', 'PENGARUH KUALITAS PRODUK TERHADAP KEPUASAN KONSUMEN CV ISTANA BAN', 'Edward Kasim Saputra', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 05:55:21', '2023-06-03 05:55:21'),
(1264, 77, NULL, 65, '18010010008', 'PENGARUH HARGA TERHADAP KEPUTUSAN PEMBELIAN KONSUMEN PADA TOKO MM DECOR', 'Fika Wijaya', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 05:55:47', '2023-06-03 05:55:47'),
(1265, 77, NULL, 65, '18010010010', 'PENGARUH KEPUASAN KERJA TERHADAP KINERJA KARYAWAN CV.LAUTAN BIRU', 'Janecia', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 05:56:13', '2023-06-03 05:56:13'),
(1266, 77, NULL, 65, '18010010011', 'PENGARUH KUALITAS PELAYANAN TERHADAP KEPUASAN PELANGGAN PADA UD.STAR SWALAYAN', 'Jenifer', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 05:56:39', '2023-06-03 05:56:39'),
(1267, 77, NULL, 65, '18010010024', 'PENGARUH MOTIVASI KERJA TERHADAP KINERJA KARYAWAN TOKO VENUS MOTOR', 'Natalia Dewi', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 05:57:05', '2023-06-03 05:57:05'),
(1268, 77, NULL, 65, '18010020001', 'PENGARUH PROFITABILITAS TERHADAP STRUKTUR MODAL PT.SEINDO GLOBAL TRAVEL', 'Goldya Limanjaya', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 05:57:31', '2023-06-03 05:57:31'),
(1269, 77, NULL, 65, '18010020004', 'PENGARUH PROFITABILITAS TERHADAP DEVIDEN PADA TOKO SPAREPART PSJ MOTOR', 'Natasia', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 05:57:57', '2023-06-03 05:57:57'),
(1270, 77, NULL, 65, '18010020005', 'ANALISA PERBANDINGAN PERHITUNGAN PAJAK PENGHASILAN PASAL 21 PT.DJAYA GLOBALINDO SENTOSA', 'Novellin Chandrago', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 05:58:23', '2023-06-03 05:58:23'),
(1271, 77, NULL, 65, '18010020006', 'ANALISI PENGARUH LIKUIDITAS DAN SOLVABILITAS PADA PERUSAHAAN MAKANAN DAN MINUMAN YANG TERDAFTAR DI BURSA EFEK INDONESIA', 'Yanti', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 05:58:49', '2023-06-03 05:58:49'),
(1272, 77, NULL, 65, '18010020007', 'PENGARUH PERTUMBUHAN PENJUALAN TERHADAP PROFITABILITAS PADA MEREK OHK (STUDI KASUS PADA TOKO PSJ)', 'Sherly', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 05:59:15', '2023-06-03 05:59:15'),
(1273, 77, NULL, 65, '18010030002', 'SISTEM INFORMASI PEMASARAN DISTRIBUTOR MAKANAN BERBASIS WEB DI CV.SINAR UNIVERSAL CEMERLANG MEDAN', 'Angel', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 05:59:41', '2023-06-03 05:59:41'),
(1274, 77, NULL, 65, '18010030003', 'PERANCANGAN SISTEM PEMASARAN PRODUK KULIT SEPATU PADA UD.SURYA MAKMUR MEDAN BERBASIS WEB', 'Elizabeth Trixie', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 06:00:06', '2023-06-03 06:00:06'),
(1275, 77, NULL, 65, '18010030004', 'PERANCANGAN SISTEM INFORMASI PENJUALAN BESI DI MITRA AGUNG BERBASIS WEB MEDAN', 'Erwin Tanudjaja', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 06:00:32', '2023-06-03 06:00:32'),
(1276, 77, NULL, 65, '18010030005', 'PERANCANGAN APLIKASI CCTV KOTA MEDAN BERBASIS MOBILE', 'Felix Chandra', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 06:00:58', '2023-06-03 06:00:58'),
(1277, 77, NULL, 65, '18010030007', 'PERANCANGAN SISTEM PEMBELAJARAN ONLINE DENGAN MENGGUNAKAN E-LEARNING DI SMA METHODIST LUBUK PAKAM', 'Joshua', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 06:01:25', '2023-06-03 06:01:25'),
(1278, 77, NULL, 65, '18010030009', 'SISTEM INFORMASI PENJUALAN PRODUK KRUPUK UC.SUMBER MAKMUR KOTA MEDAN BERBASIS WEB', 'Merryana', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 06:01:51', '2023-06-03 06:01:51'),
(1279, 77, NULL, 65, '18010030013', 'PERANCANGAN SISTEM ABSENSI KEHADIRAN MURID LES DI MITTA EDUCATION CENTRE BERBASIS WEB', 'Surya Salim', 'Politeknik It&B', '2021', 'Medan', NULL, '3', '0', '2023-06-03 06:02:18', '2023-06-03 06:02:18'),
(1280, 77, NULL, 66, '19010020005', 'PENGARUH TIME BUDGET PRESSURE DAN RESIKO AUDIT TERHADAP KUALITAS AUDIT PADA KANTOR AKUNTAN PUBLIK DI MEDAN', 'Angeline', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:02:50', '2023-06-03 06:02:50'),
(1281, 77, NULL, 66, '19010020006', 'PENGARUH EPS DAN PERTUMBUHAN PENJUALAN TERHADAP HARGA SAHAM PERUSAHAAN LQ45 YANG TERDAFTAR PADA BEI TAHUN 2018-2020', 'Angeline Ferren', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:03:17', '2023-06-03 06:03:17'),
(1282, 77, NULL, 66, '19010020007', 'ANALISA PENGARUH BIAYA PENYUSUTAN DAN METODE PENYUSUTAN ASET TETAP TERHADAP LABA PADA PERUSAHAAN BANK YANG TERDAFTAR DI BEI TAHUN 2018-2020', 'Anita', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:03:43', '2023-06-03 06:03:43'),
(1283, 77, NULL, 66, '19010020008', 'PENGARUH RASIO LIKUIDITAS DAN PROFITABILITAS TERHADAP HARGA SAHAM', 'Darmadi Setiawan', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:04:09', '2023-06-03 06:04:09'),
(1284, 77, NULL, 66, '19010020011', 'PENGARUH STRESS KERJA DAN MOTIVASI KERJA TERHADAP KINERJA AUDITOR PADA KANTOR AKUNTAN PUBLIK MEDAN', 'Jessica', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:04:36', '2023-06-03 06:04:36'),
(1285, 77, NULL, 66, '19010020012', 'PENGARUH KECERDASAN EMOSIONAL DAN KECERDASAN SPIRITUAL TERHADAP PEMAHAMAN AKUNTANSI', 'Jimi', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:05:02', '2023-06-03 06:05:02'),
(1286, 77, NULL, 66, '19010020014', 'ANALISIS PENGARUH LAPORAN KEUANGAN DALAM MEMPERTIMBANGKAN PEMBERIAN KREDIT PADA PT BANK SUMUT', 'Monica Elisabeth Lingga', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:05:28', '2023-06-03 06:05:28'),
(1287, 77, NULL, 66, '19010020015', 'PENGARUH CURRENT RATIO (CR) DAN DEBT TO EQUITY RATIO (DER) TERHADAP RETURN ON ASSET (ROA) PADA PT.SINAR RAYA PERKASA MEDAN TAHUN 2017-2021', 'Ping Ping', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:05:54', '2023-06-03 06:05:54'),
(1288, 77, NULL, 66, '19010020016', 'PENGARUH TAX PLANNING DAN PROFITABILITAS TERHADAP NILAI PERUSAHAAN PADA PERUSAHAAN REAL ESTATE DAN PROPERTI YANG TERDAFTAR PADA BURSA EFEK INDONESIA TAHUN 2018-2020', 'Sellya Monica Yen', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:06:20', '2023-06-03 06:06:20'),
(1289, 77, NULL, 66, '19010020017', 'ANALISIS HARGA SAHAM TERHADAP PERISTIWA KRISIS PANDEMI COVID-19 DI INDONESIA (STUDI KASUS PADA PERUSAHAAN KESEHATAN DI BURSA EFEK INDONESIA)', 'Shieren Florence', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:06:47', '2023-06-03 06:06:47'),
(1290, 77, NULL, 66, '19010020018', 'PENGARUH PROFITABILITAS DAN KEBIJAKAN DIVIDEN TERHADAP HARGA SAHAM PADA PERUSAHAAN MAKANAN DAN MINUMAN YANG TERDAFTAR DI BEI 2017-2019', 'Tasya Spanic', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:07:14', '2023-06-03 06:07:14'),
(1291, 77, NULL, 66, '19010020019', 'ANALISIS PENGENDALIAN PERSEDIAAN BAHAN BAKU PADA CV KIAN HO MEDAN', 'Winston Susanto', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:07:40', '2023-06-03 06:07:40'),
(1292, 77, NULL, 66, '19010030001', 'PERANCANGAN SISTEM INFORMASI DIAGNOSA KERUSAKAN PADA SEPEDA MOTOR BEBEK NON METIK', 'Aldo Yapto', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:08:06', '2023-06-03 06:08:06'),
(1293, 77, NULL, 66, '19010030004', 'PERANCANGAN SISTEM INFORMASI PENJUALAN SPAREPART HONDA BERBASIS WEBSITE', 'Calvinson', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:08:32', '2023-06-03 06:08:32'),
(1294, 77, NULL, 66, '19010030005', 'PERANCANGAN SISTEM INFORMASI GEOGRAFIS PENCARIAN KULINER VEGETARIAN DI KOTA MEDAN', 'Chandra Saputra', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:08:59', '2023-06-03 06:08:59'),
(1295, 77, NULL, 66, '19010030007', 'PERANCANGAN SISTEM INFORMASI DATA PEMBELIAN DAN PENJUALAN OBAT PADA APOTIK THAMRIN', 'Christopher', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:09:25', '2023-06-03 06:09:25'),
(1296, 77, NULL, 66, '19010030009', 'PERANCANGAN APLIKASI PENGENALAN ALPHABET DAN ANGKA UNTUK ANAK USIA DINI BERBASIS MOBILE', 'Devlin Ryan Mahadi', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:09:52', '2023-06-03 06:09:52'),
(1297, 77, NULL, 66, '19010030011', 'PERANCANGAN SISTEM INFORMASI DATA REKAM MEDIS PENYAKIT KANKER PAYUDARA BERBASIS WEBSITE', 'Fendy Heryanto', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:10:19', '2023-06-03 06:10:19'),
(1298, 77, NULL, 66, '19010030012', 'PERANCANGAN SISTEM INFORMASI ABSENSI KEHADIRAN MAHASISWA BERBASIS WEBSITE MENGGUNAKAN E-KTP DENGAN TEKNOLOGI RFID', 'Handako Gummer', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:10:45', '2023-06-03 06:10:45'),
(1299, 77, NULL, 66, '19010030014', 'PERANCANGAN SISTEM INFORMASI JASA GURU PRIVATE BERBASIS WEBSITE', 'Jeffrey', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:11:12', '2023-06-03 06:11:12'),
(1300, 77, NULL, 66, '19010030015', 'PERANCANGAN E-COMMERCE PADA TOKO BAHAN BANGUNAN JJ JAYA PROPIL BERBASIS WEBSITE', 'Jefri', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:11:39', '2023-06-03 06:11:39'),
(1301, 77, NULL, 66, '19010030016', 'PERANCANGAN SISTEM INFORMASI PEMESANAN PADA RESTORAN BERBASIS WEBSITE', 'Jeslin Tania', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:12:06', '2023-06-03 06:12:06'),
(1302, 77, NULL, 66, '19010030017', 'PERANCANGAN SISTEM INFORMASI PENJUALAN ROTI DAN KUE PADA TOKO BAKERY FRANCE BERBASIS WEB', 'Julia', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:12:33', '2023-06-03 06:12:33'),
(1303, 77, NULL, 66, '19010030019', 'PERANCANGAN APLIKASI BELANJA ONLINE SUPERMARKET BERBASIS MOBILE', 'Kelvin Fernandito', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:13:00', '2023-06-03 06:13:00'),
(1304, 77, NULL, 66, '19010030021', 'PERANCANGAN SISTEM PEMBAYARAN UANG KULIAH ONLINE BERBASIS WEBSITE', 'Michael', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:13:30', '2023-06-03 06:13:30'),
(1305, 77, NULL, 66, '19010030022', 'PERANCANGAN SISTEM INFORMASI PENJUALAN VAPE PADA TOKO HOV BERBASIS WEB', 'Oyvia Van Gogh', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:14:03', '2023-06-03 06:14:03'),
(1306, 77, NULL, 66, '19010030023', 'PERANCANGAN SISTEM INFORMASI PENJUALAN T-SHIRT DAN KEMEJA BERBASIS WEBSITE', 'Ricksen Kuandy', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:14:38', '2023-06-04 07:42:03'),
(1307, 77, NULL, 66, '19010030023', 'PERANCANGAN SISTEM INFORMASI PENJUALAN T-SHIRT DAN KEMEJA BERBASIS WEBSITE', 'Ricksen Kuandy', 'Politeknik Ucm', '2022', 'Medan', NULL, '3', '0', '2023-06-03 06:16:12', '2023-06-04 07:41:34'),
(1317, 49, NULL, 5, 'A1-23-90-90', 'tds', 'asdasdasdasd', 'asd', '2020', 'asd', 'fotocover20230606084931.png', '0', '0', '2023-06-06 01:49:31', '2023-06-06 01:49:31');

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
-- Table structure for table `kategoribuku`
--

CREATE TABLE `kategoribuku` (
  `id_kategoribuku` bigint(20) UNSIGNED NOT NULL,
  `kategoribuku` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoribuku`
--

INSERT INTO `kategoribuku` (`id_kategoribuku`, `kategoribuku`, `created_at`, `updated_at`) VALUES
(41, 'Teknik Komputer', '2023-06-03 01:13:05', '2023-06-03 01:13:05'),
(42, 'Statistika', '2023-06-03 01:13:07', '2023-06-03 01:13:07'),
(43, 'Metode Penelitian', '2023-06-03 01:13:10', '2023-06-03 01:13:10'),
(44, 'Model Pembelajaran', '2023-06-03 01:13:13', '2023-06-03 01:13:13'),
(45, 'Akuntansi', '2023-06-03 01:13:15', '2023-06-03 01:13:15'),
(46, 'Administrasi Bisnis', '2023-06-03 01:13:18', '2023-06-03 01:13:18'),
(47, 'Novel/Cerita/Hiburan', '2023-06-03 01:13:20', '2023-06-03 01:13:20'),
(48, 'Tips/Motivasi', '2023-06-03 01:13:23', '2023-06-03 01:13:23'),
(49, 'Bahasa', '2023-06-03 01:13:26', '2023-06-03 01:13:26'),
(50, 'Tpa/Psikotes', '2023-06-03 01:13:28', '2023-06-03 01:13:28'),
(51, 'Agama Buddha', '2023-06-03 01:13:31', '2023-06-03 01:13:31'),
(52, 'Agama Islam', '2023-06-03 01:13:33', '2023-06-03 01:13:33'),
(53, 'Manajemen', '2023-06-03 01:13:36', '2023-06-03 01:13:36'),
(54, 'Manajemen Perpajakan', '2023-06-03 01:13:39', '2023-06-03 01:13:39'),
(55, 'Manajemen Pemasaran', '2023-06-03 01:13:41', '2023-06-03 01:13:41'),
(56, 'Organisasi', '2023-06-03 01:13:44', '2023-06-03 01:13:44'),
(57, 'Manajemen Bisnis', '2023-06-03 01:13:47', '2023-06-03 01:13:47'),
(58, 'Manajemen Risiko', '2023-06-03 01:13:49', '2023-06-03 01:13:49'),
(59, 'Lembaga Keuangan', '2023-06-03 01:13:52', '2023-06-03 01:13:52'),
(60, 'Sumber Daya Manusia', '2023-06-03 01:13:55', '2023-06-03 01:13:55'),
(61, 'Laporan Keuangan', '2023-06-03 01:13:57', '2023-06-03 01:13:57'),
(62, 'Manajemen Kinerja', '2023-06-03 01:14:00', '2023-06-03 01:14:00'),
(63, 'Pariwisata/Perhotelan', '2023-06-03 01:14:02', '2023-06-03 01:14:02'),
(64, 'Hukum Pidana', '2023-06-03 01:14:05', '2023-06-03 01:14:05'),
(65, 'Hukum', '2023-06-03 01:14:08', '2023-06-03 01:14:08'),
(66, 'Hukum Perdata', '2023-06-03 01:14:10', '2023-06-03 01:14:10'),
(67, 'Teknik Listrik', '2023-06-03 01:14:13', '2023-06-03 01:14:13'),
(68, 'Teknik Mesin', '2023-06-03 01:14:16', '2023-06-03 01:14:16'),
(69, 'Arsitektur', '2023-06-03 01:14:18', '2023-06-03 01:14:18'),
(70, 'Ilmu Pengetahuan Alam', '2023-06-03 01:14:21', '2023-06-03 01:14:21'),
(71, 'Teknik Bangunan', '2023-06-03 01:14:24', '2023-06-03 01:14:24'),
(72, 'Undang-Undang', '2023-06-03 01:14:26', '2023-06-03 01:14:26'),
(73, 'Pendidikan Pancasila', '2023-06-03 01:14:29', '2023-06-03 01:14:29'),
(74, 'Hukum Lainnya', '2023-06-03 01:14:32', '2023-06-03 01:14:32'),
(75, 'Ilmu Sosial Dan Lainnya', '2023-06-03 01:14:34', '2023-06-03 01:14:34'),
(76, 'Ilmu Negara', '2023-06-03 01:14:37', '2023-06-03 01:14:37'),
(77, 'Tugas Akhir', '2023-06-03 01:14:39', '2023-06-03 01:14:39'),
(78, 'Laporan Pkl', '2023-06-03 01:14:42', '2023-06-03 01:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` bigint(20) UNSIGNED NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `nimnidnnip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomortelepon` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `id`, `nimnidnnip`, `nomortelepon`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 2, '20010030010', '082369145333', 'asadsad', '2023-05-29 23:32:05', '2023-05-29 23:32:05'),
(2, 3, '2001039232', '082372836222', 'Jalan Bambu I no 18', '2023-06-04 02:43:28', '2023-06-04 02:43:28'),
(3, 4, '80-232-3333-1', '0823928323', 'Jalan Yos Sudarso no 80', '2023-06-04 02:44:46', '2023-06-04 02:44:46');

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
(1, '2014_02_12_023723_create_password_resets_table', 1),
(2, '2014_02_12_023928_create_users_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_03_11_021612_create_rakbuku_table', 1),
(5, '2023_03_11_031416_create_member_table', 1),
(6, '2023_03_11_033058_create_kategoribuku_table', 1),
(7, '2023_03_11_033150_create_genrebuku_table', 1),
(8, '2023_03_11_033151_create_buku_table', 1),
(9, '2023_03_11_034749_create_peminjaman_table', 1),
(10, '2023_03_18_011611_create_pengembalian_table', 1),
(11, '2023_05_30_052347_add_admin', 2);

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
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` bigint(20) UNSIGNED NOT NULL,
  `id_buku` bigint(20) UNSIGNED NOT NULL,
  `id_member` bigint(20) UNSIGNED NOT NULL,
  `kode_peminjaman` char(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggalpeminjaman` date NOT NULL,
  `catatan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_buku`, `id_member`, `kode_peminjaman`, `tanggalpeminjaman`, `catatan`, `created_at`, `updated_at`) VALUES
(12, 696, 1, 'KP20230604045423', '2023-05-28', 'Pinjam', '2023-06-03 21:54:23', '2023-06-03 21:54:23'),
(13, 610, 1, 'KP20230604045540', '2023-05-21', 'Pinjam', '2023-06-03 21:55:40', '2023-06-03 21:55:40'),
(14, 696, 1, 'KP20230604050723', '2023-06-04', 'pinjam', '2023-06-03 22:07:23', '2023-06-03 22:07:23'),
(15, 696, 1, 'KP20230604051533', '2023-05-14', 'asdad', '2023-06-03 22:15:33', '2023-06-03 22:15:33'),
(16, 696, 1, 'KP20230604094228', '2023-05-14', 'Pinjam', '2023-06-04 02:42:28', '2023-06-04 02:42:28'),
(17, 609, 2, 'KP20230604113842', '2023-06-04', 'Pinjam', '2023-06-04 04:38:42', '2023-06-04 04:38:42'),
(18, 610, 3, 'KP20230604140642', '2023-05-26', 'tes', '2023-06-04 07:06:42', '2023-06-04 07:06:42'),
(19, 696, 3, 'KP20230606084634', '2023-06-06', 'Pinjam', '2023-06-06 01:46:34', '2023-06-06 01:46:34'),
(20, 609, 1, 'KP20230606084711', '2023-05-14', 'Pinjam', '2023-06-06 01:47:11', '2023-06-06 01:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` bigint(20) UNSIGNED NOT NULL,
  `id_peminjaman` bigint(20) UNSIGNED NOT NULL,
  `kode_pengembalian` char(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggalpengembalian` date NOT NULL,
  `jumlahdenda` decimal(20,0) NOT NULL,
  `catatanpengembalian` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id_pengembalian`, `id_peminjaman`, `kode_pengembalian`, `tanggalpengembalian`, `jumlahdenda`, `catatanpengembalian`, `created_at`, `updated_at`) VALUES
(8, 12, 'KB20230604045458', '2023-06-04', '0', 'Kembali', '2023-06-03 21:54:58', '2023-06-03 21:54:58'),
(9, 13, 'KB20230604050706', '2023-06-04', '50000', '50000 denda +', '2023-06-03 22:07:06', '2023-06-03 22:07:06'),
(10, 14, 'KB20230604051522', '2023-06-04', '0', 'te', '2023-06-03 22:15:22', '2023-06-03 22:15:22'),
(11, 15, 'KB20230604051844', '2023-06-04', '35000', 'denda', '2023-06-03 22:18:44', '2023-06-03 22:18:44'),
(12, 16, 'KB20230604142356', '2023-06-04', '35000', 'Kembali - Telat', '2023-06-04 07:23:56', '2023-06-04 07:23:56'),
(13, 17, 'KB20230606084548', '2023-06-06', '0', 'Kembali', '2023-06-06 01:45:48', '2023-06-06 01:45:48'),
(14, 18, 'KB20230606084612', '2023-06-06', '20000', 'Kembali - Denda', '2023-06-06 01:46:12', '2023-06-06 01:46:12'),
(15, 20, 'KB20230606084736', '2023-06-06', '35000', 'Kembali - Denda', '2023-06-06 01:47:36', '2023-06-06 01:47:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_akun` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `status_akun`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$KKcUlPtLWGaI4EMMW9jbAOtqPC79CB67tJtjW7Upkqd5H6D4STtVi', NULL, '0', '2023-05-29 22:20:55', '2023-06-03 00:12:04'),
(2, 'Jeffry', 'jeffry@gmail.com', '$2y$10$A0pFmG882ueIYRJ3iPwwQOQLK90SoBtl0CQX3l4aeL5mc28M6uRA.', NULL, '1', '2023-05-29 23:32:05', '2023-05-29 23:32:05'),
(3, 'Kennedy', 'kenny@gmail.com', '$2y$10$NMpgGmr9hgqDTS/zUc3VLeg3FLi9hB1fyMs2vKvHNMPboF0PVYMZC', NULL, '1', '2023-06-04 02:43:28', '2023-06-04 02:43:28'),
(4, 'Budianto S.A', 'budianto@gmail.com', '$2y$10$yzYlgJjukMY32hDX32PkWON98mtvaC.jOMzwDkPuRWMELiyVyBBzu', NULL, '2', '2023-06-04 02:44:46', '2023-06-04 02:44:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `buku_id_kategoribuku_foreign` (`id_kategoribuku`),
  ADD KEY `buku_id_genrebuku_foreign` (`id_genrebuku`),
  ADD KEY `buku_id_rakbuku_foreign` (`id_rakbuku`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoribuku`
--
ALTER TABLE `kategoribuku`
  ADD PRIMARY KEY (`id_kategoribuku`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD KEY `member_id_foreign` (`id`);

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
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `peminjaman_id_buku_foreign` (`id_buku`),
  ADD KEY `peminjaman_id_member_foreign` (`id_member`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `pengembalian_id_peminjaman_foreign` (`id_peminjaman`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1318;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoribuku`
--
ALTER TABLE `kategoribuku`
  MODIFY `id_kategoribuku` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_id_genrebuku_foreign` FOREIGN KEY (`id_genrebuku`) REFERENCES `genrebuku` (`id_genrebuku`) ON DELETE CASCADE,
  ADD CONSTRAINT `buku_id_kategoribuku_foreign` FOREIGN KEY (`id_kategoribuku`) REFERENCES `kategoribuku` (`id_kategoribuku`) ON DELETE CASCADE,
  ADD CONSTRAINT `buku_id_rakbuku_foreign` FOREIGN KEY (`id_rakbuku`) REFERENCES `rakbuku` (`id_rakbuku`) ON DELETE CASCADE;

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_id_buku_foreign` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`) ON DELETE CASCADE,
  ADD CONSTRAINT `peminjaman_id_member_foreign` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`) ON DELETE CASCADE;

--
-- Constraints for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `pengembalian_id_peminjaman_foreign` FOREIGN KEY (`id_peminjaman`) REFERENCES `peminjaman` (`id_peminjaman`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
