-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2021 at 03:05 PM
-- Server version: 5.7.21-log
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stok_kue`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `barang`
-- (See below for the actual view)
--
CREATE TABLE `barang` (
`kode_barang` varchar(6)
,`nama_barang` varchar(255)
,`brand` varchar(255)
,`kemasan` text
,`stok` int(11)
,`harga` double
,`active` enum('Y','N')
,`tgl_masuk` date
,`stts_exp` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `barang_exp`
-- (See below for the actual view)
--
CREATE TABLE `barang_exp` (
`kode_barang` varchar(6)
,`nama_barang` varchar(255)
,`brand` varchar(255)
,`kemasan` text
,`stok` int(11)
,`harga` double
,`active` enum('Y','N')
,`tgl_masuk` date
,`tgl_exp` date
,`stts_exp` varchar(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('gk68vom6rs0e9pr5p1nrhbav72mv8i1t', '::1', 1640136127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303133363132373b),
('uil9c7f6qfs4b8qjmhrg268l9a13252l', '::1', 1640137491, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303133373439313b),
('mqpbagu8b8kho2o892qscflnfcket501', '::1', 1640138094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303133383039343b),
('anbvg790n0rf14erpvn1l5cp8r2v5rg9', '::1', 1640140424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303134303231393b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('qfiht10c0g3felo5ooe8agvgvsmnft3a', '::1', 1640140654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303134303532353b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('pf3kvgqoc1315av7kjm4ic6fjhh3q66c', '::1', 1640140991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303134303939313b),
('eeuj3ddh5o1duc0564eaaoo5u7pdg088', '::1', 1640145220, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303134343933353b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('jgdtptmp79v0m6o61kks7cf7t3mpocgo', '::1', 1640145321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303134353331323b5573657249447c733a313a2236223b557365727c733a373a2250656d696c696b223b6c6576656c7c733a373a2270656d696c696b223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('00tfmcdoan9gbtrbvqfak3718vc7padf', '::1', 1640146469, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303134363332373b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('v6cg4fa7qscskp264gggec93r3egadvl', '::1', 1640619333, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303631393333333b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('6p00vt52q0q48thbketedd1abm8d225i', '::1', 1640619660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303631393636303b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('4slu1hq3msump8jpe1se0vio5732l736', '::1', 1640619979, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303631393937393b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('bnhvm7dvjemaae1c15h4ilggufhcojut', '::1', 1640620293, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303632303239333b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('2reoig1db74gf81n74qagga8a4vf63q0', '::1', 1640621320, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303632313332303b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('5ag1tqi2aq1sjklk2u67tqttli7rnpqu', '::1', 1640621466, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303632313332303b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('92ipl4732uhbb5vd1n38gtja84726i84', '::1', 1640643151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303634333135313b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('kkiabofkfb6i4gp4g5ulskbkgkveflpe', '::1', 1640643535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303634333533353b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('plod817eav178idf1nlhnv69k7jmsusu', '::1', 1640643861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303634333836313b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('lucm6i583vm7k2ar0c0ni9v7cvmjrnbb', '::1', 1640644408, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303634343430383b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('gdvjl45m0en5d0biahdl32h2g82v654q', '::1', 1640644408, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303634343430383b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('fq0oevdovb7dqdgdav772chuoqna3s79', '::1', 1640677583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303637373538333b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('7hhh5ft98rm01odp051gslr2j4bi74a7', '::1', 1640677920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303637373932303b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('b8pa8v3of6pj3tr9ajn5apadg71a6hs8', '::1', 1640678938, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303637383933383b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3130313030303b733a31313a22746f74616c5f6974656d73223b643a32303b733a33323a223964616465353962376563363135326366356564333036353962623338316666223b613a363a7b733a323a226964223b733a363a224b5545303239223b733a333a22717479223b643a31303b733a353a227072696365223b643a31303030303b733a343a226e616d65223b733a31393a224b727570756b205564616e67204d656e746168223b733a353a22726f776964223b733a33323a223964616465353962376563363135326366356564333036353962623338316666223b733a383a22737562746f74616c223b643a3130303030303b7d733a33323a223434613437623661333863313438366130343062316134623036363063333532223b613a363a7b733a323a226964223b733a363a224b5545303237223b733a333a22717479223b643a31303b733a353a227072696365223b643a3130303b733a343a226e616d65223b733a393a22426162792043726162223b733a353a22726f776964223b733a33323a223434613437623661333863313438366130343062316134623036363063333532223b733a383a22737562746f74616c223b643a313030303b7d7d),
('0tgf1i97vb2lecia35770gtmmuhktahv', '::1', 1640679256, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303637393235363b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b737563636573737c733a33343a224461746120726574757220626572686173696c20646974616d6261686b616e2e2e2e223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('0i4ij19sfr61h6n5ubfrt23br5a2shhb', '::1', 1640679569, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303637393536393b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('ain96nvle58j0fr34o9dtkrsd82dd0m6', '::1', 1640679896, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303637393839363b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('8l87jp0gm2mpjb1fpgu8uudgbl2rjvjv', '::1', 1640680219, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303638303231393b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a31303030303b733a31313a22746f74616c5f6974656d73223b643a31303b733a33323a223835636538396563373931616166666437393363333965373331613937363564223b613a363a7b733a323a226964223b733a363a224b5545303236223b733a333a22717479223b643a31303b733a353a227072696365223b643a313030303b733a343a226e616d65223b733a31363a224b75652054616d62616e67204d696e69223b733a353a22726f776964223b733a33323a223835636538396563373931616166666437393363333965373331613937363564223b733a383a22737562746f74616c223b643a31303030303b7d7d),
('b8c94qi5j6l3ffo964evttmjh29g9f58', '::1', 1640681489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303638313438393b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('ai0mol3gi24deq0cdjr4jopg4gcmm5se', '::1', 1640681858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303638313835383b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('vcevseuncg1hpm6n9k031nblu19ddrqb', '::1', 1640687815, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303638373831353b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('ffeiluearosdpm109rkuuq0d6amsrrqd', '::1', 1640687958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303638373935383b),
('g8tbf4avgj8qpm0cq7c0c1cbm67ktc2m', '::1', 1640699642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303639393634323b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b),
('imm3m37cq8ceae2aeloml5d16vq7e3pp', '::1', 1640699642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303639393634323b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31313a2264656661756c742e6a7067223b);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `kode_barang` varchar(6) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `kemasan` text NOT NULL,
  `stok` int(11) NOT NULL DEFAULT '0',
  `harga` double NOT NULL,
  `tgl_masuk` date NOT NULL,
  `tgl_exp` date NOT NULL,
  `active` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`kode_barang`, `nama_barang`, `brand`, `kemasan`, `stok`, `harga`, `tgl_masuk`, `tgl_exp`, `active`) VALUES
('KUE006', 'Kue Gabus', 'No brand', 'Kiloan', 4, 12000, '2021-04-03', '2021-12-30', 'N'),
('KUE005', 'Keripik Balado', 'No brand', 'Kiloan', 0, 10000, '2021-04-15', '2022-01-06', 'N'),
('KUE004', 'Keripik Pisang', 'No brand', 'Kiloan', 8, 10000, '2021-03-01', '2022-01-07', 'N'),
('KUE003', 'Kacang Telur', 'No brand', 'Kiloan', 5, 8000, '2021-05-02', '2022-01-05', 'N'),
('KUE002', 'Makaroni', 'Makadas', 'Kiloan', 18, 10000, '2021-04-20', '2021-06-20', 'N'),
('KUE001', 'Cheese Stick', 'Tokezi', 'Kiloan', 0, 10000, '2021-05-24', '2021-12-29', 'N'),
('KUE007', 'Pilus', 'No brand', 'Kiloan', 35, 10000, '2021-06-03', '2021-08-03', 'N'),
('KUE008', 'Kue Bolu Kering', 'No brand', 'Kiloan', 10, 15000, '2021-05-01', '2021-06-09', 'N'),
('KUE009', 'Nastar ', 'ss cake', 'Kiloan', 5, 20000, '2021-05-01', '2021-07-01', 'N'),
('KUE010', 'Makaroni pedas', 'Makadas', 'Kiloan', 4, 12000, '2021-05-22', '2021-07-22', 'N'),
('KUE011', 'Sumpia Abon', 'Sumpia', 'Kiloan', 10, 12000, '2021-05-22', '2021-07-22', 'N'),
('KUE012', 'Sumpia Udang', 'Sumpia', 'Kiloan', 10, 15000, '2021-05-01', '2021-07-01', 'N'),
('KUE013', 'Biskuit Marie', 'ArrowBrand', 'Kiloan', 10, 15000, '2021-05-24', '2021-07-24', 'N'),
('KUE014', 'Kuping Gajah', 'Carisa', 'Kiloan', 10, 10000, '2021-05-24', '2021-07-24', 'N'),
('KUE015', 'Sus Coklat', 'ArrowBrand', 'Kiloan', 5, 12000, '2021-05-22', '2021-07-22', 'N'),
('KUE016', 'Keripik Kentang', 'No brand', 'Kiloan', 8, 12000, '2021-06-03', '2021-08-03', 'N'),
('KUE017', 'Gapit', 'No brand', 'Kiloan', 15, 20000, '2021-06-03', '2021-08-03', 'N'),
('KUE018', 'Emping Manis', 'No brand', 'Kiloan', 10, 15000, '2021-06-03', '2021-08-03', 'N'),
('KUE019', 'Emping Asin', 'No brand', 'Kiloan', 15, 12000, '2021-06-03', '2021-08-03', 'N'),
('KUE020', 'Kerupuk Kulit', 'No brand', 'Kiloan', 4, 20000, '2021-06-03', '2021-08-03', 'N'),
('KUE021', 'Rengginang', 'No brand', 'Kiloan', 10, 15000, '2021-06-05', '2021-08-05', 'N'),
('KUE022', 'Baby Crab', 'No brand', 'Kiloan', 15, 20000, '2021-06-08', '2021-08-08', 'N'),
('KUE023', 'Emping Melinjo', 'No brand', 'Kiloan', 10, 15000, '2021-06-08', '2021-08-08', 'N'),
('KUE024', 'Semprong', 'No brand', 'Kiloan', 5, 15000, '2021-06-08', '2021-08-08', 'N'),
('KUE025', 'Makaroni pedas', 'Makadas', '100gr', 34, 6000, '2021-05-22', '2021-07-22', 'N'),
('KUE026', 'Kue Tambang Mini', 'No brand', '250gr', 10, 15000, '2021-12-21', '2022-02-28', 'Y'),
('KUE027', 'Baby Crab', 'No brand', '250gr', 0, 10000, '2021-12-21', '2022-02-28', 'Y'),
('KUE028', 'Gapit', 'No brand', '500gr', 40, 10000, '2021-12-21', '2022-02-21', 'Y'),
('KUE029', 'Krupuk Udang Mentah', 'Padi Kapas', '250gr', 30, 10000, '2021-12-21', '2022-02-21', 'Y'),
('KUE030', 'Krupuk Mlarat Mentah', 'No brand', '250gr', 50, 15000, '2021-12-21', '2022-02-21', 'Y'),
('KUE031', 'Krupuk Mlarat Mentah', 'No brand', '500gr', 100, 15000, '2021-12-21', '2022-02-21', 'Y'),
('KUE032', 'Krupuk Mlarat', 'No brand', '1/4 kg', 0, 20000, '2021-12-21', '2022-02-28', 'Y'),
('KUE033', 'Kue Sagu', 'No brand', '250gr', 0, 10000, '2021-12-21', '2022-02-28', 'Y'),
('KUE034', 'Emping Melinjo Manis', 'No brand', '250gr', 40, 7000, '2021-12-21', '2022-02-21', 'Y'),
('KUE035', 'Ikan Asin', 'No brand', '250gr', 37, 10000, '2021-12-21', '2022-02-21', 'Y'),
('KUE036', 'Ikan Asin', 'No brand', '500gr', 40, 15000, '2021-12-21', '2022-02-21', 'Y'),
('KUE037', 'Emping Manis', 'No brand', '250gr', 20, 8000, '2021-12-21', '2022-02-21', 'Y'),
('KUE038', 'Emping Manis', 'No brand', '500gr', 5, 12000, '2021-12-21', '2022-02-21', 'Y'),
('KUE039', 'Makaroni Pedas ', 'Makadas', '250gr', 5, 8000, '2021-12-21', '2022-02-21', 'Y'),
('KUE040', 'Makaroni Pedas', 'Makadas', '500gr', 20, 10000, '2021-12-21', '2022-02-21', 'Y'),
('KUE041', 'Makaroni Original', 'Makadas', '250gr', 0, 7000, '2021-12-21', '2022-02-28', 'Y'),
('KUE042', 'Keripik Rajungan', 'No brand', '250gr', 30, 15000, '2021-12-21', '2022-02-21', 'Y'),
('KUE043', 'Baglen Keju', 'No brand', '250gr', 20, 15000, '2021-12-21', '2022-02-21', 'Y'),
('KUE044', 'Satu Asem', 'Ekasari', '250gr', 0, 15000, '2021-12-21', '2022-02-28', 'Y'),
('KUE045', 'Tape Ketan Asli Kuningan', 'Rasa Super', 'Ember besar', 20, 35000, '2021-12-21', '2022-02-21', 'Y'),
('KUE046', 'Kacang Telur garuda', 'No brand', '250gr', 30, 10000, '2021-12-22', '2022-02-22', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_pembelian`
--

