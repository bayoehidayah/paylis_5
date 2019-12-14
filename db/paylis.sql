-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12 Mar 2019 pada 20.47
-- Versi Server: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `paylis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id_admin` int(30) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `id_level` int(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3243274 ;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`, `id_level`) VALUES
(3243271, 'Bayu Hidayah M.', 'admin', 'Crypt#JPEGye+p+HBUcYm6ulDfcAvOo9mr9Py+#DLdhqJWj1PSaE7Yjbwij#7db1a5c8b3ac71a3feb9ef759b419fcf3c77ec8f', 1184211),
(3243273, 'Bank-1', 'bank1', 'Crypt#NJHzj98XgsliITytRVhpoo7l0ZHIcL7h#J9xlCIU=#7cccf20796b570419da609f5fcff6a39c1dbf96a', 1184212);

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE IF NOT EXISTS `level` (
`id_level` int(30) NOT NULL,
  `nama_level` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1184213 ;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`id_level`, `nama_level`) VALUES
(1184211, 'Admin'),
(1184212, 'Bank');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `id_pelanggan` varchar(30) NOT NULL,
  `id_tarif` int(30) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `id_tarif`, `nama_pelanggan`, `username`, `password`, `alamat`) VALUES
('379863362431', 100013212, 'Bayoe', 'bayu', 'Crypt#bH0nPxVmb26GTgWxKj4Q0Oa9OBMl1KZB#2G2JJ5S8mDpmyA==#2c010891c2aa84e7408d3123a520e888ed6f649d', 'Jln. Abadi no 67'),
('566496678423', 100013211, 'arnold', 'arnold', 'Crypt#VtLxDIX+qAcO+b1lWM1Y7kwAH+xSmTwl#WPzFV8w2#34e174253345170454f114d1ecd508bb73de273e', 'Jln. Abadi no 67'),
('967381439365', 100013213, 'Andra', 'andra', 'Crypt#Gf5oavrwZMWK1fAH73b3uNIb4OFbipIL#7qyxulA=#513ac0005d0e01979cd4be0ce91ed34c67db48be', 'asd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE IF NOT EXISTS `pembayaran` (
  `id_pembayaran` varchar(255) NOT NULL,
  `id_tagihan` int(30) NOT NULL,
  `id_pelanggan` varchar(30) NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `bulan_bayar` varchar(10) NOT NULL,
  `biaya_admin` int(50) NOT NULL,
  `ppj` int(20) NOT NULL,
  `ppn` int(20) NOT NULL,
  `harga_pemakaian` int(30) NOT NULL,
  `total_harga` int(30) NOT NULL,
  `total_bayar` int(100) NOT NULL,
  `total_kembalian` int(20) NOT NULL,
  `id_admin` varchar(30) NOT NULL,
  `status_pembayaran` enum('Requested','Refuse','Confirmation') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_tagihan`, `id_pelanggan`, `tanggal_pembayaran`, `bulan_bayar`, `biaya_admin`, `ppj`, `ppn`, `harga_pemakaian`, `total_harga`, `total_bayar`, `total_kembalian`, `id_admin`, `status_pembayaran`) VALUES
