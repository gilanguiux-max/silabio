-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 11:58 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `silabio`
--

-- --------------------------------------------------------

--
-- Table structure for table `cek_status_peminjaman`
--

CREATE TABLE `cek_status_peminjaman` (
  `id` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `kategori_peminjaman` varchar(255) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cek_status_peminjaman`
--

INSERT INTO `cek_status_peminjaman` (`id`, `id_peminjaman`, `kategori_peminjaman`, `tanggal_pinjam`, `tanggal_kembali`) VALUES
(3, 7, 'kusus', '2000-01-01', '2000-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `cms_captcha`
--

CREATE TABLE `cms_captcha` (
  `captcha_id` bigint(13) NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_captcha`
--

INSERT INTO `cms_captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(4033, 1623054060, '::1', '226904'),
(4032, 1623054013, '::1', '216494');

-- --------------------------------------------------------

--
-- Table structure for table `cms_log`
--

CREATE TABLE `cms_log` (
  `id_log` int(30) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `mac_address` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `kegiatan` text DEFAULT NULL,
  `user` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_log`
--

INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(1, '::1', '', '2019-01-30 20:39:29', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(2, '::1', '', '2019-11-05 17:45:51', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(3, '::1', '', '2019-11-05 17:47:27', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>001/kalingga/11/2019</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2019-11-05</b></li><li><b>tgl_pengiriman</b> dengan value <b>2020-02-01</b></li><li><b>fsc_cert</b> dengan value <b>34124</b></li><li><b>fsc_lisence</b> dengan value <b>524554</b></li><li><b>buyer_po_nr</b> dengan value <b>778</b></li><li><b>pembayaran</b> dengan value <b>2</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'superadmin'),
(4, '::1', '', '2020-03-10 17:15:13', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(5, '::1', '', '2020-03-12 09:55:56', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Instansi</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>instansi</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/instansi</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'superadmin'),
(6, '::1', '', '2020-03-12 13:25:13', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(7, '::1', '', '2020-03-12 13:39:55', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>1</b></li><li><b>alamat</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin'),
(8, '::1', '', '2020-03-12 13:40:20', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>logo</b> dengan value <b>files/2020/03/ebcff3bcfaf285d80bf3e5144993191d.png</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin'),
(9, '::1', '', '2020-03-12 13:40:52', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>Kampus Sekaran, Gunungpati, Semarang</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin'),
(10, '::1', '', '2020-05-08 07:34:20', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(11, '::1', '', '2020-05-08 07:47:34', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'superadmin'),
(12, '::1', '', '2020-05-08 07:47:56', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>lihat</b></li></ul>', 'superadmin'),
(13, '::1', '', '2020-05-08 09:37:33', 'Login  by Kholiq', 'kholiq'),
(14, '::1', '', '2020-05-08 09:39:40', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>keterangan</b> dengan value <b>Mikroskop Besar</b></li></ul>', 'kholiq'),
(15, '::1', '', '2020-05-11 20:57:56', 'Logout SIONLAB by ', 'Tamu'),
(16, '::1', '', '2020-05-11 21:06:47', 'Login  by Kholiq', 'kholiq'),
(17, '::1', '', '2020-05-12 13:10:44', 'Logout SIONLAB by ', 'Tamu'),
(18, '::1', '', '2020-05-12 13:17:34', 'Login  by Kholiq', 'kholiq'),
(19, '::1', '', '2020-05-12 13:21:03', 'Logout SIONLAB by Kholiq', 'kholiq'),
(20, '::1', '', '2020-05-12 13:21:28', 'Login  by Kholiq', 'kholiq'),
(21, '::1', '', '2020-05-12 17:33:04', 'Logout SIONLAB by ', 'Tamu'),
(22, '::1', '', '2020-05-12 18:38:30', 'Login  by Kholiq', 'kholiq'),
(23, '::1', '', '2020-05-12 18:46:14', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>Mikroskop</b></li></ul>', 'kholiq'),
(24, '::1', '', '2020-05-13 11:15:42', 'Logout SIONLAB by ', 'Tamu'),
(25, '::1', '', '2020-05-13 11:38:26', 'Login  by Kholiq', 'kholiq'),
(26, '::1', '', '2020-05-13 14:28:52', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>keterangan</b> dengan value <b>Mikroskop Besar</b></li></ul>', 'kholiq'),
(27, '::1', '', '2020-05-13 14:32:30', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(28, '::1', '', '2020-05-13 14:49:29', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori3</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(29, '::1', '', '2020-05-13 15:13:29', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori 2</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(30, '::1', '', '2020-05-13 15:14:03', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori I</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(31, '::1', '', '2020-05-13 15:14:18', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(32, '::1', '', '2020-05-13 15:19:18', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori 4</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(33, '::1', '', '2020-05-13 15:26:51', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori2</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(34, '::1', '', '2020-05-13 15:27:03', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori2</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(35, '::1', '', '2020-05-13 15:57:33', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(36, '::1', '', '2020-05-13 19:55:19', 'Logout SIONLAB by ', 'Tamu'),
(37, '::1', '', '2020-05-13 19:56:35', 'Login  by Kholiq', 'kholiq'),
(38, '::1', '', '2020-05-13 19:57:11', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(39, '::1', '', '2020-05-13 20:19:23', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(40, '::1', '', '2020-05-13 20:25:59', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(41, '::1', '', '2020-05-13 20:53:33', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(42, '::1', '', '2020-05-13 21:44:42', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>keterangan</b> dengan value <b>Mikroskop</b></li></ul>', 'kholiq'),
(43, '::1', '', '2020-05-13 21:44:54', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>keterangan</b> dengan value <b>Mikroskop besar</b></li></ul>', 'kholiq'),
(44, '::1', '', '2020-05-13 21:59:12', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(45, '::1', '', '2020-05-13 21:59:23', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(46, '::1', '', '2020-05-13 22:01:08', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(47, '::1', '', '2020-05-13 22:02:04', 'Mengedit Master kategori_alat_dan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(48, '::1', '', '2020-05-13 22:02:37', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(49, '::1', '', '2020-05-13 22:03:05', 'Mengedit Master kategori_alat_dan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(50, '::1', '', '2020-05-13 22:04:54', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori x</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(51, '::1', '', '2020-05-13 22:05:07', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori x</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(52, '::1', '', '2020-05-13 22:06:34', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(53, '::1', '', '2020-05-13 22:06:47', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(54, '::1', '', '2020-05-13 22:10:42', 'Menambah grup menu dengan data sbb:<br />\r\n                    <ul><li><b>nama_grup</b> dengan value <b>Kelola</b></li></ul>', 'kholiq'),
(55, '::1', '', '2020-05-13 22:10:53', 'Mengedit grup menu dengan data sbb:<br />\r\n                    <ul><li><b>id_grup_menu</b> dengan value <b>4</b></li><li><b>nama_grup</b> dengan value <b>Kelola</b></li></ul>', 'kholiq'),
(56, '::1', '', '2020-05-13 22:13:11', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(57, '::1', '', '2020-05-13 22:13:50', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(58, '::1', '', '2020-05-13 22:14:00', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(59, '::1', '', '2020-05-13 22:14:20', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(60, '::1', '', '2020-05-13 22:16:04', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(61, '::1', '', '2020-05-13 22:16:14', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(62, '::1', '', '2020-05-13 22:18:27', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori v</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(63, '::1', '', '2020-05-13 22:20:04', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(64, '::1', '', '2020-05-13 22:21:22', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(65, '::1', '', '2020-05-13 22:21:36', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori v</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(66, '::1', '', '2020-05-13 22:22:49', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(67, '::1', '', '2020-05-13 22:25:16', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori v</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(68, '::1', '', '2020-05-13 22:27:25', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori v</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(69, '::1', '', '2020-05-13 23:15:55', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori 0</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(70, '::1', '', '2020-05-13 23:16:13', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(71, '::1', '', '2020-05-13 23:16:23', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(72, '::1', '', '2020-05-13 23:19:15', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>cpu</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(73, '::1', '', '2020-05-13 23:19:27', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>cpu</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(74, '::1', '', '2020-05-14 00:41:52', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>cpu</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(75, '::1', '', '2020-05-14 01:02:50', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>cpu</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(76, '::1', '', '2020-05-14 02:05:41', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori w</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(77, '::1', '', '2020-05-14 02:05:56', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(78, '::1', '', '2020-05-14 12:46:06', 'Logout SIONLAB by ', 'Tamu'),
(79, '::1', '', '2020-05-14 12:46:16', 'Logout SIONLAB by ', 'Tamu'),
(80, '::1', '', '2020-05-14 12:49:58', 'Login  by Kholiq', 'kholiq'),
(81, '::1', '', '2020-05-14 14:16:04', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(82, '::1', '', '2020-05-14 14:16:18', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>kc</b></li></ul>', 'kholiq'),
(83, '::1', '', '2020-05-14 14:17:34', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>kp</b></li></ul>', 'kholiq'),
(84, '::1', '', '2020-05-14 15:27:51', 'Mengedit Master id dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>wk</b></li></ul>', 'kholiq'),
(85, '::1', '', '2020-05-14 15:28:03', 'Mengedit Master id dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>kc</b></li></ul>', 'kholiq'),
(86, '::1', '', '2020-05-14 15:28:12', 'Mengedit Master id dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>kc</b></li></ul>', 'kholiq'),
(87, '::1', '', '2020-05-14 15:33:07', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>k</b></li></ul>', 'kholiq'),
(88, '::1', '', '2020-05-14 16:00:36', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>wc</b></li></ul>', 'kholiq'),
(89, '::1', '', '2020-05-14 16:00:55', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>qe</b></li></ul>', 'kholiq'),
(90, '::1', '', '2020-05-14 20:15:16', 'Logout SIONLAB by ', 'Tamu'),
(91, '::1', '', '2020-05-14 20:15:36', 'Login  by Kholiq', 'kholiq'),
(92, '::1', '', '2020-05-14 20:19:13', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>qw</b></li></ul>', 'kholiq'),
(93, '::1', '', '2020-05-14 20:19:31', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>pc</b></li><li><b>keterangan</b> dengan value <b>kc</b></li></ul>', 'kholiq'),
(94, '::1', '', '2020-05-14 20:20:26', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>we</b></li></ul>', 'kholiq'),
(95, '::1', '', '2020-05-14 20:29:41', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>pcc</b></li><li><b>keterangan</b> dengan value <b>wlw</b></li></ul>', 'kholiq'),
(96, '::1', '', '2020-05-14 20:56:53', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>pcc</b></li><li><b>keterangan</b> dengan value <b>pwq</b></li></ul>', 'kholiq'),
(97, '::1', '', '2020-05-14 21:31:48', 'Menghapus Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul></ul>', 'kholiq'),
(98, '::1', '', '2020-05-14 21:39:25', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(99, '::1', '', '2020-05-14 21:39:38', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(100, '::1', '', '2020-05-14 21:42:51', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul></ul>', 'kholiq'),
(101, '::1', '', '2020-05-14 21:55:05', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>129</b></li><li><b>nama</b> dengan value <b>Gambar Depan</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/gambar_depan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>3</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(102, '::1', '', '2020-05-14 21:55:21', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>129</b></li><li><b>nama</b> dengan value <b>Gambar Depan</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/gambar_depan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(103, '::1', '', '2020-05-15 07:09:16', 'Logout SIONLAB by ', 'Tamu'),
(104, '::1', '', '2020-05-15 07:09:50', 'Login  by Kholiq', 'kholiq'),
(105, '::1', '', '2020-05-15 08:04:49', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori1</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(106, '::1', '', '2020-05-15 08:22:20', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori1</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(107, '::1', '', '2020-05-15 08:25:14', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori1</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(108, '::1', '', '2020-05-15 08:32:23', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kategori_alat_bahan</b> dengan value <b>kategori1</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(109, '::1', '', '2020-05-15 08:41:42', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>umum</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(110, '::1', '', '2020-05-15 08:41:53', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kategori_alat_bahan</b> dengan value <b>kategori1</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(111, '::1', '', '2020-05-15 18:29:39', 'Logout SIONLAB by ', 'Tamu'),
(112, '::1', '', '2020-05-15 18:30:55', 'Login  by Kholiq', 'kholiq'),
(113, '::1', '', '2020-05-15 19:09:06', 'Mengedit Master nama_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2009</b></li></ul>', 'kholiq'),
(114, '::1', '', '2020-05-15 19:09:53', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2009</b></li></ul>', 'kholiq'),
(115, '::1', '', '2020-05-15 19:10:43', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(116, '::1', '', '2020-05-15 19:15:15', 'Mengedit Master nama_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(117, '::1', '', '2020-05-15 19:17:10', 'Mengedit Master nama_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(118, '::1', '', '2020-05-15 19:17:27', 'Mengedit Master nama_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>wkwkwk</b></li></ul>', 'kholiq'),
(119, '::1', '', '2020-05-15 19:19:58', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>BK01</b></li><li><b>jenis_bahan</b> dengan value <b>Buku</b></li><li><b>nama_bahan</b> dengan value <b>Lean UX</b></li><li><b>tahun</b> dengan value <b>2011</b></li><li><b>pengarang</b> dengan value <b>Josh gothel</b></li></ul>', 'kholiq'),
(120, '::1', '', '2020-05-15 19:22:03', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>bk03</b></li><li><b>jenis_bahan</b> dengan value <b>buku</b></li><li><b>nama_bahan</b> dengan value <b>buku petunjuk</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>-</b></li></ul>', 'kholiq'),
(121, '::1', '', '2020-05-15 19:23:23', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>bk03</b></li><li><b>jenis_bahan</b> dengan value <b>buku</b></li><li><b>nama_bahan</b> dengan value <b>buku petunjuk</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>-</b></li></ul>', 'kholiq'),
(122, '::1', '', '2020-05-15 19:28:29', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>002</b></li><li><b>jenis_bahan</b> dengan value <b>kertas</b></li><li><b>nama_bahan</b> dengan value <b>kertas karton</b></li><li><b>tahun</b> dengan value <b>2009</b></li></ul>', 'kholiq'),
(123, '::1', '', '2020-05-15 19:28:55', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>002</b></li><li><b>jenis_bahan</b> dengan value <b>kertas</b></li><li><b>nama_bahan</b> dengan value <b>kertas karton</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>wkwkwkwk</b></li></ul>', 'kholiq'),
(124, '::1', '', '2020-05-15 19:30:32', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>ch02</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>nama_bahan</b> dengan value <b>co2</b></li><li><b>tahun</b> dengan value <b>2019</b></li><li><b>pengarang</b> dengan value <b>we</b></li></ul>', 'kholiq'),
(125, '::1', '', '2020-05-15 19:30:57', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>cho3</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>nama_bahan</b> dengan value <b>co2</b></li><li><b>tahun</b> dengan value <b>2019</b></li><li><b>pengarang</b> dengan value <b>we</b></li></ul>', 'kholiq'),
(126, '::1', '', '2020-05-15 19:33:29', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>ch02</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>nama_bahan</b> dengan value <b>co2</b></li><li><b>tahun</b> dengan value <b>-</b></li><li><b>pengarang</b> dengan value <b>we</b></li></ul>', 'kholiq'),
(127, '::1', '', '2020-05-15 19:36:32', 'Mengedit Master nama_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>ch02</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>nama_bahan</b> dengan value <b>co2</b></li><li><b>tahun</b> dengan value <b>2019</b></li><li><b>pengarang</b> dengan value <b>wk</b></li></ul>', 'kholiq'),
(128, '::1', '', '2020-05-15 19:37:27', 'Mengedit Master nama_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kode</b> dengan value <b>ch02</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>nama_bahan</b> dengan value <b>co2</b></li><li><b>tahun</b> dengan value <b>2019</b></li><li><b>pengarang</b> dengan value <b>wk</b></li></ul>', 'kholiq'),
(129, '::1', '', '2020-05-15 21:54:44', 'Login  by Kholiq', 'kholiq'),
(130, '::1', '', '2020-05-18 13:13:35', 'Logout SIONLAB by ', 'Tamu'),
(131, '::1', '', '2020-05-18 13:14:18', 'Login  by Kholiq', 'kholiq'),
(132, '::1', '', '2020-05-18 13:14:19', 'Login  by Kholiq', 'kholiq'),
(133, '::1', '', '2020-05-18 21:49:55', 'Logout SIONLAB by ', 'Tamu'),
(134, '::1', '', '2020-05-18 21:50:12', 'Login  by Kholiq', 'kholiq'),
(135, '::1', '', '2020-05-19 13:35:37', 'Logout SIONLAB by ', 'Tamu'),
(136, '::1', '', '2020-05-19 13:35:58', 'Login  by Kholiq', 'kholiq'),
(137, '::1', '', '2020-05-19 19:45:54', 'Login  by Kholiq', 'kholiq'),
(138, '::1', '', '2020-05-19 22:57:27', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>semester</b> dengan value <b>semester 4</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-05-09</b></li><li><b>sumber_pendanaan</b> dengan value <b>fakultas</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-06-09</b></li><li><b>pajak</b> dengan value <b>7</b></li><li><b>status_pengajuan</b> dengan value <b>belum turun</b></li><li><b>status</b> dengan value <b>ada</b></li></ul>', 'kholiq'),
(139, '::1', '', '2020-05-19 23:29:05', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>semester</b> dengan value <b>semester 4</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-05-09</b></li><li><b>sumber_pendanaan</b> dengan value <b>fakultas</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-06-09</b></li><li><b>pajak</b> dengan value <b>7</b></li><li><b>status_pengajuan</b> dengan value <b>belum turun</b></li><li><b>status</b> dengan value <b>tidak</b></li></ul>', 'kholiq'),
(140, '::1', '', '2020-05-20 19:35:53', 'Logout SIONLAB by ', 'Tamu'),
(141, '::1', '', '2020-05-20 19:36:35', 'Login  by Kholiq', 'kholiq'),
(142, '::1', '', '2020-05-20 19:37:19', 'Logout SIONLAB by Kholiq', 'kholiq'),
(143, '::1', '', '2020-05-20 19:37:33', 'Login  by Kholiq', 'kholiq'),
(144, '::1', '', '2020-05-20 19:38:47', 'Logout SIONLAB by Kholiq', 'kholiq'),
(145, '::1', '', '2020-05-20 19:39:04', 'Login  by Kholiq', 'kholiq'),
(146, '::1', '', '2020-05-21 19:07:28', 'Login  by Kholiq', 'kholiq'),
(147, '::1', '', '2020-05-21 23:18:23', 'Login  by Kholiq', 'kholiq'),
(148, '::1', '', '2020-05-21 23:54:31', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(149, '::1', '', '2020-05-21 23:56:20', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>status</b> dengan value <b>ada</b></li></ul>', 'kholiq'),
(150, '::1', '', '2020-05-21 23:57:49', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>fakultas</b></li><li><b>status</b> dengan value <b>ada</b></li></ul>', 'kholiq'),
(151, '::1', '', '2020-05-21 23:58:30', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>katgeori 2</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(152, '::1', '', '2020-05-21 23:59:09', 'Mengedit Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>sumber_pendanaan</b> dengan value <b>fakultas</b></li><li><b>status</b> dengan value <b>tidak ada</b></li></ul>', 'kholiq'),
(153, '::1', '', '2020-05-22 02:13:00', 'Login  by Kholiq', 'kholiq'),
(154, '::1', '', '2020-05-22 07:02:43', 'Login  by Kholiq', 'kholiq'),
(155, '::1', '', '2020-05-22 18:25:12', 'Login  by Kholiq', 'kholiq'),
(156, '::1', '', '2020-05-23 13:37:07', 'Login  by Kholiq', 'kholiq'),
(157, '::1', '', '2020-05-23 19:56:37', 'Login  by Kholiq', 'kholiq'),
(158, '::1', '', '2020-05-23 19:57:13', 'Logout SIONLAB by Kholiq', 'kholiq'),
(159, '::1', '', '2020-05-23 19:57:54', 'Login  by Kholiq', 'kholiq'),
(160, '::1', '', '2020-05-23 20:01:56', 'Logout SIONLAB by Kholiq', 'kholiq'),
(161, '::1', '', '2020-05-27 12:41:50', 'Login  by Kholiq', 'kholiq'),
(162, '::1', '', '2020-05-27 12:41:59', 'Logout SIONLAB by Kholiq', 'kholiq'),
(163, '::1', '', '2020-05-27 12:42:19', 'Login  by Kholiq', 'kholiq'),
(164, '::1', '', '2020-05-27 12:42:27', 'Logout SIONLAB by Kholiq', 'kholiq'),
(165, '::1', '', '2020-05-27 12:42:42', 'Login  by Kholiq', 'kholiq'),
(166, '::1', '', '2020-05-27 12:42:48', 'Logout SIONLAB by Kholiq', 'kholiq'),
(167, '::1', '', '2020-05-27 12:43:03', 'Login  by Kholiq', 'kholiq'),
(168, '::1', '', '2020-05-27 14:31:46', 'Logout SIONLAB by Kholiq', 'kholiq'),
(169, '::1', '', '2020-05-27 14:33:05', 'Login  by kepala lab', 'kepala_lab01'),
(170, '::1', '', '2020-05-27 14:37:25', 'Logout SIONLAB by kepala lab', 'kepala_lab01'),
(171, '::1', '', '2020-05-27 14:37:48', 'Login  by kepala lab', 'kepala_lab01'),
(172, '::1', '', '2020-05-27 14:37:55', 'Logout SIONLAB by kepala lab', 'kepala_lab01'),
(173, '::1', '', '2020-05-27 14:38:12', 'Login  by Kholiq', 'kholiq'),
(174, '::1', '', '2020-05-27 14:54:50', 'Logout SIONLAB by Kholiq', 'kholiq'),
(175, '::1', '', '2020-05-27 14:55:05', 'Login  by kepala lab', 'kepala_lab01'),
(176, '::1', '', '2020-05-27 14:58:22', 'Logout SIONLAB by kepala lab', 'kepala_lab01'),
(177, '::1', '', '2020-05-27 14:58:35', 'Login  by Kholiq', 'kholiq'),
(178, '::1', '', '2020-05-27 19:50:58', 'Login  by Kholiq', 'kholiq'),
(179, '::1', '', '2020-05-28 00:38:41', 'Login  by Kholiq', 'kholiq'),
(180, '::1', '', '2020-05-28 01:16:30', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>nama_bahan</b> dengan value <b>Kabel Lan</b></li><li><b>satuan_bahan</b> dengan value <b>Meter</b></li><li><b>kategori</b> dengan value <b>Umum</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>stock</b> dengan value <b>100</b></li><li><b>lokasi_penyimpanan</b> dengan value <b>lemari 3</b></li><li><b>tipe_bahan</b> dengan value <b>Tidak Habis Pakai</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'kholiq'),
(181, '::1', '', '2020-05-28 01:17:54', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>nama_bahan</b> dengan value <b>Kabel Lan</b></li><li><b>satuan_bahan</b> dengan value <b>Meter</b></li><li><b>kategori</b> dengan value <b>Umum</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>stock</b> dengan value <b>100</b></li><li><b>lokasi_penyimpanan</b> dengan value <b>Lemari 3</b></li><li><b>tipe_bahan</b> dengan value <b>Tidak Habis Pakai</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'kholiq'),
(182, '::1', '', '2020-05-28 01:18:07', 'Mengedit Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>nama_bahan</b> dengan value <b>Kabel Lan</b></li><li><b>satuan_bahan</b> dengan value <b>Meter</b></li><li><b>kategori</b> dengan value <b>Umum</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>stock</b> dengan value <b>100</b></li><li><b>lokasi_penyimpanan</b> dengan value <b>Lemari 3</b></li><li><b>tipe_bahan</b> dengan value <b>Tidak Habis Pakai</b></li><li><b>kondisi</b> dengan value <b>Buruk</b></li></ul>', 'kholiq'),
(183, '::1', '', '2020-05-28 01:18:46', 'Mengedit Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama_bahan</b> dengan value <b>Kabel Lan</b></li><li><b>satuan_bahan</b> dengan value <b>Meter</b></li><li><b>kategori</b> dengan value <b>Umum</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>stock</b> dengan value <b>100</b></li><li><b>lokasi_penyimpanan</b> dengan value <b>Lemari 3</b></li><li><b>tipe_bahan</b> dengan value <b>Tidak Habis Pakai</b></li><li><b>kondisi</b> dengan value <b>Buruk</b></li></ul>', 'kholiq'),
(184, '::1', '', '2020-05-28 01:18:56', 'Mengedit Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama_bahan</b> dengan value <b>Kabel Lan</b></li><li><b>satuan_bahan</b> dengan value <b>Meter</b></li><li><b>kategori</b> dengan value <b>Umum</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>stock</b> dengan value <b>100</b></li><li><b>lokasi_penyimpanan</b> dengan value <b>Lemari 3</b></li><li><b>tipe_bahan</b> dengan value <b>Tidak Habis Pakai</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'kholiq'),
(185, '::1', '', '2020-05-28 22:10:52', 'Login  by Kholiq', 'kholiq'),
(186, '::1', '', '2020-05-29 08:10:49', 'Login  by kepala lab', 'kepala_lab01'),
(187, '::1', '', '2020-05-29 08:11:49', 'Logout SILADU by kepala lab', 'kepala_lab01'),
(188, '::1', '', '2020-05-29 08:12:06', 'Login  by Kholiq', 'kholiq'),
(189, '::1', '', '2020-05-29 09:55:38', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>kholis</b></li><li><b>username</b> dengan value <b>kholis</b></li><li><b>password</b> dengan value <b>*813002F7088C5B1BBF0A1CB75DD83CA8AE5CE931</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/c9bbd5b516fd82b52dea0368790a1967.jpg</b></li><li><b>no_hp</b> dengan value <b>088766899</b></li><li><b>alamat</b> dengan value <b>pengkol</b></li></ul>', 'kholiq'),
(190, '::1', '', '2020-05-29 10:10:55', 'Logout SIONLAB by Kholiq', 'kholiq'),
(191, '::1', '', '2020-05-29 10:11:10', 'Login  by kholis', 'kholis'),
(192, '::1', '', '2020-05-29 10:14:46', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>15</b></li><li><b>nama</b> dengan value <b>kholis</b></li><li><b>username</b> dengan value <b>kholis</b></li><li><b>password</b> dengan value <b>*8B72A61B6A0FD345E9206D636EB8B21BF204689D</b></li><li><b>no_hp</b> dengan value <b>088766899</b></li><li><b>alamat</b> dengan value <b>pengkol</b></li></ul>', 'kholis'),
(193, '::1', '', '2020-05-29 10:14:50', 'Logout SIONLAB by kholis', 'kholis'),
(194, '::1', '', '2020-05-29 10:15:47', 'Login  by kholis', 'kholis'),
(195, '::1', '', '2020-05-29 10:17:27', 'Logout SIONLAB by kholis', 'kholis'),
(196, '::1', '', '2020-05-29 10:17:44', 'Login  by Kholiq', 'kholiq'),
(197, '::1', '', '2020-05-29 11:25:13', 'Menghapus laporan dengan id 7', 'kholiq'),
(198, '::1', '', '2020-05-29 11:25:57', 'Menghapus laporan dengan id 11', 'kholiq'),
(199, '::1', '', '2020-05-29 11:26:02', 'Menghapus laporan dengan id 13', 'kholiq'),
(200, '::1', '', '2020-05-29 11:47:15', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>15</b></li><li><b>nama</b> dengan value <b>kholis</b></li><li><b>email</b> dengan value <b>mnurkholismajid66@students.unnes.ac.id</b></li><li><b>username</b> dengan value <b>kholis</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>088766899</b></li></ul>', 'kholiq'),
(201, '::1', '', '2020-05-29 11:48:04', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>wkwkwk</b></li><li><b>email</b> dengan value <b>wwwkkwkwk@gmail.com</b></li><li><b>username</b> dengan value <b>wkwkwkw</b></li><li><b>password</b> dengan value <b>*E6CC90B878B948C35E92B003C792C46C58C4AF40</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/e31e0255d173e709580cfd705c7e0e63.jpg</b></li><li><b>no_hp</b> dengan value <b>88900087</b></li></ul>', 'kholiq'),
(202, '::1', '', '2020-05-29 11:48:10', 'Menghapus laporan dengan id 16', 'kholiq'),
(203, '::1', '', '2020-05-29 12:47:53', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>15</b></li><li><b>nama</b> dengan value <b>kholis</b></li><li><b>email</b> dengan value <b>mnurkholismajid66@students.unnes.ac.id</b></li><li><b>username</b> dengan value <b>kholis</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>088766899</b></li></ul>', 'kholiq'),
(204, '::1', '', '2020-05-29 12:48:45', 'Logout SIONLAB by Kholiq', 'kholiq'),
(205, '::1', '', '2020-05-29 12:49:01', 'Login  by kholis', 'kholis'),
(206, '::1', '', '2020-05-29 12:49:42', 'Logout SIONLAB by kholis', 'kholis'),
(207, '::1', '', '2020-05-29 12:50:00', 'Login  by kholis', 'kholis'),
(208, '::1', '', '2020-05-29 12:54:48', 'Logout SIONLAB by kholis', 'kholis'),
(209, '::1', '', '2020-05-29 12:55:07', 'Login  by Kholiq', 'kholiq'),
(210, '::1', '', '2020-05-29 12:55:18', 'Menghapus laporan dengan id 2', 'kholiq'),
(211, '::1', '', '2020-05-29 12:55:21', 'Menghapus laporan dengan id 3', 'kholiq'),
(212, '::1', '', '2020-05-29 12:55:26', 'Menghapus laporan dengan id 8', 'kholiq'),
(213, '::1', '', '2020-05-29 12:55:29', 'Menghapus laporan dengan id 9', 'kholiq'),
(214, '::1', '', '2020-05-29 12:55:31', 'Menghapus laporan dengan id 10', 'kholiq'),
(215, '::1', '', '2020-05-29 12:55:33', 'Menghapus laporan dengan id 12', 'kholiq'),
(216, '::1', '', '2020-05-29 12:55:34', 'Menghapus laporan dengan id 14', 'kholiq'),
(217, '::1', '', '2020-05-29 13:00:34', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>password</b> dengan value <b>*6D45FD76D5E9C6A404E39C25106A7F032659ACB8</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/24dfeeb34e92bc2ddf1aca0bf3c2ce98.jpg</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq'),
(218, '::1', '', '2020-05-29 13:04:43', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>kepala_lab</b></li><li><b>email</b> dengan value <b>kepala_lab</b></li><li><b>username</b> dengan value <b>kepala_lab</b></li><li><b>password</b> dengan value <b>*9575C0046B29C853A98731B0053B780947E0524B</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/b9bc5717ad559fdd46b73b0c369b089a.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(219, '::1', '', '2020-05-29 13:05:29', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>laboran</b></li><li><b>email</b> dengan value <b>laboran</b></li><li><b>username</b> dengan value <b>laboran</b></li><li><b>password</b> dengan value <b>*C7E1AAB5C1E92CE2835AB5E35BC54EAC2D290817</b></li><li><b>level</b> dengan value <b>4</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/21c379d76f68969567b1b2e5c40e48f3.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(220, '::1', '', '2020-05-29 13:06:32', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>koordinator_lab</b></li><li><b>email</b> dengan value <b>koordinator_lab</b></li><li><b>username</b> dengan value <b>koordinator_lab</b></li><li><b>password</b> dengan value <b>*EC2A9F2AC0FF65E0B34FB7C1CE20030855EFF156</b></li><li><b>level</b> dengan value <b>5</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/ae5395d6d32f2bbdfc3a08767e41152d.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(221, '::1', '', '2020-05-29 13:07:20', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>asisten</b></li><li><b>email</b> dengan value <b>asisten</b></li><li><b>username</b> dengan value <b>asisten</b></li><li><b>password</b> dengan value <b>*34D4F44511DF537724AECB9C20245800A653C680</b></li><li><b>level</b> dengan value <b>6</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/ea2fbde56d3e1f0a302267e4d4f7b04f.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(222, '::1', '', '2020-05-29 13:07:59', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>password</b> dengan value <b>*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/69b47bbede1893d66edd2d40a62995b6.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(223, '::1', '', '2020-05-29 13:08:51', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>mahasiswa</b></li><li><b>email</b> dengan value <b>mahasiswa</b></li><li><b>username</b> dengan value <b>mahasiswa</b></li><li><b>password</b> dengan value <b>*58B1E0151C7DBF4DF0D59581B6C5C4E031D9F62A</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/3448f7f0daa177766c9142c47441a803.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(224, '::1', '', '2020-05-29 13:09:04', 'Logout SIONLAB by Kholiq', 'kholiq'),
(225, '::1', '', '2020-05-29 13:09:24', 'Login  by mahasiswa', 'mahasiswa'),
(226, '::1', '', '2020-05-29 13:10:14', 'Logout SIONLAB by mahasiswa', 'mahasiswa'),
(227, '::1', '', '2020-05-29 13:10:34', 'Login  by admin', 'admin'),
(228, '::1', '', '2020-05-29 13:12:13', 'Logout SIONLAB by admin', 'admin'),
(229, '::1', '', '2020-05-29 13:12:29', 'Login  by laboran', 'laboran'),
(230, '::1', '', '2020-05-29 13:16:58', 'Logout SIONLAB by laboran', 'laboran'),
(231, '::1', '', '2020-05-29 13:17:15', 'Login  by Kholiq', 'kholiq'),
(232, '::1', '', '2020-05-29 13:23:54', 'Menghapus laporan dengan id 22', 'kholiq'),
(233, '::1', '', '2020-05-29 13:24:30', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>password</b> dengan value <b>*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/05/181ad34638551080659d5a56b4e439b9.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(234, '::1', '', '2020-05-29 13:24:43', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>24</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>2</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(235, '::1', '', '2020-05-29 13:26:51', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>24</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>0</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(236, '::1', '', '2020-05-29 13:30:42', 'Menghapus laporan dengan id 15', 'kholiq'),
(237, '::1', '', '2020-05-29 13:30:57', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq'),
(238, '::1', '', '2020-05-29 13:31:07', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>nama</b> dengan value <b>kepala_lab</b></li><li><b>email</b> dengan value <b>kepala_lab</b></li><li><b>username</b> dengan value <b>kepala_lab</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(239, '::1', '', '2020-05-29 13:31:18', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>19</b></li><li><b>nama</b> dengan value <b>laboran</b></li><li><b>email</b> dengan value <b>laboran</b></li><li><b>username</b> dengan value <b>laboran</b></li><li><b>level</b> dengan value <b>4</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(240, '::1', '', '2020-05-29 13:32:51', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>20</b></li><li><b>nama</b> dengan value <b>koordinator_lab</b></li><li><b>email</b> dengan value <b>koordinator_lab</b></li><li><b>username</b> dengan value <b>koordinator_lab</b></li><li><b>level</b> dengan value <b>5</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(241, '::1', '', '2020-05-29 13:32:59', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>21</b></li><li><b>nama</b> dengan value <b>asisten</b></li><li><b>email</b> dengan value <b>asisten</b></li><li><b>username</b> dengan value <b>asisten</b></li><li><b>level</b> dengan value <b>6</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(242, '::1', '', '2020-05-29 13:33:06', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>23</b></li><li><b>nama</b> dengan value <b>mahasiswa</b></li><li><b>email</b> dengan value <b>mahasiswa</b></li><li><b>username</b> dengan value <b>mahasiswa</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(243, '::1', '', '2020-05-29 13:33:12', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>24</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(244, '::1', '', '2020-05-29 13:45:53', 'Logout SIONLAB by Kholiq', 'kholiq'),
(245, '::1', '', '2020-05-29 13:46:12', 'Login  by laboran', 'laboran'),
(246, '::1', '', '2020-05-29 13:50:06', 'Logout SIONLAB by laboran', 'laboran'),
(247, '::1', '', '2020-05-29 13:50:26', 'Login  by Kholiq', 'kholiq'),
(248, '::1', '', '2020-05-29 13:50:40', 'Menghapus laporan dengan id 1', 'kholiq'),
(249, '::1', '', '2020-05-29 13:50:54', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Kategori 1</b></li><li><b>keterangan</b> dengan value <b>Alat</b></li></ul>', 'kholiq'),
(250, '::1', '', '2020-05-29 13:51:09', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Kategori 2</b></li><li><b>keterangan</b> dengan value <b>Bahan</b></li></ul>', 'kholiq'),
(251, '::1', '', '2020-05-29 13:57:00', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(252, '::1', '', '2020-05-29 14:29:37', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>kholis</b></li><li><b>email</b> dengan value <b>kholis</b></li><li><b>username</b> dengan value <b>kholis</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*8B72A61B6A0FD345E9206D636EB8B21BF204689D</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/05/878d88ce02e175e7fdd4970355e3a743.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(253, '::1', '', '2020-05-29 14:29:58', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq'),
(254, '::1', '', '2020-05-29 14:30:14', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq'),
(255, '::1', '', '2020-05-29 14:32:28', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq'),
(256, '::1', '', '2020-05-29 14:35:27', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>nama</b> dengan value <b>kepala_lab</b></li><li><b>email</b> dengan value <b>kepala_lab</b></li><li><b>username</b> dengan value <b>kepala_lab</b></li><li><b>jenis_kelamin</b> dengan value <b>2</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(257, '::1', '', '2020-05-29 15:03:29', 'Logout SIONLAB by Kholiq', 'kholiq'),
(258, '::1', '', '2020-05-29 15:03:47', 'Login  by laboran', 'laboran'),
(259, '::1', '', '2020-05-29 15:04:00', 'Logout SIONLAB by laboran', 'laboran'),
(260, '::1', '', '2020-05-29 15:04:29', 'Login  by admin', 'admin'),
(261, '::1', '', '2020-05-29 15:04:44', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>19</b></li><li><b>nama</b> dengan value <b>laboran</b></li><li><b>email</b> dengan value <b>laboran</b></li><li><b>username</b> dengan value <b>laboran</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>4</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin'),
(262, '::1', '', '2020-05-29 15:04:57', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>20</b></li><li><b>nama</b> dengan value <b>koordinator_lab</b></li><li><b>email</b> dengan value <b>koordinator_lab</b></li><li><b>username</b> dengan value <b>koordinator_lab</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>5</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin'),
(263, '::1', '', '2020-05-29 15:05:08', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>21</b></li><li><b>nama</b> dengan value <b>asisten</b></li><li><b>email</b> dengan value <b>asisten</b></li><li><b>username</b> dengan value <b>asisten</b></li><li><b>jenis_kelamin</b> dengan value <b>2</b></li><li><b>level</b> dengan value <b>6</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin'),
(264, '::1', '', '2020-05-29 15:05:17', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>23</b></li><li><b>nama</b> dengan value <b>mahasiswa</b></li><li><b>email</b> dengan value <b>mahasiswa</b></li><li><b>username</b> dengan value <b>mahasiswa</b></li><li><b>jenis_kelamin</b> dengan value <b>2</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin'),
(265, '::1', '', '2020-05-29 15:05:31', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>24</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>jenis_kelamin</b> dengan value <b>2</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin'),
(266, '::1', '', '2020-05-29 18:06:53', 'Login  by Kholiq', 'kholiq'),
(267, '::1', '', '2020-05-29 18:16:41', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>0</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq'),
(268, '::1', '', '2020-05-29 18:17:05', 'Logout SIONLAB by Kholiq', 'kholiq'),
(269, '::1', '', '2020-05-29 18:17:20', 'Login  by admin', 'admin'),
(270, '::1', '', '2020-05-29 21:57:49', 'Logout SIONLAB by ', 'Tamu'),
(271, '::1', '', '2020-05-29 21:58:09', 'Login  by Kholiq', 'kholiq'),
(272, '::1', '', '2020-05-29 23:11:49', 'Logout SILADU by Kholiq', 'kholiq'),
(273, '::1', '', '2020-05-29 23:12:08', 'Login  by dosen', 'dosen'),
(274, '::1', '', '2020-05-29 23:12:31', 'Logout SILADU by dosen', 'dosen'),
(275, '::1', '', '2020-05-29 23:13:06', 'Login  by laboran', 'laboran'),
(276, '::1', '', '2020-05-29 23:18:10', 'Logout SIONLAB by laboran', 'laboran'),
(277, '::1', '', '2020-05-29 23:18:42', 'Login  by admin', 'admin'),
(278, '::1', '', '2020-05-29 23:19:57', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'admin'),
(279, '::1', '', '2020-05-29 23:21:50', 'Menghapus laporan dengan id 25', 'admin'),
(280, '::1', '', '2020-05-29 23:21:59', 'Menghapus laporan dengan id 24', 'admin'),
(281, '::1', '', '2020-05-29 23:23:25', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/05/90b4b3bfd44f5c07ff9a1c92c0878955.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin'),
(282, '::1', '', '2020-05-31 22:48:27', 'Login  by Kholiq', 'kholiq'),
(283, '::1', '', '2020-06-01 19:15:05', 'Login  by Kholiq', 'kholiq'),
(284, '::1', '', '2020-06-01 19:46:46', 'Logout SIONLAB by Kholiq', 'kholiq'),
(285, '::1', '', '2020-06-01 19:47:29', 'Login  by dosen', 'dosen'),
(286, '::1', '', '2020-06-02 00:19:17', 'Login  by admin', 'admin'),
(287, '::1', '', '2020-06-02 00:38:02', 'Logout SIONLAB by admin', 'admin'),
(288, '::1', '', '2020-06-02 00:38:19', 'Login  by Kholiq', 'kholiq'),
(289, '::1', '', '2020-06-03 18:46:02', 'Login  by Kholiq', 'kholiq'),
(290, '::1', '', '2020-06-03 18:48:20', 'Logout SIONLAB by Kholiq', 'kholiq'),
(291, '::1', '', '2020-06-03 18:48:37', 'Login  by Kholiq', 'kholiq'),
(292, '::1', '', '2020-06-03 19:04:15', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*5A562BB3AE4DEB9E61FD707484C323DE11989E4F</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/59213f4a0c4e3451ac877b1c924f8c84.jpg</b></li><li><b>no_hp</b> dengan value <b>89</b></li></ul>', 'kholiq'),
(293, '::1', '', '2020-06-03 19:16:28', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/a772243507dbfb0bf5321f212f60e4f2.jpg</b></li><li><b>no_hp</b> dengan value <b>89</b></li></ul>', 'kholiq'),
(294, '::1', '', '2020-06-03 19:33:46', 'Logout SILADU by Kholiq', 'kholiq'),
(295, '::1', '', '2020-06-03 19:39:15', 'Login  by admin', 'admin'),
(296, '::1', '', '2020-06-03 19:41:21', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>0</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'admin'),
(297, '::1', '', '2020-06-03 19:41:28', 'Logout SIONLAB by admin', 'admin'),
(298, '::1', '', '2020-06-03 19:41:44', 'Login  by admin', 'admin'),
(299, '::1', '', '2020-06-03 19:45:08', 'Logout SIONLAB by admin', 'admin'),
(300, '::1', '', '2020-06-03 19:45:47', 'Login  by Kholiq', 'kholiq'),
(301, '::1', '', '2020-06-03 19:46:32', 'Logout SILADU by Kholiq', 'kholiq'),
(302, '::1', '', '2020-06-03 19:46:57', 'Login  by Kholiq', 'kholiq'),
(303, '::1', '', '2020-06-03 19:47:29', 'Menghapus laporan dengan id 26', 'kholiq'),
(304, '::1', '', '2020-06-03 19:48:32', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/bbc11d3ea2db9009ba44a5c1763ab675.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(305, '::1', '', '2020-06-03 19:48:38', 'Menghapus laporan dengan id 29', 'kholiq'),
(306, '::1', '', '2020-06-03 19:50:12', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/106292ac4c5fa37adf7eb3cc11880936.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(307, '::1', '', '2020-06-03 19:51:33', 'Logout SIONLAB by Kholiq', 'kholiq'),
(308, '::1', '', '2020-06-03 19:51:51', 'Login  by admin', 'admin'),
(309, '::1', '', '2020-06-03 20:40:43', 'Logout SIONLAB by admin', 'admin'),
(310, '::1', '', '2020-06-03 20:40:59', 'Login  by Kholiq', 'kholiq'),
(311, '::1', '', '2020-06-03 21:26:29', 'Logout SIONLAB by Kholiq', 'kholiq'),
(312, '::1', '', '2020-06-03 21:26:43', 'Login  by admin', 'admin'),
(313, '::1', '', '2020-06-03 21:48:04', 'Logout SIONLAB by admin', 'admin'),
(314, '::1', '', '2020-06-03 21:48:20', 'Login  by laboran', 'laboran'),
(315, '::1', '', '2020-06-03 21:51:44', 'Logout SIONLAB by laboran', 'laboran'),
(316, '::1', '', '2020-06-03 21:51:58', 'Login  by admin', 'admin'),
(317, '::1', '', '2020-06-03 22:42:20', 'Logout SILADU by admin', 'admin'),
(318, '::1', '', '2020-06-03 22:42:42', 'Login  by mahasiswa', 'mahasiswa'),
(319, '::1', '', '2020-06-03 22:45:44', 'Logout SILADU by mahasiswa', 'mahasiswa'),
(320, '::1', '', '2020-06-03 22:45:59', 'Login  by Kholiq', 'kholiq'),
(321, '::1', '', '2020-06-03 22:54:50', 'Logout SILADU by Kholiq', 'kholiq'),
(322, '::1', '', '2020-06-03 22:55:40', 'Login  by koordinator_lab', 'koordinator_lab'),
(323, '::1', '', '2020-06-03 22:56:03', 'Logout SILADU by koordinator_lab', 'koordinator_lab'),
(324, '::1', '', '2020-06-03 22:56:41', 'Login  by dosen', 'dosen'),
(325, '::1', '', '2020-06-03 22:56:47', 'Logout SILADU by dosen', 'dosen'),
(326, '::1', '', '2020-06-03 22:57:10', 'Login  by koordinator_lab', 'koordinator_lab'),
(327, '::1', '', '2020-06-03 22:57:21', 'Logout SILADU by koordinator_lab', 'koordinator_lab'),
(328, '::1', '', '2020-06-03 22:57:54', 'Login  by asisten', 'asisten'),
(329, '::1', '', '2020-06-03 22:58:09', 'Logout SILADU by asisten', 'asisten'),
(330, '::1', '', '2020-06-03 22:58:45', 'Login  by asisten', 'asisten'),
(331, '::1', '', '2020-06-03 22:58:57', 'Logout SILADU by asisten', 'asisten'),
(332, '::1', '', '2020-06-03 22:59:18', 'Login  by koordinator_lab', 'koordinator_lab'),
(333, '::1', '', '2020-06-03 22:59:37', 'Logout SILADU by koordinator_lab', 'koordinator_lab'),
(334, '::1', '', '2020-06-03 22:59:54', 'Login  by admin', 'admin'),
(335, '::1', '', '2020-06-03 23:00:52', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>kholis</b></li><li><b>email</b> dengan value <b>mnurkholismajid66@students.unnes.ac.id</b></li><li><b>username</b> dengan value <b>kholi2</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*8B72A61B6A0FD345E9206D636EB8B21BF204689D</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/3ebd97eb13ee6c461f93687583038aba.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin'),
(336, '::1', '', '2020-06-03 23:01:01', 'Logout SILADU by admin', 'admin'),
(337, '::1', '', '2020-06-03 23:01:25', 'Login  by kholis', 'kholi2'),
(338, '::1', '', '2020-06-03 23:01:40', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>31</b></li><li><b>nama</b> dengan value <b>kholis</b></li><li><b>email</b> dengan value <b>mnurkholismajid66@students.unnes.ac.id</b></li><li><b>username</b> dengan value <b>kholis2</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholi2'),
(339, '::1', '', '2020-06-03 23:01:46', 'Logout SILADU by kholis', 'kholi2'),
(340, '::1', '', '2020-06-03 23:02:02', 'Login  by kholis', 'kholis2'),
(341, '::1', '', '2020-06-03 23:02:07', 'Logout SILADU by kholis', 'kholis2'),
(342, '::1', '', '2020-06-03 23:02:21', 'Login  by dosen', 'dosen'),
(343, '::1', '', '2020-06-03 23:02:27', 'Logout SILADU by dosen', 'dosen'),
(344, '::1', '', '2020-06-03 23:02:43', 'Login  by mahasiswa', 'mahasiswa'),
(345, '::1', '', '2020-06-03 23:03:21', 'Logout SILADU by mahasiswa', 'mahasiswa'),
(346, '::1', '', '2020-06-03 23:03:41', 'Login  by admin', 'admin'),
(347, '::1', '', '2020-06-03 23:04:01', 'Menghapus laporan dengan id 31', 'admin'),
(348, '::1', '', '2020-06-03 23:04:48', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>kholis</b></li><li><b>email</b> dengan value <b>kholis</b></li><li><b>username</b> dengan value <b>kholis</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*5BEE99044580ED345557DFE1AECA212F5F4327CC</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/46d165093f9bdbf75da466c295707091.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin'),
(349, '::1', '', '2020-06-03 23:04:55', 'Logout SILADU by admin', 'admin'),
(350, '::1', '', '2020-06-03 23:05:13', 'Login  by kholis', 'kholis'),
(351, '::1', '', '2020-06-03 23:06:55', 'Logout SILADU by kholis', 'kholis'),
(352, '::1', '', '2020-06-03 23:08:48', 'Login  by Kholiq', 'kholiq'),
(353, '::1', '', '2020-06-04 00:00:25', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>5</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>3</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq'),
(354, '::1', '', '2020-06-04 00:20:12', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Universitas</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(355, '::1', '', '2020-06-04 00:20:16', 'Menghapus laporan dengan id 4', 'kholiq'),
(356, '::1', '', '2020-06-04 00:20:29', 'Menambah Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>nama_satuan</b> dengan value <b>Meter</b></li><li><b>keterangan</b> dengan value <b>Meter</b></li></ul>', 'kholiq'),
(357, '::1', '', '2020-06-04 00:20:32', 'Menghapus laporan dengan id 2', 'kholiq'),
(358, '::1', '', '2020-06-04 00:20:57', 'Menambah Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>234</b></li><li><b>jenis_bahan</b> dengan value <b>akwkw</b></li><li><b>nama_bahan</b> dengan value <b>awaea</b></li><li><b>tahun</b> dengan value <b>2090</b></li></ul>', 'kholiq'),
(359, '::1', '', '2020-06-04 00:21:45', 'Menghapus laporan dengan id 3', 'kholiq'),
(360, '::1', '', '2020-06-04 00:22:10', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>234</b></li><li><b>nama_alat</b> dengan value <b>dffeaad</b></li><li><b>keterangan</b> dengan value <b>adda</b></li></ul>', 'kholiq'),
(361, '::1', '', '2020-06-04 00:22:12', 'Menghapus laporan dengan id 3', 'kholiq'),
(362, '::1', '', '2020-06-04 00:22:22', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Kategori 1</b></li><li><b>keterangan</b> dengan value <b>Alat</b></li></ul>', 'kholiq'),
(363, '::1', '', '2020-06-04 00:22:24', 'Menghapus laporan dengan id 7', 'kholiq'),
(364, '::1', '', '2020-06-04 19:45:11', 'Login  by Kholiq', 'kholiq'),
(365, '::1', '', '2020-06-04 19:48:35', 'Logout SILADU by Kholiq', 'kholiq'),
(366, '::1', '', '2020-06-04 19:48:55', 'Login  by mahasiswa', 'mahasiswa'),
(367, '::1', '', '2020-06-04 19:49:12', 'Logout SILADU by mahasiswa', 'mahasiswa'),
(368, '::1', '', '2020-06-05 10:46:19', 'Login  by Kholiq', 'kholiq'),
(369, '::1', '', '2020-06-05 11:45:26', 'Logout SILADU by Kholiq', 'kholiq'),
(370, '::1', '', '2020-06-05 12:42:05', 'Login  by Kholiq', 'kholiq'),
(371, '::1', '', '2020-06-05 12:42:36', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq'),
(372, '::1', '', '2020-06-07 13:30:23', 'Login  by Kholiq', 'kholiq'),
(373, '::1', '', '2020-06-07 13:30:50', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(374, '::1', '', '2020-06-07 15:01:16', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>Kampus Sekaran, Gunungpati, Semarang</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(375, '::1', '', '2020-06-07 15:01:30', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>Kampus Sekaran, Gunungpati, Semarang</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(376, '::1', '', '2020-06-09 13:54:02', 'Login  by Kholiq', 'kholiq'),
(377, '::1', '', '2020-06-09 20:12:39', 'Login  by Kholiq', 'kholiq'),
(378, '::1', '', '2020-06-09 21:08:48', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>56789</b></li><li><b>semester</b> dengan value <b>Semester4</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-08</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-008</b></li><li><b>pajak</b> dengan value <b>100.0000</b></li><li><b>status_pengajuan</b> dengan value <b>Sudah Turun</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(379, '::1', '', '2020-06-09 21:28:33', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>567</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-08</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-08</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(380, '::1', '', '2020-06-09 21:29:42', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>221563213</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-08</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-08</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>Aktif</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(381, '::1', '', '2020-06-09 21:34:02', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5676234</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-17</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-08</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>Aktif</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(382, '::1', '', '2020-06-09 21:34:15', 'Menghapus laporan dengan id 1', 'kholiq'),
(383, '::1', '', '2020-06-09 21:34:18', 'Menghapus laporan dengan id 2', 'kholiq'),
(384, '::1', '', '2020-06-09 21:34:21', 'Menghapus laporan dengan id 567', 'kholiq'),
(385, '::1', '', '2020-06-09 21:34:48', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>314314653</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-10</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-08</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>Aktif</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(386, '::1', '', '2020-06-09 21:42:46', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>145344678</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-12</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-12</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>Aktif</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(387, '::1', '', '2020-06-09 21:44:01', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>145344678</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-12</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-12</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>Aktif</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(388, '::1', '', '2020-06-09 21:44:07', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>145344678</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-12</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-12</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>Aktif</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(389, '::1', '', '2020-06-09 21:49:48', 'Menghapus laporan dengan id 56789', 'kholiq'),
(390, '::1', '', '2020-06-09 22:07:35', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Universitas</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(391, '::1', '', '2020-06-09 22:28:09', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5676234</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-17</b></li><li><b>sumber_pendanaan</b> dengan value <b>4</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-08</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(392, '::1', '', '2020-06-09 22:28:30', 'Mengedit Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>status</b> dengan value <b>tidak ada</b></li></ul>', 'kholiq'),
(393, '::1', '', '2020-06-09 22:34:23', 'Mengedit Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(394, '::1', '', '2020-06-10 10:45:55', 'Login  by Kholiq', 'kholiq'),
(395, '::1', '', '2020-06-10 12:55:11', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Bos</b></li></ul>', 'kholiq'),
(396, '::1', '', '2020-06-10 13:10:53', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>wkwkwkw</b></li></ul>', 'kholiq'),
(397, '::1', '', '2020-06-10 13:29:29', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>125455163</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-12</b></li><li><b>sumber_pendanaan</b> dengan value <b>4</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-12</b></li><li><b>pajak</b> dengan value <b>20000</b></li><li><b>status_pengajuan</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(398, '::1', '', '2020-06-10 13:29:45', 'Menghapus laporan dengan id 5676234', 'kholiq'),
(399, '::1', '', '2020-06-10 13:29:47', 'Menghapus laporan dengan id 145344678', 'kholiq'),
(400, '::1', '', '2020-06-10 13:29:49', 'Menghapus laporan dengan id 221563213', 'kholiq'),
(401, '::1', '', '2020-06-10 13:29:50', 'Menghapus laporan dengan id 314314653', 'kholiq'),
(402, '::1', '', '2020-06-10 13:30:25', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>135145763</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-27</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-08-27</b></li><li><b>pajak</b> dengan value <b>230000</b></li><li><b>status_pengajuan</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(403, '::1', '', '2020-06-10 13:54:58', 'Menghapus laporan dengan id 7', 'kholiq'),
(404, '::1', '', '2020-06-10 13:55:18', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>5</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>3</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq'),
(405, '::1', '', '2020-06-10 14:39:13', 'Logout SIONLAB by Kholiq', 'kholiq'),
(406, '::1', '', '2020-06-10 14:39:35', 'Login  by kepala_lab', 'kepala_lab'),
(407, '::1', '', '2020-06-10 14:43:35', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>nama</b> dengan value <b>kepala_lab</b></li><li><b>email</b> dengan value <b>kepala_lab</b></li><li><b>username</b> dengan value <b>kepala_lab</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kepala_lab'),
(408, '::1', '', '2020-06-10 14:43:57', 'Logout SIONLAB by kepala_lab', 'kepala_lab'),
(409, '::1', '', '2020-06-10 14:45:08', 'Login  by laboran', 'laboran'),
(410, '::1', '', '2020-06-10 14:52:59', 'Logout SILADU by laboran', 'laboran'),
(411, '::1', '', '2020-06-10 14:56:15', 'Login  by Kholiq', 'kholiq'),
(412, '::1', '', '2020-06-10 16:00:32', 'Logout SIONLAB by Kholiq', 'kholiq'),
(413, '::1', '', '2020-06-10 16:35:06', 'Login  by Kholiq', 'kholiq'),
(414, '::1', '', '2020-06-10 16:40:42', 'Logout SIONLAB by Kholiq', 'kholiq'),
(415, '::1', '', '2020-06-10 16:40:58', 'Login  by Kholiq', 'kholiq'),
(416, '::1', '', '2020-06-10 16:45:40', 'Logout SIONLAB by ', 'Tamu'),
(417, '::1', '', '2020-06-10 16:49:33', 'Login  by Kholiq', 'kholiq'),
(418, '::1', '', '2020-06-10 16:51:51', 'Logout SIONLAB by Kholiq', 'kholiq'),
(419, '::1', '', '2020-06-10 17:05:21', 'Login  by Kholiq', 'kholiq'),
(420, '::1', '', '2020-06-10 17:11:10', 'Logout SIONLAB by Kholiq', 'kholiq'),
(421, '::1', '', '2020-06-10 17:30:32', 'Login  by Kholiq', 'kholiq'),
(422, '::1', '', '2020-06-10 18:02:54', 'Logout SIONLAB by Kholiq', 'kholiq'),
(423, '::1', '', '2020-06-11 21:16:14', 'Logout SIONLAB by owner', 'owner'),
(424, '::1', '', '2020-06-11 21:16:28', 'Login  by Kholiq', 'kholiq'),
(425, '::1', '', '2020-06-11 21:19:48', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/68c022d8d0fbf6af2199927280693eb9.jpg</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq'),
(426, '::1', '', '2020-06-11 21:33:32', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(427, '::1', '', '2020-06-11 21:33:52', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>nama</b> dengan value <b>kepala_lab</b></li><li><b>username</b> dengan value <b>kepala_lab</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/0e802dc5f90f4231cd237316050681f9.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(428, '::1', '', '2020-06-11 21:36:57', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/576a50bf0edd4d7069d9906e9336c4a7.jpg</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq'),
(429, '::1', '', '2020-06-11 21:37:22', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>nama</b> dengan value <b>kepala_lab</b></li><li><b>username</b> dengan value <b>kepala_lab</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/39ca34393219a932cd256cc8cb96e6e8.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(430, '::1', '', '2020-06-11 21:37:42', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>nama</b> dengan value <b>kepala_lab</b></li><li><b>username</b> dengan value <b>kepala_lab</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>kepala_lab</b></li></ul>', 'kholiq'),
(431, '::1', '', '2020-06-11 21:37:54', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>admin</b></li></ul>', 'kholiq'),
(432, '::1', '', '2020-06-11 22:04:29', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/74bbfb7f282eece236109fc039485988.jpg</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq'),
(433, '::1', '', '2020-06-11 22:05:29', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>admin</b></li></ul>', 'kholiq'),
(434, '::1', '', '2020-06-11 22:05:40', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/e71f42a5047c20fef37a39a3b54f25e4.jpg</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq'),
(435, '::1', '', '2020-06-12 06:29:49', 'Logout SILADU by ', 'Tamu'),
(436, '::1', '', '2020-06-12 06:30:53', 'Login  by Kholiq', 'kholiq'),
(437, '::1', '', '2020-06-12 06:38:42', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stock</b> dengan value <b>10</b></li><li><b>stock_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>4</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq'),
(438, '::1', '', '2020-06-12 06:52:35', 'Logout SILADU by owner', 'owner'),
(439, '::1', '', '2020-06-12 06:52:52', 'Login  by Kholiq', 'kholiq'),
(440, '::1', '', '2020-06-12 08:48:33', 'Logout SIONLAB by Kholiq', 'kholiq'),
(441, '::1', '', '2020-06-12 08:48:50', 'Login  by admin', 'admin'),
(442, '::1', '', '2020-06-12 09:33:47', 'Logout SIONLAB by admin', 'admin'),
(443, '::1', '', '2020-06-12 09:34:03', 'Login  by Kholiq', 'kholiq'),
(444, '::1', '', '2020-06-12 09:38:14', 'Logout SIONLAB by Kholiq', 'kholiq'),
(445, '::1', '', '2020-06-12 09:42:40', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(446, '::1', '', '2020-06-12 09:56:17', 'Logout SIONLAB by Kholiq', 'kholiq'),
(447, '::1', '', '2020-06-12 10:13:09', 'Login  by Kholiq', 'kholiq'),
(448, '::1', '', '2020-06-12 11:00:49', 'Logout SIONLAB by Kholiq', 'kholiq'),
(449, '::1', '', '2020-06-12 11:01:02', 'Login  by dosen', 'dosen'),
(450, '::1', '', '2020-06-12 11:01:21', 'Logout SIONLAB by dosen', 'dosen'),
(451, '::1', '', '2020-06-12 11:01:37', 'Login  by laboran', 'laboran'),
(452, '::1', '', '2020-06-12 11:22:32', 'Logout SIONLAB by laboran', 'laboran'),
(453, '::1', '', '2020-06-12 11:22:48', 'Login  by Kholiq', 'kholiq'),
(454, '::1', '', '2020-06-12 18:48:00', 'Logout SILADU by ', 'Tamu'),
(455, '::1', '', '2020-06-13 02:59:53', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>200</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>819309</b></li></ul>', 'psdp'),
(456, '::1', '', '2020-06-13 03:00:03', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>200</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'psdp'),
(457, '::1', '', '2020-06-13 03:47:56', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>5</b></li><li><b>stok</b> dengan value <b>1000</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>800000</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'psdp'),
(458, '::1', '', '2020-06-13 12:24:13', 'Logout SILADU by psdp', 'psdp'),
(459, '::1', '', '2020-06-13 12:24:33', 'Login  by Kholiq', 'kholiq'),
(460, '::1', '', '2020-06-13 20:06:16', 'Logout SILADU by ', 'Tamu'),
(461, '::1', '', '2020-06-13 20:06:35', 'Login  by Kholiq', 'kholiq'),
(462, '::1', '', '2020-06-13 20:08:01', 'Logout SILADU by Kholiq', 'kholiq'),
(463, '::1', '', '2020-06-13 20:08:36', 'Login  by mahasiswa', 'mahasiswa'),
(464, '::1', '', '2020-06-14 02:08:58', 'Logout SILADU by Kupret', 'owner'),
(465, '::1', '', '2020-06-14 02:09:23', 'Login  by Kholiq', 'kholiq'),
(466, '::1', '', '2020-06-14 14:54:29', 'Logout SILADU by psdp', 'psdp'),
(467, '::1', '', '2020-06-14 14:54:46', 'Login  by Kholiq', 'kholiq'),
(468, '::1', '', '2020-06-14 14:58:47', 'Logout SILADU by Kholiq', 'kholiq'),
(469, '::1', '', '2020-06-17 14:14:58', 'Login  by Kholiq', 'kholiq'),
(470, '::1', '', '2020-06-17 19:15:49', 'Logout SILADU by ', 'Tamu'),
(471, '::1', '', '2020-06-17 19:16:02', 'Login  by Kholiq', 'kholiq'),
(472, '::1', '', '2020-06-18 09:53:17', 'Logout SILADU by ', 'Tamu'),
(473, '::1', '', '2020-06-18 09:53:57', 'Login  by Kholiq', 'kholiq'),
(474, '::1', '', '2020-06-19 00:03:47', 'Login  by Kholiq', 'kholiq'),
(475, '::1', '', '2020-06-21 17:18:50', 'Logout SILADU by ', 'Tamu'),
(476, '::1', '', '2020-06-21 17:19:34', 'Login  by Kholiq', 'kholiq'),
(477, '::1', '', '2020-06-21 17:19:34', 'Login  by Kholiq', 'kholiq'),
(478, '::1', '', '2020-06-25 20:11:41', 'Logout SILADU by ', 'Tamu'),
(479, '::1', '', '2020-06-25 20:12:54', 'Login  by Kholiq', 'kholiq'),
(480, '::1', '', '2020-06-25 20:22:52', 'Logout SIONLAB by Kholiq', 'kholiq'),
(481, '::1', '', '2020-06-25 20:23:23', 'Login  by Kholiq', 'kholiq'),
(482, '::1', '', '2020-06-25 20:42:43', 'Logout SILADU by Kholiq', 'kholiq'),
(483, '::1', '', '2020-06-25 21:26:02', 'Login  by Kholiq', 'kholiq'),
(484, '::1', '', '2020-06-25 21:31:33', 'Logout SILADU by Kholiq', 'kholiq'),
(485, '::1', '', '2020-06-25 21:47:41', 'Login  by Kholiq', 'kholiq'),
(486, '::1', '', '2020-06-25 22:02:17', 'Logout SILADU by Kholiq', 'kholiq'),
(487, '::1', '', '2020-06-25 22:07:09', 'Login  by Kholiq', 'kholiq'),
(488, '::1', '', '2020-06-25 22:56:50', 'Logout SILADU by Kholiq', 'kholiq'),
(489, '::1', '', '2020-06-26 00:28:23', 'Login  by Kholiq', 'kholiq'),
(490, '::1', '', '2020-06-26 07:56:43', 'Logout SIONLAB by ', 'Tamu'),
(491, '::1', '', '2020-06-26 08:18:02', 'Login  by Kholiq', 'kholiq'),
(492, '::1', '', '2020-06-26 08:18:31', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>30</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>0</b></li><li><b>no_hp</b> dengan value <b>9</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>dosen</b></li></ul>', 'kholiq'),
(493, '::1', '', '2020-06-26 08:18:37', 'Logout SIONLAB by Kholiq', 'kholiq'),
(494, '::1', '', '2020-06-26 08:21:36', 'Login  by dosen', 'dosen'),
(495, '::1', '', '2020-06-26 08:27:11', 'Logout SIONLAB by dosen', 'dosen'),
(496, '::1', '', '2020-06-26 08:27:26', 'Login  by dosen', 'dosen'),
(497, '::1', '', '2020-06-26 08:27:39', 'Logout SIONLAB by dosen', 'dosen'),
(498, '::1', '', '2020-06-26 08:32:21', 'Login  by Kholiq', 'kholiq'),
(499, '::1', '', '2020-06-26 08:38:43', 'Logout SIONLAB by Kholiq', 'kholiq'),
(500, '::1', '', '2020-06-26 08:43:55', 'Login  by Kholiq', 'kholiq'),
(501, '::1', '', '2020-06-26 09:12:36', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-JN-20062600000</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-26</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-06-26</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(502, '::1', '', '2020-06-26 09:13:55', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-JN-20062600000</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-26</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-06-26</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(503, '::1', '', '2020-06-26 12:25:12', 'Logout SILADU by ', 'Tamu'),
(504, '::1', '', '2020-06-26 12:29:19', 'Login  by Kholiq', 'kholiq'),
(505, '::1', '', '2020-06-26 12:43:47', 'Logout SILADU by Kholiq', 'kholiq'),
(506, '::1', '', '2020-06-26 12:44:04', 'Login  by Kholiq', 'kholiq'),
(507, '::1', '', '2020-06-26 19:45:17', 'Login  by Kholiq', 'kholiq'),
(508, '::1', '', '2020-06-27 13:08:12', 'Logout SILADU by ', 'Tamu'),
(509, '::1', '', '2020-06-27 13:11:00', 'Login  by Kholiq', 'kholiq'),
(510, '::1', '', '2020-06-27 13:11:29', 'Menghapus laporan dengan id 135145764', 'kholiq'),
(511, '::1', '', '2020-06-27 13:11:30', 'Menghapus laporan dengan id 135145765', 'kholiq'),
(512, '::1', '', '2020-06-27 13:18:30', 'Logout SILADU by Kholiq', 'kholiq'),
(513, '::1', '', '2020-06-27 13:18:44', 'Login  by Kholiq', 'kholiq'),
(514, '::1', '', '2020-06-27 13:32:27', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2090</b></li></ul>', 'kholiq'),
(515, '::1', '', '2020-06-27 13:34:01', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stock</b> dengan value <b>10</b></li><li><b>stock_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>4</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>Tidak cepat habis</b></li></ul>', 'kholiq'),
(516, '::1', '', '2020-06-27 13:47:19', 'Menghapus laporan dengan id 1', 'kholiq'),
(517, '::1', '', '2020-06-27 13:47:38', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>nama_bahan</b> dengan value <b>wgjbh</b></li><li><b>seri_bahan</b> dengan value <b>fabnj</b></li><li><b>jenis_bahan</b> dengan value <b>dvsjh</b></li><li><b>stock_minimal</b> dengan value <b>5</b></li><li><b>stock_ini</b> dengan value <b>5</b></li></ul>', 'kholiq'),
(518, '::1', '', '2020-06-27 14:10:20', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-27</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-06-27</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(519, '::1', '', '2020-06-27 14:13:09', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062700000</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-27</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-06-27</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(520, '::1', '', '2020-06-27 14:13:49', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062700001</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-28</b></li><li><b>sumber_pendanaan</b> dengan value <b>4</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-08-27</b></li><li><b>pajak</b> dengan value <b>20000</b></li><li><b>status_pengajuan</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(521, '::1', '', '2020-06-27 14:25:36', 'Menghapus laporan dengan id ', 'kholiq'),
(522, '::1', '', '2020-06-27 14:25:42', 'Menghapus laporan dengan id ', 'kholiq'),
(523, '::1', '', '2020-06-27 14:26:31', 'Menghapus laporan dengan id P-PGN-20062700000', 'kholiq'),
(524, '::1', '', '2020-06-27 14:31:28', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062700002</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-27</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-27</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(525, '::1', '', '2020-06-27 14:55:18', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>nama_alat</b> dengan value <b>Jas Lab</b></li><li><b>jumlah</b> dengan value <b>100</b></li><li><b>harga_satuan</b> dengan value <b>80000</b></li></ul>', 'kholiq'),
(526, '::1', '', '2020-06-27 15:02:06', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>nama_alat</b> dengan value <b>Jas Lab</b></li><li><b>jumlah</b> dengan value <b>100</b></li><li><b>harga_satuan</b> dengan value <b>80000</b></li></ul>', 'kholiq'),
(527, '::1', '', '2020-06-27 15:04:49', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700002</b></li><li><b>nama_alat</b> dengan value <b>mikroskop</b></li><li><b>jumlah</b> dengan value <b>10</b></li><li><b>harga_satuan</b> dengan value <b>250000</b></li></ul>', 'kholiq'),
(528, '::1', '', '2020-06-27 15:06:28', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>nama_alat</b> dengan value <b>Jas Lab</b></li><li><b>jumlah</b> dengan value <b>100</b></li><li><b>harga_satuan</b> dengan value <b>80000</b></li></ul>', 'kholiq'),
(529, '::1', '', '2020-06-27 15:15:17', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062700001</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-28</b></li><li><b>sumber_pendanaan</b> dengan value <b>4</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-08-27</b></li><li><b>pajak</b> dengan value <b>20000</b></li><li><b>status_pengajuan</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(530, '::1', '', '2020-06-27 16:09:26', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>nama_alat</b> dengan value <b>mikroskop</b></li><li><b>jumlah</b> dengan value <b>10</b></li><li><b>harga_satuan</b> dengan value <b>80000</b></li></ul>', 'kholiq'),
(531, '::1', '', '2020-06-27 18:56:38', 'Logout SILADU by Kholiq', 'kholiq'),
(532, '::1', '', '2020-06-27 18:57:11', 'Login  by Kholiq', 'kholiq'),
(533, '::1', '', '2020-06-27 22:48:58', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>nama_bahan</b> dengan value <b>metana</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>jumlah</b> dengan value <b>100</b></li><li><b>harga_satuan</b> dengan value <b>5000</b></li></ul>', 'kholiq'),
(534, '::1', '', '2020-06-27 23:05:12', 'Menghapus laporan dengan id 4', 'kholiq'),
(535, '::1', '', '2020-06-27 23:05:14', 'Menghapus laporan dengan id 5', 'kholiq'),
(536, '::1', '', '2020-06-27 23:05:34', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>nama_bahan</b> dengan value <b>metana</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>jumlah</b> dengan value <b>100</b></li><li><b>harga_satuan</b> dengan value <b>5000</b></li></ul>', 'kholiq'),
(537, '::1', '', '2020-06-27 23:27:03', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>nama_bahan</b> dengan value <b>HVS</b></li><li><b>jenis_bahan</b> dengan value <b>berangsur</b></li><li><b>jumlah</b> dengan value <b>6</b></li><li><b>harga_satuan</b> dengan value <b>35000</b></li></ul>', 'kholiq'),
(538, '::1', '', '2020-06-28 00:28:06', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>nama_alat</b> dengan value <b>pipet</b></li><li><b>jumlah</b> dengan value <b>250</b></li><li><b>harga_satuan</b> dengan value <b>10000</b></li></ul>', 'kholiq'),
(539, '::1', '', '2020-06-28 01:37:04', 'Menghapus laporan dengan id 32', 'kholiq'),
(540, '::1', '', '2020-06-28 01:37:21', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>30</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>dosen</b></li></ul>', 'kholiq'),
(541, '::1', '', '2020-06-28 04:51:14', 'Logout SILADU by ', 'Tamu'),
(542, '::1', '', '2020-06-28 04:51:36', 'Login  by Kholiq', 'kholiq'),
(543, '::1', '', '2020-06-28 06:00:01', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062700002</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-27</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-27</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(544, '::1', '', '2020-06-28 10:22:05', 'Logout SILADU by ', 'Tamu'),
(545, '::1', '', '2020-06-28 10:23:13', 'Login  by Kholiq', 'kholiq'),
(546, '::1', '', '2020-06-28 13:02:06', 'Logout SILADU by Kholiq', 'kholiq'),
(547, '::1', '', '2020-06-28 13:08:37', 'Login  by Kholiq', 'kholiq'),
(548, '::1', '', '2020-06-28 14:55:45', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>19</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280003</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-07 14:17:00</b></li><li><b>peminjam</b> dengan value <b>laboran</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li></ul>', 'kholiq'),
(549, '::1', '', '2020-06-28 14:56:36', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>19</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280003</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-07 14:17:00</b></li><li><b>peminjam</b> dengan value <b>laboran</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(550, '::1', '', '2020-06-28 15:00:18', 'Logout SILADU by Kholiq', 'kholiq'),
(551, '::1', '', '2020-06-28 15:00:36', 'Login  by dosen', 'dosen'),
(552, '::1', '', '2020-06-28 15:00:48', 'Logout SILADU by dosen', 'dosen'),
(553, '::1', '', '2020-06-28 15:02:19', 'Login  by dosen', 'dosen'),
(554, '::1', '', '2020-06-28 15:05:28', 'Logout SILADU by dosen', 'dosen'),
(555, '::1', '', '2020-06-28 15:07:20', 'Login  by mahasiswa', 'mahasiswa'),
(556, '::1', '', '2020-06-28 15:09:57', 'Logout SILADU by mahasiswa', 'mahasiswa'),
(557, '::1', '', '2020-06-28 15:10:15', 'Login  by laboran', 'laboran'),
(558, '::1', '', '2020-06-28 15:31:41', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280004</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-06-29T15:31</b></li><li><b>peminjam</b> dengan value <b>laboran</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'laboran'),
(559, '::1', '', '2020-06-28 15:44:40', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'laboran'),
(560, '::1', '', '2020-06-28 15:46:32', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li></ul>', 'laboran'),
(561, '::1', '', '2020-06-28 15:47:52', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'laboran'),
(562, '::1', '', '2020-06-28 15:50:05', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li></ul>', 'laboran'),
(563, '::1', '', '2020-06-28 16:00:58', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280005</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-07T16:00</b></li><li><b>peminjam</b> dengan value <b>laboran</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'laboran'),
(564, '::1', '', '2020-06-28 16:11:52', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>21</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280005</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-07 16:00:00</b></li><li><b>peminjam</b> dengan value <b>laboran</b></li><li><b>status</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'laboran'),
(565, '::1', '', '2020-06-28 16:12:59', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>21</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280005</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-07 16:00:00</b></li><li><b>peminjam</b> dengan value <b>laboran</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'laboran'),
(566, '::1', '', '2020-06-28 16:15:47', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Sudah Dikembaliakn</b></li></ul>', 'laboran'),
(567, '::1', '', '2020-06-28 16:21:04', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'laboran'),
(568, '::1', '', '2020-06-28 16:22:46', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Sudah Dikembaliakn</b></li></ul>', 'laboran'),
(569, '::1', '', '2020-06-28 16:24:30', 'Mengedit Kelola kelola_jatuh_tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'laboran'),
(570, '::1', '', '2020-06-28 16:55:42', 'Logout SILADU by laboran', 'laboran'),
(571, '::1', '', '2020-06-28 16:55:58', 'Login  by Kholiq', 'kholiq'),
(572, '::1', '', '2020-06-28 18:56:28', 'Logout SILADU by ', 'Tamu'),
(573, '::1', '', '2020-06-28 18:56:42', 'Login  by Kholiq', 'kholiq'),
(574, '::1', '', '2020-06-28 19:16:51', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280006</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-06-30T19:16</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(575, '::1', '', '2020-06-28 19:17:54', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>5</b></li><li><b>stock</b> dengan value <b>100</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>3</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>Tidak cepat habis</b></li></ul>', 'kholiq'),
(576, '::1', '', '2020-06-28 19:45:42', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'kholiq'),
(577, '::1', '', '2020-06-28 19:46:24', 'Mengedit Kelola kelola_jatuh_tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Sudah Dikembaliakn</b></li></ul>', 'kholiq'),
(578, '::1', '', '2020-06-28 19:51:30', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>22</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280006</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-06-30 19:16:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'kholiq'),
(579, '::1', '', '2020-06-28 19:52:53', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280007</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08T19:52</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(580, '::1', '', '2020-06-28 19:53:28', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>23</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280007</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08 19:52:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'kholiq'),
(581, '::1', '', '2020-06-28 19:57:25', 'Mengedit Kelola kelola_jatuh_tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>22</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280006</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-06-30 19:16:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Sudah Dikembaliakn</b></li></ul>', 'kholiq'),
(582, '::1', '', '2020-06-28 20:44:07', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>pengaju</b> dengan value <b>Kholiq</b></li><li><b>nama_alat</b> dengan value <b>Jas Lab</b></li><li><b>jumlah</b> dengan value <b>100</b></li><li><b>harga_satuan</b> dengan value <b>250000</b></li></ul>', 'kholiq'),
(583, '::1', '', '2020-06-28 20:51:00', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>nama_bahan</b> dengan value <b>metana</b></li><li><b>pengaju</b> dengan value <b>Kholiq</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>jumlah</b> dengan value <b>100</b></li><li><b>harga_satuan</b> dengan value <b>80000</b></li></ul>', 'kholiq'),
(584, '::1', '', '2020-06-28 21:02:38', 'Menghapus laporan dengan id 7', 'kholiq'),
(585, '::1', '', '2020-06-28 21:02:42', 'Menghapus laporan dengan id 6', 'kholiq'),
(586, '::1', '', '2020-06-28 21:04:32', 'Logout SILADU by Kholiq', 'kholiq'),
(587, '::1', '', '2020-06-28 21:04:51', 'Login  by mahasiswa', 'mahasiswa'),
(588, '::1', '', '2020-06-28 21:06:53', 'Logout SILADU by mahasiswa', 'mahasiswa'),
(589, '::1', '', '2020-06-28 21:07:39', 'Login  by Kholiq', 'kholiq'),
(590, '::1', '', '2020-06-28 21:37:35', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>22</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280006</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-06-30 19:16:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'kholiq'),
(591, '::1', '', '2020-06-28 21:37:48', 'Mengedit Kelola kelola_jatuh_tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>22</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280006</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-06-30 19:16:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Sudah Dikembaliakn</b></li></ul>', 'kholiq'),
(592, '::1', '', '2020-06-28 21:42:24', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>20</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280004</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-06-29 15:31:00</b></li><li><b>peminjam</b> dengan value <b>laboran</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'kholiq'),
(593, '::1', '', '2020-06-28 21:42:33', 'Mengedit Kelola kelola_jatuh_tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>20</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280004</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-06-29 15:31:00</b></li><li><b>peminjam</b> dengan value <b>laboran</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Sudah Dikembaliakn</b></li></ul>', 'kholiq'),
(594, '::1', '', '2020-06-28 21:54:13', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>30</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>0</b></li><li><b>no_hp</b> dengan value <b>9</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>dosen</b></li></ul>', 'kholiq'),
(595, '::1', '', '2020-06-28 21:54:19', 'Logout SILADU by Kholiq', 'kholiq'),
(596, '::1', '', '2020-06-28 21:54:35', 'Login  by dosen', 'dosen'),
(597, '::1', '', '2020-06-28 21:55:34', 'Logout SILADU by dosen', 'dosen'),
(598, '::1', '', '2020-06-28 21:55:49', 'Login  by dosen', 'dosen'),
(599, '::1', '', '2020-06-28 21:59:41', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280008</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Tidak Pilih Alat</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-03T21:59</b></li><li><b>peminjam</b> dengan value <b>dosen</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'dosen'),
(600, '::1', '', '2020-06-28 21:59:52', 'Logout SILADU by dosen', 'dosen'),
(601, '::1', '', '2020-06-28 22:00:14', 'Login  by mahasiswa', 'mahasiswa'),
(602, '::1', '', '2020-06-28 22:01:47', 'Logout SILADU by mahasiswa', 'mahasiswa'),
(603, '::1', '', '2020-06-28 22:03:11', 'Login  by dosen', 'dosen'),
(604, '::1', '', '2020-06-28 22:05:19', 'Logout SILADU by dosen', 'dosen'),
(605, '::1', '', '2020-06-28 22:05:32', 'Login  by Kholiq', 'kholiq'),
(606, '::1', '', '2020-06-28 22:05:47', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>19</b></li><li><b>nama</b> dengan value <b>laboran</b></li><li><b>username</b> dengan value <b>laboran</b></li><li><b>level</b> dengan value <b>4</b></li><li><b>bagian</b> dengan value <b>0</b></li><li><b>no_hp</b> dengan value <b>9</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>laboran</b></li></ul>', 'kholiq'),
(607, '::1', '', '2020-06-28 22:05:52', 'Logout SILADU by Kholiq', 'kholiq'),
(608, '::1', '', '2020-06-28 22:06:22', 'Login  by laboran', 'laboran'),
(609, '::1', '', '2020-06-28 22:19:04', 'Logout SILADU by laboran', 'laboran'),
(610, '::1', '', '2020-06-28 22:19:24', 'Login  by Kholiq', 'kholiq'),
(611, '::1', '', '2020-06-28 22:23:19', 'Logout SILADU by Kholiq', 'kholiq'),
(612, '::1', '', '2020-06-28 22:30:38', 'Login  by Kholiq', 'kholiq'),
(613, '::1', '', '2020-06-28 22:36:32', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>19</b></li><li><b>nama</b> dengan value <b>laboran</b></li><li><b>username</b> dengan value <b>laboran</b></li><li><b>level</b> dengan value <b>4</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>laboran</b></li></ul>', 'kholiq'),
(614, '::1', '', '2020-06-28 22:36:40', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>30</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>dosen</b></li></ul>', 'kholiq'),
(615, '::1', '', '2020-06-28 22:38:22', 'Logout SILADU by Kholiq', 'kholiq'),
(616, '::1', '', '2020-06-28 22:38:35', 'Login  by dosen', 'dosen'),
(617, '::1', '', '2020-06-28 22:38:52', 'Menghapus laporan dengan id 24', 'dosen'),
(618, '::1', '', '2020-06-28 22:39:24', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280008</b></li><li><b>nama_bahan</b> dengan value <b>Lean UX</b></li><li><b>nama_alat</b> dengan value <b>Tidak Pilih Alat</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-10T22:39</b></li><li><b>peminjam</b> dengan value <b>dosen</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'dosen'),
(619, '::1', '', '2020-06-28 22:42:06', 'Logout SILADU by dosen', 'dosen'),
(620, '::1', '', '2020-06-28 22:42:31', 'Login  by Kholiq', 'kholiq'),
(621, '::1', '', '2020-06-28 23:13:18', 'Logout SILADU by Kholiq', 'kholiq'),
(622, '::1', '', '2020-06-28 23:13:35', 'Login  by dosen', 'dosen'),
(623, '::1', '', '2020-06-28 23:20:36', 'Logout SILADU by dosen', 'dosen'),
(624, '::1', '', '2020-06-28 23:20:51', 'Login  by Kholiq', 'kholiq'),
(625, '::1', '', '2020-06-28 23:47:58', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>11</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>5</b></li><li><b>stok</b> dengan value <b>1000</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>800000</b></li><li><b>kondisi</b> dengan value <b>tidak baik</b></li></ul>', 'kholiq'),
(626, '::1', '', '2020-06-28 23:48:06', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>11</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>5</b></li><li><b>stok</b> dengan value <b>1000</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>800000</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'kholiq'),
(627, '::1', '', '2020-06-28 23:48:16', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>11</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>5</b></li><li><b>stok</b> dengan value <b>1000</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>800000</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq'),
(628, '::1', '', '2020-06-28 23:48:26', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>200</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>tidak baik</b></li></ul>', 'kholiq'),
(629, '::1', '', '2020-06-28 23:58:51', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'kholiq'),
(630, '::1', '', '2020-06-28 23:59:19', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280002</b></li><li><b>nama_bahan</b> dengan value <b>Lean UX</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08 13:59:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'kholiq'),
(631, '::1', '', '2020-06-29 00:00:31', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280002</b></li><li><b>nama_bahan</b> dengan value <b>Lean UX</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08 13:59:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'kholiq'),
(632, '::1', '', '2020-06-29 00:01:13', 'Menghapus laporan dengan id 8', 'kholiq'),
(633, '::1', '', '2020-06-29 00:01:15', 'Menghapus laporan dengan id 7', 'kholiq'),
(634, '::1', '', '2020-06-29 00:01:16', 'Menghapus laporan dengan id 6', 'kholiq'),
(635, '::1', '', '2020-06-29 00:01:57', 'Menambah Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>K-PJM2006280008</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>nama_barang</b> dengan value <b>Mikroskop</b></li><li><b>status_penggantian</b> dengan value <b>belum diganti</b></li></ul>', 'kholiq'),
(636, '::1', '', '2020-06-29 00:02:56', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>Kampus Sekaran, Gunungpati, Semarang</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>logo</b> dengan value <b>files/2020/06/caaeaf25e339de88e954cc8140d3d390.png</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(637, '::1', '', '2020-06-29 00:03:24', 'Logout SILADU by Kholiq', 'kholiq'),
(638, '::1', '', '2020-06-29 00:04:25', 'Login  by kepala_lab', 'kepala_lab'),
(639, '::1', '', '2020-06-29 00:04:51', 'Logout SILADU by kepala_lab', 'kepala_lab'),
(640, '::1', '', '2020-06-29 00:05:09', 'Login  by admin', 'admin'),
(641, '::1', '', '2020-06-29 00:05:59', 'Logout SILADU by admin', 'admin'),
(642, '::1', '', '2020-06-29 00:06:59', 'Login  by laboran', 'laboran'),
(643, '::1', '', '2020-06-29 00:08:16', 'Logout SILADU by laboran', 'laboran'),
(644, '::1', '', '2020-06-29 00:08:44', 'Login  by koordinator_lab', 'koordinator_lab'),
(645, '::1', '', '2020-06-29 00:09:35', 'Logout SILADU by koordinator_lab', 'koordinator_lab'),
(646, '::1', '', '2020-06-29 00:10:11', 'Login  by asisten', 'asisten'),
(647, '::1', '', '2020-06-29 00:11:07', 'Logout SILADU by asisten', 'asisten'),
(648, '::1', '', '2020-06-29 00:11:27', 'Login  by dosen', 'dosen'),
(649, '::1', '', '2020-06-29 00:11:40', 'Logout SILADU by dosen', 'dosen'),
(650, '::1', '', '2020-06-29 00:12:13', 'Login  by mahasiswa', 'mahasiswa'),
(651, '::1', '', '2020-06-29 00:13:58', 'Logout SILADU by mahasiswa', 'mahasiswa'),
(652, '::1', '', '2020-06-29 00:14:16', 'Login  by laboran', 'laboran'),
(653, '::1', '', '2020-06-29 00:20:12', 'Logout SILADU by laboran', 'laboran'),
(654, '::1', '', '2020-06-29 00:20:28', 'Login  by asisten', 'asisten'),
(655, '::1', '', '2020-06-29 00:24:10', 'Logout SILADU by asisten', 'asisten'),
(656, '::1', '', '2020-06-29 00:24:27', 'Login  by Kholiq', 'kholiq'),
(657, '::1', '', '2020-06-29 00:51:55', 'Login  by Kholiq', 'kholiq'),
(658, '::1', '', '2020-06-30 13:08:33', 'Login  by Kholiq', 'kholiq'),
(659, '::1', '', '2020-06-30 13:31:08', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>3</b></li><li><b>nama_alat</b> dengan value <b>11</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-04T13:31</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(660, '::1', '', '2020-06-30 13:32:01', 'Login  by Kholiq', 'kholiq'),
(661, '::1', '', '2020-06-30 14:12:18', 'Login  by Kholiq', 'kholiq'),
(662, '::1', '', '2020-06-30 14:13:06', 'Menghapus laporan dengan id 16', 'kholiq'),
(663, '::1', '', '2020-06-30 14:13:08', 'Menghapus laporan dengan id 17', 'kholiq'),
(664, '::1', '', '2020-06-30 14:13:10', 'Menghapus laporan dengan id 19', 'kholiq'),
(665, '::1', '', '2020-06-30 14:13:12', 'Menghapus laporan dengan id 20', 'kholiq'),
(666, '::1', '', '2020-06-30 14:13:14', 'Menghapus laporan dengan id 21', 'kholiq'),
(667, '::1', '', '2020-06-30 14:13:16', 'Menghapus laporan dengan id 22', 'kholiq'),
(668, '::1', '', '2020-06-30 14:13:17', 'Menghapus laporan dengan id 23', 'kholiq'),
(669, '::1', '', '2020-06-30 14:13:19', 'Menghapus laporan dengan id 25', 'kholiq'),
(670, '::1', '', '2020-06-30 14:23:47', 'Login  by Kholiq', 'kholiq'),
(671, '::1', '', '2020-06-30 14:25:26', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T14:25</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(672, '::1', '', '2020-06-30 14:33:24', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300002</b></li><li><b>nama_bahan</b> dengan value <b>2</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T14:33</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(673, '::1', '', '2020-06-30 14:33:35', 'Menghapus laporan dengan id 27', 'kholiq'),
(674, '::1', '', '2020-06-30 14:33:37', 'Menghapus laporan dengan id 28', 'kholiq');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(675, '::1', '', '2020-06-30 14:33:45', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>Tidak Pilih Alat</b></li><li><b>tgl_pengembalian</b> dengan value <b>kosong</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(676, '::1', '', '2020-06-30 14:33:56', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300002</b></li><li><b>nama_bahan</b> dengan value <b>2</b></li><li><b>nama_alat</b> dengan value <b>Tidak Pilih Alat</b></li><li><b>tgl_pengembalian</b> dengan value <b>kosong</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(677, '::1', '', '2020-06-30 14:34:14', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300003</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>kosong</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(678, '::1', '', '2020-06-30 20:57:45', 'Login  by Kholiq', 'kholiq'),
(679, '::1', '', '2020-06-30 21:09:25', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>tgl_pengembalian</b> dengan value <b>kosong</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(680, '::1', '', '2020-06-30 21:20:45', 'Login  by Kholiq', 'kholiq'),
(681, '::1', '', '2020-06-30 21:41:22', 'Login  by Kholiq', 'kholiq'),
(682, '::1', '', '2020-06-30 21:43:20', 'Login  by Kholiq', 'kholiq'),
(683, '::1', '', '2020-06-30 21:46:51', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T21:46</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(684, '::1', '', '2020-06-30 21:49:06', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300002</b></li><li><b>nama_bahan</b> dengan value <b>2</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T21:49</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(685, '::1', '', '2020-06-30 21:50:18', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300003</b></li><li><b>nama_bahan</b> dengan value <b>2</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T21:50</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(686, '::1', '', '2020-06-30 21:50:43', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300004</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>tgl_pengembalian</b> dengan value <b>kosong</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(687, '::1', '', '2020-06-30 21:51:53', 'Login  by Kholiq', 'kholiq'),
(688, '::1', '', '2020-06-30 21:52:28', 'Menghapus laporan dengan id 5', 'kholiq'),
(689, '::1', '', '2020-06-30 21:52:29', 'Menghapus laporan dengan id 4', 'kholiq'),
(690, '::1', '', '2020-06-30 21:52:31', 'Menghapus laporan dengan id 3', 'kholiq'),
(691, '::1', '', '2020-06-30 21:52:32', 'Menghapus laporan dengan id 2', 'kholiq'),
(692, '::1', '', '2020-06-30 21:54:36', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T21:54</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(693, '::1', '', '2020-06-30 22:02:57', 'Login  by Kholiq', 'kholiq'),
(694, '::1', '', '2020-06-30 22:03:26', 'Menghapus laporan dengan id 6', 'kholiq'),
(695, '::1', '', '2020-06-30 22:31:13', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T22:31</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(696, '::1', '', '2020-06-30 22:31:22', 'Menghapus laporan dengan id 7', 'kholiq'),
(697, '::1', '', '2020-06-30 22:33:44', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T22:33</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(698, '::1', '', '2020-06-30 22:33:53', 'Menghapus laporan dengan id 8', 'kholiq'),
(699, '::1', '', '2020-06-30 22:35:11', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T22:35</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(700, '::1', '', '2020-06-30 22:35:19', 'Menghapus laporan dengan id 9', 'kholiq'),
(701, '::1', '', '2020-06-30 22:36:29', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T22:36</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(702, '::1', '', '2020-06-30 22:36:56', 'Login  by Kholiq', 'kholiq'),
(703, '::1', '', '2020-06-30 22:37:09', 'Menghapus laporan dengan id 10', 'kholiq'),
(704, '::1', '', '2020-06-30 22:38:00', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>2</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T22:37</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(705, '::1', '', '2020-06-30 22:38:05', 'Menghapus laporan dengan id 11', 'kholiq'),
(706, '::1', '', '2020-06-30 22:54:35', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>kosong</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(707, '::1', '', '2020-06-30 22:54:42', 'Menghapus laporan dengan id 12', 'kholiq'),
(708, '::1', '', '2020-06-30 22:55:33', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>2</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T22:55</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(709, '::1', '', '2020-06-30 22:56:05', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>13</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>Tidak Pilih Bahan</b></li><li><b>nama_alat</b> dengan value <b>Tidak Pilih Alat</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11 22:55:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'kholiq'),
(710, '::1', '', '2020-06-30 23:46:16', 'Login  by Kholiq', 'kholiq'),
(711, '::1', '', '2020-06-30 23:50:55', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>3</b></li><li><b>stok_minimal</b> dengan value <b>7</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90,000</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq'),
(712, '::1', '', '2020-06-30 23:51:34', 'Login  by Kholiq', 'kholiq'),
(713, '::1', '', '2020-06-30 23:51:48', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>197</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq'),
(714, '::1', '', '2020-06-30 23:52:08', 'Menghapus laporan dengan id 12', 'kholiq'),
(715, '::1', '', '2020-06-30 23:54:36', 'Logout SILADU by Kholiq', 'kholiq'),
(716, '::1', '', '2020-06-30 23:57:15', 'Login  by Kholiq', 'kholiq'),
(717, '::1', '', '2020-06-30 23:57:49', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stock</b> dengan value <b>6</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90,000</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq'),
(718, '::1', '', '2020-06-30 23:58:54', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>id_nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stock</b> dengan value <b>6</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq'),
(719, '::1', '', '2020-06-30 23:59:04', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stock</b> dengan value <b>6</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq'),
(720, '::1', '', '2020-07-01 00:00:32', 'Menghapus laporan dengan id 5', 'kholiq'),
(721, '::1', '', '2020-07-01 00:01:17', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010001</b></li><li><b>nama_bahan</b> dengan value <b>2</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>tgl_pengembalian</b> dengan value <b>kosong</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(722, '::1', '', '2020-07-01 00:01:52', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010002</b></li><li><b>nama_bahan</b> dengan value <b>Tidak Pilih Bahan</b></li><li><b>nama_alat</b> dengan value <b>Tidak Pilih Alat</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-08-08T00:01</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(723, '::1', '', '2020-07-01 00:04:04', 'Logout SILADU by ', 'Tamu'),
(724, '::1', '', '2020-07-01 00:04:21', 'Login  by Kholiq', 'kholiq'),
(725, '::1', '', '2020-07-01 00:04:36', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010003</b></li><li><b>nama_bahan</b> dengan value <b>Tidak Pilih Bahan</b></li><li><b>nama_alat</b> dengan value <b>Tidak Pilih Alat</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-08-08T00:04</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(726, '::1', '', '2020-07-01 00:05:04', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010004</b></li><li><b>nama_bahan</b> dengan value <b>Tidak Pilih Bahan</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-08-08T00:05</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(727, '::1', '', '2020-07-01 00:08:28', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id_nama_alat</b> dengan value <b>3</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>kosong</b></li><li><b>stok_minimal</b> dengan value <b>kosong</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>kosong</b></li><li><b>kondisi</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(728, '::1', '', '2020-07-01 00:08:43', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id_nama_bahan</b> dengan value <b>3</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stock</b> dengan value <b>kosong</b></li><li><b>stock_minimal</b> dengan value <b>kosong</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>kosong</b></li><li><b>kondisi</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(729, '::1', '', '2020-07-01 00:08:51', 'Menghapus laporan dengan id 14', 'kholiq'),
(730, '::1', '', '2020-07-01 00:09:16', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010001</b></li><li><b>nama_bahan</b> dengan value <b>3</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-08-08T00:09</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(731, '::1', '', '2020-07-01 00:09:28', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010002</b></li><li><b>nama_bahan</b> dengan value <b>Tidak Pilih Bahan</b></li><li><b>nama_alat</b> dengan value <b>Tidak Pilih Alat</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-08-08T00:09</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(732, '::1', '', '2020-07-01 12:56:44', 'Login  by Kholiq', 'kholiq'),
(733, '::1', '', '2020-07-01 14:19:48', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010003</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-08-09T14:19</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(734, '::1', '', '2020-07-01 18:43:00', 'Login  by Kholiq', 'kholiq'),
(735, '::1', '', '2020-07-01 18:47:12', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010004</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-10T18:46</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(736, '::1', '', '2020-07-01 18:50:03', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08T18:49</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(737, '::1', '', '2020-07-01 19:26:29', 'Mengedit Kelola kelola_jatuh_tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010001</b></li><li><b>nama_bahan</b> dengan value <b>Lean UX</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08 18:49:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Sudah Dikembaliakn</b></li></ul>', 'kholiq'),
(738, '::1', '', '2020-07-01 19:27:54', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T19:27</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(739, '::1', '', '2020-07-01 19:29:18', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010002</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08T19:29</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(740, '::1', '', '2020-07-01 20:05:31', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08T20:05</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(741, '::1', '', '2020-07-01 20:32:32', 'Menghapus laporan dengan id 4', 'kholiq'),
(742, '::1', '', '2020-07-01 20:36:59', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08T20:36</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(743, '::1', '', '2020-07-01 20:37:18', 'Mengedit Kelola kelola_jatuh_tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08 20:36:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Sudah Dikembalikan</b></li></ul>', 'kholiq'),
(744, '::1', '', '2020-07-22 20:27:52', 'Login  by Kholiq', 'kholiq'),
(745, '::1', '', '2020-07-22 20:29:23', 'Menambah buat_peminjaman dengan data sbb:<br />\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007220001</b></li><li><b>nama_bahan</b> dengan value <b>3</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>kosong</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq'),
(746, '::1', '', '2020-07-23 10:32:52', 'Login  by Kholiq', 'kholiq'),
(747, '::1', '', '2020-07-23 12:56:02', 'Logout SILADU by Kholiq', 'kholiq'),
(748, '::1', '', '2020-07-23 12:56:26', 'Login  by Kholiq', 'kholiq'),
(749, '::1', '', '2020-08-26 14:10:26', 'Login  by Kholiq', 'kholiq'),
(750, '::1', '', '2020-08-26 16:26:58', 'Menghapus laporan dengan id 3', 'kholiq'),
(751, '::1', '', '2020-08-26 16:27:03', 'Menghapus laporan dengan id 3', 'kholiq'),
(752, '::1', '', '2020-08-26 16:27:53', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>10</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>30000</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'kholiq'),
(753, '::1', '', '2020-08-26 16:34:39', 'Menghapus laporan dengan id 14', 'kholiq'),
(754, '::1', '', '2020-08-26 16:40:25', 'Menambah Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(755, '::1', '', '2020-08-26 19:06:08', 'Login  by Kholiq', 'kholiq'),
(756, '::1', '', '2020-08-26 19:16:55', 'Menambah Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>KM1</b></li><li><b>nama_alat</b> dengan value <b>Kamera</b></li><li><b>keterangan</b> dengan value <b>kamera</b></li></ul>', 'kholiq'),
(757, '::1', '', '2020-08-26 19:17:29', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>5</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>1</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>kondisi</b> dengan value <b>jelek</b></li></ul>', 'kholiq'),
(758, '::1', '', '2020-08-26 19:19:28', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>10</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>30000</b></li><li><b>kondisi</b> dengan value <b>jelek</b></li></ul>', 'kholiq'),
(759, '::1', '', '2020-08-26 19:46:56', 'Mengedit Master sumber_pendanaan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>sumber_pendanaan</b> dengan value <b>BOPTN</b></li></ul>', 'kholiq'),
(760, '::1', '', '2020-08-26 19:47:04', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>HIBAH DIKTI</b></li></ul>', 'kholiq'),
(761, '::1', '', '2020-08-26 19:59:41', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>195</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(762, '::1', '', '2020-08-26 20:13:20', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>11</b></li><li><b>id_nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>5</b></li><li><b>stok</b> dengan value <b>984</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>800000</b></li><li><b>kondisi</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(763, '::1', '', '2020-08-26 20:13:27', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>15</b></li><li><b>id_nama_alat</b> dengan value <b>5</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>1</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>kondisi</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(764, '::1', '', '2020-08-26 20:13:33', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>10</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>30000</b></li><li><b>kondisi</b> dengan value <b>5</b></li></ul>', 'kholiq'),
(765, '::1', '', '2020-08-26 20:22:06', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>195</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(766, '::1', '', '2020-08-26 20:48:37', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>5</b></li><li><b>stock</b> dengan value <b>86</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>3</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(767, '::1', '', '2020-08-26 20:48:42', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stock</b> dengan value <b>5</b></li><li><b>stock_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>4</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(768, '::1', '', '2020-08-26 20:55:28', 'Logout SILABIO by Kholiq', 'kholiq'),
(769, '::1', '', '2020-08-26 20:55:59', 'Login  by Kholiq', 'kholiq'),
(770, '::1', '', '2020-08-26 20:57:28', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>kategori_alat_bahan</b> dengan value <b>Kategori 2</b></li><li><b>keterangan</b> dengan value <b>Alat</b></li></ul>', 'kholiq'),
(771, '::1', '', '2020-08-26 20:57:35', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>kategori_alat_bahan</b> dengan value <b>Alat bedah</b></li><li><b>keterangan</b> dengan value <b>Alat</b></li></ul>', 'kholiq'),
(772, '::1', '', '2020-08-26 20:57:51', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kategori_alat_bahan</b> dengan value <b>Alat pemanas bertekanan tinggi</b></li><li><b>keterangan</b> dengan value <b>Alat</b></li></ul>', 'kholiq'),
(773, '::1', '', '2020-08-26 20:57:58', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>kategori_alat_bahan</b> dengan value <b>Alat bedah</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(774, '::1', '', '2020-08-26 20:58:02', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kategori_alat_bahan</b> dengan value <b>Alat pemanas bertekanan tinggi</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(775, '::1', '', '2020-08-26 20:58:18', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kategori_alat_bahan</b> dengan value <b>Alat pemanas</b></li><li><b>keterangan</b> dengan value <b>pemanas bertekanan tinggi</b></li></ul>', 'kholiq'),
(776, '::1', '', '2020-08-26 20:58:32', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Alat ukur</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(777, '::1', '', '2020-08-26 20:58:43', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Aspirator (pompa)</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(778, '::1', '', '2020-08-26 20:58:52', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>AutoAnalyzer</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(779, '::1', '', '2020-08-26 20:59:01', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Autoklaf</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(780, '::1', '', '2020-08-26 21:01:31', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Alat Optik</b></li><li><b>keterangan</b> dengan value <b>mikroskop dll</b></li></ul>', 'kholiq'),
(781, '::1', '', '2020-08-26 21:01:40', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>11</b></li><li><b>id_nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>984</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>800000</b></li><li><b>kondisi</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(782, '::1', '', '2020-08-26 21:01:47', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>195</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(783, '::1', '', '2020-08-26 21:01:56', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>15</b></li><li><b>id_nama_alat</b> dengan value <b>5</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>1</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>kondisi</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(784, '::1', '', '2020-08-26 21:02:02', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>7</b></li><li><b>stok</b> dengan value <b>10</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>30000</b></li><li><b>kondisi</b> dengan value <b>5</b></li></ul>', 'kholiq'),
(785, '::1', '', '2020-08-26 21:29:14', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>7426082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-08-26</b></li></ul>', 'kholiq'),
(786, '::1', '', '2020-08-26 21:29:18', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>2</b></li><li><b>id_bahan</b> dengan value <b>1</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(787, '::1', '', '2020-08-26 21:29:28', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>2</b></li><li><b>id_alat</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(788, '::1', '', '2020-08-26 21:37:49', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(789, '::1', '', '2020-08-26 21:37:58', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>2,2,2,2,2,2,2,2,2,2</b></li><li><b>cur_level</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(790, '::1', '', '2020-08-26 21:38:30', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2</b></li><li><b>cur_level</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(791, '::1', '', '2020-08-26 21:39:13', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4</b></li><li><b>cur_level</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(792, '::1', '', '2020-08-26 21:39:44', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>7,7,7,7,7,7</b></li><li><b>cur_level</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(793, '::1', '', '2020-08-26 21:39:55', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>cur_level</b> dengan value <b>8</b></li></ul>', 'kholiq'),
(794, '::1', '', '2020-08-26 21:41:24', 'Logout SILABIO by Kholiq', 'kholiq'),
(795, '::1', '', '2020-08-26 21:41:35', 'Login  by Kholiq', 'kholiq'),
(796, '::1', '', '2020-08-26 22:16:26', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0001082020</b></li><li><b>peminjam</b> dengan value <b>sukron</b></li><li><b>status_peminjam</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>2732139</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-08-26</b></li></ul>', 'kholiq'),
(797, '::1', '', '2020-08-26 22:17:56', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0001082020</b></li><li><b>peminjam</b> dengan value <b>sukron</b></li><li><b>status_peminjam</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>2732139</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-08-26</b></li></ul>', 'kholiq'),
(798, '::1', '', '2020-08-26 22:30:28', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0003082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>2732139121</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-08-26</b></li></ul>', 'kholiq'),
(799, '::1', '', '2020-08-26 22:34:23', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0001082020</b></li><li><b>peminjam</b> dengan value <b>sukron</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>id_peminjam</b> dengan value <b>2732139</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-08-26</b></li></ul>', 'kholiq'),
(800, '::1', '', '2020-08-26 22:35:05', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0001082020</b></li><li><b>peminjam</b> dengan value <b>sukron</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>id_peminjam</b> dengan value <b>2732139</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-08-26</b></li></ul>', 'kholiq'),
(801, '::1', '', '2020-08-26 22:36:35', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>no_peminjaman</b> dengan value <b>0001082020</b></li><li><b>peminjam</b> dengan value <b>sukron</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>id_peminjam</b> dengan value <b>2732139121</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-08-26</b></li></ul>', 'kholiq'),
(802, '::1', '', '2020-08-26 22:39:28', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>no_peminjaman</b> dengan value <b>0002082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>id_peminjam</b> dengan value <b>2132133213</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-08-26</b></li></ul>', 'kholiq'),
(803, '::1', '', '2020-08-26 22:57:10', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>no_peminjaman</b> dengan value <b>0001082020</b></li><li><b>peminjam</b> dengan value <b>sukron</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>id_peminjam</b> dengan value <b>2732139121</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-02</b></li></ul>', 'kholiq'),
(804, '::1', '', '2020-08-26 22:57:17', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>no_peminjaman</b> dengan value <b>0002082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>id_peminjam</b> dengan value <b>2132133213</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-02</b></li></ul>', 'kholiq'),
(805, '::1', '', '2020-08-26 23:06:19', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>no_peminjaman</b> dengan value <b>0001082020</b></li><li><b>peminjam</b> dengan value <b>sukron</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>086543</b></li><li><b>id_peminjam</b> dengan value <b>2732139121</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-02</b></li></ul>', 'kholiq'),
(806, '::1', '', '2020-08-26 23:13:03', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>no_peminjaman</b> dengan value <b>0002082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>7798998</b></li><li><b>id_peminjam</b> dengan value <b>2132133213</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-02</b></li></ul>', 'kholiq'),
(807, '::1', '', '2020-08-27 06:06:15', 'Login  by Kholiq', 'kholiq'),
(808, '::1', '', '2020-08-27 06:43:30', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0003082020</b></li><li><b>peminjam</b> dengan value <b>Yahya</b></li><li><b>status_peminjam</b> dengan value <b>kar</b></li><li><b>kontak</b> dengan value <b>821098291</b></li><li><b>id_peminjam</b> dengan value <b>281276211</b></li><li><b>tgl</b> dengan value <b>2020-08-27</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-03</b></li></ul>', 'kholiq'),
(809, '::1', '', '2020-08-27 06:49:00', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Galon Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(810, '::1', '', '2020-08-27 06:49:32', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>jenis_bahan</b> dengan value <b>Buku</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(811, '::1', '', '2020-08-27 07:31:59', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>2</b></li><li><b>id_bahan</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(812, '::1', '', '2020-08-27 07:32:19', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>2</b></li><li><b>id_alat</b> dengan value <b>10</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(813, '::1', '', '2020-08-27 07:33:21', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0004082020</b></li><li><b>peminjam</b> dengan value <b>test2</b></li><li><b>status_peminjam</b> dengan value <b>kar</b></li><li><b>kontak</b> dengan value <b>739812721</b></li><li><b>id_peminjam</b> dengan value <b>1237272191</b></li><li><b>tgl</b> dengan value <b>2020-08-27</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-03</b></li></ul>', 'kholiq'),
(814, '::1', '', '2020-08-27 07:33:25', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>9</b></li><li><b>id_bahan</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(815, '::1', '', '2020-08-27 07:33:31', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>9</b></li><li><b>id_alat</b> dengan value <b>16</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(816, '::1', '', '2020-08-27 07:40:38', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0002082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>id_peminjam</b> dengan value <b>199209242019031013</b></li><li><b>tgl</b> dengan value <b>2020-08-27</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-03</b></li></ul>', 'kholiq'),
(817, '::1', '', '2020-08-27 07:40:57', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>10</b></li><li><b>id_bahan</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(818, '::1', '', '2020-08-27 07:40:58', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>10</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(819, '::1', '', '2020-08-27 08:45:01', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\n                    <ul><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stock</b> dengan value <b>10</b></li><li><b>stock_minimal</b> dengan value <b>4</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>kondisi</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(820, '::1', '', '2020-08-27 09:00:25', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0003082020</b></li><li><b>peminjam</b> dengan value <b>test</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0218212</b></li><li><b>id_peminjam</b> dengan value <b>2732139121</b></li><li><b>tgl</b> dengan value <b>2020-08-27</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-03</b></li></ul>', 'kholiq'),
(821, '::1', '', '2020-08-27 09:00:31', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>11</b></li><li><b>id_bahan</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(822, '::1', '', '2020-08-27 09:00:37', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>11</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(823, '::1', '', '2020-08-27 09:02:31', 'Logout SILABIO by Kholiq', 'kholiq'),
(824, '::1', '', '2020-08-27 09:32:21', 'Login  by Kholiq', 'kholiq'),
(825, '::1', '', '2020-08-27 09:40:50', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0004082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq Budiman</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>id_peminjam</b> dengan value <b>1237272191</b></li><li><b>tgl</b> dengan value <b>2020-08-27</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-03</b></li></ul>', 'kholiq'),
(826, '::1', '', '2020-08-27 09:46:52', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(827, '::1', '', '2020-08-27 09:47:07', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_alat</b> dengan value <b>16</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(828, '::1', '', '2020-08-27 09:58:28', 'Menambah Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>LP1</b></li><li><b>nama_alat</b> dengan value <b>LUOP</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(829, '::1', '', '2020-08-27 10:17:45', 'Mengedit Kelola kelola_penyimpanandengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>status</b> dengan value <b>tersedia</b></li></ul>', 'kholiq'),
(830, '::1', '', '2020-08-27 10:20:40', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Ruang</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(831, '::1', '', '2020-08-27 10:20:59', 'Menambah Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>RU1</b></li><li><b>nama_alat</b> dengan value <b>Ruang 1</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(832, '::1', '', '2020-08-27 10:21:45', 'Mengedit menu dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>131</b></li><li><b>nama</b> dengan value <b>Master Peminjaman</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2,4</b></li><li><b>url</b> dengan value <b>master/kategori_alat_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>4</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(833, '::1', '', '2020-08-27 10:22:54', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Galon</b></li><li><b>nama_bahan</b> dengan value <b>Galon Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(834, '::1', '', '2020-08-27 10:23:02', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(835, '::1', '', '2020-08-27 10:23:54', 'Menambah Master satuan dengan data sbb:<br />\n                    <ul><li><b>nama_satuan</b> dengan value <b>Ruang</b></li><li><b>keterangan</b> dengan value <b>untuk satuan ruang</b></li></ul>', 'kholiq'),
(836, '::1', '', '2020-08-27 10:29:38', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>11</b></li><li><b>id_nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>984</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>800000</b></li><li><b>kondisi</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(837, '::1', '', '2020-08-27 10:30:22', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>10</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>7</b></li><li><b>pendanaan</b> dengan value <b>4</b></li><li><b>harga</b> dengan value <b>1000</b></li><li><b>kondisi</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(838, '::1', '', '2020-08-27 11:03:57', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>8,8,8,8,8</b></li><li><b>cur_level</b> dengan value <b>8</b></li></ul>', 'kholiq'),
(839, '::1', '', '2020-08-27 11:04:12', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>7,7,7,7,7,7,7</b></li><li><b>cur_level</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(840, '::1', '', '2020-09-01 13:20:06', 'Login  by Kholiq', 'kholiq'),
(841, '::1', '', '2020-09-01 13:20:23', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0001092020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>id_peminjam</b> dengan value <b>2732139</b></li><li><b>tgl</b> dengan value <b>2020-09-01</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-08</b></li></ul>', 'kholiq'),
(842, '::1', '', '2020-09-01 13:20:28', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>13</b></li><li><b>id_bahan</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(843, '::1', '', '2020-09-01 13:20:33', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>13</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(844, '::1', '', '2020-10-12 00:15:27', 'Login  by Kholiq', 'kholiq'),
(845, '::1', '', '2020-10-12 01:13:17', 'Mengedit menu dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>131</b></li><li><b>nama</b> dengan value <b>Kategori Alat Bahan</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2,4</b></li><li><b>url</b> dengan value <b>master/kategori_alat_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>4</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(846, '::1', '', '2020-10-12 01:19:53', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0887811617</b></li><li><b>id_peminjam</b> dengan value <b>2112112</b></li><li><b>tgl</b> dengan value <b>2020-10-12</b></li><li><b>jam_pinjam</b> dengan value <b>09:30</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-19</b></li><li><b>jam_kembali</b> dengan value <b>09:30</b></li></ul>', 'kholiq'),
(847, '::1', '', '2020-10-12 01:20:21', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>14</b></li><li><b>id_bahan</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(848, '::1', '', '2020-10-12 01:20:22', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>14</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(849, '::1', '', '2020-10-12 07:18:28', 'Logout SILABIO by ', 'Tamu'),
(850, '::1', '', '2020-10-12 07:18:39', 'Login  by Kholiq', 'kholiq'),
(851, '::1', '', '2020-10-12 08:29:00', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>14</b></li><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0887811617</b></li><li><b>id_peminjam</b> dengan value <b>2112112</b></li><li><b>tgl</b> dengan value <b>2020-10-12</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-19</b></li></ul>', 'kholiq'),
(852, '::1', '', '2020-10-12 08:30:06', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0887811617</b></li><li><b>id_peminjam</b> dengan value <b>2112112</b></li><li><b>tgl</b> dengan value <b>2020-10-12</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-19</b></li></ul>', 'kholiq'),
(853, '::1', '', '2020-10-12 08:30:25', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0887811617</b></li><li><b>id_peminjam</b> dengan value <b>2112112</b></li><li><b>tgl</b> dengan value <b>2020-10-12</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-19</b></li></ul>', 'kholiq'),
(854, '::1', '', '2020-10-12 08:32:18', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0887811617</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>id_peminjam</b> dengan value <b>2112112</b></li><li><b>tgl</b> dengan value <b>2020-10-12</b></li><li><b>jam_pinjam</b> dengan value <b>09:30</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-19</b></li><li><b>jam_kembali</b> dengan value <b>09:30</b></li></ul>', 'kholiq'),
(855, '::1', '', '2020-10-12 08:38:35', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>no_peminjaman</b> dengan value <b>0001092020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>id_peminjam</b> dengan value <b>2732139</b></li><li><b>tgl</b> dengan value <b>2020-09-01</b></li><li><b>jam_pinjam</b> dengan value <b>08:00</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-08</b></li><li><b>jam_kembali</b> dengan value <b>08:00</b></li></ul>', 'kholiq'),
(856, '::1', '', '2020-10-12 08:40:04', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>no_peminjaman</b> dengan value <b>0001092020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>nim</b></li><li><b>id_peminjam</b> dengan value <b>2732139</b></li><li><b>tgl</b> dengan value <b>2020-09-01</b></li><li><b>jam_pinjam</b> dengan value <b>kosong</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-08</b></li><li><b>jam_kembali</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(857, '::1', '', '2020-10-12 08:42:45', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>no_peminjaman</b> dengan value <b>0004082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq Budiman</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>nip</b></li><li><b>id_peminjam</b> dengan value <b>1237272191</b></li><li><b>tgl</b> dengan value <b>2020-08-27</b></li><li><b>jam_pinjam</b> dengan value <b>kosong</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-03</b></li><li><b>jam_kembali</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(858, '::1', '', '2020-10-12 08:43:42', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>no_peminjaman</b> dengan value <b>0001092020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>instansi</b> dengan value <b>kosong</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>id_peminjam</b> dengan value <b>2732139</b></li><li><b>tgl</b> dengan value <b>2020-09-01</b></li><li><b>jam_pinjam</b> dengan value <b>kosong</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-08</b></li><li><b>jam_kembali</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(859, '::1', '', '2020-10-12 08:46:13', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>12</b></li><li><b>no_peminjaman</b> dengan value <b>0004082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq Budiman</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>nip</b></li><li><b>id_peminjam</b> dengan value <b>1237272191</b></li><li><b>tgl</b> dengan value <b>2020-08-27</b></li><li><b>jam_pinjam</b> dengan value <b>kosong</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-03</b></li><li><b>jam_kembali</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(860, '::1', '', '2020-10-12 08:46:42', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>12</b></li><li><b>no_peminjaman</b> dengan value <b>0004082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq Budiman</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>nip</b></li><li><b>id_peminjam</b> dengan value <b>1237272191</b></li><li><b>tgl</b> dengan value <b>2020-08-27</b></li><li><b>jam_pinjam</b> dengan value <b>11:05</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-03</b></li><li><b>jam_kembali</b> dengan value <b>11:05</b></li></ul>', 'kholiq'),
(861, '::1', '', '2020-10-12 08:57:39', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>13</b></li><li><b>no_peminjaman</b> dengan value <b>0001092020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>id_peminjam</b> dengan value <b>2732139</b></li><li><b>tgl</b> dengan value <b>2020-09-01</b></li><li><b>jam_pinjam</b> dengan value <b>10:00</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-08</b></li><li><b>jam_kembali</b> dengan value <b>10:00</b></li></ul>', 'kholiq'),
(862, '::1', '', '2020-10-12 09:11:32', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_bahan</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(863, '::1', '', '2020-10-12 15:30:31', 'Login  by Kholiq', 'kholiq'),
(864, '::1', '', '2020-10-13 20:12:50', 'Login  by Kholiq', 'kholiq'),
(865, '::1', '', '2020-10-14 06:19:33', 'Logout SILABIO by ', 'Tamu'),
(866, '::1', '', '2020-10-14 06:19:43', 'Login  by Kholiq', 'kholiq'),
(867, '::1', '', '2020-10-14 06:26:06', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>id_nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>10</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>7</b></li><li><b>pendanaan</b> dengan value <b>4</b></li><li><b>harga</b> dengan value <b>1000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2018</b></li></ul>', 'kholiq'),
(868, '::1', '', '2020-10-14 06:26:17', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>195</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(869, '::1', '', '2020-10-14 06:26:23', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>11</b></li><li><b>id_nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>984</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>800000</b></li><li><b>kondisi</b> dengan value <b>3</b></li><li><b>tahun</b> dengan value <b>2017</b></li></ul>', 'kholiq'),
(870, '::1', '', '2020-10-14 06:26:30', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>15</b></li><li><b>id_nama_alat</b> dengan value <b>5</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>1</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>kondisi</b> dengan value <b>4</b></li><li><b>tahun</b> dengan value <b>2017</b></li></ul>', 'kholiq'),
(871, '::1', '', '2020-10-14 06:26:38', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>7</b></li><li><b>stok</b> dengan value <b>10</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>30000</b></li><li><b>kondisi</b> dengan value <b>5</b></li><li><b>tahun</b> dengan value <b>2017</b></li></ul>', 'kholiq'),
(872, '::1', '', '2020-10-14 06:33:31', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stock</b> dengan value <b>5</b></li><li><b>stock_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>4</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>2</b></li><li><b>tahun</b> dengan value <b>2019</b></li></ul>', 'kholiq'),
(873, '::1', '', '2020-10-14 06:33:38', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stock</b> dengan value <b>10</b></li><li><b>stock_minimal</b> dengan value <b>4</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2018</b></li></ul>', 'kholiq'),
(874, '::1', '', '2020-10-14 06:38:07', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0004102020</b></li><li><b>peminjam</b> dengan value <b>kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>unnes</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>id_peminjam</b> dengan value <b>2112112</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:30</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-21</b></li><li><b>jam_kembali</b> dengan value <b>09:30</b></li></ul>', 'kholiq'),
(875, '::1', '', '2020-10-14 06:38:11', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>15</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(876, '::1', '', '2020-10-14 06:50:17', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(877, '::1', '', '2020-10-14 06:50:23', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(878, '::1', '', '2020-10-14 06:50:47', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(879, '::1', '', '2020-10-14 06:51:33', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_bahan</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(880, '::1', '', '2020-10-14 06:52:39', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(881, '::1', '', '2020-10-14 06:53:52', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(882, '::1', '', '2020-10-14 06:54:28', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(883, '::1', '', '2020-10-14 07:02:02', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(884, '::1', '', '2020-10-14 07:02:09', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_alat</b> dengan value <b>17</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(885, '::1', '', '2020-10-14 07:02:23', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_alat</b> dengan value <b>10</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(886, '::1', '', '2020-10-14 07:04:56', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_alat</b> dengan value <b>17</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(887, '::1', '', '2020-10-14 07:29:10', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>13</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(888, '::1', '', '2020-10-14 07:29:37', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>14</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(889, '::1', '', '2020-10-14 07:29:56', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>13</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(890, '::1', '', '2020-10-14 07:33:06', 'Menghapus laporan dengan id 7', 'kholiq'),
(891, '::1', '', '2020-10-14 07:51:11', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>Kholiqq</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>2121</b></li><li><b>instansi</b> dengan value <b>test</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>id_peminjam</b> dengan value <b>216212157</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:30</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-21</b></li><li><b>jam_kembali</b> dengan value <b>09:30</b></li></ul>', 'kholiq'),
(892, '::1', '', '2020-10-14 07:51:22', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>Kholiqq</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>2121</b></li><li><b>instansi</b> dengan value <b>test</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>id_peminjam</b> dengan value <b>216212157</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:30</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-21</b></li><li><b>jam_kembali</b> dengan value <b>09:30</b></li></ul>', 'kholiq'),
(893, '::1', '', '2020-10-14 08:17:28', 'Mengedit Kelola kelola_penyimpanandengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>9</b></li><li><b>nama_penyimpanan</b> dengan value <b>Lab Bio 22</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(894, '::1', '', '2020-10-14 08:17:34', 'Mengedit Kelola kelola_penyimpanandengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>9</b></li><li><b>nama_penyimpanan</b> dengan value <b>Lab Bio 2</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(895, '::1', '', '2020-10-14 08:23:36', 'Mengedit Kelola kelola_penyimpanandengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>nama_penyimpanan</b> dengan value <b>Lab Bio 3</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(896, '::1', '', '2020-10-14 08:23:46', 'Menambah Kelola kelola_penyimpanan dengan data sbb:<br />\n                    <ul><li><b>nama_penyimpanan</b> dengan value <b>Lab Bio 4</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(897, '::1', '', '2020-10-14 08:23:53', 'Menambah Kelola kelola_penyimpanan dengan data sbb:<br />\n                    <ul><li><b>nama_penyimpanan</b> dengan value <b>Lab Bio 5</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(898, '::1', '', '2020-10-14 08:33:48', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>unnes</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>2112112</b></li><li><b>tgl</b> dengan value <b>2020-09-30</b></li><li><b>jam_pinjam</b> dengan value <b>09:30</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-07</b></li><li><b>jam_kembali</b> dengan value <b>09:30</b></li></ul>', 'kholiq'),
(899, '::1', '', '2020-10-14 08:33:54', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>16</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(900, '::1', '', '2020-10-14 08:34:01', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>16</b></li><li><b>id_alat</b> dengan value <b>16</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(901, '::1', '', '2020-10-14 08:56:07', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0002102020</b></li><li><b>peminjam</b> dengan value <b>kholiqsss</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>unnes</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>id_peminjam</b> dengan value <b>2112112</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:30</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-21</b></li><li><b>jam_kembali</b> dengan value <b>09:30</b></li></ul>', 'kholiq'),
(902, '::1', '', '2020-10-14 08:56:12', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>17</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(903, '::1', '', '2020-10-14 08:56:17', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>17</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(904, '::1', '', '2020-10-14 09:19:19', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0003102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>kosong</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan2</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:18</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>11:18</b></li></ul>', 'kholiq'),
(905, '::1', '', '2020-10-14 09:19:25', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>18</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(906, '::1', '', '2020-10-14 09:19:30', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>18</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(907, '::1', '', '2020-10-14 09:41:43', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>no_peminjaman</b> dengan value <b>0003102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>kosong</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:18</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>11:18</b></li></ul>', 'kholiq'),
(908, '::1', '', '2020-10-14 09:48:02', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>no_peminjaman</b> dengan value <b>0003102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>kosong</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:18</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>11:18</b></li></ul>', 'kholiq'),
(909, '::1', '', '2020-10-14 09:51:31', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0004102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>kosong</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:51</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>11:51</b></li></ul>', 'kholiq'),
(910, '::1', '', '2020-10-14 09:51:38', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>19</b></li><li><b>id_bahan</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(911, '::1', '', '2020-10-14 09:51:39', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>19</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(912, '::1', '', '2020-10-14 09:54:48', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0003102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>kosong</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:54</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>11:54</b></li></ul>', 'kholiq'),
(913, '::1', '', '2020-10-14 09:56:17', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0003102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>kosong</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:56</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>11:56</b></li></ul>', 'kholiq'),
(914, '::1', '', '2020-10-14 10:00:29', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0004102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>10:00</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>12:00</b></li></ul>', 'kholiq'),
(915, '::1', '', '2020-10-14 10:01:22', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0003102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>10:01</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>12:01</b></li></ul>', 'kholiq'),
(916, '::1', '', '2020-10-14 10:03:00', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0003102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>jenis_pinjaman</b> dengan value <b>2</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>10:02</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>12:02</b></li></ul>', 'kholiq'),
(917, '::1', '', '2020-10-14 10:03:17', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0004102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>jenis_pinjaman</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>10:03</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-21</b></li><li><b>jam_kembali</b> dengan value <b>10:03</b></li></ul>', 'kholiq'),
(918, '::1', '', '2020-10-14 10:04:56', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0004102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>unnes</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>jenis_pinjaman</b> dengan value <b>1</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>10:04</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-21</b></li><li><b>jam_kembali</b> dengan value <b>10:04</b></li></ul>', 'kholiq'),
(919, '::1', '', '2020-10-14 11:10:45', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>jenis_pinjaman</b> dengan value <b>2</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>11:10</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>13:10</b></li></ul>', 'kholiq'),
(920, '::1', '', '2020-10-14 11:10:51', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>27</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(921, '::1', '', '2020-10-14 11:10:55', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>27</b></li><li><b>id_bahan</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(922, '::1', '', '2020-10-14 11:11:01', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>27</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(923, '::1', '', '2020-10-14 11:11:49', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0002102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>unnes</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>jenis_pinjaman</b> dengan value <b>1</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>11:11</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-21</b></li><li><b>jam_kembali</b> dengan value <b>11:11</b></li></ul>', 'kholiq'),
(924, '::1', '', '2020-10-14 11:11:53', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>28</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(925, '::1', '', '2020-10-14 11:11:57', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>28</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(926, '::1', '', '2020-10-14 13:24:58', 'Login  by Kholiq', 'kholiq'),
(927, '::1', '', '2020-10-14 17:44:20', 'Login  by Kholiq', 'kholiq'),
(928, '::1', '', '2020-10-14 18:35:07', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>27</b></li><li><b>qty</b> dengan value <b>1</b></li><li><b>qty_awal</b> dengan value <b>2</b></li><li><b>qty_hapus</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(929, '::1', '', '2020-10-14 18:55:48', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>27</b></li><li><b>qty</b> dengan value <b>1</b></li><li><b>qty_awal</b> dengan value <b>2</b></li><li><b>qty_hapus</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(930, '::1', '', '2020-10-14 19:04:06', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>27</b></li><li><b>qty</b> dengan value <b>1</b></li><li><b>qty_awal</b> dengan value <b>2</b></li><li><b>qty_hapus</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(931, '::1', '', '2020-10-14 19:21:34', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>28</b></li><li><b>qty</b> dengan value <b>0</b></li><li><b>qty_awal</b> dengan value <b>2</b></li><li><b>qty_hapus</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(932, '::1', '', '2020-10-14 19:22:33', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>28</b></li><li><b>qty</b> dengan value <b>0</b></li><li><b>qty_awal</b> dengan value <b>2</b></li><li><b>qty_hapus</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(933, '::1', '', '2020-10-14 19:31:03', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>unnes</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>jenis_pinjaman</b> dengan value <b>1</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>19:30</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-21</b></li><li><b>jam_kembali</b> dengan value <b>19:30</b></li></ul>', 'kholiq'),
(934, '::1', '', '2020-10-14 19:31:08', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>29</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(935, '::1', '', '2020-10-14 19:31:12', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>29</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(936, '::1', '', '2020-10-15 06:31:30', 'Login  by Kholiq', 'kholiq'),
(937, '::1', '', '2020-10-15 06:38:57', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2</b></li><li><b>cur_level</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(938, '::1', '', '2020-10-15 06:39:17', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>3,3,3,3,3,3,3,3,3,3,3</b></li><li><b>cur_level</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(939, '::1', '', '2020-10-15 06:49:18', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0002102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>jenis_pinjaman</b> dengan value <b>2</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-15</b></li><li><b>jam_pinjam</b> dengan value <b>06:49</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-15</b></li><li><b>jam_kembali</b> dengan value <b>8:49</b></li></ul>', 'kholiq'),
(940, '::1', '', '2020-10-15 06:49:23', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>30</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(941, '::1', '', '2020-10-15 09:33:49', 'Login  by Kholiq', 'kholiq'),
(942, '::1', '', '2020-10-15 09:34:12', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>30</b></li><li><b>qty</b> dengan value <b>0</b></li><li><b>qty_awal</b> dengan value <b>1</b></li><li><b>qty_hapus</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(943, '::1', '', '2020-10-15 11:22:04', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\n                    <ul><li><b>id_nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>12</b></li><li><b>stock</b> dengan value <b>3</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>1000000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>Pilih</b></li></ul>', 'kholiq'),
(944, '::1', '', '2020-10-15 11:22:16', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>id_nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>12</b></li><li><b>stock</b> dengan value <b>3</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>1000000</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(945, '::1', '', '2020-10-15 11:22:23', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stock</b> dengan value <b>10</b></li><li><b>stock_minimal</b> dengan value <b>4</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2018</b></li></ul>', 'kholiq'),
(946, '::1', '', '2020-10-15 12:07:45', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0003102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>jenis_pinjaman</b> dengan value <b>2</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-15</b></li><li><b>jam_pinjam</b> dengan value <b>12:07</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-15</b></li><li><b>jam_kembali</b> dengan value <b>14:07</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(947, '::1', '', '2020-10-15 12:07:49', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>31</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(948, '::1', '', '2020-10-15 12:07:55', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>31</b></li><li><b>id_alat</b> dengan value <b>17</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(949, '::1', '', '2020-10-15 12:08:02', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>31</b></li><li><b>id_bahan</b> dengan value <b>8</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(950, '::1', '', '2020-10-15 13:00:10', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>id_nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>12</b></li><li><b>stock</b> dengan value <b>3</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>1000000</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(951, '::1', '', '2020-10-15 13:56:13', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Alat Penunjang</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(952, '::1', '', '2020-10-15 13:56:47', 'Menambah Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>KU</b></li><li><b>nama_alat</b> dengan value <b>Kursi</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(953, '::1', '', '2020-10-15 13:59:29', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>8</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>13</b></li><li><b>stok</b> dengan value <b>1</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>lokasi</b> dengan value <b>7</b></li><li><b>pendanaan</b> dengan value <b>4</b></li><li><b>harga</b> dengan value <b>kosong</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2017</b></li></ul>', 'kholiq'),
(954, '::1', '', '2020-10-15 14:00:11', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>8</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>13</b></li><li><b>stok</b> dengan value <b>30</b></li><li><b>stok_minimal</b> dengan value <b>10</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>4</b></li><li><b>harga</b> dengan value <b>kosong</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(955, '::1', '', '2020-10-15 14:00:37', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0004102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>unnes</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>nim</b></li><li><b>jenis_pinjaman</b> dengan value <b>1</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-15</b></li><li><b>jam_pinjam</b> dengan value <b>14:00</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-22</b></li><li><b>jam_kembali</b> dengan value <b>14:00</b></li></ul>', 'kholiq'),
(956, '::1', '', '2020-10-15 14:09:29', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>8,8,8,8,8</b></li><li><b>cur_level</b> dengan value <b>8</b></li></ul>', 'kholiq'),
(957, '::1', '', '2020-10-15 14:09:46', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>8,8,8,8,8,8</b></li><li><b>cur_level</b> dengan value <b>8</b></li></ul>', 'kholiq'),
(958, '::1', '', '2020-11-02 10:45:08', 'Login  by Kholiq', 'kholiq'),
(959, '::1', '', '2020-11-02 11:01:51', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>MK0211</b></li><li><b>jenis_bahan</b> dengan value <b>Galon</b></li><li><b>nama_bahan</b> dengan value <b>Galon Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(960, '::1', '', '2020-11-05 08:20:57', 'Login  by Kholiq', 'kholiq'),
(961, '::1', '', '2020-11-05 10:47:37', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>8,8,8,8,8,8,8</b></li><li><b>cur_level</b> dengan value <b>8</b></li></ul>', 'kholiq'),
(962, '::1', '', '2020-11-05 10:47:46', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>7,7,7,7,7,7,7,7</b></li><li><b>cur_level</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(963, '::1', '', '2020-11-05 11:27:38', 'Logout SILABIO by Kholiq', 'kholiq'),
(964, '::1', '', '2020-11-05 11:30:53', 'Login  by Kholiq', 'kholiq'),
(965, '::1', '', '2020-11-05 11:30:55', 'Logout SILABIO by Kholiq', 'kholiq'),
(966, '::1', '', '2020-11-05 11:31:14', 'Login  by Kholiq', 'kholiq'),
(967, '::1', '', '2020-11-05 11:31:50', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>8,8,8,8,8,8,8,8</b></li><li><b>cur_level</b> dengan value <b>8</b></li></ul>', 'kholiq'),
(968, '::1', '', '2020-11-05 11:31:59', 'Logout SILABIO by Kholiq', 'kholiq'),
(969, '::1', '', '2020-11-05 11:32:14', 'Login  by Kholiq', 'kholiq'),
(970, '::1', '', '2020-11-05 11:32:16', 'Logout SILABIO by Kholiq', 'kholiq'),
(971, '::1', '', '2020-11-05 11:32:36', 'Login  by Kholiq', 'kholiq'),
(972, '::1', '', '2020-11-05 11:45:13', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>7,7,7,7,7,7,7,7,7</b></li><li><b>cur_level</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(973, '::1', '', '2020-12-23 07:36:42', 'Menambah Master item dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>undefined</b></li><li><b>nama_alat</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/12/dc4dececa730d85d256e9b3f7f473b5e.png</b></li><li><b>keterangan</b> dengan value <b>undefined</b></li></ul>', 'kholiq'),
(974, '::1', '', '2020-12-23 07:39:34', 'Menghapus laporan dengan id 9', 'kholiq'),
(975, '::1', '', '2020-12-23 07:40:07', 'Menambah Master item dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>KUa</b></li><li><b>nama_alat</b> dengan value <b>Ruanga</b></li><li><b>gambar</b> dengan value <b>files/2020/12/3d63ffdd1aa3cccc0fb5f5d375ad712e.png</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(976, '::1', '', '2020-12-23 08:20:56', 'Menambah Master item dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>KUasasa</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>kosong</b></li><li><b>tahun</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/12/3c4cf62bbe7a6c73f53da06532f3cc4d.png</b></li><li><b>keterangan</b> dengan value <b>undefined</b></li></ul>', 'kholiq'),
(977, '::1', '', '2020-12-23 08:41:34', 'Menambah Master item dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>MK02111</b></li><li><b>nama_alat</b> dengan value <b>coba</b></li><li><b>gambar</b> dengan value <b>files/2020/12/62504e076ceb4474bb9c8f8bb2559114.jpeg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(978, '::1', '', '2020-12-23 09:00:59', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stock</b> dengan value <b>10</b></li><li><b>stock_minimal</b> dengan value <b>4</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2018</b></li></ul>', 'kholiq'),
(979, '::1', '', '2020-12-23 09:01:18', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stock</b> dengan value <b>10</b></li><li><b>stock_minimal</b> dengan value <b>4</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>jenis</b> dengan value <b>2</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2018</b></li></ul>', 'kholiq'),
(980, '::1', '', '2020-12-23 09:01:28', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stock</b> dengan value <b>10</b></li><li><b>stock_minimal</b> dengan value <b>4</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2018</b></li></ul>', 'kholiq'),
(981, '::1', '', '2021-05-05 09:24:42', 'Login  by Kholiq', 'kholiq'),
(982, '::1', '', '2021-05-05 09:25:24', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/efa81bc7d9b27cd1f217bc1213cf7776.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(983, '::1', '', '2021-05-05 09:25:34', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/5b038ef066bee9b2ad2215dac10f7252.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(984, '::1', '', '2021-05-05 09:25:48', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/840ded372901c9c5e772114fef1acf14.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(985, '::1', '', '2021-05-05 09:26:00', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(986, '::1', '', '2021-05-05 09:26:15', 'Logout SILABIO by Kholiq', 'kholiq'),
(987, '::1', '', '2021-05-05 09:26:47', 'Login  by Kholiq', 'kholiq'),
(988, '::1', '', '2021-05-05 09:26:59', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(989, '::1', '', '2021-05-05 09:27:07', 'Logout SILABIO by Kholiq', 'kholiq'),
(990, '::1', '', '2021-05-05 09:27:15', 'Login  by Kholiq', 'kholiq'),
(991, '::1', '', '2021-05-05 09:27:22', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(992, '::1', '', '2021-05-05 09:27:33', 'Logout SILABIO by Kholiq', 'kholiq'),
(993, '::1', '', '2021-05-05 09:27:42', 'Login  by Kholiq', 'kholiq'),
(994, '::1', '', '2021-05-05 09:27:56', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(995, '::1', '', '2021-05-05 09:28:00', 'Logout SILABIO by Kholiq', 'kholiq'),
(996, '::1', '', '2021-05-05 09:28:08', 'Login  by Kholiq', 'kholiq'),
(997, '::1', '', '2021-05-05 09:28:40', 'Logout SILABIO by Kholiq', 'kholiq'),
(998, '::1', '', '2021-05-05 09:28:49', 'Login  by Kholiq', 'kholiq'),
(999, '::1', '', '2021-05-05 09:29:34', 'Logout SILABIO by Kholiq', 'kholiq'),
(1000, '::1', '', '2021-05-05 09:29:42', 'Login  by Kholiq', 'kholiq'),
(1001, '::1', '', '2021-05-05 09:29:56', 'Logout SILABIO by Kholiq', 'kholiq'),
(1002, '::1', '', '2021-05-05 09:30:05', 'Login  by Kholiq', 'kholiq'),
(1003, '::1', '', '2021-05-05 09:31:20', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/a2ddcd41dc65c93eda535659aef471f5.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1004, '::1', '', '2021-05-05 09:31:23', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/906149b712284936a915b61c7af62032.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1005, '::1', '', '2021-05-05 09:31:44', 'Logout SILABIO by Kholiq', 'kholiq'),
(1006, '::1', '', '2021-05-05 09:31:58', 'Login  by Kholiq', 'kholiq'),
(1007, '::1', '', '2021-05-05 09:32:10', 'Logout SILABIO by Kholiq', 'kholiq'),
(1008, '::1', '', '2021-05-05 09:32:19', 'Login  by Kholiq', 'kholiq'),
(1009, '::1', '', '2021-05-05 09:33:33', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/6aa7f3a57ba3315a0c1989c2b89fd323.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1010, '::1', '', '2021-05-05 09:33:38', 'Logout SILABIO by Kholiq', 'kholiq'),
(1011, '::1', '', '2021-05-05 11:17:03', 'Login  by Kholiq', 'kholiq'),
(1012, '::1', '', '2021-05-05 11:17:28', 'Logout SILABIO by Kholiq', 'kholiq'),
(1013, '::1', '', '2021-05-05 11:17:40', 'Login  by Kholiq', 'kholiq'),
(1014, '::1', '', '2021-05-06 03:51:06', 'Login  by Kholiq', 'kholiq'),
(1015, '::1', '', '2021-05-06 03:52:13', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/25feb6ad7e329e74168cb66cf108fccc.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1016, '::1', '', '2021-05-06 03:56:45', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/f3bd018b78ae1cc42411775266be8bff.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1017, '::1', '', '2021-05-06 03:56:49', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1018, '::1', '', '2021-05-06 09:50:04', 'Login  by Kholiq', 'kholiq'),
(1019, '::1', '', '2021-05-06 09:53:16', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1020, '::1', '', '2021-05-06 09:54:18', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1021, '::1', '', '2021-05-06 09:56:42', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1022, '::1', '', '2021-05-06 09:56:45', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1023, '::1', '', '2021-05-06 09:56:45', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1024, '::1', '', '2021-05-06 09:56:45', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1025, '::1', '', '2021-05-06 09:56:46', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1026, '::1', '', '2021-05-06 09:56:46', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1027, '::1', '', '2021-05-06 09:56:53', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1028, '::1', '', '2021-05-06 09:56:53', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1029, '::1', '', '2021-05-06 09:56:54', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1030, '::1', '', '2021-05-06 09:56:54', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1031, '::1', '', '2021-05-06 09:56:54', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1032, '::1', '', '2021-05-06 09:56:54', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1033, '::1', '', '2021-05-06 09:56:54', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1034, '::1', '', '2021-05-06 09:56:54', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1035, '::1', '', '2021-05-06 09:56:55', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1036, '::1', '', '2021-05-06 09:56:55', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1037, '::1', '', '2021-05-06 09:56:55', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1038, '::1', '', '2021-05-06 09:58:21', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1039, '::1', '', '2021-05-06 09:58:21', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1040, '::1', '', '2021-05-06 09:58:22', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1041, '::1', '', '2021-05-06 09:58:22', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1042, '::1', '', '2021-05-06 09:58:22', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1043, '::1', '', '2021-05-06 09:58:22', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1044, '::1', '', '2021-05-06 09:58:22', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1045, '::1', '', '2021-05-06 09:58:22', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1046, '::1', '', '2021-05-06 09:58:23', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1047, '::1', '', '2021-05-06 09:58:23', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1048, '::1', '', '2021-05-06 09:58:23', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1049, '::1', '', '2021-05-06 09:58:23', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1050, '::1', '', '2021-05-06 10:02:14', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1051, '::1', '', '2021-05-06 10:02:16', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1052, '::1', '', '2021-05-06 10:02:16', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1053, '::1', '', '2021-05-06 10:02:16', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1054, '::1', '', '2021-05-06 10:02:16', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1055, '::1', '', '2021-05-06 10:02:16', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1056, '::1', '', '2021-05-06 10:02:16', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1057, '::1', '', '2021-05-06 10:02:17', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1058, '::1', '', '2021-05-06 10:02:19', 'Logout SILABIO by Kholiq', 'kholiq'),
(1059, '::1', '', '2021-05-06 10:02:26', 'Login  by Kholiq', 'kholiq'),
(1060, '::1', '', '2021-05-06 10:02:40', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1061, '::1', '', '2021-05-06 10:02:43', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1062, '::1', '', '2021-05-06 10:02:49', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1063, '::1', '', '2021-05-06 10:03:28', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1064, '::1', '', '2021-05-06 10:06:03', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1065, '::1', '', '2021-05-06 10:06:20', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1066, '::1', '', '2021-05-06 10:06:50', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Beja</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1067, '::1', '', '2021-05-06 10:06:52', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Beja</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1068, '::1', '', '2021-05-06 10:06:52', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Beja</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1069, '::1', '', '2021-05-06 10:10:11', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1070, '::1', '', '2021-05-06 10:10:56', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1071, '::1', '', '2021-05-06 10:12:53', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1072, '::1', '', '2021-05-06 10:13:26', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Beja</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1073, '::1', '', '2021-05-06 10:13:43', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1074, '::1', '', '2021-05-06 10:15:35', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1075, '::1', '', '2021-05-06 10:15:46', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1076, '::1', '', '2021-05-06 10:16:22', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1077, '::1', '', '2021-05-06 12:17:05', 'Login  by Kholiq', 'kholiq'),
(1078, '::1', '', '2021-05-06 12:31:12', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1079, '::1', '', '2021-05-06 12:31:25', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/3d30980c12b02ece241be4843a124366.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1080, '::1', '', '2021-05-06 12:33:13', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/6985a644dd64998992e65d872b919861.jpg</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1081, '::1', '', '2021-05-06 12:33:14', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/5820e9fc3b34b118070a44fc5b8090fb.jpg</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1082, '::1', '', '2021-05-06 12:33:15', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/8d71f1627ec6c6aba7b30de386a28ba7.jpg</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1083, '::1', '', '2021-05-06 12:43:26', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1084, '::1', '', '2021-05-06 12:43:48', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1085, '::1', '', '2021-05-06 12:44:01', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>2</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1086, '::1', '', '2021-05-06 12:44:12', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1087, '::1', '', '2021-05-06 12:44:26', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/8bdcfa830ae93e9eb65fcbab29200442.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1088, '::1', '', '2021-05-06 12:44:30', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/3041b9fc817365935625415522081163.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1089, '::1', '', '2021-05-06 12:44:31', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/73c1952c1cb19f41bc1b43bd88796a6b.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1090, '::1', '', '2021-05-06 12:44:31', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/7d748648780ea5d9f57fc1a5e2d5bc81.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1091, '::1', '', '2021-05-06 12:44:32', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/40a3eb85f48bddc333c4cf30ecbe2837.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1092, '::1', '', '2021-05-06 12:44:32', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/2ebd6cc223e4524fcf31712069e08253.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1093, '::1', '', '2021-05-06 13:19:58', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1094, '::1', '', '2021-05-06 13:20:00', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1095, '::1', '', '2021-05-06 13:20:00', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1096, '::1', '', '2021-05-06 13:20:01', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1097, '::1', '', '2021-05-06 13:20:01', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1098, '::1', '', '2021-05-06 13:24:33', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1099, '::1', '', '2021-05-06 13:24:35', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1100, '::1', '', '2021-05-06 13:30:16', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1101, '::1', '', '2021-05-06 13:31:08', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1102, '::1', '', '2021-05-06 13:31:45', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1103, '::1', '', '2021-05-06 13:31:55', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1104, '::1', '', '2021-05-06 13:40:51', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/d5f48833de7ec4fc937aef47028d217c.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(1105, '::1', '', '2021-05-06 13:41:46', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/c743f89f0a8ff8e3f00a4fac467fa5ef.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1106, '::1', '', '2021-05-06 13:42:36', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1107, '::1', '', '2021-05-06 13:42:56', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1108, '::1', '', '2021-05-06 13:43:05', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1109, '::1', '', '2021-05-06 13:46:24', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1110, '::1', '', '2021-05-06 13:53:24', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2021/05/</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1111, '::1', '', '2021-05-06 13:54:22', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1112, '::1', '', '2021-05-06 13:54:35', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholi</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1113, '::1', '', '2021-05-06 13:54:47', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1114, '::1', '', '2021-05-06 13:54:56', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/9730488afcacdfcdfacd63b3f8bf696a.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1115, '::1', '', '2021-05-06 14:01:02', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1116, '::1', '', '2021-05-06 14:01:04', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1117, '::1', '', '2021-05-06 14:01:04', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1118, '::1', '', '2021-05-06 14:01:04', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1119, '::1', '', '2021-05-06 14:01:05', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1120, '::1', '', '2021-05-06 14:01:05', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1121, '::1', '', '2021-05-06 14:01:05', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1122, '::1', '', '2021-05-06 14:01:05', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1123, '::1', '', '2021-05-06 14:01:05', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1124, '::1', '', '2021-05-06 14:01:05', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1125, '::1', '', '2021-05-06 14:01:06', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1126, '::1', '', '2021-05-06 14:01:06', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1127, '::1', '', '2021-05-06 14:01:06', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1128, '::1', '', '2021-05-06 14:01:06', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1129, '::1', '', '2021-05-06 14:01:06', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1130, '::1', '', '2021-05-06 14:01:06', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1131, '::1', '', '2021-05-06 14:01:06', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1132, '::1', '', '2021-05-06 14:01:07', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1133, '::1', '', '2021-05-06 14:01:07', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1134, '::1', '', '2021-05-06 14:01:16', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1135, '::1', '', '2021-05-06 14:01:16', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1136, '::1', '', '2021-05-06 14:01:16', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1137, '::1', '', '2021-05-06 14:01:16', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1138, '::1', '', '2021-05-06 14:01:17', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1139, '::1', '', '2021-05-06 14:04:38', 'Menambah Master item dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>qwe</b></li><li><b>nama_alat</b> dengan value <b>Beja</b></li><li><b>gambar</b> dengan value <b>files/2021/05/5dcfededb09b13f8a14b895018f8cc12.png</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1140, '::1', '', '2021-05-06 14:04:47', 'Menghapus laporan dengan id 12', 'kholiq'),
(1141, '::1', '', '2021-05-06 20:30:04', 'Login  by Kholiq', 'kholiq'),
(1142, '::1', '', '2021-05-06 20:46:10', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1143, '::1', '', '2021-05-06 20:46:42', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1144, '::1', '', '2021-05-06 20:47:55', 'Logout SILABIO by Kholiq', 'kholiq'),
(1145, '::1', '', '2021-05-06 20:48:04', 'Login  by Kholiq', 'kholiq'),
(1146, '::1', '', '2021-05-06 20:48:42', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1147, '::1', '', '2021-05-06 20:49:24', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1148, '::1', '', '2021-05-06 20:50:39', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1149, '::1', '', '2021-05-06 20:52:46', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1150, '::1', '', '2021-05-06 20:53:39', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1151, '::1', '', '2021-05-06 21:04:02', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li><li><b>gambar</b> dengan value <b>files/2021/05/9f5e0c0bb8ecd7d934fa43564cd56fdf.png</b></li></ul>', 'kholiq'),
(1152, '::1', '', '2021-05-06 21:04:09', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1153, '::1', '', '2021-05-06 21:04:20', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1154, '::1', '', '2021-05-06 21:04:37', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1155, '::1', '', '2021-05-06 21:04:37', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1156, '::1', '', '2021-05-06 21:04:38', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1157, '::1', '', '2021-05-06 21:04:38', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1158, '::1', '', '2021-05-06 21:04:38', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1159, '::1', '', '2021-05-06 21:19:03', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1160, '::1', '', '2021-05-06 21:20:52', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikrosko</b></li><li><b>keterangan</b> dengan value <b>Mikroskop</b></li></ul>', 'kholiq'),
(1161, '::1', '', '2021-05-06 21:21:01', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>Mikroskop</b></li></ul>', 'kholiq'),
(1162, '::1', '', '2021-05-06 21:25:05', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>kosong</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1163, '::1', '', '2021-05-06 21:25:09', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>kosong</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1164, '::1', '', '2021-05-06 21:26:29', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1165, '::1', '', '2021-05-06 21:26:39', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1166, '::1', '', '2021-05-06 21:26:55', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1167, '::1', '', '2021-05-06 21:27:50', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1168, '::1', '', '2021-05-06 21:27:51', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1169, '::1', '', '2021-05-06 21:27:52', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1170, '::1', '', '2021-05-06 21:27:53', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1171, '::1', '', '2021-05-06 21:27:54', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1172, '::1', '', '2021-05-06 21:32:11', 'Menghapus laporan dengan id 1', 'kholiq'),
(1173, '::1', '', '2021-05-06 21:39:28', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1174, '::1', '', '2021-05-06 21:39:35', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1175, '::1', '', '2021-05-06 21:40:03', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1176, '::1', '', '2021-05-06 21:40:09', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1177, '::1', '', '2021-05-06 21:44:39', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/b0331867a2e2a4d89730f5cb9db55665.png</b></li></ul>', 'kholiq'),
(1178, '::1', '', '2021-05-06 21:45:13', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1179, '::1', '', '2021-05-06 21:45:16', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1180, '::1', '', '2021-05-06 21:45:16', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1181, '::1', '', '2021-05-06 21:45:17', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1182, '::1', '', '2021-05-06 21:45:17', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1183, '::1', '', '2021-05-06 21:45:17', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1184, '::1', '', '2021-05-06 21:45:17', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1185, '::1', '', '2021-05-06 21:45:17', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1186, '::1', '', '2021-05-06 21:45:17', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1187, '::1', '', '2021-05-06 21:45:17', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1188, '::1', '', '2021-05-06 21:45:18', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1189, '::1', '', '2021-05-06 21:45:18', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1190, '::1', '', '2021-05-06 21:45:18', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1191, '::1', '', '2021-05-06 21:45:18', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1192, '::1', '', '2021-05-06 21:45:18', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1193, '::1', '', '2021-05-06 21:45:39', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/fa84ec721d66a2c74e1524d30bd76cf4.png</b></li></ul>', 'kholiq'),
(1194, '::1', '', '2021-05-06 21:45:53', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_bahan</b> dengan value <b>Galon Air</b></li><li><b>jenis_bahan</b> dengan value <b>Galon</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/f04e7d4ee85ddbb51c2b1608d10babe6.jpg</b></li></ul>', 'kholiq'),
(1195, '::1', '', '2021-05-07 11:06:22', 'Login  by Kholiq', 'kholiq'),
(1196, '::1', '', '2021-05-07 11:07:27', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li><li><b>gambar</b> dengan value <b>files/2021/05/871c17e8bdc2c2fa8ae0819ceebe051f.png</b></li></ul>', 'kholiq'),
(1197, '::1', '', '2021-05-07 11:07:32', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1198, '::1', '', '2021-05-07 11:07:46', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li><li><b>gambar</b> dengan value <b>files/2021/05/48285120050c1f1ee07c0f8689f2655b.png</b></li></ul>', 'kholiq'),
(1199, '::1', '', '2021-05-07 11:07:51', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1200, '::1', '', '2021-05-07 11:08:46', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/6691fc507bb4504a6cae9727ca2487b2.png</b></li></ul>', 'kholiq'),
(1201, '::1', '', '2021-05-07 11:08:51', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1202, '::1', '', '2021-05-07 13:01:04', 'Logout SILABIO by Kholiq', 'kholiq'),
(1203, '::1', '', '2021-05-07 13:01:12', 'Login  by user', 'user'),
(1204, '::1', '', '2021-05-07 13:01:31', 'Logout SILABIO by user', 'user'),
(1205, '::1', '', '2021-05-07 13:01:44', 'Login  by Kholiq', 'kholiq'),
(1206, '::1', '', '2021-05-07 20:58:42', 'Login  by Kholiq', 'kholiq'),
(1207, '::1', '', '2021-05-07 21:04:19', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/af6881fcd8e8aac4b3151030da0d35eb.png</b></li></ul>', 'kholiq'),
(1208, '::1', '', '2021-05-07 21:04:24', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1209, '::1', '', '2021-05-07 21:04:31', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1210, '::1', '', '2021-05-07 21:04:50', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1211, '::1', '', '2021-05-07 21:04:53', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1212, '::1', '', '2021-05-07 21:05:07', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1213, '::1', '', '2021-05-07 21:05:08', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1214, '::1', '', '2021-05-07 21:05:08', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1215, '::1', '', '2021-05-07 21:05:08', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1216, '::1', '', '2021-05-07 21:05:09', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1217, '::1', '', '2021-05-07 21:05:09', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1218, '::1', '', '2021-05-07 21:05:09', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1219, '::1', '', '2021-05-07 21:05:09', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1220, '::1', '', '2021-05-07 21:05:09', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1221, '::1', '', '2021-05-07 21:05:09', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1222, '::1', '', '2021-05-07 21:05:09', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1223, '::1', '', '2021-05-07 21:05:10', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1224, '::1', '', '2021-05-07 21:05:10', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1225, '::1', '', '2021-05-07 21:05:10', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1226, '::1', '', '2021-05-07 21:05:10', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1227, '::1', '', '2021-05-07 21:05:10', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1228, '::1', '', '2021-05-07 21:05:11', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1229, '::1', '', '2021-05-07 21:05:11', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1230, '::1', '', '2021-05-07 21:05:11', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1231, '::1', '', '2021-05-07 21:05:16', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1232, '::1', '', '2021-05-07 21:05:28', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1233, '::1', '', '2021-05-08 21:23:27', 'Login  by Kholiq', 'kholiq'),
(1234, '::1', '', '2021-05-09 12:23:57', 'Login  by Kholiq', 'kholiq'),
(1235, '::1', '', '2021-05-09 20:41:08', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholi</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1236, '::1', '', '2021-05-09 20:41:36', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1237, '::1', '', '2021-05-09 20:41:48', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2021/05/a53c0af067801e975090b391d90b679f.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1238, '::1', '', '2021-05-09 20:42:51', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2021/05/9f8d1628340ed0b0286f844607f0182f.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1239, '::1', '', '2021-05-09 20:43:45', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>undefined</b></li><li><b>gambar</b> dengan value <b>files/2021/05/47f254daea9f8bde4d9865854040f1b9.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1240, '::1', '', '2021-05-09 20:44:27', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2021/05/9941a333facc8f4cab2e85e4867883b7.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(1241, '::1', '', '2021-05-09 20:47:55', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li><li><b>gambar</b> dengan value <b>files/2021/05/f4ca50fdc7484cd63e11b293f4f6316c.png</b></li></ul>', 'kholiq'),
(1242, '::1', '', '2021-05-09 20:48:01', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1243, '::1', '', '2021-05-09 20:48:13', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2021/05/2a767b739e1cfd5a6fdbb3b2fafda7cd.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1244, '::1', '', '2021-05-09 20:48:18', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1245, '::1', '', '2021-05-09 20:49:05', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1246, '::1', '', '2021-05-09 20:50:25', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1247, '::1', '', '2021-05-09 20:50:29', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1248, '::1', '', '2021-05-09 20:54:55', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2021</b></li></ul>', 'kholiq'),
(1249, '::1', '', '2021-05-09 20:56:12', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2021</b></li><li><b>gambar</b> dengan value <b>files/2021/05/7b7b651b71dfdfcc039d059be26facc7.png</b></li></ul>', 'kholiq'),
(1250, '::1', '', '2021-05-09 20:56:23', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>0</b></li></ul>', 'kholiq'),
(1251, '::1', '', '2021-05-09 20:56:46', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/4c2bb92625b1f20ad8c87921c9f331e9.png</b></li></ul>', 'kholiq'),
(1252, '::1', '', '2021-05-09 20:56:51', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1253, '::1', '', '2021-05-09 20:58:59', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li><li><b>gambar</b> dengan value <b>files/2021/05/ef4d0ae08f7c7bc395133129448c4ae3.png</b></li></ul>', 'kholiq'),
(1254, '::1', '', '2021-05-09 20:59:04', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1255, '::1', '', '2021-05-09 21:00:01', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li><li><b>gambar</b> dengan value <b>files/2021/05/7ef871af04092734f49f8ccec9a492fc.png</b></li></ul>', 'kholiq'),
(1256, '::1', '', '2021-05-09 21:00:05', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1257, '::1', '', '2021-05-09 21:06:03', 'Menambah Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>qwe</b></li><li><b>jenis_bahan</b> dengan value <b>fsf</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>tahun</b> dengan value <b>2021</b></li></ul>', 'kholiq'),
(1258, '::1', '', '2021-05-09 21:06:11', 'Menghapus laporan dengan id 4', 'kholiq'),
(1259, '::1', '', '2021-05-09 21:07:14', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/dd3dc3aae2a3a890bd09b8c47c5bdc24.png</b></li></ul>', 'kholiq'),
(1260, '::1', '', '2021-05-09 21:07:19', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1261, '::1', '', '2021-05-09 21:16:10', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/093186f77474fc12730e1324c5a276d8.png</b></li></ul>', 'kholiq'),
(1262, '::1', '', '2021-05-09 21:21:16', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1263, '::1', '', '2021-05-09 21:23:56', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/dcc6190b1bc519f6d1255dc403fa3a74.png</b></li></ul>', 'kholiq'),
(1264, '::1', '', '2021-05-09 21:24:01', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1265, '::1', '', '2021-05-09 21:24:25', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2021/05/b164b16c453718559fb08f9fdba7c31d.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1266, '::1', '', '2021-05-09 21:24:29', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1267, '::1', '', '2021-05-09 21:25:01', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/28cec057062a4baf02a659fe09d60931.png</b></li></ul>', 'kholiq'),
(1268, '::1', '', '2021-05-09 21:25:04', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1269, '::1', '', '2021-05-09 21:25:09', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1270, '::1', '', '2021-05-09 21:25:15', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1271, '::1', '', '2021-05-09 21:25:35', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1272, '::1', '', '2021-05-09 21:29:22', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1273, '::1', '', '2021-05-09 21:34:45', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/19b14b6e3052b43352d9f9402fd59215.png</b></li></ul>', 'kholiq'),
(1274, '::1', '', '2021-05-09 21:35:44', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1275, '::1', '', '2021-05-09 21:35:51', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/b699f3246a5be5888c9da3512d1dbcb9.png</b></li></ul>', 'kholiq'),
(1276, '::1', '', '2021-05-10 09:03:35', 'Login  by Kholiq', 'kholiq'),
(1277, '::1', '', '2021-05-10 09:04:14', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1278, '::1', '', '2021-05-10 09:05:28', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/793df9eafac12c1895130d36f022b4ef.png</b></li></ul>', 'kholiq'),
(1279, '::1', '', '2021-05-10 09:06:21', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/9bf0519e3e6d5b4ac94ab9329be4ecba.png</b></li></ul>', 'kholiq'),
(1280, '::1', '', '2021-05-10 09:07:30', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/6dd9b36a93f27e5fba3e39b386442092.png</b></li></ul>', 'kholiq'),
(1281, '::1', '', '2021-05-10 09:07:40', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1282, '::1', '', '2021-05-10 09:13:22', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/9be55549e0c311f69ff283113b1cbc6b.png</b></li></ul>', 'kholiq'),
(1283, '::1', '', '2021-05-10 09:13:27', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1284, '::1', '', '2021-05-10 09:13:35', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/32f5752b5721cd72aa3b6a5fbd3f81fb.png</b></li></ul>', 'kholiq'),
(1285, '::1', '', '2021-05-10 09:16:45', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/c2987af61696359c1f078a295cfb1178.png</b></li></ul>', 'kholiq'),
(1286, '::1', '', '2021-05-10 09:16:49', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1287, '::1', '', '2021-05-10 09:21:18', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/2461aaa216643c9ed8e478215523d0a4.png</b></li></ul>', 'kholiq'),
(1288, '::1', '', '2021-05-10 10:17:08', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1289, '::1', '', '2021-05-10 10:17:38', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/03ae0eea63b82a386e83300dbd0abb07.png</b></li></ul>', 'kholiq'),
(1290, '::1', '', '2021-05-10 10:17:44', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1291, '::1', '', '2021-05-10 10:18:50', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/aba52b132689ee68024b3033ecf27f50.png</b></li></ul>', 'kholiq'),
(1292, '::1', '', '2021-05-10 10:33:43', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1293, '::1', '', '2021-05-10 10:34:03', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/e5caa6b86e243dd26cb9a6bb18f2f05c.png</b></li></ul>', 'kholiq'),
(1294, '::1', '', '2021-05-10 10:34:09', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1295, '::1', '', '2021-05-10 10:35:38', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/a7c24da7ee5476678a5d9cf31a7cf8ed.png</b></li></ul>', 'kholiq'),
(1296, '::1', '', '2021-05-10 10:35:42', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1297, '::1', '', '2021-05-10 10:35:47', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1298, '::1', '', '2021-05-10 10:50:36', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1299, '::1', '', '2021-05-10 10:50:47', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/05/907debdd8c052e61e68d73862ac3d6fd.png</b></li></ul>', 'kholiq'),
(1300, '::1', '', '2021-05-10 10:50:50', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1301, '::1', '', '2021-05-10 10:50:57', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1302, '::1', '', '2021-05-10 10:55:14', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li><li><b>gambar</b> dengan value <b>files/2021/05/391f13b9a7de5f41f89b9a16be504585.png</b></li></ul>', 'kholiq'),
(1303, '::1', '', '2021-05-10 10:55:34', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1304, '::1', '', '2021-05-10 10:55:40', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1305, '::1', '', '2021-05-10 10:56:51', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1306, '::1', '', '2021-05-10 10:56:57', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1307, '::1', '', '2021-05-10 11:01:51', 'Menghapus laporan dengan id 2', 'kholiq'),
(1308, '::1', '', '2021-05-10 11:03:36', 'Menghapus laporan dengan id 17', 'kholiq'),
(1309, '::1', '', '2021-05-10 11:04:12', 'Logout SILABIO by Kholiq', 'kholiq'),
(1310, '::1', '', '2021-05-10 11:04:35', 'Login  by Kholiq', 'kholiq'),
(1311, '::1', '', '2021-05-10 11:04:51', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li><li><b>gambar</b> dengan value <b>files/2021/05/9f0062794582c2858cc61eb0c8216a7b.png</b></li></ul>', 'kholiq'),
(1312, '::1', '', '2021-05-10 11:04:55', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1313, '::1', '', '2021-05-10 11:05:03', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li><li><b>gambar</b> dengan value <b>files/2021/05/204e9feffdc0b92741a274c3d5efa70f.png</b></li></ul>', 'kholiq'),
(1314, '::1', '', '2021-05-10 11:05:07', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1315, '::1', '', '2021-05-10 11:05:13', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1316, '::1', '', '2021-05-10 11:05:17', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1317, '::1', '', '2021-05-10 11:05:31', 'Menambah Master item dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>qwe</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>fsf</b></li><li><b>tahun</b> dengan value <b>2021</b></li><li><b>gambar</b> dengan value <b>files/2021/05/4111e25229692c205fb9629e7e859686.png</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1318, '::1', '', '2021-05-10 11:05:39', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kode</b> dengan value <b>qwe</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>fsf</b></li><li><b>tahun</b> dengan value <b>2021</b></li></ul>', 'kholiq'),
(1319, '::1', '', '2021-05-10 11:05:45', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kode</b> dengan value <b>qwe</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>fsf</b></li><li><b>tahun</b> dengan value <b>202</b></li></ul>', 'kholiq'),
(1320, '::1', '', '2021-05-10 11:05:52', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kode</b> dengan value <b>qwe</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>fsf</b></li><li><b>tahun</b> dengan value <b>2021</b></li></ul>', 'kholiq'),
(1321, '::1', '', '2021-05-10 11:05:56', 'Menghapus laporan dengan id 5', 'kholiq'),
(1322, '::1', '', '2021-05-10 11:06:07', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1323, '::1', '', '2021-05-10 11:06:15', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bis</b></li></ul>', 'kholiq'),
(1324, '::1', '', '2021-05-10 11:06:23', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li><li><b>gambar</b> dengan value <b>files/2021/05/e68ca3ffa0d4233f260edb84c1749099.png</b></li></ul>', 'kholiq'),
(1325, '::1', '', '2021-05-10 11:06:27', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1326, '::1', '', '2021-05-10 11:11:16', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2021/05/92671fac65cfcdd5c3821f572797dcd9.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1327, '::1', '', '2021-05-10 11:11:22', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1328, '::1', '', '2021-05-10 11:11:37', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2021/05/e70f69dd4649381644475de41cebb0d7.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1329, '::1', '', '2021-05-10 11:11:47', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2021/05/c6ad606708a82a7172c5b7b3db02e1d8.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1330, '::1', '', '2021-05-10 11:12:27', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1331, '::1', '', '2021-05-10 11:12:40', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2021/05/f61dbfd1df91fbe06fa3ef9c008f0e6f.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1332, '::1', '', '2021-05-10 11:14:33', 'Menambah Master item dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>qwe</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>gambar</b> dengan value <b>files/2021/05/08fca4644996ec493c39a657f1e74898.png</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1333, '::1', '', '2021-05-10 11:14:39', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>13</b></li><li><b>kode</b> dengan value <b>qwe</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1334, '::1', '', '2021-05-10 11:14:42', 'Menghapus laporan dengan id 13', 'kholiq'),
(1335, '::1', '', '2021-05-10 20:37:32', 'Login  by Kholiq', 'kholiq'),
(1336, '::1', '', '2021-05-10 20:37:43', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1337, '::1', '', '2021-05-10 20:37:46', 'Logout SILABIO by Kholiq', 'kholiq'),
(1338, '::1', '', '2021-05-10 20:37:55', 'Login  by Kholiq', 'kholiq'),
(1339, '::1', '', '2021-05-10 21:07:39', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li><li><b>gambar</b> dengan value <b>files/2021/05/4e51efdbea880b5c6f62e19e7453480d.png</b></li></ul>', 'kholiq'),
(1340, '::1', '', '2021-05-10 21:07:55', 'Menambah Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>qwe</b></li><li><b>jenis_bahan</b> dengan value <b>fsf</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>tahun</b> dengan value <b>2021</b></li></ul>', 'kholiq'),
(1341, '::1', '', '2021-05-10 21:08:08', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>kode</b> dengan value <b>qwe</b></li><li><b>nama_bahan</b> dengan value <b>Air Raks</b></li><li><b>jenis_bahan</b> dengan value <b>fsf</b></li><li><b>tahun</b> dengan value <b>2021</b></li><li><b>gambar</b> dengan value <b>files/2021/05/6fd16c5e55488df3bd182f0c64eeab21.png</b></li></ul>', 'kholiq'),
(1342, '::1', '', '2021-05-10 21:24:04', 'Logout SILABIO by Kholiq', 'kholiq'),
(1343, '::1', '', '2021-05-10 21:24:45', 'Login  by Kholiq', 'kholiq'),
(1344, '::1', '', '2021-05-10 21:26:51', 'Logout SILABIO by Kholiq', 'kholiq'),
(1345, '::1', '', '2021-05-10 21:27:03', 'Login  by mahasiswa', 'mahasiswa'),
(1346, '::1', '', '2021-05-10 21:28:15', 'Logout SILABIO by mahasiswa', 'mahasiswa'),
(1347, '::1', '', '2021-05-10 21:28:29', 'Login  by Kholiq', 'kholiq'),
(1348, '::1', '', '2021-05-10 21:52:57', 'Menambah Master user dengan data sbb:<br />\n                    <ul><li><b>nama</b> dengan value <b>user</b></li><li><b>username</b> dengan value <b>user</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>user</b></li><li><b>password</b> dengan value <b>*D5D9F81F5542DE067FFF5FF7A4CA4BDD322C578F</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2021/05/36c0b6d8ba0f3ef39c0dcc393c4f0752.png</b></li><li><b>no_hp</b> dengan value <b>12354</b></li></ul>', 'kholiq'),
(1349, '::1', '', '2021-05-10 21:53:02', 'Menghapus laporan dengan id 31', 'kholiq'),
(1350, '::1', '', '2021-05-10 21:59:10', 'Menambah Master user dengan data sbb:<br />\n                    <ul><li><b>nama</b> dengan value <b>user</b></li><li><b>username</b> dengan value <b>user</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>user</b></li><li><b>password</b> dengan value <b>*D5D9F81F5542DE067FFF5FF7A4CA4BDD322C578F</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>12354</b></li></ul>', 'kholiq'),
(1351, '::1', '', '2021-05-10 21:59:26', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>32</b></li><li><b>nama</b> dengan value <b>user</b></li><li><b>username</b> dengan value <b>user</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>user</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2021/05/65d9d7a1dde4f93a095c7110ca292a97.png</b></li><li><b>no_hp</b> dengan value <b>12354</b></li></ul>', 'kholiq'),
(1352, '::1', '', '2021-05-10 21:59:30', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>32</b></li><li><b>nama</b> dengan value <b>user</b></li><li><b>username</b> dengan value <b>user</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>12354</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>user</b></li></ul>', 'kholiq'),
(1353, '::1', '', '2021-05-10 21:59:35', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>32</b></li><li><b>nama</b> dengan value <b>user</b></li><li><b>username</b> dengan value <b>user</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>12354</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>user</b></li></ul>', 'kholiq'),
(1354, '::1', '', '2021-05-10 21:59:47', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>32</b></li><li><b>nama</b> dengan value <b>user</b></li><li><b>username</b> dengan value <b>user</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>12354</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>user</b></li></ul>', 'kholiq'),
(1355, '::1', '', '2021-05-10 22:00:56', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>32</b></li><li><b>nama</b> dengan value <b>user</b></li><li><b>username</b> dengan value <b>user</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>12354</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>user</b></li></ul>', 'kholiq'),
(1356, '::1', '', '2021-05-10 22:01:06', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2021/05/76cf21f3719a0d5060e4e14e259a4841.png</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1357, '::1', '', '2021-05-10 22:01:11', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq'),
(1358, '::1', '', '2021-05-10 22:01:24', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>32</b></li><li><b>nama</b> dengan value <b>user</b></li><li><b>username</b> dengan value <b>user</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>12354</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>user</b></li></ul>', 'kholiq'),
(1359, '::1', '', '2021-05-10 22:03:21', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>32</b></li><li><b>nama</b> dengan value <b>user</b></li><li><b>username</b> dengan value <b>user</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>12354</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>user</b></li></ul>', 'kholiq'),
(1360, '::1', '', '2021-05-10 22:03:44', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>32</b></li><li><b>nama</b> dengan value <b>user</b></li><li><b>username</b> dengan value <b>user</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>12354</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>user</b></li></ul>', 'kholiq'),
(1361, '::1', '', '2021-05-10 22:04:44', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>32</b></li><li><b>nama</b> dengan value <b>user</b></li><li><b>username</b> dengan value <b>user</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>12354</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>user</b></li></ul>', 'kholiq'),
(1362, '::1', '', '2021-05-10 22:06:05', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>32</b></li><li><b>nama</b> dengan value <b>user</b></li><li><b>username</b> dengan value <b>user</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>12354</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>user</b></li></ul>', 'kholiq'),
(1363, '::1', '', '2021-05-10 22:07:15', 'Mengubah user dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>32</b></li><li><b>nama</b> dengan value <b>user</b></li><li><b>username</b> dengan value <b>user</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>12354</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>user</b></li></ul>', 'kholiq'),
(1364, '::1', '', '2021-05-18 06:29:37', 'Login  by Kholiq', 'kholiq'),
(1365, '::1', '', '2021-05-18 11:19:42', 'Login  by Kholiq', 'kholiq'),
(1366, '::1', '', '2021-05-18 16:41:44', 'Login  by Kholiq', 'kholiq'),
(1367, '::1', '', '2021-05-18 19:45:24', 'Login  by Kholiq', 'kholiq'),
(1368, '::1', '', '2021-05-18 19:48:53', 'Menghapus laporan dengan id 6', 'kholiq'),
(1369, '::1', '', '2021-05-18 21:07:12', 'Menghapus laporan dengan id 11', 'kholiq'),
(1370, '::1', '', '2021-05-18 21:07:15', 'Menghapus laporan dengan id 12', 'kholiq'),
(1371, '::1', '', '2021-05-18 21:07:16', 'Menghapus laporan dengan id 13', 'kholiq'),
(1372, '::1', '', '2021-05-18 21:07:18', 'Menghapus laporan dengan id 14', 'kholiq'),
(1373, '::1', '', '2021-05-18 21:07:19', 'Menghapus laporan dengan id 15', 'kholiq'),
(1374, '::1', '', '2021-05-18 21:07:20', 'Menghapus laporan dengan id 16', 'kholiq'),
(1375, '::1', '', '2021-05-18 21:07:22', 'Menghapus laporan dengan id 17', 'kholiq'),
(1376, '::1', '', '2021-05-18 21:07:23', 'Menghapus laporan dengan id 18', 'kholiq'),
(1377, '::1', '', '2021-05-18 21:07:24', 'Menghapus laporan dengan id 19', 'kholiq'),
(1378, '::1', '', '2021-05-18 21:07:26', 'Menghapus laporan dengan id 20', 'kholiq'),
(1379, '::1', '', '2021-05-19 08:34:19', 'Login  by Kholiq', 'kholiq'),
(1380, '::1', '', '2021-05-19 21:09:38', 'Menghapus laporan dengan id 2', 'kholiq'),
(1381, '::1', '', '2021-05-19 21:11:00', 'Menghapus laporan dengan id 4', 'kholiq'),
(1382, '::1', '', '2021-05-19 21:11:44', 'Menghapus laporan dengan id ', 'kholiq'),
(1383, '::1', '', '2021-05-19 21:11:51', 'Menghapus laporan dengan id 5', 'kholiq'),
(1384, '::1', '', '2021-05-20 14:39:43', 'Login  by Kholiq', 'kholiq'),
(1385, '::1', '', '2021-05-20 14:40:08', 'Menghapus laporan dengan id 3', 'kholiq'),
(1386, '::1', '', '2021-05-20 14:40:10', 'Menghapus laporan dengan id 1', 'kholiq'),
(1387, '::1', '', '2021-05-20 14:40:24', 'Menghapus laporan dengan id ', 'kholiq'),
(1388, '::1', '', '2021-05-20 15:13:37', 'Menghapus laporan dengan id ', 'kholiq'),
(1389, '::1', '', '2021-05-20 15:15:03', 'Menghapus laporan dengan id 6', 'kholiq'),
(1390, '::1', '', '2021-05-20 15:15:05', 'Menghapus laporan dengan id 7', 'kholiq'),
(1391, '::1', '', '2021-05-20 16:36:36', 'Menghapus laporan dengan id ', 'kholiq'),
(1392, '::1', '', '2021-05-20 16:51:55', 'Menghapus laporan dengan id 8', 'kholiq'),
(1393, '::1', '', '2021-05-20 17:01:06', 'Menghapus laporan dengan id ', 'kholiq'),
(1394, '::1', '', '2021-05-21 19:25:35', 'Login  by Kholiq', 'kholiq'),
(1395, '::1', '', '2021-05-21 19:26:04', 'Menghapus laporan dengan id 9', 'kholiq'),
(1396, '::1', '', '2021-05-21 19:26:20', 'Menghapus laporan dengan id ', 'kholiq'),
(1397, '::1', '', '2021-05-21 19:58:03', 'Menghapus laporan dengan id ', 'kholiq'),
(1398, '::1', '', '2021-05-21 20:13:07', 'Menghapus laporan dengan id ', 'kholiq'),
(1399, '::1', '', '2021-05-21 20:13:22', 'Menghapus laporan dengan id 12', 'kholiq'),
(1400, '::1', '', '2021-05-21 20:13:25', 'Menghapus laporan dengan id 11', 'kholiq'),
(1401, '::1', '', '2021-05-21 20:28:03', 'Menghapus laporan dengan id ', 'kholiq'),
(1402, '::1', '', '2021-05-21 20:28:21', 'Menghapus laporan dengan id 13', 'kholiq'),
(1403, '::1', '', '2021-05-23 09:40:03', 'Login  by Kholiq', 'kholiq'),
(1404, '::1', '', '2021-06-01 19:59:17', 'Login  by Kholiq', 'kholiq'),
(1405, '::1', '', '2021-06-01 20:17:37', 'Menghapus laporan dengan id ', 'kholiq');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(1406, '::1', '', '2021-06-01 20:28:16', 'Menghapus laporan dengan id 14', 'kholiq'),
(1407, '::1', '', '2021-06-01 20:37:45', 'Menghapus laporan dengan id ', 'kholiq'),
(1408, '::1', '', '2021-06-01 20:42:20', 'Menghapus laporan dengan id 15', 'kholiq'),
(1409, '::1', '', '2021-06-01 20:42:30', 'Menghapus laporan dengan id ', 'kholiq'),
(1410, '::1', '', '2021-06-01 21:17:04', 'Menghapus laporan dengan id ', 'kholiq'),
(1411, '::1', '', '2021-06-02 11:17:16', 'Login  by Kholiq', 'kholiq'),
(1412, '::1', '', '2021-06-02 11:24:56', 'Menghapus laporan dengan id ', 'kholiq'),
(1413, '::1', '', '2021-06-02 13:38:50', 'Menghapus laporan dengan id ', 'kholiq'),
(1414, '::1', '', '2021-06-02 13:39:03', 'Menghapus laporan dengan id 18', 'kholiq'),
(1415, '::1', '', '2021-06-02 13:46:08', 'Menghapus laporan dengan id ', 'kholiq'),
(1416, '::1', '', '2021-06-02 13:47:02', 'Menghapus laporan dengan id 20', 'kholiq'),
(1417, '::1', '', '2021-06-02 13:47:04', 'Menghapus laporan dengan id 19', 'kholiq'),
(1418, '::1', '', '2021-06-02 13:47:25', 'Menghapus laporan dengan id ', 'kholiq'),
(1419, '::1', '', '2021-06-02 15:48:52', 'Menghapus laporan dengan id 21', 'kholiq'),
(1420, '::1', '', '2021-06-02 15:49:11', 'Menghapus laporan dengan id ', 'kholiq'),
(1421, '::1', '', '2021-06-02 17:02:45', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>7</b></li><li><b>stok</b> dengan value <b>100</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>30000</b></li><li><b>kondisi</b> dengan value <b>5</b></li><li><b>tahun</b> dengan value <b>2017</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1422, '::1', '', '2021-06-02 17:02:54', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>7</b></li><li><b>stok</b> dengan value <b>10</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>30000</b></li><li><b>kondisi</b> dengan value <b>5</b></li><li><b>tahun</b> dengan value <b>2017</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1423, '::1', '', '2021-06-02 17:30:34', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1424, '::1', '', '2021-06-02 17:30:42', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>195</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1425, '::1', '', '2021-06-02 18:12:08', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1426, '::1', '', '2021-06-02 18:12:14', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>195</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1427, '::1', '', '2021-06-02 18:17:45', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1428, '::1', '', '2021-06-02 18:17:55', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>195</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1429, '::1', '', '2021-06-02 18:18:15', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1430, '::1', '', '2021-06-02 18:19:11', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>197</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1431, '::1', '', '2021-06-02 18:28:35', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1432, '::1', '', '2021-06-02 18:29:31', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>199</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1433, '::1', '', '2021-06-02 18:34:12', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>195</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1434, '::1', '', '2021-06-02 18:34:29', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>199</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1435, '::1', '', '2021-06-02 18:34:38', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>195</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1436, '::1', '', '2021-06-02 18:35:07', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1437, '::1', '', '2021-06-02 18:35:17', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1438, '::1', '', '2021-06-02 18:35:29', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejan</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1439, '::1', '', '2021-06-02 18:35:38', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Beja</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1440, '::1', '', '2021-06-02 18:35:45', 'Menghapus laporan dengan id 10', 'kholiq'),
(1441, '::1', '', '2021-06-02 18:35:50', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Beja</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1442, '::1', '', '2021-06-02 18:36:29', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1443, '::1', '', '2021-06-02 18:36:41', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>195</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1444, '::1', '', '2021-06-02 18:37:07', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1445, '::1', '', '2021-06-02 18:46:32', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>195</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1446, '::1', '', '2021-06-02 18:46:51', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1447, '::1', '', '2021-06-02 20:24:22', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>195</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1448, '::1', '', '2021-06-02 20:31:53', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>195</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/06/e03a446d3e07061ca120836a6e77cb6d.png</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1449, '::1', '', '2021-06-02 20:32:02', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>195</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1450, '::1', '', '2021-06-02 20:34:23', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>195</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1451, '::1', '', '2021-06-02 20:34:35', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1452, '::1', '', '2021-06-02 20:38:01', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>190</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1453, '::1', '', '2021-06-02 20:40:06', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1454, '::1', '', '2021-06-02 20:40:53', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>1</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1455, '::1', '', '2021-06-02 20:43:20', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>10</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1456, '::1', '', '2021-06-02 20:44:50', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>100</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1457, '::1', '', '2021-06-02 20:46:02', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>10</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1458, '::1', '', '2021-06-02 21:01:12', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>100</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1459, '::1', '', '2021-06-02 21:01:56', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>10</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1460, '::1', '', '2021-06-02 21:02:41', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>100</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1461, '::1', '', '2021-06-02 21:08:12', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1462, '::1', '', '2021-06-02 21:10:51', 'Menghapus laporan dengan id 17', 'kholiq'),
(1463, '::1', '', '2021-06-02 21:12:30', 'Mengupload laporan dengan id ', 'kholiq'),
(1464, '::1', '', '2021-06-02 21:14:09', 'Mengupload laporan dengan id ', 'kholiq'),
(1465, '::1', '', '2021-06-02 21:15:03', 'Mengupload laporan dengan id ', 'kholiq'),
(1466, '::1', '', '2021-06-02 21:15:24', 'Mengupload laporan dengan id ', 'kholiq'),
(1467, '::1', '', '2021-06-02 21:19:02', 'Mengupload laporan dengan id ', 'kholiq'),
(1468, '::1', '', '2021-06-02 22:10:40', 'Login  by Kholiq', 'kholiq'),
(1469, '::1', '', '2021-06-02 22:11:07', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>100</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/06/f52a54b93a23b3916f1646aa26bd3d31.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1470, '::1', '', '2021-06-02 22:11:15', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>100</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1471, '::1', '', '2021-06-02 22:12:56', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>100</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/06/cf544cf8494c281d6ae8879b95f3aaea.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1472, '::1', '', '2021-06-02 22:15:02', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>100</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1473, '::1', '', '2021-06-02 22:15:12', 'Menghapus laporan dengan id 10', 'kholiq'),
(1474, '::1', '', '2021-06-02 22:16:16', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>100</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1475, '::1', '', '2021-06-02 22:16:27', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>100</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/06/980f979b29a8133d1c365ddbb6055b50.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1476, '::1', '', '2021-06-02 22:19:38', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>13</b></li><li><b>stok</b> dengan value <b>11</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>131231</b></li><li><b>kondisi</b> dengan value <b>2</b></li><li><b>tahun</b> dengan value <b>2017</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1477, '::1', '', '2021-06-02 22:19:46', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>100</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1478, '::1', '', '2021-06-02 22:20:04', 'Menghapus laporan dengan id 20', 'kholiq'),
(1479, '::1', '', '2021-06-02 22:22:35', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>13</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>131231</b></li><li><b>kondisi</b> dengan value <b>2</b></li><li><b>tahun</b> dengan value <b>2018</b></li><li><b>gambar</b> dengan value <b>files/2021/06/ca06a40eb5efa2c79b0b78d4ba5a1309.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1480, '::1', '', '2021-06-02 22:23:35', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>13</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>131231</b></li><li><b>kondisi</b> dengan value <b>2</b></li><li><b>tahun</b> dengan value <b>2021</b></li><li><b>gambar</b> dengan value <b>files/2021/06/9b93516373a303528aa7c94b155eccd2.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1481, '::1', '', '2021-06-02 22:24:56', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>13</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>131231</b></li><li><b>kondisi</b> dengan value <b>2</b></li><li><b>tahun</b> dengan value <b>2021</b></li><li><b>gambar</b> dengan value <b>files/2021/06/2824a35fbafe8f7756ae1cface40a1bd.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1482, '::1', '', '2021-06-02 22:28:08', 'Menambah Master item dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>qwe</b></li><li><b>nama_alat</b> dengan value <b>Beja</b></li><li><b>gambar</b> dengan value <b>files/2021/06/32f546da424b74f6ede10e9e4a5f6bb8.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1483, '::1', '', '2021-06-02 22:28:15', 'Menghapus laporan dengan id 14', 'kholiq'),
(1484, '::1', '', '2021-06-03 08:29:18', 'Login  by Kholiq', 'kholiq'),
(1485, '::1', '', '2021-06-03 08:29:54', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>13</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>131231</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2018</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1486, '::1', '', '2021-06-03 08:30:03', 'Menghapus laporan dengan id 21', 'kholiq'),
(1487, '::1', '', '2021-06-03 08:30:19', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>13</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>131231</b></li><li><b>kondisi</b> dengan value <b>2</b></li><li><b>tahun</b> dengan value <b>2019</b></li><li><b>gambar</b> dengan value <b>files/2021/06/9eb15d7c6c1d694d2049052d914225d8.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1488, '::1', '', '2021-06-03 09:34:17', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>13</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>131231</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2017</b></li><li><b>gambar</b> dengan value <b>files/2021/06/79c00ee3658019b891d9fcb7fa5a8b9d.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1489, '::1', '', '2021-06-03 10:51:54', 'Menambah Master item dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>qwe</b></li><li><b>nama_bahan</b> dengan value <b>fdsfsd</b></li><li><b>jenis_bahan</b> dengan value <b>fsf</b></li><li><b>tahun</b> dengan value <b>2021</b></li><li><b>gambar</b> dengan value <b>files/2021/06/a5af4d186c24c62c163444fa7bb6bcb7.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1490, '::1', '', '2021-06-03 10:51:58', 'Menghapus laporan dengan id 7', 'kholiq'),
(1491, '::1', '', '2021-06-03 10:52:13', 'Menambah Master item dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>qwe</b></li><li><b>nama_alat</b> dengan value <b>Mikrosko</b></li><li><b>gambar</b> dengan value <b>files/2021/06/800b1c478f5470668b6a1d04aefd6594.jpg</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1492, '::1', '', '2021-06-03 10:52:22', 'Menghapus laporan dengan id 15', 'kholiq'),
(1493, '::1', '', '2021-06-03 10:54:56', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>13</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>131231</b></li><li><b>kondisi</b> dengan value <b>2</b></li><li><b>tahun</b> dengan value <b>2016</b></li><li><b>gambar</b> dengan value <b>files/2021/06/110845c389ae0050cb679f842a84fa0d.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1494, '::1', '', '2021-06-03 10:55:25', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>13</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>131231</b></li><li><b>kondisi</b> dengan value <b>2</b></li><li><b>tahun</b> dengan value <b>2017</b></li><li><b>gambar</b> dengan value <b>files/2021/06/58911d40c1750abe34386b2361e14e28.jpg</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1495, '::1', '', '2021-06-03 10:56:10', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>13</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>131231</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2017</b></li><li><b>gambar</b> dengan value <b>files/2021/06/17994d19df8725dc2fbfb11821bc361f.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1496, '::1', '', '2021-06-03 10:56:58', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>13</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>131231</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2017</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1497, '::1', '', '2021-06-03 10:57:20', 'Menghapus laporan dengan id 23', 'kholiq'),
(1498, '::1', '', '2021-06-03 11:02:11', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>100</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/06/490ef4360081196a28d282c1fe38be69.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1499, '::1', '', '2021-06-03 11:02:23', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>100</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1500, '::1', '', '2021-06-03 11:03:34', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>100</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/06/a450a8859334b9bf26bae3449895f531.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1501, '::1', '', '2021-06-03 11:07:21', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/06/95b20ffeb1840dd73f666f0e318c7787.jpg</b></li></ul>', 'kholiq'),
(1502, '::1', '', '2021-06-03 11:07:36', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2021/06/0877cce5870f97f21b4726b006a33da1.jpg</b></li></ul>', 'kholiq'),
(1503, '::1', '', '2021-06-03 11:08:05', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>100</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1504, '::1', '', '2021-06-03 11:09:29', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1505, '::1', '', '2021-06-03 11:17:18', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>id_nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>12</b></li><li><b>stock</b> dengan value <b>30</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>1000000</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1506, '::1', '', '2021-06-03 11:17:27', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>id_nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>12</b></li><li><b>stock</b> dengan value <b>3</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>1000000</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1507, '::1', '', '2021-06-03 11:18:02', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>id_nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>12</b></li><li><b>stock</b> dengan value <b>30</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>1000000</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1508, '::1', '', '2021-06-03 11:18:10', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>id_nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>12</b></li><li><b>stock</b> dengan value <b>3</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>1000000</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(1509, '::1', '', '2021-06-03 11:21:01', 'Mengedit Kelola kelola_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>id_nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>12</b></li><li><b>stock</b> dengan value <b>3</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>1000000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2021/06/38a8149f23689183ffe9eefb11f6574e.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1510, '::1', '', '2021-06-03 11:21:49', 'Mengedit Kelola kelola_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>id_nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>12</b></li><li><b>stock</b> dengan value <b>3</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>1000000</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1511, '::1', '', '2021-06-03 13:55:07', 'Login  by Kholiq', 'kholiq'),
(1512, '::1', '', '2021-06-03 16:25:12', 'Login  by Kholiq', 'kholiq'),
(1513, '::1', '', '2021-06-03 16:25:56', 'Menambah Master item dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>qwe</b></li><li><b>nama_bahan</b> dengan value <b>fdsfsd</b></li><li><b>jenis_bahan</b> dengan value <b>fsf</b></li><li><b>tahun</b> dengan value <b>202</b></li><li><b>gambar</b> dengan value <b>files/2021/06/8fbbd8bd4bcc6f8c04b31359e299fe08.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1514, '::1', '', '2021-06-03 16:25:59', 'Menghapus laporan dengan id 8', 'kholiq'),
(1515, '::1', '', '2021-06-03 16:26:12', 'Menambah Master item dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>qwe</b></li><li><b>nama_alat</b> dengan value <b>Beja</b></li><li><b>gambar</b> dengan value <b>files/2021/06/d1c5828a3b1d8f952d62b155999647a9.jpg</b></li><li><b>keterangan</b> dengan value <b>Bejana serba</b></li></ul>', 'kholiq'),
(1516, '::1', '', '2021-06-03 16:26:15', 'Menghapus laporan dengan id 16', 'kholiq'),
(1517, '::1', '', '2021-06-03 16:30:58', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>13</b></li><li><b>stok</b> dengan value <b>19</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>131231</b></li><li><b>kondisi</b> dengan value <b>2</b></li><li><b>tahun</b> dengan value <b>2022</b></li><li><b>gambar</b> dengan value <b>files/2021/06/0b6ed42b757ee40c293bd387442379b4.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1518, '::1', '', '2021-06-03 16:31:04', 'Menghapus laporan dengan id 24', 'kholiq'),
(1519, '::1', '', '2021-06-03 16:38:27', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\n                    <ul><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>13</b></li><li><b>stock</b> dengan value <b>30</b></li><li><b>stock_minimal</b> dengan value <b>12</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>131231</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>kondisi</b> dengan value <b>2</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1520, '::1', '', '2021-06-03 16:39:18', 'Menghapus laporan dengan id 9', 'kholiq'),
(1521, '::1', '', '2021-06-03 16:39:28', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\n                    <ul><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>13</b></li><li><b>stock</b> dengan value <b>30</b></li><li><b>stock_minimal</b> dengan value <b>12</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>131231</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>kondisi</b> dengan value <b>4</b></li><li><b>tahun</b> dengan value <b>2021</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1522, '::1', '', '2021-06-03 16:39:59', 'Menghapus laporan dengan id 10', 'kholiq'),
(1523, '::1', '', '2021-06-03 16:40:11', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\n                    <ul><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>13</b></li><li><b>stock</b> dengan value <b>30</b></li><li><b>stock_minimal</b> dengan value <b>12</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>131231</b></li><li><b>kondisi</b> dengan value <b>5</b></li><li><b>tahun</b> dengan value <b>2017</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2021/06/4059e5c228c9ca40dce792169bf93f94.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1524, '::1', '', '2021-06-03 16:40:16', 'Menghapus laporan dengan id 11', 'kholiq'),
(1525, '::1', '', '2021-06-04 16:25:55', 'Login  by Kholiq', 'kholiq'),
(1526, '::1', '', '2021-06-05 13:11:08', 'Login  by Kholiq', 'kholiq'),
(1527, '::1', '', '2021-06-05 13:31:15', 'Mengupload laporan dengan id ', 'kholiq'),
(1528, '::1', '', '2021-06-05 13:39:26', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>qwe</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1529, '::1', '', '2021-06-05 13:40:43', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1530, '::1', '', '2021-06-05 13:40:45', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1531, '::1', '', '2021-06-05 13:42:47', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1532, '::1', '', '2021-06-05 13:43:56', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1533, '::1', '', '2021-06-05 13:44:01', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1534, '::1', '', '2021-06-05 13:44:07', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1535, '::1', '', '2021-06-05 13:44:32', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_bahan</b> dengan value <b>Galon Air</b></li><li><b>jenis_bahan</b> dengan value <b>Galon</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1536, '::1', '', '2021-06-05 13:45:25', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1537, '::1', '', '2021-06-05 13:45:52', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1538, '::1', '', '2021-06-05 13:46:19', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2021</b></li></ul>', 'kholiq'),
(1539, '::1', '', '2021-06-05 13:49:00', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1540, '::1', '', '2021-06-05 13:49:51', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1541, '::1', '', '2021-06-05 13:49:59', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_bahan</b> dengan value <b>Galon Air</b></li><li><b>jenis_bahan</b> dengan value <b>Galon</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1542, '::1', '', '2021-06-05 13:51:15', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1543, '::1', '', '2021-06-05 13:51:37', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1544, '::1', '', '2021-06-05 13:52:28', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1545, '::1', '', '2021-06-05 13:53:29', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1546, '::1', '', '2021-06-05 13:56:49', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1547, '::1', '', '2021-06-05 13:57:30', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1548, '::1', '', '2021-06-05 13:58:31', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1549, '::1', '', '2021-06-05 13:59:31', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1550, '::1', '', '2021-06-05 14:00:00', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1551, '::1', '', '2021-06-05 14:00:09', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1552, '::1', '', '2021-06-05 14:00:34', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1553, '::1', '', '2021-06-05 14:01:07', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_bahan</b> dengan value <b>Galon Air</b></li><li><b>jenis_bahan</b> dengan value <b>Galon</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1554, '::1', '', '2021-06-05 14:01:16', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUa</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1555, '::1', '', '2021-06-05 14:01:20', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1556, '::1', '', '2021-06-05 14:01:35', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUa</b></li><li><b>nama_bahan</b> dengan value <b>huisaa</b></li><li><b>jenis_bahan</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1557, '::1', '', '2021-06-05 14:01:49', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1558, '::1', '', '2021-06-05 14:02:52', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1559, '::1', '', '2021-06-05 14:04:25', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1560, '::1', '', '2021-06-05 14:04:46', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1561, '::1', '', '2021-06-05 14:05:17', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1562, '::1', '', '2021-06-05 14:05:41', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1563, '::1', '', '2021-06-05 14:06:12', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2021</b></li></ul>', 'kholiq'),
(1564, '::1', '', '2021-06-05 14:06:27', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1565, '::1', '', '2021-06-05 14:06:45', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li><li><b>gambar</b> dengan value <b>files/2021/06/c394ce00f003ac5d780188efbd339f56.jpg</b></li></ul>', 'kholiq'),
(1566, '::1', '', '2021-06-05 14:06:50', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq'),
(1567, '::1', '', '2021-06-05 14:07:13', 'Mengedit Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li><li><b>gambar</b> dengan value <b>files/2021/06/a4379b8ffb251c3a689d283c041a0a05.png</b></li></ul>', 'kholiq'),
(1568, '::1', '', '2021-06-05 14:07:26', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/06/6f554a0b67e4c227fdc0d70809ef0a79.png</b></li></ul>', 'kholiq'),
(1569, '::1', '', '2021-06-05 14:07:32', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq'),
(1570, '::1', '', '2021-06-05 14:07:38', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>KUas</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>0</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>gambar</b> dengan value <b>files/2021/06/60ddb45f54ef67554c9b963a5ec8c86a.png</b></li></ul>', 'kholiq'),
(1571, '::1', '', '2021-06-06 20:42:20', 'Login  by Kholiq', 'kholiq'),
(1572, '::1', '', '2021-06-07 15:21:00', 'Login  by Kholiq', 'kholiq'),
(1573, '::1', '', '2021-06-07 16:30:09', 'Mengupload laporan dengan id ', 'kholiq'),
(1574, '::1', '', '2021-06-07 16:30:20', 'Mengupload laporan dengan id ', 'kholiq'),
(1575, '::1', '', '2021-06-07 16:30:51', 'Mengupload laporan dengan id ', 'kholiq'),
(1576, '::1', '', '2021-06-07 16:31:07', 'Mengupload laporan dengan id ', 'kholiq'),
(1577, '::1', '', '2021-06-07 16:31:54', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>7</b></li><li><b>stok</b> dengan value <b>10</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>30000</b></li><li><b>kondisi</b> dengan value <b>5</b></li><li><b>tahun</b> dengan value <b>2017</b></li><li><b>gambar</b> dengan value <b>files/2021/06/448f4f70272a73201a43401361b79041.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(1578, '::1', '', '2021-06-07 16:32:14', 'Mengedit Kelola kelola_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stock</b> dengan value <b>10</b></li><li><b>stock_minimal</b> dengan value <b>4</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2018</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2021/06/adef6f99382683cd412f5305f5c9f4e3.jpg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq');

-- --------------------------------------------------------

--
-- Table structure for table `cms_lupa`
--

CREATE TABLE `cms_lupa` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `cms_menu`
--

CREATE TABLE `cms_menu` (
  `id` int(11) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `allowed_level` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `aktif` int(1) NOT NULL DEFAULT 1,
  `urutan` int(11) NOT NULL,
  `grup` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_menu`
--

INSERT INTO `cms_menu` (`id`, `alias`, `nama`, `deskripsi`, `allowed_level`, `url`, `aktif`, `urutan`, `grup`) VALUES
(3, 'menu', 'Menu', 'Untuk memanajemen menu administrasi (back-end)', '+1+', 'cms/manage/menu', 1, 7, 1),
(89, 'reset_pass', 'Reset Password User', 'Reset Password User', '+1+8+7+', 'apl/reset', 1, 1, 3),
(35, 'semua', 'semua', 'untuk login semua', '+1+2+3+4+5+6+7+8+', 'cms/login/admin_page', 1, 1, 3),
(88, 'crud_user', 'Tambah,edit,delete user', 'tambah_edit_delete', '+1+2+3+4+5+6+7+8+', 'apl/crud', 1, 1, 3),
(102, 'log', 'Log System', 'Log System', '+1+', 'cms/catatan/catat', 1, 2, 1),
(136, 'satuan', 'Satuan', '-', '+1+2+4+', 'master/satuan', 1, 5, 4),
(104, 'status_pak', 'Home', 'Status Pengajuan PAK', '+1+2+3+4+5+6+7+8+', 'pak/dashboard/status_pak', 1, 1, 101),
(135, 'nama_bahan', 'Nama Bahan', '-', '+1+2+4+', 'master/master_bahan', 1, 4, 4),
(134, 'nama_alat', 'Nama Alat', '-', '+1+2+4+', 'master/nama_alat', 1, 3, 4),
(131, 'kategori_alat_bahan', 'Kategori Alat Bahan', '-', '+1+2+4+', 'master/kategori_alat_bahan', 1, 2, 4),
(128, 'instansi', 'Instansi', '-', '+1+2+', 'master/instansi', 1, 1, 4),
(137, 'pengajuan_alat', 'Pengajuan Alat', '-', '+1+3+4+5+7+2+', 'pengajuan/pengajuan_alat', 1, 1, 6),
(138, 'kelola_alat', 'Kelola Alat', '-', '+1+4+2+3+', 'kelola/kelola_alat', 1, 1, 5),
(139, 'periode_pengajuan', 'Periode Pengajuan', '-', '+1+3+2+', 'pengajuan/periode_pengajuan', 1, 2, 6),
(140, 'sumber_pendanaan', 'Sumber Pendanaan', '-', '+1+3+', 'master/sumber_pendanaan', 1, 6, 4),
(141, 'kelola_bahan', 'Kelola Bahan', '-', '+1+4+2+3+', 'kelola/kelola_bahan', 1, 2, 5),
(142, 'kelola_penyimpanan', 'Kelola Penyimpanan', '-', '+1+4+2+3+', 'kelola/kelola_penyimpanan', 1, 3, 5),
(143, 'pengajuan_bahan', 'Pengajuan Bahan ', '-', '+1+3+4+5+7+2+', 'pengajuan/pengajuan_bahan', 1, 3, 6),
(144, 'buat_peminjaman', 'Buat Peminjaman', '-', '+4+5+6+8+7+2+', 'peminjaman/buat_peminjaman', 1, 1, 7),
(145, 'cek_status_peminjaman', 'Cek Status Peminjaman', '-', '+5+6+7+8+2+', 'peminjaman/cek_status_peminjaman', 1, 2, 7),
(146, 'kelola_peminjaman', 'Kelola Peminjaman', '-', '+1+4+6+2+3+', 'peminjaman/peminjaman/kelola', 1, 4, 7),
(147, 'kelola_jatuh_tempo', 'Kelola Jatuh Tempo', '-', '+1+4+6+2+', 'peminjaman/peminjaman/kelola_jatuh_tempo', 1, 5, 5),
(148, 'kelola_penggantian', 'Kelola Penggantian', '-', '+1+4+6+2+', 'peminjaman/peminjaman/kelola_penggantian', 1, 6, 5),
(149, 'kelola_user', 'Kelola User', '-', '+1+2+', 'kelola/kelola_user', 1, 7, 5),
(150, 'peminjaman', 'Peminjaman', '-', '+1+4+5+6+2+8+7+', 'peminjaman/peminjaman', 1, 1, 7),
(151, 'kelola_peminjaman', 'Kelola Peminjaman', '-', '+1+4+6+2+', 'peminjaman/peminjaman/kelola_peminjaman', 1, 6, 5),
(152, 'praktikum', 'Praktikum', '', '+1+2+8+', 'peminjaman/peminjaman/praktikum', 1, 2, 7),
(153, 'data_peminjaman', 'Data Peminjaman', '', '+1+2+4+', 'peminjaman/peminjaman/data_peminjaman', 1, 5, 7),
(154, 'upload_dokumen', 'Upload Foto', '', '+1+2+4+', 'master/upload_foto', 1, 7, 4),
(155, 'upload_dokumen', 'Upload Dokumen', '', '+1+2+4+', 'other/upload_dokumen', 1, 1, 2),
(156, 'sop', 'SOP', '', '+1+2+3+4+5+6++7+8+', 'other/sop', 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menu_grup`
--

CREATE TABLE `cms_menu_grup` (
  `id_grup_menu` int(11) NOT NULL,
  `nama_grup` varchar(255) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_menu_grup`
--

INSERT INTO `cms_menu_grup` (`id_grup_menu`, `nama_grup`, `icon`) VALUES
(3, 'Hidden Menu', NULL),
(1, 'Manajemen', 'fa fa-fw fa-book'),
(4, 'Master', 'fa fa-fw fa-archive'),
(101, 'Dashboard', 'fa fa-dashboard'),
(5, 'Kelola', 'fa fa-fw fa-tasks'),
(6, 'Pengajuan', 'fa fa-fw fa-envelope'),
(7, 'Peminjaman', 'fa fa-fw fa-exchange'),
(2, 'Lainnya', 'fa fa-fw fa-gear');

-- --------------------------------------------------------

--
-- Table structure for table `cms_online`
--

CREATE TABLE `cms_online` (
  `user_id` int(5) NOT NULL,
  `last_activity` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_online`
--

INSERT INTO `cms_online` (`user_id`, `last_activity`) VALUES
(2, ''),
(3, '');

-- --------------------------------------------------------

--
-- Table structure for table `cms_user`
--

CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `bagian` tinyint(1) DEFAULT 1,
  `no_hp` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `ktp` varchar(30) DEFAULT NULL,
  `instansi` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cms_user`
--

INSERT INTO `cms_user` (`id`, `nama`, `jenis_kelamin`, `gambar`, `email`, `username`, `status`, `alamat`, `password`, `level`, `bagian`, `no_hp`, `last_login`, `ktp`, `instansi`) VALUES
(1, 'Kholiq', '1', NULL, 'kholiq', 'kholiq', 'mhs', '0', '*F1378C253EEBE31F135CC41EF4A98D077EB98F5D', 1, 1, '10', '2021-06-07 15:21:00', '3315132', 'indonesia'),
(17, 'admin', '1', 'files/2020/06/e71f42a5047c20fef37a39a3b54f25e4.jpg', 'admin', 'admin', NULL, NULL, '*6D45FD76D5E9C6A404E39C25106A7F032659ACB8', 2, 1, '88888888888', '2020-06-29 00:05:09', NULL, NULL),
(18, 'kepala_lab', '1', 'files/2020/06/39ca34393219a932cd256cc8cb96e6e8.jpg', 'kepala_lab', 'kepala_lab', NULL, NULL, '*9575C0046B29C853A98731B0053B780947E0524B', 3, 1, '9', '2020-06-29 00:04:25', NULL, NULL),
(19, 'laboran', '1', 'files/2020/05/21c379d76f68969567b1b2e5c40e48f3.jpg', 'laboran', 'laboran', NULL, NULL, '*5F9D604D1358B35776BD7ECEFE96829E6F3A2F3B', 4, 1, '9', '2020-06-29 00:14:16', NULL, NULL),
(21, 'asisten', '2', 'files/2020/05/ea2fbde56d3e1f0a302267e4d4f7b04f.jpg', 'asisten', 'asisten', NULL, NULL, '*34D4F44511DF537724AECB9C20245800A653C680', 6, 1, '9', '2020-06-29 00:20:28', NULL, NULL),
(23, 'mahasiswa', '2', 'files/2020/05/3448f7f0daa177766c9142c47441a803.jpg', 'mahasiswa', 'mahasiswa', NULL, NULL, '*58B1E0151C7DBF4DF0D59581B6C5C4E031D9F62A', 8, 1, '9', '2021-05-10 21:27:03', NULL, NULL),
(30, 'dosen', '1', 'files/2020/06/106292ac4c5fa37adf7eb3cc11880936.jpg', 'dosen', 'dosen', NULL, NULL, '*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710', 7, 1, '9', '2020-06-29 00:11:27', NULL, NULL),
(32, 'user', '1', 'files/2021/05/65d9d7a1dde4f93a095c7110ca292a97.png', 'user', 'user', NULL, NULL, '*D5D9F81F5542DE067FFF5FF7A4CA4BDD322C578F', 8, 1, '12354', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_peminjaman`
--

CREATE TABLE `data_peminjaman` (
  `id` int(11) NOT NULL,
  `jenis_pinjaman` int(20) DEFAULT 1 COMMENT '1=default,2=praktikum',
  `no_peminjaman` varchar(255) DEFAULT NULL,
  `peminjam` varchar(255) DEFAULT NULL COMMENT 'if 2=dosen_pengampu',
  `status_peminjam` varchar(10) DEFAULT NULL,
  `user_peminjam` int(30) DEFAULT NULL COMMENT 'jika user peminjam >0 berarti ada peminjaman dr luar',
  `jen_id` varchar(3) DEFAULT NULL,
  `id_peminjam` varchar(25) DEFAULT NULL,
  `instansi` varchar(40) DEFAULT NULL COMMENT 'if 2=materi',
  `kontak` varchar(40) DEFAULT NULL COMMENT 'if 2=mk_praktikum',
  `tgl` date DEFAULT NULL,
  `jam_pinjam` varchar(5) DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `jam_kembali` varchar(5) DEFAULT NULL,
  `status` int(11) DEFAULT 0 COMMENT '1=pinjam, 2=dikembalikan,3=rusak',
  `date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `data_peminjaman`
--

INSERT INTO `data_peminjaman` (`id`, `jenis_pinjaman`, `no_peminjaman`, `peminjam`, `status_peminjam`, `user_peminjam`, `jen_id`, `id_peminjam`, `instansi`, `kontak`, `tgl`, `jam_pinjam`, `tgl_kembali`, `jam_kembali`, `status`, `date`) VALUES
(29, 1, '0001102020', 'Kholiq bio', 'mhs', NULL, 'ktp', '121212', 'unnes', 'unnes', '2020-10-14', '19:30', '2020-10-21', '19:30', 2, '2020-10-14 12:32:15'),
(30, 2, '0002102020', 'Kholiq bio', 'dos', NULL, '0', '121212', 'mengenal materi hewan', 'Biologi dasar', '2020-10-15', '06:49', '2020-10-15', '8:49', 1, '2020-10-15 02:34:04'),
(31, 2, '0003102020', 'Kholiq bio', 'dos', NULL, '0', '121212', 'mengenal materi hewan', 'Biologi dasar', '2020-10-15', '12:07', '2020-10-15', '14:07', 2, '2020-10-15 06:54:25'),
(32, 1, '0004102020', 'Kholiq bio', 'mhs', NULL, 'nim', '121212', 'unnes', 'unnes', '2020-10-15', '14:00', '2020-10-22', '14:00', 0, '2020-10-15 07:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `data_peminjaman_alat`
--

CREATE TABLE `data_peminjaman_alat` (
  `id` int(11) NOT NULL,
  `id_peminjaman` int(255) DEFAULT NULL,
  `id_alat` int(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1=pinjam, 2=dikembalikan,3=rusak',
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `data_peminjaman_alat`
--

INSERT INTO `data_peminjaman_alat` (`id`, `id_peminjaman`, `id_alat`, `status`, `qty`) VALUES
(22, 29, 11, 2, 2),
(23, 31, 17, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `data_peminjaman_bahan`
--

CREATE TABLE `data_peminjaman_bahan` (
  `id` int(11) NOT NULL,
  `id_peminjaman` int(255) DEFAULT NULL,
  `id_bahan` int(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1=pinjam, 2=dikembalikan,3=rusak',
  `qty` int(11) DEFAULT NULL COMMENT 'untuk menyimpan qty terkait stok',
  `qty_awal` int(11) DEFAULT NULL COMMENT 'untuk menyimpan qty history',
  `qty_hapus` int(11) DEFAULT NULL COMMENT 'untuk penghapusan barang dalam kondisi dijual'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `data_peminjaman_bahan`
--

INSERT INTO `data_peminjaman_bahan` (`id`, `id_peminjaman`, `id_bahan`, `status`, `qty`, `qty_awal`, `qty_hapus`) VALUES
(29, 29, 7, 2, 2, NULL, NULL),
(30, 30, 7, 2, 0, 1, 1),
(31, 31, 7, 2, 2, NULL, NULL),
(32, 31, 8, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kelamin`
--

CREATE TABLE `jenis_kelamin` (
  `id` int(11) NOT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `jenis_kelamin`
--

INSERT INTO `jenis_kelamin` (`id`, `jenis_kelamin`) VALUES
(1, 'Laki-Laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori_alat_bahan` varchar(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori_alat_bahan`, `keterangan`) VALUES
(5, 'Alat pemanas', 'pemanas bertekanan tinggi'),
(6, 'Alat bedah', ''),
(7, 'Alat ukur', ''),
(8, 'Aspirator (pompa)', ''),
(9, 'AutoAnalyzer', ''),
(10, 'Autoklaf', ''),
(11, 'Alat Optik', 'mikroskop dll'),
(12, 'Ruang', ''),
(13, 'Alat Penunjang', '');

-- --------------------------------------------------------

--
-- Table structure for table `kelola_alat`
--

CREATE TABLE `kelola_alat` (
  `id` int(11) NOT NULL,
  `id_nama_alat` varchar(225) NOT NULL,
  `satuan_alat` varchar(225) NOT NULL,
  `kategori` varchar(225) NOT NULL,
  `stok` int(11) NOT NULL,
  `stok_minimal` int(11) NOT NULL,
  `lokasi` varchar(225) NOT NULL,
  `pendanaan` varchar(225) NOT NULL,
  `harga` int(11) NOT NULL,
  `kondisi` varchar(225) NOT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `gambar` varchar(256) DEFAULT NULL,
  `keterangan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kelola_alat`
--

INSERT INTO `kelola_alat` (`id`, `id_nama_alat`, `satuan_alat`, `kategori`, `stok`, `stok_minimal`, `lokasi`, `pendanaan`, `harga`, `kondisi`, `tahun`, `gambar`, `keterangan`) VALUES
(10, '2', '1', '11', 100, 5, '5', '5', 90000, '1', '2020', NULL, ''),
(11, '1', '1', '11', 984, 5, '8', '5', 800000, '3', '2017', '', NULL),
(15, '5', '1', '11', 1, 2, '5', '5', 100000, '4', '2017', '', NULL),
(16, '4', '1', '7', 10, 2, '5', '5', 30000, '5', '2017', 'files/2021/06/448f4f70272a73201a43401361b79041.jpg', ''),
(17, '1', '1', '11', 10, 2, '7', '4', 1000, '1', '2018', '', NULL),
(18, '8', '1', '13', 1, 1, '7', '4', 0, '1', '2017', '', NULL),
(19, '8', '1', '13', 30, 10, '8', '4', 0, '1', '2020', '', NULL),
(22, '4', '2', '13', 19, 1, '', '6', 131231, '1', '2017', 'files/2021/06/17994d19df8725dc2fbfb11821bc361f.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `kelola_bahan`
--

CREATE TABLE `kelola_bahan` (
  `id` int(11) NOT NULL,
  `id_nama_bahan` varchar(150) NOT NULL,
  `satuan_bahan` varchar(100) NOT NULL,
  `kategori` varchar(150) NOT NULL,
  `stock` int(11) NOT NULL,
  `stock_minimal` int(11) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `pendanaan` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `kondisi` varchar(100) NOT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `jenis` int(10) DEFAULT NULL,
  `gambar` varchar(256) DEFAULT NULL,
  `keterangan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kelola_bahan`
--

INSERT INTO `kelola_bahan` (`id`, `id_nama_bahan`, `satuan_bahan`, `kategori`, `stock`, `stock_minimal`, `lokasi`, `pendanaan`, `harga`, `kondisi`, `tahun`, `jenis`, `gambar`, `keterangan`) VALUES
(3, '2', '1', '6', 5, 5, '5', '4', 90000, '2', '2019', NULL, NULL, NULL),
(7, '1', '1', '11', 10, 4, '5', '6', 100000, '1', '2018', 1, 'files/2021/06/adef6f99382683cd412f5305f5c9f4e3.jpg', ''),
(8, '2', '1', '12', 3, 2, '8', '6', 1000000, '1', '2020', 1, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `kelola_penggantian`
--

CREATE TABLE `kelola_penggantian` (
  `id` int(11) NOT NULL,
  `id_peminjaman` varchar(50) NOT NULL,
  `nama` char(50) NOT NULL,
  `nama_barang` char(50) NOT NULL,
  `status_penggantian` char(30) NOT NULL,
  `status` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `kelola_penyimpanan`
--

CREATE TABLE `kelola_penyimpanan` (
  `id` int(10) NOT NULL,
  `nama_penyimpanan` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kelola_penyimpanan`
--

INSERT INTO `kelola_penyimpanan` (`id`, `nama_penyimpanan`, `status`) VALUES
(1, 'Lab Bio 1', '1'),
(2, 'Lab Bio 2', '1'),
(3, 'Lab Bio 3', '1'),
(4, 'Lab Bio 4', '1'),
(5, 'Lab Bio 5', '1'),
(6, 'Lab Bio 6', '1'),
(7, 'Lab Bio 7', '1'),
(8, 'Lab Bio 8', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kondisi_barang`
--

CREATE TABLE `kondisi_barang` (
  `id` int(30) NOT NULL,
  `kondisi` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kondisi_barang`
--

INSERT INTO `kondisi_barang` (`id`, `kondisi`) VALUES
(1, 'Sangat Baik'),
(2, 'Baik'),
(3, 'Cukup'),
(4, 'Kurang'),
(5, 'Rusak');

-- --------------------------------------------------------

--
-- Table structure for table `master_bagian`
--

CREATE TABLE `master_bagian` (
  `id` int(11) NOT NULL,
  `bagian` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_bagian`
--

INSERT INTO `master_bagian` (`id`, `bagian`) VALUES
(1, 'Aktif'),
(2, 'NonAktif');

-- --------------------------------------------------------

--
-- Table structure for table `master_bahan`
--

CREATE TABLE `master_bahan` (
  `id` int(11) NOT NULL,
  `kode` varchar(4) DEFAULT NULL,
  `jenis_bahan` varchar(10) DEFAULT NULL,
  `nama_bahan` varchar(100) DEFAULT NULL,
  `tahun` int(4) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_bahan`
--

INSERT INTO `master_bahan` (`id`, `kode`, `jenis_bahan`, `nama_bahan`, `tahun`, `pengarang`, `gambar`, `keterangan`) VALUES
(1, 'BK01', 'Air', 'Air Raksa', 2020, 'Josh gothel', NULL, NULL),
(2, 'MK02', 'Galon', 'Galon Air', 2020, NULL, NULL, NULL),
(3, 'KUas', '0', 'huisa', 2020, NULL, 'files/2021/06/60ddb45f54ef67554c9b963a5ec8c86a.png', 'undefined');

-- --------------------------------------------------------

--
-- Table structure for table `master_instansi`
--

CREATE TABLE `master_instansi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `kementerian` varchar(255) DEFAULT NULL,
  `tahun_ajaran` varchar(255) DEFAULT NULL,
  `nama_fakultas` varchar(255) DEFAULT NULL,
  `nama_dekan` varchar(255) DEFAULT NULL,
  `alamat_fakultas` varchar(255) DEFAULT NULL,
  `telepon_fakultas` varchar(255) DEFAULT NULL,
  `nama_jurusan` varchar(255) DEFAULT NULL,
  `nama_kajur` varchar(255) DEFAULT NULL,
  `nama_kalab` varchar(255) DEFAULT NULL,
  `telepon_jurusan` varchar(255) DEFAULT NULL,
  `alamat_jurusan` varchar(255) DEFAULT NULL,
  `deskripsi_jurusan` varchar(255) DEFAULT NULL,
  `peta_jurusan` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `zona_waktu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_instansi`
--

INSERT INTO `master_instansi` (`id`, `nama`, `alamat`, `kode`, `provinsi`, `email`, `website`, `logo`, `telepon`, `kementerian`, `tahun_ajaran`, `nama_fakultas`, `nama_dekan`, `alamat_fakultas`, `telepon_fakultas`, `nama_jurusan`, `nama_kajur`, `nama_kalab`, `telepon_jurusan`, `alamat_jurusan`, `deskripsi_jurusan`, `peta_jurusan`, `favicon`, `zona_waktu`) VALUES
(1, 'Universitas Negeri Semarang', 'Kampus Sekaran, Gunungpati, Semarang', '', '', '', '', 'files/2020/06/caaeaf25e339de88e954cc8140d3d390.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `master_level`
--

CREATE TABLE `master_level` (
  `id` int(11) NOT NULL,
  `level` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_level`
--

INSERT INTO `master_level` (`id`, `level`) VALUES
(1, 'Super Admin'),
(2, 'Admin'),
(3, 'Kepala Lab'),
(4, 'Laboran'),
(6, 'Assisten Lab'),
(7, 'Dosen'),
(8, 'Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `master_nama_alat`
--

CREATE TABLE `master_nama_alat` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `nama_alat` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_nama_alat`
--

INSERT INTO `master_nama_alat` (`id`, `kode`, `gambar`, `nama_alat`, `keterangan`) VALUES
(1, 'MK01', NULL, 'Mikroskop', 'Mikroskop'),
(2, 'MK02', NULL, 'Mikroskop Besar', 'Mikroskop Besar'),
(4, 'BJ1', 'files/2021/06/a4379b8ffb251c3a689d283c041a0a05.png', 'Bejana', 'Bejana serba bisa'),
(5, 'KM1', NULL, 'Kamera', 'kamera'),
(6, 'LP1', NULL, 'LUOP', ''),
(7, 'RU1', NULL, 'Ruang 1', ''),
(8, 'KU', NULL, 'Kursi', ''),
(11, 'MK02111', 'files/2020/12/62504e076ceb4474bb9c8f8bb2559114.jpeg', 'coba', '');

-- --------------------------------------------------------

--
-- Table structure for table `master_satuan`
--

CREATE TABLE `master_satuan` (
  `id` int(11) NOT NULL,
  `nama_satuan` varchar(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_satuan`
--

INSERT INTO `master_satuan` (`id`, `nama_satuan`, `keterangan`) VALUES
(1, 'pcs', 'pcs'),
(2, 'Ruang', 'untuk satuan ruang');

-- --------------------------------------------------------

--
-- Table structure for table `master_sumber_pendanaan`
--

CREATE TABLE `master_sumber_pendanaan` (
  `id` int(11) NOT NULL,
  `sumber_pendanaan` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_sumber_pendanaan`
--

INSERT INTO `master_sumber_pendanaan` (`id`, `sumber_pendanaan`, `status`) VALUES
(3, 'Fakultas', 'Ada'),
(4, 'Universitas', 'Ada'),
(5, 'BOPTN', ''),
(6, 'HIBAH DIKTI', '');

-- --------------------------------------------------------

--
-- Table structure for table `master_user`
--

CREATE TABLE `master_user` (
  `id` int(11) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_user`
--

INSERT INTO `master_user` (`id`, `nip`, `level`) VALUES
(2, 'jihan', '1');

-- --------------------------------------------------------

--
-- Table structure for table `other_dokumen`
--

CREATE TABLE `other_dokumen` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `files` varchar(200) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `kode_peminjaman` varchar(100) NOT NULL,
  `nama_bahan` varchar(100) NOT NULL,
  `nama_alat` varchar(100) NOT NULL,
  `peminjam` varchar(150) NOT NULL,
  `tgl_pinjam` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tgl_pengembalian` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(60) NOT NULL,
  `status_pengembalian` varchar(255) NOT NULL DEFAULT 'Belum Dikembalikan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Triggers `peminjaman`
--
DELIMITER $$
CREATE TRIGGER `update_peminjaman` BEFORE INSERT ON `peminjaman` FOR EACH ROW UPDATE `kelola_bahan`, `kelola_alat`
SET `kelola_bahan`.`stock` = `kelola_bahan`.`stock` - 1,
`kelola_alat`.`stok` = `kelola_alat`.`stok` - 1
WHERE `kelola_bahan`.`id_nama_bahan` = NEW.nama_bahan
AND `kelola_alat`.`id_nama_alat` = NEW.nama_alat
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_alat`
--

CREATE TABLE `pengajuan_alat` (
  `id_pengajuan` int(11) NOT NULL,
  `id_periode` varchar(50) NOT NULL,
  `pengaju` varchar(50) NOT NULL,
  `nama_alat` varchar(50) NOT NULL,
  `jumlah` int(20) NOT NULL,
  `harga_satuan` int(20) NOT NULL,
  `status` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pengajuan_alat`
--

INSERT INTO `pengajuan_alat` (`id_pengajuan`, `id_periode`, `pengaju`, `nama_alat`, `jumlah`, `harga_satuan`, `status`) VALUES
(8, 'P-PGN-20062700001', 'Kholiq', 'mikroskop', 10, 80000, ''),
(9, 'P-PGN-20062700001', 'Kholiq', 'pipet', 250, 10000, ''),
(10, 'P-PGN-20062700001', 'Kholiq', 'Jas Lab', 100, 250000, '');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_bahan`
--

CREATE TABLE `pengajuan_bahan` (
  `id` int(11) NOT NULL,
  `id_periode` varchar(50) NOT NULL,
  `pengaju` varchar(50) NOT NULL,
  `nama_bahan` varchar(100) NOT NULL,
  `jenis_bahan` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_satuan` int(50) NOT NULL,
  `status` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pengajuan_bahan`
--

INSERT INTO `pengajuan_bahan` (`id`, `id_periode`, `pengaju`, `nama_bahan`, `jenis_bahan`, `jumlah`, `harga_satuan`, `status`) VALUES
(8, 'P-PGN-20062700001', 'Kholiq', 'metana', 'cair', 100, 80000, '');

-- --------------------------------------------------------

--
-- Table structure for table `periode_pengajuan`
--

CREATE TABLE `periode_pengajuan` (
  `id` varchar(50) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `sumber_pendanaan` varchar(255) NOT NULL,
  `tgl_pendanaan_turun` date NOT NULL,
  `pajak` int(11) NOT NULL,
  `status_pengajuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `periode_pengajuan`
--

INSERT INTO `periode_pengajuan` (`id`, `semester`, `tgl_pengajuan`, `sumber_pendanaan`, `tgl_pendanaan_turun`, `pajak`, `status_pengajuan`) VALUES
('P-PGN-20062700001', 'Ganjil', '2020-06-28', '4', '2020-08-27', 20000, '1'),
('P-PGN-20062700002', 'Genap', '2020-06-27', '3', '2020-07-27', 1000000, '2');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `status`) VALUES
(3, 'penuh'),
(4, 'belum penuh');

-- --------------------------------------------------------

--
-- Table structure for table `status_pengajuan`
--

CREATE TABLE `status_pengajuan` (
  `id` int(11) NOT NULL,
  `status_pengajuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `status_pengajuan`
--

INSERT INTO `status_pengajuan` (`id`, `status_pengajuan`) VALUES
(1, 'Aktif'),
(2, 'Tidak Aktif'),
(3, 'Pendanaan Sudah Turun'),
(4, 'Pendanaan Belum Turun'),
(5, 'Sudah Terverifikasi');

-- --------------------------------------------------------

--
-- Table structure for table `status_penggantian`
--

CREATE TABLE `status_penggantian` (
  `id` int(11) NOT NULL,
  `status_penggantian` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `status_penggantian`
--

INSERT INTO `status_penggantian` (`id`, `status_penggantian`) VALUES
(1, 'sudah diganti'),
(2, 'belum diganti');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cek_status_peminjaman`
--
ALTER TABLE `cek_status_peminjaman`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `cms_captcha`
--
ALTER TABLE `cms_captcha`
  ADD PRIMARY KEY (`captcha_id`) USING BTREE,
  ADD KEY `word` (`word`) USING BTREE;

--
-- Indexes for table `cms_log`
--
ALTER TABLE `cms_log`
  ADD PRIMARY KEY (`id_log`) USING BTREE;

--
-- Indexes for table `cms_lupa`
--
ALTER TABLE `cms_lupa`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `cms_menu`
--
ALTER TABLE `cms_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `cms_menu_grup`
--
ALTER TABLE `cms_menu_grup`
  ADD PRIMARY KEY (`id_grup_menu`) USING BTREE;

--
-- Indexes for table `cms_online`
--
ALTER TABLE `cms_online`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- Indexes for table `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `data_peminjaman`
--
ALTER TABLE `data_peminjaman`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `data_peminjaman_alat`
--
ALTER TABLE `data_peminjaman_alat`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `data_peminjaman_bahan`
--
ALTER TABLE `data_peminjaman_bahan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kelola_alat`
--
ALTER TABLE `kelola_alat`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kelola_bahan`
--
ALTER TABLE `kelola_bahan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kelola_penggantian`
--
ALTER TABLE `kelola_penggantian`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kelola_penyimpanan`
--
ALTER TABLE `kelola_penyimpanan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kondisi_barang`
--
ALTER TABLE `kondisi_barang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_bagian`
--
ALTER TABLE `master_bagian`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_bahan`
--
ALTER TABLE `master_bahan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_instansi`
--
ALTER TABLE `master_instansi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_level`
--
ALTER TABLE `master_level`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_nama_alat`
--
ALTER TABLE `master_nama_alat`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_satuan`
--
ALTER TABLE `master_satuan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_sumber_pendanaan`
--
ALTER TABLE `master_sumber_pendanaan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `other_dokumen`
--
ALTER TABLE `other_dokumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pengajuan_alat`
--
ALTER TABLE `pengajuan_alat`
  ADD PRIMARY KEY (`id_pengajuan`) USING BTREE;

--
-- Indexes for table `pengajuan_bahan`
--
ALTER TABLE `pengajuan_bahan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `periode_pengajuan`
--
ALTER TABLE `periode_pengajuan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `status_pengajuan`
--
ALTER TABLE `status_pengajuan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `status_penggantian`
--
ALTER TABLE `status_penggantian`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cek_status_peminjaman`
--
ALTER TABLE `cek_status_peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cms_captcha`
--
ALTER TABLE `cms_captcha`
  MODIFY `captcha_id` bigint(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4034;

--
-- AUTO_INCREMENT for table `cms_log`
--
ALTER TABLE `cms_log`
  MODIFY `id_log` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1579;

--
-- AUTO_INCREMENT for table `cms_lupa`
--
ALTER TABLE `cms_lupa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_menu`
--
ALTER TABLE `cms_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `cms_menu_grup`
--
ALTER TABLE `cms_menu_grup`
  MODIFY `id_grup_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `data_peminjaman`
--
ALTER TABLE `data_peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `data_peminjaman_alat`
--
ALTER TABLE `data_peminjaman_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `data_peminjaman_bahan`
--
ALTER TABLE `data_peminjaman_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kelola_alat`
--
ALTER TABLE `kelola_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `kelola_bahan`
--
ALTER TABLE `kelola_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kelola_penggantian`
--
ALTER TABLE `kelola_penggantian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelola_penyimpanan`
--
ALTER TABLE `kelola_penyimpanan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kondisi_barang`
--
ALTER TABLE `kondisi_barang`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_bagian`
--
ALTER TABLE `master_bagian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_bahan`
--
ALTER TABLE `master_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `master_instansi`
--
ALTER TABLE `master_instansi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_level`
--
ALTER TABLE `master_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `master_nama_alat`
--
ALTER TABLE `master_nama_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `master_satuan`
--
ALTER TABLE `master_satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_sumber_pendanaan`
--
ALTER TABLE `master_sumber_pendanaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `master_user`
--
ALTER TABLE `master_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `other_dokumen`
--
ALTER TABLE `other_dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_alat`
--
ALTER TABLE `pengajuan_alat`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pengajuan_bahan`
--
ALTER TABLE `pengajuan_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `status_pengajuan`
--
ALTER TABLE `status_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `status_penggantian`
--
ALTER TABLE `status_penggantian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
