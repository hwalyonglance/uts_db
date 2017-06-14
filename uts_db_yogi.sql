-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2017 at 04:36 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_db_yogi`
--

-- --------------------------------------------------------

--
-- Table structure for table `alat`
--

CREATE TABLE `alat` (
  `kd_alat` varchar(20) NOT NULL,
  `model` varchar(50) NOT NULL,
  `kd_katagori` varchar(20) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `kd_pembuat` varchar(30) NOT NULL,
  `thn_buat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alat`
--

INSERT INTO `alat` (`kd_alat`, `model`, `kd_katagori`, `merk`, `kd_pembuat`, `thn_buat`) VALUES
('01', 'android', '01', 'samsung', '01', 2016),
('02', 'android', '02', 'hp', '02', 2017),
('03', 'android', '03', 'asus', '03', 2015),
('04', 'andorid', '04', 'acer', '04', 2016),
('05', 'android', '05', 'apple', '05', 2006);

-- --------------------------------------------------------

--
-- Table structure for table `detail invertaris`
--

CREATE TABLE `detail invertaris` (
  `kd_invertaris` varchar(20) NOT NULL,
  `label_alat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail invertaris`
--

INSERT INTO `detail invertaris` (`kd_invertaris`, `label_alat`) VALUES
('01', 'samsung'),
('02', 'acer'),
('03', 'asus'),
('04', 'apple'),
('05', 'asus');

-- --------------------------------------------------------

--
-- Table structure for table `inventaris`
--

CREATE TABLE `inventaris` (
  `kd_investasi` varchar(30) NOT NULL,
  `kd_karyawan` varchar(40) NOT NULL,
  `kd_petugas` varchar(50) NOT NULL,
  `tgl_pinjam` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventaris`
--

INSERT INTO `inventaris` (`kd_investasi`, `kd_karyawan`, `kd_petugas`, `tgl_pinjam`) VALUES
('01', '01', '01', '2017-03-01'),
('02', '02', '02', '2017-03-12'),
('03', '03', '03', '2017-03-18'),
('04', '04', '04', '2017-03-24'),
('05', '05', '05', '2017-03-30');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `kd_karyawan` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `nm_karyawan` varchar(100) NOT NULL,
  `ruang` varchar(50) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `j_kel` varchar(30) NOT NULL,
  `almt_karyawan` varchar(50) NOT NULL,
  `tlp_karyawan` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`kd_karyawan`, `status`, `nm_karyawan`, `ruang`, `tgl_daftar`, `j_kel`, `almt_karyawan`, `tlp_karyawan`) VALUES
('01', 'kawin', 'bara', '01', '2017-03-01', 'l', 'cileunyi', 2123456789),
('02', 'kawin', 'jejen', '02', '2017-03-02', 'l', 'rancaekek', 21345675),
('03', 'belum kawin', 'tuti', '04', '2017-03-12', 'P', 'cibiru', 219865),
('04', 'kawin', 'hifdy', '04', '2017-03-20', 'L', 'cinunuk', 210987665),
('05', 'belum kawin', 'tati', '05', '2017-03-25', 'P', 'nagreg', 215799479);

-- --------------------------------------------------------

--
-- Table structure for table `katagori`
--

CREATE TABLE `katagori` (
  `kd_katagori` varchar(20) NOT NULL,
  `jenis_alat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `katagori`
--

INSERT INTO `katagori` (`kd_katagori`, `jenis_alat`) VALUES
('01', 'android'),
('02', 'android'),
('03', 'android'),
('04', 'android'),
('05', 'android');

-- --------------------------------------------------------

--
-- Table structure for table `label alat`
--

CREATE TABLE `label alat` (
  `label_alat` varchar(20) NOT NULL,
  `kd_alat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `label alat`
--

INSERT INTO `label alat` (`label_alat`, `kd_alat`) VALUES
('acer', '04'),
('apple', '01'),
('asus', '02'),
('hp', '03'),
('samsung', '05');

-- --------------------------------------------------------

--
-- Table structure for table `pembuat`
--

CREATE TABLE `pembuat` (
  `kd_pembuat` varchar(20) NOT NULL,
  `nm_pembuat` varchar(100) NOT NULL,
  `kota_pembuat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembuat`
--

INSERT INTO `pembuat` (`kd_pembuat`, `nm_pembuat`, `kota_pembuat`) VALUES
('01', 'indri', 'bandung'),
('02', 'anggita', 'jakarta'),
('03', 'linda', 'sumedang'),
('04', 'rusman', 'majelangka'),
('05', 'asyifa', 'cirebon');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `kd_invertaris` varchar(20) NOT NULL,
  `tgl_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`kd_invertaris`, `tgl_kembali`) VALUES
('01', '2017-03-06'),
('02', '2017-03-12'),
('03', '2017-03-18'),
('04', '2017-03-24'),
('05', '2017-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `kd_petugas` varchar(50) NOT NULL,
  `nm_petugas` text NOT NULL,
  `j_kel_petugas` text NOT NULL,
  `almt_petugas` varchar(50) NOT NULL,
  `tlp_petugas` int(20) NOT NULL,
  `user` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `hak_akses` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`kd_petugas`, `nm_petugas`, `j_kel_petugas`, `almt_petugas`, `tlp_petugas`, `user`, `password`, `hak_akses`) VALUES
('01', 'bara', 'l', 'cileunyi', 2123456789, 'admin', 'admin', 'administrator'),
('02', 'maya', 'p', 'rancaekek', 2123456789, 'indri', 'indri', 'administrator'),
('03', 'budi', 'l', 'dimana aja', 2123456789, 'budi', 'budi', 'administrator'),
('04', 'desi', 'p', 'rancaekek', 2123456789, 'desi', 'desi', 'administrator'),
('05', 'siti', 'p', 'rancaekek', 2123456789, 'siti', 'siti', 'administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alat`
--
ALTER TABLE `alat`
  ADD PRIMARY KEY (`kd_alat`),
  ADD KEY `kd_katagori` (`kd_katagori`),
  ADD KEY `kd_pembuat` (`kd_pembuat`);

--
-- Indexes for table `detail invertaris`
--
ALTER TABLE `detail invertaris`
  ADD PRIMARY KEY (`kd_invertaris`);

--
-- Indexes for table `inventaris`
--
ALTER TABLE `inventaris`
  ADD PRIMARY KEY (`kd_investasi`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`kd_karyawan`);

--
-- Indexes for table `katagori`
--
ALTER TABLE `katagori`
  ADD PRIMARY KEY (`kd_katagori`);

--
-- Indexes for table `label alat`
--
ALTER TABLE `label alat`
  ADD PRIMARY KEY (`label_alat`);

--
-- Indexes for table `pembuat`
--
ALTER TABLE `pembuat`
  ADD PRIMARY KEY (`kd_pembuat`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`kd_invertaris`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`kd_petugas`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alat`
--
ALTER TABLE `alat`
  ADD CONSTRAINT `alat_ibfk_1` FOREIGN KEY (`kd_katagori`) REFERENCES `katagori` (`kd_katagori`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alat_ibfk_2` FOREIGN KEY (`kd_pembuat`) REFERENCES `pembuat` (`kd_pembuat`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
