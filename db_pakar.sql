-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27 Agu 2019 pada 09.09
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.0.9

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
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `tingkat` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`, `email`, `nohp`, `tingkat`) VALUES
(1, 'Admin', 'admin', 'root', 'admin@sp.com', '081277890522', 'admin'),
(2, 'dr. Azizman Saad, Sp.P (K)', 'pakar', 'root', 'azisman@unri.ac.id', '123123', 'dokter'),
(4, 'hachanooooo', 'nana', '123', 'fasda@gmail.com', 'nohp', 'dokter'),
(5, 'alif', 'alifsatria00', '12345', 'arusmana76@gmail.com', '123', 'dokter'),
(6, '123', 'asd', '123', 'ilham.novitra22@gmail.com', '44444', 'dokter');

-- --------------------------------------------------------

--
-- Struktur dari tabel `diagnosa`
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
-- Dumping data untuk tabel `diagnosa`
--

INSERT INTO `diagnosa` (`id_diagnosa`, `tanggal`, `gejala`, `penyakit`, `nilai`, `persentase`) VALUES
(43, '11-01-2019<br>06:12:37 PM', '1. Batuk kering<br>2. Demam<br>', 'Stadium 2', '0.63636363636364', '63.64%'),
(44, '11-01-2019<br>06:14:15 PM', '1. Kepala terasa sakit<br>2. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.95', '95%'),
(45, '11-01-2019<br>06:14:55 PM', '1. Batuk kering<br>2. Merasakan flu<br>3. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.42857142857143', '42.86%'),
(46, '11-01-2019<br>06:16:45 PM', '1. Merasakan flu berat<br>2. Susah menarik nafas panjang<br>', 'Stadium 2', '0.58620689655172', '58.62%'),
(47, '11-01-2019<br>06:17:27 PM', '1. Kepala terasa sakit<br>2. Dada terasa sesak<br>3. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>', 'Stadium 3', '0.9', '90%'),
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
(81, '14-01-2019<br>09:30:15 PM', '1. Terasa gatal-gatal pada tenggorokan<br>2. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>3. Pada siang hari badan terasa sakit-sakit<br>4. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 2', '0.36077705827937', '36.08%'),
(82, '25-01-2019<br>11:35:54 PM', '1. Batuk kering<br>2. Merasakan flu<br>3. Tenggorokan terasa sakit<br>4. Tenggorokan terasa ada yang nyangkut<br>5. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>6. Denyut jantung yang dirasakan agak cepat berdetak<br>7. Demam yang dirasakan naik turun<br>', 'Stadium 2', '0.67893638838796', '67.89%'),
(83, '29-01-2019<br>09:57:36 AM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>', '', '0.33870967741935', '33.87%'),
(84, '29-01-2019<br>09:58:24 AM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>4. Terasa gatal-gatal pada tenggorokan<br>5. Kepala terasa sakit<br>6. Dada terasa sesak<br>7. Demam<br>', 'Stadium 3', '0.77475422782604', '77.48%'),
(85, '29-01-2019<br>09:58:52 AM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>4. Merasakan flu berat<br>5. Tenggorokan terasa sakit<br>6. Tenggorokan terasa ada yang nyangkut<br>7. Terasa gatal-gatal pada tenggorokan<br>8. Kepala terasa sakit<br>9. Dada terasa sesak<br>10. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>11. Susah menarik nafas panjang<br>12. Denyut jantung yang dirasakan agak cepat berdetak<br>13. Pada siang hari badan terasa sakit-sakit<br>14. Demam<br>15. Demam tinggi ( > 39º )<br>16. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 3', '0.97329230572673', '97.33%'),
(86, '29-01-2019<br>09:58:59 AM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>4. Merasakan flu berat<br>5. Tenggorokan terasa sakit<br>6. Tenggorokan terasa ada yang nyangkut<br>7. Terasa gatal-gatal pada tenggorokan<br>8. Kepala terasa sakit<br>9. Dada terasa sesak<br>10. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>11. Susah menarik nafas panjang<br>12. Denyut jantung yang dirasakan agak cepat berdetak<br>13. Pada siang hari badan terasa sakit-sakit<br>14. Demam yang dirasakan naik turun<br>15. Demam<br>16. Demam tinggi ( > 39º )<br>17. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 3', '0.87935059800462', '87.94%'),
(87, '29-01-2019<br>10:08:32 AM', '1. Terasa gatal-gatal pada tenggorokan<br>2. Kepala terasa sakit<br>3. Dada terasa sesak<br>4. Susah menarik nafas panjang<br>', 'Stadium 3', '0.68331303288672', '68.33%'),
(88, '29-01-2019<br>10:08:40 AM', '1. Terasa gatal-gatal pada tenggorokan<br>2. Kepala terasa sakit<br>3. Dada terasa sesak<br>4. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>5. Susah menarik nafas panjang<br>', 'Stadium 3', '0.68331303288672', '68.33%'),
(89, '02-02-2019<br>11:38:13 PM', '1. Tenggorokan terasa sakit<br>2. Tenggorokan terasa ada yang nyangkut<br>', '', '0.28767123287671', '28.77%'),
(90, '09-02-2019<br>09:36:28 PM', '1. Batuk kering<br>2. Tenggorokan terasa sakit<br>3. Terasa gatal-gatal pada tenggorokan<br>', 'Stadium 3', '0.35', '35%'),
(91, '18-02-2019<br>10:50:42 PM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>', 'Stadium 2', '0.33870967741935', '33.87%'),
(92, '18-02-2019<br>10:50:55 PM', '1. Tenggorokan terasa sakit<br>2. Tenggorokan terasa ada yang nyangkut<br>3. Kepala terasa sakit<br>', 'Stadium 2', '0.21369863013699', '21.37%'),
(93, '18-02-2019<br>10:51:05 PM', '1. Batuk kering<br>2. Merasakan flu<br>3. Tenggorokan terasa sakit<br>', 'Stadium 1', '0.3075', '30.75%'),
(94, '19-02-2019<br>07:35:35 PM', '1. Batuk kering<br>2. Merasakan flu<br>3. Tenggorokan terasa sakit<br>', 'Stadium 1', '0.3075', '30.75%'),
(95, '19-02-2019<br>07:36:48 PM', '1. Batuk kering<br>2. Merasakan flu berat<br>3. Tenggorokan terasa ada yang nyangkut<br>4. Kepala terasa sakit<br>', 'Stadium 3', '0.72941176470588', '72.94%'),
(96, '19-02-2019<br>07:38:49 PM', '1. Dada terasa sesak<br>2. Susah menarik nafas panjang<br>3. Pada siang hari badan terasa sakit-sakit<br>4. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.93720565149137', '93.72%'),
(97, '19-02-2019<br>11:10:14 PM', '1. Merasakan flu<br>2. Tenggorokan terasa sakit<br>3. Tenggorokan terasa ada yang nyangkut<br>4. Terasa gatal-gatal pada tenggorokan<br>', 'Stadium 3', '0.20982514571191', '20.98%'),
(98, '20-02-2019<br>08:42:55 PM', '1. Batuk kering<br>2. Kepala terasa sakit<br>3. Dada terasa sesak<br>', 'Stadium 3', '0.91', '91%'),
(99, '20-02-2019<br>09:20:32 PM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>4. Merasakan flu berat<br>5. Tenggorokan terasa sakit<br>6. Tenggorokan terasa ada yang nyangkut<br>7. Terasa gatal-gatal pada tenggorokan<br>8. Kepala terasa sakit<br>9. Dada terasa sesak<br>10. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>11. Susah menarik nafas panjang<br>12. Denyut jantung yang dirasakan agak cepat berdetak<br>13. Pada siang hari badan terasa sakit-sakit<br>14. Demam yang dirasakan naik turun<br>15. Demam<br>16. Demam tinggi ( > 39º )<br>17. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 3', '0.87935059800462', '87.94%'),
(100, '21-02-2019<br>02:45:39 PM', '1. Merasakan flu<br>2. Merasakan flu berat<br>', 'Stadium 3', '0.64285714285714', '64.29%'),
(101, '21-02-2019<br>02:48:38 PM', '1. Merasakan flu<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Dada terasa sesak<br>', 'Stadium 3', '0.8961661341853', '89.62%'),
(102, '21-02-2019<br>02:56:38 PM', '1. Tenggorokan terasa ada yang nyangkut<br>2. Kepala terasa sakit<br>3. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>4. Demam<br>', 'Stadium 2', '0.775', '77.5%'),
(103, '21-02-2019<br>07:53:58 PM', '1. Batuk berdahak<br>2. Merasakan flu<br>3. Terasa gatal-gatal pada tenggorokan<br>', 'Stadium 2', '0.31744186046512', '31.74%'),
(104, '22-02-2019<br>10:38:24 AM', '1. Dada terasa sesak<br>2. Susah menarik nafas panjang<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>', 'Stadium 3', '0.66587112171838', '66.59%'),
(105, '22-02-2019<br>10:44:59 AM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>4. Susah menarik nafas panjang<br>', 'Stadium 2', '0.86100386100386', '86.1%'),
(106, '22-02-2019<br>08:33:22 PM', '1. Dada terasa sesak<br>2. Denyut jantung yang dirasakan agak cepat berdetak<br>', 'Stadium 3', '0.93', '93%'),
(107, '24-02-2019<br>07:08:52 PM', '1. Merasakan flu<br>2. Tenggorokan terasa sakit<br>3. Tenggorokan terasa ada yang nyangkut<br>4. Dada terasa sesak<br>5. Susah menarik nafas panjang<br>6. Denyut jantung yang dirasakan agak cepat berdetak<br>', 'Stadium 3', '0.56538136785815', '56.54%'),
(108, '24-02-2019<br>09:25:55 PM', '1. Tenggorokan terasa ada yang nyangkut<br>2. Terasa gatal-gatal pada tenggorokan<br>', 'Stadium 3', '0.28767123287671', '28.77%'),
(109, '24-02-2019<br>09:26:45 PM', '1. Tenggorokan terasa sakit<br>2. Tenggorokan terasa ada yang nyangkut<br>', 'Stadium 1', '0.28767123287671', '28.77%'),
(110, '25-02-2019<br>08:43:49 PM', '1. Batuk kering<br>2. Merasakan flu<br>3. Tenggorokan terasa sakit<br>', 'Stadium 1', '0.3075', '30.75%'),
(111, '26-02-2019<br>07:40:52 PM', '1. Batuk kering<br>2. Merasakan flu berat<br>3. Tenggorokan terasa sakit<br>4. Kepala terasa sakit<br>5. Dada terasa sesak<br>6. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>7. Susah menarik nafas panjang<br>8. Denyut jantung yang dirasakan agak cepat berdetak<br>9. Pada siang hari badan terasa sakit-sakit<br>10. Demam yang dirasakan naik turun<br>11. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 3', '0.62931363653323', '62.93%'),
(112, '26-02-2019<br>07:46:05 PM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>4. Tenggorokan terasa sakit<br>5. Tenggorokan terasa ada yang nyangkut<br>6. Kepala terasa sakit<br>7. Dada terasa sesak<br>8. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>9. Demam yang dirasakan naik turun<br>10. Demam<br>', 'Stadium 2', '0.63337284877233', '63.34%'),
(113, '26-02-2019<br>08:09:34 PM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Tenggorokan terasa sakit<br>4. Kepala terasa sakit<br>5. Demam yang dirasakan naik turun<br>', 'Stadium 2', '0.48177161795722', '48.18%'),
(114, '27-02-2019<br>04:43:13 PM', '1. Batuk kering<br>2. Merasakan flu<br>3. Tenggorokan terasa sakit<br>4. Kepala terasa sakit<br>5. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>6. Pada siang hari badan terasa sakit-sakit<br>7. Demam<br>8. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 2', '0.7940589789207', '79.41%'),
(115, '27-02-2019<br>04:46:11 PM', '1. Batuk kering<br>2. Merasakan flu<br>3. Tenggorokan terasa sakit<br>4. Kepala terasa sakit<br>5. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>6. Denyut jantung yang dirasakan agak cepat berdetak<br>7. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.43223240914614', '43.22%'),
(116, '27-02-2019<br>04:46:57 PM', '1. Batuk kering<br>2. Merasakan flu<br>3. Tenggorokan terasa sakit<br>4. Kepala terasa sakit<br>5. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>6. Denyut jantung yang dirasakan agak cepat berdetak<br>7. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.43223240914614', '43.22%'),
(117, '27-02-2019<br>04:47:37 PM', '1. Batuk kering<br>2. Merasakan flu<br>3. Tenggorokan terasa sakit<br>4. Terasa gatal-gatal pada tenggorokan<br>5. Kepala terasa sakit<br>6. Dada terasa sesak<br>7. Denyut jantung yang dirasakan agak cepat berdetak<br>8. Pada siang hari badan terasa sakit-sakit<br>9. Demam yang dirasakan naik turun<br>10. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 3', '0.48655006529932', '48.66%'),
(118, '11-03-2019<br>02:05:16 PM', '1. Tenggorokan terasa ada yang nyangkut<br>2. Dada terasa sesak<br>3. Susah menarik nafas panjang<br>', 'Stadium 3', '0.50310559006211', '50.31%'),
(119, '29-03-2019<br>10:28:29 AM', '1. Susah menarik nafas panjang<br>2. Pada siang hari badan terasa sakit-sakit<br>3. Demam<br>4. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 2', '0.92874109263658', '92.87%'),
(120, '29-03-2019<br>10:28:47 AM', '1. Tenggorokan terasa ada yang nyangkut<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Dada terasa sesak<br>4. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>', 'Stadium 3', '0.91517128874388', '91.52%'),
(121, '29-03-2019<br>10:29:02 AM', '1. Tenggorokan terasa ada yang nyangkut<br>2. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>', 'Stadium 2', '0.675', '67.5%'),
(122, '29-03-2019<br>10:29:22 AM', '1. Merasakan flu berat<br>2. Tenggorokan terasa ada yang nyangkut<br>', 'Stadium 3', '0.69230769230769', '69.23%'),
(123, '01-04-2019<br>10:44:29 AM', '1. Merasakan flu berat<br>2. Susah menarik nafas panjang<br>3. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.92217898832685', '92.22%'),
(124, '01-04-2019<br>10:46:56 AM', '1. Merasakan flu berat<br>2. Tenggorokan terasa sakit<br>3. Dada terasa sesak<br>', 'Stadium 3', '0.975', '97.5%'),
(125, '01-04-2019<br>10:47:30 AM', '1. Tenggorokan terasa sakit<br>2. Dada terasa sesak<br>3. Demam<br>', 'Stadium 3', '0.78147612156295', '78.15%'),
(126, '01-04-2019<br>10:54:17 AM', '1. Tenggorokan terasa sakit<br>2. Dada terasa sesak<br>3. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.995', '99.5%'),
(127, '01-04-2019<br>10:54:39 AM', '1. Tenggorokan terasa sakit<br>2. Dada terasa sesak<br>3. Demam<br>', 'Stadium 3', '0.78147612156295', '78.15%'),
(128, '01-04-2019<br>11:41:51 AM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(129, '02-04-2019<br>09:56:30 AM', '1. Batuk kering<br>2. Batuk berdahak<br>', 'Stadium 2', '0.525', '52.5%'),
(130, '08-04-2019<br>04:59:25 PM', '1. Susah menarik nafas panjang<br>2. Pada siang hari badan terasa sakit-sakit<br>3. Demam yang dirasakan naik turun<br>', 'Stadium 2', '0.925', '92.5%'),
(131, '09-04-2019<br>11:00:52 AM', '1. Merasakan flu<br>2. Merasakan flu berat<br>3. Terasa gatal-gatal pada tenggorokan<br>4. Susah menarik nafas panjang<br>', 'Stadium 2', '0.58066211245402', '58.07%'),
(132, '09-04-2019<br>11:15:01 AM', '1. Batuk berdahak<br>2. Merasakan flu berat<br>3. Tenggorokan terasa ada yang nyangkut<br>', 'Stadium 3', '0.69230769230769', '69.23%'),
(133, '09-04-2019<br>01:31:19 PM', '1. Kepala terasa sakit<br>2. Dada terasa sesak<br>', 'Stadium 3', '0.9', '90%'),
(134, '23-04-2019<br>08:52:41 AM', '1. Batuk kering<br>2. Tenggorokan terasa ada yang nyangkut<br>', 'Stadium 1', '0.2', '20%'),
(135, '29-04-2019<br>08:12:07 AM', '1. Merasakan flu<br>2. Tenggorokan terasa sakit<br>3. Tenggorokan terasa ada yang nyangkut<br>4. Kepala terasa sakit<br>', 'Stadium 2', '0.27627800114877', '27.63%'),
(136, '11-05-2019<br>12:48:32 AM', '1. Batuk berdahak<br>2. Merasakan flu<br>', 'Stadium 2', '0.42', '42%'),
(137, '11-05-2019<br>12:50:55 AM', '1. Tenggorokan terasa sakit<br>2. Kepala terasa sakit<br>3. Dada terasa sesak<br>4. Susah menarik nafas panjang<br>5. Denyut jantung yang dirasakan agak cepat berdetak<br>6. Pada siang hari badan terasa sakit-sakit<br>7. Demam<br>8. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.90731455757481', '90.73%'),
(138, '13-05-2019<br>03:42:53 PM', '1. Merasakan flu berat<br>2. Tenggorokan terasa sakit<br>3. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>4. Susah menarik nafas panjang<br>', 'Stadium 2', '0.47939262472885', '47.94%'),
(139, '14-05-2019<br>09:27:47 AM', '1. Batuk kering<br>2. Merasakan flu<br>3. Merasakan flu berat<br>4. Terasa gatal-gatal pada tenggorokan<br>5. Kepala terasa sakit<br>6. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>7. Pada siang hari badan terasa sakit-sakit<br>8. Demam yang dirasakan naik turun<br>9. Demam<br>10. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.74533362291486', '74.53%'),
(140, '16-05-2019<br>08:52:42 AM', '1. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>2. Demam<br>', 'Stadium 2', '0.7', '70%'),
(141, '18-05-2019<br>02:14:57 AM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>4. Merasakan flu berat<br>', 'Stadium 3', '0.6978021978022', '69.78%'),
(142, '23-05-2019<br>03:20:36 PM', '1. Batuk berdahak<br>2. Merasakan flu<br>3. Demam yang dirasakan naik turun<br>4. Demam<br>', 'Stadium 2', '0.8848', '88.48%'),
(143, '29-05-2019<br>05:01:00 AM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(144, '05-07-2019<br>09:35:39 PM', '1. Batuk kering<br>2. Demam<br>', 'Stadium 2', '0.63636363636364', '63.64%'),
(145, '15-07-2019<br>03:53:32 PM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Tenggorokan terasa sakit<br>', 'Stadium 3', '0.35875', '35.88%'),
(146, '27-07-2019<br>11:23:16 AM', '1. Kepala terasa sakit<br>2. Dada terasa sesak<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 3', '0.86915887850467', '86.92%'),
(147, '27-07-2019<br>11:23:40 AM', '1. Dada terasa sesak<br>2. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>3. Susah menarik nafas panjang<br>4. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.967585089141', '96.76%'),
(148, '27-07-2019<br>11:23:58 AM', '1. Tenggorokan terasa ada yang nyangkut<br>2. Dada terasa sesak<br>3. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>4. Susah menarik nafas panjang<br>', 'Stadium 3', '0.50310559006211', '50.31%'),
(149, '27-07-2019<br>11:37:51 AM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(150, '30-07-2019<br>01:18:14 PM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(151, '03-08-2019<br>09:10:15 PM', '1. Pada siang hari badan terasa sakit-sakit<br>2. Demam yang dirasakan naik turun<br>3. Demam<br>', 'Stadium 2', '0.85', '85%'),
(152, '07-08-2019<br>04:42:03 PM', '1. Demam<br>2. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.85074626865672', '85.07%'),
(153, '07-08-2019<br>04:42:23 PM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(154, '07-08-2019<br>04:44:36 PM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(155, '07-08-2019<br>04:48:31 PM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(156, '07-08-2019<br>04:48:52 PM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(157, '07-08-2019<br>04:50:03 PM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(158, '07-08-2019<br>04:51:12 PM', '1. Tenggorokan terasa ada yang nyangkut<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Kepala terasa sakit<br>4. Dada terasa sesak<br>5. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>', 'Stadium 3', '0.91517128874388', '91.52%'),
(159, '07-08-2019<br>04:51:12 PM', '1. Tenggorokan terasa ada yang nyangkut<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Kepala terasa sakit<br>4. Dada terasa sesak<br>5. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>', 'Stadium 3', '0.91517128874388', '91.52%'),
(160, '07-08-2019<br>04:54:55 PM', '1. Tenggorokan terasa sakit<br>2. Tenggorokan terasa ada yang nyangkut<br>', 'Stadium 1', '0.28767123287671', '28.77%'),
(161, '07-08-2019<br>04:55:05 PM', '1. Batuk berdahak<br>2. Merasakan flu berat<br>3. Terasa gatal-gatal pada tenggorokan<br>4. Kepala terasa sakit<br>5. Demam<br>6. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.97342056839092', '97.34%'),
(162, '07-08-2019<br>04:56:03 PM', '1. Kepala terasa sakit<br>2. Dada terasa sesak<br>3. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>', 'Stadium 3', '0.9', '90%'),
(163, '07-08-2019<br>04:57:56 PM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(164, '07-08-2019<br>04:58:28 PM', '1. Demam<br>2. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.85074626865672', '85.07%'),
(165, '07-08-2019<br>04:58:38 PM', '1. Batuk kering<br>2. Merasakan flu<br>3. Tenggorokan terasa sakit<br>4. Tenggorokan terasa ada yang nyangkut<br>5. Dada terasa sesak<br>6. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>7. Susah menarik nafas panjang<br>', 'Stadium 3', '0.5642144844951', '56.42%'),
(166, '07-08-2019<br>04:58:52 PM', '1. Tenggorokan terasa sakit<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Dada terasa sesak<br>4. Denyut jantung yang dirasakan agak cepat berdetak<br>5. Demam yang dirasakan naik turun<br>6. Demam<br>7. Demam tinggi ( > 39º )<br>8. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 3', '0.94760273769314', '94.76%'),
(167, '08-08-2019<br>05:15:51 AM', '1. Tenggorokan terasa sakit<br>2. Kepala terasa sakit<br>3. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>', 'Stadium 2', '0.611', '61.1%'),
(168, '09-08-2019<br>12:54:57 AM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>', 'Stadium 2', '0.33870967741935', '33.87%'),
(169, '09-08-2019<br>01:12:11 AM', '1. Pada siang hari badan terasa sakit-sakit<br>2. Demam yang dirasakan naik turun<br>3. Demam<br>4. Demam tinggi ( > 39º )<br>', 'Stadium 2', '0.54140127388535', '54.14%'),
(170, '09-08-2019<br>01:14:01 AM', '1. Pada siang hari badan terasa sakit-sakit<br>2. Demam yang dirasakan naik turun<br>3. Demam<br>4. Demam tinggi ( > 39º )<br>', 'Stadium 2', '0.54140127388535', '54.14%'),
(171, '09-08-2019<br>01:14:08 AM', '1. Pada siang hari badan terasa sakit-sakit<br>2. Demam yang dirasakan naik turun<br>3. Demam<br>4. Demam tinggi ( > 39º )<br>', 'Stadium 2', '0.54140127388535', '54.14%'),
(172, '09-08-2019<br>01:15:22 AM', '1. Pada siang hari badan terasa sakit-sakit<br>2. Demam yang dirasakan naik turun<br>3. Demam<br>4. Demam tinggi ( > 39º )<br>', 'Stadium 2', '0.54140127388535', '54.14%'),
(173, '09-08-2019<br>01:15:35 AM', '1. Pada siang hari badan terasa sakit-sakit<br>2. Demam yang dirasakan naik turun<br>3. Demam<br>4. Demam tinggi ( > 39º )<br>', 'Stadium 2', '0.54140127388535', '54.14%'),
(174, '09-08-2019<br>01:19:17 AM', '1. Dada terasa sesak<br>2. Demam<br>3. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.9835255354201', '98.35%'),
(175, '09-08-2019<br>01:20:27 AM', '1. Dada terasa sesak<br>2. Demam<br>3. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.9835255354201', '98.35%'),
(176, '09-08-2019<br>01:21:01 AM', '1. Dada terasa sesak<br>2. Demam<br>3. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.9835255354201', '98.35%'),
(177, '09-08-2019<br>01:21:17 AM', '1. Dada terasa sesak<br>2. Demam<br>3. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.9835255354201', '98.35%'),
(178, '09-08-2019<br>01:21:37 AM', '1. Dada terasa sesak<br>2. Demam<br>3. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.9835255354201', '98.35%'),
(179, '09-08-2019<br>01:22:36 AM', '1. Dada terasa sesak<br>2. Demam<br>3. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.9835255354201', '98.35%'),
(180, '09-08-2019<br>01:23:27 AM', '1. Dada terasa sesak<br>2. Demam<br>3. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.9835255354201', '98.35%'),
(181, '09-08-2019<br>01:24:08 AM', '1. Dada terasa sesak<br>2. Demam<br>3. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.9835255354201', '98.35%'),
(182, '09-08-2019<br>01:24:14 AM', '1. Dada terasa sesak<br>2. Demam<br>3. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.9835255354201', '98.35%'),
(183, '09-08-2019<br>01:24:28 AM', '1. Dada terasa sesak<br>2. Demam<br>3. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.9835255354201', '98.35%'),
(184, '09-08-2019<br>01:24:33 AM', '1. Dada terasa sesak<br>2. Demam<br>3. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.9835255354201', '98.35%'),
(185, '09-08-2019<br>01:24:59 AM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>', 'Stadium 2', '0.33870967741935', '33.87%'),
(186, '09-08-2019<br>01:25:25 AM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>', 'Stadium 2', '0.33870967741935', '33.87%'),
(187, '09-08-2019<br>01:25:54 AM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>', 'Stadium 2', '0.33870967741935', '33.87%'),
(188, '09-08-2019<br>01:26:08 AM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>', 'Stadium 2', '0.33870967741935', '33.87%'),
(189, '09-08-2019<br>01:26:24 AM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>', 'Stadium 2', '0.33870967741935', '33.87%'),
(190, '09-08-2019<br>01:30:55 AM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>', 'Stadium 2', '0.33870967741935', '33.87%'),
(191, '09-08-2019<br>01:31:01 AM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>', 'Stadium 2', '0.33870967741935', '33.87%'),
(192, '09-08-2019<br>01:31:05 AM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>', 'Stadium 2', '0.33870967741935', '33.87%'),
(193, '09-08-2019<br>01:31:13 AM', '1. Batuk kering<br>2. Batuk berdahak<br>', 'Stadium 2', '0.525', '52.5%'),
(194, '09-08-2019<br>01:31:25 AM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>4. Merasakan flu berat<br>5. Tenggorokan terasa sakit<br>6. Tenggorokan terasa ada yang nyangkut<br>7. Terasa gatal-gatal pada tenggorokan<br>8. Kepala terasa sakit<br>', 'Stadium 3', '0.81837458025268', '81.84%'),
(195, '09-08-2019<br>01:32:30 AM', '1. Batuk berdahak<br>2. Merasakan flu<br>', 'Stadium 2', '0.42', '42%'),
(196, '09-08-2019<br>01:32:46 AM', '1. Kepala terasa sakit<br>2. Susah menarik nafas panjang<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.8961937716263', '89.62%'),
(197, '09-08-2019<br>01:33:24 AM', '1. Kepala terasa sakit<br>2. Susah menarik nafas panjang<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.8961937716263', '89.62%'),
(198, '09-08-2019<br>01:33:44 AM', '1. Kepala terasa sakit<br>2. Susah menarik nafas panjang<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.8961937716263', '89.62%'),
(199, '09-08-2019<br>01:34:07 AM', '1. Kepala terasa sakit<br>2. Susah menarik nafas panjang<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.8961937716263', '89.62%'),
(200, '09-08-2019<br>01:34:18 AM', '1. Kepala terasa sakit<br>2. Susah menarik nafas panjang<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.8961937716263', '89.62%'),
(201, '09-08-2019<br>01:34:39 AM', '1. Kepala terasa sakit<br>2. Susah menarik nafas panjang<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.8961937716263', '89.62%'),
(202, '09-08-2019<br>01:35:46 AM', '1. Kepala terasa sakit<br>2. Susah menarik nafas panjang<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.8961937716263', '89.62%'),
(203, '09-08-2019<br>01:36:04 AM', '1. Kepala terasa sakit<br>2. Susah menarik nafas panjang<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.8961937716263', '89.62%'),
(204, '09-08-2019<br>01:36:18 AM', '1. Kepala terasa sakit<br>2. Susah menarik nafas panjang<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.8961937716263', '89.62%'),
(205, '09-08-2019<br>01:36:38 AM', '1. Kepala terasa sakit<br>2. Susah menarik nafas panjang<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.8961937716263', '89.62%'),
(206, '09-08-2019<br>01:37:20 AM', '1. Kepala terasa sakit<br>2. Susah menarik nafas panjang<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.8961937716263', '89.62%'),
(207, '09-08-2019<br>01:37:29 AM', '1. Kepala terasa sakit<br>2. Susah menarik nafas panjang<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.8961937716263', '89.62%'),
(208, '09-08-2019<br>01:37:38 AM', '1. Kepala terasa sakit<br>2. Susah menarik nafas panjang<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.8961937716263', '89.62%'),
(209, '09-08-2019<br>01:37:46 AM', '1. Kepala terasa sakit<br>2. Susah menarik nafas panjang<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.8961937716263', '89.62%'),
(210, '09-08-2019<br>01:37:58 AM', '1. Kepala terasa sakit<br>2. Susah menarik nafas panjang<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.8961937716263', '89.62%'),
(211, '09-08-2019<br>01:38:11 AM', '1. Kepala terasa sakit<br>2. Susah menarik nafas panjang<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.8961937716263', '89.62%'),
(212, '09-08-2019<br>01:38:40 AM', '1. Kepala terasa sakit<br>2. Susah menarik nafas panjang<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Pada siang hari badan terasa sakit-sakit<br>', 'Stadium 2', '0.8961937716263', '89.62%'),
(213, '09-08-2019<br>01:38:47 AM', '1. Batuk kering<br>2. Batuk berdahak<br>', 'Stadium 2', '0.525', '52.5%'),
(214, '09-08-2019<br>01:39:35 AM', '1. Batuk kering<br>2. Batuk berdahak<br>', 'Stadium 2', '0.525', '52.5%'),
(215, '09-08-2019<br>01:40:08 AM', '1. Batuk kering<br>2. Batuk berdahak<br>', 'Stadium 2', '0.525', '52.5%'),
(216, '09-08-2019<br>01:40:20 AM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>4. Merasakan flu berat<br>5. Tenggorokan terasa sakit<br>6. Tenggorokan terasa ada yang nyangkut<br>7. Terasa gatal-gatal pada tenggorokan<br>', 'Stadium 3', '0.80450259135218', '80.45%'),
(217, '09-08-2019<br>01:41:14 AM', '1. Batuk kering<br>2. Batuk berdahak<br>3. Merasakan flu<br>4. Merasakan flu berat<br>5. Tenggorokan terasa sakit<br>6. Tenggorokan terasa ada yang nyangkut<br>7. Terasa gatal-gatal pada tenggorokan<br>', 'Stadium 3', '0.80450259135218', '80.45%'),
(218, '09-08-2019<br>01:41:22 AM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(219, '09-08-2019<br>01:41:33 AM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(220, '09-08-2019<br>01:41:50 AM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(221, '09-08-2019<br>01:41:59 AM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(222, '09-08-2019<br>01:42:10 AM', '1. Tenggorokan terasa ada yang nyangkut<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Kepala terasa sakit<br>', 'Stadium 3', '0.28767123287671', '28.77%'),
(223, '09-08-2019<br>01:42:20 AM', '1. Tenggorokan terasa ada yang nyangkut<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Kepala terasa sakit<br>', 'Stadium 3', '0.28767123287671', '28.77%'),
(224, '09-08-2019<br>01:42:29 AM', '1. Tenggorokan terasa sakit<br>2. Tenggorokan terasa ada yang nyangkut<br>3. Terasa gatal-gatal pada tenggorokan<br>4. Kepala terasa sakit<br>', 'Stadium 3', '0.38655953250548', '38.66%'),
(225, '09-08-2019<br>01:42:39 AM', '1. Tenggorokan terasa sakit<br>2. Tenggorokan terasa ada yang nyangkut<br>3. Terasa gatal-gatal pada tenggorokan<br>4. Kepala terasa sakit<br>', 'Stadium 3', '0.38655953250548', '38.66%'),
(226, '09-08-2019<br>01:42:50 AM', '1. Kepala terasa sakit<br>2. Dada terasa sesak<br>3. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>4. Susah menarik nafas panjang<br>5. Denyut jantung yang dirasakan agak cepat berdetak<br>6. Pada siang hari badan terasa sakit-sakit<br>7. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.9552644192363', '95.53%'),
(227, '09-08-2019<br>01:43:32 AM', '1. Batuk berdahak<br>2. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>', 'Stadium 2', '0.97', '97%'),
(228, '09-08-2019<br>01:44:34 AM', '1. Batuk berdahak<br>2. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>', 'Stadium 2', '0.97', '97%'),
(229, '09-08-2019<br>01:44:52 AM', '1. Batuk kering<br>2. Merasakan flu berat<br>', 'Stadium 3', '0.75', '75%'),
(230, '09-08-2019<br>01:45:03 AM', '1. Terasa gatal-gatal pada tenggorokan<br>2. Dada terasa sesak<br>', 'Stadium 3', '0.935', '93.5%'),
(231, '09-08-2019<br>01:46:21 AM', '1. Terasa gatal-gatal pada tenggorokan<br>2. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>', 'Stadium 2', '0.585', '58.5%'),
(232, '09-08-2019<br>01:46:45 AM', '1. Dada terasa sesak<br>2. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>', 'Stadium 3', '0.9', '90%'),
(233, '09-08-2019<br>01:47:01 AM', '1. Denyut jantung yang dirasakan agak cepat berdetak<br>2. Demam yang dirasakan naik turun<br>', 'Stadium 1', '0.73684210526316', '73.68%'),
(234, '09-08-2019<br>01:47:38 AM', '1. Merasakan flu<br>2. Dada terasa sesak<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>', 'Stadium 3', '0.88853503184713', '88.85%'),
(235, '09-08-2019<br>01:47:53 AM', '1. Susah menarik nafas panjang<br>2. Demam yang dirasakan naik turun<br>3. Demam tinggi ( > 39º )<br>', 'Stadium 2', '0.54140127388535', '54.14%'),
(236, '09-08-2019<br>01:48:08 AM', '1. Tenggorokan terasa sakit<br>2. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>', 'Stadium 2', '0.585', '58.5%'),
(237, '09-08-2019<br>01:48:43 AM', '1. Tenggorokan terasa ada yang nyangkut<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Dada terasa sesak<br>4. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>', 'Stadium 3', '0.91517128874388', '91.52%'),
(238, '09-08-2019<br>01:52:47 AM', '1. Merasakan flu<br>2. Susah menarik nafas panjang<br>', 'Stadium 2', '0.85', '85%'),
(239, '09-08-2019<br>01:53:16 AM', '1. Merasakan flu berat<br>2. Susah menarik nafas panjang<br>3. Demam<br>', 'Stadium 2', '0.84140969162996', '84.14%'),
(240, '09-08-2019<br>01:53:27 AM', '1. Susah menarik nafas panjang<br>2. Demam<br>', 'Stadium 2', '0.955', '95.5%'),
(241, '09-08-2019<br>01:53:42 AM', '1. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>2. Susah menarik nafas panjang<br>3. Demam<br>', 'Stadium 2', '0.955', '95.5%'),
(242, '09-08-2019<br>02:15:40 AM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(243, '12-08-2019<br>02:58:56 PM', '1. Merasakan flu<br>2. Tenggorokan terasa sakit<br>3. Terasa gatal-gatal pada tenggorokan<br>', 'Stadium 3', '0.24418604651163', '24.42%'),
(244, '12-08-2019<br>02:59:21 PM', '1. Tenggorokan terasa sakit<br>2. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.976025', '97.6%'),
(245, '12-08-2019<br>03:43:09 PM', '1. Merasakan flu<br>2. Tenggorokan terasa sakit<br>3. Kepala terasa sakit<br>4. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>', 'Stadium 2', '0.42215568862275', '42.22%'),
(246, '12-08-2019<br>03:44:23 PM', '1. Kepala terasa sakit<br>2. Dada terasa sesak<br>3. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>4. Denyut jantung yang dirasakan agak cepat berdetak<br>5. Demam<br>6. Demam tinggi ( > 39º )<br>7. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 3', '0.98794766636814', '98.79%'),
(247, '12-08-2019<br>04:03:16 PM', '1. Demam yang dirasakan naik turun<br>2. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.7', '70%'),
(248, '12-08-2019<br>05:02:38 PM', '1. Merasakan flu<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.63814866760168', '63.81%'),
(249, '12-08-2019<br>05:04:30 PM', '1. Merasakan flu<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.63814866760168', '63.81%'),
(250, '12-08-2019<br>05:14:15 PM', '1. Merasakan flu<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.63814866760168', '63.81%'),
(251, '12-08-2019<br>05:14:28 PM', '1. Merasakan flu<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.63814866760168', '63.81%'),
(252, '12-08-2019<br>05:16:18 PM', '1. Merasakan flu<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.63814866760168', '63.81%'),
(253, '12-08-2019<br>05:18:50 PM', '1. Merasakan flu<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.63814866760168', '63.81%'),
(254, '12-08-2019<br>05:18:57 PM', '1. Merasakan flu<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.63814866760168', '63.81%'),
(255, '12-08-2019<br>05:19:03 PM', '1. Merasakan flu<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.63814866760168', '63.81%'),
(256, '12-08-2019<br>05:19:10 PM', '1. Merasakan flu<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.63814866760168', '63.81%'),
(257, '12-08-2019<br>05:19:21 PM', '1. Merasakan flu<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.63814866760168', '63.81%'),
(258, '12-08-2019<br>05:20:09 PM', '1. Merasakan flu<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.63814866760168', '63.81%'),
(259, '12-08-2019<br>05:21:09 PM', '1. Merasakan flu<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.63814866760168', '63.81%'),
(260, '12-08-2019<br>05:21:23 PM', '1. Merasakan flu<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.63814866760168', '63.81%'),
(261, '12-08-2019<br>05:21:39 PM', '1. Merasakan flu<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.63814866760168', '63.81%'),
(262, '12-08-2019<br>05:21:47 PM', '1. Merasakan flu<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.63814866760168', '63.81%'),
(263, '12-08-2019<br>05:21:59 PM', '1. Merasakan flu<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.63814866760168', '63.81%'),
(264, '12-08-2019<br>05:22:15 PM', '1. Merasakan flu berat<br>2. Tenggorokan terasa sakit<br>3. Kepala terasa sakit<br>4. Susah menarik nafas panjang<br>5. Demam<br>6. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 2', '0.71866859623734', '71.87%'),
(265, '12-08-2019<br>05:22:28 PM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(266, '12-08-2019<br>05:22:35 PM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(267, '12-08-2019<br>05:22:58 PM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%');
INSERT INTO `diagnosa` (`id_diagnosa`, `tanggal`, `gejala`, `penyakit`, `nilai`, `persentase`) VALUES
(268, '12-08-2019<br>05:23:08 PM', '1. Merasakan flu<br>2. Merasakan flu berat<br>3. Tenggorokan terasa ada yang nyangkut<br>4. Dada terasa sesak<br>5. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>6. Denyut jantung yang dirasakan agak cepat berdetak<br>7. Pada siang hari badan terasa sakit-sakit<br>8. Demam<br>9. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.98719186134275', '98.72%'),
(269, '12-08-2019<br>05:23:24 PM', '1. Merasakan flu<br>2. Merasakan flu berat<br>3. Tenggorokan terasa ada yang nyangkut<br>4. Dada terasa sesak<br>5. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>6. Denyut jantung yang dirasakan agak cepat berdetak<br>7. Pada siang hari badan terasa sakit-sakit<br>8. Demam<br>9. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.98719186134275', '98.72%'),
(270, '12-08-2019<br>05:23:31 PM', '1. Merasakan flu<br>2. Merasakan flu berat<br>3. Tenggorokan terasa ada yang nyangkut<br>4. Dada terasa sesak<br>5. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>6. Denyut jantung yang dirasakan agak cepat berdetak<br>7. Pada siang hari badan terasa sakit-sakit<br>8. Demam<br>9. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.98719186134275', '98.72%'),
(271, '12-08-2019<br>05:23:37 PM', '1. Merasakan flu<br>2. Merasakan flu berat<br>3. Tenggorokan terasa ada yang nyangkut<br>4. Dada terasa sesak<br>5. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>6. Denyut jantung yang dirasakan agak cepat berdetak<br>7. Pada siang hari badan terasa sakit-sakit<br>8. Demam<br>9. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.98719186134275', '98.72%'),
(272, '12-08-2019<br>05:23:42 PM', '1. Merasakan flu<br>2. Merasakan flu berat<br>3. Tenggorokan terasa ada yang nyangkut<br>4. Dada terasa sesak<br>5. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>6. Denyut jantung yang dirasakan agak cepat berdetak<br>7. Pada siang hari badan terasa sakit-sakit<br>8. Demam<br>9. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.98719186134275', '98.72%'),
(273, '12-08-2019<br>05:24:08 PM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(274, '13-08-2019<br>02:21:50 AM', '1. Dada terasa sesak<br>2. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>3. Denyut jantung yang dirasakan agak cepat berdetak<br>4. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.9965', '99.65%'),
(275, '13-08-2019<br>02:22:15 AM', '1. Tenggorokan terasa sakit<br>2. Terasa gatal-gatal pada tenggorokan<br>3. Dada terasa sesak<br>', 'Stadium 3', '0.935', '93.5%'),
(276, '13-08-2019<br>02:22:37 AM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(277, '13-08-2019<br>02:23:22 AM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.3', '30%'),
(278, '13-08-2019<br>02:45:05 AM', '1. Batuk kering<br>2. Merasakan flu<br>3. Kepala terasa sakit<br>4. Dada terasa sesak<br>5. Denyut jantung yang dirasakan agak cepat berdetak<br>6. Pada siang hari badan terasa sakit-sakit<br>7. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.99043692093693', '99.04%'),
(279, '13-08-2019<br>02:47:29 AM', '1. Demam yang dirasakan naik turun<br>2. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.7', '70%'),
(280, '13-08-2019<br>02:48:53 AM', '1. Merasakan flu<br>2. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.7', '70%'),
(281, '13-08-2019<br>02:49:19 AM', '1. Merasakan flu<br>2. Demam yang dirasakan naik turun<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.7', '70%'),
(282, '13-08-2019<br>02:50:14 AM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.675', '67.5%'),
(283, '13-08-2019<br>02:50:26 AM', '1. Merasakan flu<br>2. Demam yang dirasakan naik turun<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.7', '70%'),
(284, '13-08-2019<br>02:50:50 AM', '1. Batuk kering<br>2. Merasakan flu<br>3. Dada terasa sesak<br>4. Demam yang dirasakan naik turun<br>5. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.75389483933788', '75.39%'),
(285, '14-08-2019<br>01:51:14 AM', '1. Batuk kering<br>2. Merasakan flu<br>3. Merasakan flu berat<br>4. Tenggorokan terasa ada yang nyangkut<br>5. Kepala terasa sakit<br>6. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>', 'Stadium 2', '0.66081434441539', '66.08%'),
(286, '14-08-2019<br>01:53:34 AM', '1. Batuk kering<br>2. Merasakan flu<br>3. Merasakan flu berat<br>4. Terasa gatal-gatal pada tenggorokan<br>5. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>', 'Stadium 2', '0.46272154679947', '46.27%'),
(287, '14-08-2019<br>01:53:48 AM', '1. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>2. Susah menarik nafas panjang<br>3. Demam yang dirasakan naik turun<br>4. Demam<br>', 'Stadium 2', '0.99145', '99.15%'),
(288, '14-08-2019<br>01:57:52 AM', '1. Batuk kering<br>2. Merasakan flu<br>3. Demam yang dirasakan naik turun<br>', 'Stadium 1', '0.686', '68.6%'),
(289, '14-08-2019<br>01:58:59 AM', '1. Batuk kering<br>2. Merasakan flu<br>3. Demam yang dirasakan naik turun<br>4. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.9058', '90.58%'),
(290, '14-08-2019<br>02:02:33 AM', '1. Batuk kering<br>2. Merasakan flu<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.889', '88.9%'),
(291, '14-08-2019<br>02:03:40 AM', '1. Merasakan flu<br>2. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.7', '70%'),
(292, '14-08-2019<br>08:16:03 AM', '1. Batuk kering<br>2. Merasakan flu<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.889', '88.9%'),
(293, '14-08-2019<br>08:16:21 AM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.63', '63%'),
(294, '14-08-2019<br>09:42:12 AM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.63', '63%'),
(295, '14-08-2019<br>10:13:02 AM', '1. Batuk kering<br>2. Merasakan flu<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.889', '88.9%'),
(296, '15-08-2019<br>06:07:52 AM', '1. Batuk kering<br>2. Merasakan flu<br>', 'Stadium 1', '0.63', '63%'),
(297, '15-08-2019<br>06:08:22 AM', '1. Batuk kering<br>2. Merasakan flu<br>3. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.889', '88.9%'),
(298, '26-08-2019<br>04:10:25 PM', '1. Batuk berdahak<br>2. Merasakan flu berat<br>3. Pada siang hari badan terasa sakit-sakit<br>4. Demam yang dirasakan naik turun<br>5. Demam<br>6. Demam tinggi ( > 39º )<br>', 'Stadium 3', '0.70326409495549', '70.33%');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ds_aturan`
--

