-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Apr 2020 pada 23.09
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pts`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jawaban`
--

CREATE TABLE `jawaban` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_pertanyaan` int(11) NOT NULL,
  `jawaban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jawaban`
--

INSERT INTO `jawaban` (`id`, `id_pertanyaan`, `jawaban`, `user_id`, `created_at`, `updated_at`) VALUES
(113, 1, 'ya', 4, NULL, NULL),
(114, 2, 'ya', 4, NULL, NULL),
(115, 3, 'ya', 4, NULL, NULL),
(116, 4, 'ya', 4, NULL, NULL),
(117, 5, 'ya', 4, NULL, NULL),
(118, 6, 'ya', 4, NULL, NULL),
(119, 7, 'ya', 4, NULL, NULL),
(120, 8, 'ya', 4, NULL, NULL),
(121, 9, 'ya', 4, NULL, NULL),
(122, 10, 'ya', 4, NULL, NULL),
(123, 11, 'ya', 4, NULL, NULL),
(124, 12, 'ya', 4, NULL, NULL),
(125, 13, 'ya', 4, NULL, NULL),
(126, 14, 'ya', 4, NULL, NULL),
(127, 15, 'ya', 4, NULL, NULL),
(128, 16, 'ya', 4, NULL, NULL),
(129, 17, 'ya', 4, NULL, NULL),
(130, 18, 'ya', 4, NULL, NULL),
(131, 19, 'ya', 4, NULL, NULL),
(132, 20, 'ya', 4, NULL, NULL),
(133, 21, 'ya', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_04_10_150318_create_luarrumah_table', 1),
(4, '2020_04_10_162651_create_pertanyaan_table', 2),
(5, '2020_04_14_010709_create_jawaban_table', 3),
(6, '2020_04_14_011035_create_jawaban_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pertanyaan`
--

INSERT INTO `pertanyaan` (`id`, `pertanyaan`, `created_at`, `updated_at`) VALUES
(1, 'Saya pergi keluar rumah ?', '2020-04-01 17:00:00', '2020-04-01 17:00:00'),
(2, 'Saya menggunakan Transportasi umum ? (online,angkot, bus, taksi, kereta api)', '2020-03-31 17:00:00', '2020-04-01 17:00:00'),
(3, 'Saya tidak memakai masker pada saat berkumpul dengan orang lain ?', '2020-01-01 17:00:00', '2019-12-30 17:00:00'),
(4, 'Saya berjabat dengan orang lain?', '2019-12-31 17:00:00', '2019-12-30 17:00:00'),
(5, 'Saya tidak membersihkan tangan dengan hand sanitizer/tissue basah sebelum pegang\r\n    Kemudi mobil/motor.', '2019-12-31 17:00:00', '2019-12-30 17:00:00'),
(6, 'Saya menyentuh benda/uang yang juga disentuh orang lain.', '2019-12-31 17:00:00', '2020-01-07 17:00:00'),
(7, ' Saya tidak menjaga jarak 1,5 meter dengan orang lain ketika : belanja, bekerja, belajar, \r\n    Ibadah. \r\n', '2019-12-31 17:00:00', '2019-12-30 17:00:00'),
(8, 'Saya makan diluar rumah (warung/restaurant)', '2019-12-31 17:00:00', '2020-01-07 17:00:00'),
(9, 'Saya tidak minum hangat & cuci tangan dengan sabun setelah tiba di tujuan. ', '2019-12-31 17:00:00', '2020-01-07 17:00:00'),
(10, 'Saya berada di wilayah kelurahan tempat pasien tertular.', '2019-12-31 17:00:00', '2019-12-30 17:00:00'),
(11, 'Saya tidak pasang hand sanitizer di depan pintu masuk, untuk bersihkan tangan\r\n     Sebelum pegang gagang (handle) pintu masuk rumah. \r\n', '2019-12-31 17:00:00', '2019-12-30 17:00:00'),
(12, 'Saya tidak mencuci tangan dengan sabun setelah tiba di rumah. ', '2020-01-01 17:00:00', '2019-12-30 17:00:00'),
(13, 'Saya tidak menyediakan : tissue basah/antiseptic, masker, sabun antiseptic bagi \r\n      Keluarga dirumah. \r\n', '2019-12-31 17:00:00', '2019-12-30 17:00:00'),
(14, 'Saya tidak segera merendam baju & celana bekas pakai di luar rumah kedalam air \r\n      Panas/sabun. \r\n', '2019-12-31 17:00:00', '2019-12-30 17:00:00'),
(15, 'Saya tidak segera mandi keramas setelah saya tiba dirumah.', '2019-12-31 17:00:00', '2019-12-30 17:00:00'),
(16, 'Saya tidak mensosialisasikan check list penilaian resiko pribadi ini kepada keluarga \r\n      Dirumah. \r\n', '2019-12-31 17:00:00', '2020-01-07 17:00:00'),
(17, 'Saya dalam sehari tidak kena cahaya matahari minimal 15 menit.', '2019-12-31 17:00:00', '2019-12-30 17:00:00'),
(18, 'Saya tidak jalan kaki/berolahraga minimal 30 menit setiap hari.', '2019-12-23 17:00:00', '2020-01-07 17:00:00'),
(19, 'Saya jarang minum vitamin C & E, dan kurang tidur. ', '2019-12-31 17:00:00', '2020-01-07 17:00:00'),
(20, '. Usia saya diatas 60 tahun.', '2019-12-31 17:00:00', '2019-12-30 17:00:00'),
(21, 'Saya mempunyai penyakit : jantung/diabetes/gangguan pernafasan kroni.', '2019-12-31 17:00:00', '2019-12-30 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ibrahim surya kelana', 'ibrahimsurya618@gmail.com', NULL, '$2y$10$Z3.vQT9MM0hCazmw3xK7n..DZOeAQzij478qapMh3/oKr0mKRnLlG', NULL, '2020-04-14 07:13:58', '2020-04-14 07:13:58'),
(2, 'Dezanihaikal', 'dezanihaikal@gmail.com', NULL, '$2y$10$0jyiQhCZiveMkXLEmlwVgOUFqnVIZpnFYbNSoXOE5XH.qNM5gaMVq', NULL, '2020-04-14 07:37:08', '2020-04-14 07:37:08'),
(3, 'siti eka nurmala fitri', 'iba@gmail.com', NULL, '$2y$10$f0.BFg.XJnH/ucKQSBiwVODAM9eMME8d7wH1CB6YgwoNbkzqWbtcS', NULL, '2020-04-14 07:44:08', '2020-04-14 07:44:08'),
(4, 'iba', 'rohim@gmail.com', NULL, '$2y$10$lSOUrD1tZZGWr5wNlvslS.jJEzjb3yP5H2QaixMtlFM1Z9W29U6Fu', NULL, '2020-04-15 12:42:15', '2020-04-15 12:42:15');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pertanyaan` (`id_pertanyaan`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  ADD CONSTRAINT `jawaban_ibfk_1` FOREIGN KEY (`id_pertanyaan`) REFERENCES `pertanyaan` (`id`),
  ADD CONSTRAINT `jawaban_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
