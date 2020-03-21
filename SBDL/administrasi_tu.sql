-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2020 at 10:27 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `administrasi_tu`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen` (
  `id_absen` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `kode_kelas` varchar(20) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `tgl_hadir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absen`
--

INSERT INTO `absen` (`id_absen`, `nip`, `kode_kelas`, `hari`, `tgl_hadir`) VALUES
(1, '0001', '4c', 'senin', '2020-03-02'),
(2, '0002', '4b', 'senin', '2020-03-02');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nip` varchar(20) NOT NULL,
  `id_dosen` int(5) NOT NULL,
  `kode_pendidikan` varchar(5) NOT NULL,
  `kode_jabatan` varchar(20) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `ket_dosen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nip`, `id_dosen`, `kode_pendidikan`, `kode_jabatan`, `nama_dosen`, `alamat`, `ket_dosen`) VALUES
('0001', 1, '01', '01', 'Agus Hartono', 'Ciarit,Mekaraya', 'Pendidikan Pancasila');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `kode_jabatan` varchar(20) NOT NULL,
  `nama_jabatan` varchar(20) NOT NULL,
  `gaji_jafung` int(11) NOT NULL COMMENT 'gaji fungsional'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kode_kelas` varchar(20) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kode_kelas`, `nama_kelas`) VALUES
('4c', '4C Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `ketentuan`
--

CREATE TABLE `ketentuan` (
  `id_dosen` int(11) NOT NULL,
  `gaji_tetap` int(11) NOT NULL,
  `gaji_tunjangan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ketentuan`
--

INSERT INTO `ketentuan` (`id_dosen`, `gaji_tetap`, `gaji_tunjangan`) VALUES
(1, 50000, 25000),
(2, 50000, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `kode_pendidikan` varchar(5) NOT NULL,
  `ket_pendidikan` varchar(100) NOT NULL,
  `gaji_matkul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`kode_pendidikan`, `ket_pendidikan`, `gaji_matkul`) VALUES
('01', 'Pendidikan Pancasila', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `penggajian`
--

CREATE TABLE `penggajian` (
  `id_penggajian` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `total_potongan` int(11) NOT NULL,
  `gaji_bruto` int(11) NOT NULL,
  `gaji_bersih` int(11) NOT NULL,
  `periode_tahun` varchar(5) NOT NULL,
  `periode_bulan` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penggajian`
--

INSERT INTO `penggajian` (`id_penggajian`, `nip`, `total_potongan`, `gaji_bruto`, `gaji_bersih`, `periode_tahun`, `periode_bulan`) VALUES
(1, '0001', 5000, 50000, 45000, '1', '12');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `kode_pengguna` varchar(50) NOT NULL,
  `sandi` varchar(50) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `tingkat` varchar(30) NOT NULL,
  `nip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`kode_pengguna`, `sandi`, `nama_pengguna`, `tingkat`, `nip`) VALUES
('user1', '1234', 'bambang', 'operator akademik', '0001');

-- --------------------------------------------------------

--
-- Table structure for table `potongan`
--

CREATE TABLE `potongan` (
  `id_dosen` int(3) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL,
  `id_potongan` int(11) NOT NULL,
  `nip` int(11) NOT NULL,
  `nama_potongan` varchar(255) NOT NULL,
  `nilai_potongan` int(11) NOT NULL,
  `tgl_potongan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `potongan`
--

INSERT INTO `potongan` (`id_dosen`, `nama_dosen`, `id_potongan`, `nip`, `nama_potongan`, `nilai_potongan`, `tgl_potongan`) VALUES
(1, 'Agus Hartono', 1, 1, 'Kesehatan', 5000, '2020-03-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id_absen`),
  ADD KEY `kode_kelas` (`kode_kelas`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `id_dosen` (`id_dosen`),
  ADD KEY `kode_jabatan` (`kode_jabatan`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`kode_jabatan`),
  ADD KEY `kode_jabatan` (`kode_jabatan`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kode_kelas`),
  ADD KEY `kode_kelas` (`kode_kelas`);

--
-- Indexes for table `ketentuan`
--
ALTER TABLE `ketentuan`
  ADD PRIMARY KEY (`id_dosen`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`kode_pendidikan`);

--
-- Indexes for table `penggajian`
--
ALTER TABLE `penggajian`
  ADD PRIMARY KEY (`id_penggajian`),
  ADD KEY `nip` (`nip`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`kode_pengguna`),
  ADD KEY `nip` (`nip`);

--
-- Indexes for table `potongan`
--
ALTER TABLE `potongan`
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `ketentuan` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penggajian`
--
ALTER TABLE `penggajian`
  ADD CONSTRAINT `penggajian_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `pengguna_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `potongan`
--
ALTER TABLE `potongan`
  ADD CONSTRAINT `potongan_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `ketentuan` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
