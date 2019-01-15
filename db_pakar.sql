-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 15, 2019 at 09:20 PM
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
(1, 'admin', 'Fandy Hidayat', 'root', 'fandy.tic@my.gavilan.edu', '081277890522'),
(2, 'pakar', 'dr. Azizman Saad, Sp.P (K)', 'root', '', ''),
(3, 'admin', 'Admin', 'root', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa`
--

CREATE TABLE `diagnosa` (
  `id_diagnosa` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `gejala` text NOT NULL,
  `penyakit` varchar(250) NOT NULL,
  `nilai` varchar(50) NOT NULL,
  `persentase` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `diagnosa`
--

INSERT INTO `diagnosa` (`id_diagnosa`, `tanggal`, `gejala`, `penyakit`, `nilai`, `persentase`) VALUES
(43, '11-01-2019<br>06:12:37 PM', '1. Batuk kering<br>2. Demam<br>', 'Stadium 2', '0.63636363636364', '63.64%'),
(44, '11-01-2019<br>06:14:15 PM', '1. Kepala terasa sakit<br>2. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.95', '95%'),
(45, '11-01-2019<br>06:14:55 PM', '1. Batuk kering<br>2. Merasakan flu<br>3. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.42857142857143', '42.86%'),
(46, '11-01-2019<br>06:16:45 PM', '1. Merasakan flu berat<br>2. Susah menarik nafas panjang<br>', 'Stadium 2', '0.58620689655172', '58.62%'),
(47, '11-01-2019<br>06:17:27 PM', '1. Kepala terasa sakit<br>2. Dada terasa sesak<br>3. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>', 'Stadium 3', '0.9', '90%'),
(48, '11-01-2019<br>06:18:22 PM', '1. Batuk kering<br>2. Merasakan flu<br>', '', '0.3', '30%'),
(49, '11-01-2019<br>06:21:43 PM', '1. Batuk kering<br>2. Merasakan flu<br>3. Tenggorokan terasa sakit<br>4. Kepala terasa sakit<br>5. Dada terasa sesak<br>', 'Stadium 3', '0.87416904083571', '87.42%'),
(50, '11-01-2019<br>06:22:10 PM', '1. Batuk berdahak<br>2. Merasakan flu berat<br>3. Tenggorokan terasa ada yang nyangkut<br>4. Terasa gatal-gatal pada tenggorokan<br>5. Demam<br>6. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 3', '0.50045646941655', '50.05%'),
(51, '11-01-2019<br>06:22:48 PM', '1. Tenggorokan terasa ada yang nyangkut<br>2. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>3. Susah menarik nafas panjang<br>4. Demam yang dirasakan naik turun<br>5. Demam tinggi ( > 39º )<br>6. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 2', '0.66620808254514', '66.62%'),
(52, '11-01-2019<br>06:23:30 PM', '1. Batuk kering<br>2. Merasakan flu berat<br>3. Tenggorokan terasa sakit<br>4. Dada terasa sesak<br>5. Denyut jantung yang dirasakan agak cepat berdetak<br>6. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 3', '0.94395516413131', '94.4%'),
(53, '11-01-2019<br>06:24:06 PM', '1. Batuk berdahak<br>2. Merasakan flu<br>3. Dada terasa sesak<br>4. Susah menarik nafas panjang<br>5. Pada siang hari badan terasa sakit-sakit<br>6. Demam yang dirasakan naik turun<br>', 'Stadium 2', '0.89842738205365', '89.84%'),
(54, '11-01-2019<br>06:25:05 PM', '1. Tenggorokan terasa sakit<br>2. Tenggorokan terasa ada yang nyangkut<br>3. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>4. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.52', '52%'),
(55, '11-01-2019<br>06:25:31 PM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Tenggorokan terasa sakit<br>4. Tenggorokan terasa ada yang nyangkut<br>5. Dada terasa sesak<br>6. Denyut jantung yang dirasakan agak cepat berdetak<br>7. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.99718847405538', '99.72%'),
(56, '11-01-2019<br>06:26:06 PM', '1. Merasakan flu berat<br>2. Kepala terasa sakit<br>3. Dada terasa sesak<br>4. Susah menarik nafas panjang<br>5. Demam yang dirasakan naik turun<br>6. Demam<br>', 'Stadium 2', '0.71754256106588', '71.75%'),
(57, '11-01-2019<br>06:26:31 PM', '1. Batuk kering<br>2. Merasakan flu<br>3. Tenggorokan terasa sakit<br>4. Demam yang dirasakan naik turun<br>5. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.8353', '83.53%'),
(58, '11-01-2019<br>06:28:03 PM', '1. Batuk kering<br>2. Merasakan flu<br>3. Kepala terasa sakit<br>4. Dada terasa sesak<br>5. Pada siang hari badan terasa sakit-sakit<br>6. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.98637602179837', '98.64%'),
(59, '11-01-2019<br>06:28:29 PM', '1. Batuk berdahak<br>2. Merasakan flu<br>3. Tenggorokan terasa sakit<br>4. Demam yang dirasakan naik turun<br>5. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.53381837779574', '53.38%'),
(60, '11-01-2019<br>06:29:43 PM', '1. Batuk berdahak<br>2. Merasakan flu berat<br>3. Tenggorokan terasa sakit<br>4. Demam yang dirasakan naik turun<br>5. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.37262357414449', '37.26%'),
(61, '11-01-2019<br>06:31:04 PM', '1. Batuk berdahak<br>2. Tenggorokan terasa sakit<br>3. Tenggorokan terasa ada yang nyangkut<br>4. Terasa gatal-gatal pada tenggorokan<br>5. Kepala terasa sakit<br>6. Susah menarik nafas panjang<br>7. Pada siang hari badan terasa sakit-sakit<br>8. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 2', '0.84775661256137', '84.78%'),
(62, '11-01-2019<br>06:31:51 PM', '1. Batuk kering<br>2. Merasakan flu berat<br>3. Tenggorokan terasa sakit<br>4. Kepala terasa sakit<br>5. Dada terasa sesak<br>6. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>7. Denyut jantung yang dirasakan agak cepat berdetak<br>8. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.99954653125', '99.95%'),
(63, '11-01-2019<br>06:32:07 PM', '1. Batuk berdahak<br>2. Tenggorokan terasa sakit<br>3. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>4. Susah menarik nafas panjang<br>5. Pada siang hari badan terasa sakit-sakit<br>6. Demam yang dirasakan naik turun<br>', 'Stadium 2', '0.97438555833384', '97.44%'),
(64, '11-01-2019<br>06:32:58 PM', '1. Merasakan flu berat<br>2. Tenggorokan terasa sakit<br>3. Tenggorokan terasa ada yang nyangkut<br>4. Dada terasa sesak<br>5. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>6. Demam<br>7. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 3', '0.92566383257031', '92.57%'),
(65, '11-01-2019<br>06:33:55 PM', '1. Tenggorokan terasa ada yang nyangkut<br>2. Kepala terasa sakit<br>3. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>4. Denyut jantung yang dirasakan agak cepat berdetak<br>5. Demam<br>6. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 2', '0.68710024697613', '68.71%'),
(66, '11-01-2019<br>06:35:30 PM', '1. Batuk kering<br>2. Tenggorokan terasa sakit<br>3. Kepala terasa sakit<br>4. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>5. Susah menarik nafas panjang<br>6. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.85587040087864', '85.59%'),
(67, '11-01-2019<br>06:46:28 PM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu berat<br>4. Tenggorokan terasa sakit<br>5. Kepala terasa sakit<br>6. Demam<br>7. Demam tinggi ( > 39º )<br>8. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 3', '0.97379456211875', '97.38%'),
(68, '11-01-2019<br>06:47:37 PM', '1. Batuk berdahak<br>2. Merasakan flu<br>3. Kepala terasa sakit<br>4. Dada terasa sesak<br>5. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>6. Susah menarik nafas panjang<br>7. Denyut jantung yang dirasakan agak cepat berdetak<br>8. Demam<br>9. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 2', '0.7148852978141', '71.49%'),
(69, '11-01-2019<br>06:48:46 PM', '1. Merasakan flu berat<br>2. Tenggorokan terasa sakit<br>3. Tenggorokan terasa ada yang nyangkut<br>4. Terasa gatal-gatal pada tenggorokan<br>5. Kepala terasa sakit<br>6. Dada terasa sesak<br>7. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>8. Denyut jantung yang dirasakan agak cepat berdetak<br>9. Demam yang dirasakan naik turun<br>10. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 3', '0.94437794409122', '94.44%'),
(70, '11-01-2019<br>06:49:09 PM', '1. Batuk kering<br>2. Merasakan flu<br>3. Terasa gatal-gatal pada tenggorokan<br>4. Dada terasa sesak<br>5. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>6. Susah menarik nafas panjang<br>7. Denyut jantung yang dirasakan agak cepat berdetak<br>8. Demam yang dirasakan naik turun<br>9. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 2', '0.62081106558454', '62.08%'),
(71, '11-01-2019<br>06:50:12 PM', '1. Batuk kering<br>2. Merasakan flu berat<br>3. Tenggorokan terasa sakit<br>4. Tenggorokan terasa ada yang nyangkut<br>5. Terasa gatal-gatal pada tenggorokan<br>6. Kepala terasa sakit<br>7. Dada terasa sesak<br>8. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>9. Susah menarik nafas panjang<br>10. Demam<br>11. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 3', '0.80676781919109', '80.68%'),
(72, '11-01-2019<br>06:50:59 PM', '1. Batuk berdahak<br>2. Merasakan flu berat<br>3. Tenggorokan terasa sakit<br>4. Tenggorokan terasa ada yang nyangkut<br>5. Terasa gatal-gatal pada tenggorokan<br>6. Kepala terasa sakit<br>7. Dada terasa sesak<br>8. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>9. Denyut jantung yang dirasakan agak cepat berdetak<br>10. Pada siang hari badan terasa sakit-sakit<br>11. Demam yang dirasakan naik turun<br>12. Demam tinggi ( > 39º )<br>13. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 3', '0.99495714757129', '99.5%'),
(73, '11-01-2019<br>06:52:04 PM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>4. Merasakan flu berat<br>5. Tenggorokan terasa sakit<br>6. Tenggorokan terasa ada yang nyangkut<br>7. Terasa gatal-gatal pada tenggorokan<br>8. Kepala terasa sakit<br>9. Dada terasa sesak<br>10. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>11. Susah menarik nafas panjang<br>12. Denyut jantung yang dirasakan agak cepat berdetak<br>13. Pada siang hari badan terasa sakit-sakit<br>14. Demam yang dirasakan naik turun<br>15. Demam<br>16. Demam tinggi ( > 39º )<br>17. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 3', '0.87935059800462', '87.94%'),
(74, '11-01-2019<br>06:52:56 PM', '1. Batuk kering<br>2. Merasakan flu berat<br>3. Tenggorokan terasa sakit<br>4. Terasa gatal-gatal pada tenggorokan<br>5. Kepala terasa sakit<br>6. Dada terasa sesak<br>7. Denyut jantung yang dirasakan agak cepat berdetak<br>8. Demam yang dirasakan naik turun<br>9. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 3', '0.88811533902881', '88.81%'),
(75, '11-01-2019<br>06:53:25 PM', '1. Merasakan flu<br>2. Tenggorokan terasa sakit<br>3. Tenggorokan terasa ada yang nyangkut<br>4. Terasa gatal-gatal pada tenggorokan<br>5. Kepala terasa sakit<br>6. Dada terasa sesak<br>7. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>8. Susah menarik nafas panjang<br>9. Pada siang hari badan terasa sakit-sakit<br>10. Demam yang dirasakan naik turun<br>11. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.76090938137984', '76.09%'),
(76, '11-01-2019<br>07:48:55 PM', '1. Batuk kering<br>2. Demam<br>', 'Stadium 2', '0.63636363636364', '63.64%'),
(77, '11-01-2019<br>07:49:27 PM', '1. Batuk kering<br>2. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>3. Demam<br>', 'Stadium 2', '0.63636363636364', '63.64%'),
(78, '11-01-2019<br>07:50:28 PM', '1. Tenggorokan terasa sakit<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Susah menarik nafas panjang<br>4. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.86406430245972', '86.41%'),
(79, '11-01-2019<br>07:51:58 PM', '1. Tenggorokan terasa sakit<br>2. Tenggorokan terasa ada yang nyangkut<br>3. Kepala terasa sakit<br>4. Dada terasa sesak<br>5. Demam yang dirasakan naik turun<br>', 'Stadium 3', '0.62933210924948', '62.93%'),
(80, '11-01-2019<br>07:52:28 PM', '1. Merasakan flu berat<br>2. Kepala terasa sakit<br>3. Susah menarik nafas panjang<br>4. Pada siang hari badan terasa sakit-sakit<br>5. Demam<br>', 'Stadium 2', '0.91569086651054', '91.57%'),
(81, '14-01-2019<br>09:30:15 PM', '1. Terasa gatal-gatal pada tenggorokan<br>2. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>3. Pada siang hari badan terasa sakit-sakit<br>4. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 2', '0.36077705827937', '36.08%');

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
(17, 'G17', 'Pada saat malam hari badan terasa panas dan siang terasa dingin');

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
(1, 'P1', 'Stadium 1', 'Segera lakukan pengecekan ke dokter.'),
(2, 'P2', 'Stadium 2', 'Segera lakukan pengecekan ke dokter, ada kemungkinan bisa rawat jalan atau rawat inap.'),
(3, 'P3', 'Stadium 3', 'Segera lakukan pengecekan ke dokter, karena harus dirawat inap di Rumah Sakit. Pengambilan sampel darah untuk didiagnosa dan dikirim ke Jakarta.');

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
(6, 'Rido', '1997-11-04'),
(7, 'Alif', '1997-02-24'),
(8, 'Ade Febriany', '1996-02-29');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `gejala` text NOT NULL,
  `penyakit` varchar(200) NOT NULL,
  `nilai` varchar(20) NOT NULL,
  `persentase` varchar(20) NOT NULL,
  `dokter` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `diagnosa`
--
ALTER TABLE `diagnosa`
  MODIFY `id_diagnosa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `ds_aturan`
--
ALTER TABLE `ds_aturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `ds_gejala`
--
ALTER TABLE `ds_gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `ds_penyakit`
--
ALTER TABLE `ds_penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT;
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
