-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2024 at 10:14 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samgyupsal_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_account`
--

CREATE TABLE `admin_account` (
  `acc_id` int(11) NOT NULL,
  `acc_access` text NOT NULL,
  `acc_user` text NOT NULL,
  `acc_pass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_account`
--

INSERT INTO `admin_account` (`acc_id`, `acc_access`, `acc_user`, `acc_pass`) VALUES
(1, 'Admin', '$2a$12$m9ayDoqhxXV4jYEHaRebaeEMWMuAcAWHLrHgGnIJGH065cA.YV0.u', '$2a$12$AqR1IuBdowjRLGLmfMb6derIsoXwMrfXVO8/PwuxW21.Abw5x.NYK'),
(2, 'Regular', '$2y$10$26FZFupcKEE6ro4SFLIq9uKA2s1k0lm15r1dOcDBm3vhFGRRZDepi', '$2y$10$rK8BCcLfJu17/Gavp1iDtul7EHzg2Qr2YjJjiWfVaQqFzczst36D6');

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `payroll_id` int(11) NOT NULL,
  `Philhealth` float NOT NULL,
  `SSS` float NOT NULL,
  `PAGIBIG` float NOT NULL,
  `taxes` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deductions`
--

INSERT INTO `deductions` (`payroll_id`, `Philhealth`, `SSS`, `PAGIBIG`, `taxes`) VALUES
(11, 38706.1, 0, 0, 11224.8),
(12, 8920, 28990, 4460, 2586.8),
(13, 657.8, 2137.85, 328.9, 190.762),
(14, 622.6, 2023.45, 311.3, 180.554),
(15, 656, 2132, 328, 190.24),
(16, 572, 1859, 286, 165.88),
(17, 618, 2008.5, 309, 179.22),
(18, 582.2, 1892.15, 291.1, 168.838),
(19, 657.8, 2137.85, 328.9, 190.762),
(20, 622.6, 2023.45, 311.3, 180.554),
(21, 656, 2132, 328, 190.24),
(22, 572, 1859, 286, 165.88),
(23, 618, 2008.5, 309, 179.22),
(24, 582.2, 1892.15, 291.1, 168.838),
(31, 38706.1, 125795, 19353, 11224.8),
(32, 8920, 28990, 4460, 2586.8),
(33, 657.8, 2137.85, 328.9, 190.762),
(34, 622.6, 2023.45, 311.3, 180.554),
(35, 656, 2132, 328, 190.24),
(36, 572, 1859, 286, 165.88),
(37, 618, 2008.5, 309, 179.22),
(38, 582.2, 1892.15, 291.1, 168.838),
(43, 656, 2132, 328, 190.24),
(44, 572, 1859, 286, 165.88),
(45, 618, 2008.5, 309, 179.22),
(46, 582.2, 1892.15, 291.1, 168.838),
(47, 38706.1, 125795, 19353, 11224.8),
(48, 8920, 28990, 4460, 2586.8),
(49, 657.8, 2137.85, 328.9, 190.762),
(50, 622.6, 2023.45, 311.3, 180.554),
(51, 656, 2132, 328, 190.24),
(52, 572, 1859, 286, 165.88),
(53, 618, 2008.5, 309, 179.22),
(54, 582.2, 1892.15, 291.1, 168.838);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `lastname` text NOT NULL,
  `firstname` text NOT NULL,
  `position` text NOT NULL,
  `emp_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `lastname`, `firstname`, `position`, `emp_status`) VALUES
(1, 'Admini', 'John', 'Administrator', 'Active'),
(18, 'Garcia', 'Jose', 'Manager', 'Active'),
(34, 'de la Cruz', 'Diana', 'Cook', 'Active'),
(35, 'Dagiling', 'Juan', 'Waiter', 'Active'),
(36, 'Calermo', 'Daryll', 'Cook', 'Active'),
(37, 'Fernandez', 'Guyver', 'Waiter', 'Active'),
(38, 'Quezon', 'Alfredo', 'Cashier', 'Active'),
(39, 'Toron', 'Camilla', 'Cashier', 'Active'),
(40, 'Dorgezo', 'Matil', 'Waiter', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `employee_archive`
--

CREATE TABLE `employee_archive` (
  `archive_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date_archived` date NOT NULL,
  `date_reactivated` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_archive`
--

INSERT INTO `employee_archive` (`archive_id`, `employee_id`, `date_archived`, `date_reactivated`) VALUES
(1, 38, '2023-12-03', '2023-12-03'),
(2, 37, '2023-11-27', '2023-11-27'),
(3, 39, '2023-12-05', '2023-12-05'),
(4, 1, '2023-12-05', '2023-12-05'),
(5, 40, '2023-12-07', '2023-12-07');

