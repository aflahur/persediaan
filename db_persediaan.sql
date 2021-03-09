-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2021 at 09:31 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_persediaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbbarang`
--

CREATE TABLE `tbbarang` (
  `kode_barang` varchar(6) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `kode_kategori` int(11) NOT NULL,
  `spesifikasi` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL,
  `lokasi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbbarang`
--

INSERT INTO `tbbarang` (`kode_barang`, `nama_barang`, `kode_kategori`, `spesifikasi`, `stok`, `lokasi`) VALUES
('BRG001', 'Obeng', 12, 'Obeng Besar', 5, 'Rak Lemari 1'),
('BRG002', 'Baut 14', 12, 'Drat 14 inchi', 5, 'Rak 2 Bawah'),
('BRG003', 'Penggaris', 11, 'Butterfly 30 cm', 5, 'Rak 2 Atas');

-- --------------------------------------------------------

--
-- Table structure for table `tbdepartement`
--

CREATE TABLE `tbdepartement` (
  `kode_departement` varchar(6) NOT NULL,
  `nama_departement` varchar(30) NOT NULL,
  `ext` varchar(3) NOT NULL,
  `nama_manager` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbdepartement`
--

INSERT INTO `tbdepartement` (`kode_departement`, `nama_departement`, `ext`, `nama_manager`) VALUES
('DEP001', 'Bagian Umum', '105', 'Handoko'),
('DEP002', 'Bagian Keuangan', '102', 'Hulk'),
('DEP003', 'Bagian Personalia', '119', 'Harry');

-- --------------------------------------------------------

--
-- Table structure for table `tbdetail_penerimaan`
--

CREATE TABLE `tbdetail_penerimaan` (
  `id` int(11) NOT NULL,
  `kode_terima` varchar(20) NOT NULL,
  `kode_barang` varchar(6) NOT NULL,
  `jumlah_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbdetail_penerimaan`
--

INSERT INTO `tbdetail_penerimaan` (`id`, `kode_terima`, `kode_barang`, `jumlah_barang`) VALUES
(32, 'T202001140001', 'BRG001', 2),
(33, 'T202001140001', 'BRG002', 7),
(34, 'T202001140001', 'BRG003', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbdetail_pengeluaran`
--

CREATE TABLE `tbdetail_pengeluaran` (
  `id` int(11) NOT NULL,
  `kode_keluar` varchar(20) NOT NULL,
  `kode_barang` varchar(6) NOT NULL,
  `jumlah_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbdetail_pengeluaran`
--

INSERT INTO `tbdetail_pengeluaran` (`id`, `kode_keluar`, `kode_barang`, `jumlah_barang`) VALUES
(20, 'K202001140001', 'BRG001', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbgabung_transaksi`
--

CREATE TABLE `tbgabung_transaksi` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_barang` varchar(6) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `ket` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbgabung_transaksi`
--

INSERT INTO `tbgabung_transaksi` (`id`, `kode`, `tanggal`, `kode_barang`, `jumlah_barang`, `ket`) VALUES
(37, 'T202001140001', '2020-01-14', 'BRG001', 2, 'MASUK'),
(38, 'T202001140001', '2020-01-14', 'BRG002', 7, 'MASUK'),
(39, 'T202001140001', '2020-01-14', 'BRG003', 3, 'MASUK'),
(40, 'T202001140001', '2020-01-14', 'BRG001', 0, 'KELUAR'),
(41, 'T202001140001', '2020-01-14', 'BRG002', 0, 'KELUAR'),
(42, 'T202001140001', '2020-01-14', 'BRG003', 0, 'KELUAR'),
(43, 'K202001140001', '2020-01-14', 'BRG001', 2, 'KELUAR'),
(44, 'K202001140001', '2020-01-14', 'BRG001', 0, 'MASUK');

-- --------------------------------------------------------

--
-- Table structure for table `tbkategori`
--

CREATE TABLE `tbkategori` (
  `kode_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbkategori`
--

INSERT INTO `tbkategori` (`kode_kategori`, `nama_kategori`) VALUES
(11, 'ATK'),
(12, 'Spare Part'),
(13, 'Elektronik');

-- --------------------------------------------------------

--
-- Table structure for table `tblogin`
--

CREATE TABLE `tblogin` (
  `id_login` varchar(6) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama_admin` varchar(30) NOT NULL,
  `status_admin` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblogin`
--

INSERT INTO `tblogin` (`id_login`, `username`, `password`, `nama_admin`, `status_admin`) VALUES
('ADM001', 'rofik', 'rofik123', 'rofik', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `tbpenerimaan`
--

CREATE TABLE `tbpenerimaan` (
  `kode_terima` varchar(20) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `jumlah_item` int(11) NOT NULL,
  `kode_departement` varchar(6) NOT NULL,
  `id_login` varchar(6) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbpenerimaan`
--

INSERT INTO `tbpenerimaan` (`kode_terima`, `tanggal_terima`, `jumlah_item`, `kode_departement`, `id_login`, `keterangan`) VALUES
('T202001140001', '2020-01-14', 3, 'DEP003', '', 'PO 123456');

-- --------------------------------------------------------

--
-- Table structure for table `tbpengeluaran`
--

CREATE TABLE `tbpengeluaran` (
  `kode_keluar` varchar(20) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `jumlah_item` int(11) NOT NULL,
  `kode_departement` varchar(20) NOT NULL,
  `id_login` varchar(60) NOT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbpengeluaran`
--

INSERT INTO `tbpengeluaran` (`kode_keluar`, `tanggal_keluar`, `jumlah_item`, `kode_departement`, `id_login`, `keterangan`) VALUES
('K202001140001', '2020-01-14', 1, 'DEP002', '', 'Untuk Dimakan');

-- --------------------------------------------------------

--
-- Table structure for table `tbsementara`
--

CREATE TABLE `tbsementara` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `kode_barang` varchar(6) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbbarang`
--
ALTER TABLE `tbbarang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `tbdepartement`
--
ALTER TABLE `tbdepartement`
  ADD PRIMARY KEY (`kode_departement`);

--
-- Indexes for table `tbdetail_penerimaan`
--
ALTER TABLE `tbdetail_penerimaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbdetail_pengeluaran`
--
ALTER TABLE `tbdetail_pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbgabung_transaksi`
--
ALTER TABLE `tbgabung_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbkategori`
--
ALTER TABLE `tbkategori`
  ADD PRIMARY KEY (`kode_kategori`);

--
-- Indexes for table `tblogin`
--
ALTER TABLE `tblogin`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `tbpenerimaan`
--
ALTER TABLE `tbpenerimaan`
  ADD PRIMARY KEY (`kode_terima`);

--
-- Indexes for table `tbpengeluaran`
--
ALTER TABLE `tbpengeluaran`
  ADD PRIMARY KEY (`kode_keluar`);

--
-- Indexes for table `tbsementara`
--
ALTER TABLE `tbsementara`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbdetail_penerimaan`
--
ALTER TABLE `tbdetail_penerimaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbdetail_pengeluaran`
--
ALTER TABLE `tbdetail_pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbgabung_transaksi`
--
ALTER TABLE `tbgabung_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbkategori`
--
ALTER TABLE `tbkategori`
  MODIFY `kode_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbsementara`
--
ALTER TABLE `tbsementara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
