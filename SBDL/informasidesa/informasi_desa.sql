-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Apr 2020 pada 09.35
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `informasi_desa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_berita`
--

CREATE TABLE `data_berita` (
  `id_news` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `berita` text NOT NULL,
  `pengirim` varchar(30) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_berita`
--

INSERT INTO `data_berita` (`id_news`, `judul`, `berita`, `pengirim`, `tgl`) VALUES
(1112, 'warganet', 'isu corongna', 'cina', '2020-04-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_komentar`
--

CREATE TABLE `data_komentar` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `url` varchar(30) NOT NULL,
  `komentar` text NOT NULL,
  `tgl` date NOT NULL,
  `jml_komentar` int(11) NOT NULL,
  `id_news` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_komentar`
--

INSERT INTO `data_komentar` (`id`, `nama`, `email`, `url`, `komentar`, `tgl`, `jml_komentar`, `id_news`) VALUES
(3311, 'kiwil', 'bleza@yoih.co.id', 'bebas santui', 'biro jodoh terbaik', '2020-04-15', 12324, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pengumuman`
--

CREATE TABLE `data_pengumuman` (
  `id` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `pengirim` varchar(30) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_pengumuman`
--

INSERT INTO `data_pengumuman` (`id`, `judul`, `isi`, `pengirim`, `tgl`) VALUES
(4411, 'generasi xyz', 'kaum sad boy dan sad girl kumpul yu', 'qwertyuiop', '2020-04-21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_potensi`
--

CREATE TABLE `data_potensi` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `potensi` text NOT NULL,
  `tgl` date NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_potensi`
--

INSERT INTO `data_potensi` (`id`, `nama`, `potensi`, `tgl`, `username`) VALUES
(5511, 'preedd', 'menjadi kaum rebahan', '2020-04-10', 'taufikmit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_profil`
--

CREATE TABLE `data_profil` (
  `id_profil` int(11) NOT NULL,
  `nama_profil` varchar(50) NOT NULL,
  `isi_profil` text NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_profil`
--

INSERT INTO `data_profil` (`id_profil`, `nama_profil`, `isi_profil`, `username`) VALUES
(6611, 'gelleng', 'no pict hoax', 'geleng');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_user`
--

CREATE TABLE `data_user` (
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` varchar(10) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_user`
--

INSERT INTO `data_user` (`username`, `password`, `level`, `nama_lengkap`) VALUES
('thanos', 'fucek', '99', 'batuakik');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_berita`
--
ALTER TABLE `data_berita`
  ADD PRIMARY KEY (`id_news`);

--
-- Indeks untuk tabel `data_komentar`
--
ALTER TABLE `data_komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_pengumuman`
--
ALTER TABLE `data_pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_potensi`
--
ALTER TABLE `data_potensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_profil`
--
ALTER TABLE `data_profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indeks untuk tabel `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_berita`
--
ALTER TABLE `data_berita`
  MODIFY `id_news` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1113;

--
-- AUTO_INCREMENT untuk tabel `data_komentar`
--
ALTER TABLE `data_komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3312;

--
-- AUTO_INCREMENT untuk tabel `data_pengumuman`
--
ALTER TABLE `data_pengumuman`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4412;

--
-- AUTO_INCREMENT untuk tabel `data_potensi`
--
ALTER TABLE `data_potensi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5512;

--
-- AUTO_INCREMENT untuk tabel `data_profil`
--
ALTER TABLE `data_profil`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6612;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
