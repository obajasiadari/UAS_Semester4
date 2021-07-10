-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2021 at 07:56 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obaja_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(5) NOT NULL,
  `nama_karyawan` varchar(50) NOT NULL,
  `tempat_tinggal` varchar(50) NOT NULL,
  `gaji_karyawan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `tempat_tinggal`, `gaji_karyawan`) VALUES
(1, 'Kavod', 'Pesona Asri', 10000000),
(2, 'Obaja', 'Marbella Residence', 12000000),
(3, 'Richard', 'Kengan Hill', 190000),
(6, 'Thomas', 'Ibelieve', 190000),
(7, 'Bianca', 'Luminous Vilee', 12300040),
(10, 'Gallon', 'Birma', 187003000),
(12, 'Richard', 'Hollywood St', 187003000),
(16, 'Leon', 'Swiming Lake', 22330000),
(17, 'Thomas', 'Hollywood St', 9056000);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` varchar(50) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `kuantitas_terjual` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_produk`, `kuantitas_terjual`, `nama_pelanggan`) VALUES
('PN0001', 12001, 90, 'Jig Jaw'),
('PN0002', 12002, 84, 'Rich man');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` text NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `stok_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `stok_barang`) VALUES
(12001, 'Choco chips 200 gr', 10000, 897),
(12002, 'Royal Jelly Honey 600 gr', 90000, 402),
(12004, 'Oreo Milkshake', 8000, 9001002),
(12005, 'Susu Streil', 9000, 200),
(12006, 'Chitatos 200 ml', 14000, 187);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(6, 'Obaja Christison Siadari', 'obajasiadari@gmail.com', 'default.jpg', '$2y$10$7pD/1M0TZaFc4BVkNBcjreeFBXmNK5S3Tgvkm47GrWj3.TJsaDTC2', 2, 1, 1621959996),
(7, 'Obaja Christison Siadari', 'obajasiadari1@gmail.com', 'default.jpg', '$2y$10$ZrlUjDNyo9u/KMmIde5tJ.AFXYaMTA6G7B4vaR8oYLJPV7Ob72Cie', 2, 1, 1624381264),
(8, 'admin', 'admin@gmail.com', 'default.jpg', '$2y$10$sEHQBmyjhaxwMiQY11ocKO5IlPSEcsOyWpzRT//he7bZFzyiVfL3G', 2, 1, 1625753507),
(9, 'Wicky', 'wicky12@gmail.com', 'default.jpg', '$2y$10$Q9jrwFpnQYvlTf0923fd8.o009lKSbZjzdZf5olEyfc2U2Psep3F.', 2, 1, 1625809441);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `nama_produk` (`id_produk`),
  ADD KEY `nama_pelanggan` (`nama_pelanggan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12007;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
