-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Feb 2023 pada 14.29
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gainaloe`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `coupencodes`
--

CREATE TABLE `coupencodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `validfrom` varchar(255) NOT NULL,
  `validupto` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(3, '2021_02_20_194346_create_products_table', 1),
(4, '2021_02_26_165458_create_orders_table', 1),
(5, '2021_03_05_064539_create_coupencodes_table', 1),
(6, '2021_03_05_113739_create_transactions_table', 1),
(7, '2021_11_04_162451_create_newsletter_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `newsletter`
--

CREATE TABLE `newsletter` (
  `sno` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Customer_Emailid` varchar(255) NOT NULL,
  `Delivery_Address` varchar(255) NOT NULL,
  `Order_Details` varchar(255) NOT NULL,
  `Coupen_Code` double(8,2) DEFAULT NULL,
  `Amount` double(8,2) NOT NULL,
  `paymentmode` varchar(255) NOT NULL,
  `Shipping_Status` varchar(255) NOT NULL DEFAULT 'pending',
  `Delivery_Status` varchar(255) NOT NULL DEFAULT 'pending',
  `Order_Cancel_Status` tinyint(4) NOT NULL DEFAULT 0,
  `Order_Cancelled_On` varchar(255) DEFAULT NULL,
  `p_status` varchar(255) NOT NULL DEFAULT 'pending',
  `p_status_Updated_By` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `priority` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `delivery_charges` int(11) DEFAULT NULL,
  `additional_info` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `priority`, `name`, `description`, `url`, `rating`, `price`, `discount`, `image1`, `image2`, `image3`, `image4`, `title`, `keywords`, `meta_description`, `status`, `delivery_charges`, `additional_info`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dusbin', 'A waste container is a container for temporarily storing waste, and is usually made out of metal or plastic. Some common terms are dustbin, garbage can, and trash can.', 'Dusbin', 1, 1500, 10, 'Dusbin-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2', 10, '<div><br></div>', '2021-11-12 11:26:16', '2023-02-04 06:16:37'),
(2, 2, 'Flowers and Fruits Basket Set', 'A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants The biological function of a flower is to facilitateA flower, sometimes', 'Flowers-Fruits-Basket-Set', 1, 2500, NULL, 'Flowers-Fruits-Basket-Set-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 10, '<div><font color=\"#008000\" face=\"Arial Black\"><span style=\"font-size: 24px; background-color: rgb(242, 242, 242);\"><b>Festivel Offer 10%</b></span></font><br></div>', '2021-11-12 11:34:47', '2021-11-12 11:34:47'),
(3, 3, 'Mat', 'A Piece of material used as a floor or seat covering or in front of a door to wipe the shoes on. 2 : a decorative piece of material used under dishes or vases. 3 : a pad or cushion for gymnastic', 'Mat', 1, 850, 5, 'Mat-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 10, '<div><font color=\"#008000\" face=\"Arial Black\"><span style=\"font-size: 24px;\"><b>Festivel Offer 5%</b></span></font><br></div>', '2021-11-12 11:36:21', '2021-11-12 11:36:47'),
(4, 4, 'Containers', 'Containers give developers the ability to create predictable environments that are isolated from other applications.', 'Containers', 1, 350, NULL, 'Containers-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 50, '<div><br></div>', '2021-11-12 11:37:56', '2021-11-12 11:37:56'),
(5, 5, 'Dusbin', 'A waste container is a container for temporarily storing waste, and is usually made out of metal or plastic. Some common terms are dustbin, garbage can, and trash can.', 'Dusbin', 2, 1500, 50, 'Dusbin-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 10, '<div><font color=\"#008000\" face=\"Arial Black\"><span style=\"font-size: 24px;\"><b>Festivel Offer 50%</b></span></font><br></div>', '2021-11-12 11:26:16', '2021-11-12 11:32:40'),
(6, 6, 'Flowers and Fruits Basket Set', 'A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants The biological function of a flower is to facilitateA flower, sometimes', 'Flowers-Fruits-Basket-Set', 2, 2500, NULL, 'Flowers-Fruits-Basket-Set-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 10, '<div><font color=\"#008000\" face=\"Arial Black\"><span style=\"font-size: 24px; background-color: rgb(242, 242, 242);\"><b>Festivel Offer 10%</b></span></font><br></div>', '2021-11-12 11:34:47', '2021-11-12 11:34:47'),
(7, 7, 'Mat', 'A Piece of material used as a floor or seat covering or in front of a door to wipe the shoes on. 2 : a decorative piece of material used under dishes or vases. 3 : a pad or cushion for gymnastic', 'Mat', 2, 850, 5, 'Mat-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 10, '<div><font color=\"#008000\" face=\"Arial Black\"><span style=\"font-size: 24px;\"><b>Festivel Offer 5%</b></span></font><br></div>', '2021-11-12 11:36:21', '2021-11-12 11:36:47'),
(8, 8, 'Containers', 'Containers give developers the ability to create predictable environments that are isolated from other applications.', 'Containers', 1, 350, NULL, 'Containers-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 50, '<div><br></div>', '2021-11-12 11:37:56', '2021-11-12 11:37:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TXNID` varchar(255) NOT NULL,
  `Oder_No` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `mnumber` varchar(255) DEFAULT NULL,
  `alternativemno` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `status` varchar(255) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `image`, `address1`, `address2`, `city`, `pincode`, `state`, `country`, `mnumber`, `alternativemno`, `password`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Vijayanagaram Rahul', 'rahulvijayanagaram@gmail.com', NULL, '1636046011.jpg', '18-1-265', 'fdcv', 'Anantapur', '515001', 'Andhra Pradesh', 'India', '9177889021', NULL, '$2y$10$MXBqo32Xo3zroC3qzdijLOLRJRtExrQhunD73N6DhTpI7uQIoN76O', 'admin', '1', NULL, '2021-11-04 11:09:03', '2021-11-12 11:09:54'),
(2, 'user', 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zFw/aYIyP3dKFOG4lL.3tOqOGPB5Pjfyl30PC6zloreP80ap81rTm', 'user', '1', NULL, '2023-02-04 01:29:43', '2023-02-04 01:29:43'),
(3, 'admin123', 'admin123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$rNAoVaIzdwX9DXjllJkGvuprKaQGBi2mrstLcvRI.VBGolLpNxksi', 'admin', '1', NULL, '2023-02-04 01:56:11', '2023-02-04 01:57:43'),
(4, 'user1234', 'user1234@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZskuLVJiNnKS5Rr2XP9cWO0oSenugXjI4SNvl46cCziB78EazbCT2', 'user', '1', NULL, '2023-02-04 02:51:20', '2023-02-04 02:51:20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `coupencodes`
--
ALTER TABLE `coupencodes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`sno`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
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
-- AUTO_INCREMENT untuk tabel `coupencodes`
--
ALTER TABLE `coupencodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `sno` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