('5KHBrf7klRqaHhiYL4SxQbHgWws35BVt', 1653214, '379863362431', '2019-03-10', '5', 2500, 5274, 17580, 175800, 201154, 230000, 28846, '3243271', 'Confirmation'),
('5PuFkmjCYPIp52vcQqVWBbL2RTI5nDiB', 1653215, '566496678423', '2019-03-30', '3', 2500, 1245, 4150, 41500, 49395, 50000, 605, '3243271', 'Confirmation'),
('l1L8hKYDb1GIRgDhfQbHIoBOjx9r1TD3', 1653213, '379863362431', '2019-03-09', '4', 2500, 1758, 5860, 58600, 68718, 90000, 21282, '3243273', 'Confirmation'),
('mFRW8rK2ldAtuOvkIU7g9leG9Y3bXiGI', 1653216, '379863362431', '2019-03-17', '9', 2500, 2707, 9024, 90244, 104476, 120001, 15525, '3243273', 'Confirmation'),
('zXpijjiu1Lpk4B7nab4BoScTT5IkkJze', 1653217, '379863362431', '2019-03-24', '6', 2500, 2637, 8790, 87900, 101827, 120000, 18173, '', 'Requested');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penggunaan`
--

CREATE TABLE IF NOT EXISTS `penggunaan` (
`id_penggunaan` int(30) NOT NULL,
  `id_pelanggan` varchar(30) NOT NULL,
  `bulan` varchar(30) NOT NULL,
  `tahun` varchar(10) NOT NULL,
  `meter_awal` varchar(40) NOT NULL,
  `meter_akhir` varchar(40) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2731639 ;

--
-- Dumping data untuk tabel `penggunaan`
--

INSERT INTO `penggunaan` (`id_penggunaan`, `id_pelanggan`, `bulan`, `tahun`, `meter_awal`, `meter_akhir`) VALUES
(2731634, '379863362431', '4', '2019', '3100', '3200'),
(2731635, '379863362431', '5', '2019', '4000', '4300'),
(2731636, '566496678423', '3', '2019', '3000', '3100'),
(2731637, '379863362431', '9', '2019', '40000', '40154'),
(2731638, '379863362431', '6', '2019', '4300', '4450');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tagihan`
--

