-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Feb 2022 pada 13.41
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `genap`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ail`
--

CREATE TABLE `ail` (
  `nip` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `no_ruangan` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ail`
--

INSERT INTO `ail` (`nip`, `nama`, `password`, `no_ruangan`, `email`) VALUES
('1555301001', 'Aris Suandi', '12345', '320', 'aris@pcr.ac.id'),
('1555301002', 'Susiyanti, S.ST', '12345', '324', 'susi@pcr.ac.id'),
('1555301003', 'Nessa Chairani Benim, S.ST', '12345', '319', 'nessa@pcr.ac.id'),
('1555301004', 'Aida Kamila, S.ST', '12345', '317', 'aida@pcr.ac.id'),
('1555301005', 'Raja Septama', '12345', '329', 'septama@pcr.ac.id'),
('1555301006', 'Dwi Listiyanti, S.ST', '12345', '330', 'dwilisty@pcr.ac.id'),
('1555301007', 'Harumin, S.ST', '12345', '281', 'harumin@pcr.ac.id'),
('1555301008', 'Muharfan Khamal', '12345', '313', 'muharfan@pcr.ac.id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datalab`
--

CREATE TABLE `datalab` (
  `no_ruangan` varchar(50) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `keterangan_ruangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `datalab`
--

INSERT INTO `datalab` (`no_ruangan`, `nip`, `nama`, `keterangan_ruangan`) VALUES
('281', '1555301007', 'Harumin, S.ST', 'Lab Computer Networking'),
('283', '1555301007', 'Harumin, S.ST', 'Lab Operating System'),
('284', '1555301005', 'Raja Septama', 'Lab Database'),
('304', '1555301001', 'Aris Suandi', 'Lab Programming'),
('305', '1555301008', 'Muharfan Khamal', 'Lab Programming'),
('313', '1555301008', 'Muharfan Khamal', 'Lab Programming'),
('316', '1555301003', 'Nessa Chairani Benim, S.ST', 'Lab Animasi dan Game'),
('317', '1555301004', 'Aida Kamila, S.ST', 'Lab Mobile Application'),
('319', '1555301003', 'Nessa Chairani Benim, S.ST', 'Lab Data Analysis'),
('320', '1555301001', 'Aris Suandi', 'Lab IoT dan AI'),
('324', '1555301002', 'Susuiyanti, S.ST', 'Lab Computer  Networking'),
('325', '1555301006', 'Dwi Listiyanti, S.ST', 'Lab Big Data'),
('329', '1555301005', 'Raja Septama', 'Lab Business Analyst'),
('330', '1555301006', 'Nessa Chairani Benim, S.ST', 'Lab Software Engineering'),
('352', '1555301004', 'Aida Kamila, S.ST', 'Studio Animasi'),
('353', '1555301002', 'Susiyanti, S.ST', 'Studio Cyber Security');

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_logbook`
--

CREATE TABLE `form_logbook` (
  `kode_pengembalian` int(11) NOT NULL,
  `kode_peminjaman` int(11) NOT NULL,
  `no_induk` varchar(20) NOT NULL,
  `nama_anggota` varchar(100) NOT NULL,
  `kondisi_ruangan` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kalab`
--

CREATE TABLE `kalab` (
  `nip` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kalab`
--

INSERT INTO `kalab` (`nip`, `nama`, `password`, `email`) VALUES
('078504', 'Wenda Novayani, S.S.T., M.Eng', 'kaleb2', 'wenda@pcr.ac.id'),
('159208', 'Shumaya Resty Ramadhani, S.ST., M.Sc.', 'kaleb1', 'shumaya@pcr.ac.id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelola_peminjaman`
--

CREATE TABLE `kelola_peminjaman` (
  `no_ruangan` varchar(50) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `keterangan_ruangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemblokiran`
--

CREATE TABLE `pemblokiran` (
  `kode_pemblokiran` int(11) NOT NULL,
  `kode_pengembalian` int(11) NOT NULL,
  `no_induk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjam`
--

CREATE TABLE `peminjam` (
  `kategori` varchar(10) NOT NULL,
  `no_induk` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `no_telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjam`
--

INSERT INTO `peminjam` (`kategori`, `no_induk`, `nama`, `prodi`, `email`, `password`, `no_telp`) VALUES
('dosen', '1456734934', 'Silvana Rasio Henim', 'Teknik Informatika', 'silvana@gmail.com', '67890', '08111111111111'),
('mahasiswa', '2055301011', 'Annisa Jihan Sholihah', 'Teknik Informatika', 'annisa@gmail.com', '12345', '088888888888'),
('Mahasiswa', '2055301045', 'Mutiara Ramadhani', 'Teknik Informatika', 'mutiara@gmail.com', '12345', '088888888888');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `kode_peminjaman` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `nama_peminjam` varchar(50) NOT NULL,
  `no_induk` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  `tanggal_peminjaman` date NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `keperluan` varchar(50) NOT NULL,
  `nama_anggota` varchar(100) NOT NULL,
  `no_ruangan` varchar(50) NOT NULL,
  `surat_tugas` varchar(50) DEFAULT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`kode_peminjaman`, `kategori`, `nama_peminjam`, `no_induk`, `email`, `no_telp`, `level`, `tanggal_peminjaman`, `tanggal_mulai`, `tanggal_akhir`, `jam_mulai`, `jam_selesai`, `keperluan`, `nama_anggota`, `no_ruangan`, `surat_tugas`, `status`) VALUES
(1, 'Mahasiswa', 'Mutiara Ramadhani', '2055301045', 'mutiara@gmail.com', '088888888888', '2', '2022-02-13', '2022-02-15', '2022-02-17', '14:00:00', '22:00:00', 'pengerjaan PA', 'Annisa Jihan Sholihah, Fadillah Farhan, Mutiara Ramadhani', '304', 'lala.jpeg', 'disetujui'),
(2, 'Mahasiswa', 'Annisa Jihan Sholihah', '2055301011', 'annisa@gmail.com', '095555555555', '1', '2022-02-13', '2022-02-15', '2022-02-16', '07:00:00', '12:00:00', 'panitia', 'Mutiara Ramadhani, Fadillah Farhan\r\n', '281', '3 (1).png', 'pengajuan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ail`
--
ALTER TABLE `ail`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `no_ruangan` (`no_ruangan`);

--
-- Indeks untuk tabel `datalab`
--
ALTER TABLE `datalab`
  ADD PRIMARY KEY (`no_ruangan`),
  ADD KEY `datalab_ibfk_1` (`nip`);

--
-- Indeks untuk tabel `form_logbook`
--
ALTER TABLE `form_logbook`
  ADD PRIMARY KEY (`kode_pengembalian`),
  ADD KEY `kode_peminjaman` (`kode_peminjaman`),
  ADD KEY `no_induk` (`no_induk`);

--
-- Indeks untuk tabel `kalab`
--
ALTER TABLE `kalab`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `kelola_peminjaman`
--
ALTER TABLE `kelola_peminjaman`
  ADD KEY `no_ruangan` (`no_ruangan`),
  ADD KEY `nip` (`nip`);

--
-- Indeks untuk tabel `pemblokiran`
--
ALTER TABLE `pemblokiran`
  ADD KEY `kode_pengembalian` (`kode_pengembalian`),
  ADD KEY `no_induk` (`no_induk`);

--
-- Indeks untuk tabel `peminjam`
--
ALTER TABLE `peminjam`
  ADD PRIMARY KEY (`no_induk`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`kode_peminjaman`),
  ADD KEY `no_induk` (`no_induk`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `datalab`
--
ALTER TABLE `datalab`
  ADD CONSTRAINT `datalab_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `ail` (`nip`);

--
-- Ketidakleluasaan untuk tabel `form_logbook`
--
ALTER TABLE `form_logbook`
  ADD CONSTRAINT `form_logbook_ibfk_1` FOREIGN KEY (`kode_peminjaman`) REFERENCES `peminjaman` (`kode_peminjaman`),
  ADD CONSTRAINT `form_logbook_ibfk_2` FOREIGN KEY (`no_induk`) REFERENCES `peminjam` (`no_induk`);

--
-- Ketidakleluasaan untuk tabel `kelola_peminjaman`
--
ALTER TABLE `kelola_peminjaman`
  ADD CONSTRAINT `kelola_peminjaman_ibfk_1` FOREIGN KEY (`no_ruangan`) REFERENCES `datalab` (`no_ruangan`),
  ADD CONSTRAINT `kelola_peminjaman_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `ail` (`nip`);

--
-- Ketidakleluasaan untuk tabel `pemblokiran`
--
ALTER TABLE `pemblokiran`
  ADD CONSTRAINT `pemblokiran_ibfk_1` FOREIGN KEY (`kode_pengembalian`) REFERENCES `form_logbook` (`kode_pengembalian`),
  ADD CONSTRAINT `pemblokiran_ibfk_4` FOREIGN KEY (`no_induk`) REFERENCES `peminjam` (`no_induk`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `fk_no_induk` FOREIGN KEY (`no_induk`) REFERENCES `peminjam` (`no_induk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
