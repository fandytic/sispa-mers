-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 07, 2018 at 10:41 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pakar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nohp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `nama`, `password`, `email`, `nohp`) VALUES
(1, 'admin', 'Fandy Hidayat', 'root', 'fandy15ti@mahasiswa.pcr.ac.id', '081277890522');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa`
--

CREATE TABLE `diagnosa` (
  `id_diagnosa` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `gejala` varchar(500) NOT NULL,
  `penyakit` varchar(250) NOT NULL,
  `nilai` varchar(50) NOT NULL,
  `persentase` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `diagnosa`
--

INSERT INTO `diagnosa` (`id_diagnosa`, `tanggal`, `gejala`, `penyakit`, `nilai`, `persentase`) VALUES
(2, '24 Februari', '1. adasdasd <br>\r\n2. dkasdajsdjasda <br>\r\n3. asdasdas', 'vasca', '54454', '54');

-- --------------------------------------------------------

--
-- Table structure for table `ds_aturan`
--

CREATE TABLE `ds_aturan` (
  `id` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL,
  `ds` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ds_aturan`
--

INSERT INTO `ds_aturan` (`id`, `id_penyakit`, `id_gejala`, `ds`) VALUES
(1, 1, 1, 0.25),
(2, 3, 1, 0.25),
(3, 2, 2, 0.7),
(4, 3, 2, 0.7),
(5, 1, 3, 0.4),
(6, 2, 3, 0.4),
(7, 3, 4, 0.75),
(8, 1, 5, 0.35),
(9, 3, 5, 0.35),
(10, 2, 6, 0.25),
(11, 3, 7, 0.35),
(12, 2, 8, 0.4),
(13, 3, 8, 0.4),
(14, 3, 9, 0.9),
(15, 2, 10, 0.9),
(16, 3, 10, 0.9),
(17, 2, 11, 0.85),
(18, 3, 12, 0.3),
(19, 2, 13, 0.5),
(20, 1, 14, 0.8),
(21, 2, 14, 0.8),
(22, 2, 15, 0.7),
(23, 3, 16, 0.95),
(24, 1, 17, 0.7);

-- --------------------------------------------------------

--
-- Table structure for table `ds_gejala`
--

CREATE TABLE `ds_gejala` (
  `id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ds_gejala`
--

INSERT INTO `ds_gejala` (`id`, `kode`, `nama`) VALUES
(1, 'G01', 'Batuk kering'),
(2, 'G02', 'Batuk berdahak'),
(3, 'G03', 'Merasakan flu'),
(4, 'G04', 'Merasakan flu berat'),
(5, 'G05', 'Tenggorokan terasa sakit'),
(6, 'G06', 'Tenggorokan terasa ada yang nyangkut'),
(7, 'G07', 'Terasa gatal-gatal pada tenggorokan'),
(8, 'G08', 'Kepala terasa sakit'),
(9, 'G09', 'Dada terasa sesak'),
(10, 'G10', '2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah'),
(11, 'G11', 'Susah menarik nafas panjang'),
(12, 'G12', 'Denyut jantung yang dirasakan agak cepat berdetak'),
(13, 'G13', 'Pada siang hari badan terasa sakit-sakit'),
(14, 'G14', 'Demam yang dirasakan naik turun'),
(15, 'G15', 'Demam'),
(16, 'G16', 'Demam tinggi ( > 39º )'),
(17, 'G17', 'Pada saat malam hari badan terasa panas dan siang terasa dingin'),
(18, 'G18', 'dimas');

-- --------------------------------------------------------

--
-- Table structure for table `ds_penyakit`
--

CREATE TABLE `ds_penyakit` (
  `id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kett` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ds_penyakit`
--

INSERT INTO `ds_penyakit` (`id`, `kode`, `nama`, `kett`) VALUES
(1, 'P1', 'Stadium 1', 'selow'),
(2, 'P2', 'Stadium 2', 'bray'),
(3, 'P3', 'Stadium 3', 'yow');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgl_lahir` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama`, `tgl_lahir`) VALUES
(3, 'Nika', '2018-10-01'),
(5, 'Fandy Hidayat', '2018-10-05'),
(6, 'Rido', '1997-11-04');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `gejala` varchar(500) NOT NULL,
  `penyakit` varchar(200) NOT NULL,
  `nilai` varchar(20) NOT NULL,
  `persentase` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id_riwayat`, `id_pasien`, `tanggal`, `gejala`, `penyakit`, `nilai`, `persentase`) VALUES
(5, 3, '2445', 'dsfs', 'sdfsd', '245', '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD PRIMARY KEY (`id_diagnosa`);

--
-- Indexes for table `ds_aturan`
--
ALTER TABLE `ds_aturan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_penyakit` (`id_penyakit`),
  ADD KEY `id_gejala` (`id_gejala`);

--
-- Indexes for table `ds_gejala`
--
ALTER TABLE `ds_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ds_penyakit`
--
ALTER TABLE `ds_penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `diagnosa`
--
ALTER TABLE `diagnosa`
  MODIFY `id_diagnosa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ds_aturan`
--
ALTER TABLE `ds_aturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `ds_gejala`
--
ALTER TABLE `ds_gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `ds_penyakit`
--
ALTER TABLE `ds_penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ds_aturan`
--
ALTER TABLE `ds_aturan`
  ADD CONSTRAINT `ds_aturan_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `ds_penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ds_aturan_ibfk_2` FOREIGN KEY (`id_gejala`) REFERENCES `ds_gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD CONSTRAINT `riwayat_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
