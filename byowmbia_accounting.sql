-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 30, 2022 at 09:34 AM
-- Server version: 10.3.35-MariaDB-log-cll-lve
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `byowmbia_accounting`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `pk_id` int(11) NOT NULL,
  `nature_of_account` varchar(255) DEFAULT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `main_account_id` varchar(255) DEFAULT NULL,
  `sub_account` varchar(255) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `balance` int(155) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `increase` int(255) DEFAULT NULL,
  `decrease` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`pk_id`, `nature_of_account`, `account_type`, `account_name`, `main_account_id`, `sub_account`, `description`, `balance`, `date`, `increase`, `decrease`) VALUES
(126, 'Assets', 'Cash', 'Cash in Hand', NULL, NULL, 'cash acc test', 0, '0000-00-00', 0, 0),
(127, 'Revenue', 'Sales Retail', 'Sales', NULL, NULL, NULL, 0, '0000-00-00', 0, 0),
(128, 'Revenue', 'Account Receivable', 'Account Receivable', NULL, NULL, 'AR acc test', 0, '0000-00-00', 0, 0),
(129, 'Purchase', 'Account Payable', 'Account Payable', NULL, NULL, 'AP acc test', 0, '0000-00-00', 0, 0),
(141, 'Purchase', 'Purchase', 'Purchases', NULL, NULL, NULL, 0, '0000-00-00', 0, 0),
(191, 'Assets', 'Bank', 'HBL', NULL, NULL, NULL, 0, '0000-00-00', 0, 0),
(192, 'Assets', 'Bank', 'Meezan', NULL, NULL, NULL, 0, '0000-00-00', 0, 0),
(193, 'Capital', 'Owners Equity', 'owner equity', NULL, NULL, NULL, 0, '0000-00-00', 0, 0),
(194, 'Capital', 'Owners Equity', NULL, '193', 'Owners Investments', NULL, 0, '04/30/2022', 0, 0),
(195, 'Capital', 'Owners Equity', NULL, '193', 'Owners Drawing', NULL, 0, '04/30/2022', 0, 0),
(196, 'Assets', 'current assets', 'Inventory', NULL, NULL, NULL, 0, '04/30/2022', 0, 0),
(199, 'Assets', 'Bank', 'Meezan Bank', NULL, NULL, NULL, 0, '05/12/2022', 0, 0),
(200, 'Assets', 'Cash', 'Pump Cash', NULL, NULL, NULL, 0, '05/17/2022', 0, 0),
(201, 'Expense', 'Business Exp.', 'Carriage', NULL, NULL, NULL, 0, '05/17/2022', 0, 0),
(202, 'Capital', 'Owners Equity', NULL, '193', 'Mustafa Investment', NULL, 0, '05/24/2022', 0, 0),
(203, 'Capital', 'Owners Equity', 'Ibrahim equity', NULL, NULL, NULL, 0, '05/25/2022', 0, 0),
(204, 'Capital', 'Owners Equity', NULL, '203', 'Ibrahims investment', NULL, 0, '05/25/2022', 0, 0),
(206, 'Capital', 'Owners Equity', 'Saleem Investment', NULL, NULL, NULL, 0, '06/01/2022', 0, 0),
(207, 'Capital', 'Owners Equity', NULL, '206', 'Saleem Capital', NULL, 0, '06/01/2022', 0, 0),
(208, 'Capital', 'Owners Equity', NULL, '206', 'Saleem Drawings', NULL, 0, '06/01/2022', 0, 0),
(209, 'Expense', 'Utilities', 'Utilities', NULL, NULL, NULL, 0, '06/24/2022', 0, 0),
(210, 'Expense', 'Business Exp.', NULL, '201', 'Business Exp', NULL, 0, '06/25/2022', 0, 0),
(211, 'Assets', 'Cash', 'PUMP CASH (NEW)', NULL, NULL, NULL, 0, '07/03/2022', 0, 0),
(212, 'Assets', 'Bank', 'Allied Bank', NULL, NULL, NULL, 0, '07/04/2022', 0, 0),
(213, 'Assets', 'Cash', 'MUSTAFA CASH', NULL, NULL, NULL, 0, '07/04/2022', 0, 0),
(214, 'Assets', 'Cash', 'Office Cash 1', NULL, NULL, NULL, 0, '07/16/2022', 0, 0),
(215, 'Assets', 'Cash', 'PST CASH', NULL, NULL, NULL, 0, '07/20/2022', 0, 0),
(216, 'Assets', 'Cash', 'DISTRIBUTION CASH', NULL, NULL, NULL, 0, '07/20/2022', 0, 0),
(217, 'Capital', 'Owners Equity', 'M-S PET', NULL, NULL, NULL, 0, '07/20/2022', 0, 0),
(218, 'Capital', 'Owners Equity', NULL, '217', 'MS (INVESTMENT)', NULL, 0, '07/20/2022', 0, 0),
(219, 'Capital', 'Owners Equity', NULL, '217', 'MS (DRAWINGS)', NULL, 0, '07/20/2022', 0, 0),
(220, 'Assets', 'Bank', 'MS (HBL)', NULL, NULL, NULL, 0, '07/20/2022', 0, 0),
(221, 'Assets', 'Bank', 'MS (MEEZAN)', NULL, NULL, NULL, 0, '07/20/2022', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `account_nature`
--

CREATE TABLE `account_nature` (
  `pk_id` int(111) NOT NULL,
  `nature_of_account` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_nature`
--

INSERT INTO `account_nature` (`pk_id`, `nature_of_account`) VALUES
(5, 'Expense'),
(6, 'Revenue'),
(7, 'Liabilities'),
(8, 'Purchase'),
(10, 'Capital'),
(11, 'Assets');

-- --------------------------------------------------------

--
-- Table structure for table `account_payable`
--

CREATE TABLE `account_payable` (
  `pk_id` int(11) NOT NULL,
  `supplier_name` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `amount_payed` int(11) DEFAULT NULL,
  `paying_method` varchar(255) DEFAULT NULL,
  `paying_account` varchar(255) DEFAULT NULL,
  `acount_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `account_receivable`
--

CREATE TABLE `account_receivable` (
  `pk_id` int(11) NOT NULL,
  `customer_name` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `amount_received` int(11) DEFAULT NULL,
  `receiving_method` varchar(255) DEFAULT NULL,
  `receiving_account` varchar(255) DEFAULT NULL,
  `acount_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `account_type`
--

CREATE TABLE `account_type` (
  `pk_id` int(11) NOT NULL,
  `nature_of_account` varchar(255) DEFAULT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_type`
--

INSERT INTO `account_type` (`pk_id`, `nature_of_account`, `account_type`, `created_at`) VALUES
(19, 'Purchase', 'Account Payable', '2021-08-31 07:29:34'),
(2, 'Fixed Asset', 'Land', '2021-08-31 07:22:45'),
(3, 'Fixed Asset', 'Vehicles', '2021-08-31 07:23:45'),
(4, 'Fixed Asset', 'Buildings', '2021-08-31 07:23:57'),
(5, 'Fixed Asset', 'Machinery', '2021-08-31 07:24:08'),
(6, 'Current Asset', 'Inventorys', '2021-08-31 07:24:38'),
(7, 'Expense', 'Cost of Labour', '2021-08-31 07:24:57'),
(8, 'Expense', 'Dues and Subscription', '2021-08-31 07:25:10'),
(9, 'Expense', 'Equipments Rent', '2021-08-31 07:25:22'),
(10, 'Expense', 'Utilities', '2021-08-31 07:25:33'),
(11, 'Revenue', 'Sales Retail', '2021-08-31 07:25:55'),
(12, 'Revenue', 'Sales Wholesale', '2021-08-31 07:26:08'),
(13, 'Revenue', 'Other Income', '2021-08-31 07:26:31'),
(27, 'Assets', 'Inventory', '2022-04-30 07:06:59'),
(15, 'Assets', 'Bank', '2021-08-31 07:27:06'),
(16, 'Cash and Cash Equilants', 'Savings', '2021-08-31 07:27:19'),
(17, 'Liabilities', 'Current Liabilities', '2021-08-31 07:27:58'),
(18, 'Capital', 'Owners Equity', '2021-08-31 07:28:14'),
(20, 'Revenue', 'Account Receivable', '2021-08-31 07:29:55'),
(21, 'Expense', 'Taxation', '2021-09-02 11:29:31'),
(22, 'Purchase', 'Purchase', '2021-09-07 11:57:42'),
(23, 'Assets', 'Cash', '2022-04-17 09:25:36'),
(24, 'Assets', 'current assets', '2022-04-30 07:03:29'),
(25, 'Assets', 'fixed assets', '2022-04-30 07:03:57'),
(26, 'Assets', 'prepaid expense', '2022-04-30 07:04:17'),
(28, 'Liabilities', 'Long term Liabilities', '2022-05-07 09:19:51'),
(29, 'Expense', 'Payroll expenses', '2022-05-07 09:57:46'),
(30, 'Expense', 'Other selling expenses', '2022-05-07 09:58:31'),
(31, 'Expense', 'Meals and entertainment', '2022-05-07 09:58:53'),
(32, 'Expense', 'Legal and professional fees', '2022-05-07 09:59:10'),
(33, 'Expense', 'Business Exp.', '2022-05-17 17:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `pk_id` int(11) NOT NULL,
  `fname` varchar(155) NOT NULL,
  `lname` varchar(155) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Machine_Management` int(11) DEFAULT NULL,
  `Machine_Management_edit` varchar(11) DEFAULT NULL,
  `Machine_Management_delete` varchar(12) DEFAULT NULL,
  `Admin_Management` int(11) DEFAULT NULL,
  `Expense_Management` int(11) DEFAULT NULL,
  `Expense_Management_edit` varchar(10) DEFAULT NULL,
  `Expense_Management_delete` varchar(12) DEFAULT NULL,
  `Customer_Management` int(11) DEFAULT NULL,
  `Customer_Management_edit` varchar(11) DEFAULT NULL,
  `Customer_Management_delete` varchar(12) DEFAULT NULL,
  `Sales_Management` int(11) DEFAULT NULL,
  `Sales_Management_edit` varchar(10) DEFAULT NULL,
  `Sales_Management_delete` varchar(12) DEFAULT NULL,
  `Supplier_Management` int(11) DEFAULT NULL,
  `Supplier_Management_edit` varchar(10) DEFAULT NULL,
  `Supplier_Management_delete` varchar(12) DEFAULT NULL,
  `Purchase_Management` int(11) DEFAULT NULL,
  `Purchase_Management_edit` varchar(11) DEFAULT NULL,
  `Purchase_Management_delete` varchar(12) DEFAULT NULL,
  `Category_Management` int(11) DEFAULT NULL,
  `Category_Management_edit` varchar(11) DEFAULT NULL,
  `Category_Management_delete` varchar(12) DEFAULT NULL,
  `Report` int(11) DEFAULT NULL,
  `Report_edit` varchar(11) DEFAULT NULL,
  `Report_delete` varchar(12) DEFAULT NULL,
  `Item_Management` int(11) DEFAULT NULL,
  `Item_Management_edit` varchar(11) DEFAULT NULL,
  `Item_Management_delete` varchar(12) DEFAULT NULL,
  `Kachi_Parchi` int(11) DEFAULT NULL,
  `Kachi_Parchi_edit` varchar(255) DEFAULT NULL,
  `Kachi_Parchi_delete` varchar(12) DEFAULT NULL,
  `Pump_Management` int(11) DEFAULT NULL,
  `Pump_Management_edit` varchar(10) DEFAULT NULL,
  `Pump_Management_delete` varchar(12) DEFAULT NULL,
  `Accounts_Management` int(11) DEFAULT NULL,
  `Accounts_Management_edit` varchar(11) DEFAULT NULL,
  `Accounts_Management_delete` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`pk_id`, `fname`, `lname`, `username`, `password`, `Machine_Management`, `Machine_Management_edit`, `Machine_Management_delete`, `Admin_Management`, `Expense_Management`, `Expense_Management_edit`, `Expense_Management_delete`, `Customer_Management`, `Customer_Management_edit`, `Customer_Management_delete`, `Sales_Management`, `Sales_Management_edit`, `Sales_Management_delete`, `Supplier_Management`, `Supplier_Management_edit`, `Supplier_Management_delete`, `Purchase_Management`, `Purchase_Management_edit`, `Purchase_Management_delete`, `Category_Management`, `Category_Management_edit`, `Category_Management_delete`, `Report`, `Report_edit`, `Report_delete`, `Item_Management`, `Item_Management_edit`, `Item_Management_delete`, `Kachi_Parchi`, `Kachi_Parchi_edit`, `Kachi_Parchi_delete`, `Pump_Management`, `Pump_Management_edit`, `Pump_Management_delete`, `Accounts_Management`, `Accounts_Management_edit`, `Accounts_Management_delete`) VALUES
(1, 'MS', 'Patrolium', 'abdullahfarooqi26@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1, '1', '1', 1, 1, '1', '1', 1, '1', '1', 1, '1', '1', 1, '1', '1', 1, '1', '1', 1, '1', '1', 1, '1', '1', 1, '1', '1', 1, '1', '1', 1, '1', '1', 1, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `bank_deposit`
--

CREATE TABLE `bank_deposit` (
  `pk_id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `recive_from` varchar(255) DEFAULT NULL,
  `main_account` varchar(255) DEFAULT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `sub_account` varchar(500) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `total_invest` varchar(255) DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `pk_id` int(11) NOT NULL,
  `fname` varchar(23) DEFAULT NULL,
  `company_name` varchar(23) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `bussiness_type` varchar(90) DEFAULT NULL,
  `industry` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`pk_id`, `fname`, `company_name`, `phone`, `address`, `bussiness_type`, `industry`) VALUES
(1, NULL, 'Petrolum', '312321', 'asd', 'any', NULL),
(2, NULL, 'Classic', '123', 'asdf', 'abc', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `pk_id` int(11) NOT NULL,
  `main_customer` text DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `cnic` varchar(155) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `billing_address` text DEFAULT NULL,
  `ntn` text DEFAULT NULL,
  `strn` text DEFAULT NULL,
  `opening_balance` int(255) DEFAULT NULL,
  `current_balance` int(255) DEFAULT NULL,
  `total_sale` varchar(233) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`pk_id`, `main_customer`, `customer_name`, `cnic`, `phone`, `billing_address`, `ntn`, `strn`, `opening_balance`, `current_balance`, `total_sale`, `payment_type`, `date`) VALUES
(14, NULL, 'abdullah', '23423423', '012323', '23 ali town', NULL, NULL, 0, 0, '0', 'Received', '2022-07-23 12:07:18'),
(15, NULL, 'talib', '12345', '123321323', 'lahore', '123', '123', 0, 0, '0', 'Payment', '2022-07-30 13:12:13'),
(16, NULL, 'ibrahim', '123', '32112', 'qeq2', NULL, NULL, 0, 0, '0', 'Received', '2022-07-30 13:34:18'),
(17, NULL, 'mustafa', '657657865', NULL, 'lahore', NULL, NULL, 0, 0, '0', NULL, '2022-07-30 13:12:13'),
(18, NULL, 'EPCT (Sales Tax) (MUSTAFA)', NULL, NULL, 'AYESHA OFFICE GULBERG', NULL, NULL, 0, 0, '0', NULL, '2022-06-21 20:50:35'),
(19, NULL, 'EPCT (Furnance) (MUSTAFA)', NULL, NULL, 'AYESHA OFFICE GULBERG', NULL, NULL, 0, 0, '0', NULL, '2022-06-21 20:50:35'),
(20, NULL, 'Big Bird Foods Poultry (MUSTAFA)', NULL, NULL, 'New Garden Town', NULL, NULL, 0, 0, '0', NULL, '2022-06-21 20:50:35'),
(21, NULL, 'Big Bird Food Breeders (MUSTAFA)', NULL, NULL, 'New Garden Town', NULL, NULL, 0, 0, '0', NULL, '2022-06-21 20:50:35'),
(22, NULL, 'PUMP CUSTOMER (CASH)', NULL, NULL, '62-KM MULTAN ROAD', NULL, NULL, 0, 0, '0', NULL, '2022-06-21 20:50:35'),
(23, NULL, 'EPCT', NULL, NULL, 'GULBERG', NULL, NULL, 0, 0, '0', NULL, '2022-07-04 13:41:59'),
(24, NULL, 'BIG BIRD', NULL, NULL, 'GARDEN TOWN', NULL, NULL, 0, 0, '0', NULL, '2022-07-04 13:41:59'),
(25, NULL, 'SAPPHIRE', NULL, NULL, 'GULBERG', NULL, NULL, 0, 0, '0', NULL, '2022-07-04 13:41:59'),
(26, NULL, 'AGRICOZE', NULL, NULL, 'MURIDKE', NULL, NULL, 0, 0, '0', 'Received', '2022-07-04 13:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `detail_purchase`
--

CREATE TABLE `detail_purchase` (
  `pk_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `item_name` varchar(355) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `purchase_type` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_sale`
--

CREATE TABLE `detail_sale` (
  `pk_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `sku` varchar(155) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `tax` varchar(111) DEFAULT NULL,
  `tax_amount` varchar(111) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_tax_purchase`
--

CREATE TABLE `detail_tax_purchase` (
  `pk_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `rate` int(255) DEFAULT NULL,
  `tax` int(255) DEFAULT NULL,
  `tax_amount` int(255) DEFAULT NULL,
  `amount` int(255) DEFAULT NULL,
  `purchase_type` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_tax_sale`
--

CREATE TABLE `detail_tax_sale` (
  `pk_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `tax_amount` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `pk_id` int(11) NOT NULL,
  `employe_name` varchar(255) DEFAULT NULL,
  `cnic` varchar(256) DEFAULT NULL,
  `phone` varchar(111) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ntn` varchar(233) DEFAULT NULL,
  `strn` varchar(234) DEFAULT NULL,
  `opening_balance` varchar(234) DEFAULT NULL,
  `current_balance` varchar(234) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `pk_id` int(11) NOT NULL,
  `payment_account` varchar(255) DEFAULT NULL,
  `payee` varchar(255) DEFAULT NULL,
  `main_account` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `pk_id` int(11) NOT NULL,
  `sku` varchar(155) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `sub_item` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `uom` varchar(155) DEFAULT NULL,
  `stock` int(155) DEFAULT NULL,
  `opening_balance` int(155) DEFAULT NULL,
  `balance` varchar(122) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`pk_id`, `sku`, `item`, `sub_item`, `name`, `uom`, `stock`, `opening_balance`, `balance`, `description`) VALUES
(8, 'PE2-FU1-PE1', 'PETROLEUM PRODUCTS', 'FUEL', 'PETROL', 'LTR', 1250, 65000, '0', NULL),
(9, 'PE2-FU1-DI2', 'PETROLEUM PRODUCTS', 'FUEL', 'DIESEL', 'LTR', 250, 60000, '0', NULL),
(10, 'PE2-FU1-HS3', 'PETROLEUM PRODUCTS', 'FUEL', 'HSFO', 'TON', 0, 0, '0', NULL),
(11, 'PE2-GA2-LP1', 'PETROLEUM PRODUCTS', 'GAS', 'LPG', 'KG', 0, 0, '0', NULL),
(12, 'PE2-FU1-Ka4', 'PETROLEUM PRODUCTS', 'FUEL', 'Karosen oil', 'LTR', 304, 280105, '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `machine`
--

CREATE TABLE `machine` (
  `pk_id` int(11) NOT NULL,
  `pump_id` int(11) DEFAULT NULL,
  `tank_id` int(11) DEFAULT NULL,
  `machine_name` varchar(255) DEFAULT NULL,
  `closing_reading` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `current_dip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `main_category`
--

CREATE TABLE `main_category` (
  `SKU` int(11) NOT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `main_category` varchar(35) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_category`
--

INSERT INTO `main_category` (`SKU`, `item_id`, `main_category`, `created_at`) VALUES
(1, 'ne', 'new', '2021-11-02 22:16:44'),
(2, 'PE2', 'PETROLEUM PRODUCTS', '2022-06-01 10:16:49');

-- --------------------------------------------------------

--
-- Table structure for table `money_transfer`
--

CREATE TABLE `money_transfer` (
  `pk_id` int(11) NOT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `sender_account` varchar(255) DEFAULT NULL,
  `recive_account` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `transfer_amount` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `money_transfer`
--

INSERT INTO `money_transfer` (`pk_id`, `account_type`, `sender_account`, `recive_account`, `description`, `transfer_amount`, `balance`, `date`) VALUES
(7, 'Cash', '126', '191', NULL, '25000', NULL, '0000-00-00'),
(8, 'Cash', '126', '191', NULL, '25000', NULL, '0000-00-00'),
(9, 'Bank', '191', '192', NULL, '200000', NULL, '0000-00-00'),
(10, 'Bank', '191', '126', NULL, '100000', NULL, '0000-00-00'),
(11, 'Bank', '191', '199', NULL, '200000', NULL, '0000-00-00'),
(12, 'Bank', '192', '191', NULL, '40000', NULL, '0000-00-00'),
(13, 'Bank', '199', '126', NULL, '50000', NULL, '0000-00-00'),
(14, 'Bank', '191', '212', NULL, '20000', NULL, '0000-00-00'),
(15, 'Bank', '191', '213', NULL, '30000', NULL, '0000-00-00'),
(16, 'Bank', '191', '214', NULL, '100000', NULL, '0000-00-00'),
(17, 'Cash', '216', '191', NULL, '10000', NULL, '0000-00-00'),
(18, 'Cash', '126', '191', NULL, '9250', NULL, '0000-00-00'),
(19, 'Bank', '191', '192', NULL, '50000', NULL, '0000-00-00'),
(20, 'Bank', '191', '192', NULL, '25000', NULL, '0000-00-00'),
(21, 'Bank', '191', '192', NULL, '20000', NULL, '0000-00-00'),
(22, 'Bank', '191', '199', NULL, '50000', NULL, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `pk_id` int(11) NOT NULL,
  `fname` varchar(155) DEFAULT NULL,
  `lname` varchar(155) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `company` varchar(256) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `bank_deposit` varchar(256) DEFAULT NULL,
  `transfer_money` varchar(256) DEFAULT NULL,
  `Machine_Management_delete` varchar(12) DEFAULT NULL,
  `Admin_Management` int(11) DEFAULT NULL,
  `Expense_Management` int(11) DEFAULT NULL,
  `Expense_Management_edit` varchar(10) DEFAULT NULL,
  `Expense_Management_delete` varchar(12) DEFAULT NULL,
  `Customer_Management` int(11) DEFAULT NULL,
  `Customer_Management_edit` varchar(11) DEFAULT NULL,
  `Customer_Management_delete` varchar(12) DEFAULT NULL,
  `Sales_Management` int(11) DEFAULT NULL,
  `Sales_Management_edit` varchar(10) DEFAULT NULL,
  `Sales_Management_delete` varchar(12) DEFAULT NULL,
  `Supplier_Management` int(11) DEFAULT NULL,
  `Supplier_Management_edit` varchar(10) DEFAULT NULL,
  `Supplier_Management_delete` varchar(12) DEFAULT NULL,
  `Purchase_Management` int(11) DEFAULT NULL,
  `Purchase_Management_edit` varchar(11) DEFAULT NULL,
  `Purchase_Management_delete` varchar(12) DEFAULT NULL,
  `Category_Management` int(11) DEFAULT NULL,
  `Category_Management_edit` varchar(11) DEFAULT NULL,
  `Category_Management_delete` varchar(12) DEFAULT NULL,
  `Report` int(11) DEFAULT NULL,
  `Report_edit` varchar(11) DEFAULT NULL,
  `Report_delete` varchar(12) DEFAULT NULL,
  `Item_Management` int(11) DEFAULT NULL,
  `Item_Management_edit` varchar(11) DEFAULT NULL,
  `Item_Management_delete` varchar(12) DEFAULT NULL,
  `Kachi_Parchi` int(11) DEFAULT NULL,
  `Kachi_Parchi_edit` varchar(255) DEFAULT NULL,
  `Kachi_Parchi_delete` varchar(12) DEFAULT NULL,
  `Pump_Management` int(11) DEFAULT NULL,
  `Pump_Management_edit` varchar(10) DEFAULT NULL,
  `Pump_Management_delete` varchar(12) DEFAULT NULL,
  `Accounts_Management` int(11) DEFAULT NULL,
  `Accounts_Management_edit` varchar(11) DEFAULT NULL,
  `Accounts_Management_delete` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`pk_id`, `fname`, `lname`, `username`, `company`, `password`, `bank_deposit`, `transfer_money`, `Machine_Management_delete`, `Admin_Management`, `Expense_Management`, `Expense_Management_edit`, `Expense_Management_delete`, `Customer_Management`, `Customer_Management_edit`, `Customer_Management_delete`, `Sales_Management`, `Sales_Management_edit`, `Sales_Management_delete`, `Supplier_Management`, `Supplier_Management_edit`, `Supplier_Management_delete`, `Purchase_Management`, `Purchase_Management_edit`, `Purchase_Management_delete`, `Category_Management`, `Category_Management_edit`, `Category_Management_delete`, `Report`, `Report_edit`, `Report_delete`, `Item_Management`, `Item_Management_edit`, `Item_Management_delete`, `Kachi_Parchi`, `Kachi_Parchi_edit`, `Kachi_Parchi_delete`, `Pump_Management`, `Pump_Management_edit`, `Pump_Management_delete`, `Accounts_Management`, `Accounts_Management_edit`, `Accounts_Management_delete`) VALUES
(1, 'abd', 'far', 'abdullahfarooqi26@gmail.com', NULL, '827ccb0eea8a706c4c34a16891f84e7b', '1', '1', '1', 1, 1, '1', '1', 1, '1', '1', 1, '1', '1', 1, '1', '1', 1, '1', '1', 1, '1', '1', 1, '1', '1', 1, '1', '1', 1, '1', '1', 1, '1', '1', 1, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `pk_id` int(11) NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `main_category` varchar(255) DEFAULT NULL,
  `sub_category` varchar(255) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pump`
--

CREATE TABLE `pump` (
  `pk_id` int(11) NOT NULL,
  `pump_name` varchar(255) DEFAULT NULL,
  `pump_address` varchar(355) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `craeted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pump`
--

INSERT INTO `pump` (`pk_id`, `pump_name`, `pump_address`, `status`, `craeted_at`) VALUES
(1, 'M-S PETROLEUM', '62-KM MULTAN ROAD, KHAN KAY MORE, KASUR, LAHORE', 0, '2022-06-01 10:33:37');

-- --------------------------------------------------------

--
-- Table structure for table `pump_detail_purchase`
--

CREATE TABLE `pump_detail_purchase` (
  `pk_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `tank_id` int(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `item_name` varchar(355) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `rate` int(255) DEFAULT NULL,
  `amount` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pump_detail_purchase_tax`
--

CREATE TABLE `pump_detail_purchase_tax` (
  `pk_id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `tank_id` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `tax_amount` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pump_purchase`
--

CREATE TABLE `pump_purchase` (
  `pk_id` int(11) NOT NULL,
  `pump_id` int(11) DEFAULT NULL,
  `sti` varchar(255) DEFAULT NULL,
  `pump_purchase` varchar(255) NOT NULL,
  `supplier_name` varchar(155) DEFAULT NULL,
  `account_type` varchar(155) DEFAULT NULL,
  `purchase_type` varchar(155) DEFAULT NULL,
  `company_name` varchar(155) DEFAULT NULL,
  `vehicle_no` varchar(155) DEFAULT NULL,
  `total_amount` int(155) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `pk_id` int(11) NOT NULL,
  `bill_date` varchar(255) DEFAULT NULL,
  `sti` varchar(255) DEFAULT NULL,
  `purchase` varchar(255) DEFAULT NULL,
  `supplier_name` varchar(155) DEFAULT NULL,
  `account_type` varchar(155) DEFAULT NULL,
  `purchase_type` varchar(155) DEFAULT NULL,
  `company_name` varchar(155) DEFAULT NULL,
  `vehicle_no` varchar(155) DEFAULT NULL,
  `total_amount` varchar(155) DEFAULT NULL,
  `paid_amount` varchar(255) DEFAULT '0',
  `returned_amount` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_invoice`
--

CREATE TABLE `purchase_invoice` (
  `pk_id` int(11) NOT NULL,
  `purchase_id` int(12) NOT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `deposit_to` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `org_amount` varchar(255) DEFAULT NULL,
  `partial` varchar(255) DEFAULT NULL,
  `remain` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return`
--

CREATE TABLE `purchase_return` (
  `pk_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_returned_payment`
--

CREATE TABLE `purchase_returned_payment` (
  `pk_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `supplier_name` varchar(244) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(233) DEFAULT NULL,
  `due_date` varchar(12) DEFAULT NULL,
  `original_amount` varchar(12) DEFAULT NULL,
  `paid` varchar(21) DEFAULT NULL,
  `returned` varchar(12) DEFAULT NULL,
  `payment` varchar(12) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `returned_payment`
--

CREATE TABLE `returned_payment` (
  `pk_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `original_amount` varchar(255) DEFAULT NULL,
  `paid` varchar(255) DEFAULT NULL,
  `returned` varchar(255) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `pk_id` int(11) NOT NULL,
  `bill_date` varchar(255) DEFAULT NULL,
  `due_date` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `sti` varchar(255) DEFAULT NULL,
  `sale` varchar(255) DEFAULT NULL,
  `customer_name` varchar(155) DEFAULT NULL,
  `account_type` varchar(155) DEFAULT NULL,
  `sale_type` varchar(155) DEFAULT NULL,
  `company_name` varchar(155) DEFAULT NULL,
  `vehicle_no` varchar(155) DEFAULT NULL,
  `total_amount` int(155) DEFAULT NULL,
  `paid_amount` varchar(255) DEFAULT '0',
  `return_amount` varchar(34) DEFAULT NULL,
  `balance` varchar(23) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale_invoice`
--

CREATE TABLE `sale_invoice` (
  `pk_id` int(11) NOT NULL,
  `sale_id` int(12) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `deposit_to` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `org_amount` varchar(255) DEFAULT NULL,
  `partial` varchar(255) DEFAULT NULL,
  `remain` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sale_receipt`
--

CREATE TABLE `sale_receipt` (
  `pk_id` int(11) NOT NULL,
  `sale_id` int(12) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `ref_no` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sale_return`
--

CREATE TABLE `sale_return` (
  `pk_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `sku` varchar(255) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `rate` varchar(266) DEFAULT NULL,
  `amount` varchar(233) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `SKU` int(11) NOT NULL,
  `sub_item_id` varchar(255) DEFAULT NULL,
  `main_category` varchar(255) DEFAULT NULL,
  `sub_category` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`SKU`, `sub_item_id`, `main_category`, `sub_category`, `created_at`) VALUES
(1, 'ne-ne1', 'new', 'new 2', '2021-11-02 22:16:55'),
(2, 'PE2-FU1', 'PETROLEUM PRODUCTS', 'FUEL', '2022-06-01 10:17:52'),
(3, 'PE2-GA2', 'PETROLEUM PRODUCTS', 'GAS', '2022-07-03 09:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `pk_id` int(45) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `cnic` varchar(155) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `billing_address` varchar(355) DEFAULT NULL,
  `ntn` varchar(155) DEFAULT NULL,
  `strn` varchar(155) DEFAULT NULL,
  `opening_balance` int(255) DEFAULT NULL,
  `current_balance` int(255) DEFAULT NULL,
  `total_purchase` varchar(23) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`pk_id`, `supplier_name`, `cnic`, `phone`, `billing_address`, `ntn`, `strn`, `opening_balance`, `current_balance`, `total_purchase`, `payment_type`, `date`) VALUES
(7, 'sami', '213312', '123', 'adsdas', NULL, NULL, 0, 0, '0', 'Received', '2022-07-30 13:12:13'),
(8, 'fahad', '354343653443', '03064737502', NULL, NULL, NULL, 0, 0, '0', 'Received', '2022-07-30 13:34:18'),
(9, 'Khursheed Trucking Station (KTS) (MUSTAFA)', NULL, NULL, '17-KM Multan Road, Lahore', '1149154-0', '32-77-8761-138-13', 0, 0, '0', 'Received', '2022-07-23 12:02:57'),
(10, 'Jawad Anwar (MUSTAFA)', NULL, NULL, NULL, NULL, NULL, 0, 0, '0', 'Payment', '2022-07-23 12:02:57'),
(12, 'Saleem Sb. (INV.) (MUSTAFA)', NULL, NULL, NULL, NULL, NULL, 0, 0, '0', NULL, '2022-06-21 20:50:35'),
(13, 'BLX Fuel Cards (MUSTAFA)', NULL, NULL, NULL, NULL, NULL, 0, 0, '0', NULL, '2022-06-21 20:50:35'),
(14, 'Amjad PSO Jamber (MUSTAFA)', NULL, NULL, NULL, NULL, NULL, 0, 0, '0', NULL, '2022-06-21 20:50:35'),
(15, 'BLX SOLUTIONS (FUEL CARDS - PSO)', NULL, NULL, NULL, NULL, NULL, 0, 0, '0', 'Received', '2022-07-04 13:41:59'),
(16, 'KHURSHID TRUCKING STATION', NULL, NULL, NULL, NULL, NULL, 0, 0, '0', NULL, '2022-07-04 13:41:59'),
(17, 'AMJAB JUMBER', NULL, NULL, NULL, NULL, NULL, 0, 0, '0', 'Payment', '2022-07-04 13:41:59'),
(18, 'MY PETROLEUM', NULL, NULL, NULL, NULL, NULL, 0, 0, '0', NULL, '2022-07-04 13:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `tank`
--

CREATE TABLE `tank` (
  `pk_id` int(11) NOT NULL,
  `pump_id` int(11) DEFAULT NULL,
  `tank_name` varchar(255) DEFAULT NULL,
  `total_capacity` varchar(255) DEFAULT NULL,
  `total_dip` varchar(255) DEFAULT NULL,
  `opening_stock` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `opening_balance` varchar(255) DEFAULT NULL,
  `opening_dip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tank`
--

INSERT INTO `tank` (`pk_id`, `pump_id`, `tank_name`, `total_capacity`, `total_dip`, `opening_stock`, `uom`, `opening_balance`, `opening_dip`) VALUES
(1, 1, 'DIESEL', '25000', NULL, NULL, 'Litre', NULL, NULL),
(2, 1, 'PETROL', '25000', NULL, NULL, 'Litre', NULL, NULL),
(3, 1, 'STORAGE', '25000', NULL, NULL, 'Litre', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `account_nature`
--
ALTER TABLE `account_nature`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `account_payable`
--
ALTER TABLE `account_payable`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `account_receivable`
--
ALTER TABLE `account_receivable`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `account_type`
--
ALTER TABLE `account_type`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `bank_deposit`
--
ALTER TABLE `bank_deposit`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `detail_purchase`
--
ALTER TABLE `detail_purchase`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `detail_sale`
--
ALTER TABLE `detail_sale`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `detail_tax_purchase`
--
ALTER TABLE `detail_tax_purchase`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `detail_tax_sale`
--
ALTER TABLE `detail_tax_sale`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `main_category`
--
ALTER TABLE `main_category`
  ADD PRIMARY KEY (`SKU`);

--
-- Indexes for table `money_transfer`
--
ALTER TABLE `money_transfer`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `pump`
--
ALTER TABLE `pump`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `pump_detail_purchase`
--
ALTER TABLE `pump_detail_purchase`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `pump_detail_purchase_tax`
--
ALTER TABLE `pump_detail_purchase_tax`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `pump_purchase`
--
ALTER TABLE `pump_purchase`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `purchase_invoice`
--
ALTER TABLE `purchase_invoice`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `purchase_return`
--
ALTER TABLE `purchase_return`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `purchase_returned_payment`
--
ALTER TABLE `purchase_returned_payment`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `returned_payment`
--
ALTER TABLE `returned_payment`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `sale_invoice`
--
ALTER TABLE `sale_invoice`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `sale_receipt`
--
ALTER TABLE `sale_receipt`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `sale_return`
--
ALTER TABLE `sale_return`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`SKU`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `tank`
--
ALTER TABLE `tank`
  ADD PRIMARY KEY (`pk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `account_nature`
--
ALTER TABLE `account_nature`
  MODIFY `pk_id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `account_payable`
--
ALTER TABLE `account_payable`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_receivable`
--
ALTER TABLE `account_receivable`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_type`
--
ALTER TABLE `account_type`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_deposit`
--
ALTER TABLE `bank_deposit`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `detail_purchase`
--
ALTER TABLE `detail_purchase`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `detail_sale`
--
ALTER TABLE `detail_sale`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `detail_tax_purchase`
--
ALTER TABLE `detail_tax_purchase`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_tax_sale`
--
ALTER TABLE `detail_tax_sale`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employe`
--
ALTER TABLE `employe`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `machine`
--
ALTER TABLE `machine`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_category`
--
ALTER TABLE `main_category`
  MODIFY `SKU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `money_transfer`
--
ALTER TABLE `money_transfer`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pump`
--
ALTER TABLE `pump`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pump_detail_purchase`
--
ALTER TABLE `pump_detail_purchase`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pump_detail_purchase_tax`
--
ALTER TABLE `pump_detail_purchase_tax`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pump_purchase`
--
ALTER TABLE `pump_purchase`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `purchase_invoice`
--
ALTER TABLE `purchase_invoice`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `purchase_return`
--
ALTER TABLE `purchase_return`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_returned_payment`
--
ALTER TABLE `purchase_returned_payment`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `returned_payment`
--
ALTER TABLE `returned_payment`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `sale_invoice`
--
ALTER TABLE `sale_invoice`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `sale_receipt`
--
ALTER TABLE `sale_receipt`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_return`
--
ALTER TABLE `sale_return`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `SKU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `pk_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tank`
--
ALTER TABLE `tank`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