CREATE TABLE IF NOT EXISTS `tagihan` (
`id_tagihan` int(30) NOT NULL,
  `id_penggunaan` int(30) NOT NULL,
  `id_pelanggan` varchar(30) NOT NULL,
  `bulan` varchar(10) NOT NULL,
  `tahun` varchar(10) NOT NULL,
  `jumlah_meter` int(50) NOT NULL,
  `status` enum('Belum Lunas','Lunas') NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1653218 ;

--
-- Dumping data untuk tabel `tagihan`
--

INSERT INTO `tagihan` (`id_tagihan`, `id_penggunaan`, `id_pelanggan`, `bulan`, `tahun`, `jumlah_meter`, `status`) VALUES
(1653213, 2731634, '379863362431', '4', '2019', 100, 'Lunas'),
(1653214, 2731635, '379863362431', '5', '2019', 300, 'Lunas'),
(1653215, 2731636, '566496678423', '3', '2019', 100, 'Lunas'),
(1653216, 2731637, '379863362431', '9', '2019', 154, 'Lunas'),
(1653217, 2731638, '379863362431', '6', '2019', 150, 'Belum Lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tarif`
--

CREATE TABLE IF NOT EXISTS `tarif` (
`id_tarif` int(15) NOT NULL,
  `id_tarif_gol` int(20) NOT NULL,
  `gol_tarif` varchar(10) NOT NULL,
  `daya` varchar(25) NOT NULL,
  `tarifperkwh` int(30) NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100013245 ;

--
-- Dumping data untuk tabel `tarif`
--

INSERT INTO `tarif` (`id_tarif`, `id_tarif_gol`, `gol_tarif`, `daya`, `tarifperkwh`, `keterangan`) VALUES
(100013211, 101212581, 'R-1', '450 VA', 415, 'Subsidi'),
(100013212, 101212581, 'R-1', '900 VA', 586, 'Subsidi'),
(100013213, 101212581, 'R-1', '900 VA-RTM', 1352, 'Non-Subsidi'),
(100013214, 101212581, 'R-1', '1300 VA', 1467, 'Non-Subsidi'),
(100013215, 101212581, 'R-1', '2200 VA', 1467, 'Non-Subsidi'),
(100013216, 101212581, 'R-2', '3500 VA', 1467, 'Non-Subsidi'),
(100013217, 101212581, 'R-2', '4400 VA', 1467, 'Non-Subsidi'),
(100013218, 101212581, 'R-2', '5500 VA', 1467, 'Non-Subsidi'),
(100013219, 101212581, 'R-3', '6600 VA', 1467, 'Non-Subsidi'),
(100013220, 101212582, 'B-1', '450 VA', 535, '-'),
(100013221, 101212582, 'B-1', '900 VA', 630, '-'),
(100013222, 101212582, 'B-1', '1300 VA', 966, '-'),
(100013223, 101212582, 'B-1', '2200 VA', 1100, '-'),
(100013224, 101212582, 'B-1', '3500 VA', 1100, '-'),
(100013225, 101212582, 'B-1', '4400 VA', 1100, '-'),
(100013226, 101212582, 'B-1', '5500 VA', 1100, '-'),
(100013227, 101212583, 'S-1', '220 VA', 0, '-'),
(100013228, 101212583, 'S-2', '450 VA', 325, '-'),
(100013229, 101212583, 'S-2', '900 VA', 455, '-'),
(100013230, 101212583, 'S-2', '1300 VA', 708, '-'),
(100013231, 101212583, 'S-2', '2200 VA', 760, '-'),
(100013232, 101212583, 'S-2', '3500 VA s.d 200 kVA', 900, '-'),
(100013233, 101212584, 'I-1', '450 VA', 485, '-'),
(100013234, 101212584, 'I-1', '900 VA', 600, '-'),
(100013235, 101212584, 'I-1', '1300 VA', 930, '-'),
(100013236, 101212584, 'I-1', '2200 VA', 960, '-'),
(100013237, 101212584, 'I-1', '3500 VA s.d 14 kVA', 1112, '-'),
(100013238, 101212585, 'P-1', '450 VA', 685, '-'),
(100013239, 101212585, 'P-1', '900 VA', 760, '-'),
(100013240, 101212585, 'P-1', '1300 VA', 1049, '-'),
(100013241, 101212585, 'P-1', '2200 VA', 1076, '-'),
(100013242, 101212585, 'P-1', '3500 VA', 1076, '-'),
(100013243, 101212585, 'P-1', '4400 VA', 1076, '-'),
(100013244, 101212585, 'P-1', '5500 VA', 1076, '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tarif_gol`
--

CREATE TABLE IF NOT EXISTS `tarif_gol` (
`id_tarif_gol` int(20) NOT NULL,
  `nama_gol` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101212586 ;

--
-- Dumping data untuk tabel `tarif_gol`
--

INSERT INTO `tarif_gol` (`id_tarif_gol`, `nama_gol`) VALUES
(101212581, 'Rumah Tangga'),
(101212582, 'Bisnis'),
(101212583, 'Sosial'),
(101212584, 'Industri'),
(101212585, 'Publik');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
 ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
 ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
 ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `penggunaan`
--
ALTER TABLE `penggunaan`
 ADD PRIMARY KEY (`id_penggunaan`);

--
-- Indexes for table `tagihan`
--
ALTER TABLE `tagihan`
 ADD PRIMARY KEY (`id_tagihan`);

--
-- Indexes for table `tarif`
--
ALTER TABLE `tarif`
 ADD PRIMARY KEY (`id_tarif`);

--
-- Indexes for table `tarif_gol`
--
ALTER TABLE `tarif_gol`
 ADD PRIMARY KEY (`id_tarif_gol`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id_admin` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3243274;
--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
MODIFY `id_level` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1184213;
--
-- AUTO_INCREMENT for table `penggunaan`
--
ALTER TABLE `penggunaan`
MODIFY `id_penggunaan` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2731639;
--
-- AUTO_INCREMENT for table `tagihan`
--
ALTER TABLE `tagihan`
MODIFY `id_tagihan` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1653218;
--
-- AUTO_INCREMENT for table `tarif`
--
ALTER TABLE `tarif`
MODIFY `id_tarif` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100013245;
--
-- AUTO_INCREMENT for table `tarif_gol`
--
ALTER TABLE `tarif_gol`
MODIFY `id_tarif_gol` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101212586;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