CREATE TABLE `tbl_detail_pembelian` (
  `id_pembelian` varchar(20) NOT NULL,
  `id_barang` varchar(6) NOT NULL,
  `qty` smallint(6) NOT NULL,
  `harga` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_pembelian`
--

INSERT INTO `tbl_detail_pembelian` (`id_pembelian`, `id_barang`, `qty`, `harga`) VALUES
('ID1640102319', 'KUE007', 5, 10000),
('ID1640681869', 'KUE026', 10, 100000);

--
-- Triggers `tbl_detail_pembelian`
--
DELIMITER $$
CREATE TRIGGER `pembelian_barang` AFTER INSERT ON `tbl_detail_pembelian` FOR EACH ROW BEGIN
	UPDATE tbl_barang b SET b.stok = b.stok + new.qty
    WHERE b.kode_barang = new.id_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_pembelian` AFTER DELETE ON `tbl_detail_pembelian` FOR EACH ROW BEGIN
	UPDATE tbl_barang b SET b.stok = b.stok - old.qty
    WHERE b.kode_barang = old.id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_penjualan`
--

CREATE TABLE `tbl_detail_penjualan` (
  `id_penjualan` varchar(20) NOT NULL,
  `id_barang` varchar(6) NOT NULL,
  `qty` smallint(6) NOT NULL,
  `harga` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_penjualan`
--

INSERT INTO `tbl_detail_penjualan` (`id_penjualan`, `id_barang`, `qty`, `harga`) VALUES
('ID1626350167', 'KUE001', 2, 15000),
('ID1626353689', 'KUE001', 2, 15000),
('ID1626354552', 'KUE001', 3, 15000),
('ID1626354702', 'KUE001', 4, 15000),
('ID1595990535', 'KUE001', 3, 15000),
('ID1628082377', 'KUE001', 2, 15000),
('ID1640102821', 'KUE002', 2, 10000),
('ID1640146278', 'KUE027', 2, 10000);

--
-- Triggers `tbl_detail_penjualan`
--
DELIMITER $$
CREATE TRIGGER `penjualan_barang` AFTER INSERT ON `tbl_detail_penjualan` FOR EACH ROW BEGIN
	UPDATE tbl_barang b SET b.stok = b.stok - new.qty
    WHERE b.kode_barang = new.id_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_penjualan` AFTER DELETE ON `tbl_detail_penjualan` FOR EACH ROW BEGIN
	UPDATE tbl_barang b SET b.stok = b.stok + old.qty
    WHERE b.kode_barang = old.id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_retur`
--

CREATE TABLE `tbl_detail_retur` (
  `id_retur` varchar(20) NOT NULL,
  `id_barang` varchar(6) NOT NULL,
  `qty` smallint(6) NOT NULL,
  `harga` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_retur`
--

INSERT INTO `tbl_detail_retur` (`id_retur`, `id_barang`, `qty`, `harga`) VALUES
('ID1640681730', 'KUE033', 3, 3000),
('ID1640681730', 'KUE032', 5, 100000),
('ID1640681730', 'KUE026', 10, 10000),
('ID1640681640', 'KUE027', 10, 4000),
('ID1640699421', 'KUE041', 10, 30000),
('ID1640699421', 'KUE044', 5, 40000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembelian`
--

CREATE TABLE `tbl_pembelian` (
  `id_pembelian` varchar(20) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `id_supplier` varchar(15) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pembelian`
--

INSERT INTO `tbl_pembelian` (`id_pembelian`, `tgl_pembelian`, `id_supplier`, `id_user`) VALUES
('ID1640102319', '2021-08-01', 'ID1595997179', 1),
('ID1640681869', '2021-12-28', 'ID1595997179', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penjualan`
--

CREATE TABLE `tbl_penjualan` (
  `id_penjualan` varchar(20) NOT NULL,
  `nama_pembeli` varchar(30) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_penjualan`
--

INSERT INTO `tbl_penjualan` (`id_penjualan`, `nama_pembeli`, `tgl_penjualan`, `id_user`) VALUES
('ID1640146278', 'Salsa', '2021-12-22', 2),
('ID1640102821', 'Ayu', '2021-06-03', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_retur`
--

CREATE TABLE `tbl_retur` (
  `id_retur` varchar(20) NOT NULL,
  `tgl_retur` date NOT NULL,
  `id_supplier` varchar(15) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_retur`
--

INSERT INTO `tbl_retur` (`id_retur`, `tgl_retur`, `id_supplier`, `id_user`) VALUES
('ID1640699421', '2021-12-28', 'ID1640011902', 1),
('ID1640681730', '2021-12-28', 'ID1640011902', 1),
('ID1640681640', '2021-12-28', 'ID1640011902', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id_supplier` varchar(15) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telp` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id_supplier`, `nama_supplier`, `alamat`, `telp`) VALUES
('ID1595997179', 'PT. Indofood Tbk Cirebon', 'Jl. Km.18, Ender, Kec.Pangenan, Cirebon', '02318292100'),
('ID1640011902', 'Toko Aneka Kue', 'Jl. Lemahwungkuk No.43', '0231206191'),
('ID1640011942', 'Altisa Mulya', 'Bondet - Cirebon', '02336292123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `foto` varchar(50) NOT NULL DEFAULT 'default.jpg',
  `level` enum('admin','pegawai','pemilik') NOT NULL,
  `active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `last_login` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `fullname`, `password`, `alamat`, `hp`, `foto`, `level`, `active`, `last_login`) VALUES
(1, 'admin', 'Administrator', '$2y$08$BO41OJFfhPPPzjKdWw2I6OyUElK1mkD43UVt1ss6J1xrVUExC1lRy', '', '', 'default.jpg', 'admin', 'Y', '2021-12-28 17:39:18'),
(2, 'kasir', 'kasir', '$2y$10$750t8vZMDTyRy6viGBCHa.ZetOxhmXlyPAswpCgBIakOPIc/xJ7yu', 'Jl. Merapi 29', '085731108935', 'default.jpg', 'pegawai', 'Y', '2021-12-28 14:39:48'),
(6, 'pemilik', 'Pemilik', '$2y$10$dxr7TPRlWsHwVmlVPuRZYu0B9lkmQEyAiZ7oPp0rYJrxIpQRAvjky', 'Jl. Nanas No. 32', '081896427997', 'default.jpg', 'pemilik', 'Y', '2021-12-28 14:40:01'),
(8, 'shalsa', 'shalsa', '$2y$10$5gJiqLfpqGHaZEEuoMohNupIWbQLfCVfwCqHwKvzVBEUGyDkmvs/e', 'KotaCirebon', '08987906', 'foto1640145140.jpg', 'pegawai', 'Y', NULL);

-- --------------------------------------------------------

--
-- Structure for view `barang`
--
DROP TABLE IF EXISTS `barang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `barang`  AS SELECT `tbl_barang`.`kode_barang` AS `kode_barang`, `tbl_barang`.`nama_barang` AS `nama_barang`, `tbl_barang`.`brand` AS `brand`, `tbl_barang`.`kemasan` AS `kemasan`, `tbl_barang`.`stok` AS `stok`, `tbl_barang`.`harga` AS `harga`, `tbl_barang`.`active` AS `active`, `tbl_barang`.`tgl_masuk` AS `tgl_masuk`, if((`tbl_barang`.`tgl_exp` > now()),`tbl_barang`.`tgl_exp`,'Expired') AS `stts_exp` FROM `tbl_barang` ;

-- --------------------------------------------------------

--
-- Structure for view `barang_exp`
--
DROP TABLE IF EXISTS `barang_exp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `barang_exp`  AS SELECT `tbl_barang`.`kode_barang` AS `kode_barang`, `tbl_barang`.`nama_barang` AS `nama_barang`, `tbl_barang`.`brand` AS `brand`, `tbl_barang`.`kemasan` AS `kemasan`, `tbl_barang`.`stok` AS `stok`, `tbl_barang`.`harga` AS `harga`, `tbl_barang`.`active` AS `active`, `tbl_barang`.`tgl_masuk` AS `tgl_masuk`, `tbl_barang`.`tgl_exp` AS `tgl_exp`, if((`tbl_barang`.`tgl_exp` > now()),`tbl_barang`.`tgl_exp`,'Expired') AS `stts_exp` FROM `tbl_barang` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
