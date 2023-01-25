/*
 Navicat Premium Data Transfer

 Source Server         : tes
 Source Server Type    : MySQL
 Source Server Version : 100421
 Source Host           : localhost:3306
 Source Schema         : toko

 Target Server Type    : MySQL
 Target Server Version : 100421
 File Encoding         : 65001

 Date: 05/01/2023 02:18:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id_admin` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_admin`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id_kategori` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (1, 'Hampers');

-- ----------------------------
-- Table structure for komentar
-- ----------------------------
DROP TABLE IF EXISTS `komentar`;
CREATE TABLE `komentar`  (
  `id_komentar` int NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int NOT NULL,
  `id_produk` int NOT NULL,
  `komentar` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_komentar` datetime NOT NULL,
  PRIMARY KEY (`id_komentar`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of komentar
-- ----------------------------

-- ----------------------------
-- Table structure for pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan`  (
  `id_pelanggan` int NOT NULL AUTO_INCREMENT,
  `nama_pelanggan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email_pelanggan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password_pelanggan` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telepon_pelanggan` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fotoprofil` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_pelanggan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pelanggan
-- ----------------------------

-- ----------------------------
-- Table structure for pembayaran
-- ----------------------------
DROP TABLE IF EXISTS `pembayaran`;
CREATE TABLE `pembayaran`  (
  `id_pembayaran` int NOT NULL AUTO_INCREMENT,
  `id_pembelian` int NOT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bank` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah` int NOT NULL,
  `tanggal` datetime NOT NULL,
  `bukti` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_pembayaran`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pembayaran
-- ----------------------------

-- ----------------------------
-- Table structure for pembelian
-- ----------------------------
DROP TABLE IF EXISTS `pembelian`;
CREATE TABLE `pembelian`  (
  `id_pembelian` int NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int NOT NULL,
  `tanggal_pembelian` datetime NOT NULL,
  `status_pembelian` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'belum bayar',
  `total_pembelian` int NOT NULL,
  `totalberat` int NOT NULL,
  `alamatpengiriman` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `provinsi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `distrik` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tipe` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kodepos` int NOT NULL,
  `paket` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ongkir` int NOT NULL,
  `estimasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `resipengiriman` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ekspedisi` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_pembelian`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pembelian
-- ----------------------------
INSERT INTO `pembelian` VALUES (2, 0, '2020-12-01 00:00:00', 'belum bayar', 2154000, 2000, 'balan', 'Kalimantan Barat', 'Pontianak', 'Kabupaten', 78971, 'REG', 154000, '4', '', '');
INSERT INTO `pembelian` VALUES (3, 0, '2020-12-02 00:00:00', 'belum bayar', 318000, 2000, '', 'Jawa Timur', 'Lumajang', 'Kabupaten', 67319, 'Paket Kilat Khusus', 118000, '8-9 HARI', '', '');
INSERT INTO `pembelian` VALUES (4, 3, '2023-01-01 00:00:00', 'belum bayar', 2202000, 2000, 'ufijkkkkkkkkkkkkkkkkk', 'Kalimantan Utara', 'Malinau', 'Kabupaten', 77511, 'REG', 202000, '5', '', '');
INSERT INTO `pembelian` VALUES (5, 4, '2023-01-01 00:00:00', 'belum bayar', 2000000, 2000, 'jlnn', '', '', '', 0, '', 0, '', '', '');
INSERT INTO `pembelian` VALUES (6, 4, '2023-01-03 00:00:00', 'belum bayar', 2136000, 2000, '', 'Lampung', 'Metro', 'Kota', 34111, 'REG', 136000, '2-3', '', '');

-- ----------------------------
-- Table structure for pembelian_produk
-- ----------------------------
DROP TABLE IF EXISTS `pembelian_produk`;
CREATE TABLE `pembelian_produk`  (
  `id_pembelian_produk` int NOT NULL AUTO_INCREMENT,
  `id_pembelian` int NOT NULL,
  `id_pelanggan` int NOT NULL,
  `id_produk` int NOT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `harga` int NOT NULL,
  `berat` int NOT NULL,
  `subberat` int NOT NULL,
  `subharga` int NOT NULL,
  `jumlah` int NOT NULL,
  PRIMARY KEY (`id_pembelian_produk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pembelian_produk
-- ----------------------------
INSERT INTO `pembelian_produk` VALUES (1, 1, 0, 2, 'Laptop Lenovo', 200000, 2000, 2000, 200000, 1);
INSERT INTO `pembelian_produk` VALUES (2, 2, 0, 1, 'Laptop Acer Thinkpad', 2000000, 2000, 2000, 2000000, 1);
INSERT INTO `pembelian_produk` VALUES (3, 3, 0, 2, 'Laptop Lenovo', 200000, 2000, 2000, 200000, 1);
INSERT INTO `pembelian_produk` VALUES (4, 4, 0, 1, 'Hampers', 2000000, 2000, 2000, 2000000, 1);
INSERT INTO `pembelian_produk` VALUES (5, 5, 0, 1, 'Hampers', 2000000, 2000, 2000, 2000000, 1);
INSERT INTO `pembelian_produk` VALUES (6, 6, 0, 1, 'Hampers', 2000000, 2000, 2000, 2000000, 1);

-- ----------------------------
-- Table structure for produk
-- ----------------------------
DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk`  (
  `id_produk` int NOT NULL AUTO_INCREMENT,
  `id_kategori` int NOT NULL,
  `nama_produk` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `harga_produk` int NOT NULL,
  `berat_produk` int NOT NULL,
  `stok_produk` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `foto_produk` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deskripsi_produk` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_produk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of produk
-- ----------------------------
INSERT INTO `produk` VALUES (1, 2, 'Hampers', 2000000, 2000, '96', 'WhatsApp Image 2022-12-27 at 23.26.15.jpeg', '<p>bagus</p>\r\n');
INSERT INTO `produk` VALUES (2, 1, 'Hampers', 200000, 2000, '100', '1.jpeg', '<p>bagus</p>\r\n');
INSERT INTO `produk` VALUES (3, 1, 'Hampers', 2000000, 200, '100', '2.jpeg', '<p>hp</p>\r\n');
INSERT INTO `produk` VALUES (4, 1, 'Hampers', 3500000, 400, '100', '3.jpeg', '<p>v</p>\r\n');
INSERT INTO `produk` VALUES (5, 1, 'Hampers', 200000, 46, '100', '4.jpeg', '');
INSERT INTO `produk` VALUES (6, 1, 'Hampers', 20000, 50, '100', '5.jpeg', '');
INSERT INTO `produk` VALUES (7, 1, 'Hampers', 200, 50, '100', '6.jpeg', '');
INSERT INTO `produk` VALUES (8, 1, 'Hampers', 200, 50, '100', '7.jpeg', '');
INSERT INTO `produk` VALUES (9, 1, 'Hampers', 200, 50, '100', '8.jpeg', '');
INSERT INTO `produk` VALUES (10, 0, 'Hampers', 200, 50, '100', '9.jpeg', '');
INSERT INTO `produk` VALUES (11, 1, 'Hampers', 50, 50, '100', '10.jpeg', '');
INSERT INTO `produk` VALUES (12, 1, 'Hampers', 50, 50, '100', '11.jpeg', '');
INSERT INTO `produk` VALUES (13, 1, 'Hampers', 60, 50, '100', '12.jpeg', '');

-- ----------------------------
-- Table structure for produk_foto
-- ----------------------------
DROP TABLE IF EXISTS `produk_foto`;
CREATE TABLE `produk_foto`  (
  `id_produk_foto` int NOT NULL AUTO_INCREMENT,
  `id_produk` int NOT NULL,
  `nama_produk_foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_produk_foto`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of produk_foto
-- ----------------------------
INSERT INTO `produk_foto` VALUES (9, 1, '20230101092812WhatsApp Image 2022-12-27 at 23.26.15.jpeg');
INSERT INTO `produk_foto` VALUES (10, 5, '4.jpeg');
INSERT INTO `produk_foto` VALUES (11, 6, '5.jpeg');
INSERT INTO `produk_foto` VALUES (12, 7, '6.jpeg');
INSERT INTO `produk_foto` VALUES (13, 8, '7.jpeg');
INSERT INTO `produk_foto` VALUES (14, 9, '8.jpeg');
INSERT INTO `produk_foto` VALUES (15, 10, '9.jpeg');
INSERT INTO `produk_foto` VALUES (16, 11, '10.jpeg');
INSERT INTO `produk_foto` VALUES (17, 12, '11.jpeg');
INSERT INTO `produk_foto` VALUES (18, 13, '12.jpeg');

-- ----------------------------
-- Table structure for tema
-- ----------------------------
DROP TABLE IF EXISTS `tema`;
CREATE TABLE `tema`  (
  `id_tema` int NOT NULL AUTO_INCREMENT,
  `tema` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_tema`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tema
-- ----------------------------
INSERT INTO `tema` VALUES (5, '20230101100314WhatsApp Image 2022-12-27 at 23.26.15.jpeg');

-- ----------------------------
-- Table structure for toko
-- ----------------------------
DROP TABLE IF EXISTS `toko`;
CREATE TABLE `toko`  (
  `id_toko` int NOT NULL AUTO_INCREMENT,
  `id_admin` int NOT NULL,
  `namatoko` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telepon` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `provinsi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tipe` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `distrik` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fotoprofil` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_toko`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of toko
-- ----------------------------
INSERT INTO `toko` VALUES (1, 1, 'Toko Hampers', 'firzasteel121@gmail.com', '085338909196', 'Nusa Tenggara Barat', 'Kabupaten', 'Sumbawa Besar', 'Jalan Pramuka', 'DSC_0170 bw');

SET FOREIGN_KEY_CHECKS = 1;
