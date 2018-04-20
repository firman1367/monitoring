-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 29 Sep 2017 pada 04.16
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_monitoring`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_contact`
--

CREATE TABLE `tb_contact` (
  `id_contact` int(11) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `ccms` varchar(20) NOT NULL,
  `driver_co` varchar(20) NOT NULL,
  `dispatcher` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_contact`
--

INSERT INTO `tb_contact` (`id_contact`, `telp`, `ccms`, `driver_co`, `dispatcher`) VALUES
(1, '(021) 252 6966', '0815 8885 999', '0858 8180 0800', '0812 9941 6042');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_driver`
--

CREATE TABLE `tb_driver` (
  `id_employe_driver` int(11) NOT NULL,
  `code_driver` varchar(15) NOT NULL,
  `nik_employe` varchar(30) NOT NULL,
  `username_employe` varchar(30) NOT NULL,
  `hire_date` date NOT NULL,
  `type` varchar(20) NOT NULL,
  `driver_status` varchar(25) NOT NULL,
  `domicile` varchar(30) NOT NULL,
  `date_working` date NOT NULL,
  `company` varchar(60) NOT NULL,
  `area` int(11) NOT NULL,
  `phone_number1` varchar(15) NOT NULL,
  `phone_number2` varchar(15) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_driver`
--

INSERT INTO `tb_driver` (`id_employe_driver`, `code_driver`, `nik_employe`, `username_employe`, `hire_date`, `type`, `driver_status`, `domicile`, `date_working`, `company`, `area`, `phone_number1`, `phone_number2`, `keterangan`) VALUES
(1, 'M.0003', '20000016367', 'SUPARNO', '2006-03-14', 'New', 'User', 'Cipete', '0000-00-00', 'OTO Group', 1, '0813 8368 7154', '', ''),
(2, 'M.0004', '20000013730', 'AGUNG HARYANTO', '2003-01-14', 'Transfer', 'User', 'Matraman', '2009-01-14', 'OTO Group', 1, '8989842775', '', ''),
(3, 'M.0005', '20000013534', 'ARFAN NOVANTO', '2002-01-14', 'Transfer', 'User', 'Tangerang', '2009-01-14', 'OTO Group', 1, '0812 1823 1911', '', ''),
(4, 'M.0007', '20000013633', 'MUHAMMAD IQKROM', '0000-00-00', 'Transfer', 'User', 'Kalideres', '2009-01-14', 'OTO Group', 1, '0897 838 9040', '', ''),
(5, 'M.0008', '20000013535', 'SUKIRMAN', '2002-01-14', 'Transfer', 'User', 'Kreo', '2009-01-14', 'OTO Group', 1, '0815 8940 467', '', ''),
(6, 'M.0009', '20000013732', 'WAHYUDI (732)', '2003-01-14', 'Transfer', 'User', '', '2009-01-14', 'OTO Group', 1, '0821 1195 7165', '', ''),
(7, 'M.0010', '20000015782', 'IRWAN PRIYATMA', '0000-00-00', 'New', 'Operasional', 'Cipete', '0000-00-00', 'OTO Group', 1, '0812 8504 7989', '', ''),
(8, 'M.0011', '20000015729', 'SOBIRIN', '0000-00-00', 'New', 'User', '', '0000-00-00', 'OTO Group', 1, '', '', ''),
(9, 'M.0012', '20000015728', 'ANDI SYAHRUL KAYRUDDIN', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'OTO Group', 1, '0812 1951 5255', '', ''),
(10, 'M.0013', '20000015730', 'ALI RASYID', '2010-10-14', 'Transfer', 'User', '', '2010-10-14', 'OTO Group', 1, '0812 8871 0801', '', ''),
(11, 'M.0015', '20000016007', 'MUHAMMAD IQBAL (007)', '2011-03-14', 'New', 'User', 'Bekasi Timur', '2008-01-16', 'Sumitomo Group', 1, '0812 9627 1728', '', ''),
(12, 'M.0016', '20000016001', 'SUPARDJONO', '2011-01-14', 'Transfer', 'User', 'Jagakarsa', '2011-01-14', 'Sumitomo Group', 1, '0812 1392 5679', '', ''),
(13, 'M.0020', '20000016366', 'IWAN SETIAWAN (366)', '2012-01-14', 'Transfer', 'User', 'Alam Sutera', '2012-01-14', 'OTO Group', 1, '0812 1300 7894', '', ''),
(14, 'M.0021', '20000016311', 'MANTORO', '2012-01-14', 'Transfer', 'User', 'Ciputat', '2012-01-14', 'OTO Group', 1, '0853 1239 7245', '', ''),
(15, 'M.0022', '20000016370', 'MUHAMMAD RAIS', '2012-01-14', 'Transfer', 'User', 'Ciputat', '2012-01-14', 'OTO Group', 1, '0812 8023 739', '', ''),
(16, 'M.0023', '20000016364', 'RIDWAN', '2012-01-14', 'Transfer', 'User', '', '2012-01-14', 'OTO Group', 1, '0815 1654 625', '', ''),
(17, 'M.0024', '20000016367', 'SUNARJO', '2012-01-14', 'Transfer', 'User', 'Pasar Minggu', '2012-01-14', 'OTO Group', 1, '0813 1430 2396', '', ''),
(18, 'M.0025', '20000016362', 'SUWARTIN', '2012-01-14', 'Transfer', 'Operasional', 'Simprug', '2012-01-14', 'Sumitomo Group', 1, '0852 1628 5682', '', ''),
(19, 'M.0026', '20000016357', 'WISNUTOYO', '2012-01-14', 'Transfer', 'Operasional', '', '2012-01-14', 'Sumitomo Group', 1, '0812 1840 2113', '', ''),
(20, 'M.0027', '20000016355', 'YAYAT HIDAYAT', '2012-01-14', 'Transfer', 'Operasional', 'Lubang Buaya', '2012-01-14', 'Sumitomo Group', 1, '85770951184', '', ''),
(21, 'M.0028', '20000016352', 'DARGO AA', '2012-02-14', 'Transfer', 'User', 'Pesanggrahan', '2012-02-14', 'Sumitomo Group', 1, '0817 6762 441', '', ''),
(22, 'M.0030', '20000016351', 'PARLAN', '2012-02-14', 'Transfer', 'Operasional', 'Tangerang Selatan', '2012-02-14', 'Sumitomo Group', 1, '0853 1174 0715', '', ''),
(23, 'M.0032', '20000016326', 'DANDY PRAMUDITIA', '2012-08-14', 'Transfer', 'Operasional', '', '2012-08-14', 'Sumitomo Group', 1, '0838 2226 2828', '', ''),
(24, 'M.0033', '20000016325', 'DENI PRATAMA', '2012-08-14', 'Transfer', 'User', 'Cempaka Putih', '0000-00-00', 'Bhumi Jati Power', 1, '0858 8581 9033', '', ''),
(25, 'M.0034', '20000016349', 'KUSNADI', '2012-08-14', 'Transfer', 'Operasional', '', '2012-08-14', 'Sumitomo Group', 1, '0815 8516 4506', '', ''),
(26, 'M.0037', '20000016653', 'FIRMANSYAH ALAM', '0000-00-00', 'Transfer', 'Operasional', 'Petukangan Utara', '0000-00-00', 'Sumitomo Group', 1, '0813 1085 7352', '', ''),
(27, 'M.0038', '20000016665', 'HERRY AZHARI', '2001-12-15', 'New', 'User', 'Lebak Bulus', '2001-12-15', 'OTO Group', 1, '0812 9339 4324', '', ''),
(28, 'M.0039', '20000018212', 'ROHMAN02', '0000-00-00', 'New', 'Family', 'Bintaro ', '0000-00-00', 'OTO Group', 2, '0812 8864 1148', '', ''),
(29, 'M.0040', '20000016892', 'HADI SUPRIYATNO', '0000-00-00', 'New', 'Operasional', 'Kalibata', '0000-00-00', 'Sumitomo Group', 1, '0812 8349 9030', '', ''),
(30, 'M.0042', '20000016895', 'ANTONI MUNANDAR', '2002-01-15', 'Transfer', 'User', 'Meruya  ', '2002-01-15', 'Sumitomo Group', 1, '0812 1857 5407', '', ''),
(31, 'M.0043', '20000016894', 'SAHRO SUSANTO', '2002-01-15', 'Transfer', 'User', 'Cilandak', '2002-01-15', 'Sumitomo Group', 1, '0813 1616 1732', '', ''),
(32, 'M.0044', '20000016893', 'SUHARTO (6893)', '2002-01-15', 'Transfer', 'User', 'Tangerang', '2002-01-15', 'Sumitomo Group', 1, '0852 1924 4786', '', ''),
(33, 'M.0045', '20000016946', 'ROMA HARDI', '2002-07-15', 'Transfer', 'User', 'Mampang', '2002-07-15', 'Sumitomo Group', 1, '0812 1968 6057', '', ''),
(34, 'M.0047', '20000017008', 'DALYANDI', '0000-00-00', 'Transfer', 'User', 'Tangerang', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 2, '0878 8711 0604', '', ''),
(35, 'M.0048', '20000017213', 'AHMAD FAUZI', '0000-00-00', 'New', 'User', 'Pondok Cabe', '0000-00-00', 'Hino Finance Indonesia', 3, '0812 8530 3853', '', ''),
(36, 'M.0050', '20000017212', 'ZUL KIFAR RAIS', '0000-00-00', 'New', 'Operasional', 'Depok', '0000-00-00', 'Sumitomo Group', 1, '0815 1166 6971', '', ''),
(37, 'M.0051', '20000017214', 'SUHARYANTO', '0000-00-00', 'Transfer', 'User', 'Tangerang', '0000-00-00', 'OTO Group', 1, '0877 7424 1944', '', ''),
(38, 'M.0052', '20000017246', 'SYUKUR YAKUB', '0000-00-00', 'Transfer', 'Family', 'Tangerang', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 2, '0821 1032 4074', '0838 7011 8795', ''),
(39, 'M.0053', '20000017201', 'ROHMAN01', '2003-05-15', 'New', 'User', 'Cilandak', '2004-01-15', 'OTO Group', 1, '0812 8366 0661', '', ''),
(40, 'M.0056', '20000017374', 'RIYAN MAULANA', '0000-00-00', 'New', 'User', 'Simprug', '0000-00-00', 'Sumitronics Indonesia', 3, '(021) 9101 3486', '0822 9924 3664', 'Bawa User Per tanggal 20 Maret 2015'),
(41, 'M.0057', '20000017376', 'HELMI YANDI', '0000-00-00', 'New', 'User', 'Limo', '2004-01-15', 'Kaken Indonesia', 2, '0812 7333 5539', '', 'Bawa User Pertanggal 1 April 2015'),
(42, 'M.0059', '20000017417', 'IDRIS', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'OTO Group', 1, '0821 1117 6647', '', ''),
(43, 'M.0060', '20000017430', 'SATIJO', '0000-00-00', 'Transfer', 'Family', '', '2008-09-16', 'Bank BNI Securities', 2, '0812 1849 6542', '0857 1115 0680', 'Naik family di BNI Securities per tanggal 9 Agustu'),
(44, 'M.0061', '20000017432', 'PURWANTO', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Iwatani Indonesia', 1, '0858 1067 5560', '', ''),
(45, 'M.0063', '20000017400', 'HERMANTO', '2004-01-15', 'Transfer', 'User', '', '2004-01-15', 'Taiyo Sinar Raya Teknik', 3, '0812 1224 2586', '0813 1579 1604', ''),
(46, 'M.0064', '20000017378', 'KRISMANTO ', '2004-01-15', 'New', 'Family', '', '2004-01-15', 'Marubun Arrow', 2, '81297909985', '', 'Naik family per tanggal 1 april 2017 menggantikan '),
(47, '', '', 'Yudhi', '0000-00-00', 'New', 'Family', '', '0000-00-00', 'Marubun Arrow', 2, '85313023890', '', 'Naik family per tanggal 19 May 2017 menggantikan K'),
(48, 'M.0065', '20000017398', 'M NASIR', '2004-01-15', 'Transfer', 'User', '', '2004-01-15', 'Taiyo Sinar Raya Teknik', 1, '0816 1916 262', '', ''),
(49, 'M.0066', '20000017403', 'SYAMSURIZAL', '2004-01-15', 'New', 'Operasional', '', '2004-01-15', 'Sumitomo Group', 1, '0811 1267 113', '', ''),
(50, 'M.0069', '20000017397', 'GATOT SUGIANTORO', '2004-02-15', 'New', 'User', '', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '0857 7902 8433', '', 'Naik user di SMFL per tanggal 20 Juli 2016 menggan'),
(51, 'M.0070', '20000017497', 'DENY AKBAR', '2004-06-15', 'New', 'User', '', '2006-10-15', 'Summitmas Property', 2, '0857 7919 5541/', '', ''),
(52, 'M.0074', '20000017724', 'ARIE SURYANA', '0000-00-00', 'New', 'Operasional', '', '0000-00-00', 'Inabata', 3, '0817 6644 774', '', 'Bawa User Per tanggal 21 April 2015'),
(53, 'M.0075', '20000017727', 'MASRURI', '0000-00-00', 'New', 'Operasional', 'Bekasi', '0000-00-00', 'Sumitronics Indonesia', 3, '0838 7960 5559', '', 'Bawa user per tanggal 29 Juli 2015'),
(54, 'M.0076', '20000017720', 'SUGENG WALUYO', '0000-00-00', 'New', 'Operasional', '', '2011-03-15', 'Intelligence HR Solutions Indonesia', 3, '0812 9840 2001', '0896 3415 8995', 'Bawa user per tanggal 2 November 2015 menggantikan'),
(55, 'M.0076', '20000021730', 'SUGENG SUPRIYANTO', '0000-00-00', 'New', 'User', '', '0000-00-00', 'Elematec Indonesia', 2, '', '', 'Naik User per di Elematec per tanggal 1 Februari 2'),
(57, 'M.0077', '20000017741', 'SUPRIYADI02', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'Taiyo Sinar Raya Teknik', 3, '0813 1031 2276', '', ''),
(58, 'M.0079', '20000017750', 'FAJAR FERDIAN', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'OTO Group', 1, '0812 9859 0650', '', ''),
(59, 'M.0080', '20000017738', 'EKO SUPRIYONO', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'OTO Group', 1, '0812 8863 8344', '', ''),
(60, 'M.0082', '20000017739', 'DEDE SULAEMAN', '2005-05-17', 'New', 'Family', '', '0000-00-00', 'Yoden Tomoyuki Family', 1, '82112613177', '', ''),
(61, 'M.0083', '20000017713', 'WIANTO', '2005-11-15', 'New', 'User', '', '2005-11-15', 'Asahi Indofood', 1, '81213424690', '', ''),
(62, 'M.0084', '20000017925', 'GUNAWAN01', '0000-00-00', 'New', 'Family', '', '0000-00-00', 'Yasuo Sato Family', 2, '0812 8791 7757', '', 'Bawa user pertanggal 26 May 2015'),
(63, 'M.0085', '20000017926', 'ICHWAN SYAH', '0000-00-00', 'New', 'Operasional', '', '0000-00-00', 'OTO Group', 1, '0852 8383 7766', '', ''),
(64, 'M.0086', '20000017927', 'AUDHI REZA REINALDY', '0000-00-00', 'New', 'User', 'Depok', '0000-00-00', 'Tokai Precision', 3, '0813 9841 4581', '', 'Bawa user per tanggal 23 Juli 2015'),
(65, 'M.0092', '20000018096', 'AGUS SUJONO', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'Tokai Rubber', 3, '0821 1379 6694', '0812 8550 8639', ''),
(66, 'M.0093', '20000018095', 'MUSTADI', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'Promo Tec', 1, '0813 1616 8717', '', ''),
(67, 'M.0094', '20000018094', 'DEBY KURNIAWAN', '0000-00-00', 'Transfer', 'Operasional', 'Ciputat', '2007-01-15', 'Sumitomo Forestry', 1, '0812 8905 0330', '', ''),
(68, 'M.0095', '20000018093', 'SUTASAN JAYA', '2007-01-15', 'Transfer', 'User', '', '2007-01-15', 'Hissan Trading', 1, '0812 1360 9711', '', ''),
(69, 'M.0098', '20000018177', 'SARIPUDIN', '2007-08-15', 'Transfer', 'Operasional', '', '2007-08-15', 'Sumitronics Indonesia', 3, '0812 8188 7107', '', ''),
(70, 'M.0101', '20000018187', 'ASRIL', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Sumitronics Indonesia', 3, '0813 8701 3549', '', ''),
(71, 'M.0102', '20000018175', 'HENDRA IRAWAN', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Daifuku Indonesia', 3, '0838 7925 4141', '0812 1867 7660', ''),
(72, 'M.0103', '20000018178', 'MANGULIMAN', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Sumitronics Indonesia', 3, '0812 8070 6670', '', ''),
(73, 'M.0104', '20000018194', 'NOVA IKBAL', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Sumitronics Indonesia', 3, '0813 7936 0614', '', ''),
(74, 'M.0105', '20000018183', 'SYAIFUL ANWAR', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Sumitronics Indonesia', 3, '0877 7920 2059', '0812 8607 6728', ''),
(75, 'M.0106', '20000018186', 'UJANG ABDURRAHMAN', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Sumitronics Indonesia', 3, '0812 1215 0734', '', ''),
(76, 'M.0107', '20000018173', 'DEDI WAHYUDI', '0000-00-00', 'New', 'User', 'Ciputat', '0000-00-00', 'Daifuku Indonesia', 3, '0813 8977 3988', '', 'Bawa user per tanggal 22 July 2015'),
(77, 'M.0112', '20000018211', 'MUHAMAD RIZAL (8211)', '0000-00-00', 'New', 'Operasional', 'Cijantung', '2008-05-15', 'Sumitomo Group', 1, '0822 3342 9532', '', ''),
(78, 'M.0113', '20000018232', 'TORIQ', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Daifuku Indonesia', 3, '0857 1435 2966', '', ''),
(79, 'M.0114', '20000018233', 'TUNGGUL PARULIANG', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Daifuku Indonesia', 3, '0852 1901 6575', '', ''),
(80, 'M.0116', '20000018264', 'HENDRIK', '0000-00-00', 'Transfer', 'User', '', '2008-01-15', 'Central Java Power', 1, '0812 8762 0310', '', ''),
(81, 'M.0117', '20000018278', 'HERI PURWANTO', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'Taiyo Sinar Raya Teknik', 3, '0812 1977 3368', '', ''),
(82, 'M.0119', '20000018276', 'KASNARI VIRGIAWAN', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'Taiyo Sinar Raya Teknik', 3, '0813 8136 2282', '', ''),
(83, 'M.0120', '20000018262', 'SAUT MARULI TUA', '0000-00-00', 'Transfer', 'Operasional', '', '2008-01-15', 'Central Java Power', 1, '0812 8175 2007', '', ''),
(84, 'M.0121', '20000018263', 'SURYA SUKMA', '0000-00-00', 'Transfer', 'User', '', '2008-01-15', 'Central Java Power', 1, '0858 1013 2145', '', ''),
(85, 'M.0122', '20000018239', 'KURNIANTO', '2008-01-15', 'Transfer', 'User', '', '2008-01-15', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 2, '0812 9447 5823', '', ''),
(86, 'M.0123', '20000018238', 'PONIDJAN', '2008-01-15', 'Transfer', 'Operasional', '', '2008-01-15', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 2, '0812 8701 190', '0878 8231 8759', ''),
(87, 'M.0124', '20000018256', 'YAHYA GUNAWAN', '2008-01-15', 'Transfer', 'User', '', '2008-01-15', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 2, '0821 2257 4465', '0819 1107 2434', ''),
(88, 'M.0125', '20000018265', 'AGUNG BUDI SANTOSO', '2008-05-15', 'New', 'User', 'Perum Harapan Baru, Bekasi Bar', '2009-04-15', 'Daido Kogyo Indonesia', 1, '0816 1461 447', '', ''),
(89, 'M.0131', '20000018470', 'AHMAD ROMLI', '2009-01-15', 'Transfer', 'Operasional', '', '2009-01-15', 'Sumitomo Group', 1, '81281645580', '', ''),
(90, 'M.0132', '20000018474', 'ABDUL HANAN', '2009-01-15', 'Transfer', 'User', '', '2009-01-15', 'Sumitomo Group', 1, '0812 8909 5292', '', ''),
(91, 'M.0133', '20000018461', 'AGUS SALIM', '2009-01-15', 'Transfer', 'User', '', '2009-01-15', 'Sumitomo Group', 1, '0813 8923 8010', '', ''),
(92, 'M.0135', '20000018469', 'ANDI WIJAYA', '2009-01-15', 'Transfer', 'User', '', '2009-01-15', 'Sumitomo Group', 1, '0813 9980 9862', '', ''),
(93, 'M.0136', '20000018482', 'ASEP', '2009-01-15', 'Transfer', 'User', '', '2009-01-15', 'Sumitomo Group', 1, '0812 9368 4307', '', ''),
(94, 'M.0137', '20000018451', 'CAHYADI', '2009-01-15', 'Transfer', 'User', '', '2009-01-15', 'Sumitomo Group', 1, '0819 3219 2338', '', ''),
(95, 'M.0138', '20000018473', 'DEDE SUHENDRA', '2009-01-15', 'Transfer', 'User', '', '2009-01-15', 'Sumitomo Group', 1, '0812 1916 4130', '', ''),
(96, 'M.0139', '20000018472', 'DENI HERMAWAN(472)', '2009-01-15', 'Transfer', 'User', '', '2009-01-15', 'Sumitomo Group', 1, '0857 1848 8151', '', ''),
(97, 'M.0140', '20000018446', 'EDDY AL FARISI', '2009-01-15', 'Transfer', 'User', '', '2009-01-15', 'Sumitomo Group', 1, '0812 1160 0109', '', ''),
(98, 'M.0141', '20000018471', 'GERRY INDRAWAN', '2009-01-15', 'Transfer', 'User', '', '2009-01-15', 'Sumitomo Group', 1, '0878 8597 1057', '', ''),
(99, 'M.0142', '20000018444', 'GUSMANSYAH', '2009-01-15', 'Transfer', 'Operasional', '', '2009-01-15', 'Sumitomo Group', 1, '0856 8590 7278', '', ''),
(100, 'M.0143', '20000018487', 'HIDAYATULLAH', '2009-01-15', 'Transfer', 'User', '', '2011-01-16', 'Bhumi Jati Power', 1, '0812 8605 9023', '', ''),
(101, 'M.0144', '20000018489', 'IRFANI', '2009-01-15', 'Transfer', 'User', '', '2009-01-15', 'Sumitomo Group', 1, '0857 1424 4433', '', ''),
(102, 'M.0145', '20000018449', 'MUHAMMAD IRWAN JANUADI', '2009-01-15', 'Transfer', 'Operasional', '', '2009-01-15', 'Sumitomo Group', 1, '0813 1831 3464', '', ''),
(103, 'M.0146', '20000018475', 'LILI SARMILI', '2009-01-15', 'Transfer', 'User', '', '2009-01-15', 'Sumitomo Group', 1, '0812 1392 5671', '', ''),
(104, 'M.0147', '20000018445', 'M SAHRO', '2009-01-15', 'Transfer', 'User', '', '2009-01-15', 'Sumitomo Group', 1, '0812 1392 5669', '', ''),
(105, 'M.0149', '20000018480', 'NGATIMIN', '2009-01-15', 'Transfer', 'User', '', '2009-01-15', 'Sumitomo Group', 1, '0821 1315 0744', '', ''),
(106, 'M.0150', '20000018460', 'NURMAN', '2009-01-15', 'Transfer', 'User', '', '2009-01-15', 'Sumitomo Group', 1, '0813 9888 6677', '', ''),
(107, 'M.0151', '20000018447', 'PUJIANTO BIN CASMO', '2009-01-15', 'Transfer', 'Operasional', '', '2009-01-15', 'Sumitomo Group', 1, '0838 7814 4710', '', ''),
(108, 'M.0152', '20000018476', 'RUSLAN', '2009-01-15', 'Transfer', 'User', '', '2009-01-15', 'Sumitomo Group', 1, '0813 1495 8613', '', ''),
(109, 'M.0153', '20000018462', 'SAMUEL NAINGGOLAN', '2009-01-15', 'Transfer', 'User', '', '2009-01-15', 'Sumitomo Group', 1, '0812 9475 4567', '', ''),
(110, 'M.0154', '20000018477', 'SUMARTONO', '2009-01-15', 'Transfer', 'User', '', '2009-01-15', 'Sumitomo Group', 1, '0813 1165 1461', '', ''),
(111, 'M.0155', '20000018448', 'SUPRIYONO (448)', '2009-01-15', 'Transfer', 'User', '', '2009-01-15', 'Sumitomo Group', 1, '81511156351', '', ''),
(112, 'M.0156', '20000018488', 'SURIPTO', '2009-01-15', 'Transfer', 'Operasional', '', '2009-01-15', 'Sumitomo Group', 1, '82124143542', '', ''),
(113, 'M.0157', '20000018443', 'TAUFIK H ABDUL MANAF', '2009-01-15', 'Transfer', 'User', '', '2009-01-15', 'Sumitomo Group', 1, '0812 1906 629', '', ''),
(114, 'M.0158', '20000018491', 'AKHMAD MUNGAWAM', '2009-02-15', 'New', 'Operasional', 'Cikarang', '0000-00-00', 'Kansai Paint', 3, '0812 8331 8521', '0813 1421 9809', 'Naik user per tanggal 21 Maret 2016'),
(115, 'M.0159', '20000018490', 'DICKA PUTRA PRASETIA', '2009-03-15', 'New', 'User', '', '2009-03-15', 'JMT Indonesia', 2, '0812 9055 3126', '', ''),
(116, 'M.0167', '20000018542', 'SUNOTO', '2009-11-15', 'New', 'User', 'Pademangan', '2009-11-15', 'Bank Resona Perdania', 2, '0856 9569 9659', '', 'Menggantikan Ahmad Puadi per tanggal 11 september '),
(117, 'M.0168', '20000018694', 'SARNO', '0000-00-00', 'New', 'User', 'Cawang', '2010-07-15', 'Asahi Indofood', 1, '82134117161', '', ''),
(118, 'M.0170', '20000020076', 'DEDE', '0000-00-00', 'New', 'User', '', '0000-00-00', 'Mukti Abadi Sadaya', 2, '', '', ''),
(119, 'M.0172', '20000018675', 'ASDI BIN DULJAYA', '2010-01-15', 'Transfer', 'User', 'Pulomas', '2010-01-15', 'OTO Group', 1, '0812 8797 6852', '', ''),
(120, 'M.0175', '20000018665', 'JOKO', '2010-07-15', 'Transfer', 'User', '', '2010-07-15', 'Sumitomo Group', 1, '0856 1420 230', '', ''),
(121, 'M.0180', '20000018838', 'KETUT SUPARMAN', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'Tokai Rubber', 3, '0813 8900 0689', '', ''),
(122, 'M.0183', '20000018847', 'JOKO IMAN SANTOSO', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'Central Java Power', 1, '0813 1806 2640', '', ''),
(123, 'M.0184', '20000018855', 'UMAR', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Sumitomo Group', 1, '', '', ''),
(124, 'M.0187', '20000018842', 'HILMAN FIRMANSYAH', '0000-00-00', 'New', 'Family', 'Bekasi Utara', '0000-00-00', 'Isao Kubota', 2, '0812 8199 0829', '', 'Naik user per tanggal 21 Desember 2015'),
(125, 'M.0188', '20000018926', 'GUSTI ZULKIFAR ALINOOR', '2011-06-15', 'New', 'Family', 'Bintaro ', '2011-06-15', 'Yuichiro Ono', 2, '0822 2646 9414', '', 'Bawa user per tanggal 6 November 2015 menggantikan'),
(126, 'M.0190', '20000018843', 'HARI AGUS RISMANTO', '2011-09-15', 'New', 'User', 'Gandaria', '2011-09-15', 'OTO Group', 1, '0821 1132 0783', '', ''),
(127, 'M.0193', '20000019077', 'SUKARNO', '2011-10-15', 'Transfer', 'User', 'Cibubur', '2011-10-15', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 2, '0878 7724 4169', '', ''),
(128, 'M.0194', '20000018894', 'NURDIN', '2011-11-15', 'New', 'User', '', '2011-11-15', 'Hitz Indonesia', 1, '85810496099', '', ''),
(129, 'M.0196', '20000018914', 'ALI RIWANTO', '0000-00-00', 'New', 'Operasional', 'Poltangan', '0000-00-00', 'Sumitomo Forestry', 1, '0813 8911 3083', '', ''),
(130, 'M.0197', '20000019084', 'LUCKY ZEN', '0000-00-00', 'New', 'User', '', '0000-00-00', 'Toshiba Asia Pacific Indonesia', 1, '0822 1391 3651', '', ''),
(131, 'M.0199', '20000019081', 'SARJITO TARTO HANDOYO', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'Daido Kogyo Indonesia', 1, '0812 9571 7020', '', ''),
(132, 'M.0206', '20000019308', 'SUHARTANTO', '2001-08-16', 'New', 'User', 'Pondok Pinang', '2001-08-16', 'Chugai Bussan Indonesia', 1, '818762664', '', ''),
(133, 'M.0207', '20000019353', 'DENNY KURNIAWAN (353)', '2001-11-16', 'New', 'Operasional', 'Cakung', '0000-00-00', 'OTO Group', 1, '0822 2766 2811', '', ''),
(134, 'M.0208', '20000019579', 'KARIM', '0000-00-00', 'New', 'Family', 'Pesanggrahan', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 2, '0857 7897 8917', '', 'Naik user per tanggal 17 Januari 2016 menggantikan'),
(135, 'M.0212', '20000019570', 'ABD ROHMAN', '0000-00-00', 'New', 'Family', 'Cilandak', '0000-00-00', 'OTO Group', 1, '81398886559', '', ''),
(136, 'M.0214', '20000019568', 'ARSANI', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'Indonesia Air Water', 2, '0878 7533 7856', '0856 9752 4559', 'Take over ke Mukti per tanggal 26 Januari 2016 men'),
(137, 'M.0215', '20000019582', 'IMAM JALALUDIN', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'Central Java Power', 1, '0852 8718 5885', '', ''),
(138, 'M.0216', '20000019581', 'ANDY BARIAN', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'Promo Tec', 1, '0813 2409 7997', '', ''),
(139, 'M.0217', '20000019580', 'IRWAN KURNIAWAN', '0000-00-00', 'New', 'User', '', '0000-00-00', 'Syngenta', 2, '83871523344', '', 'Naik user per 17 april 2017 sampai pertengahan mei'),
(140, 'M.0218', '20000019565', 'JOKO PURWANTO', '2002-01-16', 'Transfer', 'Operasional', '', '2002-01-16', 'Sumitomo Group', 1, '0812 5002 4691', '', ''),
(141, 'M.0219', '20000019578', 'SUNARNO', '2002-01-16', 'Transfer', 'Operasional', '', '2002-01-16', 'Sumitomo Group', 1, '0812 1392 5676', '', ''),
(142, 'M.0220', '20000019561', 'EGNATIUS RUSDIYANTO', '2002-10-16', 'New', 'Operasional', 'Bekasi', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '0812 8867 8434', '', 'Naik user per tanggal 16 Mei 2016'),
(143, 'M.0221', '20000019564', 'NATHANAEL IRAWAN', '2002-10-16', 'New', 'Operasional', 'Ciracas', '0000-00-00', 'Sumitomo Group', 1, '0877 8891 2777', '', ''),
(144, 'M.0222', '20000019812', 'BAMBANG ADI TRIYONO', '0000-00-00', 'New', 'Operasional', 'Pamulang', '2008-01-16', 'Sumitomo Group', 1, '81291898974', '', ''),
(145, 'M.0223', '20000019847', 'EDY MUGHNI', '0000-00-00', 'New', 'Family', 'Ciledug', '2004-01-16', 'Sumitomo Group', 2, '0812 9855 6318', '', ''),
(146, '', '20000019809', 'SABARUDIN', '0000-00-00', 'New', 'Operasional', '', '2005-02-17', 'Sumitomo Group', 1, '81317124682', '', ''),
(147, 'M.0228', '20000020020', 'ADIL', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '0853 2912 2197', '', ''),
(148, 'M.0230', '20000020025', 'ERWANTO', '0000-00-00', 'Transfer', 'Family', '', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '0813 9386 5026', '', ''),
(149, 'M.0231', '20000020026', 'MASRIZAL', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '0813 3184 3242', '', ''),
(150, 'M.0232', '20000020027', 'MONANG', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '0819 0517 1483', '', ''),
(151, 'M.0233', '20000020036', 'MUHAMMAD SOBUR', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '0813 9874 1499', '', ''),
(152, 'M.0234', '20000020035', 'MUSTAJAB HAFIZD', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '0813 1137 2984', '', ''),
(153, 'M.0235', '20000020028', 'PARDIMAN', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '0821 2507 3475', '', ''),
(154, 'M.0236', '20000020044', 'NGAKAN PUTU WIDIANA', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '0815 1365 2128', '', ''),
(155, 'M.0237', '20000020039', 'RIONAL BUDYANTO', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '0857 7848 1642', '', ''),
(156, 'M.0238', '20000020033', 'RONI JALI', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '0858 1123 3788', '', ''),
(157, 'M.0239', '20000020042', 'SULAIMAN', '0000-00-00', 'Transfer', 'Corporate', '', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '0812 1242 4953', '', ''),
(158, 'M.0241', '20000020029', 'SYAMSUL HAERUDIN', '0000-00-00', 'Transfer', 'Corporate', '', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '0823 1101 6283', '', ''),
(159, 'M.0242', '20000020032', 'TEGUH IMAN', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '0823 5063 3673', '', ''),
(160, 'M.0243', '20000020031', 'TONDI ISKANDAR', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '0813 8487 9809', '', ''),
(161, 'M.0246', '', 'SUBUR SARTONO', '0000-00-00', 'New', '', '', '0000-00-00', 'Muramoto Elektronika Indonesia', 3, '0813 8186 4758', '', ''),
(162, 'M.0247', '20000020054', 'MULYADI', '2004-04-16', 'New', 'User', '', '2001-11-17', 'Summit Niaga', 1, '81315106663', '', ''),
(163, 'M.0248', '20000020087', 'SOPYAN HADI', '2004-04-16', 'New', 'User', 'Matraman', '2004-06-16', 'Asahi Indofood', 1, '81386755775', '', ''),
(164, 'M.0249', '', 'FEBRIAN TOUFAN', '2004-05-16', 'New', 'User', 'Jati Asih', '2006-07-16', 'Aisan Nasmoco', 3, '0813 1083 3558', '0878 7746 5236', 'Naik user di Aisan per tanggal 7 Juni 2016'),
(165, 'M.0250', '20000020079', 'LAMBOK SITOMORANG', '2004-07-16', 'New', 'Operasional', 'Cipayung', '2004-11-16', 'MCNS Polyurethanes Indonesia', 1, '0813 1672 8200', '', ''),
(166, 'M.0252', '20000020077', 'SARINGAT', '2004-07-16', 'New', 'User', 'Pondok Gede', '0000-00-00', 'Sumitomo Group', 1, '0821 2231 7772', '', ''),
(167, 'M.0253', '20000020092', 'ANDI IRAWAN', '2004-12-16', 'New', 'User', 'Kebun Jerul', '0000-00-00', 'JTB Indonesia', 1, '0812 1231 5000', '', ''),
(168, 'M.0254', '20000020088', 'BAMBANG HERMANTO', '2004-12-16', 'New', 'User', 'Jatinegara', '0000-00-00', 'JTB Indonesia', 1, '0858 9120 1783', '', ''),
(169, 'M.0255', '20000020249', 'DENNY SAMUEL', '0000-00-00', 'New', 'Family', 'Kalideres', '2006-07-16', 'Summitmas Property', 1, '0813 1102 3822', '', ''),
(170, 'M.0257', '20000020251', 'DAMIN SUPRAPTO', '0000-00-00', 'New', 'User', 'Meruya Kembangan', '0000-00-00', 'Taiyo Sinar Raya Teknik', 3, '0812 1046 2690', '', 'Naik user per tanggal 20 Juni 2016 menggantikan M.'),
(171, 'M.0258', '20000020253', 'DENI HERMAWAN02', '0000-00-00', 'New', 'Family', 'Permata Hijau', '0000-00-00', 'Muramoto Elektronika Indonesia', 2, '0812 9430 5386', '', 'Naik user per tanggal 22 April 2016 menggantikan A'),
(172, 'M.0259', '20000020258', 'MA''MUN MULYANA', '0000-00-00', 'New', 'Operasional', 'Sukanegara', '0000-00-00', 'Sumiden Serasi Wire Products', 3, '0812 8992 3393', '', ''),
(173, 'M.0260', '20000020255', 'SIGIT APRIYADI', '0000-00-00', 'New', 'User', 'Bekasi', '0000-00-00', 'Sumitomo Group', 1, '0857 1059 9360', '', ''),
(174, 'M.0261', '20000020254', 'TARMA', '0000-00-00', 'Transfer', 'User', 'Bekasi', '0000-00-00', 'Indonesia Air Water', 3, '0812 8098 514', '', ''),
(175, 'M.0263', '20000020332', 'HARIYADI', '2005-01-16', 'Transfer', 'User', '', '2005-01-16', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 2, '0859 4691 4690', '0815 8065 371', ''),
(176, 'M.0264', '20000020292', 'SOLIHIN', '0000-00-00', 'New', 'User', 'Bekasi', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '0877 1862 2929', '', 'Naik user per tanggal 13 Mei 2016 menggantikan Wah'),
(177, 'M.0265', '20000020471', 'IPAN EFENDI', '0000-00-00', 'New', 'Family', 'Depok', '0000-00-00', 'Panasonic Gobel Energy Indonesia', 2, '0812 8393 9810', '', ''),
(178, 'M.0266', '20000020472', 'NURDITO ANGGORO', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'Sumitomo Group', 1, '0838 7613 0291', '', ''),
(179, 'M.0267', '', 'BAMBANG IRAWAN', '0000-00-00', 'New', '', '', '0000-00-00', 'Muramoto Elektronika Indonesia', 3, '0812 8088 0726', '', ''),
(180, 'M.0268', '20000020467', 'EDIK SUBANDI', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Tokai Rubber', 3, '0813 1428 3199', '0857 8174 1017', ''),
(181, 'M.0269', '20000020462', 'GUGUN GUNAWAN', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Tokai Rubber', 3, '0878 8598 7770', '', ''),
(182, 'M.0270', '20000020461', 'HASANUDIN', '0000-00-00', 'New', 'Operasional', 'Teluk Jambe', '0000-00-00', 'Daifuku Indonesia', 3, '0813 7333 0792', '', 'Naik Operasional per tanggal 18 Januari 2017 mengg'),
(183, 'M.0271', '20000020502', 'HARDY INDARTO', '2006-08-16', 'New', 'User', 'Kuningan', '2007-11-16', 'SoftBank Telecom Indonesia', 2, '0818 0880 8008', '', 'Naik user per tanggal 11 Juli 2016 menggantikan Te'),
(184, 'M.0272', '20000020506', 'FERI FRANSISKA', '2006-08-16', 'New', 'Operasional', 'Cipulir', '0000-00-00', 'Sumitomo Group', 1, '81289660823', '', ''),
(185, 'M.0273', '20000020503', 'RAGIL JANUARIZKY PAYBA', '2006-08-16', 'New', 'Operasional', 'Kebagusan', '2009-07-16', 'OTO Group', 1, '0838 0774 7293', '', ''),
(186, 'M.0274', '20000020637', 'MUCHAMMAD KADAFI', '0000-00-00', 'New', 'Operasional', 'Pancoran', '2010-03-16', 'Marubun Arrow', 3, '0812 8835 8336', '0812 1303 6655', 'Naik user di Marubun Arrow per tanggal 3 October 2'),
(187, 'M.0276', '20000020635', 'EKO PURWANTO', '0000-00-00', 'New', 'Family', 'Sawangan', '0000-00-00', 'Kansai Prakarsa Coatings', 2, '0856 1427 481', '', 'Naik family di Kansai Prakarsa menggantikan Hasran'),
(188, 'M.0278', '20000020632', 'ICHWAN CHALID', '0000-00-00', 'New', 'Family', '', '0000-00-00', 'Bhumi Jati Power', 2, '08129653018', '', ''),
(189, 'M.0279', '20000020638', 'SUPARYO', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'AnKdoor', 3, '0813 8311 5522', '', ''),
(190, 'M.0284', '20000020639', 'ARIEF ZAL', '2007-11-16', 'Transfer', 'Operasional', '', '2007-11-16', 'Kajima Indonesia', 1, '81287258524', '', ''),
(191, 'M.0285', '20000020860', 'ALI MUSTOFA', '0000-00-00', 'New', 'Operasional', '', '0000-00-00', 'Kansai Paint', 3, '0813 8200 5423', '', 'Naik di PT Kansai Paint per tanggal 18 Juli 2016 m'),
(192, 'M.0287', '20000020893', 'ZULKIFLI 02', '0000-00-00', 'New', 'Family', 'Kota', '2011-11-16', 'Promo Tec', 2, '0813 1753 4731', '', ''),
(193, 'M.0288', '20000020858', 'KUDIN', '0000-00-00', 'Transfer', 'User', 'Jatinegara', '0000-00-00', 'Central Java Power', 1, '0812 8832 0555', '', ''),
(194, 'M.0289', '20000020859', 'PENDI', '0000-00-00', 'New', 'Corporate', 'Cikarang', '0000-00-00', 'Bank Resona Perdania', 2, '0857 7376 4979', '', 'Naik user per tanggal 28 Juli 2016 menggantikan As'),
(195, 'M.0290', '20000020861', 'ABDUL SYUKUR', '2008-01-16', 'New', 'User', 'Tangerang', '2008-01-16', 'Bhumi Jati Power', 1, '0852 1030 5812', '', ''),
(196, 'M.0291', '20000020868', 'MAMUN AZIZ', '2008-01-16', 'Transfer', 'User', '', '2008-01-16', 'KIIC', 3, '0857 7106 2000', '', ''),
(197, 'M.0292', '20000020897', 'SETIAWAN', '2008-01-16', 'New', 'Operasional', 'Cikarang', '2008-01-16', 'Sumitomo Group', 1, '0857 7886 8547', '', ''),
(198, 'M.0293', '20000020896', 'SUHERLY', '2008-01-16', 'New', 'Corporate', '', '2008-01-16', 'Kansai Prakarsa Coatings', 2, '0822 9957 8889', '', ''),
(199, 'M.0294', '20000020869', 'DJOKO SUSANTO', '2008-03-16', 'Transfer', 'Operasional', '', '2008-03-16', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 2, '0813 8249 1798', '', ''),
(200, 'M.0295', '20000020895', 'KANTO PURNOMO', '2008-03-16', 'Transfer', 'Operasional', '', '2008-03-16', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 2, '0877 7121 5180', '', ''),
(201, 'M.0296', '20000020863', 'SUGIARTO01', '2008-03-16', 'Transfer', 'Operasional', 'Mampang', '2008-03-16', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 2, '0812 9593 561', '', ''),
(202, 'M.0297', '20000021139', 'EMANUEL GANI ARIYADI', '0000-00-00', 'Transfer', 'Operasional', '', '2008-03-16', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 2, '0818 0831 0845', '', ''),
(203, 'M.0298', '20000020867', 'NOVE PURNOMO', '2008-04-16', 'Transfer', 'Operasional', '', '2008-04-16', 'Taiyo Sinar Raya Teknik', 3, '0813 8931 0339', '', 'Naik di Taiyo Sinar per tanggal 4 Agustus 2016 men'),
(204, 'M.0300', '20000020894', 'SUGIYONO', '2008-08-16', 'Transfer', 'Family', '', '2008-08-16', 'UHA TRADING', 2, '0857 1516 9921', '', ''),
(205, 'M.0301', '20000020899', 'CASWARI', '2008-09-16', 'New', 'Operasional', 'Cikarang', '2010-11-16', 'OTO Group', 1, '0812 9176 4868', '', ''),
(206, 'M.0302', '20000020898', 'RIDWAN KURNIAWAN', '2008-09-16', 'New', 'Operasional', 'Bekasi', '2012-01-16', 'Aisan Nasmoco', 3, '0812 1848 9919', '', ''),
(207, 'M.0303', '20000020864', 'IRPAN SETIAWAN', '2008-12-16', 'Transfer', 'Operasional', '', '2008-12-16', 'Toyota Tsusho', 1, '81320506385', '', ''),
(208, 'M.0304', '20000021151', 'JAMALULLAIL', '0000-00-00', 'New', 'Operasional', 'Kebayoran', '0000-00-00', 'Abeam Consulting Indonesia', 2, '0813 1822 7096', '', 'Naik di Abiem per tanggal 31 Agustus 2016 menggant'),
(209, 'M.0305', '20000021142', 'MOHAMAD SOLIKHUN', '0000-00-00', 'New', 'User', '', '0000-00-00', 'Hissan Trading', 1, '0878 8429 2089', '', ''),
(210, 'M.0306', '20000021171', 'ENDIN MUHIDIN', '0000-00-00', 'New', 'User', '', '0000-00-00', 'Tokai Rubber', 3, '85890489973', '', 'Naik user per tanggal 17 April 2017 menggantikan A'),
(211, 'M.0307', '20000021174', 'SUGIYANTO', '2008-11-16', 'Transfer', 'Operasional', '', '2008-11-16', 'KIIC', 3, '0812 1961 2304', '', ''),
(212, 'M.0308', '20000021150', 'KHOMAINI YASIN', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'Molitec Steel Indonesia', 2, '0818 0611 0749', '', ''),
(213, 'M.0309', '20000021143', 'BUDIONO', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'UHA TRADING', 1, '81314246199', '', ''),
(214, 'M.0311', '20000021146', 'MARSELINUS LONGA', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'Taiyo Sinar Raya Teknik', 3, '0813 1793 8214', '', ''),
(215, 'M.0312', '20000021170', 'ANDI PRATANTA', '2009-01-16', 'Transfer', 'User', '', '2009-01-16', 'Sumitomo Group', 1, '0813 1434 5408', '', ''),
(216, 'M.0317', '20000021317', 'SUPRIYONO 02', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Toshiba Asia Pacific Indonesia', 1, '0813 1992 3436', '', ''),
(217, 'M.0319', '20000021345', 'ALI NURDIN', '0000-00-00', 'New', 'Operasional', '', '0000-00-00', 'Kansai Prakarsa Coatings', 2, '0878 8765 1949', '', 'Naik di Kansai Prakarsa per tanggal 16 September 2'),
(218, 'M.0320', '20000021771', 'HARIS JAJULI', '2012-05-16', 'Transfer', 'Operasional', '', '2012-05-16', 'F-tech', 3, '0812 8341 6480', '', 'Kembali naik Operasional ke Ftech per tanggal 5 De'),
(219, 'M.0321', '20000021325', 'SUHARTO02', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'F-tech', 3, '0813 1616 1567', '', ''),
(220, 'M.0322', '20000021324', 'TRI MEILCO', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Central Java Power', 1, '0812 8262 1497', '', ''),
(221, 'M.0323', '20000021329', 'SUPRIYADI04', '0000-00-00', 'New', 'User', '', '0000-00-00', 'Misumi Indonesia', 3, '0857 1623 4440', '', ''),
(222, 'M.0324', '20000021330', 'SAMSUL SATRIANA', '0000-00-00', 'New', 'Operasional', '', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '81281856625', '', 'Naik di SMFL per tanggal 20 September 2016 menggan'),
(223, 'M.0324', '20000021330', 'SAMSUL SATRIANA', '0000-00-00', 'New', 'User', '', '0000-00-00', 'Sumitomo Group', 1, '83871426979', '', ''),
(224, 'M.0326', '20000021307', 'HARI PERMANA', '2010-03-16', 'New', 'User', '', '2010-03-16', 'Promo Tec', 1, '0813 1566 3181', '', ''),
(225, 'M.0327', '20000021346', 'KUSNADI02', '2010-03-16', 'New', 'Operasional', '', '2010-03-16', 'Sumitomo Group', 1, '87878779618', '', ''),
(226, 'M.0329', '20000021327', 'MOHAMAD ABIDIN KURNIA', '2010-03-16', 'Transfer', 'Operasional', '', '2010-03-16', 'Tokai Rubber', 3, '0878 2292 3227', '', ''),
(227, 'M.0330', '20000021376', 'RIZKY ANUGRAH SEJATI', '2010-01-16', 'Transfer', 'Operasional', '', '2010-01-16', 'BUT Marubeni Corporation', 1, '0896 8591 7618', '', ''),
(228, 'M.0331', '20000021344', 'BENNY KURNIAWAN PUTRA', '0000-00-00', 'New', 'Operasional', '', '0000-00-00', 'Hino Finance Indonesia', 3, '0813 8204 7678', '', 'Naik User di Hino per tanggal 24 Desember 2016'),
(229, 'M.0332', '20000021341', 'MOHAMMAD TAUFIQ (41)', '0000-00-00', 'New', 'Family', '', '0000-00-00', 'Hideyuki Terajima Family ', 1, '85218272785', '', ''),
(230, 'M.0333', '20000021342', 'MUHAMAD ISNAN', '2010-04-16', 'New', 'Family', 'Cipete', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 2, '0857 1765 9583', '', 'Naik Family per tanggal 16 Januari 2017 menggantik'),
(231, 'M.0335', '20000021375', 'RIAN KURNIAWAN', '2010-11-16', 'New', 'User', 'Rawamangun', '0000-00-00', 'Taiyo Sinar Raya Teknik', 3, '0896 3524 9445', '0823 1143 5800', 'Naik User di Taiyo Sinar per tanggal 17 Oktober 20'),
(232, 'M.0336', '20000021543', 'ABDUL ROZAK', '0000-00-00', 'New', 'Operasional', '', '0000-00-00', 'Fudo Tetra Corporation Representative Office', 2, '0812 1007 7557', '', ''),
(233, 'M.0337', '20000021348', 'MUCHAMAD TURYANTO', '0000-00-00', 'New', 'Operasional', 'Depok', '0000-00-00', 'SoftBank Telecom Indonesia', 2, '0813 1951 9769', '', ''),
(234, 'M.0338', '20000021561', 'MUHAMAD UNA RAIN', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 2, '0858 9138 7571', '0857 1014 5470', ''),
(235, 'M.0339', '20000021559', 'MAMAD', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'Tamano', 3, '0812 8089 3270', '0817 6916 501', ''),
(236, 'M.0340', '20000021560', 'RIVAN DARMADI', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'Tamano', 3, '0812 1902 1311', '0856 9578 7910', ''),
(237, 'M.0341', '20000021620', 'SUGIARTO02', '0000-00-00', 'New', 'Family', '', '0000-00-00', 'Mandom Indonesia', 2, '', '', ''),
(238, 'M.0341', '20000021620', 'SUGIARTO02', '0000-00-00', 'New', 'User', '', '2005-02-17', 'Mitsubishi Logistic', 2, '81213692399', '', ''),
(239, 'M.0342', '20000021545', 'NANDI WIGUNA', '0000-00-00', 'New', 'Family', 'Cipulir', '0000-00-00', 'Muramoto Elektronika Indonesia', 2, '0821 1428 9195', '0857 7920 9143', 'Naik family di Muramoto Elektronika Indonesia per '),
(240, 'M.0343', '20000021552', 'TEDY SUROTO', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'F-tech', 3, '0852 1713 5770', '', ''),
(241, 'M.0344', '20000021558', 'A. SYAHRIL', '2011-01-16', 'Transfer', 'User', '', '2011-01-16', 'Iwatani Industrial Gas Indonesia', 3, '0813 1624 4989', '0856 8300 386', ''),
(242, 'M.0345', '20000021549', 'ACHMAD FARHAN', '2011-01-16', 'New', 'Operasional', '', '2011-01-16', 'OTO Lease', 1, '81389903301', '', ''),
(243, 'M.0347', '20000021556', 'SURYA DARMA PUTRA', '2011-01-16', 'Transfer', 'Operasional', '', '2011-01-16', 'Sumitomo Group', 1, '82134887163', '', ''),
(244, 'M.0348', '20000021554', 'SUHARTA', '0000-00-00', 'New', 'Family', '', '2002-02-17', 'Sumitomo Group', 2, '8118302570', '', ''),
(245, 'M.0349', '20000021548', 'ALI KURNIA JAYA', '2011-01-16', 'New', 'User', '', '2005-08-17', 'MCNS Polyurethanes Indonesia', 1, '81317311184', '', 'naik user per 8 may menggantikan lambok m situmora'),
(246, 'M.0349', '', 'ALI KURNIA JAYA', '2011-10-16', 'New', '', '', '2002-02-17', 'Tokai Rubber', 3, '0813 1731 1184', '', 'Naik user per tanggal 6 maret 2017 menggantikan ek'),
(247, 'M.0350', '20000021547', 'EDY SULISTIYO', '2011-10-16', 'New', 'User', '', '2011-10-16', 'Marimo Property', 3, '0852 1110 6051', '', ''),
(248, 'M.0351', '20000021553', 'GUNTORO RIYANTO', '2011-11-16', 'New', 'Operasional', '', '2002-01-17', 'Elematec Indonesia', 2, '0812 8342 7190', '', 'Naik User per di Elematec per tanggal 1 Februari 2'),
(249, 'M.0352', '20000021533', 'IDING', '2011-11-16', 'New', 'Operasional', 'Karawang', '2011-11-16', 'Marubun Arrow', 3, '0812 7528 8881', '0813 1918 5349', 'Naik Operasional per tanggal 11 November 2016 meng'),
(250, 'M.0354', '20000021789', 'DUDUNG YUDIANTO', '0000-00-00', 'New', 'User', 'Bandung', '0000-00-00', 'Ebara TSI', 3, '0812 1426 4999', '0819 1026 3338', ''),
(251, 'M.0355', '20000021532', 'FERRY FAISAL', '0000-00-00', 'New', 'Operasional', '', '0000-00-00', 'Kansai Prakarsa Coatings', 2, '0856 9177 7919', '0899 9711 363', ''),
(252, 'M.0356', '20000021546', 'IDHAM HAKIM', '0000-00-00', 'New', 'Operasional', '', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '0899 1943 818', '', 'Naik Operasional di SMFL per tanggal 14 November 2'),
(253, 'M.0357', '20000021551', 'ASHADI', '2011-01-16', 'Transfer', 'User', '', '2011-01-16', 'Jabato', 1, '82299250739', '', ''),
(254, 'M.0358', '20000021557', 'APUDIN', '0000-00-00', 'New', 'User', '', '0000-00-00', 'OTO Group', 1, '81316684402', '', ''),
(255, 'M.0358', '20000021563', 'HERI SETIADJI', '2011-01-16', 'Transfer', 'User', '', '2011-01-16', 'KIIC', 3, '0813 1691 8165', '', ''),
(256, 'M.0359', '20000021544', 'RAB DUAN SYAH', '2011-01-16', 'Transfer', 'User', '', '2011-01-16', 'Jabato', 1, '82297771314', '', ''),
(257, 'M.0360', '20000021483', 'MUHAMAD MUMIN', '2011-01-16', 'New', 'Family', '', '2011-01-16', 'Sumitomo Group', 2, '0857 1040 8249', '', ''),
(258, 'M.0361', '20000021603', 'EKO PRASETYO', '0000-00-00', 'New', 'Family', '', '0000-00-00', 'Paiton Energy', 2, '0818 0658 7333', '', ''),
(259, 'M.0361', '20000021781', 'EKO PRASETYO', '0000-00-00', 'Transfer', '', '', '0000-00-00', 'Tokai Rubber', 3, '0818 0658 7333', '0821 1346 7811', ''),
(260, 'M.0362', '20000021780', 'MARNAN', '0000-00-00', 'Transfer', 'Operasional', '', '0000-00-00', 'Tokai Rubber', 3, '81398094110', '', ''),
(261, 'M.0363', '20000021601', 'ANDIKA', '0000-00-00', 'New', 'User', '', '0000-00-00', 'Summit Niaga', 1, '81212341036', '', ''),
(262, 'M.0365', '20000021772', 'EDI IRAWAN', '2012-01-16', 'New', 'User', '', '0000-00-00', 'Muramoto Elektronika Indonesia', 3, '', '', 'Naik family di Muramoto per tanggal 13 April 2017 '),
(263, 'M.0366', '20000021621', 'RENDI YOGA', '2012-01-16', 'New', 'Operasional', '', '2002-07-17', 'Emori Indonesia', 1, '81290150040', '', ''),
(264, 'M.0367', '20000021605', 'MUHAMMAD NUR', '2012-08-16', 'New', 'Operasional', '', '2012-08-16', 'Iwatani Indonesia', 1, '81380741945', '', ''),
(265, 'M.0368', '20000021773', 'FAHRUDIN', '2012-09-16', 'Transfer', 'User', '', '2012-09-16', 'Indonesia Air Water', 2, '0812 9002 2015', '0856 7467 351', ''),
(266, 'M.0369', '20000021770', 'HASAN DIDIN', '2012-09-16', 'Transfer', 'User', '', '2012-09-16', 'Iwatani Industrial Gas Indonesia', 3, '0812 1959 4505', '', ''),
(267, 'M.0370', '20000021641', 'JOHNI SUPRIATNA', '2001-10-17', 'New', 'Operasional', '', '2001-10-17', 'Hitz Indonesia', 1, '81283260460', '', ''),
(268, 'M.0371', '20000021777', 'SARYO', '0000-00-00', 'New', 'Family', '', '2001-09-17', 'Marubun Arrow', 2, '81297909985', '', 'Naik family per tanggal 9 Januari 2017 menggantika'),
(269, 'M.0371', '20000021642', 'ENDANG HERMANTO', '2001-12-17', 'New', 'Family', 'Kebayoran Lama', '2001-12-17', 'Summitmas Property', 2, '0813 1649 2311', '', ''),
(270, 'M.0372', '20000021639', 'SUGENG ISWANTO', '2012-01-16', 'New', 'Operasional', '', '2012-01-16', 'Hino Motor Sales Indonesia', 3, '', '', ''),
(271, 'M.0374', '20000021644', 'ASPARI', '2001-05-17', 'Transfer', 'Family', '', '2001-05-17', 'Sumitomo Group', 1, '', '', ''),
(272, 'M.0375', '20000021643', 'ABRAHAM GIATSON', '2001-06-17', 'New', 'Family', 'Menteng', '2001-06-17', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 1, '82298824341', '81283458223', ''),
(273, 'M.0376', '20000021640', 'BARTHOMELLEUS ALIER MIRU', '2001-11-17', 'Transfer', 'User', '', '2001-11-17', 'OG Asia Indonesia', 2, '', '', ''),
(274, 'M.0377', '20000021686', 'SUHUDIONO', '0000-00-00', 'New', 'User', '', '0000-00-00', 'Mandom Indonesia Tbk Family', 1, '85771216343', '', ''),
(275, 'M.0378', '20000021649', 'AKHMAD ROZI', '2001-10-17', 'Transfer', 'Operasional', '', '2001-10-17', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 2, '0817 6313 407', '', ''),
(276, 'M.0379', '20000021648', 'IWAN SETIAWAN02', '2001-10-17', 'Transfer', 'Operasional', '', '2001-10-17', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 2, '0812 8208 5153', '0856 9339 7678', ''),
(277, 'M.0380', '20000021650', 'KHOERUL ROMADON', '2001-10-17', 'Transfer', 'Operasional', '', '2001-10-17', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 2, '0856 1548 327', '0817 4872 327', ''),
(278, 'M.0381', '20000021667', 'ABDUS SYAKUR', '0000-00-00', 'New', 'Family', '', '0000-00-00', 'MCNS Polyurethanes Indonesia', 1, '87886357675', '', ''),
(279, 'M.0382', '20000021670', 'ADHI SANJAYA', '0000-00-00', 'New', 'User', '', '2002-01-17', 'Bhumi Jati Power', 1, '81219744974', '', ''),
(280, 'M.0383', '20000021669', 'M RUSLI', '0000-00-00', 'New', 'User', '', '2002-06-17', 'Promo Tec', 1, '81284816945', '', ''),
(281, 'M.0385', '20000021661', 'BAYU PRASETYA KUSUMA', '2002-01-17', 'Transfer', 'User', '', '2002-01-17', 'Sumitomo Group', 1, '81295584559', '', ''),
(282, 'M.0387', '20000021662', 'HERI', '2002-01-17', 'Transfer', 'User', '', '2002-01-17', 'Mizuno Corporation Of Hong Kong Limited', 1, '81381887468', '', ''),
(283, 'M.0388', '20000021665', 'MUHAMMAD SEPTIAN MUHARDI', '2002-01-17', 'Transfer', 'User', '', '2002-01-17', 'Mizuno Corporation Of Hong Kong Limited', 3, '0822 1052 7752', '', ''),
(284, 'M.0389', '20000021671', 'MUHAMMAD ANDHIKA FRAMBAYU', '2002-02-17', 'New', 'Corporate', '', '2002-02-17', 'Marimo Property', 2, '', '', 'Naik User di Marimo propety per tanggal 2 Februari'),
(285, 'M.0390', '20000021668', 'KI AGUS ABDUL RONI', '2002-09-17', 'New', 'User', '', '2002-09-17', 'Country Garden', 2, '82299399239', '', 'Naik User per tanggal 9 Februari 2017 menggantikan'),
(286, 'M.0391', '20000021666', 'JOHANSAH', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'OG Asia Indonesia', 2, '0811 9755 686', '', ''),
(287, 'M.0392', '20000021700', 'UNTUNG SUYONO', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'KIIC', 3, '0812 9130 7649', '0878 8877 0292', ''),
(288, 'M.0393', '20000021685', 'RIAN TRI HANDOKO', '0000-00-00', 'New', 'User', '', '0000-00-00', 'Elematec Indonesia', 2, '', '', 'Naik User per di Elematec per tanggal 1 Februari 2'),
(289, 'M.0394', '20000021688', 'MARWAN SISWORAHARJO', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 2, '0811 8442 89', '', ''),
(290, 'M.0395', '20000021698', 'BUYUNG ROSA INDRA', '0000-00-00', 'New', 'Family', 'Palmerah', '0000-00-00', 'Mandom Indonesia', 2, '0859 6662 4367', '', 'Naik Family di Mandom Indonesia per tanggal 20 Feb'),
(291, 'M.0396', '20000021693', 'ALWI DIDI ANTONI', '0000-00-00', 'New', 'User', 'Cilandak', '0000-00-00', 'Bank China Construction Bank Indonesia', 1, '85216453383', '', ''),
(292, 'M.0397', '20000021687', 'ADIT SAPUTRA', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'OG Asia Indonesia', 2, '0812 8939 4406', '', ''),
(293, '', '20000021715', 'SAIMIN', '0000-00-00', 'New', 'User', '', '0000-00-00', 'Bhumi Jati Power', 1, '87870830640', '', ''),
(294, '', '20000021722', 'JUWARI', '0000-00-00', 'New', 'User', '', '0000-00-00', 'Bhumi Jati Power', 1, '89652331587', '', ''),
(295, '', '20000021724', 'EKO BUDIONO', '0000-00-00', 'New', 'Operasional', '', '0000-00-00', 'Bank China Construction Bank Indonesia', 1, '85711772241', '', ''),
(296, '', '20000021719', 'ADE FAHRUANSYAH', '0000-00-00', 'New', 'Operasional', '', '0000-00-00', 'Bank China Construction Bank Indonesia', 1, '81514121218', '', ''),
(297, '', '20000021734', 'M. ABDUL SYUKUR', '0000-00-00', 'New', 'Operasional', '', '0000-00-00', 'Bank China Construction Bank Indonesia', 1, '8222168599', '', ''),
(298, '', '', 'RUSTONO', '0000-00-00', 'New', 'User', '', '0000-00-00', 'Muramoto Elektronika Indonesia', 3, '', '', 'Naik user per tanggal 17 apr 2017 menggantikan sub'),
(299, '', '20000021717', 'ACHMAD GOJALI', '2004-01-17', 'New', 'Operasional', '', '2004-12-17', 'OTO Lease', 1, '81295331230', '', ''),
(300, '', '20000021725', 'RIZKI ZAM ZAMI', '2004-01-17', 'Transfer', 'User', '', '2004-01-17', 'Mizuno Corporation Of Hong Kong Limited', 3, '0813 1063 2343', '', ''),
(301, '', '20000021737', 'MARULLOH', '2004-03-17', 'New', 'Family', '', '2004-03-17', 'Bhumi Jati Power', 1, '87786309594', '', ''),
(302, '', '20000021736', 'YUDHI YULIANTO', '2004-10-17', 'User', 'User', '', '2004-03-17', 'Nikkei Trading', 1, '85290669484', '', ''),
(303, '', '20000021738', 'OMAN', '2004-10-17', 'Take Over', 'Corporate', '', '2004-10-17', 'SMBC ( Bank Sumitomo Mitsui Indonesia)', 2, '', '', ''),
(304, '', '', 'MOCH. ALI', '0000-00-00', 'New', 'Operasional', '', '2005-02-17', 'Hibri Jaya (Hajime)', 1, '', '', ''),
(305, '', '', 'TOPIK HIDAYAT', '0000-00-00', 'New', 'Family', '', '0000-00-00', 'Promo Tec', 2, '81914150991', '', ''),
(306, '', '20000021723', 'BOBBY HERLAMBANG', '2005-08-17', 'New', 'User', '', '2005-08-17', 'Bhumi Jati Power', 1, '81247564958', '', ''),
(307, 'M.0039', '20000016668', 'SUPRIYADI 01', '0000-00-00', 'New', 'Family', 'Pondok Gede', '2004-02-15', 'OTO Group', 2, '0815 1434 1125', '', ''),
(308, '', '20000021718', 'INDRA GUSTI', '2004-01-17', 'New', 'Family', '', '0000-00-00', 'Mandom Indonesia', 2, '81285044693', '', ''),
(309, '', '20000021721', 'HENDRI IRAWAN', '0000-00-00', 'New', 'User', '', '0000-00-00', 'Broad Edge Dining Indonesia', 2, '81290579555', '', 'PHK per 10 April 2017'),
(310, 'M.0002', '20000015304', 'CHAIRUDIN HADIYOGO', '0000-00-00', 'New', 'User', '', '0000-00-00', 'Broad Edge Dining Indonesia', 2, '85779481633', '', ''),
(311, '', '20000021732', 'BAMBANG SUMARTONO', '2004-03-17', 'Transfer', 'User', '', '2004-03-17', 'KIIC', 3, '', '', ''),
(312, '', '20000021733', 'LASONO', '2004-03-17', 'New', 'Operasional', '', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '85945595903', '', ''),
(313, '', '20000021739', 'SUPARLAN', '2004-01-17', 'New', 'Operasional', '', '2004-01-17', 'Toyota Tsusho', 1, '', '', '');
INSERT INTO `tb_driver` (`id_employe_driver`, `code_driver`, `nik_employe`, `username_employe`, `hire_date`, `type`, `driver_status`, `domicile`, `date_working`, `company`, `area`, `phone_number1`, `phone_number2`, `keterangan`) VALUES
(314, '', '20000021740', 'UJANG BIDIN', '2004-01-17', 'User', 'User', '', '2004-01-17', 'Toyota Tsusho', 1, '81317856489', '', ''),
(315, '', '20000021741', 'DEDEM DERMAWAN', '2004-03-17', 'New', 'User', '', '2004-03-17', 'Toshiba Asia Pacific Indonesia', 1, '8176913513', '', ''),
(316, '', '', 'WELLY TJAHYADI', '2005-08-17', 'New', 'Operasional', '', '2005-08-17', 'Toyota Tsusho', 0, '', '', ''),
(317, '', '', 'SUMARLI', '0000-00-00', '', '', '', '0000-00-00', 'PT Hibri Jaya (Hajime)', 1, '81314467242', '', 'Resign per 4 may 2017'),
(318, '', '', 'HARRY GUNAWAN', '2005-02-17', 'New', 'Operasional', '', '2005-02-17', 'PT Aeon Fantasy Indonesia', 1, '81296233621', '', ''),
(319, '', '', 'OSCAR AFRIANTO', '2005-02-17', 'New', 'Operasional', '', '2005-02-17', 'Marimo Property', 2, '82113098333', '', 'Naik User di Marimo propety per tanggal 2 May 2017'),
(320, '', '', 'NANANG SETIAWAN', '0000-00-00', 'New', 'Operasional', '', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', 2, '85780746346', '', ''),
(321, '', '', 'SURYA LESMANA', '0000-00-00', 'New', 'Family', '', '0000-00-00', 'Mitsubishi Logistic', 2, '82210144363', '', ''),
(322, '', '', 'TEGUH IMAN02', '2005-08-17', 'New', 'User', '', '2005-08-17', 'Country Garden', 2, '8.51715E+11', '81287570808', 'Naik user per tanggal 8 may 2017 menggantikan ki a'),
(323, '', '', 'AHMAD YUNISAR', '0000-00-00', 'Transfer', 'User', '', '0000-00-00', 'F-tech', 3, '', '', ''),
(324, '', '', 'BAMBANG SANTOSO', '0000-00-00', 'New', 'User', '', '0000-00-00', 'KIIC', 3, '0857 7106 2000', '', ''),
(325, '', '', 'M RIZA FACHLAFY', '0000-00-00', 'New', 'Family', '', '0000-00-00', 'Bhumi Jati Power', 2, '085885214168', '', ''),
(326, 'M.0390', '20000021668', 'KI AGUS ABDUL RONI', '2002-09-17', 'New', 'Family', '', '2005-10-17', 'Panasonic Gobel Energy Indonesia', 2, '82299399239', '', ''),
(327, '', '', 'MASRURI', '2005-12-17', 'New', 'Family', '', '2005-12-17', 'Mandom Indonesia', 3, '81213652278', '', ''),
(328, '', '', 'HUFRON', '0000-00-00', 'New', 'User', '', '0000-00-00', 'Marubeni Corporation', 1, '8159603564', '', ''),
(329, '', '', 'ASIK PUSPITA JAYA', '2004-03-17', 'New', 'Operasional', '', '2005-01-17', 'Mukti Abadi Sadaya', 2, '85713269979', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_driver_dummy`
--

CREATE TABLE `tb_driver_dummy` (
  `id_employe_driver` int(11) NOT NULL,
  `code_driver` varchar(15) NOT NULL,
  `nik_employe` varchar(35) NOT NULL,
  `username_employe` varchar(35) NOT NULL,
  `driver_status` varchar(35) NOT NULL,
  `date_working` date NOT NULL,
  `company` varchar(35) NOT NULL,
  `phone_number1` varchar(16) NOT NULL,
  `phone_number2` varchar(16) NOT NULL,
  `domicile` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_driver_dummy`
--

INSERT INTO `tb_driver_dummy` (`id_employe_driver`, `code_driver`, `nik_employe`, `username_employe`, `driver_status`, `date_working`, `company`, `phone_number1`, `phone_number2`, `domicile`) VALUES
(1, '-', '-', 'Febrian Toufan', '', '2016-06-07', 'Aisan Nasmoco', '0813 1083 3558', '-', '-'),
(2, '-', '-', 'Ridwan Kurniawan', '', '2016-12-01', 'Aisan Nasmoco', '0812 1848 9919', '-', '-'),
(3, '-', '-', 'Suparyo', '', '2016-06-29', 'AnKdoor', '0813 8311 5522', '-', '-'),
(4, '-', '-', 'Ki Agus Abdul Roni', '', '2017-02-09', 'Country Garden', '', '-', '-'),
(5, 'M.0102', '20000018175', 'Hendra Irawan', '', '2015-07-13', 'Daifuku Indonesia', '0838 7925 4141', '-', '-'),
(6, 'M.0113', '20000018232', 'Toriq', '', '2015-07-27', 'Daifuku Indonesia', '0857 1435 2966', '-', '-'),
(7, 'M.0107', '20000018173', 'Dedi Wahyudi', '', '2015-07-22', 'Daifuku Indonesia', '0813 8977 3988', '-', '-'),
(8, 'M.0270', '20000020461', 'Hasanudin', '', '2017-01-18', 'Daifuku Indonesia', '0813 7333 0792', '-', '-'),
(9, 'M.0114', '20000018233', 'Tunggul Paruliang', '', '2015-07-27', 'Daifuku Indonesia', '0852 1901 6575', '-', '-'),
(10, 'M.0354', '20000021789', 'Dudung Yudianto', 'Corporate', '2016-11-14', 'Ebara TSI', '0812 1426 4999', '-', '-'),
(11, 'M.0320', '20000021771', 'Haris Jajuli', '', '2016-12-05', 'F-tech', '0812 8341 6480', '-', '-'),
(12, 'M.0321', '20000021325', 'Suharto02', '', '2016-09-19', 'F-tech', '0813 1616 1567', '-', '-'),
(13, 'M.0343', '20000021552', 'Tedy Suroto', '', '2016-10-31', 'F-tech', '0852 1713 5770', '-', '-'),
(14, 'M.0331', '20000021344', 'Benny Kurniawan Putra', '', '2016-12-24', 'Hino Finance Indonesia', '0813 8204 7678', '-', '-'),
(15, 'M.0048', '20000017213', 'Ahmad Fauzi', '', '2015-02-16', 'Hino Finance Indonesia', '0812 8530 3853', '-', '-'),
(16, '-', '-', 'Sugeng Iswanto', '', '2016-12-01', 'Hino Motor Sales Indonesia', '', '-', '-'),
(17, 'M.0074', '20000017724', 'Arie Suryana', '', '2015-04-21', 'Inabata', '0817 6644 774', '-', '-'),
(18, 'M.0261', '20000020254', 'Tarma', '', '2016-04-25', 'Indonesia Air Water', '0812 8098 514', '-', '-'),
(19, 'M.0076', '20000017720', 'Sugeng  Waluyo', '', '2015-11-03', 'Intellegent', '0812 9840 2001', '-', '-'),
(20, 'M.0344', '20000021558', 'A. Syahril', '', '2016-11-01', 'Iwatani Industrial Gas Indonesia', '0813 1624 4989', '-', '-'),
(21, 'M.0369', '20000021770', 'Hasan Didin', '', '2016-12-09', 'Iwatani Industrial Gas Indonesia', '0812 1959 4505', '-', '-'),
(22, 'M.0159', '20000018490', 'Dicka Putra Prasetia', '', '2015-09-03', 'JMT Indonesia', '0812 9055 3126', '-', '-'),
(23, 'M.0158', '20000018491', 'Akhmad Mungawam', '', '2016-03-21', 'Kansai Paint', '0812 8331 8521', '-', '-'),
(24, 'M.0285', '20000020860', 'Ali Mustofa', '', '2016-07-18', 'Kansai Paint', '0813 8200 5423', '-', '-'),
(25, '-', '-', 'Mamun Aziz', '', '2016-08-01', 'KIIC', '0857 7106 2000', '-', '-'),
(26, 'M.0307', '20000021174', 'Sugiyanto', '', '2016-08-11', 'KIIC', '0812 1961 2304', '-', '-'),
(27, 'M.0358', '20000021563', 'Heri Setiadji', '', '2016-11-01', 'KIIC', '0813 1691 8165', '-', '-'),
(28, '-', '-', 'Bambang Santoso', '', '0000-00-00', 'KIIC', '0857 7106 2000', '-', '-'),
(29, '-', '-', 'Untung Suyono', '', '2017-02-16', 'KIIC', '0812 9130 7649', '-', '-'),
(30, '-', '-', 'Edy Sulistiyo', '', '2016-11-10', 'Marimo Property', '0852 1110 6051', '-', '-'),
(31, 'M.0274', '20000020637', 'Muchammad Kadafi', '', '2016-10-03', 'Marubun Arrow', '0812 8835 8336', '-', '-'),
(32, 'M.0352', '20000021533', 'Iding', '', '2016-11-11', 'Marubun Arrow', '0812 7528 8881', '-', '-'),
(33, 'M.0323', '20000021329', 'Supriyadi04', '', '2016-09-30', 'Misumi Indonesia', '0857 1623 4440', '-', '-'),
(34, '-', '-', 'Rizki Zam Zami', '', '2017-02-01', 'Mizuno Corporation Of Hong Kong Lim', '0813 1063 2343', '-', '-'),
(35, '-', '-', 'Muhammad Septian Muhardi', '', '2017-02-01', 'Mizuno Corporation Of Hong Kong Lim', '0822 1052 7752', '-', '-'),
(36, '-', '-', 'Edi Irawan', '', '2017-04-13', 'Muramoto', '', '-', '-'),
(37, 'M.0342', '20000021545', 'Nandi Wiguna', '', '2016-10-30', 'Muramoto', '0821 1428 9195', '-', '-'),
(38, '-', '-', 'Subur Sartono', '', '2016-03-31', 'Muramoto', '0813 8186 4758', '-', '-'),
(39, '-', '-', 'Bambang Irawan', '', '2016-05-20', 'Muramoto', '0812 8088 0726', '-', '-'),
(40, '-', '-', 'Barthomelleus Alier Miru', '', '2017-01-11', 'OG Asia Indonesia', '', '-', '-'),
(41, '-', '-', 'Johansah', '', '2017-02-14', 'OG Asia Indonesia', '0811 9755 686', '-', '-'),
(42, '-', '-', 'Adit Saputra', '', '2017-02-28', 'OG Asia Indonesia', '0812 8939 4406', '-', '-'),
(43, 'M.0259', '20000020258', 'Ma''mun Mulyana', '', '2016-04-19', 'Sumiden Serasi Wire Products', '0812 8992 3393', '-', '-'),
(44, 'M.0056', '20000017374', 'Riyan Maulana', '', '2015-03-20', 'Sumitronics Indonesia', '(021) 9101 3486', '-', '-'),
(45, 'M.0075', '20000017727', 'Masruri', '', '2015-07-29', 'Sumitronics Indonesia', '0838 7960 5559', '-', '-'),
(46, 'M.0098', '20000018177', 'Saripudin', '', '2015-07-08', 'Sumitronics Indonesia', '0812 8188 7107', '-', '-'),
(47, 'M.0101', '20000018187', 'Asril', '', '2015-07-13', 'Sumitronics Indonesia', '0813 8701 3549', '-', '-'),
(48, 'M.0103', '20000018178', 'Manguliman', '', '2015-07-13', 'Sumitronics Indonesia', '0812 8070 6670', '-', '-'),
(49, 'M.0104', '20000018194', 'Nova Ikbal', '', '2015-07-13', 'Sumitronics Indonesia', '0813 7936 0614', '-', '-'),
(50, 'M.0105', '20000018183', 'Syaiful Anwar', '', '2015-07-13', 'Sumitronics Indonesia', '0877 7920 2059', '-', '-'),
(51, 'M.0106', '20000018186', 'Ujang Abdurrahman', '', '2015-07-13', 'Sumitronics Indonesia', '0812 1215 0734', '-', '-'),
(52, 'M.0257', '20000020251', 'Damin Suprapto', '', '2016-06-20', 'Taiyo Sinar Raya Teknik', '0812 1046 2690', '-', '-'),
(53, 'M.0335', '20000021375', 'Rian Kurniawan', '', '2016-10-17', 'Taiyo Sinar Raya Teknik', '0896 3524 9445', '-', '-'),
(54, 'M.0063', '20000017400', 'Hermanto', '', '2015-04-01', 'Taiyo Sinar Raya Teknik', '0812 1224 2586', '-', '-'),
(55, 'M.0077', '20000017741', 'Supriyadi02', '', '2015-04-21', 'Taiyo Sinar Raya Teknik', '0813 1031 2276', '-', '-'),
(56, 'M.0117', '20000018278', 'Heri Purwanto', '', '2015-07-31', 'Taiyo Sinar Raya Teknik', '0812 1977 3368', '-', '-'),
(57, 'M.0119', '20000018276', 'Kasnari Virgiawan', '', '2015-07-31', 'Taiyo Sinar Raya Teknik', '0813 8136 2282', '-', '-'),
(58, 'M.0298', '20000020867', 'Nove Purnomo', '', '2016-08-04', 'Taiyo Sinar Raya Teknik', '0813 8931 0339', '-', '-'),
(59, 'M.0311', '20000021146', 'Marselinus Longa', '', '2016-08-30', 'Taiyo Sinar Raya Teknik', '0813 1793 8214', '-', '-'),
(60, 'M.0339', '20000021559', 'Mamad', '', '2016-10-26', 'Tamano', '0812 8089 3270', '-', '-'),
(61, 'M.0340', '20000021560', 'Rivan Darmadi', '', '2016-10-26', 'Tamano', '0812 1902 1311', '-', '-'),
(62, 'M.0086', '20000017927', 'Audhi Reza Reinaldy', '', '2015-07-23', 'Tokai Precision', '0813 9841 4581', '-', '-'),
(63, '-', '-', 'Endin Muhidin', '', '2017-04-17', 'Tokai Rubber', '', '-', '-'),
(64, 'M.0092', '20000018096', 'Agus Sujono', '', '2015-06-30', 'Tokai Rubber', '0821 1379 6694', '-', '-'),
(65, 'M.0180', '20000018838', 'Ketut Suparman', '', '2015-10-20', 'Tokai Rubber', '0813 8900 0689', '-', '-'),
(66, 'M.0268', '20000020467', 'Edik Subandi', '', '2016-05-23', 'Tokai Rubber', '0813 1428 3199', '-', '-'),
(67, 'M.0269', '20000020462', 'Gugun Gunawan', '', '2016-05-23', 'Tokai Rubber', '0878 8598 7770', '-', '-'),
(68, 'M.0329', '20000021327', 'Mohamad Abidin Kurnia', '', '2016-10-03', 'Tokai Rubber', '0878 2292 3227', '-', '-'),
(69, 'M.0361', '20000021781', 'Eko Prasetyo', '', '2016-11-28', 'Tokai Rubber', '0818 0658 7333', '-', '-'),
(70, 'M.0362', '20000021780', 'Marnan', '', '2016-11-28', 'Tokai Rubber', '', '-', '-'),
(71, '-', '-', 'Irwan Kurniawan', '', '2017-04-17', 'Syngenta', '', '-', '-'),
(72, 'M.0304', '20000021151', 'Jamalullail', 'Corporate', '0000-00-00', 'Abeam Consulting Indonesia', '0813 1822 7096', '-', '-'),
(73, 'M.0167', '20000018542', 'Sunoto', 'Corporate', '0000-00-00', 'Bank Resona Perdania', '0856 9569 9659', '-', '-'),
(74, 'M.0289', '20000020859', 'Pendi', 'Corporate', '0000-00-00', 'Bank Resona Perdania', '0857 7376 4979', '-', '-'),
(75, 'M.0060', '20000017430', 'Satijo', 'Family', '0000-00-00', 'Bank BNI Securities', '0812 1849 6542', '-', '-'),
(76, 'M.0102', '20000018175', 'Hendra Irawan', 'Operasional', '0000-00-00', 'Daifuku Indonesia', '0838 7925 4141', '-', '-'),
(77, 'M.0113', '20000018232', 'Toriq', 'Operasional', '0000-00-00', 'Daifuku Indonesia', '0857 1435 2966', '-', '-'),
(78, 'M.0351', '20000021553', 'Guntoro Riyanto', 'Corporate', '0000-00-00', 'Elematec Indonesia', '0812 8342 7190', '-', '-'),
(79, '-', '-', 'Rian Tri Handoko', 'User', '0000-00-00', 'Elematec Indonesia', '', '-', '-'),
(80, '-', '-', 'Sugeng Supriyanto', 'User', '0000-00-00', 'Elematec Indonesia', '', '-', '-'),
(81, 'M.0336', '20000021543', 'Abdul Rozak', 'Operasional', '0000-00-00', 'Fudo Tetra Corporation Representati', '0812 1007 7557', '-', '-'),
(82, 'M.0214', '20000019568', 'Arsani', 'Corporate', '0000-00-00', 'Indonesia Air Water', '0878 7533 7856', '-', '-'),
(83, 'M.0368', '20000021773', 'Fahrudin', 'Corporate', '0000-00-00', 'Indonesia Air Water', '0812 9002 2015', '-', '-'),
(84, 'M.0187', '20000018842', 'Hilman Firmansyah', 'Family', '0000-00-00', 'Isao Kubota', '0812 8199 0829', '-', '-'),
(85, 'M.0057', '20000017376', 'Helmi Yandi', 'Corporate', '0000-00-00', 'Kaken Indonesia', '0812 7333 5539', '-', '-'),
(86, 'M.0276', '20000020635', 'Eko Purwanto', 'Family', '0000-00-00', 'Kansai Prakarsa Coatings', '0856 1427 481', '-', '-'),
(87, 'M.0293', '20000020896', 'Suherly', 'Corporate', '0000-00-00', 'Kansai Prakarsa Coatings', '0822 9957 8889', '-', '-'),
(88, 'M.0319', '20000021345', 'Ali Nurdin', 'Operasional', '0000-00-00', 'Kansai Prakarsa Coatings', '0878 8765 1949', '-', '-'),
(89, 'M.0355', '20000021532', 'Ferry Faisal', 'Operasional', '0000-00-00', 'Kansai Prakarsa Coatings', '0856 9177 7919', '-', '-'),
(90, 'M.0350', '20000021547', 'Edy Sulistiyo', 'Corporate', '0000-00-00', 'Marimo Property', '0852 1110 6051', '-', '-'),
(91, '-', '-', 'Muhammad Andhika Frambayu', 'Corporate', '0000-00-00', 'Marimo Property', '', '-', '-'),
(92, 'M.0308', '20000021150', 'Khomaini Yasin', 'Corporate', '0000-00-00', 'Molitec Steel Indonesia', '0818 0611 0749', '-', '-'),
(93, 'M.0265', '20000020471', 'Ipan Efendi', 'Family', '0000-00-00', 'Panasonic Gobel Energy Indonesia', '0812 8393 9810', '-', '-'),
(94, 'M.0047', '20000017008', 'Dalyandi', 'Corporate', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '0878 8711 0604', '-', '-'),
(95, 'M.0052', '20000017246', 'Syukur Yakub', 'Family', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '0821 1032 4074', '-', '-'),
(96, 'M.0122', '20000018239', 'Kurnianto', 'Corporate', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '0812 9447 5823', '-', '-'),
(97, 'M.0124', '20000018256', 'Yahya Gunawan', 'Corporate', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '0821 2257 4465', '-', '-'),
(98, 'M.0123', '20000018238', 'Ponidjan', 'Operasional', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '0812 8701 190', '-', '-'),
(99, 'M.0193', '20000019077', 'Sukarno', 'Corporate', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '0878 7724 4169', '-', '-'),
(100, 'M.0208', '20000019579', 'Karim', 'Family', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '0857 7897 8917', '-', '-'),
(101, 'M.0263', '20000020332', 'Hariyadi', 'Corporate', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '0859 4691 4690', '-', '-'),
(102, 'M.0294', '20000020869', 'Djoko Susanto', 'Operasional', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '0813 8249 1798', '-', '-'),
(103, 'M.0295', '20000020895', 'Kanto Purnomo', 'Operasional', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '0877 7121 5180', '-', '-'),
(104, 'M.0296', '20000020863', 'Sugiarto01', 'Operasional', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '0812 9593 561', '-', '-'),
(105, 'M.0297', '20000021139', 'Emanuel Gani Ariyadi', 'Operasional', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '0818 0831 0845', '-', '-'),
(106, 'M.0333', '20000021342', 'Muhamad Isnan', 'Family', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '0857 1765 9583', '-', '-'),
(107, 'M.0338', '20000021561', 'Muhamad Una Rain', 'Operasional', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '0858 9138 7571', '-', '-'),
(108, '-', '-', 'Abraham Giatson', 'Family', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '', '-', '-'),
(109, '-', '-', 'Akhmad Rozi', 'Operasional', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '0817 6313 407', '-', '-'),
(110, '-', '-', 'Iwan Setiawan02', 'Operasional', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '0812 8208 5153', '-', '-'),
(111, '-', '-', 'Khoerul Romadon', 'Operasional', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '0856 1548 327', '-', '-'),
(112, '-', '-', 'Marwan Sisworaharjo', 'Corporate', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '0811 8442 89', '-', '-'),
(113, '-', '-', 'Oman', 'Corporate', '0000-00-00', 'SMBC ( Bank Sumitomo Mitsui Indones', '', '-', '-'),
(114, 'M.0069', '20000017397', 'Gatot Sugiantoro', 'Corporate', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '0857 7902 8433', '-', '-'),
(115, 'M.0220', '20000019561', 'Egnatius Rusdiyanto', 'Corporate', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '0812 8867 8434', '-', '-'),
(116, 'M.0232', '20000020027', 'Monang', 'Corporate', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '0819 0517 1483', '-', '-'),
(117, 'M.0236', '20000020044', 'Ngakan Putu Widiana', 'Corporate', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '0815 1365 2128', '-', '-'),
(118, 'M.0235', '20000020028', 'Pardiman', 'Corporate', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '0821 2507 3475', '-', '-'),
(119, 'M.0237', '20000020039', 'Rional Budyanto', 'Corporate', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '0857 7848 1642', '-', '-'),
(120, 'M.0239', '20000020042', 'Sulaiman', 'Corporate', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '0812 1242 4953', '-', '-'),
(121, 'M.0241', '20000020029', 'Syamsul Haerudin', 'Corporate', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '0823 1101 6283', '-', '-'),
(122, 'M.0230', '20000020025', 'Erwanto', 'Family', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '0813 9386 5026', '-', '-'),
(123, 'M.0228', '20000020020', 'Adil', 'Operasional', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '0853 2912 2197', '-', '-'),
(124, 'M.0231', '20000020026', 'Masrizal', 'Operasional', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '0813 3184 3242', '-', '-'),
(125, 'M.0233', '20000020036', 'Muhammad Sobur', 'Operasional', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '0813 9874 1499', '-', '-'),
(126, 'M.0234', '20000020035', 'Mustajab Hafizd', 'Operasional', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '0813 1137 2984', '-', '-'),
(127, 'M.0238', '20000020033', 'Roni Jali', 'Operasional', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '0858 1123 3788', '-', '-'),
(128, 'M.0242', '20000020032', 'Teguh Iman', 'Operasional', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '0823 5063 3673', '-', '-'),
(129, 'M.0243', '20000020031', 'Tondi Iskandar', 'Operasional', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '0813 8487 9809', '-', '-'),
(130, 'M.0264', '20000020292', 'Solihin', 'Corporate', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '0877 1862 2929', '-', '-'),
(131, 'M.0324', '20000021330', 'Samsul Satriana', 'Operasional', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '', '-', '-'),
(132, 'M.0356', '20000021546', 'Idham Hakim', 'Operasional', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '0899 1943 818', '-', '-'),
(133, '-', '-', 'Lasono', 'Operasional', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '', '-', '-'),
(134, '-', '-', 'Nanang Setiawan', 'Operasional', '0000-00-00', 'Sumitomo Mitsui Finance Leasing', '', '-', '-'),
(135, 'M.0271', '20000020502', 'Hardy Indarto', 'Corporate', '0000-00-00', 'SoftBank Telecom Indonesia', '0818 0880 8008', '-', '-'),
(136, 'M.0337', '20000021348', 'Muchamad Turyanto', 'Operasional', '0000-00-00', 'SoftBank Telecom Indonesia', '0813 1951 9769', '-', '-'),
(137, 'M.0084', '20000017925', 'Gunawan01', 'Family', '0000-00-00', 'Avriest', '0812 8791 7757', '-', '-'),
(138, 'M.0188', '20000018926', 'Gusti Zulkifar Alinoor', 'Family', '0000-00-00', 'Yuichiro Ono', '0822 2646 9414', '-', '-'),
(139, 'M.0300', '20000020894', 'Sugiyono', 'Family', '0000-00-00', 'UHA Trading', '0857 1516 9921', '-', '-'),
(140, '-', '-', 'Indra Gusti', 'Family', '2017-04-25', 'Mandom Indonesia', '', '-', '-'),
(141, 'M.0341', '20000021782', 'Sugiarto02', 'Family', '0000-00-00', 'Mandom Indonesia', '', '-', '-'),
(142, '-', '-', 'Buyung Rosa Indra', 'Family', '0000-00-00', 'Mandom Indonesia', '0859 6662 4367', '-', '-'),
(143, 'M.0258', '20000020253', 'Deni Hermawan02', 'Family', '0000-00-00', 'Muramoto Elektronika Indonesia', '0812 9430 5386', '-', '-'),
(144, 'M.0342', '20000021545', 'Nandi Wiguna', 'Family', '0000-00-00', 'Muramoto Elektronika Indonesia', '0821 1428 9195', '-', '-'),
(145, 'M.0371', '20000021777', 'Saryo', 'Family', '0000-00-00', 'Marubun Arrow', '', '-', '-'),
(146, '-', '-', 'Eko Prasetyo', 'Family', '0000-00-00', 'Paiton Energy', '', '-', '-'),
(147, '-', '-', 'Dede', 'User', '0000-00-00', 'Mukti Abadi Sadaya', '', '-', '-'),
(148, '-', '-', 'Hendri Irawan', 'User', '0000-00-00', 'Broad Edge Dining Indonesia', '', '-', '-'),
(149, '-', '-', 'Surya Lesmana', 'Family', '0000-00-00', 'Mitsubishi Logistic', '', '-', '-'),
(150, '-', '-', 'Wianto', '', '0000-00-00', 'Asahi Indofood', '81213424690', '-', '-'),
(151, '-', '-', 'Sarno', '', '0000-00-00', 'Asahi Indofood', '82134117161', '-', '-'),
(152, '-', '-', 'Sopyan Hadi', '', '0000-00-00', 'Asahi Indofood', '81386755775', '-', '-'),
(153, '-', '-', 'Abdul Syukur', '', '0000-00-00', 'Bumi Jati Power', '0852 1030 5812', '-', '-'),
(154, '-', '-', 'Deni Pratama', '', '0000-00-00', 'Bumi Jati Power', '0858 8581 9033', '-', '-'),
(155, '-', '-', 'Hidayatullah', '', '0000-00-00', 'Bumi Jati Power', '0812 8605 9023', '-', '-'),
(156, '-', '-', 'Ichwan Chalid', '', '0000-00-00', 'Bumi Jati Power', '8129653018', '-', '-'),
(157, '-', '-', 'Adhi Sanjaya', '', '0000-00-00', 'Bumi Jati Power', '81219744974', '-', '-'),
(158, '-', '-', 'Juwari', '', '0000-00-00', 'Bumi Jati Power', '89652331587', '-', '-'),
(159, '-', '-', 'Saimin', '', '0000-00-00', 'Bumi Jati Power', '87870830640', '-', '-'),
(160, '-', '-', 'Marulloh', '', '0000-00-00', 'Bumi Jati Power', '', '-', '-'),
(161, '-', '-', 'Alwi Didi Antoni', '', '0000-00-00', 'Bank China Construction Bank Indone', '85216453383', '-', '-'),
(162, '-', '-', 'Eko Budiono', '', '0000-00-00', 'Bank China Construction Bank Indone', '85711772241', '-', '-'),
(163, '-', '-', 'M. Abdul Syakur', '', '0000-00-00', 'Bank China Construction Bank Indone', '8222168599', '-', '-'),
(164, '-', '-', 'Ade Fahrunsyah', '', '0000-00-00', 'Bank China Construction Bank Indone', '81514121218', '-', '-'),
(165, '-', '-', 'Andika', '', '0000-00-00', 'Central Java Power', '81212341036', '-', '-'),
(166, '-', '-', 'Hendrik', '', '0000-00-00', 'Central Java Power', '0812 8762 0310', '-', '-'),
(167, '-', '-', 'Imam Jalaludin', '', '0000-00-00', 'Central Java Power', '0852 8718 5885', '-', '-'),
(168, '-', '-', 'Joko Iman Santoso', '', '0000-00-00', 'Central Java Power', '0813 1806 2640', '-', '-'),
(169, '-', '-', 'Kudin', '', '0000-00-00', 'Central Java Power', '0812 8832 0555', '-', '-'),
(170, '-', '-', 'Saut Maruli Tua', '', '0000-00-00', 'Central Java Power', '0812 8175 2007', '-', '-'),
(171, '-', '-', 'Surya S', '', '0000-00-00', 'Central Java Power', '0858 1013 2145', '-', '-'),
(172, '-', '-', 'Tri Meilco', '', '0000-00-00', 'Central Java Power', '0812 8262 1497', '-', '-'),
(173, '-', '-', 'Suhartanto', '', '0000-00-00', 'Chugai Bussan Indonesia', '818762664', '-', '-'),
(174, '-', '-', 'Agung Budi Santoso', '', '0000-00-00', 'Daido Kogyo Indonesia', '0816 1461 447', '-', '-'),
(175, '-', '-', 'Sarjito Tarto Handoyo', '', '0000-00-00', 'Daido Kogyo Indonesia', '0812 9571 7020', '-', '-'),
(176, '-', '-', 'Mohammad Taufiq (41)', '', '0000-00-00', 'Hideyuki Terajima Family ', '85218272785', '-', '-'),
(177, '-', '-', 'Rendi Yoga', '', '0000-00-00', 'Emori Indonesia', '81290150040', '-', '-'),
(178, '-', '-', 'M. Solikhun', '', '0000-00-00', 'Hissan Trading', '0878 8429 2089', '-', '-'),
(179, '-', '-', 'Sutasan Jaya', '', '0000-00-00', 'Hissan Trading', '0812 1360 9711', '-', '-'),
(180, '-', '-', 'Nurdin', '', '0000-00-00', 'Hitz Indonesia', '85810496099', '-', '-'),
(181, '-', '-', 'Johni Supriatna', '', '0000-00-00', 'Hitz Indonesia', '81283260460', '-', '-'),
(182, '-', '-', 'Muhammad Nur', '', '0000-00-00', 'Iwatani Indonesia', '81380741945', '-', '-'),
(183, '-', '-', 'Purwanto', '', '0000-00-00', 'Iwatani Indonesia', '0858 1067 5560', '-', '-'),
(184, '-', '-', 'Ashadi', '', '0000-00-00', 'Jabato', '82299250739', '-', '-'),
(185, '-', '-', 'Rabduansyah', '', '0000-00-00', 'Jabato', '82297771314', '-', '-'),
(186, '-', '-', 'ARIEF ZAL', '', '0000-00-00', 'Kajima Indonesia', '81287258524', '-', '-'),
(187, '-', '-', 'Suhudiono', '', '0000-00-00', 'Mandom Indonesia Tbk Family', '85771216343', '-', '-'),
(188, '-', '-', 'Abdus Syakur', '', '0000-00-00', 'MCNS Polyurethanes Indonesia', '87886357675', '-', '-'),
(189, '-', '-', 'Heri', '', '0000-00-00', 'Mizuno', '81381887468', '-', '-'),
(190, '-', '-', 'Yudhi Yulianto', '', '0000-00-00', 'Nikkei Trading', '85290669484', '-', '-'),
(191, '-', '-', 'Rizky Anugrah Sejati', '', '0000-00-00', 'BUT Marubeni Corporation', '0896 8591 7618', '-', '-'),
(192, '-', '-', 'Abdu Rohman', '', '0000-00-00', 'OTO Group', '81398886559', '-', '-'),
(193, '-', '-', 'Agung Haryanto', '', '0000-00-00', 'OTO Group', '8989842775', '-', '-'),
(194, '-', '-', 'Ali Rasyid', '', '0000-00-00', 'OTO Group', '0812 8871 0801', '-', '-'),
(195, '-', '-', 'Andi Sahrul', '', '0000-00-00', 'OTO Group', '0812 1951 5255', '-', '-'),
(196, '-', '-', 'Arfan Novanto', '', '0000-00-00', 'OTO Group', '0812 1823 1911', '-', '-'),
(197, '-', '-', 'Asdi Bin Duljaya', '', '0000-00-00', 'OTO Group', '0812 8797 6852', '-', '-'),
(198, '-', '-', 'Caswari', '', '0000-00-00', 'OTO Group', '0812 9176 4868', '-', '-'),
(199, '-', '-', 'Denny Kurniawan (353)', '', '0000-00-00', 'OTO Group', '0822 2766 2811', '-', '-'),
(200, '-', '-', 'Eko Supriyono', '', '0000-00-00', 'OTO Group', '0812 8863 8344', '-', '-'),
(201, '-', '-', 'Fajar Ferdian', '', '0000-00-00', 'OTO Group', '0812 9859 0650', '-', '-'),
(202, '-', '-', 'Hari Agus Rismanto', '', '0000-00-00', 'OTO Group', '0821 1132 0783', '-', '-'),
(203, '-', '-', 'Herry Azhari', '', '0000-00-00', 'OTO Group', '0812 9339 4324', '-', '-'),
(204, '-', '-', 'Ichwansyah', '', '0000-00-00', 'OTO Group', '0852 8383 7766', '-', '-'),
(205, '-', '-', 'Idris', '', '0000-00-00', 'OTO Group', '0821 1117 6647', '-', '-'),
(206, '-', '-', 'Apudin', '', '0000-00-00', 'OTO Group', '81316684402', '-', '-'),
(207, '-', '-', 'Irwan Priyatma', '', '0000-00-00', 'OTO Group', '0812 8504 7989', '-', '-'),
(208, '-', '-', 'Iwan Setiawan (366)', '', '0000-00-00', 'OTO Group', '0812 1300 7894', '-', '-'),
(209, '-', '-', 'Mantoro', '', '0000-00-00', 'OTO Group', '0853 1239 7245', '-', '-'),
(210, '-', '-', 'Muhammad Iqkrom', '', '0000-00-00', 'OTO Group', '0897 838 9040', '-', '-'),
(211, '-', '-', 'Muhammad Rais', '', '0000-00-00', 'OTO Group', '0812 8023 739', '-', '-'),
(212, '-', '-', 'Ragil Januarizky Payba', '', '0000-00-00', 'OTO Group', '0838 0774 7293', '-', '-'),
(213, '-', '-', 'Ridwan', '', '0000-00-00', 'OTO Group', '0815 1654 625', '-', '-'),
(214, '-', '-', 'Rohman01', '', '0000-00-00', 'OTO Group', '0812 8366 0661', '-', '-'),
(215, '-', '-', 'Suharyanto', '', '0000-00-00', 'OTO Group', '0877 7424 1944', '-', '-'),
(216, '-', '-', 'Sukirman', '', '0000-00-00', 'OTO Group', '0815 8940 467', '-', '-'),
(217, '-', '-', 'Sunarjo', '', '0000-00-00', 'OTO Group', '0813 1430 2396', '-', '-'),
(218, '-', '-', 'Suparno', '25-Apr-17', '0000-00-00', 'OTO Group', '0813 8368 7154', '-', '-'),
(219, '-', '-', 'Wahyudi (732)', '', '0000-00-00', 'OTO Group', '0821 1195 7165', '-', '-'),
(220, '-', '-', 'Sobirin', '', '0000-00-00', 'OTO Group', '', '-', '-'),
(221, '-', '-', 'Supriyadi01', '', '0000-00-00', 'OTO Group', '', '-', '-'),
(222, '-', '-', 'Rohman02', '', '0000-00-00', 'OTO Group', '', '-', '-'),
(223, '-', '-', 'Achmad Farhan', '', '0000-00-00', 'OTO Lease', '81389903301', '-', '-'),
(224, '-', '-', 'Achmad Gozali', '', '0000-00-00', 'OTO Lease', '81295331230', '-', '-'),
(225, '-', '-', 'Andy Barian', '', '0000-00-00', 'Promo Tec', '0813 2409 7997', '-', '-'),
(226, '-', '-', 'Mustadi', '', '0000-00-00', 'Promo Tec', '0813 1616 8717', '-', '-'),
(227, '-', '-', 'Hari Permana', '', '0000-00-00', 'Promo Tec', '0813 1566 3181', '-', '-'),
(228, '-', '-', 'M. Rusli', '', '0000-00-00', 'Promo Tec', '81284816945', '-', '-'),
(229, '-', '-', 'Topik hidayat', '', '0000-00-00', 'Promo Tec', '', '-', '-'),
(230, '-', '-', 'Zulkifli 02', '', '0000-00-00', 'Promo Tec', '', '-', '-'),
(231, '-', '-', 'Ali Riwanto', '', '0000-00-00', 'Sumitomo Forestry', '0813 8911 3083', '-', '-'),
(232, '-', '-', 'Deby Kurniawan', '', '0000-00-00', 'Sumitomo Forestry', '0812 8905 0330', '-', '-'),
(233, '-', '-', ' Ahmad Romli', '', '0000-00-00', 'Sumitomo Group', '81281645580', '-', '-'),
(234, '-', '-', 'Aspari', '', '0000-00-00', 'Sumitomo Group', '', '-', '-'),
(235, '-', '-', 'Abdul Hanan', '', '0000-00-00', 'Sumitomo Group', '0812 8909 5292', '-', '-'),
(236, '-', '-', 'Agus Salim', '', '0000-00-00', 'Sumitomo Group', '0813 8923 8010', '-', '-'),
(237, '-', '-', 'Andi Pratanta', '', '0000-00-00', 'Sumitomo Group', '0813 1434 5408', '-', '-'),
(238, '-', '-', 'Andi Wijaya', '', '0000-00-00', 'Sumitomo Group', '0813 9980 9862', '-', '-'),
(239, '-', '-', 'Antoni Munandar', '', '0000-00-00', 'Sumitomo Group', '0812 1857 5407', '-', '-'),
(240, '-', '-', 'Asep', '', '0000-00-00', 'Sumitomo Group', '0812 9368 4307', '-', '-'),
(241, '-', '-', 'Bambang Adi Triyono', '', '0000-00-00', 'Sumitomo Group', '81291898974', '-', '-'),
(242, '-', '-', 'Bayu Prasetya Kusuma', '', '0000-00-00', 'Sumitomo Group', '81295584559', '-', '-'),
(243, '-', '-', 'Cahyadi', '', '0000-00-00', 'Sumitomo Group', '0819 3219 2338', '-', '-'),
(244, '-', '-', 'Dandi Pramuditia', '', '0000-00-00', 'Sumitomo Group', '0838 2226 2828', '-', '-'),
(245, '-', '-', 'Dargo AA', '', '0000-00-00', 'Sumitomo Group', '0817 6762 441', '-', '-'),
(246, '-', '-', 'Dede Suhendra', '', '0000-00-00', 'Sumitomo Group', '0812 1916 4130', '-', '-'),
(247, '-', '-', 'Deni Hermawan(472)', '', '0000-00-00', 'Sumitomo Group', '0857 1848 8151', '-', '-'),
(248, '-', '-', 'Eddy Al Farisi', '', '0000-00-00', 'Sumitomo Group', '0812 1160 0109', '-', '-'),
(249, '-', '-', 'Feri Fransiska', '', '0000-00-00', 'Sumitomo Group', '81289660823', '-', '-'),
(250, '-', '-', 'Firmansyah Alam', '', '0000-00-00', 'Sumitomo Group', '0813 1085 7352', '-', '-'),
(251, '-', '-', 'Gerry Indrawan', '', '0000-00-00', 'Sumitomo Group', '0878 8597 1057', '-', '-'),
(252, '-', '-', 'Gusmansyah', '', '0000-00-00', 'Sumitomo Group', '0856 8590 7278', '-', '-'),
(253, '-', '-', 'Hadi Supriyatno', '', '0000-00-00', 'Sumitomo Group', '0812 8349 9030', '-', '-'),
(254, '-', '-', 'Irfani', '', '0000-00-00', 'Sumitomo Group', '0857 1424 4433', '-', '-'),
(255, '-', '-', 'Joko', '', '0000-00-00', 'Sumitomo Group', '0856 1420 230', '-', '-'),
(256, '-', '-', 'Joko Purwanto', '', '0000-00-00', 'Sumitomo Group', '0812 5002 4691', '-', '-'),
(257, '-', '-', 'Kusnadi', '', '0000-00-00', 'Sumitomo Group', '0815 8516 4506', '-', '-'),
(258, '-', '-', 'Kusnadi02', '', '0000-00-00', 'Sumitomo Group', '87878779618', '-', '-'),
(259, '-', '-', 'Lili Sarmili', '', '0000-00-00', 'Sumitomo Group', '0812 1392 5671', '-', '-'),
(260, '-', '-', 'M Sahro', '', '0000-00-00', 'Sumitomo Group', '0812 1392 5669', '-', '-'),
(261, '-', '-', 'Muhamad Rizal (8211)', '', '0000-00-00', 'Sumitomo Group', '0822 3342 9532', '-', '-'),
(262, '-', '-', 'Muhammad Iqbal (007)', '', '0000-00-00', 'Sumitomo Group', '0812 9627 1728', '-', '-'),
(263, '-', '-', 'Muhammad Irwan', '', '0000-00-00', 'Sumitomo Group', '0813 1831 3464', '-', '-'),
(264, '-', '-', 'Nathanael Irawan', '', '0000-00-00', 'Sumitomo Group', '0877 8891 2777', '-', '-'),
(265, '-', '-', 'Ngatimin', '', '0000-00-00', 'Sumitomo Group', '0821 1315 0744', '-', '-'),
(266, '-', '-', 'Nurdito Anggoro', '', '0000-00-00', 'Sumitomo Group', '0838 7613 0291', '-', '-'),
(267, '-', '-', 'Nurman', '', '0000-00-00', 'Sumitomo Group', '0813 9888 6677', '-', '-'),
(268, '-', '-', 'Parlan', '', '0000-00-00', 'Sumitomo Group', '0853 1174 0715', '-', '-'),
(269, '-', '-', 'Saringat', '', '0000-00-00', 'Sumitomo Group', '0821 2231 7772', '-', '-'),
(270, '-', '-', 'Roma Hardi', '', '0000-00-00', 'Sumitomo Group', '0812 1968 6057', '-', '-'),
(271, '-', '-', 'Ruslan', '', '0000-00-00', 'Sumitomo Group', '0813 1495 8613', '-', '-'),
(272, '-', '-', 'Sahro Susanto', '', '0000-00-00', 'Sumitomo Group', '0813 1616 1732', '-', '-'),
(273, '-', '-', 'Samsul Satriana', '', '0000-00-00', 'Sumitomo Group', '83871426979', '-', '-'),
(274, '-', '-', 'Pujianto bin Casmo', '', '0000-00-00', 'Sumitomo Group', '0838 7814 4710', '-', '-'),
(275, '-', '-', 'Setiawan', '', '0000-00-00', 'Sumitomo Group', '0857 7886 8547', '-', '-'),
(276, '-', '-', 'Sigit Apriyadi', '', '0000-00-00', 'Sumitomo Group', '0857 1059 9360', '-', '-'),
(277, '-', '-', 'Suharto (6893)', '', '0000-00-00', 'Sumitomo Group', '0852 1924 4786', '-', '-'),
(278, '-', '-', 'Sumartono', '', '0000-00-00', 'Sumitomo Group', '0813 1165 1461', '-', '-'),
(279, '-', '-', 'Sunarno', '', '0000-00-00', 'Sumitomo Group', '0812 1392 5676', '-', '-'),
(280, '-', '-', 'Supardjono', '', '0000-00-00', 'Sumitomo Group', '0812 1392 5679', '-', '-'),
(281, '-', '-', 'Supriyono (448)', '', '0000-00-00', 'Sumitomo Group', '81511156351', '-', '-'),
(282, '-', '-', 'Suripto', '', '0000-00-00', 'Sumitomo Group', '82124143542', '-', '-'),
(283, '-', '-', 'Surya Darma Putra', '', '0000-00-00', 'Sumitomo Group', '82134887163', '-', '-'),
(284, '-', '-', 'Suwartin', '', '0000-00-00', 'Sumitomo Group', '0852 1628 5682', '-', '-'),
(285, '-', '-', 'Syamsurizal', '', '0000-00-00', 'Sumitomo Group', '0811 1267 113', '-', '-'),
(286, '-', '-', 'Samuel Nainggolan', '', '0000-00-00', 'Sumitomo Group', '0812 9475 4567', '-', '-'),
(287, '-', '-', 'Taufik Abdul Manaf', '', '0000-00-00', 'Sumitomo Group', '0812 1906 629', '-', '-'),
(288, '-', '-', 'Wisnutoyo', '', '0000-00-00', 'Sumitomo Group', '0812 1840 2113', '-', '-'),
(289, '-', '-', 'Yayat Hidayat', '', '0000-00-00', 'Sumitomo Group', '85770951184', '-', '-'),
(290, '-', '-', 'Zulkifar Rais', '', '0000-00-00', 'Sumitomo Group', '0815 1166 6971', '-', '-'),
(291, '-', '-', '', '', '0000-00-00', 'Sumitomo Group', '', '-', '-'),
(292, '-', '-', '', '', '0000-00-00', 'Sumitomo Group', '', '-', '-'),
(293, '-', '-', '', '', '0000-00-00', 'Sumitomo Group', '', '-', '-'),
(294, '-', '-', '', '', '0000-00-00', 'Sumitomo Group', '', '-', '-'),
(295, '-', '-', 'Mulyadi', '', '0000-00-00', 'Summit Niaga', '81315106663', '-', '-'),
(296, '-', '-', 'Deny Akbar', '', '0000-00-00', 'Summitmas Property', '0857 7919 5541/ ', '-', '-'),
(297, '-', '-', 'Denny Samuel', '', '0000-00-00', 'Summitmas Property', '', '-', '-'),
(298, '-', '-', 'Endang Hermanto', '', '0000-00-00', 'Summitmas Property', '', '-', '-'),
(299, '-', '-', 'M Nasir', '', '0000-00-00', 'Taiyo Sinar Raya Teknik', '0816 1916 262', '-', '-'),
(300, '-', '-', 'Lucky Zen', '', '0000-00-00', 'Toshiba Asia Pacific Indonesia', '0822 1391 3651', '-', '-'),
(301, '-', '-', 'Supriyono', '', '0000-00-00', 'Toshiba Asia Pacific Indonesia', '0813 1992 3436', '-', '-'),
(302, '-', '-', 'Dedem', '', '0000-00-00', 'Toshiba Asia Pacific Indonesia', '8176913513', '-', '-'),
(303, '-', '-', 'Irpan Setiawan', '', '0000-00-00', 'Toyota Tsusho', '81320506385', '-', '-'),
(304, '-', '-', 'Ujang Bidin', '', '0000-00-00', 'Toyota Tsusho', '81317856489', '-', '-'),
(305, '-', '-', 'Suparlan', '', '0000-00-00', 'Toyota Tsusho', '', '-', '-'),
(306, '-', '-', 'Budiono', '', '0000-00-00', 'UHA TRADING', '81314246199', '-', '-'),
(307, '-', '-', 'Dede Sulaeman', '', '0000-00-00', 'Yoden Tomoyuki Family', '82112613177', '-', '-'),
(308, '-', '-', 'Bambang Hermanto', '', '0000-00-00', 'JTB Indonesia', '', '-', '-'),
(309, '-', '-', 'Andi Irawan', '', '0000-00-00', 'JTB Indonesia', '', '-', '-'),
(310, '-', '-', 'Lambok Sitomorang', '', '0000-00-00', 'MCNS Polyurethanes Indonesia', '', '-', '-'),
(311, '-', '-', 'Sumarli', '', '0000-00-00', 'PT Hibri Jaya (Hajime)', '', '-', '-'),
(312, '', '', 'Sabarudin', 'Operasional', '2017-05-02', 'Sumitomo Indonesia', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_driver_resume`
--

CREATE TABLE `tb_driver_resume` (
  `id_resume` int(11) NOT NULL,
  `id_employe_driver` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `driver_status` varchar(30) NOT NULL,
  `date_change` date NOT NULL,
  `company` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_driver_standby`
--

CREATE TABLE `tb_driver_standby` (
  `id_standby` int(11) NOT NULL,
  `id_employe_driver` int(11) NOT NULL,
  `date` date NOT NULL,
  `date2` date NOT NULL,
  `remark` varchar(30) NOT NULL,
  `next_dispatch` varchar(30) NOT NULL,
  `date_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_driver_temporary`
--

CREATE TABLE `tb_driver_temporary` (
  `id_temporary` int(11) NOT NULL,
  `username_driver` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `remark` varchar(30) NOT NULL,
  `next_dispatch` varchar(30) NOT NULL,
  `date_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_log`
--

CREATE TABLE `tb_log` (
  `id_log` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `login_log` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_log`
--

INSERT INTO `tb_log` (`id_log`, `id_user`, `login_log`) VALUES
(160, 35, '2017-07-13 16:29:02'),
(159, 35, '2017-07-13 16:01:08'),
(158, 35, '2017-07-13 09:15:13'),
(157, 35, '2017-05-29 10:13:14'),
(156, 35, '2017-05-26 11:27:43'),
(155, 39, '2017-05-26 10:13:23'),
(154, 40, '2017-05-26 09:29:01'),
(153, 35, '2017-05-24 09:23:35'),
(152, 40, '2017-05-24 09:12:12'),
(151, 35, '2017-05-24 08:33:21'),
(150, 24, '2017-05-24 08:28:00'),
(149, 35, '2017-05-23 15:50:05'),
(148, 24, '2017-05-23 15:07:47'),
(147, 35, '2017-05-23 14:20:48'),
(146, 35, '2017-05-23 13:53:42'),
(145, 35, '2017-05-23 13:53:09'),
(144, 35, '2017-05-23 13:40:45'),
(143, 24, '2017-05-23 13:40:29'),
(142, 24, '2017-05-23 13:37:09'),
(141, 35, '2017-05-23 13:30:51'),
(140, 24, '2017-05-23 10:12:32'),
(139, 35, '2017-05-22 16:25:36'),
(138, 35, '2017-05-22 13:25:04'),
(137, 35, '2017-05-09 16:10:21'),
(136, 40, '2017-05-04 18:25:28'),
(135, 35, '2017-05-04 17:16:15'),
(134, 35, '2017-05-04 14:46:12'),
(133, 35, '2017-05-04 10:21:41'),
(132, 35, '2017-05-04 09:59:48'),
(131, 39, '2017-05-04 09:55:46'),
(130, 40, '2017-05-03 17:31:23'),
(129, 35, '2017-05-03 17:18:34'),
(128, 40, '2017-05-02 14:47:18'),
(127, 35, '2017-05-02 14:39:28'),
(126, 35, '2017-05-02 13:57:57'),
(125, 35, '2017-04-28 16:10:35'),
(124, 35, '2017-04-28 09:20:39'),
(123, 35, '2017-04-28 09:14:53'),
(122, 35, '2017-04-27 16:38:58'),
(121, 40, '2017-04-27 11:41:49'),
(120, 35, '2017-04-27 10:39:24'),
(119, 35, '2017-04-26 16:24:03'),
(118, 35, '2017-04-26 13:26:05'),
(117, 40, '2017-04-26 11:47:40'),
(116, 35, '2017-04-26 08:56:50'),
(115, 24, '2017-04-25 16:46:21'),
(114, 24, '2017-04-25 16:44:41'),
(113, 24, '2017-04-25 16:19:42'),
(112, 24, '2017-04-25 15:59:03'),
(111, 35, '2017-04-25 15:41:13'),
(110, 24, '2017-04-25 15:40:11'),
(109, 40, '2017-04-25 15:39:37'),
(108, 35, '2017-04-25 14:53:41'),
(107, 35, '2017-04-25 12:56:19'),
(106, 35, '2017-04-25 11:44:23'),
(105, 35, '2017-04-25 11:29:39'),
(104, 35, '2017-04-21 16:52:34'),
(103, 35, '2017-04-21 16:47:01'),
(102, 24, '2017-04-21 16:45:31'),
(101, 35, '2017-04-21 16:09:48'),
(100, 35, '2017-04-07 10:55:28'),
(99, 35, '2017-03-30 10:30:44'),
(98, 35, '2017-03-13 11:07:43'),
(97, 35, '2017-03-09 13:39:37'),
(96, 35, '2017-03-09 11:18:26'),
(95, 35, '2017-03-02 08:29:32'),
(94, 35, '2017-03-01 16:33:26'),
(93, 35, '2017-03-01 11:10:32'),
(92, 35, '2017-02-28 10:48:17'),
(91, 35, '2017-02-28 10:28:34'),
(90, 39, '2017-02-28 10:14:16'),
(89, 35, '2017-02-27 17:16:57'),
(88, 35, '2017-02-27 17:12:43'),
(87, 35, '2017-02-27 14:46:04'),
(86, 39, '2017-02-27 14:12:11'),
(85, 35, '2017-02-23 14:19:52'),
(84, 35, '2017-02-22 17:24:31'),
(83, 35, '2017-02-22 15:48:07'),
(80, 35, '2017-02-21 13:43:50'),
(81, 39, '2017-02-21 13:46:33'),
(82, 35, '2017-02-22 08:42:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` varchar(20) NOT NULL,
  `fullname` varchar(35) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `email`, `level`, `fullname`, `username`, `password`) VALUES
(24, 'muhammad.firman@muktiabadisadaya.co.id', 'admin', 'Muhammad Firman', 'firman', '4649caea9d26077e9b99adcdff514664'),
(35, 'sysadm@gmail.com', 'super admin', 'System Administrator', 'sysadm', 'e0cbf0e62d03796f31da47099682b72b'),
(39, 'sulistiyo@muktiabadisadaya.co.id', 'super admin', 'Sulistiyo', 'sulistiyo', '779c24a86e4088ac91fe4dabcb014905'),
(40, 'jihan.nabilah@muktiabadisadaya.co.id', 'super admin', 'Jihan Nabilah', 'jihan', 'c93c89a8f0a5e0fb37a1c4fcd1c79fe1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_contact`
--
ALTER TABLE `tb_contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `tb_driver`
--
ALTER TABLE `tb_driver`
  ADD PRIMARY KEY (`id_employe_driver`);

--
-- Indexes for table `tb_driver_dummy`
--
ALTER TABLE `tb_driver_dummy`
  ADD PRIMARY KEY (`id_employe_driver`);

--
-- Indexes for table `tb_driver_resume`
--
ALTER TABLE `tb_driver_resume`
  ADD PRIMARY KEY (`id_resume`);

--
-- Indexes for table `tb_driver_standby`
--
ALTER TABLE `tb_driver_standby`
  ADD PRIMARY KEY (`id_standby`);

--
-- Indexes for table `tb_driver_temporary`
--
ALTER TABLE `tb_driver_temporary`
  ADD PRIMARY KEY (`id_temporary`);

--
-- Indexes for table `tb_log`
--
ALTER TABLE `tb_log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_contact`
--
ALTER TABLE `tb_contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_driver`
--
ALTER TABLE `tb_driver`
  MODIFY `id_employe_driver` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;
--
-- AUTO_INCREMENT for table `tb_driver_dummy`
--
ALTER TABLE `tb_driver_dummy`
  MODIFY `id_employe_driver` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;
--
-- AUTO_INCREMENT for table `tb_driver_resume`
--
ALTER TABLE `tb_driver_resume`
  MODIFY `id_resume` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_driver_standby`
--
ALTER TABLE `tb_driver_standby`
  MODIFY `id_standby` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `tb_driver_temporary`
--
ALTER TABLE `tb_driver_temporary`
  MODIFY `id_temporary` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tb_log`
--
ALTER TABLE `tb_log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
