-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Bulan Mei 2023 pada 20.42
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_mahasiswa`
--

CREATE TABLE `db_mahasiswa` (
  `id` int(11) NOT NULL,
  `NRP` varchar(20) NOT NULL,
  `Nama` text NOT NULL,
  `Jenis_Kelamin` text NOT NULL,
  `Jurusan` varchar(20) NOT NULL,
  `Email` text NOT NULL,
  `Alamat` text NOT NULL,
  `No_Hp` varchar(20) NOT NULL,
  `Asal_SMA` text NOT NULL,
  `Matkul_Favorit` text NOT NULL,
  `Foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `db_mahasiswa`
--

INSERT INTO `db_mahasiswa` (`id`, `NRP`, `Nama`, `Jenis_Kelamin`, `Jurusan`, `Email`, `Alamat`, `No_Hp`, `Asal_SMA`, `Matkul_Favorit`, `Foto`) VALUES
(2, '3122500001', 'Ade Hafis Rabbani', 'L', 'IT', 'hafis@it.student.pens.ac.id', 'Gresik', '08123456789', 'SMKN 1 Cerme', 'Matematika', ''),
(3, '3122500002', 'Nadila Aulya S.M', 'P', 'IT', 'Nana@it.student.pens.ac.id', 'Kediri', '08123456789', 'SMAN 1 Patinrowo', 'asd', ''),
(4, '3122500003', 'Denti Widayati', 'P', 'IT', 'Denti@it.student.pens.ac.id', 'Sidoarjo', '08123456789', 'SMAN 3 Taruna Angkasa', 'ASD', ''),
(5, '3122500004', 'Zahrotul Hidayah', 'P', 'IT', 'Zahro@it.student.pens.ac.id', 'Lamongan', '08123456789', 'SMAN 1 Babat', 'ASD', ''),
(6, '3122500005', 'Gede Hari Yoga Nanda', 'P', 'IT', 'Arry@it.student.pens.ac.id', 'Tulungagung', '08123456789', 'SMAN 1 Boyolangu', 'Agama', ''),
(7, '3122500006', 'Virgiawan Ivada R.S.W', 'P', 'IT', 'Ivo@it.student.pens.ac.id', 'Tuban', '08123456789', 'SMAN Jatinrogo', 'Kewarganegaraan', ''),
(8, '3122500007', 'Irfan Akmal A.', 'P', 'IT', 'Irfan@it.student.pens.ac.id', 'Palembang', '08123456789', 'SMA Plus  Negeri 17 Palembang', 'ASD', ''),
(9, '3122500008', 'Arsyita Devanaya A.', 'P', 'IT', 'Naya@it.student.pens.ac.id', 'Surabaya', '08123456789', 'SMAN 17 Surabaya', 'ASD', ''),
(10, '3122500009', 'Mirta Chadhirotin N.', 'P', 'IT', 'Mirta@it.student.pens.ac.id', 'Gresik', '08123456789', 'SMAN 1 Manyar', 'ASD', ''),
(11, '3122500010', 'Leody Zelvon H.', 'L', 'IT', 'Leo@it.student.pens.ac.id', 'Tuban', '08123456789', 'SMAN 2 Tuban', 'Kewarganegraan', ''),
(12, '3122500011', 'Ali Azhar P.', 'L', 'IT', 'Ali@it.student.pens.ac.id', 'Surabaya', '08123456789', 'SMAN 12 Surabaya', 'Sistem Operasi', ''),
(13, '3122500012', 'Awal Raya', 'L', 'IT', 'Awal@it.student.pens.ac.id', 'Kediri', '08123456789', 'SMAN 1 Kediri', 'Sistem Operasi', ''),
(14, '3122500013', 'Mahendra Khibrah R.S', 'L', 'IT', 'Mahen@it.student.pens.ac.id', 'Surabaya', '08123456789', 'SMAN 5 Surabaya', 'ASD', ''),
(15, '3122500014', 'Muhammad Iqbal R.', 'L', 'IT', 'Iqbal@it.student.pens.ac.id', 'Sidoarjo', '08123456789', 'SMA Muhammadiyah 3 Tulangan', 'ASD', ''),
(16, '3122500015', 'Mayada Azizah', 'p', 'IT', 'Maya@it.student.pens.ac.id', 'Pandaan', '08123456789', 'SMAN 1 Pandaan', 'ASD', ''),
(17, '3122500016', 'Gandi Rukmaning A.', 'P', 'IT', 'Gandi@it.student.pens.ac.id', 'Lumajang', '08123456789', 'SMAN 3 Lumajang', 'ASD', ''),
(18, '3122500017', 'Handaru Dwiki Y.', 'L', 'IT', 'Ndaru@it.student.pens.ac.id', 'Trenggalek', '08123456789', 'SMAN 1 Trenggalek', 'ASD', ''),
(19, '3122500018', 'Adam Rasyid N.', 'L', 'IT', 'Adam@it.student.pens.ac.id', 'Surabaya', '08123456789', 'SMAN 1 Surabaya', 'ASD', ''),
(20, '3122500019', 'Akmal Zidani F.', 'L', 'IT', 'Akmal@it.student.pens.ac.id', 'Surabaya', '08123456789', 'SMAN 2 Surabaya', 'ASD', ''),
(21, '3122500020', 'Adinda Zahra Q.', 'P', 'IT', 'Dinda@it.student.pens.ac.id', 'Malang', '08123456789', 'SMA Thursina IIBS', 'Sistem Operasi', ''),
(22, '3122500021', 'Mohammad Ilham R.', 'L', 'IT', 'ilham@it.student.pens.ac.id', 'Surabaya', '08123456789', 'SMAN 10 Surabaya', 'ASD', ''),
(23, '3122500022', 'Virginia Vaiqoh', 'P', 'IT', 'Vira@it.student.pens.ac.id', 'Sidoarjo', '08123456789', 'SMKN 2 Buduran Sidoarjo', 'ASD', ''),
(24, '3122500023', 'Masyitha Fahra N.', 'P', 'IT', 'Syitha@it.student.pens.ac.id', 'Tuban', '08123456789', 'SMAN 1 Tuban', 'ASD', ''),
(25, '3122500024', 'Muhammad Reza M.', 'L', 'IT', 'Reza1290@it.Student.pens.ac.id', 'Surabaya', '08123456789', 'SMAN 8 Surabaya', 'Sistem Operasi', ''),
(26, '3122500025', 'Adira Callysta', 'P', 'IT', 'Dira@it.student.pens.ac.id', 'Mojokerto', '08123456789', 'SMAN 3 Mojokerto', 'ASD', ''),
(27, '3122500026', 'Shofira Izza N.', 'P', 'IT', 'Shofi@it.student.pens.ac.id', 'Ngawi', '08123456789', 'Man 2 Kota Madiun', 'Sistem Operasi', ''),
(28, '3122500027', 'Rifqi Rayita D.', 'L', 'IT', 'Rifqi@it.student.pens.ac.id', 'Ponorogo', '08123456789', 'SMAN 1 Ponorogo', 'ASD', ''),
(29, '3122500028', 'Bagus Bimo P.', 'L', 'IT', 'Bimo@it.student.pens.ac.id', 'Tulungagung', '08123456789', 'SMAN 1 Bonyolangu', 'ASD', ''),
(30, '3122500030', 'Muhammad Syahrul R.', 'L', 'IT', 'Syahrul@it.student.pens.ac.id', 'Surabaya', '08123456789', 'SMA Muhammadiyah 3 Tulangan', 'ASD', ''),
(42, '212212', 'Hmdan', 'L', 'IPS', 'admin@gmail.com', 'lamongan', '08812486745', 'SMA JAYA JOSS', 'IPS', '6453f90ba3b1f.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `db_mahasiswa`
--
ALTER TABLE `db_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `db_mahasiswa`
--
ALTER TABLE `db_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