CREATE TABLE `ds_aturan` (
  `id` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL,
  `ds` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `ds_aturan`
--

INSERT INTO `ds_aturan` (`id`, `id_penyakit`, `id_gejala`, `ds`) VALUES
(1, 1, 1, 0.7),
(2, 3, 1, 0.25),
(3, 2, 2, 0.7),
(4, 3, 2, 0.7),
(5, 1, 3, 0.9),
(6, 2, 3, 0.4),
(7, 3, 4, 0.75),
(8, 1, 5, 0.6),
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
-- Struktur dari tabel `ds_gejala`
--

CREATE TABLE `ds_gejala` (
  `id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `ds_gejala`
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
-- Struktur dari tabel `ds_penyakit`
--

CREATE TABLE `ds_penyakit` (
  `id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kett` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `ds_penyakit`
--

INSERT INTO `ds_penyakit` (`id`, `kode`, `nama`, `kett`) VALUES
(1, 'P1', 'Stadium 1', 'Segera lakukan pengecekan ke dokter.'),
(2, 'P2', 'Stadium 2', 'Segera lakukan pengecekan ke dokter, ada kemungkinan bisa rawat jalan atau rawat inap.'),
(3, 'P3', 'Stadium 3', 'Segera lakukan pengecekan ke dokter, karena harus dirawat inap di Rumah Sakit. Diperlukan pengambilan sampel darah untuk didiagnosis lebih lanjut.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgl_lahir` varchar(50) NOT NULL,
  `id_admin` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama`, `tgl_lahir`, `id_admin`) VALUES
(12, 'qqq', '1995-08-12', 5),
(16, 'Aliif', '2019-08-30', 2),
(17, 'aaaaaammm', '2019-08-22', 6),
(18, 'Lala', '1985-11-28', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `gejala` text NOT NULL,
  `penyakit` varchar(200) NOT NULL,
  `nilai` varchar(20) NOT NULL,
  `persentase` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `riwayat`
--

INSERT INTO `riwayat` (`id_riwayat`, `id_pasien`, `tanggal`, `gejala`, `penyakit`, `nilai`, `persentase`) VALUES
(9, 12, '03-08-2019<br>04:44:38 PM', '1. Merasakan flu berat<br>2. Terasa gatal-gatal pada tenggorokan<br>3. 2 minggu sebelum sakit pernah melaksanakan haji atau umroh ke timur tengah<br>', 'Stadium 3', '0.8375', '83.75%'),
(11, 17, '03-08-2019<br>05:36:12 PM', '1. Merasakan flu<br>2. Merasakan flu berat<br>', 'Stadium 3', '0.64285714285714', '64.29%'),
(12, 18, '14-08-2019<br>02:21:59 AM', '1. Batuk kering<br>2. Merasakan flu<br>3. Merasakan flu berat<br>4. Pada saat malam hari badan terasa panas dan siang terasa dingin<br>', 'Stadium 1', '0.81559633027523', '81.56%');

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
  ADD PRIMARY KEY (`id_pasien`),
  ADD KEY `id_admin` (`id_admin`);

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
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `diagnosa`
--
ALTER TABLE `diagnosa`
  MODIFY `id_diagnosa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;
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
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ds_aturan`
--
ALTER TABLE `ds_aturan`
  ADD CONSTRAINT `ds_aturan_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `ds_penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ds_aturan_ibfk_2` FOREIGN KEY (`id_gejala`) REFERENCES `ds_gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD CONSTRAINT `pasien_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD CONSTRAINT `riwayat_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
