-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2022 at 05:48 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kuliah`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_dosen`
--

CREATE TABLE `daftar_dosen` (
  `nip` int(11) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_dosen`
--

INSERT INTO `daftar_dosen` (`nip`, `nama_dosen`, `no_hp`, `alamat`) VALUES
(160436012, 'Sabrina Sari', '0812349900', 'Pekanbaru'),
(260432002, 'Maya Ari Putri', '0812345234	', 'Palembang'),
(275430005, 'Susi Indriani', '0812656532', 'Pemalang'),
(480432066, 'Tia Santrini', '0812451177', 'Tegal'),
(576431001, 'M. Siddiq', '0812979005', 'Brebes'),
(770435006, 'Rubin Hadi', '0812567678	', 'Tegal'),
(869437003, 'Mustalifah', '0812338877', 'Tegal'),
(1080432007, 'Arif Budiman', '0812456345', 'Brebes');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `kode_mata_kuliah` varchar(100) NOT NULL,
  `nama_mata_kuliah` varchar(100) NOT NULL,
  `jumlah_sks` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `nip_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`kode_mata_kuliah`, `nama_mata_kuliah`, `jumlah_sks`, `semester`, `nip_dosen`) VALUES
('MATDAS', 'Matematika Dasar', 4, 1, 160436012),
('FISDAS', 'Fisika Dasar', 2, 1, 480432066),
('TEKKOM', 'Teknik Kompilasi', 2, 6, 480432066),
('JARKOM', 'Jaringan Komputer', 3, 3, 770435006),
('DTBASE', 'Database', 4, 4, 275430005),
('SISOPR', 'Sistem Operasi', 2, 4, 160436012),
('MIKROP', 'Mikro Prosessor', 2, 5, 480432066);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
