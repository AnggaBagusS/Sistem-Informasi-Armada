-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Agu 2024 pada 12.22
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_trackxpert`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `tanggal_absen` date NOT NULL,
  `waktu_kehadiran` time NOT NULL,
  `bukti_kehadiran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `driver_id`, `vehicle_id`, `tanggal_absen`, `waktu_kehadiran`, `bukti_kehadiran`) VALUES
(24, 11, 111, '2024-06-10', '01:09:00', 'absen2.png'),
(25, 12, 112, '2024-06-10', '04:06:00', 'absen3.png'),
(26, 13, 113, '2024-06-10', '01:12:00', 'absen4.png'),
(27, 14, 114, '2024-06-10', '07:08:00', 'absen6.png'),
(28, 11, 111, '2024-06-12', '09:02:00', 'absen6.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `driver`
--

INSERT INTO `driver` (`driver_id`, `id`, `nama`, `vehicle_id`) VALUES
(11, 1, 'BUDI', 111),
(12, 2, 'UCUP', NULL),
(13, 3, 'ASEP', NULL),
(14, 4, 'ULFA', NULL),
(15, 6, 'AVATAR', NULL),
(116, 7, 'DADANG', NULL),
(124, 15, 'wkw', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fuel_filling`
--

CREATE TABLE `fuel_filling` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `total_biaya` decimal(10,2) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `bukti_struk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `fuel_filling`
--

INSERT INTO `fuel_filling` (`id`, `driver_id`, `vehicle_id`, `total_biaya`, `tanggal_transaksi`, `bukti_struk`) VALUES
(10, 11, 111, '300000.00', '2024-06-10', 'struk1.png'),
(11, 12, 112, '100000.00', '2024-06-10', 'struk3.png'),
(12, 13, 113, '140000.00', '2024-06-10', 'struk4.png'),
(13, 14, 114, '130.20', '2024-06-10', 'struk5.png'),
(14, 11, 111, '450000.00', '2024-06-12', 'struk6.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_kendaraan`
--

CREATE TABLE `jadwal_kendaraan` (
  `jadwal_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `jadwal_pemeliharaan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwal_kendaraan`
--

INSERT INTO `jadwal_kendaraan` (`jadwal_id`, `vehicle_id`, `jadwal_pemeliharaan`) VALUES
(1, 111, '2024-06-01'),
(2, 112, '2024-06-15'),
(3, 114, '2024-06-14'),
(4, 113, '2024-06-21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'indah', '2217051139'),
(2, 'angga', '2217051064'),
(3, 'miko', '2217051069'),
(4, 'rica', '2217051046'),
(6, 'avatar', 'aang123'),
(7, 'dadang', 'dadang123'),
(15, '88888888', '11111111');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_admin`
--

CREATE TABLE `login_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login_admin`
--

INSERT INTO `login_admin` (`id`, `username`, `password`) VALUES
(1, '2217051139', 'indah123'),
(2, '2217051064', 'angga123'),
(3, '2217051069', 'miko123'),
(4, '2217051046', 'rica123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `jenis` varchar(100) NOT NULL,
  `plat` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `kerusakan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `vehicle`
--

INSERT INTO `vehicle` (`id`, `driver_id`, `jenis`, `plat`, `status`, `kerusakan`) VALUES
(111, 11, 'TOYOTA LIMO', 'BE 1707 AH', 'Available', ''),
(112, 12, 'TOYOTA TRANSMOVER', 'BE 3709 KY', 'In Repair', 'Kebocoran oli'),
(113, 13, 'TOYOTA LIMO', 'BE 7600 RT', 'Available', ''),
(114, 14, 'TOYOTA LIMO', 'BE 2369 YQ', 'Available', ''),
(115, 15, 'AANG', 'AB 1234 CD', 'Available', 'ABNSCBA'),
(117, NULL, 'CONTOH', 'BE 5688 YU', 'Available', 'Pecah Ban'),
(123, NULL, 'MOBIL 1', 'BE 6789 KL', 'Available', ''),
(124, NULL, 'LIMOUSIN', 'A 1111 Z', 'Available', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicle_image`
--

CREATE TABLE `vehicle_image` (
  `image_id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `vehicle_image`
--

INSERT INTO `vehicle_image` (`image_id`, `vehicle_id`, `image_path`) VALUES
(1111, 111, 'mobil1.png'),
(1112, 112, 'mobil2.png'),
(1115, 117, ''),
(1117, 124, '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indeks untuk tabel `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `fuel_filling`
--
ALTER TABLE `fuel_filling`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indeks untuk tabel `jadwal_kendaraan`
--
ALTER TABLE `jadwal_kendaraan`
  ADD PRIMARY KEY (`jadwal_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login_admin`
--
ALTER TABLE `login_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Indeks untuk tabel `vehicle_image`
--
ALTER TABLE `vehicle_image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `driver`
--
ALTER TABLE `driver`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT untuk tabel `fuel_filling`
--
ALTER TABLE `fuel_filling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `jadwal_kendaraan`
--
ALTER TABLE `jadwal_kendaraan`
  MODIFY `jadwal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `login_admin`
--
ALTER TABLE `login_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT untuk tabel `vehicle_image`
--
ALTER TABLE `vehicle_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1118;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`);

--
-- Ketidakleluasaan untuk tabel `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`id`) REFERENCES `login` (`id`),
  ADD CONSTRAINT `fk_vehicle` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`);

--
-- Ketidakleluasaan untuk tabel `fuel_filling`
--
ALTER TABLE `fuel_filling`
  ADD CONSTRAINT `fuel_filling_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  ADD CONSTRAINT `fuel_filling_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`);

--
-- Ketidakleluasaan untuk tabel `jadwal_kendaraan`
--
ALTER TABLE `jadwal_kendaraan`
  ADD CONSTRAINT `jadwal_kendaraan_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`);

--
-- Ketidakleluasaan untuk tabel `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`);

--
-- Ketidakleluasaan untuk tabel `vehicle_image`
--
ALTER TABLE `vehicle_image`
  ADD CONSTRAINT `vehicle_image_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
