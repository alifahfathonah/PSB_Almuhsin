-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2019 at 04:09 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppdb_noci`
--

-- --------------------------------------------------------

--
-- Table structure for table `ro_formulir`
--

CREATE TABLE `ro_formulir` (
  `id` int(15) NOT NULL,
  `nisn` char(10) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `jenis_kelamin` enum('Laki - laki','Perempuan') NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama_siswa` enum('Islam','Kristen Katolik','Kristen Protestan','Hindu','Budha') NOT NULL,
  `status_keluarga` enum('Anak kandung','Anak angkat') NOT NULL,
  `alamat_siswa` text NOT NULL,
  `hp_siswa` varchar(12) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `pendidikan_ayah` enum('Tidak sekolah','SD/MI','SMP/MTs','SMA/SMK/MA','Diploma','S1','S2','S3') NOT NULL,
  `pekerjaan_ayah` enum('Buruh','Tani','Wiraswasta','PNS','Polri/TNI','Perangkat Desa','Nelayan','Lainnya') NOT NULL,
  `penghasilan_ayah` enum('-500rb','500-1jt','1jt-3jt','3jt-5jt','5jt-10jt','10jt+') NOT NULL,
  `hp_ayah` varchar(12) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `pendidikan_ibu` enum('Tidak sekolah','SD/MI','SMP/MTs','SMA/SMK/MA','Diploma','S1','S2','S3') NOT NULL,
  `pekerjaan_ibu` enum('Ibu Rumah Tangga','Buruh','Tani','Wiraswasta','PNS','Polri/TNI','Perangkat Desa','Lainnya') NOT NULL,
  `penghasilan_ibu` enum('-500rb','500-1jt','1jt-3jt','3jt-5jt','5jt-10jt','10jt+') NOT NULL,
  `hp_ibu` varchar(12) NOT NULL,
  `nama_wali` varchar(50) NOT NULL,
  `pendidikan_wali` enum('Tidak sekolah','SD/MI','SMP/MTs','SMA/SMK/MA','Diploma','S1','S2','S3') NOT NULL,
  `pekerjaan_wali` enum('Ibu Rumah Tangga','Buruh','Tani','Wiraswasta','PNS','Polri/TNI','Perangkat Desa','Lainnya') NOT NULL,
  `penghasilan_wali` enum('-500rb','500-1jt','1jt-3jt','3jt-5jt','5jt-10jt','10jt+') NOT NULL,
  `hp_wali` varchar(12) NOT NULL,
  `npsn_sekolah` char(8) NOT NULL,
  `nama_sekolah` varchar(50) NOT NULL,
  `status_sekolah` enum('Negeri','Swasta') NOT NULL,
  `model_ujian_nasional` enum('UNBK','UNKP') NOT NULL,
  `alamat_sekolah` text NOT NULL,
  `tahun_lulus` year(4) NOT NULL,
  `status_pendaftaran` enum('Belum Diverifikasi','Diterima','Tidak Diterima') NOT NULL,
  `tanggal_pendaftaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ro_formulir`
--

