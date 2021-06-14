/*
 Navicat Premium Data Transfer

 Source Server         : lokal
 Source Server Type    : MySQL
 Source Server Version : 50620
 Source Host           : localhost:3306
 Source Schema         : sionlab

 Target Server Type    : MySQL
 Target Server Version : 50620
 File Encoding         : 65001

 Date: 06/04/2021 10:01:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cek_status_peminjaman
-- ----------------------------
DROP TABLE IF EXISTS `cek_status_peminjaman`;
CREATE TABLE `cek_status_peminjaman`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_peminjaman` int(11) NOT NULL,
  `kategori_peminjaman` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cek_status_peminjaman
-- ----------------------------
INSERT INTO `cek_status_peminjaman` VALUES (3, 7, 'kusus', '2000-01-01', '2000-01-02');

-- ----------------------------
-- Table structure for cms_captcha
-- ----------------------------
DROP TABLE IF EXISTS `cms_captcha`;
CREATE TABLE `cms_captcha`  (
  `captcha_id` bigint(13) NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `word` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`captcha_id`) USING BTREE,
  INDEX `word`(`word`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3915 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_captcha
-- ----------------------------
INSERT INTO `cms_captcha` VALUES (3914, 1604550757, '::1', '013957');
INSERT INTO `cms_captcha` VALUES (3913, 1604550737, '::1', '700390');
INSERT INTO `cms_captcha` VALUES (3912, 1604550735, '::1', '704602');
INSERT INTO `cms_captcha` VALUES (3908, 1604550654, '::1', '612695');
INSERT INTO `cms_captcha` VALUES (3911, 1604550727, '::1', '922331');
INSERT INTO `cms_captcha` VALUES (3910, 1604550674, '::1', '341707');
INSERT INTO `cms_captcha` VALUES (3909, 1604550657, '::1', '796798');
INSERT INTO `cms_captcha` VALUES (3907, 1604550460, '::1', '975539');

-- ----------------------------
-- Table structure for cms_log
-- ----------------------------
DROP TABLE IF EXISTS `cms_log`;
CREATE TABLE `cms_log`  (
  `id_log` int(30) NOT NULL AUTO_INCREMENT,
  `ip` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mac_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kegiatan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `user` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_log`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 981 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_log
-- ----------------------------
INSERT INTO `cms_log` VALUES (1, '::1', '', '2019-01-30 20:39:29', 'Login  by Jihan Ali Ahmad', 'superadmin');
INSERT INTO `cms_log` VALUES (2, '::1', '', '2019-11-05 17:45:51', 'Login  by Jihan Ali Ahmad', 'superadmin');
INSERT INTO `cms_log` VALUES (3, '::1', '', '2019-11-05 17:47:27', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>001/kalingga/11/2019</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2019-11-05</b></li><li><b>tgl_pengiriman</b> dengan value <b>2020-02-01</b></li><li><b>fsc_cert</b> dengan value <b>34124</b></li><li><b>fsc_lisence</b> dengan value <b>524554</b></li><li><b>buyer_po_nr</b> dengan value <b>778</b></li><li><b>pembayaran</b> dengan value <b>2</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'superadmin');
INSERT INTO `cms_log` VALUES (4, '::1', '', '2020-03-10 17:15:13', 'Login  by Jihan Ali Ahmad', 'superadmin');
INSERT INTO `cms_log` VALUES (5, '::1', '', '2020-03-12 09:55:56', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Instansi</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>instansi</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/instansi</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'superadmin');
INSERT INTO `cms_log` VALUES (6, '::1', '', '2020-03-12 13:25:13', 'Login  by Jihan Ali Ahmad', 'superadmin');
INSERT INTO `cms_log` VALUES (7, '::1', '', '2020-03-12 13:39:55', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>1</b></li><li><b>alamat</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin');
INSERT INTO `cms_log` VALUES (8, '::1', '', '2020-03-12 13:40:20', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>logo</b> dengan value <b>files/2020/03/ebcff3bcfaf285d80bf3e5144993191d.png</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin');
INSERT INTO `cms_log` VALUES (9, '::1', '', '2020-03-12 13:40:52', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>Kampus Sekaran, Gunungpati, Semarang</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin');
INSERT INTO `cms_log` VALUES (10, '::1', '', '2020-05-08 07:34:20', 'Login  by Jihan Ali Ahmad', 'superadmin');
INSERT INTO `cms_log` VALUES (11, '::1', '', '2020-05-08 07:47:34', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'superadmin');
INSERT INTO `cms_log` VALUES (12, '::1', '', '2020-05-08 07:47:56', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>lihat</b></li></ul>', 'superadmin');
INSERT INTO `cms_log` VALUES (13, '::1', '', '2020-05-08 09:37:33', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (14, '::1', '', '2020-05-08 09:39:40', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>keterangan</b> dengan value <b>Mikroskop Besar</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (15, '::1', '', '2020-05-11 20:57:56', 'Logout SIONLAB by ', 'Tamu');
INSERT INTO `cms_log` VALUES (16, '::1', '', '2020-05-11 21:06:47', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (17, '::1', '', '2020-05-12 13:10:44', 'Logout SIONLAB by ', 'Tamu');
INSERT INTO `cms_log` VALUES (18, '::1', '', '2020-05-12 13:17:34', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (19, '::1', '', '2020-05-12 13:21:03', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (20, '::1', '', '2020-05-12 13:21:28', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (21, '::1', '', '2020-05-12 17:33:04', 'Logout SIONLAB by ', 'Tamu');
INSERT INTO `cms_log` VALUES (22, '::1', '', '2020-05-12 18:38:30', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (23, '::1', '', '2020-05-12 18:46:14', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>Mikroskop</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (24, '::1', '', '2020-05-13 11:15:42', 'Logout SIONLAB by ', 'Tamu');
INSERT INTO `cms_log` VALUES (25, '::1', '', '2020-05-13 11:38:26', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (26, '::1', '', '2020-05-13 14:28:52', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>keterangan</b> dengan value <b>Mikroskop Besar</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (27, '::1', '', '2020-05-13 14:32:30', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (28, '::1', '', '2020-05-13 14:49:29', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori3</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (29, '::1', '', '2020-05-13 15:13:29', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori 2</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (30, '::1', '', '2020-05-13 15:14:03', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori I</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (31, '::1', '', '2020-05-13 15:14:18', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (32, '::1', '', '2020-05-13 15:19:18', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori 4</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (33, '::1', '', '2020-05-13 15:26:51', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori2</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (34, '::1', '', '2020-05-13 15:27:03', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori2</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (35, '::1', '', '2020-05-13 15:57:33', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (36, '::1', '', '2020-05-13 19:55:19', 'Logout SIONLAB by ', 'Tamu');
INSERT INTO `cms_log` VALUES (37, '::1', '', '2020-05-13 19:56:35', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (38, '::1', '', '2020-05-13 19:57:11', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (39, '::1', '', '2020-05-13 20:19:23', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (40, '::1', '', '2020-05-13 20:25:59', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (41, '::1', '', '2020-05-13 20:53:33', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (42, '::1', '', '2020-05-13 21:44:42', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>keterangan</b> dengan value <b>Mikroskop</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (43, '::1', '', '2020-05-13 21:44:54', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>keterangan</b> dengan value <b>Mikroskop besar</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (44, '::1', '', '2020-05-13 21:59:12', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (45, '::1', '', '2020-05-13 21:59:23', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (46, '::1', '', '2020-05-13 22:01:08', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (47, '::1', '', '2020-05-13 22:02:04', 'Mengedit Master kategori_alat_dan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (48, '::1', '', '2020-05-13 22:02:37', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (49, '::1', '', '2020-05-13 22:03:05', 'Mengedit Master kategori_alat_dan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (50, '::1', '', '2020-05-13 22:04:54', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori x</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (51, '::1', '', '2020-05-13 22:05:07', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori x</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (52, '::1', '', '2020-05-13 22:06:34', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (53, '::1', '', '2020-05-13 22:06:47', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (54, '::1', '', '2020-05-13 22:10:42', 'Menambah grup menu dengan data sbb:<br />\r\n                    <ul><li><b>nama_grup</b> dengan value <b>Kelola</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (55, '::1', '', '2020-05-13 22:10:53', 'Mengedit grup menu dengan data sbb:<br />\r\n                    <ul><li><b>id_grup_menu</b> dengan value <b>4</b></li><li><b>nama_grup</b> dengan value <b>Kelola</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (56, '::1', '', '2020-05-13 22:13:11', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (57, '::1', '', '2020-05-13 22:13:50', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (58, '::1', '', '2020-05-13 22:14:00', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (59, '::1', '', '2020-05-13 22:14:20', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (60, '::1', '', '2020-05-13 22:16:04', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (61, '::1', '', '2020-05-13 22:16:14', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (62, '::1', '', '2020-05-13 22:18:27', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori v</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (63, '::1', '', '2020-05-13 22:20:04', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (64, '::1', '', '2020-05-13 22:21:22', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (65, '::1', '', '2020-05-13 22:21:36', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori v</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (66, '::1', '', '2020-05-13 22:22:49', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (67, '::1', '', '2020-05-13 22:25:16', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori v</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (68, '::1', '', '2020-05-13 22:27:25', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori v</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (69, '::1', '', '2020-05-13 23:15:55', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori 0</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (70, '::1', '', '2020-05-13 23:16:13', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (71, '::1', '', '2020-05-13 23:16:23', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (72, '::1', '', '2020-05-13 23:19:15', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>cpu</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (73, '::1', '', '2020-05-13 23:19:27', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>cpu</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (74, '::1', '', '2020-05-14 00:41:52', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>cpu</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (75, '::1', '', '2020-05-14 01:02:50', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>cpu</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (76, '::1', '', '2020-05-14 02:05:41', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori w</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (77, '::1', '', '2020-05-14 02:05:56', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (78, '::1', '', '2020-05-14 12:46:06', 'Logout SIONLAB by ', 'Tamu');
INSERT INTO `cms_log` VALUES (79, '::1', '', '2020-05-14 12:46:16', 'Logout SIONLAB by ', 'Tamu');
INSERT INTO `cms_log` VALUES (80, '::1', '', '2020-05-14 12:49:58', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (81, '::1', '', '2020-05-14 14:16:04', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (82, '::1', '', '2020-05-14 14:16:18', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>kc</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (83, '::1', '', '2020-05-14 14:17:34', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>kp</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (84, '::1', '', '2020-05-14 15:27:51', 'Mengedit Master id dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>wk</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (85, '::1', '', '2020-05-14 15:28:03', 'Mengedit Master id dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>kc</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (86, '::1', '', '2020-05-14 15:28:12', 'Mengedit Master id dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>kc</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (87, '::1', '', '2020-05-14 15:33:07', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>k</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (88, '::1', '', '2020-05-14 16:00:36', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>wc</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (89, '::1', '', '2020-05-14 16:00:55', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>qe</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (90, '::1', '', '2020-05-14 20:15:16', 'Logout SIONLAB by ', 'Tamu');
INSERT INTO `cms_log` VALUES (91, '::1', '', '2020-05-14 20:15:36', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (92, '::1', '', '2020-05-14 20:19:13', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>qw</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (93, '::1', '', '2020-05-14 20:19:31', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>pc</b></li><li><b>keterangan</b> dengan value <b>kc</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (94, '::1', '', '2020-05-14 20:20:26', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>we</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (95, '::1', '', '2020-05-14 20:29:41', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>pcc</b></li><li><b>keterangan</b> dengan value <b>wlw</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (96, '::1', '', '2020-05-14 20:56:53', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>pcc</b></li><li><b>keterangan</b> dengan value <b>pwq</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (97, '::1', '', '2020-05-14 21:31:48', 'Menghapus Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (98, '::1', '', '2020-05-14 21:39:25', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (99, '::1', '', '2020-05-14 21:39:38', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (100, '::1', '', '2020-05-14 21:42:51', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (101, '::1', '', '2020-05-14 21:55:05', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>129</b></li><li><b>nama</b> dengan value <b>Gambar Depan</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/gambar_depan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>3</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (102, '::1', '', '2020-05-14 21:55:21', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>129</b></li><li><b>nama</b> dengan value <b>Gambar Depan</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/gambar_depan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (103, '::1', '', '2020-05-15 07:09:16', 'Logout SIONLAB by ', 'Tamu');
INSERT INTO `cms_log` VALUES (104, '::1', '', '2020-05-15 07:09:50', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (105, '::1', '', '2020-05-15 08:04:49', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori1</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (106, '::1', '', '2020-05-15 08:22:20', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori1</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (107, '::1', '', '2020-05-15 08:25:14', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori1</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (108, '::1', '', '2020-05-15 08:32:23', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kategori_alat_bahan</b> dengan value <b>kategori1</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (109, '::1', '', '2020-05-15 08:41:42', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>umum</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (110, '::1', '', '2020-05-15 08:41:53', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kategori_alat_bahan</b> dengan value <b>kategori1</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (111, '::1', '', '2020-05-15 18:29:39', 'Logout SIONLAB by ', 'Tamu');
INSERT INTO `cms_log` VALUES (112, '::1', '', '2020-05-15 18:30:55', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (113, '::1', '', '2020-05-15 19:09:06', 'Mengedit Master nama_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2009</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (114, '::1', '', '2020-05-15 19:09:53', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2009</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (115, '::1', '', '2020-05-15 19:10:43', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (116, '::1', '', '2020-05-15 19:15:15', 'Mengedit Master nama_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (117, '::1', '', '2020-05-15 19:17:10', 'Mengedit Master nama_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (118, '::1', '', '2020-05-15 19:17:27', 'Mengedit Master nama_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>wkwkwk</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (119, '::1', '', '2020-05-15 19:19:58', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>BK01</b></li><li><b>jenis_bahan</b> dengan value <b>Buku</b></li><li><b>nama_bahan</b> dengan value <b>Lean UX</b></li><li><b>tahun</b> dengan value <b>2011</b></li><li><b>pengarang</b> dengan value <b>Josh gothel</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (120, '::1', '', '2020-05-15 19:22:03', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>bk03</b></li><li><b>jenis_bahan</b> dengan value <b>buku</b></li><li><b>nama_bahan</b> dengan value <b>buku petunjuk</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>-</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (121, '::1', '', '2020-05-15 19:23:23', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>bk03</b></li><li><b>jenis_bahan</b> dengan value <b>buku</b></li><li><b>nama_bahan</b> dengan value <b>buku petunjuk</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>-</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (122, '::1', '', '2020-05-15 19:28:29', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>002</b></li><li><b>jenis_bahan</b> dengan value <b>kertas</b></li><li><b>nama_bahan</b> dengan value <b>kertas karton</b></li><li><b>tahun</b> dengan value <b>2009</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (123, '::1', '', '2020-05-15 19:28:55', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>002</b></li><li><b>jenis_bahan</b> dengan value <b>kertas</b></li><li><b>nama_bahan</b> dengan value <b>kertas karton</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>wkwkwkwk</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (124, '::1', '', '2020-05-15 19:30:32', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>ch02</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>nama_bahan</b> dengan value <b>co2</b></li><li><b>tahun</b> dengan value <b>2019</b></li><li><b>pengarang</b> dengan value <b>we</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (125, '::1', '', '2020-05-15 19:30:57', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>cho3</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>nama_bahan</b> dengan value <b>co2</b></li><li><b>tahun</b> dengan value <b>2019</b></li><li><b>pengarang</b> dengan value <b>we</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (126, '::1', '', '2020-05-15 19:33:29', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>ch02</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>nama_bahan</b> dengan value <b>co2</b></li><li><b>tahun</b> dengan value <b>-</b></li><li><b>pengarang</b> dengan value <b>we</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (127, '::1', '', '2020-05-15 19:36:32', 'Mengedit Master nama_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>ch02</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>nama_bahan</b> dengan value <b>co2</b></li><li><b>tahun</b> dengan value <b>2019</b></li><li><b>pengarang</b> dengan value <b>wk</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (128, '::1', '', '2020-05-15 19:37:27', 'Mengedit Master nama_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kode</b> dengan value <b>ch02</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>nama_bahan</b> dengan value <b>co2</b></li><li><b>tahun</b> dengan value <b>2019</b></li><li><b>pengarang</b> dengan value <b>wk</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (129, '::1', '', '2020-05-15 21:54:44', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (130, '::1', '', '2020-05-18 13:13:35', 'Logout SIONLAB by ', 'Tamu');
INSERT INTO `cms_log` VALUES (131, '::1', '', '2020-05-18 13:14:18', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (132, '::1', '', '2020-05-18 13:14:19', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (133, '::1', '', '2020-05-18 21:49:55', 'Logout SIONLAB by ', 'Tamu');
INSERT INTO `cms_log` VALUES (134, '::1', '', '2020-05-18 21:50:12', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (135, '::1', '', '2020-05-19 13:35:37', 'Logout SIONLAB by ', 'Tamu');
INSERT INTO `cms_log` VALUES (136, '::1', '', '2020-05-19 13:35:58', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (137, '::1', '', '2020-05-19 19:45:54', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (138, '::1', '', '2020-05-19 22:57:27', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>semester</b> dengan value <b>semester 4</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-05-09</b></li><li><b>sumber_pendanaan</b> dengan value <b>fakultas</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-06-09</b></li><li><b>pajak</b> dengan value <b>7</b></li><li><b>status_pengajuan</b> dengan value <b>belum turun</b></li><li><b>status</b> dengan value <b>ada</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (139, '::1', '', '2020-05-19 23:29:05', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>semester</b> dengan value <b>semester 4</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-05-09</b></li><li><b>sumber_pendanaan</b> dengan value <b>fakultas</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-06-09</b></li><li><b>pajak</b> dengan value <b>7</b></li><li><b>status_pengajuan</b> dengan value <b>belum turun</b></li><li><b>status</b> dengan value <b>tidak</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (140, '::1', '', '2020-05-20 19:35:53', 'Logout SIONLAB by ', 'Tamu');
INSERT INTO `cms_log` VALUES (141, '::1', '', '2020-05-20 19:36:35', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (142, '::1', '', '2020-05-20 19:37:19', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (143, '::1', '', '2020-05-20 19:37:33', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (144, '::1', '', '2020-05-20 19:38:47', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (145, '::1', '', '2020-05-20 19:39:04', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (146, '::1', '', '2020-05-21 19:07:28', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (147, '::1', '', '2020-05-21 23:18:23', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (148, '::1', '', '2020-05-21 23:54:31', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (149, '::1', '', '2020-05-21 23:56:20', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>status</b> dengan value <b>ada</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (150, '::1', '', '2020-05-21 23:57:49', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>fakultas</b></li><li><b>status</b> dengan value <b>ada</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (151, '::1', '', '2020-05-21 23:58:30', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>katgeori 2</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (152, '::1', '', '2020-05-21 23:59:09', 'Mengedit Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>sumber_pendanaan</b> dengan value <b>fakultas</b></li><li><b>status</b> dengan value <b>tidak ada</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (153, '::1', '', '2020-05-22 02:13:00', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (154, '::1', '', '2020-05-22 07:02:43', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (155, '::1', '', '2020-05-22 18:25:12', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (156, '::1', '', '2020-05-23 13:37:07', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (157, '::1', '', '2020-05-23 19:56:37', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (158, '::1', '', '2020-05-23 19:57:13', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (159, '::1', '', '2020-05-23 19:57:54', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (160, '::1', '', '2020-05-23 20:01:56', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (161, '::1', '', '2020-05-27 12:41:50', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (162, '::1', '', '2020-05-27 12:41:59', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (163, '::1', '', '2020-05-27 12:42:19', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (164, '::1', '', '2020-05-27 12:42:27', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (165, '::1', '', '2020-05-27 12:42:42', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (166, '::1', '', '2020-05-27 12:42:48', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (167, '::1', '', '2020-05-27 12:43:03', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (168, '::1', '', '2020-05-27 14:31:46', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (169, '::1', '', '2020-05-27 14:33:05', 'Login  by kepala lab', 'kepala_lab01');
INSERT INTO `cms_log` VALUES (170, '::1', '', '2020-05-27 14:37:25', 'Logout SIONLAB by kepala lab', 'kepala_lab01');
INSERT INTO `cms_log` VALUES (171, '::1', '', '2020-05-27 14:37:48', 'Login  by kepala lab', 'kepala_lab01');
INSERT INTO `cms_log` VALUES (172, '::1', '', '2020-05-27 14:37:55', 'Logout SIONLAB by kepala lab', 'kepala_lab01');
INSERT INTO `cms_log` VALUES (173, '::1', '', '2020-05-27 14:38:12', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (174, '::1', '', '2020-05-27 14:54:50', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (175, '::1', '', '2020-05-27 14:55:05', 'Login  by kepala lab', 'kepala_lab01');
INSERT INTO `cms_log` VALUES (176, '::1', '', '2020-05-27 14:58:22', 'Logout SIONLAB by kepala lab', 'kepala_lab01');
INSERT INTO `cms_log` VALUES (177, '::1', '', '2020-05-27 14:58:35', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (178, '::1', '', '2020-05-27 19:50:58', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (179, '::1', '', '2020-05-28 00:38:41', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (180, '::1', '', '2020-05-28 01:16:30', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>nama_bahan</b> dengan value <b>Kabel Lan</b></li><li><b>satuan_bahan</b> dengan value <b>Meter</b></li><li><b>kategori</b> dengan value <b>Umum</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>stock</b> dengan value <b>100</b></li><li><b>lokasi_penyimpanan</b> dengan value <b>lemari 3</b></li><li><b>tipe_bahan</b> dengan value <b>Tidak Habis Pakai</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (181, '::1', '', '2020-05-28 01:17:54', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>nama_bahan</b> dengan value <b>Kabel Lan</b></li><li><b>satuan_bahan</b> dengan value <b>Meter</b></li><li><b>kategori</b> dengan value <b>Umum</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>stock</b> dengan value <b>100</b></li><li><b>lokasi_penyimpanan</b> dengan value <b>Lemari 3</b></li><li><b>tipe_bahan</b> dengan value <b>Tidak Habis Pakai</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (182, '::1', '', '2020-05-28 01:18:07', 'Mengedit Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>nama_bahan</b> dengan value <b>Kabel Lan</b></li><li><b>satuan_bahan</b> dengan value <b>Meter</b></li><li><b>kategori</b> dengan value <b>Umum</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>stock</b> dengan value <b>100</b></li><li><b>lokasi_penyimpanan</b> dengan value <b>Lemari 3</b></li><li><b>tipe_bahan</b> dengan value <b>Tidak Habis Pakai</b></li><li><b>kondisi</b> dengan value <b>Buruk</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (183, '::1', '', '2020-05-28 01:18:46', 'Mengedit Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama_bahan</b> dengan value <b>Kabel Lan</b></li><li><b>satuan_bahan</b> dengan value <b>Meter</b></li><li><b>kategori</b> dengan value <b>Umum</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>stock</b> dengan value <b>100</b></li><li><b>lokasi_penyimpanan</b> dengan value <b>Lemari 3</b></li><li><b>tipe_bahan</b> dengan value <b>Tidak Habis Pakai</b></li><li><b>kondisi</b> dengan value <b>Buruk</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (184, '::1', '', '2020-05-28 01:18:56', 'Mengedit Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama_bahan</b> dengan value <b>Kabel Lan</b></li><li><b>satuan_bahan</b> dengan value <b>Meter</b></li><li><b>kategori</b> dengan value <b>Umum</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>stock</b> dengan value <b>100</b></li><li><b>lokasi_penyimpanan</b> dengan value <b>Lemari 3</b></li><li><b>tipe_bahan</b> dengan value <b>Tidak Habis Pakai</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (185, '::1', '', '2020-05-28 22:10:52', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (186, '::1', '', '2020-05-29 08:10:49', 'Login  by kepala lab', 'kepala_lab01');
INSERT INTO `cms_log` VALUES (187, '::1', '', '2020-05-29 08:11:49', 'Logout SILADU by kepala lab', 'kepala_lab01');
INSERT INTO `cms_log` VALUES (188, '::1', '', '2020-05-29 08:12:06', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (189, '::1', '', '2020-05-29 09:55:38', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>kholis</b></li><li><b>username</b> dengan value <b>kholis</b></li><li><b>password</b> dengan value <b>*813002F7088C5B1BBF0A1CB75DD83CA8AE5CE931</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/c9bbd5b516fd82b52dea0368790a1967.jpg</b></li><li><b>no_hp</b> dengan value <b>088766899</b></li><li><b>alamat</b> dengan value <b>pengkol</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (190, '::1', '', '2020-05-29 10:10:55', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (191, '::1', '', '2020-05-29 10:11:10', 'Login  by kholis', 'kholis');
INSERT INTO `cms_log` VALUES (192, '::1', '', '2020-05-29 10:14:46', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>15</b></li><li><b>nama</b> dengan value <b>kholis</b></li><li><b>username</b> dengan value <b>kholis</b></li><li><b>password</b> dengan value <b>*8B72A61B6A0FD345E9206D636EB8B21BF204689D</b></li><li><b>no_hp</b> dengan value <b>088766899</b></li><li><b>alamat</b> dengan value <b>pengkol</b></li></ul>', 'kholis');
INSERT INTO `cms_log` VALUES (193, '::1', '', '2020-05-29 10:14:50', 'Logout SIONLAB by kholis', 'kholis');
INSERT INTO `cms_log` VALUES (194, '::1', '', '2020-05-29 10:15:47', 'Login  by kholis', 'kholis');
INSERT INTO `cms_log` VALUES (195, '::1', '', '2020-05-29 10:17:27', 'Logout SIONLAB by kholis', 'kholis');
INSERT INTO `cms_log` VALUES (196, '::1', '', '2020-05-29 10:17:44', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (197, '::1', '', '2020-05-29 11:25:13', 'Menghapus laporan dengan id 7', 'kholiq');
INSERT INTO `cms_log` VALUES (198, '::1', '', '2020-05-29 11:25:57', 'Menghapus laporan dengan id 11', 'kholiq');
INSERT INTO `cms_log` VALUES (199, '::1', '', '2020-05-29 11:26:02', 'Menghapus laporan dengan id 13', 'kholiq');
INSERT INTO `cms_log` VALUES (200, '::1', '', '2020-05-29 11:47:15', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>15</b></li><li><b>nama</b> dengan value <b>kholis</b></li><li><b>email</b> dengan value <b>mnurkholismajid66@students.unnes.ac.id</b></li><li><b>username</b> dengan value <b>kholis</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>088766899</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (201, '::1', '', '2020-05-29 11:48:04', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>wkwkwk</b></li><li><b>email</b> dengan value <b>wwwkkwkwk@gmail.com</b></li><li><b>username</b> dengan value <b>wkwkwkw</b></li><li><b>password</b> dengan value <b>*E6CC90B878B948C35E92B003C792C46C58C4AF40</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/e31e0255d173e709580cfd705c7e0e63.jpg</b></li><li><b>no_hp</b> dengan value <b>88900087</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (202, '::1', '', '2020-05-29 11:48:10', 'Menghapus laporan dengan id 16', 'kholiq');
INSERT INTO `cms_log` VALUES (203, '::1', '', '2020-05-29 12:47:53', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>15</b></li><li><b>nama</b> dengan value <b>kholis</b></li><li><b>email</b> dengan value <b>mnurkholismajid66@students.unnes.ac.id</b></li><li><b>username</b> dengan value <b>kholis</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>088766899</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (204, '::1', '', '2020-05-29 12:48:45', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (205, '::1', '', '2020-05-29 12:49:01', 'Login  by kholis', 'kholis');
INSERT INTO `cms_log` VALUES (206, '::1', '', '2020-05-29 12:49:42', 'Logout SIONLAB by kholis', 'kholis');
INSERT INTO `cms_log` VALUES (207, '::1', '', '2020-05-29 12:50:00', 'Login  by kholis', 'kholis');
INSERT INTO `cms_log` VALUES (208, '::1', '', '2020-05-29 12:54:48', 'Logout SIONLAB by kholis', 'kholis');
INSERT INTO `cms_log` VALUES (209, '::1', '', '2020-05-29 12:55:07', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (210, '::1', '', '2020-05-29 12:55:18', 'Menghapus laporan dengan id 2', 'kholiq');
INSERT INTO `cms_log` VALUES (211, '::1', '', '2020-05-29 12:55:21', 'Menghapus laporan dengan id 3', 'kholiq');
INSERT INTO `cms_log` VALUES (212, '::1', '', '2020-05-29 12:55:26', 'Menghapus laporan dengan id 8', 'kholiq');
INSERT INTO `cms_log` VALUES (213, '::1', '', '2020-05-29 12:55:29', 'Menghapus laporan dengan id 9', 'kholiq');
INSERT INTO `cms_log` VALUES (214, '::1', '', '2020-05-29 12:55:31', 'Menghapus laporan dengan id 10', 'kholiq');
INSERT INTO `cms_log` VALUES (215, '::1', '', '2020-05-29 12:55:33', 'Menghapus laporan dengan id 12', 'kholiq');
INSERT INTO `cms_log` VALUES (216, '::1', '', '2020-05-29 12:55:34', 'Menghapus laporan dengan id 14', 'kholiq');
INSERT INTO `cms_log` VALUES (217, '::1', '', '2020-05-29 13:00:34', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>password</b> dengan value <b>*6D45FD76D5E9C6A404E39C25106A7F032659ACB8</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/24dfeeb34e92bc2ddf1aca0bf3c2ce98.jpg</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (218, '::1', '', '2020-05-29 13:04:43', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>kepala_lab</b></li><li><b>email</b> dengan value <b>kepala_lab</b></li><li><b>username</b> dengan value <b>kepala_lab</b></li><li><b>password</b> dengan value <b>*9575C0046B29C853A98731B0053B780947E0524B</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/b9bc5717ad559fdd46b73b0c369b089a.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (219, '::1', '', '2020-05-29 13:05:29', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>laboran</b></li><li><b>email</b> dengan value <b>laboran</b></li><li><b>username</b> dengan value <b>laboran</b></li><li><b>password</b> dengan value <b>*C7E1AAB5C1E92CE2835AB5E35BC54EAC2D290817</b></li><li><b>level</b> dengan value <b>4</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/21c379d76f68969567b1b2e5c40e48f3.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (220, '::1', '', '2020-05-29 13:06:32', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>koordinator_lab</b></li><li><b>email</b> dengan value <b>koordinator_lab</b></li><li><b>username</b> dengan value <b>koordinator_lab</b></li><li><b>password</b> dengan value <b>*EC2A9F2AC0FF65E0B34FB7C1CE20030855EFF156</b></li><li><b>level</b> dengan value <b>5</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/ae5395d6d32f2bbdfc3a08767e41152d.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (221, '::1', '', '2020-05-29 13:07:20', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>asisten</b></li><li><b>email</b> dengan value <b>asisten</b></li><li><b>username</b> dengan value <b>asisten</b></li><li><b>password</b> dengan value <b>*34D4F44511DF537724AECB9C20245800A653C680</b></li><li><b>level</b> dengan value <b>6</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/ea2fbde56d3e1f0a302267e4d4f7b04f.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (222, '::1', '', '2020-05-29 13:07:59', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>password</b> dengan value <b>*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/69b47bbede1893d66edd2d40a62995b6.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (223, '::1', '', '2020-05-29 13:08:51', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>mahasiswa</b></li><li><b>email</b> dengan value <b>mahasiswa</b></li><li><b>username</b> dengan value <b>mahasiswa</b></li><li><b>password</b> dengan value <b>*58B1E0151C7DBF4DF0D59581B6C5C4E031D9F62A</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/3448f7f0daa177766c9142c47441a803.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (224, '::1', '', '2020-05-29 13:09:04', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (225, '::1', '', '2020-05-29 13:09:24', 'Login  by mahasiswa', 'mahasiswa');
INSERT INTO `cms_log` VALUES (226, '::1', '', '2020-05-29 13:10:14', 'Logout SIONLAB by mahasiswa', 'mahasiswa');
INSERT INTO `cms_log` VALUES (227, '::1', '', '2020-05-29 13:10:34', 'Login  by admin', 'admin');
INSERT INTO `cms_log` VALUES (228, '::1', '', '2020-05-29 13:12:13', 'Logout SIONLAB by admin', 'admin');
INSERT INTO `cms_log` VALUES (229, '::1', '', '2020-05-29 13:12:29', 'Login  by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (230, '::1', '', '2020-05-29 13:16:58', 'Logout SIONLAB by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (231, '::1', '', '2020-05-29 13:17:15', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (232, '::1', '', '2020-05-29 13:23:54', 'Menghapus laporan dengan id 22', 'kholiq');
INSERT INTO `cms_log` VALUES (233, '::1', '', '2020-05-29 13:24:30', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>password</b> dengan value <b>*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/05/181ad34638551080659d5a56b4e439b9.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (234, '::1', '', '2020-05-29 13:24:43', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>24</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>2</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (235, '::1', '', '2020-05-29 13:26:51', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>24</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>0</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (236, '::1', '', '2020-05-29 13:30:42', 'Menghapus laporan dengan id 15', 'kholiq');
INSERT INTO `cms_log` VALUES (237, '::1', '', '2020-05-29 13:30:57', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (238, '::1', '', '2020-05-29 13:31:07', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>nama</b> dengan value <b>kepala_lab</b></li><li><b>email</b> dengan value <b>kepala_lab</b></li><li><b>username</b> dengan value <b>kepala_lab</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (239, '::1', '', '2020-05-29 13:31:18', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>19</b></li><li><b>nama</b> dengan value <b>laboran</b></li><li><b>email</b> dengan value <b>laboran</b></li><li><b>username</b> dengan value <b>laboran</b></li><li><b>level</b> dengan value <b>4</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (240, '::1', '', '2020-05-29 13:32:51', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>20</b></li><li><b>nama</b> dengan value <b>koordinator_lab</b></li><li><b>email</b> dengan value <b>koordinator_lab</b></li><li><b>username</b> dengan value <b>koordinator_lab</b></li><li><b>level</b> dengan value <b>5</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (241, '::1', '', '2020-05-29 13:32:59', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>21</b></li><li><b>nama</b> dengan value <b>asisten</b></li><li><b>email</b> dengan value <b>asisten</b></li><li><b>username</b> dengan value <b>asisten</b></li><li><b>level</b> dengan value <b>6</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (242, '::1', '', '2020-05-29 13:33:06', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>23</b></li><li><b>nama</b> dengan value <b>mahasiswa</b></li><li><b>email</b> dengan value <b>mahasiswa</b></li><li><b>username</b> dengan value <b>mahasiswa</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (243, '::1', '', '2020-05-29 13:33:12', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>24</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (244, '::1', '', '2020-05-29 13:45:53', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (245, '::1', '', '2020-05-29 13:46:12', 'Login  by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (246, '::1', '', '2020-05-29 13:50:06', 'Logout SIONLAB by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (247, '::1', '', '2020-05-29 13:50:26', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (248, '::1', '', '2020-05-29 13:50:40', 'Menghapus laporan dengan id 1', 'kholiq');
INSERT INTO `cms_log` VALUES (249, '::1', '', '2020-05-29 13:50:54', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Kategori 1</b></li><li><b>keterangan</b> dengan value <b>Alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (250, '::1', '', '2020-05-29 13:51:09', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Kategori 2</b></li><li><b>keterangan</b> dengan value <b>Bahan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (251, '::1', '', '2020-05-29 13:57:00', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (252, '::1', '', '2020-05-29 14:29:37', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>kholis</b></li><li><b>email</b> dengan value <b>kholis</b></li><li><b>username</b> dengan value <b>kholis</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*8B72A61B6A0FD345E9206D636EB8B21BF204689D</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/05/878d88ce02e175e7fdd4970355e3a743.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (253, '::1', '', '2020-05-29 14:29:58', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (254, '::1', '', '2020-05-29 14:30:14', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (255, '::1', '', '2020-05-29 14:32:28', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (256, '::1', '', '2020-05-29 14:35:27', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>nama</b> dengan value <b>kepala_lab</b></li><li><b>email</b> dengan value <b>kepala_lab</b></li><li><b>username</b> dengan value <b>kepala_lab</b></li><li><b>jenis_kelamin</b> dengan value <b>2</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (257, '::1', '', '2020-05-29 15:03:29', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (258, '::1', '', '2020-05-29 15:03:47', 'Login  by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (259, '::1', '', '2020-05-29 15:04:00', 'Logout SIONLAB by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (260, '::1', '', '2020-05-29 15:04:29', 'Login  by admin', 'admin');
INSERT INTO `cms_log` VALUES (261, '::1', '', '2020-05-29 15:04:44', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>19</b></li><li><b>nama</b> dengan value <b>laboran</b></li><li><b>email</b> dengan value <b>laboran</b></li><li><b>username</b> dengan value <b>laboran</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>4</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES (262, '::1', '', '2020-05-29 15:04:57', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>20</b></li><li><b>nama</b> dengan value <b>koordinator_lab</b></li><li><b>email</b> dengan value <b>koordinator_lab</b></li><li><b>username</b> dengan value <b>koordinator_lab</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>5</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES (263, '::1', '', '2020-05-29 15:05:08', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>21</b></li><li><b>nama</b> dengan value <b>asisten</b></li><li><b>email</b> dengan value <b>asisten</b></li><li><b>username</b> dengan value <b>asisten</b></li><li><b>jenis_kelamin</b> dengan value <b>2</b></li><li><b>level</b> dengan value <b>6</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES (264, '::1', '', '2020-05-29 15:05:17', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>23</b></li><li><b>nama</b> dengan value <b>mahasiswa</b></li><li><b>email</b> dengan value <b>mahasiswa</b></li><li><b>username</b> dengan value <b>mahasiswa</b></li><li><b>jenis_kelamin</b> dengan value <b>2</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES (265, '::1', '', '2020-05-29 15:05:31', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>24</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>jenis_kelamin</b> dengan value <b>2</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES (266, '::1', '', '2020-05-29 18:06:53', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (267, '::1', '', '2020-05-29 18:16:41', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>0</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (268, '::1', '', '2020-05-29 18:17:05', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (269, '::1', '', '2020-05-29 18:17:20', 'Login  by admin', 'admin');
INSERT INTO `cms_log` VALUES (270, '::1', '', '2020-05-29 21:57:49', 'Logout SIONLAB by ', 'Tamu');
INSERT INTO `cms_log` VALUES (271, '::1', '', '2020-05-29 21:58:09', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (272, '::1', '', '2020-05-29 23:11:49', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (273, '::1', '', '2020-05-29 23:12:08', 'Login  by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (274, '::1', '', '2020-05-29 23:12:31', 'Logout SILADU by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (275, '::1', '', '2020-05-29 23:13:06', 'Login  by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (276, '::1', '', '2020-05-29 23:18:10', 'Logout SIONLAB by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (277, '::1', '', '2020-05-29 23:18:42', 'Login  by admin', 'admin');
INSERT INTO `cms_log` VALUES (278, '::1', '', '2020-05-29 23:19:57', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES (279, '::1', '', '2020-05-29 23:21:50', 'Menghapus laporan dengan id 25', 'admin');
INSERT INTO `cms_log` VALUES (280, '::1', '', '2020-05-29 23:21:59', 'Menghapus laporan dengan id 24', 'admin');
INSERT INTO `cms_log` VALUES (281, '::1', '', '2020-05-29 23:23:25', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/05/90b4b3bfd44f5c07ff9a1c92c0878955.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES (282, '::1', '', '2020-05-31 22:48:27', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (283, '::1', '', '2020-06-01 19:15:05', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (284, '::1', '', '2020-06-01 19:46:46', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (285, '::1', '', '2020-06-01 19:47:29', 'Login  by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (286, '::1', '', '2020-06-02 00:19:17', 'Login  by admin', 'admin');
INSERT INTO `cms_log` VALUES (287, '::1', '', '2020-06-02 00:38:02', 'Logout SIONLAB by admin', 'admin');
INSERT INTO `cms_log` VALUES (288, '::1', '', '2020-06-02 00:38:19', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (289, '::1', '', '2020-06-03 18:46:02', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (290, '::1', '', '2020-06-03 18:48:20', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (291, '::1', '', '2020-06-03 18:48:37', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (292, '::1', '', '2020-06-03 19:04:15', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*5A562BB3AE4DEB9E61FD707484C323DE11989E4F</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/59213f4a0c4e3451ac877b1c924f8c84.jpg</b></li><li><b>no_hp</b> dengan value <b>89</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (293, '::1', '', '2020-06-03 19:16:28', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/a772243507dbfb0bf5321f212f60e4f2.jpg</b></li><li><b>no_hp</b> dengan value <b>89</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (294, '::1', '', '2020-06-03 19:33:46', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (295, '::1', '', '2020-06-03 19:39:15', 'Login  by admin', 'admin');
INSERT INTO `cms_log` VALUES (296, '::1', '', '2020-06-03 19:41:21', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>0</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES (297, '::1', '', '2020-06-03 19:41:28', 'Logout SIONLAB by admin', 'admin');
INSERT INTO `cms_log` VALUES (298, '::1', '', '2020-06-03 19:41:44', 'Login  by admin', 'admin');
INSERT INTO `cms_log` VALUES (299, '::1', '', '2020-06-03 19:45:08', 'Logout SIONLAB by admin', 'admin');
INSERT INTO `cms_log` VALUES (300, '::1', '', '2020-06-03 19:45:47', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (301, '::1', '', '2020-06-03 19:46:32', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (302, '::1', '', '2020-06-03 19:46:57', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (303, '::1', '', '2020-06-03 19:47:29', 'Menghapus laporan dengan id 26', 'kholiq');
INSERT INTO `cms_log` VALUES (304, '::1', '', '2020-06-03 19:48:32', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/bbc11d3ea2db9009ba44a5c1763ab675.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (305, '::1', '', '2020-06-03 19:48:38', 'Menghapus laporan dengan id 29', 'kholiq');
INSERT INTO `cms_log` VALUES (306, '::1', '', '2020-06-03 19:50:12', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/106292ac4c5fa37adf7eb3cc11880936.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (307, '::1', '', '2020-06-03 19:51:33', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (308, '::1', '', '2020-06-03 19:51:51', 'Login  by admin', 'admin');
INSERT INTO `cms_log` VALUES (309, '::1', '', '2020-06-03 20:40:43', 'Logout SIONLAB by admin', 'admin');
INSERT INTO `cms_log` VALUES (310, '::1', '', '2020-06-03 20:40:59', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (311, '::1', '', '2020-06-03 21:26:29', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (312, '::1', '', '2020-06-03 21:26:43', 'Login  by admin', 'admin');
INSERT INTO `cms_log` VALUES (313, '::1', '', '2020-06-03 21:48:04', 'Logout SIONLAB by admin', 'admin');
INSERT INTO `cms_log` VALUES (314, '::1', '', '2020-06-03 21:48:20', 'Login  by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (315, '::1', '', '2020-06-03 21:51:44', 'Logout SIONLAB by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (316, '::1', '', '2020-06-03 21:51:58', 'Login  by admin', 'admin');
INSERT INTO `cms_log` VALUES (317, '::1', '', '2020-06-03 22:42:20', 'Logout SILADU by admin', 'admin');
INSERT INTO `cms_log` VALUES (318, '::1', '', '2020-06-03 22:42:42', 'Login  by mahasiswa', 'mahasiswa');
INSERT INTO `cms_log` VALUES (319, '::1', '', '2020-06-03 22:45:44', 'Logout SILADU by mahasiswa', 'mahasiswa');
INSERT INTO `cms_log` VALUES (320, '::1', '', '2020-06-03 22:45:59', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (321, '::1', '', '2020-06-03 22:54:50', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (322, '::1', '', '2020-06-03 22:55:40', 'Login  by koordinator_lab', 'koordinator_lab');
INSERT INTO `cms_log` VALUES (323, '::1', '', '2020-06-03 22:56:03', 'Logout SILADU by koordinator_lab', 'koordinator_lab');
INSERT INTO `cms_log` VALUES (324, '::1', '', '2020-06-03 22:56:41', 'Login  by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (325, '::1', '', '2020-06-03 22:56:47', 'Logout SILADU by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (326, '::1', '', '2020-06-03 22:57:10', 'Login  by koordinator_lab', 'koordinator_lab');
INSERT INTO `cms_log` VALUES (327, '::1', '', '2020-06-03 22:57:21', 'Logout SILADU by koordinator_lab', 'koordinator_lab');
INSERT INTO `cms_log` VALUES (328, '::1', '', '2020-06-03 22:57:54', 'Login  by asisten', 'asisten');
INSERT INTO `cms_log` VALUES (329, '::1', '', '2020-06-03 22:58:09', 'Logout SILADU by asisten', 'asisten');
INSERT INTO `cms_log` VALUES (330, '::1', '', '2020-06-03 22:58:45', 'Login  by asisten', 'asisten');
INSERT INTO `cms_log` VALUES (331, '::1', '', '2020-06-03 22:58:57', 'Logout SILADU by asisten', 'asisten');
INSERT INTO `cms_log` VALUES (332, '::1', '', '2020-06-03 22:59:18', 'Login  by koordinator_lab', 'koordinator_lab');
INSERT INTO `cms_log` VALUES (333, '::1', '', '2020-06-03 22:59:37', 'Logout SILADU by koordinator_lab', 'koordinator_lab');
INSERT INTO `cms_log` VALUES (334, '::1', '', '2020-06-03 22:59:54', 'Login  by admin', 'admin');
INSERT INTO `cms_log` VALUES (335, '::1', '', '2020-06-03 23:00:52', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>kholis</b></li><li><b>email</b> dengan value <b>mnurkholismajid66@students.unnes.ac.id</b></li><li><b>username</b> dengan value <b>kholi2</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*8B72A61B6A0FD345E9206D636EB8B21BF204689D</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/3ebd97eb13ee6c461f93687583038aba.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES (336, '::1', '', '2020-06-03 23:01:01', 'Logout SILADU by admin', 'admin');
INSERT INTO `cms_log` VALUES (337, '::1', '', '2020-06-03 23:01:25', 'Login  by kholis', 'kholi2');
INSERT INTO `cms_log` VALUES (338, '::1', '', '2020-06-03 23:01:40', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>31</b></li><li><b>nama</b> dengan value <b>kholis</b></li><li><b>email</b> dengan value <b>mnurkholismajid66@students.unnes.ac.id</b></li><li><b>username</b> dengan value <b>kholis2</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholi2');
INSERT INTO `cms_log` VALUES (339, '::1', '', '2020-06-03 23:01:46', 'Logout SILADU by kholis', 'kholi2');
INSERT INTO `cms_log` VALUES (340, '::1', '', '2020-06-03 23:02:02', 'Login  by kholis', 'kholis2');
INSERT INTO `cms_log` VALUES (341, '::1', '', '2020-06-03 23:02:07', 'Logout SILADU by kholis', 'kholis2');
INSERT INTO `cms_log` VALUES (342, '::1', '', '2020-06-03 23:02:21', 'Login  by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (343, '::1', '', '2020-06-03 23:02:27', 'Logout SILADU by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (344, '::1', '', '2020-06-03 23:02:43', 'Login  by mahasiswa', 'mahasiswa');
INSERT INTO `cms_log` VALUES (345, '::1', '', '2020-06-03 23:03:21', 'Logout SILADU by mahasiswa', 'mahasiswa');
INSERT INTO `cms_log` VALUES (346, '::1', '', '2020-06-03 23:03:41', 'Login  by admin', 'admin');
INSERT INTO `cms_log` VALUES (347, '::1', '', '2020-06-03 23:04:01', 'Menghapus laporan dengan id 31', 'admin');
INSERT INTO `cms_log` VALUES (348, '::1', '', '2020-06-03 23:04:48', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>kholis</b></li><li><b>email</b> dengan value <b>kholis</b></li><li><b>username</b> dengan value <b>kholis</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*5BEE99044580ED345557DFE1AECA212F5F4327CC</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/46d165093f9bdbf75da466c295707091.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES (349, '::1', '', '2020-06-03 23:04:55', 'Logout SILADU by admin', 'admin');
INSERT INTO `cms_log` VALUES (350, '::1', '', '2020-06-03 23:05:13', 'Login  by kholis', 'kholis');
INSERT INTO `cms_log` VALUES (351, '::1', '', '2020-06-03 23:06:55', 'Logout SILADU by kholis', 'kholis');
INSERT INTO `cms_log` VALUES (352, '::1', '', '2020-06-03 23:08:48', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (353, '::1', '', '2020-06-04 00:00:25', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>5</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>3</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (354, '::1', '', '2020-06-04 00:20:12', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Universitas</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (355, '::1', '', '2020-06-04 00:20:16', 'Menghapus laporan dengan id 4', 'kholiq');
INSERT INTO `cms_log` VALUES (356, '::1', '', '2020-06-04 00:20:29', 'Menambah Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>nama_satuan</b> dengan value <b>Meter</b></li><li><b>keterangan</b> dengan value <b>Meter</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (357, '::1', '', '2020-06-04 00:20:32', 'Menghapus laporan dengan id 2', 'kholiq');
INSERT INTO `cms_log` VALUES (358, '::1', '', '2020-06-04 00:20:57', 'Menambah Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>234</b></li><li><b>jenis_bahan</b> dengan value <b>akwkw</b></li><li><b>nama_bahan</b> dengan value <b>awaea</b></li><li><b>tahun</b> dengan value <b>2090</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (359, '::1', '', '2020-06-04 00:21:45', 'Menghapus laporan dengan id 3', 'kholiq');
INSERT INTO `cms_log` VALUES (360, '::1', '', '2020-06-04 00:22:10', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>234</b></li><li><b>nama_alat</b> dengan value <b>dffeaad</b></li><li><b>keterangan</b> dengan value <b>adda</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (361, '::1', '', '2020-06-04 00:22:12', 'Menghapus laporan dengan id 3', 'kholiq');
INSERT INTO `cms_log` VALUES (362, '::1', '', '2020-06-04 00:22:22', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Kategori 1</b></li><li><b>keterangan</b> dengan value <b>Alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (363, '::1', '', '2020-06-04 00:22:24', 'Menghapus laporan dengan id 7', 'kholiq');
INSERT INTO `cms_log` VALUES (364, '::1', '', '2020-06-04 19:45:11', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (365, '::1', '', '2020-06-04 19:48:35', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (366, '::1', '', '2020-06-04 19:48:55', 'Login  by mahasiswa', 'mahasiswa');
INSERT INTO `cms_log` VALUES (367, '::1', '', '2020-06-04 19:49:12', 'Logout SILADU by mahasiswa', 'mahasiswa');
INSERT INTO `cms_log` VALUES (368, '::1', '', '2020-06-05 10:46:19', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (369, '::1', '', '2020-06-05 11:45:26', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (370, '::1', '', '2020-06-05 12:42:05', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (371, '::1', '', '2020-06-05 12:42:36', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (372, '::1', '', '2020-06-07 13:30:23', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (373, '::1', '', '2020-06-07 13:30:50', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (374, '::1', '', '2020-06-07 15:01:16', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>Kampus Sekaran, Gunungpati, Semarang</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (375, '::1', '', '2020-06-07 15:01:30', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>Kampus Sekaran, Gunungpati, Semarang</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (376, '::1', '', '2020-06-09 13:54:02', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (377, '::1', '', '2020-06-09 20:12:39', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (378, '::1', '', '2020-06-09 21:08:48', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>56789</b></li><li><b>semester</b> dengan value <b>Semester4</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-08</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-008</b></li><li><b>pajak</b> dengan value <b>100.0000</b></li><li><b>status_pengajuan</b> dengan value <b>Sudah Turun</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (379, '::1', '', '2020-06-09 21:28:33', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>567</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-08</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-08</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (380, '::1', '', '2020-06-09 21:29:42', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>221563213</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-08</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-08</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>Aktif</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (381, '::1', '', '2020-06-09 21:34:02', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5676234</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-17</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-08</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>Aktif</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (382, '::1', '', '2020-06-09 21:34:15', 'Menghapus laporan dengan id 1', 'kholiq');
INSERT INTO `cms_log` VALUES (383, '::1', '', '2020-06-09 21:34:18', 'Menghapus laporan dengan id 2', 'kholiq');
INSERT INTO `cms_log` VALUES (384, '::1', '', '2020-06-09 21:34:21', 'Menghapus laporan dengan id 567', 'kholiq');
INSERT INTO `cms_log` VALUES (385, '::1', '', '2020-06-09 21:34:48', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>314314653</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-10</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-08</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>Aktif</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (386, '::1', '', '2020-06-09 21:42:46', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>145344678</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-12</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-12</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>Aktif</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (387, '::1', '', '2020-06-09 21:44:01', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>145344678</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-12</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-12</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>Aktif</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (388, '::1', '', '2020-06-09 21:44:07', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>145344678</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-12</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-12</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>Aktif</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (389, '::1', '', '2020-06-09 21:49:48', 'Menghapus laporan dengan id 56789', 'kholiq');
INSERT INTO `cms_log` VALUES (390, '::1', '', '2020-06-09 22:07:35', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Universitas</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (391, '::1', '', '2020-06-09 22:28:09', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5676234</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-17</b></li><li><b>sumber_pendanaan</b> dengan value <b>4</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-08</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (392, '::1', '', '2020-06-09 22:28:30', 'Mengedit Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>status</b> dengan value <b>tidak ada</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (393, '::1', '', '2020-06-09 22:34:23', 'Mengedit Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (394, '::1', '', '2020-06-10 10:45:55', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (395, '::1', '', '2020-06-10 12:55:11', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Bos</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (396, '::1', '', '2020-06-10 13:10:53', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>wkwkwkw</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (397, '::1', '', '2020-06-10 13:29:29', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>125455163</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-12</b></li><li><b>sumber_pendanaan</b> dengan value <b>4</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-12</b></li><li><b>pajak</b> dengan value <b>20000</b></li><li><b>status_pengajuan</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (398, '::1', '', '2020-06-10 13:29:45', 'Menghapus laporan dengan id 5676234', 'kholiq');
INSERT INTO `cms_log` VALUES (399, '::1', '', '2020-06-10 13:29:47', 'Menghapus laporan dengan id 145344678', 'kholiq');
INSERT INTO `cms_log` VALUES (400, '::1', '', '2020-06-10 13:29:49', 'Menghapus laporan dengan id 221563213', 'kholiq');
INSERT INTO `cms_log` VALUES (401, '::1', '', '2020-06-10 13:29:50', 'Menghapus laporan dengan id 314314653', 'kholiq');
INSERT INTO `cms_log` VALUES (402, '::1', '', '2020-06-10 13:30:25', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>135145763</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-27</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-08-27</b></li><li><b>pajak</b> dengan value <b>230000</b></li><li><b>status_pengajuan</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (403, '::1', '', '2020-06-10 13:54:58', 'Menghapus laporan dengan id 7', 'kholiq');
INSERT INTO `cms_log` VALUES (404, '::1', '', '2020-06-10 13:55:18', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>5</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>3</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (405, '::1', '', '2020-06-10 14:39:13', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (406, '::1', '', '2020-06-10 14:39:35', 'Login  by kepala_lab', 'kepala_lab');
INSERT INTO `cms_log` VALUES (407, '::1', '', '2020-06-10 14:43:35', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>nama</b> dengan value <b>kepala_lab</b></li><li><b>email</b> dengan value <b>kepala_lab</b></li><li><b>username</b> dengan value <b>kepala_lab</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kepala_lab');
INSERT INTO `cms_log` VALUES (408, '::1', '', '2020-06-10 14:43:57', 'Logout SIONLAB by kepala_lab', 'kepala_lab');
INSERT INTO `cms_log` VALUES (409, '::1', '', '2020-06-10 14:45:08', 'Login  by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (410, '::1', '', '2020-06-10 14:52:59', 'Logout SILADU by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (411, '::1', '', '2020-06-10 14:56:15', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (412, '::1', '', '2020-06-10 16:00:32', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (413, '::1', '', '2020-06-10 16:35:06', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (414, '::1', '', '2020-06-10 16:40:42', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (415, '::1', '', '2020-06-10 16:40:58', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (416, '::1', '', '2020-06-10 16:45:40', 'Logout SIONLAB by ', 'Tamu');
INSERT INTO `cms_log` VALUES (417, '::1', '', '2020-06-10 16:49:33', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (418, '::1', '', '2020-06-10 16:51:51', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (419, '::1', '', '2020-06-10 17:05:21', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (420, '::1', '', '2020-06-10 17:11:10', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (421, '::1', '', '2020-06-10 17:30:32', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (422, '::1', '', '2020-06-10 18:02:54', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (423, '::1', '', '2020-06-11 21:16:14', 'Logout SIONLAB by owner', 'owner');
INSERT INTO `cms_log` VALUES (424, '::1', '', '2020-06-11 21:16:28', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (425, '::1', '', '2020-06-11 21:19:48', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/68c022d8d0fbf6af2199927280693eb9.jpg</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (426, '::1', '', '2020-06-11 21:33:32', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>10</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (427, '::1', '', '2020-06-11 21:33:52', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>nama</b> dengan value <b>kepala_lab</b></li><li><b>username</b> dengan value <b>kepala_lab</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/0e802dc5f90f4231cd237316050681f9.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (428, '::1', '', '2020-06-11 21:36:57', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/576a50bf0edd4d7069d9906e9336c4a7.jpg</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (429, '::1', '', '2020-06-11 21:37:22', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>nama</b> dengan value <b>kepala_lab</b></li><li><b>username</b> dengan value <b>kepala_lab</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/39ca34393219a932cd256cc8cb96e6e8.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (430, '::1', '', '2020-06-11 21:37:42', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>nama</b> dengan value <b>kepala_lab</b></li><li><b>username</b> dengan value <b>kepala_lab</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>kepala_lab</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (431, '::1', '', '2020-06-11 21:37:54', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>admin</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (432, '::1', '', '2020-06-11 22:04:29', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/74bbfb7f282eece236109fc039485988.jpg</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (433, '::1', '', '2020-06-11 22:05:29', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>admin</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (434, '::1', '', '2020-06-11 22:05:40', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/e71f42a5047c20fef37a39a3b54f25e4.jpg</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (435, '::1', '', '2020-06-12 06:29:49', 'Logout SILADU by ', 'Tamu');
INSERT INTO `cms_log` VALUES (436, '::1', '', '2020-06-12 06:30:53', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (437, '::1', '', '2020-06-12 06:38:42', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stock</b> dengan value <b>10</b></li><li><b>stock_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>4</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (438, '::1', '', '2020-06-12 06:52:35', 'Logout SILADU by owner', 'owner');
INSERT INTO `cms_log` VALUES (439, '::1', '', '2020-06-12 06:52:52', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (440, '::1', '', '2020-06-12 08:48:33', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (441, '::1', '', '2020-06-12 08:48:50', 'Login  by admin', 'admin');
INSERT INTO `cms_log` VALUES (442, '::1', '', '2020-06-12 09:33:47', 'Logout SIONLAB by admin', 'admin');
INSERT INTO `cms_log` VALUES (443, '::1', '', '2020-06-12 09:34:03', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (444, '::1', '', '2020-06-12 09:38:14', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (445, '::1', '', '2020-06-12 09:42:40', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (446, '::1', '', '2020-06-12 09:56:17', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (447, '::1', '', '2020-06-12 10:13:09', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (448, '::1', '', '2020-06-12 11:00:49', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (449, '::1', '', '2020-06-12 11:01:02', 'Login  by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (450, '::1', '', '2020-06-12 11:01:21', 'Logout SIONLAB by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (451, '::1', '', '2020-06-12 11:01:37', 'Login  by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (452, '::1', '', '2020-06-12 11:22:32', 'Logout SIONLAB by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (453, '::1', '', '2020-06-12 11:22:48', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (454, '::1', '', '2020-06-12 18:48:00', 'Logout SILADU by ', 'Tamu');
INSERT INTO `cms_log` VALUES (455, '::1', '', '2020-06-13 02:59:53', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>200</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>819309</b></li></ul>', 'psdp');
INSERT INTO `cms_log` VALUES (456, '::1', '', '2020-06-13 03:00:03', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>200</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'psdp');
INSERT INTO `cms_log` VALUES (457, '::1', '', '2020-06-13 03:47:56', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>5</b></li><li><b>stok</b> dengan value <b>1000</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>800000</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'psdp');
INSERT INTO `cms_log` VALUES (458, '::1', '', '2020-06-13 12:24:13', 'Logout SILADU by psdp', 'psdp');
INSERT INTO `cms_log` VALUES (459, '::1', '', '2020-06-13 12:24:33', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (460, '::1', '', '2020-06-13 20:06:16', 'Logout SILADU by ', 'Tamu');
INSERT INTO `cms_log` VALUES (461, '::1', '', '2020-06-13 20:06:35', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (462, '::1', '', '2020-06-13 20:08:01', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (463, '::1', '', '2020-06-13 20:08:36', 'Login  by mahasiswa', 'mahasiswa');
INSERT INTO `cms_log` VALUES (464, '::1', '', '2020-06-14 02:08:58', 'Logout SILADU by Kupret', 'owner');
INSERT INTO `cms_log` VALUES (465, '::1', '', '2020-06-14 02:09:23', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (466, '::1', '', '2020-06-14 14:54:29', 'Logout SILADU by psdp', 'psdp');
INSERT INTO `cms_log` VALUES (467, '::1', '', '2020-06-14 14:54:46', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (468, '::1', '', '2020-06-14 14:58:47', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (469, '::1', '', '2020-06-17 14:14:58', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (470, '::1', '', '2020-06-17 19:15:49', 'Logout SILADU by ', 'Tamu');
INSERT INTO `cms_log` VALUES (471, '::1', '', '2020-06-17 19:16:02', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (472, '::1', '', '2020-06-18 09:53:17', 'Logout SILADU by ', 'Tamu');
INSERT INTO `cms_log` VALUES (473, '::1', '', '2020-06-18 09:53:57', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (474, '::1', '', '2020-06-19 00:03:47', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (475, '::1', '', '2020-06-21 17:18:50', 'Logout SILADU by ', 'Tamu');
INSERT INTO `cms_log` VALUES (476, '::1', '', '2020-06-21 17:19:34', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (477, '::1', '', '2020-06-21 17:19:34', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (478, '::1', '', '2020-06-25 20:11:41', 'Logout SILADU by ', 'Tamu');
INSERT INTO `cms_log` VALUES (479, '::1', '', '2020-06-25 20:12:54', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (480, '::1', '', '2020-06-25 20:22:52', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (481, '::1', '', '2020-06-25 20:23:23', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (482, '::1', '', '2020-06-25 20:42:43', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (483, '::1', '', '2020-06-25 21:26:02', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (484, '::1', '', '2020-06-25 21:31:33', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (485, '::1', '', '2020-06-25 21:47:41', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (486, '::1', '', '2020-06-25 22:02:17', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (487, '::1', '', '2020-06-25 22:07:09', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (488, '::1', '', '2020-06-25 22:56:50', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (489, '::1', '', '2020-06-26 00:28:23', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (490, '::1', '', '2020-06-26 07:56:43', 'Logout SIONLAB by ', 'Tamu');
INSERT INTO `cms_log` VALUES (491, '::1', '', '2020-06-26 08:18:02', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (492, '::1', '', '2020-06-26 08:18:31', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>30</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>0</b></li><li><b>no_hp</b> dengan value <b>9</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>dosen</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (493, '::1', '', '2020-06-26 08:18:37', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (494, '::1', '', '2020-06-26 08:21:36', 'Login  by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (495, '::1', '', '2020-06-26 08:27:11', 'Logout SIONLAB by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (496, '::1', '', '2020-06-26 08:27:26', 'Login  by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (497, '::1', '', '2020-06-26 08:27:39', 'Logout SIONLAB by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (498, '::1', '', '2020-06-26 08:32:21', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (499, '::1', '', '2020-06-26 08:38:43', 'Logout SIONLAB by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (500, '::1', '', '2020-06-26 08:43:55', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (501, '::1', '', '2020-06-26 09:12:36', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-JN-20062600000</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-26</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-06-26</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (502, '::1', '', '2020-06-26 09:13:55', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-JN-20062600000</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-26</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-06-26</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>4</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (503, '::1', '', '2020-06-26 12:25:12', 'Logout SILADU by ', 'Tamu');
INSERT INTO `cms_log` VALUES (504, '::1', '', '2020-06-26 12:29:19', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (505, '::1', '', '2020-06-26 12:43:47', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (506, '::1', '', '2020-06-26 12:44:04', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (507, '::1', '', '2020-06-26 19:45:17', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (508, '::1', '', '2020-06-27 13:08:12', 'Logout SILADU by ', 'Tamu');
INSERT INTO `cms_log` VALUES (509, '::1', '', '2020-06-27 13:11:00', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (510, '::1', '', '2020-06-27 13:11:29', 'Menghapus laporan dengan id 135145764', 'kholiq');
INSERT INTO `cms_log` VALUES (511, '::1', '', '2020-06-27 13:11:30', 'Menghapus laporan dengan id 135145765', 'kholiq');
INSERT INTO `cms_log` VALUES (512, '::1', '', '2020-06-27 13:18:30', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (513, '::1', '', '2020-06-27 13:18:44', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (514, '::1', '', '2020-06-27 13:32:27', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2090</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (515, '::1', '', '2020-06-27 13:34:01', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stock</b> dengan value <b>10</b></li><li><b>stock_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>4</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>Tidak cepat habis</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (516, '::1', '', '2020-06-27 13:47:19', 'Menghapus laporan dengan id 1', 'kholiq');
INSERT INTO `cms_log` VALUES (517, '::1', '', '2020-06-27 13:47:38', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>nama_bahan</b> dengan value <b>wgjbh</b></li><li><b>seri_bahan</b> dengan value <b>fabnj</b></li><li><b>jenis_bahan</b> dengan value <b>dvsjh</b></li><li><b>stock_minimal</b> dengan value <b>5</b></li><li><b>stock_ini</b> dengan value <b>5</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (518, '::1', '', '2020-06-27 14:10:20', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-27</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-06-27</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (519, '::1', '', '2020-06-27 14:13:09', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062700000</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-27</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-06-27</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (520, '::1', '', '2020-06-27 14:13:49', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062700001</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-28</b></li><li><b>sumber_pendanaan</b> dengan value <b>4</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-08-27</b></li><li><b>pajak</b> dengan value <b>20000</b></li><li><b>status_pengajuan</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (521, '::1', '', '2020-06-27 14:25:36', 'Menghapus laporan dengan id ', 'kholiq');
INSERT INTO `cms_log` VALUES (522, '::1', '', '2020-06-27 14:25:42', 'Menghapus laporan dengan id ', 'kholiq');
INSERT INTO `cms_log` VALUES (523, '::1', '', '2020-06-27 14:26:31', 'Menghapus laporan dengan id P-PGN-20062700000', 'kholiq');
INSERT INTO `cms_log` VALUES (524, '::1', '', '2020-06-27 14:31:28', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062700002</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-27</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-27</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (525, '::1', '', '2020-06-27 14:55:18', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>nama_alat</b> dengan value <b>Jas Lab</b></li><li><b>jumlah</b> dengan value <b>100</b></li><li><b>harga_satuan</b> dengan value <b>80000</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (526, '::1', '', '2020-06-27 15:02:06', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>nama_alat</b> dengan value <b>Jas Lab</b></li><li><b>jumlah</b> dengan value <b>100</b></li><li><b>harga_satuan</b> dengan value <b>80000</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (527, '::1', '', '2020-06-27 15:04:49', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700002</b></li><li><b>nama_alat</b> dengan value <b>mikroskop</b></li><li><b>jumlah</b> dengan value <b>10</b></li><li><b>harga_satuan</b> dengan value <b>250000</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (528, '::1', '', '2020-06-27 15:06:28', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>nama_alat</b> dengan value <b>Jas Lab</b></li><li><b>jumlah</b> dengan value <b>100</b></li><li><b>harga_satuan</b> dengan value <b>80000</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (529, '::1', '', '2020-06-27 15:15:17', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062700001</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-28</b></li><li><b>sumber_pendanaan</b> dengan value <b>4</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-08-27</b></li><li><b>pajak</b> dengan value <b>20000</b></li><li><b>status_pengajuan</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (530, '::1', '', '2020-06-27 16:09:26', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>nama_alat</b> dengan value <b>mikroskop</b></li><li><b>jumlah</b> dengan value <b>10</b></li><li><b>harga_satuan</b> dengan value <b>80000</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (531, '::1', '', '2020-06-27 18:56:38', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (532, '::1', '', '2020-06-27 18:57:11', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (533, '::1', '', '2020-06-27 22:48:58', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>nama_bahan</b> dengan value <b>metana</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>jumlah</b> dengan value <b>100</b></li><li><b>harga_satuan</b> dengan value <b>5000</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (534, '::1', '', '2020-06-27 23:05:12', 'Menghapus laporan dengan id 4', 'kholiq');
INSERT INTO `cms_log` VALUES (535, '::1', '', '2020-06-27 23:05:14', 'Menghapus laporan dengan id 5', 'kholiq');
INSERT INTO `cms_log` VALUES (536, '::1', '', '2020-06-27 23:05:34', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>nama_bahan</b> dengan value <b>metana</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>jumlah</b> dengan value <b>100</b></li><li><b>harga_satuan</b> dengan value <b>5000</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (537, '::1', '', '2020-06-27 23:27:03', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>nama_bahan</b> dengan value <b>HVS</b></li><li><b>jenis_bahan</b> dengan value <b>berangsur</b></li><li><b>jumlah</b> dengan value <b>6</b></li><li><b>harga_satuan</b> dengan value <b>35000</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (538, '::1', '', '2020-06-28 00:28:06', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>nama_alat</b> dengan value <b>pipet</b></li><li><b>jumlah</b> dengan value <b>250</b></li><li><b>harga_satuan</b> dengan value <b>10000</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (539, '::1', '', '2020-06-28 01:37:04', 'Menghapus laporan dengan id 32', 'kholiq');
INSERT INTO `cms_log` VALUES (540, '::1', '', '2020-06-28 01:37:21', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>30</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>dosen</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (541, '::1', '', '2020-06-28 04:51:14', 'Logout SILADU by ', 'Tamu');
INSERT INTO `cms_log` VALUES (542, '::1', '', '2020-06-28 04:51:36', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (543, '::1', '', '2020-06-28 06:00:01', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062700002</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-27</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-27</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (544, '::1', '', '2020-06-28 10:22:05', 'Logout SILADU by ', 'Tamu');
INSERT INTO `cms_log` VALUES (545, '::1', '', '2020-06-28 10:23:13', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (546, '::1', '', '2020-06-28 13:02:06', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (547, '::1', '', '2020-06-28 13:08:37', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (548, '::1', '', '2020-06-28 14:55:45', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>19</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280003</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-07 14:17:00</b></li><li><b>peminjam</b> dengan value <b>laboran</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (549, '::1', '', '2020-06-28 14:56:36', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>19</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280003</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-07 14:17:00</b></li><li><b>peminjam</b> dengan value <b>laboran</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (550, '::1', '', '2020-06-28 15:00:18', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (551, '::1', '', '2020-06-28 15:00:36', 'Login  by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (552, '::1', '', '2020-06-28 15:00:48', 'Logout SILADU by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (553, '::1', '', '2020-06-28 15:02:19', 'Login  by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (554, '::1', '', '2020-06-28 15:05:28', 'Logout SILADU by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (555, '::1', '', '2020-06-28 15:07:20', 'Login  by mahasiswa', 'mahasiswa');
INSERT INTO `cms_log` VALUES (556, '::1', '', '2020-06-28 15:09:57', 'Logout SILADU by mahasiswa', 'mahasiswa');
INSERT INTO `cms_log` VALUES (557, '::1', '', '2020-06-28 15:10:15', 'Login  by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (558, '::1', '', '2020-06-28 15:31:41', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280004</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-06-29T15:31</b></li><li><b>peminjam</b> dengan value <b>laboran</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'laboran');
INSERT INTO `cms_log` VALUES (559, '::1', '', '2020-06-28 15:44:40', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'laboran');
INSERT INTO `cms_log` VALUES (560, '::1', '', '2020-06-28 15:46:32', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li></ul>', 'laboran');
INSERT INTO `cms_log` VALUES (561, '::1', '', '2020-06-28 15:47:52', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'laboran');
INSERT INTO `cms_log` VALUES (562, '::1', '', '2020-06-28 15:50:05', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li></ul>', 'laboran');
INSERT INTO `cms_log` VALUES (563, '::1', '', '2020-06-28 16:00:58', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280005</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-07T16:00</b></li><li><b>peminjam</b> dengan value <b>laboran</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'laboran');
INSERT INTO `cms_log` VALUES (564, '::1', '', '2020-06-28 16:11:52', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>21</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280005</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-07 16:00:00</b></li><li><b>peminjam</b> dengan value <b>laboran</b></li><li><b>status</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'laboran');
INSERT INTO `cms_log` VALUES (565, '::1', '', '2020-06-28 16:12:59', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>21</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280005</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-07 16:00:00</b></li><li><b>peminjam</b> dengan value <b>laboran</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'laboran');
INSERT INTO `cms_log` VALUES (566, '::1', '', '2020-06-28 16:15:47', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Sudah Dikembaliakn</b></li></ul>', 'laboran');
INSERT INTO `cms_log` VALUES (567, '::1', '', '2020-06-28 16:21:04', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'laboran');
INSERT INTO `cms_log` VALUES (568, '::1', '', '2020-06-28 16:22:46', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Sudah Dikembaliakn</b></li></ul>', 'laboran');
INSERT INTO `cms_log` VALUES (569, '::1', '', '2020-06-28 16:24:30', 'Mengedit Kelola kelola_jatuh_tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'laboran');
INSERT INTO `cms_log` VALUES (570, '::1', '', '2020-06-28 16:55:42', 'Logout SILADU by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (571, '::1', '', '2020-06-28 16:55:58', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (572, '::1', '', '2020-06-28 18:56:28', 'Logout SILADU by ', 'Tamu');
INSERT INTO `cms_log` VALUES (573, '::1', '', '2020-06-28 18:56:42', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (574, '::1', '', '2020-06-28 19:16:51', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280006</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-06-30T19:16</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (575, '::1', '', '2020-06-28 19:17:54', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>5</b></li><li><b>stock</b> dengan value <b>100</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>3</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>Tidak cepat habis</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (576, '::1', '', '2020-06-28 19:45:42', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (577, '::1', '', '2020-06-28 19:46:24', 'Mengedit Kelola kelola_jatuh_tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Sudah Dikembaliakn</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (578, '::1', '', '2020-06-28 19:51:30', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>22</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280006</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-06-30 19:16:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (579, '::1', '', '2020-06-28 19:52:53', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280007</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08T19:52</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (580, '::1', '', '2020-06-28 19:53:28', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>23</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280007</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08 19:52:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (581, '::1', '', '2020-06-28 19:57:25', 'Mengedit Kelola kelola_jatuh_tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>22</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280006</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-06-30 19:16:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Sudah Dikembaliakn</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (582, '::1', '', '2020-06-28 20:44:07', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>pengaju</b> dengan value <b>Kholiq</b></li><li><b>nama_alat</b> dengan value <b>Jas Lab</b></li><li><b>jumlah</b> dengan value <b>100</b></li><li><b>harga_satuan</b> dengan value <b>250000</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (583, '::1', '', '2020-06-28 20:51:00', 'Menambah pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id_periode</b> dengan value <b>P-PGN-20062700001</b></li><li><b>nama_bahan</b> dengan value <b>metana</b></li><li><b>pengaju</b> dengan value <b>Kholiq</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>jumlah</b> dengan value <b>100</b></li><li><b>harga_satuan</b> dengan value <b>80000</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (584, '::1', '', '2020-06-28 21:02:38', 'Menghapus laporan dengan id 7', 'kholiq');
INSERT INTO `cms_log` VALUES (585, '::1', '', '2020-06-28 21:02:42', 'Menghapus laporan dengan id 6', 'kholiq');
INSERT INTO `cms_log` VALUES (586, '::1', '', '2020-06-28 21:04:32', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (587, '::1', '', '2020-06-28 21:04:51', 'Login  by mahasiswa', 'mahasiswa');
INSERT INTO `cms_log` VALUES (588, '::1', '', '2020-06-28 21:06:53', 'Logout SILADU by mahasiswa', 'mahasiswa');
INSERT INTO `cms_log` VALUES (589, '::1', '', '2020-06-28 21:07:39', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (590, '::1', '', '2020-06-28 21:37:35', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>22</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280006</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-06-30 19:16:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (591, '::1', '', '2020-06-28 21:37:48', 'Mengedit Kelola kelola_jatuh_tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>22</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280006</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-06-30 19:16:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Sudah Dikembaliakn</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (592, '::1', '', '2020-06-28 21:42:24', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>20</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280004</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-06-29 15:31:00</b></li><li><b>peminjam</b> dengan value <b>laboran</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (593, '::1', '', '2020-06-28 21:42:33', 'Mengedit Kelola kelola_jatuh_tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>20</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280004</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-06-29 15:31:00</b></li><li><b>peminjam</b> dengan value <b>laboran</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Sudah Dikembaliakn</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (594, '::1', '', '2020-06-28 21:54:13', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>30</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>0</b></li><li><b>no_hp</b> dengan value <b>9</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>dosen</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (595, '::1', '', '2020-06-28 21:54:19', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (596, '::1', '', '2020-06-28 21:54:35', 'Login  by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (597, '::1', '', '2020-06-28 21:55:34', 'Logout SILADU by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (598, '::1', '', '2020-06-28 21:55:49', 'Login  by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (599, '::1', '', '2020-06-28 21:59:41', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280008</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Tidak Pilih Alat</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-03T21:59</b></li><li><b>peminjam</b> dengan value <b>dosen</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'dosen');
INSERT INTO `cms_log` VALUES (600, '::1', '', '2020-06-28 21:59:52', 'Logout SILADU by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (601, '::1', '', '2020-06-28 22:00:14', 'Login  by mahasiswa', 'mahasiswa');
INSERT INTO `cms_log` VALUES (602, '::1', '', '2020-06-28 22:01:47', 'Logout SILADU by mahasiswa', 'mahasiswa');
INSERT INTO `cms_log` VALUES (603, '::1', '', '2020-06-28 22:03:11', 'Login  by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (604, '::1', '', '2020-06-28 22:05:19', 'Logout SILADU by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (605, '::1', '', '2020-06-28 22:05:32', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (606, '::1', '', '2020-06-28 22:05:47', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>19</b></li><li><b>nama</b> dengan value <b>laboran</b></li><li><b>username</b> dengan value <b>laboran</b></li><li><b>level</b> dengan value <b>4</b></li><li><b>bagian</b> dengan value <b>0</b></li><li><b>no_hp</b> dengan value <b>9</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>laboran</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (607, '::1', '', '2020-06-28 22:05:52', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (608, '::1', '', '2020-06-28 22:06:22', 'Login  by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (609, '::1', '', '2020-06-28 22:19:04', 'Logout SILADU by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (610, '::1', '', '2020-06-28 22:19:24', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (611, '::1', '', '2020-06-28 22:23:19', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (612, '::1', '', '2020-06-28 22:30:38', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (613, '::1', '', '2020-06-28 22:36:32', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>19</b></li><li><b>nama</b> dengan value <b>laboran</b></li><li><b>username</b> dengan value <b>laboran</b></li><li><b>level</b> dengan value <b>4</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>laboran</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (614, '::1', '', '2020-06-28 22:36:40', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>30</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>dosen</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (615, '::1', '', '2020-06-28 22:38:22', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (616, '::1', '', '2020-06-28 22:38:35', 'Login  by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (617, '::1', '', '2020-06-28 22:38:52', 'Menghapus laporan dengan id 24', 'dosen');
INSERT INTO `cms_log` VALUES (618, '::1', '', '2020-06-28 22:39:24', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280008</b></li><li><b>nama_bahan</b> dengan value <b>Lean UX</b></li><li><b>nama_alat</b> dengan value <b>Tidak Pilih Alat</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-10T22:39</b></li><li><b>peminjam</b> dengan value <b>dosen</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'dosen');
INSERT INTO `cms_log` VALUES (619, '::1', '', '2020-06-28 22:42:06', 'Logout SILADU by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (620, '::1', '', '2020-06-28 22:42:31', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (621, '::1', '', '2020-06-28 23:13:18', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (622, '::1', '', '2020-06-28 23:13:35', 'Login  by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (623, '::1', '', '2020-06-28 23:20:36', 'Logout SILADU by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (624, '::1', '', '2020-06-28 23:20:51', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (625, '::1', '', '2020-06-28 23:47:58', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>11</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>5</b></li><li><b>stok</b> dengan value <b>1000</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>800000</b></li><li><b>kondisi</b> dengan value <b>tidak baik</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (626, '::1', '', '2020-06-28 23:48:06', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>11</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>5</b></li><li><b>stok</b> dengan value <b>1000</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>800000</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (627, '::1', '', '2020-06-28 23:48:16', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>11</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>5</b></li><li><b>stok</b> dengan value <b>1000</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>800000</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (628, '::1', '', '2020-06-28 23:48:26', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>200</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>tidak baik</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (629, '::1', '', '2020-06-28 23:58:51', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280001</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-02 13:11:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (630, '::1', '', '2020-06-28 23:59:19', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280002</b></li><li><b>nama_bahan</b> dengan value <b>Lean UX</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08 13:59:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (631, '::1', '', '2020-06-29 00:00:31', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006280002</b></li><li><b>nama_bahan</b> dengan value <b>Lean UX</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08 13:59:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (632, '::1', '', '2020-06-29 00:01:13', 'Menghapus laporan dengan id 8', 'kholiq');
INSERT INTO `cms_log` VALUES (633, '::1', '', '2020-06-29 00:01:15', 'Menghapus laporan dengan id 7', 'kholiq');
INSERT INTO `cms_log` VALUES (634, '::1', '', '2020-06-29 00:01:16', 'Menghapus laporan dengan id 6', 'kholiq');
INSERT INTO `cms_log` VALUES (635, '::1', '', '2020-06-29 00:01:57', 'Menambah Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>K-PJM2006280008</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>nama_barang</b> dengan value <b>Mikroskop</b></li><li><b>status_penggantian</b> dengan value <b>belum diganti</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (636, '::1', '', '2020-06-29 00:02:56', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>Kampus Sekaran, Gunungpati, Semarang</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>logo</b> dengan value <b>files/2020/06/caaeaf25e339de88e954cc8140d3d390.png</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (637, '::1', '', '2020-06-29 00:03:24', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (638, '::1', '', '2020-06-29 00:04:25', 'Login  by kepala_lab', 'kepala_lab');
INSERT INTO `cms_log` VALUES (639, '::1', '', '2020-06-29 00:04:51', 'Logout SILADU by kepala_lab', 'kepala_lab');
INSERT INTO `cms_log` VALUES (640, '::1', '', '2020-06-29 00:05:09', 'Login  by admin', 'admin');
INSERT INTO `cms_log` VALUES (641, '::1', '', '2020-06-29 00:05:59', 'Logout SILADU by admin', 'admin');
INSERT INTO `cms_log` VALUES (642, '::1', '', '2020-06-29 00:06:59', 'Login  by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (643, '::1', '', '2020-06-29 00:08:16', 'Logout SILADU by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (644, '::1', '', '2020-06-29 00:08:44', 'Login  by koordinator_lab', 'koordinator_lab');
INSERT INTO `cms_log` VALUES (645, '::1', '', '2020-06-29 00:09:35', 'Logout SILADU by koordinator_lab', 'koordinator_lab');
INSERT INTO `cms_log` VALUES (646, '::1', '', '2020-06-29 00:10:11', 'Login  by asisten', 'asisten');
INSERT INTO `cms_log` VALUES (647, '::1', '', '2020-06-29 00:11:07', 'Logout SILADU by asisten', 'asisten');
INSERT INTO `cms_log` VALUES (648, '::1', '', '2020-06-29 00:11:27', 'Login  by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (649, '::1', '', '2020-06-29 00:11:40', 'Logout SILADU by dosen', 'dosen');
INSERT INTO `cms_log` VALUES (650, '::1', '', '2020-06-29 00:12:13', 'Login  by mahasiswa', 'mahasiswa');
INSERT INTO `cms_log` VALUES (651, '::1', '', '2020-06-29 00:13:58', 'Logout SILADU by mahasiswa', 'mahasiswa');
INSERT INTO `cms_log` VALUES (652, '::1', '', '2020-06-29 00:14:16', 'Login  by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (653, '::1', '', '2020-06-29 00:20:12', 'Logout SILADU by laboran', 'laboran');
INSERT INTO `cms_log` VALUES (654, '::1', '', '2020-06-29 00:20:28', 'Login  by asisten', 'asisten');
INSERT INTO `cms_log` VALUES (655, '::1', '', '2020-06-29 00:24:10', 'Logout SILADU by asisten', 'asisten');
INSERT INTO `cms_log` VALUES (656, '::1', '', '2020-06-29 00:24:27', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (657, '::1', '', '2020-06-29 00:51:55', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (658, '::1', '', '2020-06-30 13:08:33', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (659, '::1', '', '2020-06-30 13:31:08', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>3</b></li><li><b>nama_alat</b> dengan value <b>11</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-04T13:31</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (660, '::1', '', '2020-06-30 13:32:01', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (661, '::1', '', '2020-06-30 14:12:18', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (662, '::1', '', '2020-06-30 14:13:06', 'Menghapus laporan dengan id 16', 'kholiq');
INSERT INTO `cms_log` VALUES (663, '::1', '', '2020-06-30 14:13:08', 'Menghapus laporan dengan id 17', 'kholiq');
INSERT INTO `cms_log` VALUES (664, '::1', '', '2020-06-30 14:13:10', 'Menghapus laporan dengan id 19', 'kholiq');
INSERT INTO `cms_log` VALUES (665, '::1', '', '2020-06-30 14:13:12', 'Menghapus laporan dengan id 20', 'kholiq');
INSERT INTO `cms_log` VALUES (666, '::1', '', '2020-06-30 14:13:14', 'Menghapus laporan dengan id 21', 'kholiq');
INSERT INTO `cms_log` VALUES (667, '::1', '', '2020-06-30 14:13:16', 'Menghapus laporan dengan id 22', 'kholiq');
INSERT INTO `cms_log` VALUES (668, '::1', '', '2020-06-30 14:13:17', 'Menghapus laporan dengan id 23', 'kholiq');
INSERT INTO `cms_log` VALUES (669, '::1', '', '2020-06-30 14:13:19', 'Menghapus laporan dengan id 25', 'kholiq');
INSERT INTO `cms_log` VALUES (670, '::1', '', '2020-06-30 14:23:47', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (671, '::1', '', '2020-06-30 14:25:26', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T14:25</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (672, '::1', '', '2020-06-30 14:33:24', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300002</b></li><li><b>nama_bahan</b> dengan value <b>2</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T14:33</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (673, '::1', '', '2020-06-30 14:33:35', 'Menghapus laporan dengan id 27', 'kholiq');
INSERT INTO `cms_log` VALUES (674, '::1', '', '2020-06-30 14:33:37', 'Menghapus laporan dengan id 28', 'kholiq');
INSERT INTO `cms_log` VALUES (675, '::1', '', '2020-06-30 14:33:45', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>Tidak Pilih Alat</b></li><li><b>tgl_pengembalian</b> dengan value <b>kosong</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (676, '::1', '', '2020-06-30 14:33:56', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300002</b></li><li><b>nama_bahan</b> dengan value <b>2</b></li><li><b>nama_alat</b> dengan value <b>Tidak Pilih Alat</b></li><li><b>tgl_pengembalian</b> dengan value <b>kosong</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (677, '::1', '', '2020-06-30 14:34:14', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300003</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>kosong</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (678, '::1', '', '2020-06-30 20:57:45', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (679, '::1', '', '2020-06-30 21:09:25', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>tgl_pengembalian</b> dengan value <b>kosong</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (680, '::1', '', '2020-06-30 21:20:45', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (681, '::1', '', '2020-06-30 21:41:22', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (682, '::1', '', '2020-06-30 21:43:20', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (683, '::1', '', '2020-06-30 21:46:51', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T21:46</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (684, '::1', '', '2020-06-30 21:49:06', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300002</b></li><li><b>nama_bahan</b> dengan value <b>2</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T21:49</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (685, '::1', '', '2020-06-30 21:50:18', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300003</b></li><li><b>nama_bahan</b> dengan value <b>2</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T21:50</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (686, '::1', '', '2020-06-30 21:50:43', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300004</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>tgl_pengembalian</b> dengan value <b>kosong</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (687, '::1', '', '2020-06-30 21:51:53', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (688, '::1', '', '2020-06-30 21:52:28', 'Menghapus laporan dengan id 5', 'kholiq');
INSERT INTO `cms_log` VALUES (689, '::1', '', '2020-06-30 21:52:29', 'Menghapus laporan dengan id 4', 'kholiq');
INSERT INTO `cms_log` VALUES (690, '::1', '', '2020-06-30 21:52:31', 'Menghapus laporan dengan id 3', 'kholiq');
INSERT INTO `cms_log` VALUES (691, '::1', '', '2020-06-30 21:52:32', 'Menghapus laporan dengan id 2', 'kholiq');
INSERT INTO `cms_log` VALUES (692, '::1', '', '2020-06-30 21:54:36', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T21:54</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (693, '::1', '', '2020-06-30 22:02:57', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (694, '::1', '', '2020-06-30 22:03:26', 'Menghapus laporan dengan id 6', 'kholiq');
INSERT INTO `cms_log` VALUES (695, '::1', '', '2020-06-30 22:31:13', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T22:31</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (696, '::1', '', '2020-06-30 22:31:22', 'Menghapus laporan dengan id 7', 'kholiq');
INSERT INTO `cms_log` VALUES (697, '::1', '', '2020-06-30 22:33:44', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T22:33</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (698, '::1', '', '2020-06-30 22:33:53', 'Menghapus laporan dengan id 8', 'kholiq');
INSERT INTO `cms_log` VALUES (699, '::1', '', '2020-06-30 22:35:11', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T22:35</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (700, '::1', '', '2020-06-30 22:35:19', 'Menghapus laporan dengan id 9', 'kholiq');
INSERT INTO `cms_log` VALUES (701, '::1', '', '2020-06-30 22:36:29', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T22:36</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (702, '::1', '', '2020-06-30 22:36:56', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (703, '::1', '', '2020-06-30 22:37:09', 'Menghapus laporan dengan id 10', 'kholiq');
INSERT INTO `cms_log` VALUES (704, '::1', '', '2020-06-30 22:38:00', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>2</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T22:37</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (705, '::1', '', '2020-06-30 22:38:05', 'Menghapus laporan dengan id 11', 'kholiq');
INSERT INTO `cms_log` VALUES (706, '::1', '', '2020-06-30 22:54:35', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>kosong</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (707, '::1', '', '2020-06-30 22:54:42', 'Menghapus laporan dengan id 12', 'kholiq');
INSERT INTO `cms_log` VALUES (708, '::1', '', '2020-06-30 22:55:33', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>2</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T22:55</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (709, '::1', '', '2020-06-30 22:56:05', 'Mengedit buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>13</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2006300001</b></li><li><b>nama_bahan</b> dengan value <b>Tidak Pilih Bahan</b></li><li><b>nama_alat</b> dengan value <b>Tidak Pilih Alat</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11 22:55:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Sudah Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Belum Dikembalikan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (710, '::1', '', '2020-06-30 23:46:16', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (711, '::1', '', '2020-06-30 23:50:55', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>3</b></li><li><b>stok_minimal</b> dengan value <b>7</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90,000</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (712, '::1', '', '2020-06-30 23:51:34', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (713, '::1', '', '2020-06-30 23:51:48', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>197</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (714, '::1', '', '2020-06-30 23:52:08', 'Menghapus laporan dengan id 12', 'kholiq');
INSERT INTO `cms_log` VALUES (715, '::1', '', '2020-06-30 23:54:36', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (716, '::1', '', '2020-06-30 23:57:15', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (717, '::1', '', '2020-06-30 23:57:49', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stock</b> dengan value <b>6</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90,000</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (718, '::1', '', '2020-06-30 23:58:54', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>id_nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stock</b> dengan value <b>6</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (719, '::1', '', '2020-06-30 23:59:04', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stock</b> dengan value <b>6</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (720, '::1', '', '2020-07-01 00:00:32', 'Menghapus laporan dengan id 5', 'kholiq');
INSERT INTO `cms_log` VALUES (721, '::1', '', '2020-07-01 00:01:17', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010001</b></li><li><b>nama_bahan</b> dengan value <b>2</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>tgl_pengembalian</b> dengan value <b>kosong</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (722, '::1', '', '2020-07-01 00:01:52', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010002</b></li><li><b>nama_bahan</b> dengan value <b>Tidak Pilih Bahan</b></li><li><b>nama_alat</b> dengan value <b>Tidak Pilih Alat</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-08-08T00:01</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (723, '::1', '', '2020-07-01 00:04:04', 'Logout SILADU by ', 'Tamu');
INSERT INTO `cms_log` VALUES (724, '::1', '', '2020-07-01 00:04:21', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (725, '::1', '', '2020-07-01 00:04:36', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010003</b></li><li><b>nama_bahan</b> dengan value <b>Tidak Pilih Bahan</b></li><li><b>nama_alat</b> dengan value <b>Tidak Pilih Alat</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-08-08T00:04</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (726, '::1', '', '2020-07-01 00:05:04', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010004</b></li><li><b>nama_bahan</b> dengan value <b>Tidak Pilih Bahan</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-08-08T00:05</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (727, '::1', '', '2020-07-01 00:08:28', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id_nama_alat</b> dengan value <b>3</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>kosong</b></li><li><b>stok_minimal</b> dengan value <b>kosong</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>kosong</b></li><li><b>kondisi</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (728, '::1', '', '2020-07-01 00:08:43', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id_nama_bahan</b> dengan value <b>3</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stock</b> dengan value <b>kosong</b></li><li><b>stock_minimal</b> dengan value <b>kosong</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>kosong</b></li><li><b>kondisi</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (729, '::1', '', '2020-07-01 00:08:51', 'Menghapus laporan dengan id 14', 'kholiq');
INSERT INTO `cms_log` VALUES (730, '::1', '', '2020-07-01 00:09:16', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010001</b></li><li><b>nama_bahan</b> dengan value <b>3</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-08-08T00:09</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (731, '::1', '', '2020-07-01 00:09:28', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010002</b></li><li><b>nama_bahan</b> dengan value <b>Tidak Pilih Bahan</b></li><li><b>nama_alat</b> dengan value <b>Tidak Pilih Alat</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-08-08T00:09</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (732, '::1', '', '2020-07-01 12:56:44', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (733, '::1', '', '2020-07-01 14:19:48', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010003</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-08-09T14:19</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (734, '::1', '', '2020-07-01 18:43:00', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (735, '::1', '', '2020-07-01 18:47:12', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010004</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-10T18:46</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (736, '::1', '', '2020-07-01 18:50:03', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08T18:49</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (737, '::1', '', '2020-07-01 19:26:29', 'Mengedit Kelola kelola_jatuh_tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010001</b></li><li><b>nama_bahan</b> dengan value <b>Lean UX</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08 18:49:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Sudah Dikembaliakn</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (738, '::1', '', '2020-07-01 19:27:54', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-11T19:27</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (739, '::1', '', '2020-07-01 19:29:18', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010002</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08T19:29</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (740, '::1', '', '2020-07-01 20:05:31', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08T20:05</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (741, '::1', '', '2020-07-01 20:32:32', 'Menghapus laporan dengan id 4', 'kholiq');
INSERT INTO `cms_log` VALUES (742, '::1', '', '2020-07-01 20:36:59', 'Menambah buat_peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08T20:36</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (743, '::1', '', '2020-07-01 20:37:18', 'Mengedit Kelola kelola_jatuh_tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007010001</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>2020-07-08 20:36:00</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li><li><b>status_pengembalian</b> dengan value <b>Sudah Dikembalikan</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (744, '::1', '', '2020-07-22 20:27:52', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (745, '::1', '', '2020-07-22 20:29:23', 'Menambah buat_peminjaman dengan data sbb:<br />\n                    <ul><li><b>kode_peminjaman</b> dengan value <b>K-PJM2007220001</b></li><li><b>nama_bahan</b> dengan value <b>3</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>tgl_pengembalian</b> dengan value <b>kosong</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status</b> dengan value <b>Belum Disetujui</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (746, '::1', '', '2020-07-23 10:32:52', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (747, '::1', '', '2020-07-23 12:56:02', 'Logout SILADU by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (748, '::1', '', '2020-07-23 12:56:26', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (749, '::1', '', '2020-08-26 14:10:26', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (750, '::1', '', '2020-08-26 16:26:58', 'Menghapus laporan dengan id 3', 'kholiq');
INSERT INTO `cms_log` VALUES (751, '::1', '', '2020-08-26 16:27:03', 'Menghapus laporan dengan id 3', 'kholiq');
INSERT INTO `cms_log` VALUES (752, '::1', '', '2020-08-26 16:27:53', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>10</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>30000</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (753, '::1', '', '2020-08-26 16:34:39', 'Menghapus laporan dengan id 14', 'kholiq');
INSERT INTO `cms_log` VALUES (754, '::1', '', '2020-08-26 16:40:25', 'Menambah Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>BJ1</b></li><li><b>nama_alat</b> dengan value <b>Bejana</b></li><li><b>keterangan</b> dengan value <b>Bejana serba bisa</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (755, '::1', '', '2020-08-26 19:06:08', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (756, '::1', '', '2020-08-26 19:16:55', 'Menambah Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>KM1</b></li><li><b>nama_alat</b> dengan value <b>Kamera</b></li><li><b>keterangan</b> dengan value <b>kamera</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (757, '::1', '', '2020-08-26 19:17:29', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>5</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>1</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>kondisi</b> dengan value <b>jelek</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (758, '::1', '', '2020-08-26 19:19:28', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>10</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>30000</b></li><li><b>kondisi</b> dengan value <b>jelek</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (759, '::1', '', '2020-08-26 19:46:56', 'Mengedit Master sumber_pendanaan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>sumber_pendanaan</b> dengan value <b>BOPTN</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (760, '::1', '', '2020-08-26 19:47:04', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>HIBAH DIKTI</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (761, '::1', '', '2020-08-26 19:59:41', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>195</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (762, '::1', '', '2020-08-26 20:13:20', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>11</b></li><li><b>id_nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>5</b></li><li><b>stok</b> dengan value <b>984</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>800000</b></li><li><b>kondisi</b> dengan value <b>3</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (763, '::1', '', '2020-08-26 20:13:27', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>15</b></li><li><b>id_nama_alat</b> dengan value <b>5</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>1</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>kondisi</b> dengan value <b>4</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (764, '::1', '', '2020-08-26 20:13:33', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>10</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>30000</b></li><li><b>kondisi</b> dengan value <b>5</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (765, '::1', '', '2020-08-26 20:22:06', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>195</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (766, '::1', '', '2020-08-26 20:48:37', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>5</b></li><li><b>stock</b> dengan value <b>86</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>3</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (767, '::1', '', '2020-08-26 20:48:42', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stock</b> dengan value <b>5</b></li><li><b>stock_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>4</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (768, '::1', '', '2020-08-26 20:55:28', 'Logout SILABIO by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (769, '::1', '', '2020-08-26 20:55:59', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (770, '::1', '', '2020-08-26 20:57:28', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>kategori_alat_bahan</b> dengan value <b>Kategori 2</b></li><li><b>keterangan</b> dengan value <b>Alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (771, '::1', '', '2020-08-26 20:57:35', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>kategori_alat_bahan</b> dengan value <b>Alat bedah</b></li><li><b>keterangan</b> dengan value <b>Alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (772, '::1', '', '2020-08-26 20:57:51', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kategori_alat_bahan</b> dengan value <b>Alat pemanas bertekanan tinggi</b></li><li><b>keterangan</b> dengan value <b>Alat</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (773, '::1', '', '2020-08-26 20:57:58', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>kategori_alat_bahan</b> dengan value <b>Alat bedah</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (774, '::1', '', '2020-08-26 20:58:02', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kategori_alat_bahan</b> dengan value <b>Alat pemanas bertekanan tinggi</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (775, '::1', '', '2020-08-26 20:58:18', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kategori_alat_bahan</b> dengan value <b>Alat pemanas</b></li><li><b>keterangan</b> dengan value <b>pemanas bertekanan tinggi</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (776, '::1', '', '2020-08-26 20:58:32', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Alat ukur</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (777, '::1', '', '2020-08-26 20:58:43', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Aspirator (pompa)</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (778, '::1', '', '2020-08-26 20:58:52', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>AutoAnalyzer</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (779, '::1', '', '2020-08-26 20:59:01', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Autoklaf</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (780, '::1', '', '2020-08-26 21:01:31', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Alat Optik</b></li><li><b>keterangan</b> dengan value <b>mikroskop dll</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (781, '::1', '', '2020-08-26 21:01:40', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>11</b></li><li><b>id_nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>984</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>800000</b></li><li><b>kondisi</b> dengan value <b>3</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (782, '::1', '', '2020-08-26 21:01:47', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>195</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (783, '::1', '', '2020-08-26 21:01:56', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>15</b></li><li><b>id_nama_alat</b> dengan value <b>5</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>1</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>kondisi</b> dengan value <b>4</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (784, '::1', '', '2020-08-26 21:02:02', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>7</b></li><li><b>stok</b> dengan value <b>10</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>30000</b></li><li><b>kondisi</b> dengan value <b>5</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (785, '::1', '', '2020-08-26 21:29:14', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>7426082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-08-26</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (786, '::1', '', '2020-08-26 21:29:18', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>2</b></li><li><b>id_bahan</b> dengan value <b>1</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (787, '::1', '', '2020-08-26 21:29:28', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>2</b></li><li><b>id_alat</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (788, '::1', '', '2020-08-26 21:37:49', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (789, '::1', '', '2020-08-26 21:37:58', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>2,2,2,2,2,2,2,2,2,2</b></li><li><b>cur_level</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (790, '::1', '', '2020-08-26 21:38:30', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2</b></li><li><b>cur_level</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (791, '::1', '', '2020-08-26 21:39:13', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4</b></li><li><b>cur_level</b> dengan value <b>4</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (792, '::1', '', '2020-08-26 21:39:44', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>7,7,7,7,7,7</b></li><li><b>cur_level</b> dengan value <b>7</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (793, '::1', '', '2020-08-26 21:39:55', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>cur_level</b> dengan value <b>8</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (794, '::1', '', '2020-08-26 21:41:24', 'Logout SILABIO by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (795, '::1', '', '2020-08-26 21:41:35', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (796, '::1', '', '2020-08-26 22:16:26', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0001082020</b></li><li><b>peminjam</b> dengan value <b>sukron</b></li><li><b>status_peminjam</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>2732139</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-08-26</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (797, '::1', '', '2020-08-26 22:17:56', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0001082020</b></li><li><b>peminjam</b> dengan value <b>sukron</b></li><li><b>status_peminjam</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>2732139</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-08-26</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (798, '::1', '', '2020-08-26 22:30:28', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0003082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>2732139121</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-08-26</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (799, '::1', '', '2020-08-26 22:34:23', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0001082020</b></li><li><b>peminjam</b> dengan value <b>sukron</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>id_peminjam</b> dengan value <b>2732139</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-08-26</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (800, '::1', '', '2020-08-26 22:35:05', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0001082020</b></li><li><b>peminjam</b> dengan value <b>sukron</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>id_peminjam</b> dengan value <b>2732139</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-08-26</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (801, '::1', '', '2020-08-26 22:36:35', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>no_peminjaman</b> dengan value <b>0001082020</b></li><li><b>peminjam</b> dengan value <b>sukron</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>id_peminjam</b> dengan value <b>2732139121</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-08-26</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (802, '::1', '', '2020-08-26 22:39:28', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>no_peminjaman</b> dengan value <b>0002082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>id_peminjam</b> dengan value <b>2132133213</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-08-26</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (803, '::1', '', '2020-08-26 22:57:10', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>no_peminjaman</b> dengan value <b>0001082020</b></li><li><b>peminjam</b> dengan value <b>sukron</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>id_peminjam</b> dengan value <b>2732139121</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-02</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (804, '::1', '', '2020-08-26 22:57:17', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>no_peminjaman</b> dengan value <b>0002082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>id_peminjam</b> dengan value <b>2132133213</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-02</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (805, '::1', '', '2020-08-26 23:06:19', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>no_peminjaman</b> dengan value <b>0001082020</b></li><li><b>peminjam</b> dengan value <b>sukron</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>086543</b></li><li><b>id_peminjam</b> dengan value <b>2732139121</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-02</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (806, '::1', '', '2020-08-26 23:13:03', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>no_peminjaman</b> dengan value <b>0002082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>7798998</b></li><li><b>id_peminjam</b> dengan value <b>2132133213</b></li><li><b>tgl</b> dengan value <b>2020-08-26</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-02</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (807, '::1', '', '2020-08-27 06:06:15', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (808, '::1', '', '2020-08-27 06:43:30', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0003082020</b></li><li><b>peminjam</b> dengan value <b>Yahya</b></li><li><b>status_peminjam</b> dengan value <b>kar</b></li><li><b>kontak</b> dengan value <b>821098291</b></li><li><b>id_peminjam</b> dengan value <b>281276211</b></li><li><b>tgl</b> dengan value <b>2020-08-27</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-03</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (809, '::1', '', '2020-08-27 06:49:00', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Galon Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (810, '::1', '', '2020-08-27 06:49:32', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>jenis_bahan</b> dengan value <b>Buku</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (811, '::1', '', '2020-08-27 07:31:59', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>2</b></li><li><b>id_bahan</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (812, '::1', '', '2020-08-27 07:32:19', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>2</b></li><li><b>id_alat</b> dengan value <b>10</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (813, '::1', '', '2020-08-27 07:33:21', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0004082020</b></li><li><b>peminjam</b> dengan value <b>test2</b></li><li><b>status_peminjam</b> dengan value <b>kar</b></li><li><b>kontak</b> dengan value <b>739812721</b></li><li><b>id_peminjam</b> dengan value <b>1237272191</b></li><li><b>tgl</b> dengan value <b>2020-08-27</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-03</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (814, '::1', '', '2020-08-27 07:33:25', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>9</b></li><li><b>id_bahan</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (815, '::1', '', '2020-08-27 07:33:31', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>9</b></li><li><b>id_alat</b> dengan value <b>16</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (816, '::1', '', '2020-08-27 07:40:38', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0002082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>id_peminjam</b> dengan value <b>199209242019031013</b></li><li><b>tgl</b> dengan value <b>2020-08-27</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-03</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (817, '::1', '', '2020-08-27 07:40:57', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>10</b></li><li><b>id_bahan</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (818, '::1', '', '2020-08-27 07:40:58', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>10</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (819, '::1', '', '2020-08-27 08:45:01', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\n                    <ul><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stock</b> dengan value <b>10</b></li><li><b>stock_minimal</b> dengan value <b>4</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>kondisi</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (820, '::1', '', '2020-08-27 09:00:25', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0003082020</b></li><li><b>peminjam</b> dengan value <b>test</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0218212</b></li><li><b>id_peminjam</b> dengan value <b>2732139121</b></li><li><b>tgl</b> dengan value <b>2020-08-27</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-03</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (821, '::1', '', '2020-08-27 09:00:31', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>11</b></li><li><b>id_bahan</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>4</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (822, '::1', '', '2020-08-27 09:00:37', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>11</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (823, '::1', '', '2020-08-27 09:02:31', 'Logout SILABIO by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (824, '::1', '', '2020-08-27 09:32:21', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (825, '::1', '', '2020-08-27 09:40:50', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0004082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq Budiman</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>id_peminjam</b> dengan value <b>1237272191</b></li><li><b>tgl</b> dengan value <b>2020-08-27</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-03</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (826, '::1', '', '2020-08-27 09:46:52', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (827, '::1', '', '2020-08-27 09:47:07', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_alat</b> dengan value <b>16</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (828, '::1', '', '2020-08-27 09:58:28', 'Menambah Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>LP1</b></li><li><b>nama_alat</b> dengan value <b>LUOP</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (829, '::1', '', '2020-08-27 10:17:45', 'Mengedit Kelola kelola_penyimpanandengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>status</b> dengan value <b>tersedia</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (830, '::1', '', '2020-08-27 10:20:40', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Ruang</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (831, '::1', '', '2020-08-27 10:20:59', 'Menambah Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>RU1</b></li><li><b>nama_alat</b> dengan value <b>Ruang 1</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (832, '::1', '', '2020-08-27 10:21:45', 'Mengedit menu dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>131</b></li><li><b>nama</b> dengan value <b>Master Peminjaman</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2,4</b></li><li><b>url</b> dengan value <b>master/kategori_alat_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>4</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (833, '::1', '', '2020-08-27 10:22:54', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Galon</b></li><li><b>nama_bahan</b> dengan value <b>Galon Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (834, '::1', '', '2020-08-27 10:23:02', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>BK01</b></li><li><b>jenis_bahan</b> dengan value <b>Air</b></li><li><b>nama_bahan</b> dengan value <b>Air Raksa</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (835, '::1', '', '2020-08-27 10:23:54', 'Menambah Master satuan dengan data sbb:<br />\n                    <ul><li><b>nama_satuan</b> dengan value <b>Ruang</b></li><li><b>keterangan</b> dengan value <b>untuk satuan ruang</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (836, '::1', '', '2020-08-27 10:29:38', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>11</b></li><li><b>id_nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>984</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>800000</b></li><li><b>kondisi</b> dengan value <b>3</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (837, '::1', '', '2020-08-27 10:30:22', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>10</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>7</b></li><li><b>pendanaan</b> dengan value <b>4</b></li><li><b>harga</b> dengan value <b>1000</b></li><li><b>kondisi</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (838, '::1', '', '2020-08-27 11:03:57', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>8,8,8,8,8</b></li><li><b>cur_level</b> dengan value <b>8</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (839, '::1', '', '2020-08-27 11:04:12', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>7,7,7,7,7,7,7</b></li><li><b>cur_level</b> dengan value <b>7</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (840, '::1', '', '2020-09-01 13:20:06', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (841, '::1', '', '2020-09-01 13:20:23', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0001092020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>id_peminjam</b> dengan value <b>2732139</b></li><li><b>tgl</b> dengan value <b>2020-09-01</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-08</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (842, '::1', '', '2020-09-01 13:20:28', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>13</b></li><li><b>id_bahan</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (843, '::1', '', '2020-09-01 13:20:33', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>13</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (844, '::1', '', '2020-10-12 00:15:27', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (845, '::1', '', '2020-10-12 01:13:17', 'Mengedit menu dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>131</b></li><li><b>nama</b> dengan value <b>Kategori Alat Bahan</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2,4</b></li><li><b>url</b> dengan value <b>master/kategori_alat_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>4</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (846, '::1', '', '2020-10-12 01:19:53', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0887811617</b></li><li><b>id_peminjam</b> dengan value <b>2112112</b></li><li><b>tgl</b> dengan value <b>2020-10-12</b></li><li><b>jam_pinjam</b> dengan value <b>09:30</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-19</b></li><li><b>jam_kembali</b> dengan value <b>09:30</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (847, '::1', '', '2020-10-12 01:20:21', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>14</b></li><li><b>id_bahan</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (848, '::1', '', '2020-10-12 01:20:22', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>14</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (849, '::1', '', '2020-10-12 07:18:28', 'Logout SILABIO by ', 'Tamu');
INSERT INTO `cms_log` VALUES (850, '::1', '', '2020-10-12 07:18:39', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (851, '::1', '', '2020-10-12 08:29:00', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>14</b></li><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0887811617</b></li><li><b>id_peminjam</b> dengan value <b>2112112</b></li><li><b>tgl</b> dengan value <b>2020-10-12</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-19</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (852, '::1', '', '2020-10-12 08:30:06', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0887811617</b></li><li><b>id_peminjam</b> dengan value <b>2112112</b></li><li><b>tgl</b> dengan value <b>2020-10-12</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-19</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (853, '::1', '', '2020-10-12 08:30:25', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0887811617</b></li><li><b>id_peminjam</b> dengan value <b>2112112</b></li><li><b>tgl</b> dengan value <b>2020-10-12</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-19</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (854, '::1', '', '2020-10-12 08:32:18', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0887811617</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>id_peminjam</b> dengan value <b>2112112</b></li><li><b>tgl</b> dengan value <b>2020-10-12</b></li><li><b>jam_pinjam</b> dengan value <b>09:30</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-19</b></li><li><b>jam_kembali</b> dengan value <b>09:30</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (855, '::1', '', '2020-10-12 08:38:35', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>no_peminjaman</b> dengan value <b>0001092020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>id_peminjam</b> dengan value <b>2732139</b></li><li><b>tgl</b> dengan value <b>2020-09-01</b></li><li><b>jam_pinjam</b> dengan value <b>08:00</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-08</b></li><li><b>jam_kembali</b> dengan value <b>08:00</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (856, '::1', '', '2020-10-12 08:40:04', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>no_peminjaman</b> dengan value <b>0001092020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>nim</b></li><li><b>id_peminjam</b> dengan value <b>2732139</b></li><li><b>tgl</b> dengan value <b>2020-09-01</b></li><li><b>jam_pinjam</b> dengan value <b>kosong</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-08</b></li><li><b>jam_kembali</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (857, '::1', '', '2020-10-12 08:42:45', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>no_peminjaman</b> dengan value <b>0004082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq Budiman</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>nip</b></li><li><b>id_peminjam</b> dengan value <b>1237272191</b></li><li><b>tgl</b> dengan value <b>2020-08-27</b></li><li><b>jam_pinjam</b> dengan value <b>kosong</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-03</b></li><li><b>jam_kembali</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (858, '::1', '', '2020-10-12 08:43:42', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>no_peminjaman</b> dengan value <b>0001092020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>instansi</b> dengan value <b>kosong</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>id_peminjam</b> dengan value <b>2732139</b></li><li><b>tgl</b> dengan value <b>2020-09-01</b></li><li><b>jam_pinjam</b> dengan value <b>kosong</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-08</b></li><li><b>jam_kembali</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (859, '::1', '', '2020-10-12 08:46:13', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>12</b></li><li><b>no_peminjaman</b> dengan value <b>0004082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq Budiman</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>nip</b></li><li><b>id_peminjam</b> dengan value <b>1237272191</b></li><li><b>tgl</b> dengan value <b>2020-08-27</b></li><li><b>jam_pinjam</b> dengan value <b>kosong</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-03</b></li><li><b>jam_kembali</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (860, '::1', '', '2020-10-12 08:46:42', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>12</b></li><li><b>no_peminjaman</b> dengan value <b>0004082020</b></li><li><b>peminjam</b> dengan value <b>Kholiq Budiman</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>nip</b></li><li><b>id_peminjam</b> dengan value <b>1237272191</b></li><li><b>tgl</b> dengan value <b>2020-08-27</b></li><li><b>jam_pinjam</b> dengan value <b>11:05</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-03</b></li><li><b>jam_kembali</b> dengan value <b>11:05</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (861, '::1', '', '2020-10-12 08:57:39', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>13</b></li><li><b>no_peminjaman</b> dengan value <b>0001092020</b></li><li><b>peminjam</b> dengan value <b>Kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>0876212121</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>id_peminjam</b> dengan value <b>2732139</b></li><li><b>tgl</b> dengan value <b>2020-09-01</b></li><li><b>jam_pinjam</b> dengan value <b>10:00</b></li><li><b>tgl_kembali</b> dengan value <b>2020-09-08</b></li><li><b>jam_kembali</b> dengan value <b>10:00</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (862, '::1', '', '2020-10-12 09:11:32', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_bahan</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (863, '::1', '', '2020-10-12 15:30:31', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (864, '::1', '', '2020-10-13 20:12:50', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (865, '::1', '', '2020-10-14 06:19:33', 'Logout SILABIO by ', 'Tamu');
INSERT INTO `cms_log` VALUES (866, '::1', '', '2020-10-14 06:19:43', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (867, '::1', '', '2020-10-14 06:26:06', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>id_nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>10</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>7</b></li><li><b>pendanaan</b> dengan value <b>4</b></li><li><b>harga</b> dengan value <b>1000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2018</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (868, '::1', '', '2020-10-14 06:26:17', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>195</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (869, '::1', '', '2020-10-14 06:26:23', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>11</b></li><li><b>id_nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>984</b></li><li><b>stok_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>800000</b></li><li><b>kondisi</b> dengan value <b>3</b></li><li><b>tahun</b> dengan value <b>2017</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (870, '::1', '', '2020-10-14 06:26:30', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>15</b></li><li><b>id_nama_alat</b> dengan value <b>5</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stok</b> dengan value <b>1</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>kondisi</b> dengan value <b>4</b></li><li><b>tahun</b> dengan value <b>2017</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (871, '::1', '', '2020-10-14 06:26:38', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>id_nama_alat</b> dengan value <b>4</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>7</b></li><li><b>stok</b> dengan value <b>10</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>30000</b></li><li><b>kondisi</b> dengan value <b>5</b></li><li><b>tahun</b> dengan value <b>2017</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (872, '::1', '', '2020-10-14 06:33:31', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stock</b> dengan value <b>5</b></li><li><b>stock_minimal</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>4</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>2</b></li><li><b>tahun</b> dengan value <b>2019</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (873, '::1', '', '2020-10-14 06:33:38', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stock</b> dengan value <b>10</b></li><li><b>stock_minimal</b> dengan value <b>4</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2018</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (874, '::1', '', '2020-10-14 06:38:07', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0004102020</b></li><li><b>peminjam</b> dengan value <b>kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>unnes</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>id_peminjam</b> dengan value <b>2112112</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:30</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-21</b></li><li><b>jam_kembali</b> dengan value <b>09:30</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (875, '::1', '', '2020-10-14 06:38:11', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>15</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (876, '::1', '', '2020-10-14 06:50:17', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (877, '::1', '', '2020-10-14 06:50:23', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (878, '::1', '', '2020-10-14 06:50:47', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (879, '::1', '', '2020-10-14 06:51:33', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_bahan</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (880, '::1', '', '2020-10-14 06:52:39', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (881, '::1', '', '2020-10-14 06:53:52', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (882, '::1', '', '2020-10-14 06:54:28', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (883, '::1', '', '2020-10-14 07:02:02', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (884, '::1', '', '2020-10-14 07:02:09', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_alat</b> dengan value <b>17</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (885, '::1', '', '2020-10-14 07:02:23', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_alat</b> dengan value <b>10</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (886, '::1', '', '2020-10-14 07:04:56', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>12</b></li><li><b>id_alat</b> dengan value <b>17</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (887, '::1', '', '2020-10-14 07:29:10', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>13</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (888, '::1', '', '2020-10-14 07:29:37', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>14</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (889, '::1', '', '2020-10-14 07:29:56', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>13</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (890, '::1', '', '2020-10-14 07:33:06', 'Menghapus laporan dengan id 7', 'kholiq');
INSERT INTO `cms_log` VALUES (891, '::1', '', '2020-10-14 07:51:11', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>Kholiqq</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>2121</b></li><li><b>instansi</b> dengan value <b>test</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>id_peminjam</b> dengan value <b>216212157</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:30</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-21</b></li><li><b>jam_kembali</b> dengan value <b>09:30</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (892, '::1', '', '2020-10-14 07:51:22', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>Kholiqq</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>2121</b></li><li><b>instansi</b> dengan value <b>test</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>id_peminjam</b> dengan value <b>216212157</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:30</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-21</b></li><li><b>jam_kembali</b> dengan value <b>09:30</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (893, '::1', '', '2020-10-14 08:17:28', 'Mengedit Kelola kelola_penyimpanandengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>9</b></li><li><b>nama_penyimpanan</b> dengan value <b>Lab Bio 22</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (894, '::1', '', '2020-10-14 08:17:34', 'Mengedit Kelola kelola_penyimpanandengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>9</b></li><li><b>nama_penyimpanan</b> dengan value <b>Lab Bio 2</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (895, '::1', '', '2020-10-14 08:23:36', 'Mengedit Kelola kelola_penyimpanandengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>nama_penyimpanan</b> dengan value <b>Lab Bio 3</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (896, '::1', '', '2020-10-14 08:23:46', 'Menambah Kelola kelola_penyimpanan dengan data sbb:<br />\n                    <ul><li><b>nama_penyimpanan</b> dengan value <b>Lab Bio 4</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (897, '::1', '', '2020-10-14 08:23:53', 'Menambah Kelola kelola_penyimpanan dengan data sbb:<br />\n                    <ul><li><b>nama_penyimpanan</b> dengan value <b>Lab Bio 5</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (898, '::1', '', '2020-10-14 08:33:48', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>kholiq</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>unnes</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>2112112</b></li><li><b>tgl</b> dengan value <b>2020-09-30</b></li><li><b>jam_pinjam</b> dengan value <b>09:30</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-07</b></li><li><b>jam_kembali</b> dengan value <b>09:30</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (899, '::1', '', '2020-10-14 08:33:54', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>16</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (900, '::1', '', '2020-10-14 08:34:01', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>16</b></li><li><b>id_alat</b> dengan value <b>16</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (901, '::1', '', '2020-10-14 08:56:07', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0002102020</b></li><li><b>peminjam</b> dengan value <b>kholiqsss</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>unnes</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>id_peminjam</b> dengan value <b>2112112</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:30</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-21</b></li><li><b>jam_kembali</b> dengan value <b>09:30</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (902, '::1', '', '2020-10-14 08:56:12', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>17</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (903, '::1', '', '2020-10-14 08:56:17', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>17</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (904, '::1', '', '2020-10-14 09:19:19', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0003102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>kosong</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan2</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:18</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>11:18</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (905, '::1', '', '2020-10-14 09:19:25', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>18</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (906, '::1', '', '2020-10-14 09:19:30', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>18</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>4</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (907, '::1', '', '2020-10-14 09:41:43', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>no_peminjaman</b> dengan value <b>0003102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>kosong</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:18</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>11:18</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (908, '::1', '', '2020-10-14 09:48:02', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>no_peminjaman</b> dengan value <b>0003102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>kosong</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:18</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>11:18</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (909, '::1', '', '2020-10-14 09:51:31', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0004102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>kosong</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:51</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>11:51</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (910, '::1', '', '2020-10-14 09:51:38', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>19</b></li><li><b>id_bahan</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (911, '::1', '', '2020-10-14 09:51:39', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>19</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (912, '::1', '', '2020-10-14 09:54:48', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0003102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>kosong</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:54</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>11:54</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (913, '::1', '', '2020-10-14 09:56:17', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0003102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>kosong</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>09:56</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>11:56</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (914, '::1', '', '2020-10-14 10:00:29', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0004102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>10:00</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>12:00</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (915, '::1', '', '2020-10-14 10:01:22', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0003102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>10:01</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>12:01</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (916, '::1', '', '2020-10-14 10:03:00', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0003102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>jenis_pinjaman</b> dengan value <b>2</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>10:02</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>12:02</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (917, '::1', '', '2020-10-14 10:03:17', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0004102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>jenis_pinjaman</b> dengan value <b>kosong</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>10:03</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-21</b></li><li><b>jam_kembali</b> dengan value <b>10:03</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (918, '::1', '', '2020-10-14 10:04:56', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0004102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>unnes</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>jenis_pinjaman</b> dengan value <b>1</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>10:04</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-21</b></li><li><b>jam_kembali</b> dengan value <b>10:04</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (919, '::1', '', '2020-10-14 11:10:45', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>jenis_pinjaman</b> dengan value <b>2</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>11:10</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-14</b></li><li><b>jam_kembali</b> dengan value <b>13:10</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (920, '::1', '', '2020-10-14 11:10:51', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>27</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (921, '::1', '', '2020-10-14 11:10:55', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>27</b></li><li><b>id_bahan</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (922, '::1', '', '2020-10-14 11:11:01', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>27</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (923, '::1', '', '2020-10-14 11:11:49', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0002102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>unnes</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>jenis_pinjaman</b> dengan value <b>1</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>11:11</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-21</b></li><li><b>jam_kembali</b> dengan value <b>11:11</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (924, '::1', '', '2020-10-14 11:11:53', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>28</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (925, '::1', '', '2020-10-14 11:11:57', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>28</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (926, '::1', '', '2020-10-14 13:24:58', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (927, '::1', '', '2020-10-14 17:44:20', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (928, '::1', '', '2020-10-14 18:35:07', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>27</b></li><li><b>qty</b> dengan value <b>1</b></li><li><b>qty_awal</b> dengan value <b>2</b></li><li><b>qty_hapus</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (929, '::1', '', '2020-10-14 18:55:48', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>27</b></li><li><b>qty</b> dengan value <b>1</b></li><li><b>qty_awal</b> dengan value <b>2</b></li><li><b>qty_hapus</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (930, '::1', '', '2020-10-14 19:04:06', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>27</b></li><li><b>qty</b> dengan value <b>1</b></li><li><b>qty_awal</b> dengan value <b>2</b></li><li><b>qty_hapus</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (931, '::1', '', '2020-10-14 19:21:34', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>28</b></li><li><b>qty</b> dengan value <b>0</b></li><li><b>qty_awal</b> dengan value <b>2</b></li><li><b>qty_hapus</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (932, '::1', '', '2020-10-14 19:22:33', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>28</b></li><li><b>qty</b> dengan value <b>0</b></li><li><b>qty_awal</b> dengan value <b>2</b></li><li><b>qty_hapus</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (933, '::1', '', '2020-10-14 19:31:03', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0001102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>unnes</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>ktp</b></li><li><b>jenis_pinjaman</b> dengan value <b>1</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-14</b></li><li><b>jam_pinjam</b> dengan value <b>19:30</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-21</b></li><li><b>jam_kembali</b> dengan value <b>19:30</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (934, '::1', '', '2020-10-14 19:31:08', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>29</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (935, '::1', '', '2020-10-14 19:31:12', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>29</b></li><li><b>id_alat</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (936, '::1', '', '2020-10-15 06:31:30', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (937, '::1', '', '2020-10-15 06:38:57', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2</b></li><li><b>cur_level</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (938, '::1', '', '2020-10-15 06:39:17', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>3,3,3,3,3,3,3,3,3,3,3</b></li><li><b>cur_level</b> dengan value <b>3</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (939, '::1', '', '2020-10-15 06:49:18', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0002102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>jenis_pinjaman</b> dengan value <b>2</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-15</b></li><li><b>jam_pinjam</b> dengan value <b>06:49</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-15</b></li><li><b>jam_kembali</b> dengan value <b>8:49</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (940, '::1', '', '2020-10-15 06:49:23', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>30</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (941, '::1', '', '2020-10-15 09:33:49', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (942, '::1', '', '2020-10-15 09:34:12', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>30</b></li><li><b>qty</b> dengan value <b>0</b></li><li><b>qty_awal</b> dengan value <b>1</b></li><li><b>qty_hapus</b> dengan value <b>1</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (943, '::1', '', '2020-10-15 11:22:04', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\n                    <ul><li><b>id_nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>12</b></li><li><b>stock</b> dengan value <b>3</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>1000000</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>Pilih</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (944, '::1', '', '2020-10-15 11:22:16', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>id_nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>12</b></li><li><b>stock</b> dengan value <b>3</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>1000000</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (945, '::1', '', '2020-10-15 11:22:23', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stock</b> dengan value <b>10</b></li><li><b>stock_minimal</b> dengan value <b>4</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2018</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (946, '::1', '', '2020-10-15 12:07:45', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0003102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>dos</b></li><li><b>kontak</b> dengan value <b>Biologi dasar</b></li><li><b>instansi</b> dengan value <b>mengenal materi hewan</b></li><li><b>jen_id</b> dengan value <b>kosong</b></li><li><b>jenis_pinjaman</b> dengan value <b>2</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-15</b></li><li><b>jam_pinjam</b> dengan value <b>12:07</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-15</b></li><li><b>jam_kembali</b> dengan value <b>14:07</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (947, '::1', '', '2020-10-15 12:07:49', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>31</b></li><li><b>id_bahan</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (948, '::1', '', '2020-10-15 12:07:55', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>31</b></li><li><b>id_alat</b> dengan value <b>17</b></li><li><b>qty</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (949, '::1', '', '2020-10-15 12:08:02', 'Menyimpan item peminjaman sbb:<br />\n                    <ul><li><b>id_peminjaman</b> dengan value <b>31</b></li><li><b>id_bahan</b> dengan value <b>8</b></li><li><b>qty</b> dengan value <b>3</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (950, '::1', '', '2020-10-15 13:00:10', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>id_nama_bahan</b> dengan value <b>2</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>12</b></li><li><b>stock</b> dengan value <b>3</b></li><li><b>stock_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>1000000</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (951, '::1', '', '2020-10-15 13:56:13', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Alat Penunjang</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (952, '::1', '', '2020-10-15 13:56:47', 'Menambah Master nama_alat dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>KU</b></li><li><b>nama_alat</b> dengan value <b>Kursi</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (953, '::1', '', '2020-10-15 13:59:29', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>8</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>13</b></li><li><b>stok</b> dengan value <b>1</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>lokasi</b> dengan value <b>7</b></li><li><b>pendanaan</b> dengan value <b>4</b></li><li><b>harga</b> dengan value <b>kosong</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2017</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (954, '::1', '', '2020-10-15 14:00:11', 'Menambah Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id_nama_alat</b> dengan value <b>8</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>13</b></li><li><b>stok</b> dengan value <b>30</b></li><li><b>stok_minimal</b> dengan value <b>10</b></li><li><b>lokasi</b> dengan value <b>8</b></li><li><b>pendanaan</b> dengan value <b>4</b></li><li><b>harga</b> dengan value <b>kosong</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (955, '::1', '', '2020-10-15 14:00:37', 'Menyimpan peminjaman sbb:<br />\n                    <ul><li><b>no_peminjaman</b> dengan value <b>0004102020</b></li><li><b>peminjam</b> dengan value <b>Kholiq bio</b></li><li><b>status_peminjam</b> dengan value <b>mhs</b></li><li><b>kontak</b> dengan value <b>unnes</b></li><li><b>instansi</b> dengan value <b>unnes</b></li><li><b>jen_id</b> dengan value <b>nim</b></li><li><b>jenis_pinjaman</b> dengan value <b>1</b></li><li><b>id_peminjam</b> dengan value <b>121212</b></li><li><b>tgl</b> dengan value <b>2020-10-15</b></li><li><b>jam_pinjam</b> dengan value <b>14:00</b></li><li><b>tgl_kembali</b> dengan value <b>2020-10-22</b></li><li><b>jam_kembali</b> dengan value <b>14:00</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (956, '::1', '', '2020-10-15 14:09:29', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>8,8,8,8,8</b></li><li><b>cur_level</b> dengan value <b>8</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (957, '::1', '', '2020-10-15 14:09:46', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>8,8,8,8,8,8</b></li><li><b>cur_level</b> dengan value <b>8</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (958, '::1', '', '2020-11-02 10:45:08', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (959, '::1', '', '2020-11-02 11:01:51', 'Mengedit Master master_bahan dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>MK0211</b></li><li><b>jenis_bahan</b> dengan value <b>Galon</b></li><li><b>nama_bahan</b> dengan value <b>Galon Air</b></li><li><b>tahun</b> dengan value <b>2020</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (960, '::1', '', '2020-11-05 08:20:57', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (961, '::1', '', '2020-11-05 10:47:37', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>8,8,8,8,8,8,8</b></li><li><b>cur_level</b> dengan value <b>8</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (962, '::1', '', '2020-11-05 10:47:46', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>7,7,7,7,7,7,7,7</b></li><li><b>cur_level</b> dengan value <b>7</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (963, '::1', '', '2020-11-05 11:27:38', 'Logout SILABIO by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (964, '::1', '', '2020-11-05 11:30:53', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (965, '::1', '', '2020-11-05 11:30:55', 'Logout SILABIO by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (966, '::1', '', '2020-11-05 11:31:14', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (967, '::1', '', '2020-11-05 11:31:50', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>8,8,8,8,8,8,8,8</b></li><li><b>cur_level</b> dengan value <b>8</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (968, '::1', '', '2020-11-05 11:31:59', 'Logout SILABIO by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (969, '::1', '', '2020-11-05 11:32:14', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (970, '::1', '', '2020-11-05 11:32:16', 'Logout SILABIO by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (971, '::1', '', '2020-11-05 11:32:36', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (972, '::1', '', '2020-11-05 11:45:13', 'Mengubah manajemen menu, dengan data:<br />\n                    <ul><li><b>allowed_level</b> dengan value <b>7,7,7,7,7,7,7,7,7</b></li><li><b>cur_level</b> dengan value <b>7</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (973, '::1', '', '2020-12-23 07:36:42', 'Menambah Master item dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>undefined</b></li><li><b>nama_alat</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/12/dc4dececa730d85d256e9b3f7f473b5e.png</b></li><li><b>keterangan</b> dengan value <b>undefined</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (974, '::1', '', '2020-12-23 07:39:34', 'Menghapus laporan dengan id 9', 'kholiq');
INSERT INTO `cms_log` VALUES (975, '::1', '', '2020-12-23 07:40:07', 'Menambah Master item dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>KUa</b></li><li><b>nama_alat</b> dengan value <b>Ruanga</b></li><li><b>gambar</b> dengan value <b>files/2020/12/3d63ffdd1aa3cccc0fb5f5d375ad712e.png</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (976, '::1', '', '2020-12-23 08:20:56', 'Menambah Master item dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>KUasasa</b></li><li><b>nama_bahan</b> dengan value <b>huisa</b></li><li><b>jenis_bahan</b> dengan value <b>kosong</b></li><li><b>tahun</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/12/3c4cf62bbe7a6c73f53da06532f3cc4d.png</b></li><li><b>keterangan</b> dengan value <b>undefined</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (977, '::1', '', '2020-12-23 08:41:34', 'Menambah Master item dengan data sbb:<br />\n                    <ul><li><b>kode</b> dengan value <b>MK02111</b></li><li><b>nama_alat</b> dengan value <b>coba</b></li><li><b>gambar</b> dengan value <b>files/2020/12/62504e076ceb4474bb9c8f8bb2559114.jpeg</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (978, '::1', '', '2020-12-23 09:00:59', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stock</b> dengan value <b>10</b></li><li><b>stock_minimal</b> dengan value <b>4</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2018</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (979, '::1', '', '2020-12-23 09:01:18', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stock</b> dengan value <b>10</b></li><li><b>stock_minimal</b> dengan value <b>4</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>jenis</b> dengan value <b>2</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2018</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` VALUES (980, '::1', '', '2020-12-23 09:01:28', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>id_nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>11</b></li><li><b>stock</b> dengan value <b>10</b></li><li><b>stock_minimal</b> dengan value <b>4</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>100000</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>kondisi</b> dengan value <b>1</b></li><li><b>tahun</b> dengan value <b>2018</b></li></ul>', 'kholiq');

-- ----------------------------
-- Table structure for cms_lupa
-- ----------------------------
DROP TABLE IF EXISTS `cms_lupa`;
CREATE TABLE `cms_lupa`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_hp` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cms_menu
-- ----------------------------
DROP TABLE IF EXISTS `cms_menu`;
CREATE TABLE `cms_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deskripsi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `allowed_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `aktif` int(1) NOT NULL DEFAULT 1,
  `urutan` int(11) NOT NULL,
  `grup` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 153 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_menu
-- ----------------------------
INSERT INTO `cms_menu` VALUES (3, 'menu', 'Menu', 'Untuk memanajemen menu administrasi (back-end)', '+1+', 'cms/manage/menu', 1, 7, 1);
INSERT INTO `cms_menu` VALUES (89, 'reset_pass', 'Reset Password User', 'Reset Password User', '+1+8+7+', 'apl/reset', 1, 1, 3);
INSERT INTO `cms_menu` VALUES (35, 'semua', 'semua', 'untuk login semua', '+1+2+3+4+5+6+7+8+', 'cms/login/admin_page', 1, 1, 3);
INSERT INTO `cms_menu` VALUES (88, 'crud_user', 'Tambah,edit,delete user', 'tambah_edit_delete', '+1+2+3+4+5+6+7+8+', 'apl/crud', 1, 1, 3);
INSERT INTO `cms_menu` VALUES (102, 'log', 'Log System', 'Log System', '+1+', 'cms/catatan/catat', 1, 2, 1);
INSERT INTO `cms_menu` VALUES (136, 'satuan', 'Satuan', '-', '+1+2+4+', 'master/satuan', 1, 9, 2);
INSERT INTO `cms_menu` VALUES (104, 'status_pak', 'Home', 'Status Pengajuan PAK', '+1+2+3+4+5+6+7+8+', 'pak/dashboard/status_pak', 1, 1, 101);
INSERT INTO `cms_menu` VALUES (135, 'nama_bahan', 'Nama Bahan', '-', '+1+2+4+', 'master/master_bahan', 1, 8, 2);
INSERT INTO `cms_menu` VALUES (134, 'nama_alat', 'Nama Alat', '-', '+1+2+4+', 'master/nama_alat', 1, 7, 2);
INSERT INTO `cms_menu` VALUES (131, 'kategori_alat_bahan', 'Kategori Alat Bahan', '-', '+1+2+4+', 'master/kategori_alat_bahan', 1, 4, 2);
INSERT INTO `cms_menu` VALUES (128, 'instansi', 'Instansi', '-', '+1+2+', 'master/instansi', 1, 1, 2);
INSERT INTO `cms_menu` VALUES (137, 'pengajuan_alat', 'Pengajuan Alat', '-', '+1+3+4+5+7+2+', 'pengajuan/pengajuan_alat', 1, 1, 5);
INSERT INTO `cms_menu` VALUES (138, 'kelola_alat', 'Kelola Alat', '-', '+1+4+2+3+', 'kelola/kelola_alat', 1, 1, 4);
INSERT INTO `cms_menu` VALUES (139, 'periode_pengajuan', 'Periode Pengajuan', '-', '+1+3+2+', 'pengajuan/periode_pengajuan', 1, 2, 5);
INSERT INTO `cms_menu` VALUES (140, 'sumber_pendanaan', 'Sumber Pendanaan', '-', '+1+3+', 'master/sumber_pendanaan', 1, 10, 2);
INSERT INTO `cms_menu` VALUES (141, 'kelola_bahan', 'Kelola Bahan', '-', '+1+4+2+3+', 'kelola/kelola_bahan', 1, 2, 4);
INSERT INTO `cms_menu` VALUES (142, 'kelola_penyimpanan', 'Kelola Penyimpanan', '-', '+1+4+2+3+', 'kelola/kelola_penyimpanan', 1, 3, 4);
INSERT INTO `cms_menu` VALUES (143, 'pengajuan_bahan', 'Pengajuan Bahan ', '-', '+1+3+4+5+7+2+', 'pengajuan/pengajuan_bahan', 1, 3, 5);
INSERT INTO `cms_menu` VALUES (144, 'buat_peminjaman', 'Buat Peminjaman', '-', '+4+5+6+8+7+2+', 'peminjaman/buat_peminjaman', 1, 1, 6);
INSERT INTO `cms_menu` VALUES (145, 'cek_status_peminjaman', 'Cek Status Peminjaman', '-', '+5+6+7+8+2+', 'peminjaman/cek_status_peminjaman', 1, 2, 6);
INSERT INTO `cms_menu` VALUES (146, 'kelola_peminjaman', 'Kelola Peminjaman', '-', '+1+4+6+2+3+', 'peminjaman/peminjaman/kelola', 1, 4, 6);
INSERT INTO `cms_menu` VALUES (147, 'kelola_jatuh_tempo', 'Kelola Jatuh Tempo', '-', '+1+4+6+2+', 'peminjaman/peminjaman/kelola_jatuh_tempo', 1, 5, 4);
INSERT INTO `cms_menu` VALUES (148, 'kelola_penggantian', 'Kelola Penggantian', '-', '+1+4+6+2+', 'peminjaman/peminjaman/kelola_penggantian', 1, 6, 4);
INSERT INTO `cms_menu` VALUES (149, 'kelola_user', 'Kelola User', '-', '+1+2+', 'kelola/kelola_user', 1, 7, 4);
INSERT INTO `cms_menu` VALUES (150, 'peminjaman', 'Peminjaman', '-', '+1+4+5+6+2+8+7+', 'peminjaman/peminjaman', 1, 1, 6);
INSERT INTO `cms_menu` VALUES (151, 'kelola_peminjaman', 'Kelola Peminjaman', '-', '+1+4+6+2+', 'peminjaman/peminjaman/kelola_peminjaman', 1, 6, 4);
INSERT INTO `cms_menu` VALUES (152, 'praktikum', 'Praktikum', '', '+1+2+8+', 'peminjaman/peminjaman/praktikum', 1, 2, 6);

-- ----------------------------
-- Table structure for cms_menu_grup
-- ----------------------------
DROP TABLE IF EXISTS `cms_menu_grup`;
CREATE TABLE `cms_menu_grup`  (
  `id_grup_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_grup` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `icon` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_grup_menu`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 172 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_menu_grup
-- ----------------------------
INSERT INTO `cms_menu_grup` VALUES (3, 'Hidden Menu', NULL);
INSERT INTO `cms_menu_grup` VALUES (1, 'Manajemen', 'fa fa-fw fa-book');
INSERT INTO `cms_menu_grup` VALUES (2, 'Master', 'fa fa-fw fa-archive');
INSERT INTO `cms_menu_grup` VALUES (101, 'Dashboard', 'fa fa-dashboard');
INSERT INTO `cms_menu_grup` VALUES (4, 'Kelola', 'fa fa-fw fa-tasks');
INSERT INTO `cms_menu_grup` VALUES (5, 'Pengajuan', 'fa fa-fw fa-envelope');
INSERT INTO `cms_menu_grup` VALUES (6, 'Peminjaman', 'fa fa-fw fa-exchange');

-- ----------------------------
-- Table structure for cms_online
-- ----------------------------
DROP TABLE IF EXISTS `cms_online`;
CREATE TABLE `cms_online`  (
  `user_id` int(5) NOT NULL,
  `last_activity` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_online
-- ----------------------------
INSERT INTO `cms_online` VALUES (2, '');
INSERT INTO `cms_online` VALUES (3, '');

-- ----------------------------
-- Table structure for cms_user
-- ----------------------------
DROP TABLE IF EXISTS `cms_user`;
CREATE TABLE `cms_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_kelamin` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `level` int(10) NULL DEFAULT NULL,
  `bagian` tinyint(1) NULL DEFAULT 1,
  `no_hp` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  `ktp` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `instansi` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_user
-- ----------------------------
INSERT INTO `cms_user` VALUES (1, 'Kholiq', '1', NULL, 'kholiq', 'kholiq', 'mhs', 'jasjaska', '*F1378C253EEBE31F135CC41EF4A98D077EB98F5D', 1, 1, '10', '2020-11-05 11:32:36', '3315132', 'indonesia');
INSERT INTO `cms_user` VALUES (17, 'admin', '1', 'files/2020/06/e71f42a5047c20fef37a39a3b54f25e4.jpg', 'admin', 'admin', NULL, NULL, '*6D45FD76D5E9C6A404E39C25106A7F032659ACB8', 2, 1, '88888888888', '2020-06-29 00:05:09', NULL, NULL);
INSERT INTO `cms_user` VALUES (18, 'kepala_lab', '1', 'files/2020/06/39ca34393219a932cd256cc8cb96e6e8.jpg', 'kepala_lab', 'kepala_lab', NULL, NULL, '*9575C0046B29C853A98731B0053B780947E0524B', 3, 1, '9', '2020-06-29 00:04:25', NULL, NULL);
INSERT INTO `cms_user` VALUES (19, 'laboran', '1', 'files/2020/05/21c379d76f68969567b1b2e5c40e48f3.jpg', 'laboran', 'laboran', NULL, NULL, '*5F9D604D1358B35776BD7ECEFE96829E6F3A2F3B', 4, 1, '9', '2020-06-29 00:14:16', NULL, NULL);
INSERT INTO `cms_user` VALUES (21, 'asisten', '2', 'files/2020/05/ea2fbde56d3e1f0a302267e4d4f7b04f.jpg', 'asisten', 'asisten', NULL, NULL, '*34D4F44511DF537724AECB9C20245800A653C680', 6, 1, '9', '2020-06-29 00:20:28', NULL, NULL);
INSERT INTO `cms_user` VALUES (23, 'mahasiswa', '2', 'files/2020/05/3448f7f0daa177766c9142c47441a803.jpg', 'mahasiswa', 'mahasiswa', NULL, NULL, '*58B1E0151C7DBF4DF0D59581B6C5C4E031D9F62A', 8, 1, '9', '2020-06-29 00:12:13', NULL, NULL);
INSERT INTO `cms_user` VALUES (30, 'dosen', '1', 'files/2020/06/106292ac4c5fa37adf7eb3cc11880936.jpg', 'dosen', 'dosen', NULL, NULL, '*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710', 7, 1, '9', '2020-06-29 00:11:27', NULL, NULL);

-- ----------------------------
-- Table structure for data_peminjaman
-- ----------------------------
DROP TABLE IF EXISTS `data_peminjaman`;
CREATE TABLE `data_peminjaman`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_pinjaman` int(20) NULL DEFAULT 1 COMMENT '1=default,2=praktikum',
  `no_peminjaman` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `peminjam` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'if 2=dosen_pengampu',
  `status_peminjam` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_peminjam` int(30) NULL DEFAULT NULL COMMENT 'jika user peminjam >0 berarti ada peminjaman dr luar',
  `jen_id` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_peminjam` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `instansi` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'if 2=materi',
  `kontak` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'if 2=mk_praktikum',
  `tgl` date NULL DEFAULT NULL,
  `jam_pinjam` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_kembali` date NULL DEFAULT NULL,
  `jam_kembali` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT 0 COMMENT '1=pinjam, 2=dikembalikan,3=rusak',
  `date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of data_peminjaman
-- ----------------------------
INSERT INTO `data_peminjaman` VALUES (29, 1, '0001102020', 'Kholiq bio', 'mhs', NULL, 'ktp', '121212', 'unnes', 'unnes', '2020-10-14', '19:30', '2020-10-21', '19:30', 2, '2020-10-14 19:32:15');
INSERT INTO `data_peminjaman` VALUES (30, 2, '0002102020', 'Kholiq bio', 'dos', NULL, '0', '121212', 'mengenal materi hewan', 'Biologi dasar', '2020-10-15', '06:49', '2020-10-15', '8:49', 1, '2020-10-15 09:34:04');
INSERT INTO `data_peminjaman` VALUES (31, 2, '0003102020', 'Kholiq bio', 'dos', NULL, '0', '121212', 'mengenal materi hewan', 'Biologi dasar', '2020-10-15', '12:07', '2020-10-15', '14:07', 2, '2020-10-15 13:54:25');
INSERT INTO `data_peminjaman` VALUES (32, 1, '0004102020', 'Kholiq bio', 'mhs', NULL, 'nim', '121212', 'unnes', 'unnes', '2020-10-15', '14:00', '2020-10-22', '14:00', 0, '2020-10-15 14:00:37');

-- ----------------------------
-- Table structure for data_peminjaman_alat
-- ----------------------------
DROP TABLE IF EXISTS `data_peminjaman_alat`;
CREATE TABLE `data_peminjaman_alat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_peminjaman` int(255) NULL DEFAULT NULL,
  `id_alat` int(255) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL COMMENT '1=pinjam, 2=dikembalikan,3=rusak',
  `qty` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of data_peminjaman_alat
-- ----------------------------
INSERT INTO `data_peminjaman_alat` VALUES (22, 29, 11, 2, 2);
INSERT INTO `data_peminjaman_alat` VALUES (23, 31, 17, 2, 2);

-- ----------------------------
-- Table structure for data_peminjaman_bahan
-- ----------------------------
DROP TABLE IF EXISTS `data_peminjaman_bahan`;
CREATE TABLE `data_peminjaman_bahan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_peminjaman` int(255) NULL DEFAULT NULL,
  `id_bahan` int(255) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL COMMENT '1=pinjam, 2=dikembalikan,3=rusak',
  `qty` int(11) NULL DEFAULT NULL COMMENT 'untuk menyimpan qty terkait stok',
  `qty_awal` int(11) NULL DEFAULT NULL COMMENT 'untuk menyimpan qty history',
  `qty_hapus` int(11) NULL DEFAULT NULL COMMENT 'untuk penghapusan barang dalam kondisi dijual',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of data_peminjaman_bahan
-- ----------------------------
INSERT INTO `data_peminjaman_bahan` VALUES (29, 29, 7, 2, 2, NULL, NULL);
INSERT INTO `data_peminjaman_bahan` VALUES (30, 30, 7, 2, 0, 1, 1);
INSERT INTO `data_peminjaman_bahan` VALUES (31, 31, 7, 2, 2, NULL, NULL);
INSERT INTO `data_peminjaman_bahan` VALUES (32, 31, 8, 2, 3, NULL, NULL);

-- ----------------------------
-- Table structure for jenis_kelamin
-- ----------------------------
DROP TABLE IF EXISTS `jenis_kelamin`;
CREATE TABLE `jenis_kelamin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_kelamin` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jenis_kelamin
-- ----------------------------
INSERT INTO `jenis_kelamin` VALUES (1, 'Laki-Laki');
INSERT INTO `jenis_kelamin` VALUES (2, 'Perempuan');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_alat_bahan` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (5, 'Alat pemanas', 'pemanas bertekanan tinggi');
INSERT INTO `kategori` VALUES (6, 'Alat bedah', '');
INSERT INTO `kategori` VALUES (7, 'Alat ukur', '');
INSERT INTO `kategori` VALUES (8, 'Aspirator (pompa)', '');
INSERT INTO `kategori` VALUES (9, 'AutoAnalyzer', '');
INSERT INTO `kategori` VALUES (10, 'Autoklaf', '');
INSERT INTO `kategori` VALUES (11, 'Alat Optik', 'mikroskop dll');
INSERT INTO `kategori` VALUES (12, 'Ruang', '');
INSERT INTO `kategori` VALUES (13, 'Alat Penunjang', '');

-- ----------------------------
-- Table structure for kelola_alat
-- ----------------------------
DROP TABLE IF EXISTS `kelola_alat`;
CREATE TABLE `kelola_alat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_nama_alat` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `satuan_alat` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kategori` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stok` int(11) NOT NULL,
  `stok_minimal` int(11) NOT NULL,
  `lokasi` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pendanaan` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `kondisi` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tahun` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kelola_alat
-- ----------------------------
INSERT INTO `kelola_alat` VALUES (10, '2', '1', '11', 195, 5, '5', '5', 90000, '1', '2020', NULL);
INSERT INTO `kelola_alat` VALUES (11, '1', '1', '11', 984, 5, '8', '5', 800000, '3', '2017', NULL);
INSERT INTO `kelola_alat` VALUES (15, '5', '1', '11', 1, 2, '5', '5', 100000, '4', '2017', NULL);
INSERT INTO `kelola_alat` VALUES (16, '4', '1', '7', 10, 2, '5', '5', 30000, '5', '2017', NULL);
INSERT INTO `kelola_alat` VALUES (17, '1', '1', '11', 10, 2, '7', '4', 1000, '1', '2018', NULL);
INSERT INTO `kelola_alat` VALUES (18, '8', '1', '13', 1, 1, '7', '4', 0, '1', '2017', NULL);
INSERT INTO `kelola_alat` VALUES (19, '8', '1', '13', 30, 10, '8', '4', 0, '1', '2020', NULL);

-- ----------------------------
-- Table structure for kelola_bahan
-- ----------------------------
DROP TABLE IF EXISTS `kelola_bahan`;
CREATE TABLE `kelola_bahan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_nama_bahan` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `satuan_bahan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kategori` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `stock_minimal` int(11) NOT NULL,
  `lokasi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pendanaan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `kondisi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tahun` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jenis` int(10) NULL DEFAULT NULL,
  `keterangan` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kelola_bahan
-- ----------------------------
INSERT INTO `kelola_bahan` VALUES (3, '2', '1', '6', 5, 5, '5', '4', 90000, '2', '2019', NULL, NULL);
INSERT INTO `kelola_bahan` VALUES (7, '1', '1', '11', 10, 4, '5', '6', 100000, '1', '2018', 1, NULL);
INSERT INTO `kelola_bahan` VALUES (8, '2', '1', '12', 3, 2, '8', '6', 1000000, '1', '2020', 1, NULL);

-- ----------------------------
-- Table structure for kelola_penggantian
-- ----------------------------
DROP TABLE IF EXISTS `kelola_penggantian`;
CREATE TABLE `kelola_penggantian`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_peminjaman` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_barang` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status_penggantian` char(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` char(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for kelola_penyimpanan
-- ----------------------------
DROP TABLE IF EXISTS `kelola_penyimpanan`;
CREATE TABLE `kelola_penyimpanan`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_penyimpanan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kelola_penyimpanan
-- ----------------------------
INSERT INTO `kelola_penyimpanan` VALUES (1, 'Lab Bio 1', '1');
INSERT INTO `kelola_penyimpanan` VALUES (2, 'Lab Bio 2', '1');
INSERT INTO `kelola_penyimpanan` VALUES (3, 'Lab Bio 3', '1');
INSERT INTO `kelola_penyimpanan` VALUES (4, 'Lab Bio 4', '1');
INSERT INTO `kelola_penyimpanan` VALUES (5, 'Lab Bio 5', '1');
INSERT INTO `kelola_penyimpanan` VALUES (6, 'Lab Bio 6', '1');
INSERT INTO `kelola_penyimpanan` VALUES (7, 'Lab Bio 7', '1');
INSERT INTO `kelola_penyimpanan` VALUES (8, 'Lab Bio 8', '1');

-- ----------------------------
-- Table structure for kondisi_barang
-- ----------------------------
DROP TABLE IF EXISTS `kondisi_barang`;
CREATE TABLE `kondisi_barang`  (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `kondisi` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kondisi_barang
-- ----------------------------
INSERT INTO `kondisi_barang` VALUES (1, 'Sangat Baik');
INSERT INTO `kondisi_barang` VALUES (2, 'Baik');
INSERT INTO `kondisi_barang` VALUES (3, 'Cukup');
INSERT INTO `kondisi_barang` VALUES (4, 'Kurang');
INSERT INTO `kondisi_barang` VALUES (5, 'Rusak');

-- ----------------------------
-- Table structure for master_bagian
-- ----------------------------
DROP TABLE IF EXISTS `master_bagian`;
CREATE TABLE `master_bagian`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bagian` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_bagian
-- ----------------------------
INSERT INTO `master_bagian` VALUES (1, 'Aktif');
INSERT INTO `master_bagian` VALUES (2, 'NonAktif');

-- ----------------------------
-- Table structure for master_bahan
-- ----------------------------
DROP TABLE IF EXISTS `master_bahan`;
CREATE TABLE `master_bahan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_bahan` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_bahan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tahun` int(4) NULL DEFAULT NULL,
  `pengarang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_bahan
-- ----------------------------
INSERT INTO `master_bahan` VALUES (1, 'BK01', 'Air', 'Air Raksa', 2020, 'Josh gothel', NULL, NULL);
INSERT INTO `master_bahan` VALUES (2, 'MK02', 'Galon', 'Galon Air', 2020, NULL, NULL, NULL);
INSERT INTO `master_bahan` VALUES (3, 'KUas', '0', 'huisa', 0, NULL, 'files/2020/12/3c4cf62bbe7a6c73f53da06532f3cc4d.png', 'undefined');

-- ----------------------------
-- Table structure for master_instansi
-- ----------------------------
DROP TABLE IF EXISTS `master_instansi`;
CREATE TABLE `master_instansi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `provinsi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telepon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kementerian` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tahun_ajaran` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_fakultas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_dekan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_fakultas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telepon_fakultas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_jurusan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_kajur` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_kalab` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telepon_jurusan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_jurusan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deskripsi_jurusan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `peta_jurusan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `favicon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `zona_waktu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_instansi
-- ----------------------------
INSERT INTO `master_instansi` VALUES (1, 'Universitas Negeri Semarang', 'Kampus Sekaran, Gunungpati, Semarang', '', '', '', '', 'files/2020/06/caaeaf25e339de88e954cc8140d3d390.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '');

-- ----------------------------
-- Table structure for master_level
-- ----------------------------
DROP TABLE IF EXISTS `master_level`;
CREATE TABLE `master_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_level
-- ----------------------------
INSERT INTO `master_level` VALUES (1, 'Super Admin');
INSERT INTO `master_level` VALUES (2, 'Admin');
INSERT INTO `master_level` VALUES (3, 'Kepala Lab');
INSERT INTO `master_level` VALUES (4, 'Laboran');
INSERT INTO `master_level` VALUES (6, 'Assisten Lab');
INSERT INTO `master_level` VALUES (7, 'Dosen');
INSERT INTO `master_level` VALUES (8, 'Mahasiswa');

-- ----------------------------
-- Table structure for master_nama_alat
-- ----------------------------
DROP TABLE IF EXISTS `master_nama_alat`;
CREATE TABLE `master_nama_alat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_alat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_nama_alat
-- ----------------------------
INSERT INTO `master_nama_alat` VALUES (1, 'MK01', NULL, 'Mikroskop', 'Mikroskop');
INSERT INTO `master_nama_alat` VALUES (2, 'MK02', NULL, 'Mikroskop Besar', 'Mikroskop Besar');
INSERT INTO `master_nama_alat` VALUES (4, 'BJ1', NULL, 'Bejana', 'Bejana serba bisa');
INSERT INTO `master_nama_alat` VALUES (5, 'KM1', NULL, 'Kamera', 'kamera');
INSERT INTO `master_nama_alat` VALUES (6, 'LP1', NULL, 'LUOP', '');
INSERT INTO `master_nama_alat` VALUES (7, 'RU1', NULL, 'Ruang 1', '');
INSERT INTO `master_nama_alat` VALUES (8, 'KU', NULL, 'Kursi', '');
INSERT INTO `master_nama_alat` VALUES (10, 'KUa', 'files/2020/12/3d63ffdd1aa3cccc0fb5f5d375ad712e.png', 'Ruanga', '');
INSERT INTO `master_nama_alat` VALUES (11, 'MK02111', 'files/2020/12/62504e076ceb4474bb9c8f8bb2559114.jpeg', 'coba', '');

-- ----------------------------
-- Table structure for master_satuan
-- ----------------------------
DROP TABLE IF EXISTS `master_satuan`;
CREATE TABLE `master_satuan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_satuan` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_satuan
-- ----------------------------
INSERT INTO `master_satuan` VALUES (1, 'pcs', 'pcs');
INSERT INTO `master_satuan` VALUES (2, 'Ruang', 'untuk satuan ruang');

-- ----------------------------
-- Table structure for master_sumber_pendanaan
-- ----------------------------
DROP TABLE IF EXISTS `master_sumber_pendanaan`;
CREATE TABLE `master_sumber_pendanaan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sumber_pendanaan` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_sumber_pendanaan
-- ----------------------------
INSERT INTO `master_sumber_pendanaan` VALUES (3, 'Fakultas', 'Ada');
INSERT INTO `master_sumber_pendanaan` VALUES (4, 'Universitas', 'Ada');
INSERT INTO `master_sumber_pendanaan` VALUES (5, 'BOPTN', '');
INSERT INTO `master_sumber_pendanaan` VALUES (6, 'HIBAH DIKTI', '');

-- ----------------------------
-- Table structure for master_user
-- ----------------------------
DROP TABLE IF EXISTS `master_user`;
CREATE TABLE `master_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_user
-- ----------------------------
INSERT INTO `master_user` VALUES (2, 'jihan', '1');

-- ----------------------------
-- Table structure for peminjaman
-- ----------------------------
DROP TABLE IF EXISTS `peminjaman`;
CREATE TABLE `peminjaman`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_peminjaman` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama_bahan` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama_alat` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `peminjam` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tgl_pinjam` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `tgl_pengembalian` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `status` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status_pengembalian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Belum Dikembalikan',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pengajuan_alat
-- ----------------------------
DROP TABLE IF EXISTS `pengajuan_alat`;
CREATE TABLE `pengajuan_alat`  (
  `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT,
  `id_periode` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pengaju` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_alat` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah` int(20) NOT NULL,
  `harga_satuan` int(20) NOT NULL,
  `status` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_pengajuan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pengajuan_alat
-- ----------------------------
INSERT INTO `pengajuan_alat` VALUES (8, 'P-PGN-20062700001', 'Kholiq', 'mikroskop', 10, 80000, '');
INSERT INTO `pengajuan_alat` VALUES (9, 'P-PGN-20062700001', 'Kholiq', 'pipet', 250, 10000, '');
INSERT INTO `pengajuan_alat` VALUES (10, 'P-PGN-20062700001', 'Kholiq', 'Jas Lab', 100, 250000, '');

-- ----------------------------
-- Table structure for pengajuan_bahan
-- ----------------------------
DROP TABLE IF EXISTS `pengajuan_bahan`;
CREATE TABLE `pengajuan_bahan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_periode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pengaju` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama_bahan` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jenis_bahan` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_satuan` int(50) NOT NULL,
  `status` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pengajuan_bahan
-- ----------------------------
INSERT INTO `pengajuan_bahan` VALUES (8, 'P-PGN-20062700001', 'Kholiq', 'metana', 'cair', 100, 80000, '');

-- ----------------------------
-- Table structure for periode_pengajuan
-- ----------------------------
DROP TABLE IF EXISTS `periode_pengajuan`;
CREATE TABLE `periode_pengajuan`  (
  `id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `semester` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `sumber_pendanaan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_pendanaan_turun` date NOT NULL,
  `pajak` int(11) NOT NULL,
  `status_pengajuan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of periode_pengajuan
-- ----------------------------
INSERT INTO `periode_pengajuan` VALUES ('P-PGN-20062700001', 'Ganjil', '2020-06-28', '4', '2020-08-27', 20000, '1');
INSERT INTO `periode_pengajuan` VALUES ('P-PGN-20062700002', 'Genap', '2020-06-27', '3', '2020-07-27', 1000000, '2');

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES (3, 'penuh');
INSERT INTO `status` VALUES (4, 'belum penuh');

-- ----------------------------
-- Table structure for status_pengajuan
-- ----------------------------
DROP TABLE IF EXISTS `status_pengajuan`;
CREATE TABLE `status_pengajuan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_pengajuan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of status_pengajuan
-- ----------------------------
INSERT INTO `status_pengajuan` VALUES (1, 'Aktif');
INSERT INTO `status_pengajuan` VALUES (2, 'Tidak Aktif');
INSERT INTO `status_pengajuan` VALUES (3, 'Pendanaan Sudah Turun');
INSERT INTO `status_pengajuan` VALUES (4, 'Pendanaan Belum Turun');
INSERT INTO `status_pengajuan` VALUES (5, 'Sudah Terverifikasi');

-- ----------------------------
-- Table structure for status_penggantian
-- ----------------------------
DROP TABLE IF EXISTS `status_penggantian`;
CREATE TABLE `status_penggantian`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_penggantian` char(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of status_penggantian
-- ----------------------------
INSERT INTO `status_penggantian` VALUES (1, 'sudah diganti');
INSERT INTO `status_penggantian` VALUES (2, 'belum diganti');

-- ----------------------------
-- Triggers structure for table peminjaman
-- ----------------------------
DROP TRIGGER IF EXISTS `update_peminjaman`;
delimiter ;;
CREATE TRIGGER `update_peminjaman` BEFORE INSERT ON `peminjaman` FOR EACH ROW UPDATE `kelola_bahan`, `kelola_alat`
SET `kelola_bahan`.`stock` = `kelola_bahan`.`stock` - 1,
`kelola_alat`.`stok` = `kelola_alat`.`stok` - 1
WHERE `kelola_bahan`.`id_nama_bahan` = NEW.nama_bahan
AND `kelola_alat`.`id_nama_alat` = NEW.nama_alat
;
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
