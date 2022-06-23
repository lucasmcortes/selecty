-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2022 at 03:32 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `selecty`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidatos`
--

CREATE TABLE `candidatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `ativo` int(11) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidatos`
--

INSERT INTO `candidatos` (`id`, `nome`, `email`, `telefone`, `username`, `pwd`, `ativo`, `date`) VALUES
(1, 'b', 'c', 'c', 'user', '$2y$10$KpR.sSFSS5Ns2fA7PAKWguz1nPN9qaz4f.ttOoQTQhQN98W.DUuy.', 0, '2022-06-22 18:18:48.960510'),
(2, 'a', 'b', 'c', 'u', '$2y$10$8p5vy8Kkq75hh4.0UmPqyeQQZFwqcuG7cshD13Ao0xZHHOZk7B0Ia', 1, '2022-06-22 18:19:01.118993'),
(3, 'a', 'b', 'c', '', '', 0, '2022-06-22 18:19:14.348321'),
(4, 'a', 'b', 'c', '', '', 0, '2022-06-22 18:19:24.696015'),
(5, 'a', 'bc', 'c', '', '', 0, '2022-06-22 18:20:17.469135'),
(6, 'a', 'b', 'c', '', '', 0, '2022-06-22 18:22:57.599056'),
(7, 'a', 'b', 'c', '', '', 0, '2022-06-22 18:29:57.344061'),
(8, 'a', 'b', 'c', '', '', 0, '2022-06-22 18:42:37.659943'),
(9, 'a', 'b', 'c', '', '', 0, '2022-06-22 18:45:50.995160'),
(10, 'a', 'b', 'c', '', '', 0, '2022-06-22 18:46:34.875377'),
(11, 'a', 'b', 'c', '', '', 0, '2022-06-22 18:50:19.357394'),
(12, 'a', 'b', 'c', '', '', 0, '2022-06-22 18:51:28.300529'),
(13, 'a', 'b', 'c', '', '', 0, '2022-06-22 18:52:55.115301'),
(14, 'a', 'vb', 'c', '', '', 0, '2022-06-22 18:54:45.761939'),
(15, 'a', 'b', 'c', '', '', 0, '2022-06-22 18:56:54.901159'),
(16, 'ab', 'c', 'sas', '', '', 0, '2022-06-22 18:57:35.739575'),
(17, 'ab', 'b', 'c', '', '', 0, '2022-06-22 18:59:57.055930'),
(18, 'a', 'bc', 's', '', '', 0, '2022-06-22 19:01:13.256433'),
(19, 'a', 'b', 'c', '', '', 0, '2022-06-22 19:03:43.103873'),
(20, 'ac', 'bc', 'asd', '', '', 0, '2022-06-22 19:04:25.424904'),
(21, 'a', 'b', 'c', '', '', 0, '2022-06-22 19:05:55.016021'),
(22, 'a', 'b', 'c', '', '', 0, '2022-06-22 19:06:24.892288'),
(23, 'a', 'b', 'c', '', '', 0, '2022-06-22 19:08:23.058722'),
(24, 'a', 'bc', 'c', '', '', 0, '2022-06-22 19:09:32.886135'),
(25, 'a', 'b', 'c', '', '', 0, '2022-06-22 19:09:55.949914'),
(26, 'a', 'bc', 'c', '', '', 0, '2022-06-22 19:15:49.345623'),
(27, 'a', 'b', 'c', '', '', 0, '2022-06-22 19:17:18.957074'),
(28, 'ac', 'bc', 'c', '', '', 0, '2022-06-22 19:17:24.444369'),
(29, 'ac', 'bc', 'sdf', '', '', 0, '2022-06-22 19:20:46.724865'),
(30, 'a', 'bc', 'c', '', '', 0, '2022-06-22 19:21:44.144786'),
(31, 'ac', 'bc', 'b', '', '', 0, '2022-06-22 19:22:12.061670'),
(32, 'a', 'c', 'c', '', '', 0, '2022-06-22 19:30:23.275589'),
(33, 'a', 'bc', 'c', '', '', 0, '2022-06-22 19:31:04.290799'),
(34, 'a', 'c', 'bc', '', '', 0, '2022-06-22 19:31:34.381587'),
(35, 'a', 'bc', 'c', '', '', 0, '2022-06-22 19:32:14.342808'),
(36, 'a', 'bc', 'c', '', '', 0, '2022-06-22 19:33:52.644881'),
(37, 'a', 'skjd', 'hu', '', '', 0, '2022-06-22 19:34:33.600002'),
(38, 'sadfhj', 'jksdh', 'hkshk', '', '', 0, '2022-06-22 19:35:24.160418'),
(39, 'a', 'hshash', 'jhsqhjasd', '', '', 0, '2022-06-22 19:37:32.201432'),
(40, 'asdjk', 'kjsdjk', 'kjsadjk', '', '', 0, '2022-06-22 19:38:10.456579'),
(41, 'asdfhj', 'jh', 'hkhsdf', '', '', 0, '2022-06-22 19:39:14.941317'),
(42, 'sdfjk', 'jksdfjkl', 'kjsdf', '', '', 0, '2022-06-22 19:39:33.599869'),
(43, 'aj', 'jhsdhj', 'jhdwfj', '', '', 0, '2022-06-22 19:41:55.267425'),
(44, 'sadfhj', 'jsdakj', 'g8f', '', '', 0, '2022-06-22 19:42:34.490322'),
(45, 'sadfhu', '8f', 'h89f', '', '', 0, '2022-06-22 19:43:08.596997'),
(46, 'sdfh', 'd8fh', '8dfh8', '', '', 0, '2022-06-22 19:43:37.081625'),
(47, 'sdghuf', '89yfwfd', '7df8', '', '', 0, '2022-06-22 19:45:38.640073'),
(48, 'sadfh', 'hf', 'hd', '', '', 0, '2022-06-22 19:46:50.878450'),
(49, 'df', 'hdfh', 'hdf', '', '', 0, '2022-06-22 19:47:10.786019'),
(50, 'sdfghwdf', '87hedf', 'dw8', '', '', 0, '2022-06-22 19:48:01.704453'),
(51, 'sdf', 'ggf', 'gdfdf', '', '', 0, '2022-06-22 19:48:25.565351'),
(52, 'sdfj', 'kjfhd', 'fjk', '', '', 0, '2022-06-22 19:51:19.943459'),
(53, 'adsf', 'jhdfk', 'dfk', '', '', 0, '2022-06-22 19:51:42.616707'),
(54, 'sad', 'f', 'asd', '', '', 0, '2022-06-22 19:52:49.040981'),
(55, 'sadfg', 'hh', 'uffd', '', '', 0, '2022-06-22 19:53:38.464913'),
(56, 'y7dsa89f', 'h', 'dg', '', '', 0, '2022-06-22 19:54:07.996077'),
(57, 'sadfasdj', 'khjdd', 'hf7', '', '', 0, '2022-06-22 19:54:56.898167'),
(58, 'sadjkf', '7fdh7ud', 'fh89', '', '', 0, '2022-06-22 19:56:56.437213'),
(59, 'sdh', 'uhf', '8dfu', '', '', 0, '2022-06-22 19:57:25.016274'),
(60, 'sdfh', '9fh', '87hf', '', '', 0, '2022-06-22 19:57:55.096521'),
(61, 'sdahfu', '8fudfh8', 'df8h', '', '', 0, '2022-06-22 19:58:17.390328'),
(62, 'sdfyh', '8dfhy', 'dfh89', '', '', 0, '2022-06-22 19:58:49.085507'),
(63, 'sda', 'hfu', 'dfhu8', '', '', 0, '2022-06-22 20:00:18.381304'),
(64, 'ashu8g78g', 'f', '76f97d', '', '', 0, '2022-06-22 20:00:55.159027'),
(65, 'ashgfy', 'g8fdg', '9df', '', '', 0, '2022-06-22 20:01:35.423194'),
(66, 'sdf', 'hdfh8', 'fh8', '', '', 0, '2022-06-22 20:04:26.385272'),
(67, 'sdyhfy', '9f9', 'y9y', '', '', 0, '2022-06-22 20:04:46.433343'),
(68, 'sdfhu', 'fud', '9uh', '', '', 0, '2022-06-22 20:05:30.654909'),
(69, 'sdfh', 'dfh8', 'fh8', '', '', 0, '2022-06-22 20:06:54.794426'),
(70, 'sdhf', '78dgf87gd78', 'f', '', '', 0, '2022-06-22 20:10:09.009542'),
(71, 'sd', 'fy8dg', 'ygd7', '', '', 0, '2022-06-22 20:10:41.034267'),
(72, 'jxci', 'w79d', 'd7wg', '', '', 0, '2022-06-22 20:12:34.037457'),
(73, 'sdfh', '789hdf', '8df', '', '', 0, '2022-06-22 20:12:57.364651'),
(74, 'guykj', 'jkqhsd87q', 'shd', '', '', 0, '2022-06-22 20:16:51.470633'),
(75, 'sdhfu', '8dhf8', 'dhf8ufd', '', '', 0, '2022-06-22 20:18:05.397772'),
(76, 'dsfh', '78dfh', '78fh8', '', '', 0, '2022-06-22 20:18:31.162418'),
(77, 'hdusfh', '8fdh', '98df', '', '', 0, '2022-06-22 20:19:36.305336'),
(78, 'sdf', 'hufd8u', 'dfh8', '', '', 0, '2022-06-22 20:21:19.678519'),
(79, 'df', 'dh8uy', 'hyd', '', '', 0, '2022-06-22 20:22:45.679156'),
(80, 'sdfhy', 'df7fg8d', 'f', '', '', 0, '2022-06-22 20:23:23.640156'),
(81, 'df', 'gydg7', 'd', '', '', 0, '2022-06-22 20:24:31.572249'),
(82, 'sdfy67', 'fdg', 'g8df', '', '', 0, '2022-06-22 20:26:17.001958'),
(83, 't6 wdsf', 'yfgydfg9y', 'fd', '', '', 0, '2022-06-22 20:27:25.601722'),
(84, 's', 'f', 'sf', '', '', 0, '2022-06-22 20:27:43.342416'),
(85, 'sdf', 'f', 'fd', '', '', 0, '2022-06-22 20:28:14.138715'),
(86, 'sdf', 'gydfgy', 'g', '', '', 0, '2022-06-22 20:30:32.795299'),
(87, 'dfu', 'd8f', '89yf9d8', '', '', 0, '2022-06-22 20:31:29.704988'),
(88, 'sdf', 'f', 'f', '', '', 0, '2022-06-22 20:39:05.188711'),
(89, 's', 'dsf', 'f', '', '', 0, '2022-06-22 20:39:26.458110'),
(90, 'zxdf', 'f', 'df', '', '', 0, '2022-06-22 20:46:55.066287'),
(91, 'sdf8', 'f', '9d', '', '', 0, '2022-06-22 20:49:36.337491'),
(92, 'h8ehf8', 'gf978', '798f9', '', '', 0, '2022-06-22 20:50:06.251184'),
(93, 'sdf', 'h8dfhy', 'fh89', '', '', 0, '2022-06-22 20:52:12.568975'),
(94, 'sdf', 'yfg8', 'g7f', '', '', 0, '2022-06-22 20:53:22.914495'),
(95, 'df', 'yf', 'g8fd', '', '', 0, '2022-06-22 20:58:51.324801'),
(96, 'sdfhu', 'dh8f', 'hdf8', '', '', 0, '2022-06-22 20:59:41.445231'),
(97, 'sdf', 'f', 'f', '', '', 0, '2022-06-22 21:00:11.110632'),
(98, 'sdfyf', 'yfgf8', 'f', '', '', 0, '2022-06-22 21:01:33.488932'),
(99, 'sadfy', 'f789', 'f89', '', '', 0, '2022-06-22 21:03:38.464471'),
(100, 'sdfh8', 'dfy', 'ygdy', '', '', 0, '2022-06-22 21:07:43.457455'),
(101, 'dsf', 'h8uf8df', '8', '', '', 0, '2022-06-22 21:12:14.292875'),
(102, 'sdfhy8hf', 'df', '89dfy', '', '', 0, '2022-06-22 21:20:54.392961'),
(103, 'sydfy', 'ddgyyg', 'd', '', '', 0, '2022-06-22 21:24:52.960357'),
(104, 'f', 'df', 'fdf', '', '', 0, '2022-06-22 21:25:13.642966'),
(105, 'df', 'f', 'df', '', '', 0, '2022-06-22 21:26:55.707607'),
(106, 'sdf', 'ghufg', 'udf', '', '', 0, '2022-06-22 21:28:42.024805'),
(107, 'sdfh', 'gdfgkfdff', 'dfdf', '', '', 0, '2022-06-22 21:30:01.735373'),
(108, 'dsaf', 'hfdhg', 'fd', '', '', 0, '2022-06-22 21:40:57.546623'),
(109, 'dfq', '2873461', 'sdjkf', '0', '', 0, '2022-06-22 21:42:35.020636'),
(110, 'adsd', '1237234', 'dskjgash', '0', '', 0, '2022-06-22 21:43:27.673958'),
(111, 'candidatos', 'sdf', 'telefone', 'usuario', '$2y$10$9X6oEK4cyHZHlRW/6cWbGOemWHW.CKXakT6/g1s2FS3oirmT2PzcS', 0, '2022-06-22 21:51:32.726105'),
(112, 'candidato', 'email', 'telefone', '', '', 0, '2022-06-22 21:52:00.115978'),
(113, 'usuario', 'email', 'telefone', '', '', 0, '2022-06-22 21:55:26.441909'),
(114, 'candidato', 'email', 'telefone', '', '', 0, '2022-06-22 22:16:31.935507'),
(115, 'abc', 'abc', 'abc', '', '', 0, '2022-06-22 22:17:53.619651'),
(116, 'abc', 'cab', 'abc', '', '', 0, '2022-06-22 22:18:03.627310'),
(117, 'abc', 'acb', 'acb', '', '', 0, '2022-06-22 22:18:21.705187'),
(118, 'a', 'b', 'c', '', '', 0, '2022-06-22 22:19:17.701303'),
(119, 'a', 'b', 'c', '', '', 0, '2022-06-22 22:19:47.244753'),
(120, 'a', 'b', 'c', '', '', 0, '2022-06-22 22:23:57.535747');

-- --------------------------------------------------------

--
-- Table structure for table `experiencias`
--

CREATE TABLE `experiencias` (
  `expid` int(11) NOT NULL,
  `candidato` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `experiencias`
--

INSERT INTO `experiencias` (`expid`, `candidato`, `titulo`, `descricao`, `date`) VALUES
(1, 0, 'sd', 'fygyfgy7', '2022-06-22 20:46:58.794130'),
(2, 0, 'dfg87f', 'dg8y7', '2022-06-22 20:46:58.794130'),
(3, 0, 'sadfh', 'h8f', '2022-06-22 20:49:43.927078'),
(4, 0, 'sd3gr', 'dy7yh', '2022-06-22 20:49:43.927078'),
(5, 92, 'df', 'gfdgy7d', '2022-06-22 20:50:09.935365'),
(6, 92, 'fg87', 'df7', '2022-06-22 20:50:09.935365'),
(7, 94, 'df', 'yg', '2022-06-22 20:53:28.263897'),
(8, 94, 'fydfgygy7', 'dfg', '2022-06-22 20:53:28.263897'),
(9, 94, 'yd8d', 'f', '2022-06-22 20:53:28.263897'),
(10, 95, 'f', 'df', '2022-06-22 20:58:59.117494'),
(11, 95, 'f', 'sagfd', '2022-06-22 20:58:59.117494'),
(12, 95, 'df', 'dff', '2022-06-22 20:58:59.117494'),
(13, 96, 'sdfsafd', 'f', '2022-06-22 20:59:44.905196'),
(14, 54, 'sdfsadf', 'f', '2022-06-22 21:00:15.077701'),
(15, 54, 'f', 'f', '2022-06-22 21:00:15.077701'),
(16, 98, 'df', 'fd', '2022-06-22 21:01:37.544926'),
(17, 98, 'ddf7878', 'fd', '2022-06-22 21:01:37.544926'),
(18, 99, 'sdfgy', 'dgy7', '2022-06-22 21:03:42.057211'),
(19, 54, 'ghdsd', 'fh', '2022-06-22 21:27:07.261445'),
(20, 54, 'gf', 'gkf', '2022-06-22 21:27:07.261445'),
(21, 106, 'sdf', 'hgfdhg', '2022-06-22 21:28:47.268996'),
(22, 107, 'sdfh', 'gdgh', '2022-06-22 21:30:06.994036'),
(23, 108, 'df', 'hgfd', '2022-06-22 21:41:02.142551'),
(24, 109, 'fgdfjk', 'jkdj', '2022-06-22 21:42:43.475434'),
(25, 109, 'jkdkj', 'jklsdh', '2022-06-22 21:42:43.475434'),
(26, 110, 'sdkjfh', 'kjhswdfkj', '2022-06-22 21:43:31.945798'),
(27, 111, 'a', 'b', '2022-06-22 21:51:37.108069'),
(28, 111, 'a', 'b', '2022-06-22 21:52:06.235393'),
(29, 111, 'a', 'b', '2022-06-22 21:55:31.353277'),
(30, 0, 'experiencia', 'descricao', '2022-06-22 22:16:41.238855'),
(31, 0, 'a', 'b', '2022-06-22 22:18:08.149224'),
(32, 0, 'ah', 'hsh', '2022-06-22 22:18:27.621710'),
(33, 0, 'hsh', 'hsad', '2022-06-22 22:18:27.621710'),
(34, 1, 'a', 'b', '2022-06-22 22:19:22.144249'),
(35, 1, 'a', 'bv', '2022-06-22 22:19:51.124301'),
(36, 2, 'a', 'v', '2022-06-22 22:24:02.464631');

-- --------------------------------------------------------

--
-- Table structure for table `formacoes`
--

CREATE TABLE `formacoes` (
  `forid` int(11) NOT NULL,
  `candidato` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `concluida` int(11) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `formacoes`
--

INSERT INTO `formacoes` (`forid`, `candidato`, `titulo`, `concluida`, `date`) VALUES
(1, 54, 'sdfsa\'', 1234, '2022-06-22 21:27:07.261445'),
(2, 54, 'SDAFH', 234, '2022-06-22 21:27:07.261445'),
(3, 106, 'SGHDGH', 1234, '2022-06-22 21:28:47.268996'),
(4, 107, 'f', 234342, '2022-06-22 21:30:06.994036'),
(5, 108, 'hgsd', 234342, '2022-06-22 21:41:02.142551'),
(6, 109, 'sdkfsad', 1234, '2022-06-22 21:42:43.475434'),
(7, 110, 'kljsdhfjkla', 1234, '2022-06-22 21:43:31.945798'),
(8, 111, 'c', 1, '2022-06-22 21:51:37.108069'),
(9, 111, 'c', 1, '2022-06-22 21:52:06.235393'),
(10, 111, 'c', 1, '2022-06-22 21:55:31.353277'),
(11, 0, 'titulo', 2022, '2022-06-22 22:16:41.238855'),
(12, 0, 'c', 1, '2022-06-22 22:18:08.149224'),
(13, 0, 'shsa', 1, '2022-06-22 22:18:27.621710'),
(14, 1, 'a', 1, '2022-06-22 22:19:22.144249'),
(15, 1, '1', 1, '2022-06-22 22:19:51.124301'),
(16, 2, 'xc', 1, '2022-06-22 22:24:02.464631');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiencias`
--
ALTER TABLE `experiencias`
  ADD PRIMARY KEY (`expid`);

--
-- Indexes for table `formacoes`
--
ALTER TABLE `formacoes`
  ADD PRIMARY KEY (`forid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `experiencias`
--
ALTER TABLE `experiencias`
  MODIFY `expid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `formacoes`
--
ALTER TABLE `formacoes`
  MODIFY `forid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;