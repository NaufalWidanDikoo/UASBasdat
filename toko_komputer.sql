-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 02:41 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_komputer`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga_barang` int(255) NOT NULL,
  `stok_barang` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga_barang`, `stok_barang`) VALUES
(1, 'ASUS TUF Gaming FX505DY', 4000000, 10),
(2, 'ASUS VivoBook 14 A412FA', 3200000, 15),
(3, 'HP Pavilion x360', 6000000, 10),
(4, 'Apple Macbook Pro 13', 3000000, 10),
(5, 'Acer Nitro 5', 2400000, 10),
(6, 'ASUS X450C', 5000000, 10),
(7, 'ASUS ROG Zephyrus G14', 3000000, 10),
(8, 'Acer Aspire 5 A514-52G', 2700000, 10),
(9, 'ASUS ROG Zephyrus Duo 15 SE', 9800000, 5),
(10, 'Asus VivoBook A412DA', 4400000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `id_detail` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah_transaksi` int(50) NOT NULL,
  `harga_barang` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`id_detail`, `id_transaksi`, `id_barang`, `jumlah_transaksi`, `harga_barang`) VALUES
(1, 1, 1, 10, 4000000),
(2, 2, 2, 15, 3200000),
(3, 3, 3, 10, 6000000),
(4, 4, 4, 10, 3000000),
(5, 5, 5, 10, 2400000),
(6, 6, 6, 10, 5000000),
(7, 7, 7, 10, 3000000),
(8, 8, 8, 10, 2700000),
(9, 9, 9, 5, 9800000),
(10, 10, 10, 10, 4400000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `alamat_pelanggan` varchar(60) NOT NULL,
  `email_pelanggan` varchar(40) NOT NULL,
  `telephone` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `email_pelanggan`, `telephone`) VALUES
(1, 'Marsudi Prasetya', 'Gg. Bata Putih No. 648, Langsa 24231, Aceh', 'faizah.prasasta@marpaung.web.id ', 848154986),
(2, 'Paramita Suryatmi', 'Psr. Industri No. 834, Balikpapan 88499, KepR', 'unainggolan@irawan.biz', 831939667),
(3, 'Kamal Rajasa ', 'Ds. Babakan No. 599, Administrasi Jakarta Selatan 96798, Ace', 'elisa.uyainah@gmail.co.id', 839096384),
(4, 'Hilda Laksita', 'Jr. Babadak No. 627, Sukabumi 46769, BaBel', 'hwastuti@gmail.com', 884915599),
(5, 'Kamal Rajasa ', 'Ds. Babakan No. 599, Administrasi Jakarta Selatan 96798, Ace', 'elisa.uyainah@gmail.co.id', 839096384),
(6, 'Puput Puspita', 'Gg. Lembong No. 886, Bogor 30191, Aceh', 'victoria73@yahoo.co.id', 829683505),
(7, 'Rachel Susanti', 'Psr. Baha No. 278, Surabaya 62466, JaTim', 'wibowo.dinda@ramadan.in', 827233579),
(8, 'Kamaria Nasyiah', 'Kpg. Baladewa No. 710, Gunungsitoli 28483, KalSel', 'simbolon.ibrahim@yahoo.co.id', 898654226),
(9, 'Maimunah Farida', 'Dk. Rumah Sakit No. 26, Bitung 11183, Bengkulu', 'dinda@ramadan.in', 897042069),
(10, 'Jais Tampubolon ', 'Kpg. Peta No. 722, Banda Aceh 89439, SumSel', 'karman64@wulandari.biz', 898642263);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `jenis_pembayaran` varchar(10) NOT NULL,
  `total_transaksi` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_transaksi`, `id_pelanggan`, `tgl_transaksi`, `jenis_pembayaran`, `total_transaksi`) VALUES
(1, 1, '2021-08-01', 'Tunai', 40000000),
(2, 2, '2021-08-04', 'Tunai', 48000000),
(3, 3, '2021-08-09', 'Tunai', 60000000),
(4, 4, '2021-08-12', 'Tunai', 30000000),
(5, 5, '2021-08-14', 'Tunai', 24000000),
(6, 6, '2021-08-15', 'Tunai', 50000000),
(7, 7, '2021-08-16', 'Tunai', 30000000),
(8, 8, '2021-08-18', 'Tunai', 27000000),
(9, 9, '2021-08-21', 'Tunai', 49000000),
(10, 10, '2021-08-25', 'Tunai', 44000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id_detail`,`harga_barang`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
