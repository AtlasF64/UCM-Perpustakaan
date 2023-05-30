-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 05:50 PM
-- Server version: 10.4.17-MariaDB
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
  `id_kategoribuku` bigint(20) UNSIGNED NOT NULL,
  `kodebuku` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judulbuku` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fotocoverbuku` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_buku` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_kategori` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `id_kategoribuku`, `kodebuku`, `judulbuku`, `author`, `publisher`, `tahun`, `kota`, `fotocoverbuku`, `status_buku`, `status_kategori`, `created_at`, `updated_at`) VALUES
(58, 11, 'A1-TK-01-21', 'MEMBANGUN APLIKASI DENGAN ANDROID FLUTTER', 'NAZRUDDIN SAFAAT H,M.T.', 'INFORMATIKA', '2021', 'BANDUNG', 'fotocover20230507094131.jpeg', '0', '0', '2023-05-07 02:41:31', '2023-05-14 08:47:38'),
(59, 1, 'A8-TK-06-14', 'PEMROGRAMAN WEB PHP', 'BETHA SIDIK', 'INFORMATIKA', '2014', 'BANDUNG', 'fotocover20230514025043.jpg', '0', '0', '2023-05-13 19:50:43', '2023-05-14 10:16:54'),
(60, 1, 'A1-TK-03-21', 'PEMROGRAMAN BERBASI WEB HTML,PHP 7,MySQLi,DAN BOOTSRAP 4', 'INDRA STYAWANTORO,AGUS KOMARUDIN,S.Kom,M.T.I', 'LAKEISHA', '2021', 'BOYOLALI', 'fotocover20230516022227.jpg', '0', '0', '2023-05-15 19:22:27', '2023-05-15 19:22:27'),
(61, 1, 'A1-TK-06-22', 'PANDUAN LENGKAP TEORI& PRAKTIK ARDUINO', 'OSCAR RACHMAN', 'ANDI', '2022', 'YOGYAKARTA', 'fotocover20230516033339.jpg', '0', '0', '2023-05-15 20:33:39', '2023-05-15 20:33:39'),
(62, 1, 'A1-TK-10-21', 'BELAJAR CODING ITU PENTING DI ERA REVOLUSI INDUSTRI 4.0', 'YENI MULYANI', 'PUSTAKA BARU PRESS', '2021', 'YOGYAKARTA', 'fotocover20230516033845.jpg', '0', '0', '2023-05-15 20:38:45', '2023-05-15 20:38:45'),
(63, 2, 'A10-ST-08-16', 'SPSS HANDBOOK ANALISIS DATA,OLAH DATA & PENYELESAIAN KASUS-KASUS STATISTIK', 'DUWI PRIYANTO', 'MEDIAKOM', '2016', 'JAKARTA', 'fotocover20230516034010.jpg', '0', '0', '2023-05-15 20:40:10', '2023-05-15 20:40:10'),
(64, 2, 'A10-ST-12-84', 'METODE STATISTIKA', 'PROF.DR.SUDJANA M.A.,M.SC', 'TARSITO', '1984', 'BANDUNG', 'fotocover20230516034126.jpg', '0', '0', '2023-05-15 20:41:26', '2023-05-15 20:41:26'),
(65, 1, 'A1-TK-12-22', 'MENGEKPLORASI FUNGSI VLOOKUP,HLOOKUP&LOOKUP EXCEL', 'YUDHI WICAKSONO & SOLUSI KANTOR', 'ELEXMEDIA KOMPUTINDO', '2022', 'JAKARTA', 'fotocover20230516034321.jpg', '0', '0', '2023-05-15 20:43:21', '2023-05-15 20:43:21'),
(66, 1, 'A1-TK-05-20', 'MICROSOFT EXCEL ITU MUDAH', 'IBNU TEGUH WIBOWO', 'START UP', '2020', 'YOGYAKARTA', 'fotocover20230516034443.jpg', '0', '0', '2023-05-15 20:44:43', '2023-05-15 20:44:43'),
(67, 3, 'A11-MP-12-20', 'MENULIS KARYA ILMIAH', 'DR.H.DALMAN,M.Pd.', 'PT.RAJAGRAFINDO PERSADA', '2014', 'JAKARTA', 'fotocover20230516132104.jpg', '0', '0', '2023-05-16 06:21:04', '2023-05-16 06:21:04');

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
(1, 'TEKNIK KOMPUTER', '2023-03-24 23:17:32', '2023-03-24 23:17:32'),
(2, 'STATISTIKA', '2023-03-24 22:47:58', '2023-03-24 22:47:58'),
(3, 'METODE PENELITIAN', '2023-03-24 22:48:00', '2023-03-24 22:48:00'),
(4, 'MODEL PEMBELAJARAN', '2023-03-24 22:48:03', '2023-03-24 22:48:03'),
(5, 'AKUNTANSI', '2023-03-24 22:48:05', '2023-03-24 22:48:05'),
(6, 'ADMINISTRASI BISNIS', '2023-03-24 22:48:08', '2023-03-24 22:48:08'),
(7, 'NOVEL/CERITA/HIBURAN', '2023-03-24 22:48:10', '2023-03-24 22:48:10'),
(8, 'TIPS/MOTIVASI', '2023-03-24 22:48:12', '2023-03-24 22:48:12'),
(9, 'BAHASA', '2023-03-24 22:48:15', '2023-03-24 22:48:15'),
(10, 'TPA/PSIKOTES', '2023-03-24 22:48:17', '2023-03-24 22:48:17'),
(11, 'AGAMA BUDDHA', '2023-03-24 22:48:20', '2023-03-24 22:48:20'),
(12, 'AGAMA ISLAM', '2023-03-24 22:48:22', '2023-03-24 22:48:22'),
(13, 'MANAJEMEN', '2023-03-24 22:48:25', '2023-03-24 22:48:25'),
(14, 'MANAJEMEN PERPAJAKAN', '2023-03-24 22:48:27', '2023-03-24 22:48:27'),
(15, 'MANAJEMEN PEMASARAN', '2023-03-24 22:48:29', '2023-03-24 22:48:29'),
(16, 'ORGANISASI', '2023-03-24 22:48:32', '2023-03-24 22:48:32'),
(17, 'MANAJEMEN BISNIS', '2023-03-24 22:48:34', '2023-03-24 22:48:34'),
(18, 'MANAJEMEN RISIKO', '2023-03-24 22:48:37', '2023-03-24 22:48:37'),
(19, 'LEMBAGA KEUANGAN', '2023-03-24 22:48:39', '2023-03-24 22:48:39'),
(20, 'SUMBER DAYA MANUSIA', '2023-03-24 22:48:42', '2023-03-24 22:48:42'),
(21, 'LAPORAN KEUANGAN', '2023-03-24 22:48:44', '2023-03-24 22:48:44'),
(22, 'MANAJEMEN KINERJA', '2023-03-24 22:48:47', '2023-03-24 22:48:47'),
(23, 'PARIWISATA/PERHOTELAN', '2023-03-24 22:48:49', '2023-03-24 22:48:49'),
(24, 'HUKUM PIDANA', '2023-03-24 22:48:51', '2023-03-24 22:48:51'),
(25, 'HUKUM', '2023-03-24 22:48:54', '2023-03-24 22:48:54'),
(26, 'HUKUM PERDATA', '2023-03-24 22:48:56', '2023-03-24 22:48:56'),
(27, 'TEKNIK LISTRIK', '2023-03-24 22:48:59', '2023-03-24 22:48:59'),
(28, 'TEKNIK MESIN', '2023-03-24 22:49:01', '2023-03-24 22:49:01'),
(29, 'ARSITEKTUR', '2023-03-24 22:49:04', '2023-03-24 22:49:04'),
(30, 'ILMU PENGETAHUAN ALAM', '2023-03-24 22:49:06', '2023-03-24 22:49:06'),
(31, 'TEKNIK BANGUNAN', '2023-03-24 22:49:09', '2023-03-24 22:49:09'),
(32, 'UNDANG-UNDANG', '2023-03-24 22:49:11', '2023-03-24 22:49:11'),
(33, 'PENDIDIKAN PANCASILA', '2023-03-24 22:49:14', '2023-03-24 22:49:14'),
(34, 'HUKUM LAINNYA', '2023-03-24 22:49:16', '2023-03-24 22:49:16'),
(35, 'ILMU SOSIAL DAN LAINNYA', '2023-03-24 22:49:18', '2023-03-24 22:49:18'),
(36, 'ILMU NEGARA', '2023-03-24 22:49:21', '2023-03-24 22:49:21'),
(37, 'TUGAS AKHIR', '2023-03-24 22:49:23', '2023-03-24 22:49:23'),
(38, 'LAPORAN PKL', '2023-03-24 22:49:26', '2023-03-24 22:49:26');

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
(3, 2, '20010030010', '082369145220', 'Jln Ujung', '2023-03-29 04:33:22', '2023-05-15 09:11:10');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_03_11_031416_create_member_table', 1),
(5, '2023_03_11_033058_create_kategoribuku_table', 1),
(6, '2023_03_11_033151_create_buku_table', 1),
(7, '2023_03_11_034749_create_peminjaman_table', 1),
(13, '2023_03_18_011611_create_pengembalian_table', 2);

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
  `tanggalpeminjaman` date NOT NULL,
  `kode_peminjaman` char(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_buku`, `id_member`, `tanggalpeminjaman`, `kode_peminjaman`, `catatan`, `created_at`, `updated_at`) VALUES
(4, 58, 3, '2023-05-14', 'KP20230514151133', NULL, '2023-05-14 08:11:33', '2023-05-14 08:11:33'),
(6, 59, 3, '2023-05-14', 'KP20230514164000', NULL, '2023-05-14 09:40:00', '2023-05-14 09:40:00');

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
(3, 4, 'KB20230514154738', '2023-05-14', '0', NULL, '2023-05-14 08:47:38', '2023-05-14 08:47:38'),
(5, 6, 'KB20230514171654', '2023-05-15', '0', NULL, '2023-05-14 10:16:54', '2023-05-14 10:16:54');

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
(1, 'admin', 'admin@admin.com', '$2y$10$KlDUPITPJ/gq3/B2u3xf3.DNgqIpyDGmjqy8rKZg5If8xeuv8/7NK', NULL, '0', '2023-03-24 22:41:01', '2023-05-15 08:56:11'),
(2, 'Jeffry', 'jeffry@gmail.com', '$2y$10$KlDUPITPJ/gq3/B2u3xf3.DNgqIpyDGmjqy8rKZg5If8xeuv8/7NK', NULL, '1', '2023-03-29 04:33:22', '2023-05-15 09:11:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `buku_id_kategoribuku_foreign` (`id_kategoribuku`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoribuku`
--
ALTER TABLE `kategoribuku`
  MODIFY `id_kategoribuku` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_id_kategoribuku_foreign` FOREIGN KEY (`id_kategoribuku`) REFERENCES `kategoribuku` (`id_kategoribuku`) ON DELETE CASCADE;

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