-- --------------------------------------------------------

--
-- Table structure for table `employee_emergency_contact`
--

CREATE TABLE `employee_emergency_contact` (
  `employee_id` int(11) NOT NULL,
  `emrgncy_name` text NOT NULL,
  `emrgncy_cnum` bigint(20) NOT NULL,
  `emrgncy_address` text NOT NULL,
  `emrgncy_relation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_emergency_contact`
--

INSERT INTO `employee_emergency_contact` (`employee_id`, `emrgncy_name`, `emrgncy_cnum`, `emrgncy_address`, `emrgncy_relation`) VALUES
(1, 'Jane Admini', 9226784527, 'Room 213 Tower 1, Avida Towers, Roxas, DC', 'Spouse'),
(18, 'Marie Garcia', 9285553281, 'Colby Street B4 L2, Colby Subdv. Toril, DC', 'Mother'),
(34, 'Montoya de la Cruz', 9284139253, 'Block Lot, Barangay, District, DC', 'Spouse'),
(35, 'Tess Dagiling', 9221289437, 'Block Lot, Barangay, District, DC', 'Mother'),
(36, 'Karina Calermo', 9284335366, 'Block Lot, Barangay, District, DC', 'Spouse'),
(37, 'Karina Fernandez', 9286328463, 'Block Lot, Barangay, District, DC', 'Mother'),
(38, 'Maya Quezon', 9226245347, 'Block Lot, Barangay, District, DC', 'Spouse'),
(39, 'Matilda Toron', 9223613323, 'Block Lot, Barangay, District, DC', 'Mother'),
(40, 'Marie Dorgezo', 9277776632, 'Block Lot, Barangay, District, DC', 'Mother');

-- --------------------------------------------------------

--
-- Table structure for table `employee_profile`
--

CREATE TABLE `employee_profile` (
  `employee_id` int(11) NOT NULL,
  `profile_type` text NOT NULL,
  `profile_fullname` text NOT NULL,
  `profile_cnum` bigint(20) NOT NULL,
  `profile_fulladdress` text NOT NULL,
  `profile_bday` date NOT NULL,
  `profile_gender` text NOT NULL,
  `date_added` date NOT NULL,
  `last_updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_profile`
--

INSERT INTO `employee_profile` (`employee_id`, `profile_type`, `profile_fullname`, `profile_cnum`, `profile_fulladdress`, `profile_bday`, `profile_gender`, `date_added`, `last_updated`) VALUES
(1, 'Admin', 'John Admini', 9223786597, 'Room 213 Tower 1, Avida Towers, Roxas, DC', '1992-07-31', 'Male', '2023-09-24', '2023-12-06'),
(18, 'Admin', 'Jose Garcia', 9284553388, 'Colby Street B4 L2, Colby Subdv. Toril, DC', '1993-02-25', 'Male', '2023-09-24', '2023-12-05'),
(34, 'Regular', 'Diana de la Cruz', 9286739873, 'Block Lot, Barangay, District, DC', '2002-09-25', 'Female', '2023-11-15', '2023-12-06'),
(35, 'Regular', 'Juan Dagiling', 9226489932, 'Block Lot, Barangay, District, DC', '2004-03-26', 'Male', '2023-11-27', '2023-12-06'),
(36, 'Regular', 'Daryll Calermo', 9284355364, 'Block Lot, Barangay, District, DC', '1997-02-19', 'Male', '2023-11-27', '2023-12-06'),
(37, 'Regular', 'Guyver Fernandez', 9286478201, 'Block Lot, Barangay, District, DC', '2003-07-02', 'Male', '2023-11-27', '2023-12-06'),
(38, 'Regular', 'Alfredo Quezon', 9226748392, 'Block Lot, Barangay, District, DC', '1998-01-30', 'Male', '2023-11-27', '2023-12-07'),
(39, 'Regular', 'Camilla Toron', 92283411641, 'Block Lot, Barangay, District, DC', '2000-06-21', 'Female', '2023-12-03', '2023-12-06'),
(40, 'Regular', 'Matil Dorgezo', 9274846632, 'Block Lot, Barangay, District, DC', '2003-11-04', 'Male', '2023-12-07', '2023-12-07');

-- --------------------------------------------------------

--
-- Table structure for table `goods_invoice`
--

CREATE TABLE `goods_invoice` (
  `goods_invoice_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_no` text NOT NULL,
  `invoice_date` date NOT NULL,
  `is_archived` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goods_invoice`
--

INSERT INTO `goods_invoice` (`goods_invoice_id`, `order_id`, `invoice_no`, `invoice_date`, `is_archived`) VALUES
(37, 4, 'Test Supply', '2024-04-30', 0),
(38, 6, 'Pork 1', '2024-04-21', 0),
(39, 7, 'Pork 2', '2024-04-21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `goods_stockout_forms`
--

CREATE TABLE `goods_stockout_forms` (
  `goods_stockout_form_id` int(11) NOT NULL,
  `stock_reporter` text NOT NULL,
  `stock_desc` text NOT NULL,
  `stock_date` date NOT NULL,
  `is_archived` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goods_stockout_forms`
--

INSERT INTO `goods_stockout_forms` (`goods_stockout_form_id`, `stock_reporter`, `stock_desc`, `stock_date`, `is_archived`) VALUES
(13, 'Jose Garcia', 'workplace accident damages', '2023-11-10', 0),
(14, 'Jose Garcia', 'daily stock out', '2023-11-27', 0),
(15, 'Jose Garcia', 'daily stock out', '2023-11-28', 0),
(18, 'Kristian Ragonton', 'Empty Out Inventory', '2024-04-18', 1),
(19, 'Kristian Ragonton', 'Empty Out Inventory', '2024-04-21', 0),
(21, 'Kristian Ragonton', 'Pork Test', '2024-04-21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `goods_stock_in`
--

CREATE TABLE `goods_stock_in` (
  `goods_stockin_id` int(11) NOT NULL,
  `goods_invoice_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `stock_quantity` float NOT NULL,
  `active_quantity` float NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `is_archived` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goods_stock_in`
--

INSERT INTO `goods_stock_in` (`goods_stockin_id`, `goods_invoice_id`, `item_id`, `stock_quantity`, `active_quantity`, `expiry_date`, `is_archived`) VALUES
(69, 37, 2, 9, 9, '0000-00-00', 0),
(70, 37, 4, 9, 9, '0000-00-00', 0),
(71, 37, 5, 9, 9, '0000-00-00', 0),
(72, 38, 1, 10, 5, '2024-04-30', 0),
(73, 39, 1, 5, 0, '2024-04-29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `goods_stock_out`
--

CREATE TABLE `goods_stock_out` (
  `goods_stockout_id` int(11) NOT NULL,
  `goods_stockout_form_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `stock_quantity` float NOT NULL,
  `is_archived` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goods_stock_out`
--

INSERT INTO `goods_stock_out` (`goods_stockout_id`, `goods_stockout_form_id`, `item_id`, `stock_quantity`, `is_archived`) VALUES
(24, 13, 2, 1, 0),
(25, 14, 1, 100, 0),
(26, 14, 3, 90, 0),
(27, 14, 7, 90, 0),
(28, 14, 9, 121, 0),
(29, 14, 10, 8, 0),
(30, 14, 14, 12, 0),
(31, 15, 1, 117, 0),
(32, 15, 3, 105, 0),
(33, 15, 7, 107, 0),
(34, 15, 9, 124, 0),
(35, 15, 10, 8, 0),
(36, 15, 14, 22, 0),
(43, 18, 1, 503, 1),
(44, 18, 3, 498, 1),
(45, 18, 7, 510, 1),
(46, 18, 9, 508, 1),
(47, 18, 10, 44, 1),
(48, 18, 14, 31, 1),
(49, 18, 15, 80, 1),
(50, 18, 2, 35, 1),
(51, 18, 4, 35, 1),
(52, 18, 5, 35, 1),
(53, 18, 11, 20, 1),
(54, 18, 13, 79, 1),
(55, 19, 1, 16, 0),
(56, 19, 2, 18, 0),
(57, 19, 4, 18, 0),
(58, 19, 5, 18, 0),
(59, 21, 1, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `item_id` int(11) NOT NULL,
  `item_name` text NOT NULL,
  `item_type` text NOT NULL,
  `item_quantity` float NOT NULL,
  `item_unit` text NOT NULL,
  `item_restock` float NOT NULL,
  `is_archived` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`item_id`, `item_name`, `item_type`, `item_quantity`, `item_unit`, `item_restock`, `is_archived`) VALUES
(1, 'Pork', 'Goods', 5, 'kilograms', 100, 0),
(2, 'Plates', 'Supply', 0, 'piece', 34, 0),
(3, 'Beef', 'Goods', 0, 'kilograms', 100, 0),
(4, 'Spoon', 'Supply', 0, 'piece', 34, 0),
(5, 'Fork', 'Supply', 0, 'piece', 34, 0),
(7, 'Lean Pork', 'Goods', 0, 'kilograms', 100, 0),
(9, 'Chicken', 'Goods', 0, 'kilograms', 100, 0),
(10, 'Cabbage', 'Goods', 0, 'pieces', 20, 0),
(11, 'Soy Sauce', 'Supply', 0, 'pack', 20, 0),
(13, 'Metal Chopsticks', 'Supply', 0, 'pair', 44, 0),
(14, 'Lettuce', 'Goods', 0, 'piece', 30, 0),
(15, 'Mini Potato', 'Goods', 0, 'grams', 50, 0),
(16, 'Rice', 'Goods', 0, 'grams', 500, 0),
(17, 'Potato', 'Goods', 0, 'grams', 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `item_archive`
--

CREATE TABLE `item_archive` (
  `archive_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `date_archived` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_archive`
--

INSERT INTO `item_archive` (`archive_id`, `item_id`, `date_archived`) VALUES
(2, 4, '2023-10-15'),
(3, 2, '2023-10-17'),
(4, 3, '2023-10-17'),
(5, 7, '2023-12-05'),
(7, 9, '2023-12-05'),
(9, 10, '2023-12-05'),
(10, 15, '2023-12-07'),
(11, 17, '2023-12-07');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `item_total_price` float NOT NULL,
  `is_archived` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `item_id`, `quantity`, `item_total_price`, `is_archived`) VALUES
(3, 2, 3, 3, 333, 0),
(7, 2, 7, 33, 3333, 0),
(8, 2, 14, 333, 33333, 0),
(12, 3, 1, 5, 555, 0),
(13, 4, 2, 9, 99, 0),
(14, 4, 4, 9, 99, 0),
(15, 4, 5, 9, 99.99, 0),
(16, 5, 1, 8, 88, 0),
(17, 6, 1, 10, 100, 0),
(18, 7, 1, 5, 55, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_slip`
--

CREATE TABLE `order_slip` (
  `order_id` int(11) NOT NULL,
  `order_no` text NOT NULL,
  `order_desc` text NOT NULL,
  `order_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `total_price` float NOT NULL,
  `is_archived` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_slip`
--

INSERT INTO `order_slip` (`order_id`, `order_no`, `order_desc`, `order_date`, `delivery_date`, `total_price`, `is_archived`) VALUES
(2, 'Test id 3', 'Test 3', '2024-04-03', '2024-04-23', 333, 1),
(3, 'delivered order test', 'Tester ', '2024-04-01', '2024-04-15', 555, 1),
(4, 'Test Supply', 'Test Supply Supplier', '2024-04-21', '2024-04-30', 396.99, 1),
(5, 'Pork', 'Pork Supplier', '2024-04-21', '2024-04-21', 96, 1),
(6, 'Pork 1', 'Pork Supplier', '2024-04-21', '2024-04-21', 110, 1),
(7, 'Pork 2', 'Pork Supplier', '2024-04-21', '2024-04-21', 60, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `payroll_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `payroll_date` date NOT NULL,
  `payroll_start_date` date NOT NULL,
  `payroll_end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`payroll_id`, `employee_id`, `payroll_date`, `payroll_start_date`, `payroll_end_date`) VALUES
(11, 1, '2023-11-30', '2023-11-01', '2023-11-30'),
(12, 18, '2023-11-30', '2023-11-01', '2023-11-30'),
(13, 34, '2023-11-30', '2023-11-01', '2023-11-30'),
(14, 35, '2023-11-30', '2023-11-01', '2023-11-30'),
(15, 36, '2023-11-30', '2023-11-01', '2023-11-30'),
(16, 37, '2023-11-30', '2023-11-01', '2023-11-30'),
(17, 38, '2023-11-30', '2023-11-01', '2023-11-30'),
(18, 39, '2023-12-31', '2023-11-01', '2023-12-31'),
(19, 34, '2023-12-06', '2023-12-01', '2023-12-31'),
(20, 35, '2023-12-06', '2023-12-01', '2023-12-31'),
(21, 36, '2023-12-06', '2023-12-01', '2023-12-31'),
(22, 37, '2023-12-06', '2023-12-01', '2023-12-31'),
(23, 38, '2023-12-06', '2023-12-01', '2023-12-31'),
(24, 39, '2023-12-06', '2023-12-01', '2023-12-31'),
(31, 1, '2024-03-31', '2024-03-01', '2024-03-31'),
(32, 18, '2024-03-31', '2024-03-01', '2024-03-31'),
(33, 34, '2024-03-31', '2024-03-01', '2024-03-31'),
(34, 35, '2024-03-31', '2024-03-01', '2024-03-31'),
(35, 36, '2024-03-31', '2024-03-01', '2024-03-31'),
(36, 37, '2024-03-31', '2024-03-01', '2024-03-31'),
(37, 38, '2024-03-31', '2024-03-01', '2024-03-31'),
(38, 39, '2024-03-31', '2024-03-01', '2024-03-31'),
(43, 36, '2024-02-01', '2024-02-29', '2024-02-28'),
(44, 37, '2024-02-01', '2024-02-29', '2024-02-28'),
(45, 38, '2024-02-01', '2024-02-29', '2024-02-28'),
(46, 39, '2024-02-01', '2024-02-29', '2024-02-28'),
(47, 1, '2024-02-28', '2024-02-01', '2024-02-29'),
(48, 18, '2024-02-28', '2024-02-01', '2024-02-29'),
(49, 34, '2024-02-28', '2024-02-01', '2024-02-29'),
(50, 35, '2024-02-28', '2024-02-01', '2024-02-29'),
(51, 36, '2024-02-28', '2024-02-01', '2024-02-29'),
(52, 37, '2024-02-28', '2024-02-01', '2024-02-29'),
(53, 38, '2024-02-28', '2024-02-01', '2024-02-29'),
(54, 39, '2024-02-28', '2024-02-01', '2024-02-29');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_deduction_rates`
--

CREATE TABLE `payroll_deduction_rates` (
  `deduc_rate_id` int(11) NOT NULL,
  `deduc_type` text NOT NULL,
  `deduc_rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll_deduction_rates`
--

INSERT INTO `payroll_deduction_rates` (`deduc_rate_id`, `deduc_type`, `deduc_rate`) VALUES
(1, 'Philhealth', 0.04),
(2, 'SSS', 0.13),
(3, 'PAGIBIG', 0.02),
(4, 'tax', 0.0116);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_details`
--

CREATE TABLE `payroll_details` (
  `payroll_id` int(11) NOT NULL,
  `payroll_salary` float NOT NULL,
  `regular_hours` int(11) NOT NULL,
  `payroll_bonus` float NOT NULL,
  `overtime_hours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll_details`
--

INSERT INTO `payroll_details` (`payroll_id`, `payroll_salary`, `regular_hours`, `payroll_bonus`, `overtime_hours`) VALUES
(11, 967652, 14, 0, 0),
(12, 223000, 16, 0, 0),
(13, 16445, 12, 0, 0),
(14, 15565, 10, 0, 0),
(15, 16400, 14, 0, 0),
(16, 14300, 8, 0, 0),
(17, 15450, 14, 0, 0),
(18, 14555, 12, 0, 0),
(19, 16445, 12, 0, 0),
(20, 15565, 10, 0, 0),
(21, 16400, 14, 0, 0),
(22, 14300, 8, 0, 0),
(23, 15450, 14, 0, 0),
(24, 14555, 12, 0, 0),
(31, 967652, 14, 0, 0),
(32, 223000, 16, 0, 0),
(33, 16445, 12, 0, 0),
(34, 15565, 10, 0, 0),
(35, 16400, 14, 0, 0),
(36, 14300, 8, 0, 0),
(37, 15450, 14, 0, 0),
(38, 14555, 12, 0, 0),
(43, 16400, 14, 0, 0),
(44, 14300, 8, 0, 0),
(45, 15450, 14, 0, 0),
(46, 14555, 12, 0, 0),
(47, 967652, 14, 0, 0),
(48, 223000, 16, 0, 0),
(49, 16445, 12, 0, 0),
(50, 15565, 10, 0, 0),
(51, 16400, 14, 0, 0),
(52, 14300, 8, 0, 0),
(53, 15450, 14, 0, 0),
(54, 14555, 12, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_reports`
--

CREATE TABLE `payroll_reports` (
  `payroll_report_id` int(11) NOT NULL,
  `payroll_report_title` text NOT NULL,
  `report_total_amount` float NOT NULL,
  `report_floor_date` date NOT NULL,
  `report_ceiling_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll_reports`
--

INSERT INTO `payroll_reports` (`payroll_report_id`, `payroll_report_title`, `report_total_amount`, `report_floor_date`, `report_ceiling_date`) VALUES
(2, 'November 2023 Payrolls Report', 1158170, '2023-11-01', '2023-11-30'),
(3, 'December 2023 Payrolls Report', 74023.7, '2023-12-01', '2023-12-31'),
(6, 'March Payrolls', 1024640, '2024-03-01', '2024-03-31'),
(7, 'February Payrolls', 1073110, '2024-02-01', '2024-02-29');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_report_salaries`
--

CREATE TABLE `payroll_report_salaries` (
  `report_details_id` int(11) NOT NULL,
  `payroll_report_id` int(11) NOT NULL,
  `payroll_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll_report_salaries`
--

INSERT INTO `payroll_report_salaries` (`report_details_id`, `payroll_report_id`, `payroll_id`) VALUES
(24, 3, 19),
(25, 3, 20),
(26, 3, 21),
(27, 3, 22),
(28, 3, 23),
(29, 3, 24),
(30, 2, 11),
(31, 2, 12),
(32, 2, 13),
(33, 2, 14),
(34, 2, 15),
(35, 2, 16),
(36, 2, 17),
(58, 6, 31),
(59, 6, 32),
(60, 6, 33),
(61, 6, 34),
(62, 6, 35),
(63, 6, 36),
(64, 6, 37),
(65, 6, 38),
(66, 7, 43),
(67, 7, 44),
(68, 7, 45),
(69, 7, 46),
(70, 7, 47),
(71, 7, 48),
(72, 7, 49),
(73, 7, 50),
(74, 7, 51),
(75, 7, 52),
(76, 7, 53),
(77, 7, 54);

-- --------------------------------------------------------

--
-- Table structure for table `salary_details`
--

CREATE TABLE `salary_details` (
  `employee_id` int(11) NOT NULL,
  `salary` float NOT NULL,
  `regular_hours` int(11) NOT NULL,
  `severance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salary_details`
--

INSERT INTO `salary_details` (`employee_id`, `salary`, `regular_hours`, `severance`) VALUES
(1, 967652, 14, 967652),
(18, 223000, 16, 2230000),
(34, 16445, 12, 164450),
(35, 15565, 10, 155650),
(36, 16400, 14, 164000),
(37, 14300, 8, 143000),
(38, 15450, 14, 154500),
(39, 14555, 12, 145550),
(40, 20000, 16, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `sales_customers`
--

CREATE TABLE `sales_customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_type` text NOT NULL,
  `customer_loyalty` int(11) NOT NULL,
  `is_archived` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_customers`
--

INSERT INTO `sales_customers` (`customer_id`, `customer_name`, `customer_type`, `customer_loyalty`, `is_archived`) VALUES
(1, 'Fredrico R. Rodrigue', 'Not Regular', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_customer_loyalty_upgrade`
--

CREATE TABLE `sales_customer_loyalty_upgrade` (
  `loyalty_id` int(11) NOT NULL,
  `threshold` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_customer_loyalty_upgrade`
--

INSERT INTO `sales_customer_loyalty_upgrade` (`loyalty_id`, `threshold`) VALUES
(1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `sales_receipts`
--

CREATE TABLE `sales_receipts` (
  `receipt_id` int(11) NOT NULL,
  `receipt_no` text NOT NULL,
  `customer_id` int(11) NOT NULL,
  `receipt_pax` int(11) NOT NULL,
  `total_amount` float NOT NULL,
  `discount_type` text NOT NULL,
  `receipt_date` date NOT NULL,
  `senior_pax` int(11) NOT NULL,
  `price_per_pax` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_receipts`
--

INSERT INTO `sales_receipts` (`receipt_id`, `receipt_no`, `customer_id`, `receipt_pax`, `total_amount`, `discount_type`, `receipt_date`, `senior_pax`, `price_per_pax`) VALUES
(13, 'CRR_Snr1_PPP100_Px4', 1, 4, 382.4, 'Senior', '2023-12-02', 1, 100),
(14, 'CRR_ND_PPP200_Px3', 1, 3, 600, 'Not Discounted', '2023-12-02', 0, 200),
(21, 'DRR_S6nr2_PPP1000_Px', 1, 6, 28240, 'Senior', '2023-12-05', 2, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `sales_reports`
--

CREATE TABLE `sales_reports` (
  `sales_report_id` int(11) NOT NULL,
  `sales_report_title` text NOT NULL,
  `sales_report_total` float NOT NULL,
  `sales_report_date` date NOT NULL,
  `is_archived` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_reports`
--

INSERT INTO `sales_reports` (`sales_report_id`, `sales_report_title`, `sales_report_total`, `sales_report_date`, `is_archived`) VALUES
(12, 'Dec 5 2023 Sales', 7907.2, '2023-12-05', 0),
(15, 'Dec 5 2023 Sales', 982.4, '2023-12-02', 0),
(16, 'Dec 5 2023 Sales', 7907.2, '2023-12-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_report_receipts`
--

CREATE TABLE `sales_report_receipts` (
  `rep_rec_id` int(11) NOT NULL,
  `sales_report_id` int(11) NOT NULL,
  `receipt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_report_receipts`
--

INSERT INTO `sales_report_receipts` (`rep_rec_id`, `sales_report_id`, `receipt_id`) VALUES
(26, 12, 21),
(32, 15, 13),
(33, 15, 14),
(36, 16, 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_account`
--
ALTER TABLE `admin_account`
  ADD PRIMARY KEY (`acc_id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`payroll_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `employee_archive`
--
ALTER TABLE `employee_archive`
  ADD PRIMARY KEY (`archive_id`),
  ADD KEY `FOREIGN_employee_archive_id` (`employee_id`);

--
-- Indexes for table `employee_emergency_contact`
--
ALTER TABLE `employee_emergency_contact`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `employee_profile`
--
ALTER TABLE `employee_profile`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `FOREIGN_employee_id` (`employee_id`) USING BTREE;

--
-- Indexes for table `goods_invoice`
--
ALTER TABLE `goods_invoice`
  ADD PRIMARY KEY (`goods_invoice_id`),
  ADD KEY `FOREIGN_invoice_order_id` (`order_id`);

--
-- Indexes for table `goods_stockout_forms`
--
ALTER TABLE `goods_stockout_forms`
  ADD PRIMARY KEY (`goods_stockout_form_id`);

--
-- Indexes for table `goods_stock_in`
--
ALTER TABLE `goods_stock_in`
  ADD PRIMARY KEY (`goods_stockin_id`),
  ADD KEY `FOREIGN_itemid_goods_stockin` (`item_id`),
  ADD KEY `FOREIGN_invoiceid_goods` (`goods_invoice_id`);

--
-- Indexes for table `goods_stock_out`
--
ALTER TABLE `goods_stock_out`
  ADD PRIMARY KEY (`goods_stockout_id`),
  ADD KEY `FOREIGN_stockoutform_id_goods` (`goods_stockout_form_id`),
  ADD KEY `FOREIGN_item_id_goodsstockout` (`item_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `item_archive`
--
ALTER TABLE `item_archive`
  ADD PRIMARY KEY (`archive_id`),
  ADD KEY `FOREIGN_KEY_item_id` (`item_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `FOREIGN_order_item_order_slip_id` (`order_id`),
  ADD KEY `FOREIGN_item_order_item_item_id` (`item_id`);

--
-- Indexes for table `order_slip`
--
ALTER TABLE `order_slip`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`payroll_id`),
  ADD KEY `FOREIGN_employee_id_payroll` (`employee_id`);

--
-- Indexes for table `payroll_deduction_rates`
--
ALTER TABLE `payroll_deduction_rates`
  ADD PRIMARY KEY (`deduc_rate_id`);

--
-- Indexes for table `payroll_details`
--
ALTER TABLE `payroll_details`
  ADD PRIMARY KEY (`payroll_id`);

--
-- Indexes for table `payroll_reports`
--
ALTER TABLE `payroll_reports`
  ADD PRIMARY KEY (`payroll_report_id`);

--
-- Indexes for table `payroll_report_salaries`
--
ALTER TABLE `payroll_report_salaries`
  ADD PRIMARY KEY (`report_details_id`),
  ADD KEY `FOREIGN_payroll_report_rep_id` (`payroll_report_id`),
  ADD KEY `FOREIGN_payroll_report_payroll_id` (`payroll_id`);

--
-- Indexes for table `salary_details`
--
ALTER TABLE `salary_details`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `sales_customers`
--
ALTER TABLE `sales_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `sales_customer_loyalty_upgrade`
--
ALTER TABLE `sales_customer_loyalty_upgrade`
  ADD PRIMARY KEY (`loyalty_id`);

--
-- Indexes for table `sales_receipts`
--
ALTER TABLE `sales_receipts`
  ADD PRIMARY KEY (`receipt_id`);

--
-- Indexes for table `sales_reports`
--
ALTER TABLE `sales_reports`
  ADD PRIMARY KEY (`sales_report_id`);

--
-- Indexes for table `sales_report_receipts`
--
ALTER TABLE `sales_report_receipts`
  ADD PRIMARY KEY (`rep_rec_id`),
  ADD KEY `FOREIGN_receipt_id_reprec` (`receipt_id`),
  ADD KEY `FOREIGN_report_id_reprec` (`sales_report_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_account`
--
ALTER TABLE `admin_account`
  MODIFY `acc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `employee_archive`
--
ALTER TABLE `employee_archive`
  MODIFY `archive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `goods_invoice`
--
ALTER TABLE `goods_invoice`
  MODIFY `goods_invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `goods_stockout_forms`
--
ALTER TABLE `goods_stockout_forms`
  MODIFY `goods_stockout_form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `goods_stock_in`
--
ALTER TABLE `goods_stock_in`
  MODIFY `goods_stockin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `goods_stock_out`
--
ALTER TABLE `goods_stock_out`
  MODIFY `goods_stockout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `item_archive`
--
ALTER TABLE `item_archive`
  MODIFY `archive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_slip`
--
ALTER TABLE `order_slip`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `payroll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `payroll_deduction_rates`
--
ALTER TABLE `payroll_deduction_rates`
  MODIFY `deduc_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payroll_reports`
--
ALTER TABLE `payroll_reports`
  MODIFY `payroll_report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payroll_report_salaries`
--
ALTER TABLE `payroll_report_salaries`
  MODIFY `report_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `sales_customers`
--
ALTER TABLE `sales_customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sales_customer_loyalty_upgrade`
--
ALTER TABLE `sales_customer_loyalty_upgrade`
  MODIFY `loyalty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_receipts`
--
ALTER TABLE `sales_receipts`
  MODIFY `receipt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sales_reports`
--
ALTER TABLE `sales_reports`
  MODIFY `sales_report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sales_report_receipts`
--
ALTER TABLE `sales_report_receipts`
  MODIFY `rep_rec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deductions`
--
ALTER TABLE `deductions`
  ADD CONSTRAINT `FOREIGN_payroll_id_deduc` FOREIGN KEY (`payroll_id`) REFERENCES `payroll` (`payroll_id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_archive`
--
ALTER TABLE `employee_archive`
  ADD CONSTRAINT `FOREIGN_employee_archive_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `employee_emergency_contact`
--
ALTER TABLE `employee_emergency_contact`
  ADD CONSTRAINT `FOREIGN_employee_id_emergencycontact` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `employee_profile`
--
ALTER TABLE `employee_profile`
  ADD CONSTRAINT `FOREIGN_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `goods_invoice`
--
ALTER TABLE `goods_invoice`
  ADD CONSTRAINT `FOREIGN_invoice_order_id` FOREIGN KEY (`order_id`) REFERENCES `order_slip` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `goods_stock_in`
--
ALTER TABLE `goods_stock_in`
  ADD CONSTRAINT `FOREIGN_invoiceid_goods` FOREIGN KEY (`goods_invoice_id`) REFERENCES `goods_invoice` (`goods_invoice_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FOREIGN_itemid_goods_stockin` FOREIGN KEY (`item_id`) REFERENCES `inventory` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `goods_stock_out`
--
ALTER TABLE `goods_stock_out`
  ADD CONSTRAINT `FOREIGN_item_id_goodsstockout` FOREIGN KEY (`item_id`) REFERENCES `inventory` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FOREIGN_stockoutform_id_goods` FOREIGN KEY (`goods_stockout_form_id`) REFERENCES `goods_stockout_forms` (`goods_stockout_form_id`) ON DELETE CASCADE;

--
-- Constraints for table `item_archive`
--
ALTER TABLE `item_archive`
  ADD CONSTRAINT `FOREIGN_KEY_item_id` FOREIGN KEY (`item_id`) REFERENCES `inventory` (`item_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `FOREIGN_item_order_item_item_id` FOREIGN KEY (`item_id`) REFERENCES `inventory` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FOREIGN_order_item_order_slip_id` FOREIGN KEY (`order_id`) REFERENCES `order_slip` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `payroll`
--
ALTER TABLE `payroll`
  ADD CONSTRAINT `FOREIGN_employee_id_payroll` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `payroll_details`
--
ALTER TABLE `payroll_details`
  ADD CONSTRAINT `FOREIGN_payroll_id_details` FOREIGN KEY (`payroll_id`) REFERENCES `payroll` (`payroll_id`) ON DELETE CASCADE;

--
-- Constraints for table `payroll_report_salaries`
--
ALTER TABLE `payroll_report_salaries`
  ADD CONSTRAINT `FOREIGN_payroll_report_payroll_id` FOREIGN KEY (`payroll_id`) REFERENCES `payroll` (`payroll_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FOREIGN_payroll_report_rep_id` FOREIGN KEY (`payroll_report_id`) REFERENCES `payroll_reports` (`payroll_report_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `salary_details`
--
ALTER TABLE `salary_details`
  ADD CONSTRAINT `FOREIGN_employee_id_salary` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `sales_report_receipts`
--
ALTER TABLE `sales_report_receipts`
  ADD CONSTRAINT `FOREIGN_receipt_id_reprec` FOREIGN KEY (`receipt_id`) REFERENCES `sales_receipts` (`receipt_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FOREIGN_report_id_reprec` FOREIGN KEY (`sales_report_id`) REFERENCES `sales_reports` (`sales_report_id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