INSERT INTO `ro_formulir` (`id`, `nisn`, `nama_siswa`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama_siswa`, `status_keluarga`, `alamat_siswa`, `hp_siswa`, `nama_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `hp_ayah`, `nama_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `hp_ibu`, `nama_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `hp_wali`, `npsn_sekolah`, `nama_sekolah`, `status_sekolah`, `model_ujian_nasional`, `alamat_sekolah`, `tahun_lulus`, `status_pendaftaran`, `tanggal_pendaftaran`) VALUES
(1, '1234567890', 'qweqw', 'Laki - laki', 'rty', '2019-12-10', 'Islam', 'Anak kandung', 'asdfqweqellawjelwanndsnadsada', '123456789012', 'qweqwqe', 'Tidak sekolah', 'Tani', '500-1jt', '123456789012', 'ljjljljl', 'Tidak sekolah', 'Tani', '-500rb', '123456789012', 'dsaqwe', 'SMP/MTs', 'PNS', '500-1jt', '123456789012', '54234678', 'sman1', 'Negeri', 'UNBK', 'aldjajsdljasdljalsdlasdlsaljdljaldsad', 2122, 'Tidak Diterima', '2019-12-08'),
(4, '9997120799', 'Labibul Umam Almarbai', 'Laki - laki', 'Ngawi', '1999-07-12', 'Islam', 'Anak kandung', 'Kerokan RT 01/RW 01, Kutoanyar, Kedu, Temanggung, Jawa Tengah', '082132517671', 'Ridwan', '', 'Lainnya', '-500rb', '082132517671', 'Siti Taufiul Hidayah', '', 'Tani', '500-1jt', '082132517671', 'H Shinwanudin', 'SD/MI', 'Tani', '1jt-3jt', '082132517671', '12345678', 'SMAN 1 Temanggung', 'Negeri', 'UNBK', 'Jln Kartini no 12, Jampirejo, Temanggung, Jawa Tengah', 2017, 'Diterima', '2019-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `ro_identitas_sekolah`
--

CREATE TABLE `ro_identitas_sekolah` (
  `id` int(2) NOT NULL,
  `nama_sekolah` varchar(50) NOT NULL,
  `alamat_sekolah` varchar(50) NOT NULL,
  `telephone_sekolah` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ro_identitas_sekolah`
--

INSERT INTO `ro_identitas_sekolah` (`id`, `nama_sekolah`, `alamat_sekolah`, `telephone_sekolah`) VALUES
(1, 'Pondok Pesantren Salafiyah Al Muhsin', 'Jln. Masjid No112 Nglaren, Ciondongcatur', '082127787593');

-- --------------------------------------------------------

--
-- Table structure for table `ro_jurusan`
--

CREATE TABLE `ro_jurusan` (
  `id` int(5) NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL,
  `kode_jurusan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ro_nilai_un`
--

CREATE TABLE `ro_nilai_un` (
  `id` int(13) NOT NULL,
  `nisn` char(10) NOT NULL,
  `nama_siswa` varchar(30) NOT NULL,
  `ipa` char(2) NOT NULL,
  `matematika` char(2) NOT NULL,
  `bahasa_indonesia` char(2) NOT NULL,
  `bahasa_ingris` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ro_nilai_un`
--

INSERT INTO `ro_nilai_un` (`id`, `nisn`, `nama_siswa`, `ipa`, `matematika`, `bahasa_indonesia`, `bahasa_ingris`) VALUES
(8, '9994567888', 'Ahmad Zaelani', '80', '80', '80', '75'),
(9, '9998548459', 'Aurel Ramadhan', '85', '86', '87', '88'),
(10, '1234567890', 'qweqw', '81', '80', '56', '61'),
(11, '9997120799', 'Labibul Umam Almarbai', '90', '90', '90', '90');

-- --------------------------------------------------------

--
-- Table structure for table `ro_pengaturandaftar`
--

CREATE TABLE `ro_pengaturandaftar` (
  `id` int(5) NOT NULL,
  `setdaftar` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ro_pengaturandaftar`
--

INSERT INTO `ro_pengaturandaftar` (`id`, `setdaftar`) VALUES
(1, 'Buka');

-- --------------------------------------------------------

--
-- Table structure for table `ro_pengaturanpengumuman`
--

CREATE TABLE `ro_pengaturanpengumuman` (
  `id` int(1) NOT NULL,
  `setpengumuman` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ro_pengaturanpengumuman`
--

INSERT INTO `ro_pengaturanpengumuman` (`id`, `setpengumuman`) VALUES
(1, 'Buka');

-- --------------------------------------------------------

--
-- Table structure for table `ro_user`
--

CREATE TABLE `ro_user` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ro_user`
--

INSERT INTO `ro_user` (`id`, `username`, `password`, `nama`, `email`, `level`) VALUES
(2, 'umamu12', 'lhabebzt1234', 'Labibul Umam', 'ualmarbai33@gmail.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ro_formulir`
--
ALTER TABLE `ro_formulir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ro_identitas_sekolah`
--
ALTER TABLE `ro_identitas_sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ro_jurusan`
--
ALTER TABLE `ro_jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ro_nilai_un`
--
ALTER TABLE `ro_nilai_un`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ro_pengaturandaftar`
--
ALTER TABLE `ro_pengaturandaftar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ro_pengaturanpengumuman`
--
ALTER TABLE `ro_pengaturanpengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ro_user`
--
ALTER TABLE `ro_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ro_formulir`
--
ALTER TABLE `ro_formulir`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ro_jurusan`
--
ALTER TABLE `ro_jurusan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ro_nilai_un`
--
ALTER TABLE `ro_nilai_un`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ro_pengaturandaftar`
--
ALTER TABLE `ro_pengaturandaftar`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ro_pengaturanpengumuman`
--
ALTER TABLE `ro_pengaturanpengumuman`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ro_user`
--
ALTER TABLE `ro_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
