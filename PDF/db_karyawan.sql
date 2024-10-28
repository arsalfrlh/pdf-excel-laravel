-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Okt 2024 pada 10.27
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_karyawan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_28_080926_create_pegawais_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `tbl_pegawai`
--

CREATE TABLE `tbl_pegawai` (
  `id_karyawan` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_pegawai`
--

INSERT INTO `tbl_pegawai` (`id_karyawan`, `nama`, `email`, `alamat`, `telepon`, `pekerjaan`, `created_at`, `updated_at`) VALUES
(1, 'Tri Aris Maulana', 'sudiati.alambana@yahoo.co.id', 'Dk. Juanda No. 703, Pekalongan 76725, NTT', '0872 0594 245', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33'),
(2, 'Mutia Farida', 'puspita.halima@suryatmi.web.id', 'Ki. Dr. Junjunan No. 644, Pariaman 48532, Kalsel', '0788 9881 563', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33'),
(3, 'Bakda Prakasa S.IP', 'setiawan.dinda@sihombing.biz', 'Psr. Orang No. 946, Parepare 21775, Kaltara', '0666 3756 835', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33'),
(4, 'Laras Mulyani S.Psi', 'panji.pradana@gmail.com', 'Dk. Ahmad Dahlan No. 318, Sorong 77175, Sumut', '(+62) 842 0723 1532', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33'),
(5, 'Suci Wastuti', 'bakiadi.wijayanti@maryadi.in', 'Dk. Hang No. 57, Probolinggo 18752, Sulsel', '(+62) 450 0841 373', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33'),
(6, 'Sadina Oliva Usamah', 'suryono.silvia@wibisono.co', 'Gg. Ters. Buah Batu No. 45, Administrasi Jakarta Selatan 43790, NTB', '0930 9619 7308', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33'),
(7, 'Gadang Natsir S.Farm', 'candrakanta.oktaviani@purwanti.biz.id', 'Gg. Jamika No. 366, Langsa 39428, Kepri', '(+62) 322 9761 0401', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33'),
(8, 'Ibrani Vega Hidayat M.TI.', 'dpertiwi@gmail.co.id', 'Ds. Pattimura No. 583, Cimahi 22668, Jabar', '0844 7964 779', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33'),
(9, 'Emin Najam Natsir S.IP', 'dono58@gmail.com', 'Jln. Cut Nyak Dien No. 803, Kotamobagu 66235, Jambi', '0335 5333 5836', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33'),
(10, 'Bakiman Saragih', 'artanto.purnawati@prayoga.biz', 'Dk. Bagonwoto  No. 298, Parepare 16951, Aceh', '(+62) 709 4813 148', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33'),
(11, 'Bella Puspasari', 'pudjiastuti.jelita@simanjuntak.biz', 'Jr. Raya Ujungberung No. 235, Administrasi Jakarta Pusat 61760, Papua', '(+62) 409 6456 218', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33'),
(12, 'Banara Hutagalung', 'kardi39@lailasari.biz.id', 'Ds. Camar No. 726, Samarinda 23312, Sultra', '0679 1830 4506', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33'),
(13, 'Ikhsan Makuta Mustofa', 'rina.laksmiwati@gmail.com', 'Gg. Adisumarmo No. 274, Sungai Penuh 39706, Malut', '023 4461 665', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33'),
(14, 'Eka Lutfan Nashiruddin', 'inababan@prasetyo.id', 'Jln. Sugiyopranoto No. 133, Manado 23457, Sultra', '0643 3059 446', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33'),
(15, 'Salsabila Astuti', 'cahyo03@pertiwi.co', 'Psr. Jambu No. 697, Administrasi Jakarta Utara 62584, Lampung', '0588 4214 5715', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33'),
(16, 'Siti Hassanah M.Farm', 'pangestu.lazuardi@yahoo.co.id', 'Kpg. Yogyakarta No. 130, Bukittinggi 26783, Lampung', '0960 3465 940', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33'),
(17, 'Talia Astuti', 'irfan.setiawan@gmail.com', 'Ds. Bata Putih No. 13, Tegal 58522, Malut', '0833 0494 437', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33'),
(18, 'Ajimat Simbolon', 'tania.rahayu@permadi.desa.id', 'Ki. Ronggowarsito No. 34, Salatiga 38274, Papua', '(+62) 844 0662 299', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33'),
(19, 'Winda Astuti S.T.', 'gpranowo@namaga.my.id', 'Gg. Barat No. 709, Pariaman 36979, Kepri', '021 6704 8965', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33'),
(20, 'Dinda Maida Pratiwi', 'wani45@yahoo.com', 'Gg. Bagas Pati No. 567, Palangka Raya 19305, Kalbar', '(+62) 28 0539 436', 'karyawan', '2024-10-28 01:25:33', '2024-10-28 01:25:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  MODIFY `id_karyawan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
