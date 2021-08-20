-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2021 at 09:10 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `farmasii`
--

CREATE TABLE `farmasii` (
  `id_supplier` int(11) NOT NULL,
  `nama_obat` varchar(11) NOT NULL,
  `harga_obat` int(11) NOT NULL,
  `kode_obat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmasii`
--

INSERT INTO `farmasii` (`id_supplier`, `nama_obat`, `harga_obat`, `kode_obat`) VALUES
(1, 'paramek', 5000, 1),
(2, 'bodrex', 4000, 2),
(3, 'diabetes', 4500, 3),
(4, 'oskadon', 3000, 4),
(5, 'inza', 6000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `no_telepon` int(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `nama_karyawan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `no_telepon`, `alamat`, `nama_karyawan`) VALUES
(1, 621345789, 'cilegon', 'bayu'),
(2, 628125673, 'serang', 'eka'),
(3, 628125673, 'merak', 'andre'),
(4, 628125673, 'suralaya', 'aji'),
(5, 62819825, 'temu putuh', 'amel'),
(6, 62349190, 'pci', 'anggi'),
(7, 623418919, 'serdang', 'anggun'),
(8, 627616631, 'grogol', 'esti'),
(9, 62418179, 'kramat waktu', 'ridho'),
(10, 641137657, 'tegal cabe', 'figo');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id_supplier` int(50) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `harga_obat` varchar(50) NOT NULL,
  `kode_obat` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id_pelanggan` int(11) NOT NULL,
  `kode_order` int(11) NOT NULL,
  `id_karyawan` int(50) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tgl_order` varchar(11) NOT NULL,
  `jumlah_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id_pelanggan`, `kode_order`, `id_karyawan`, `total_harga`, `tgl_order`, `jumlah_order`) VALUES
(1, 1, 1, 3000, '15-07-2021', 1),
(2, 2, 1, 6500, '15-07-2021', 2),
(3, 3, 1, 6000, '15-07-2021', 3),
(4, 4, 1, 7000, '15-07-2021', 2),
(5, 5, 1, 2500, '15-07-2021', 1),
(6, 6, 1, 10000, '15-07-2021', 3),
(7, 7, 1, 6000, '15-07-2021', 2),
(8, 8, 1, 16000, '15-07-2021', 4),
(9, 9, 1, 14000, '15-07-2021', 3),
(10, 10, 1, 5000, '15-07-2021', 2),
(1, 11, 2, 3000, '15-07-2021', 1),
(2, 12, 2, 6500, '15-07-2021', 2),
(3, 13, 2, 3000, '16-07-2021', 3),
(4, 14, 2, 6500, '16-07-2021', 2),
(5, 15, 2, 6000, '16-07-2021', 3),
(6, 16, 2, 7000, '16-07-2021', 2),
(7, 17, 2, 4000, '16-07-2021', 1),
(8, 18, 2, 3000, '16-07-2021', 1),
(9, 19, 2, 6000, '16-07-2021', 2),
(10, 20, 2, 13000, '16-07-2021', 4),
(1, 21, 3, 3000, '17-07-2021', 1),
(2, 22, 3, 6500, '17-07-2021', 2),
(3, 23, 3, 14000, '17-07-2021', 3),
(4, 24, 3, 13000, '17-07-2021', 4),
(5, 25, 3, 15000, '17-07-2021', 3),
(6, 26, 3, 7000, '17-07-2021', 2),
(7, 27, 3, 3500, '17-07-2021', 1),
(8, 28, 3, 8000, '17-07-2021', 2),
(9, 29, 3, 20000, '17-07-2021', 5),
(10, 30, 3, 12000, '17-07-2021', 4),
(1, 31, 4, 3000, '18-07-2021', 1),
(2, 32, 4, 13000, '18-07-2021', 3),
(3, 33, 4, 10000, '18-07-2021', 2),
(4, 34, 4, 17000, '18-07-2021', 5),
(5, 35, 4, 10000, '18-07-2021', 2),
(6, 36, 4, 12500, '18-07-2021', 3),
(7, 37, 4, 12500, '18-07-2021', 3),
(8, 38, 4, 4500, '18-07-2021', 1),
(9, 39, 4, 20000, '18-07-2021', 6),
(10, 40, 4, 3000, '18-07-2021', 1),
(1, 41, 5, 3000, '19-07-2021', 1),
(2, 42, 5, 6500, '19-07-2021', 2),
(3, 43, 5, 3000, '19-07-2021', 1),
(4, 44, 5, 6000, '19-07-2021', 2),
(5, 45, 5, 3000, '19-07-2021', 1),
(6, 46, 5, 20000, '19-07-2021', 6),
(7, 47, 5, 17000, '19-07-2021', 5),
(8, 48, 5, 13000, '19-07-2021', 4),
(9, 49, 5, 9000, '19-07-2021', 3),
(10, 50, 5, 6000, '19-07-2021', 2),
(1, 51, 6, 22000, '20-07-2021', 7),
(2, 52, 6, 6500, '20-07-2021', 2),
(3, 53, 6, 3000, '20-07-2021', 1),
(4, 54, 6, 6000, '20-07-2021', 2),
(5, 55, 6, 25000, '20-07-2021', 7),
(6, 56, 6, 3000, '20-07-2021', 1),
(7, 57, 6, 6000, '20-07-2021', 2),
(8, 58, 6, 2500, '20-07-2021', 1),
(9, 59, 6, 30000, '20-07-2021', 10),
(10, 60, 6, 5000, '20-07-2021', 2),
(1, 61, 7, 26000, '21-07-2021', 8),
(2, 62, 7, 27000, '21-07-2021', 9),
(3, 63, 7, 3000, '21-07-2021', 1),
(4, 64, 7, 10000, '21-07-2021', 3),
(5, 65, 7, 3000, '21-07-2021', 1),
(6, 66, 7, 37000, '21-07-2021', 13),
(7, 67, 7, 6000, '21-07-2021', 2),
(8, 68, 7, 10000, '21-07-2021', 3),
(9, 69, 7, 9000, '21-07-2021', 3),
(10, 70, 7, 2500, '21-07-2021', 1),
(1, 71, 8, 3000, '22-07-2021', 1),
(2, 72, 8, 6500, '22-07-2021', 2),
(3, 73, 8, 3000, '22-07-2021', 1),
(4, 74, 8, 10000, '22-07-2021', 3),
(5, 75, 8, 3000, '22-07-2021', 1),
(6, 76, 8, 20000, '22-07-2021', 13),
(7, 77, 8, 17000, '22-07-2021', 5),
(8, 78, 8, 3000, '22-07-2021', 1),
(9, 79, 8, 2500, '22-07-2021', 1),
(10, 80, 8, 5000, '22-07-2021', 2),
(1, 81, 9, 9000, '23-07-2021', 3),
(2, 82, 9, 5000, '23-07-2021', 2),
(3, 83, 9, 12000, '23-07-2021', 4),
(4, 84, 9, 6000, '23-07-2021', 2),
(5, 85, 9, 6000, '23-07-2021', 2),
(6, 86, 9, 3000, '23-07-2021', 1),
(7, 87, 9, 30000, '23-07-2021', 10),
(8, 88, 9, 41000, '23-07-2021', 17),
(9, 89, 9, 30000, '23-07-2021', 10),
(10, 90, 9, 12000, '23-07-2021', 4),
(1, 91, 10, 9000, '24-07-2021', 3),
(2, 92, 10, 6000, '24-07-2021', 2),
(3, 93, 10, 15000, '24-07-2021', 5),
(4, 94, 10, 30000, '24-07-2021', 10),
(5, 95, 10, 16500, '24-07-2021', 6),
(6, 96, 10, 15000, '24-07-2021', 4),
(7, 97, 10, 12500, '24-07-2021', 4),
(8, 98, 10, 9000, '24-07-2021', 3),
(9, 99, 10, 6000, '24-07-2021', 2),
(10, 100, 10, 3000, '24-07-2021', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `nama_pelanggan` varchar(50) NOT NULL,
  `id_pelanggan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`nama_pelanggan`, `id_pelanggan`) VALUES
('ok', 1),
('buid', 2),
('budi', 3),
('mita', 4),
('gita', 5),
('arip', 6),
('sandi', 7),
('ajay', 8),
('ero', 9),
('bagas', 10),
('diko', 11),
('mita', 12),
('sri', 13),
('gamari', 14),
('resita', 15),
('pendi', 16),
('mercy', 17),
('duta', 18),
('suharto', 19),
('deddy', 20),
('rohmat', 21),
('abdel', 22),
('syukur', 23),
('zukruf', 24),
('mansur', 25),
('andre', 26),
('rido', 27),
('redh0', 28),
('samsir', 29),
('alam', 30),
('jaya', 31),
('tegar', 32),
('diki', 33),
('duta', 34),
('suhemi', 35),
('suhenda', 36),
('putra', 37),
('putri', 38),
('rahmat', 39),
('angel', 40),
('anggi', 41),
('anggun', 42),
('neni', 43),
('tedi', 44),
('beckham', 45),
('harun', 46),
('dasrril ', 47),
('usril', 48),
('rega', 49),
('wibowo', 50),
('agus', 51),
('bagus', 52),
('bagas', 53),
('supri', 54),
('sarti', 55),
('suntini', 56),
('otoy', 57),
('bendri', 58),
('linda', 59),
('sukirman', 60),
('dewi', 61),
('susan', 62),
('merry', 63),
('riana', 64),
('erni', 65),
('daud', 66),
('sulaeman', 67),
('bento', 68),
('jayadi', 69),
('irawan', 70),
('jokowi', 71),
('hatta', 72),
('dara', 73),
('mera', 74),
('lisda', 75),
('oky', 76),
('aries', 77),
('susi', 78),
('iwan', 79),
('ratino', 80),
('sarno', 81),
('edi', 82),
('muhammad ', 83),
('arief', 84),
('hidayat', 85),
('jumangin', 86),
('retno', 87),
('kurni', 88),
('rahma', 89),
('bayu', 90),
('mery', 91),
('mercy', 92),
('ocoy', 93),
('nita', 94),
('tri', 95),
('diana', 96),
('dian', 97),
('evi', 98),
('yuliana', 99),
('kevin', 100);

-- --------------------------------------------------------

--
-- Table structure for table `penyuplai`
--

CREATE TABLE `penyuplai` (
  `nama_supplier` varchar(50) NOT NULL,
  `no_telpon` int(12) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `id_supplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penyuplai`
--

INSERT INTO `penyuplai` (`nama_supplier`, `no_telpon`, `alamat`, `email`, `id_supplier`) VALUES
('PT Aditama Raya Farmindo', 623184124, 'Jl. Rungkut Industri, Kali Rungkut, Rungkut, Kota SBY, Jawa Timur', 'AditamaRayaFarmindo@gmail.com', 1),
('PT Apex Pharma Indonesia', 215746695, 'Menara Batavia Lt 22\r\nJl KH Masyur Kav 126 JAKARTA', 'ApexPharmaIndonesia@gmail.com', 2),
('PT Afiat', 26613339, 'Jl. Mahar Martanegara No. 138, Cimindi, Jawa Barat', 'Afiat@gmail.com', 3),
('PT Afifarma', 354683675, 'Jalan Mauni Industri No.8 Kediri, Jawa Timur', 'Afifarma@gmail.com', 4),
('PT. Actavis Indonesia', 218710311, 'Jl Raya Jakarta Bogor Km 28 Jakarta 13710', 'ActavisIndonesia@gmail.com', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `farmasii`
--
ALTER TABLE `farmasii`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`kode_obat`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`kode_order`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `penyuplai`
--
ALTER TABLE `penyuplai`
  ADD PRIMARY KEY (`id_supplier`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `farmasii`
--
ALTER TABLE `farmasii`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `kode_obat` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `kode_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `penyuplai`
--
ALTER TABLE `penyuplai`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
