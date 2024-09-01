-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2024 at 07:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prefex`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_accounts`
--

CREATE TABLE `tblacc_accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `key_name` varchar(255) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `parent_account` int(11) DEFAULT NULL,
  `account_type_id` int(11) NOT NULL,
  `account_detail_type_id` int(11) NOT NULL,
  `balance` decimal(15,2) DEFAULT NULL,
  `balance_as_of` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `default_account` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1,
  `access_token` text DEFAULT NULL,
  `account_id` varchar(255) DEFAULT NULL,
  `plaid_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>verified, 0=>not verified',
  `plaid_account_name` varchar(255) DEFAULT NULL,
  `bank_account` text DEFAULT NULL,
  `bank_routing` text DEFAULT NULL,
  `address_line_1` text DEFAULT NULL,
  `address_line_2` text DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblacc_accounts`
--

INSERT INTO `tblacc_accounts` (`id`, `name`, `key_name`, `number`, `parent_account`, `account_type_id`, `account_detail_type_id`, `balance`, `balance_as_of`, `description`, `default_account`, `active`, `access_token`, `account_id`, `plaid_status`, `plaid_account_name`, `bank_account`, `bank_routing`, `address_line_1`, `address_line_2`, `bank_name`) VALUES
(1, '', 'acc_accounts_receivable', NULL, NULL, 1, 1, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '', 'acc_accrued_holiday_payable', NULL, NULL, 9, 61, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '', 'acc_accrued_liabilities', NULL, NULL, 8, 44, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '', 'acc_accrued_non_current_liabilities', NULL, NULL, 9, 62, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '', 'acc_accumulated_depreciation_on_property_plant_and_equipment', NULL, NULL, 4, 22, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '', 'acc_allowance_for_bad_debts', NULL, NULL, 2, 2, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '', 'acc_amortisation_expense', NULL, NULL, 14, 106, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '', 'acc_assets_held_for_sale', NULL, NULL, 5, 32, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '', 'acc_available_for_sale_assets_short_term', NULL, NULL, 2, 3, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '', 'acc_bad_debts', NULL, NULL, 14, 108, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '', 'acc_bank_charges', NULL, NULL, 14, 109, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '', 'acc_billable_expense_income', NULL, NULL, 11, 89, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '', 'acc_cash_and_cash_equivalents', NULL, NULL, 3, 15, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '', 'acc_change_in_inventory_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '', 'acc_commissions_and_fees', NULL, NULL, 14, 111, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '', 'acc_cost_of_sales', NULL, NULL, 13, 104, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '', 'acc_deferred_tax_assets', NULL, NULL, 5, 33, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '', 'acc_direct_labour_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '', 'acc_discounts_given_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '', 'acc_dividend_disbursed', NULL, NULL, 10, 69, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '', 'acc_dividend_income', NULL, NULL, 12, 92, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '', 'acc_dividends_payable', NULL, NULL, 8, 48, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '', 'acc_dues_and_subscriptions', NULL, NULL, 14, 113, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '', 'acc_equipment_rental', NULL, NULL, 14, 114, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '', 'acc_equity_in_earnings_of_subsidiaries', NULL, NULL, 10, 70, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '', 'acc_freight_and_delivery_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '', 'acc_goodwill', NULL, NULL, 5, 34, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '', 'acc_income_tax_expense', NULL, NULL, 14, 116, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '', 'acc_income_tax_payable', NULL, NULL, 8, 50, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '', 'acc_insurance_disability', NULL, NULL, 14, 117, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '', 'acc_insurance_general', NULL, NULL, 14, 117, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '', 'acc_insurance_liability', NULL, NULL, 14, 117, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '', 'acc_intangibles', NULL, NULL, 5, 35, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '', 'acc_interest_expense', NULL, NULL, 14, 118, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '', 'acc_interest_income', NULL, NULL, 12, 93, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '', 'acc_inventory', NULL, NULL, 2, 5, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '', 'acc_inventory_asset', NULL, NULL, 2, 5, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '', 'acc_legal_and_professional_fees', NULL, NULL, 14, 119, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '', 'acc_liabilities_related_to_assets_held_for_sale', NULL, NULL, 9, 63, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '', 'acc_long_term_debt', NULL, NULL, 9, 64, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '', 'acc_long_term_investments', NULL, NULL, 5, 38, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '', 'acc_loss_on_discontinued_operations_net_of_tax', NULL, NULL, 14, 120, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '', 'acc_loss_on_disposal_of_assets', NULL, NULL, 12, 94, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '', 'acc_management_compensation', NULL, NULL, 14, 121, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '', 'acc_materials_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '', 'acc_meals_and_entertainment', NULL, NULL, 14, 122, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '', 'acc_office_expenses', NULL, NULL, 14, 123, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '', 'acc_other_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '', 'acc_other_comprehensive_income', NULL, NULL, 10, 73, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '', 'acc_other_general_and_administrative_expenses', NULL, NULL, 14, 123, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '', 'acc_other_operating_income_expenses', NULL, NULL, 12, 97, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '', 'acc_other_selling_expenses', NULL, NULL, 14, 125, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '', 'acc_other_type_of_expenses_advertising_expenses', NULL, NULL, 14, 105, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '', 'acc_overhead_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '', 'acc_payroll_clearing', NULL, NULL, 8, 55, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '', 'acc_payroll_expenses', NULL, NULL, 14, 126, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '', 'acc_payroll_liabilities', NULL, NULL, 8, 56, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '', 'acc_prepaid_expenses', NULL, NULL, 2, 11, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '', 'acc_property_plant_and_equipment', NULL, NULL, 4, 26, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '', 'acc_purchases', NULL, NULL, 14, 130, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '', 'acc_reconciliation_discrepancies', NULL, NULL, 15, 139, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '', 'acc_rent_or_lease_payments', NULL, NULL, 14, 127, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '', 'acc_repair_and_maintenance', NULL, NULL, 14, 128, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '', 'acc_retained_earnings', NULL, NULL, 10, 80, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '', 'acc_revenue_general', NULL, NULL, 11, 86, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '', 'acc_sales', NULL, NULL, 11, 89, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '', 'acc_sales_retail', NULL, NULL, 11, 87, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '', 'acc_sales_wholesale', NULL, NULL, 11, 88, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '', 'acc_sales_of_product_income', NULL, NULL, 11, 89, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '', 'acc_share_capital', NULL, NULL, 10, 81, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '', 'acc_shipping_and_delivery_expense', NULL, NULL, 14, 129, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '', 'acc_short_term_debit', NULL, NULL, 8, 54, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '', 'acc_stationery_and_printing', NULL, NULL, 14, 123, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(74, '', 'acc_subcontractors_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(75, '', 'acc_supplies', NULL, NULL, 14, 130, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '', 'acc_travel_expenses_general_and_admin_expenses', NULL, NULL, 14, 132, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(77, '', 'acc_travel_expenses_selling_expense', NULL, NULL, 14, 133, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(78, '', 'acc_unapplied_cash_payment_income', NULL, NULL, 11, 91, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '', 'acc_uncategorised_asset', NULL, NULL, 2, 10, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '', 'acc_uncategorised_expense', NULL, NULL, 14, 124, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(81, '', 'acc_uncategorised_income', NULL, NULL, 11, 89, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '', 'acc_undeposited_funds', NULL, NULL, 2, 13, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '', 'acc_unrealised_loss_on_securities_net_of_tax', NULL, NULL, 12, 99, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '', 'acc_utilities', NULL, NULL, 14, 135, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '', 'acc_wage_expenses', NULL, NULL, 14, 126, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '', 'acc_credit_card', NULL, NULL, 7, 43, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '', 'acc_accounts_payable', NULL, NULL, 6, 42, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '', 'acc_opening_balance_equity', NULL, NULL, 10, 71, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_account_history`
--

CREATE TABLE `tblacc_account_history` (
  `id` int(11) NOT NULL,
  `account` int(11) NOT NULL,
  `debit` decimal(15,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(15,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(45) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  `reconcile` int(11) NOT NULL DEFAULT 0,
  `split` int(11) NOT NULL DEFAULT 0,
  `item` int(11) DEFAULT NULL,
  `paid` int(11) NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `payslip_type` varchar(45) DEFAULT NULL,
  `vendor` int(11) DEFAULT NULL,
  `itemable_id` int(11) DEFAULT NULL,
  `cleared` int(11) NOT NULL DEFAULT 0,
  `sub_type` varchar(45) DEFAULT NULL,
  `bill_item` int(11) NOT NULL DEFAULT 0,
  `number` varchar(100) DEFAULT NULL,
  `issue` int(11) NOT NULL DEFAULT 0,
  `added_from_reconcile` int(11) NOT NULL DEFAULT 0,
  `bank_reconcile` int(11) NOT NULL DEFAULT 0,
  `currency_rate` decimal(15,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblacc_account_history`
--

INSERT INTO `tblacc_account_history` (`id`, `account`, `debit`, `credit`, `description`, `rel_id`, `rel_type`, `datecreated`, `addedfrom`, `customer`, `reconcile`, `split`, `item`, `paid`, `date`, `tax`, `payslip_type`, `vendor`, `itemable_id`, `cleared`, `sub_type`, `bill_item`, `number`, `issue`, `added_from_reconcile`, `bank_reconcile`, `currency_rate`) VALUES
(53, 13, 1000.00, 0.00, '', 2, 'payment', '2024-08-21 10:52:41', 1, 3, 0, 1, NULL, 0, '2024-08-21', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0.000000),
(54, 1, 0.00, 1000.00, '', 2, 'payment', '2024-08-21 10:52:41', 1, 3, 0, 13, NULL, 0, '2024-08-21', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0.000000),
(65, 13, 500.00, 0.00, '', 3, 'payment', '2024-08-21 12:22:40', 1, 3, 0, 1, NULL, 0, '2024-08-21', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0.000000),
(66, 1, 0.00, 500.00, '', 3, 'payment', '2024-08-21 12:22:40', 1, 3, 0, 13, NULL, 0, '2024-08-21', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0.000000),
(77, 1, 1000.00, 0.00, '', 2, 'invoice', '2024-08-26 20:02:28', 1, 3, 0, 66, 0, 0, '2024-08-21', 0, NULL, NULL, 17, 0, NULL, 0, NULL, 0, 0, 0, 0.000000),
(78, 66, 0.00, 1000.00, '', 2, 'invoice', '2024-08-26 20:02:28', 1, 3, 0, 1, 0, 0, '2024-08-21', 0, NULL, NULL, 17, 0, NULL, 0, NULL, 0, 0, 0, 0.000000),
(79, 1, 500.00, 0.00, '', 2, 'invoice', '2024-08-26 20:02:28', 1, 3, 0, 66, 0, 0, '2024-08-21', 0, NULL, NULL, 18, 0, NULL, 0, NULL, 0, 0, 0, 0.000000),
(80, 66, 0.00, 500.00, '', 2, 'invoice', '2024-08-26 20:02:28', 1, 3, 0, 1, 0, 0, '2024-08-21', 0, NULL, NULL, 18, 0, NULL, 0, NULL, 0, 0, 0, 0.000000),
(81, 1, 800.00, 0.00, '', 2, 'invoice', '2024-08-26 20:02:28', 1, 3, 0, 66, 0, 0, '2024-08-21', 0, NULL, NULL, 19, 0, NULL, 0, NULL, 0, 0, 0, 0.000000),
(82, 66, 0.00, 800.00, '', 2, 'invoice', '2024-08-26 20:02:28', 1, 3, 0, 1, 0, 0, '2024-08-21', 0, NULL, NULL, 19, 0, NULL, 0, NULL, 0, 0, 0, 0.000000),
(83, 1, 500.00, 0.00, '', 2, 'invoice', '2024-08-26 20:02:28', 1, 3, 0, 66, 0, 0, '2024-08-21', 0, NULL, NULL, 20, 0, NULL, 0, NULL, 0, 0, 0, 0.000000),
(84, 66, 0.00, 500.00, '', 2, 'invoice', '2024-08-26 20:02:28', 1, 3, 0, 1, 0, 0, '2024-08-21', 0, NULL, NULL, 20, 0, NULL, 0, NULL, 0, 0, 0, 0.000000),
(85, 19, 50.00, 0.00, '', 2, 'invoice', '2024-08-26 20:02:28', 1, 3, 0, 1, 0, 0, '2024-08-21', 0, NULL, NULL, 0, 0, NULL, 0, NULL, 0, 0, 0, 0.000000),
(86, 1, 0.00, 50.00, '', 2, 'invoice', '2024-08-26 20:02:28', 1, 3, 0, 19, 0, 0, '2024-08-21', 0, NULL, NULL, 0, 0, NULL, 0, NULL, 0, 0, 0, 0.000000);

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_account_type_details`
--

CREATE TABLE `tblacc_account_type_details` (
  `id` int(11) NOT NULL,
  `account_type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `statement_of_cash_flows` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_banking_rules`
--

CREATE TABLE `tblacc_banking_rules` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `transaction` varchar(45) DEFAULT NULL,
  `following` varchar(45) DEFAULT NULL,
  `then` varchar(45) DEFAULT NULL,
  `payment_account` int(11) DEFAULT NULL,
  `deposit_to` int(11) DEFAULT NULL,
  `auto_add` int(11) NOT NULL DEFAULT 0,
  `mapping_type` varchar(25) DEFAULT NULL,
  `account` int(11) DEFAULT NULL,
  `split_percentage` text DEFAULT NULL,
  `split_amount` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_banking_rule_details`
--

CREATE TABLE `tblacc_banking_rule_details` (
  `id` int(11) NOT NULL,
  `rule_id` int(11) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `subtype` varchar(45) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `subtype_amount` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_bank_reconciles`
--

CREATE TABLE `tblacc_bank_reconciles` (
  `id` int(11) NOT NULL,
  `account` int(11) NOT NULL,
  `opening_balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `beginning_balance` decimal(15,2) NOT NULL,
  `ending_balance` decimal(15,2) NOT NULL,
  `ending_date` date NOT NULL,
  `finish` int(11) NOT NULL DEFAULT 0,
  `debits_for_period` decimal(15,2) NOT NULL,
  `credits_for_period` decimal(15,2) NOT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_bill_mappings`
--

CREATE TABLE `tblacc_bill_mappings` (
  `id` int(11) NOT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `account` int(11) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `qty` decimal(15,2) NOT NULL DEFAULT 0.00,
  `cost` decimal(15,2) NOT NULL DEFAULT 0.00,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_budgets`
--

CREATE TABLE `tblacc_budgets` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `data_source` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_budget_details`
--

CREATE TABLE `tblacc_budget_details` (
  `id` int(11) NOT NULL,
  `budget_id` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `account` int(11) DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_checks`
--

CREATE TABLE `tblacc_checks` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(25) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `bank_account` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `signed` int(11) NOT NULL DEFAULT 0,
  `include_company_name_address` int(11) NOT NULL DEFAULT 1,
  `include_routing_account_numbers` int(11) NOT NULL DEFAULT 1,
  `bill` int(11) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `issue` int(11) DEFAULT NULL,
  `include_check_number` int(11) NOT NULL DEFAULT 1,
  `include_bank_name` int(11) NOT NULL DEFAULT 1,
  `bank_name` varchar(255) DEFAULT NULL,
  `address_line_1` text DEFAULT NULL,
  `address_line_2` text DEFAULT NULL,
  `vendor_city` varchar(100) DEFAULT NULL,
  `vendor_zip` varchar(15) DEFAULT NULL,
  `vendor_state` varchar(50) DEFAULT NULL,
  `vendor_address` text DEFAULT NULL,
  `reason_for_void` text DEFAULT NULL,
  `bill_items` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_checks_printed`
--

CREATE TABLE `tblacc_checks_printed` (
  `id` int(11) NOT NULL,
  `check_id` int(11) DEFAULT NULL,
  `bank_account` int(11) DEFAULT NULL,
  `first_check_number` int(11) DEFAULT NULL,
  `printed_at` datetime DEFAULT NULL,
  `printed_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_check_details`
--

CREATE TABLE `tblacc_check_details` (
  `id` int(11) NOT NULL,
  `check_id` int(11) DEFAULT NULL,
  `bill` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_expense_category_mappings`
--

CREATE TABLE `tblacc_expense_category_mappings` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `payment_account` int(11) NOT NULL DEFAULT 0,
  `deposit_to` int(11) NOT NULL DEFAULT 0,
  `preferred_payment_method` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_expense_category_mapping_details`
--

CREATE TABLE `tblacc_expense_category_mapping_details` (
  `id` int(11) NOT NULL,
  `category_mapping_id` int(11) NOT NULL,
  `payment_mode_id` int(11) NOT NULL,
  `payment_account` int(11) NOT NULL DEFAULT 0,
  `deposit_to` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_income_statement_modifications`
--

CREATE TABLE `tblacc_income_statement_modifications` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `account` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `account_type` int(11) DEFAULT NULL,
  `options` text DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_item_automatics`
--

CREATE TABLE `tblacc_item_automatics` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `inventory_asset_account` int(11) NOT NULL DEFAULT 0,
  `income_account` int(11) NOT NULL DEFAULT 0,
  `expense_account` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_journal_entries`
--

CREATE TABLE `tblacc_journal_entries` (
  `id` int(11) NOT NULL,
  `number` varchar(45) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `journal_date` date DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `datecreated` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT 0,
  `recurring_type` varchar(10) DEFAULT NULL,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT 0,
  `cycles` int(11) NOT NULL DEFAULT 0,
  `total_cycles` int(11) NOT NULL DEFAULT 0,
  `is_recurring_from` int(11) DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_matched_transactions`
--

CREATE TABLE `tblacc_matched_transactions` (
  `id` int(11) NOT NULL,
  `account_history_id` int(11) DEFAULT NULL,
  `history_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(255) DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `company` int(11) DEFAULT NULL,
  `reconcile` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_payment_mode_mappings`
--

CREATE TABLE `tblacc_payment_mode_mappings` (
  `id` int(11) NOT NULL,
  `payment_mode_id` int(11) NOT NULL,
  `payment_account` int(11) NOT NULL DEFAULT 0,
  `deposit_to` int(11) NOT NULL DEFAULT 0,
  `expense_payment_account` int(11) NOT NULL DEFAULT 0,
  `expense_deposit_to` int(11) NOT NULL DEFAULT 0,
  `credit_note_refund_payment_account` int(11) NOT NULL DEFAULT 0,
  `credit_note_refund_deposit_to` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_pay_bills`
--

CREATE TABLE `tblacc_pay_bills` (
  `id` int(11) NOT NULL,
  `expense` int(11) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `account_debit` int(11) DEFAULT NULL,
  `account_credit` int(11) DEFAULT NULL,
  `bill` int(11) NOT NULL DEFAULT 0,
  `vendor` int(11) NOT NULL DEFAULT 0,
  `pay_number` int(11) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `bill_items` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_pay_bill_details`
--

CREATE TABLE `tblacc_pay_bill_details` (
  `id` int(11) NOT NULL,
  `pay_bill` int(11) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_pay_bill_item_paid`
--

CREATE TABLE `tblacc_pay_bill_item_paid` (
  `id` int(11) NOT NULL,
  `pay_bill_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `amount_paid` decimal(15,2) NOT NULL DEFAULT 0.00,
  `check_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_plaid_transaction_logs`
--

CREATE TABLE `tblacc_plaid_transaction_logs` (
  `id` int(11) NOT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `last_updated` date DEFAULT NULL,
  `transaction_count` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `addedFrom` int(11) DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_print_later`
--

CREATE TABLE `tblacc_print_later` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(45) DEFAULT NULL,
  `account` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_reconciles`
--

CREATE TABLE `tblacc_reconciles` (
  `id` int(11) NOT NULL,
  `account` int(11) NOT NULL,
  `beginning_balance` decimal(15,2) NOT NULL,
  `ending_balance` decimal(15,2) NOT NULL,
  `ending_date` date NOT NULL,
  `expense_date` date DEFAULT NULL,
  `service_charge` decimal(15,2) DEFAULT NULL,
  `expense_account` int(11) DEFAULT NULL,
  `income_date` date DEFAULT NULL,
  `interest_earned` decimal(15,2) DEFAULT NULL,
  `income_account` int(11) DEFAULT NULL,
  `finish` int(11) NOT NULL DEFAULT 0,
  `opening_balance` int(11) NOT NULL DEFAULT 0,
  `debits_for_period` decimal(15,2) DEFAULT NULL,
  `credits_for_period` decimal(15,2) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_tax_mappings`
--

CREATE TABLE `tblacc_tax_mappings` (
  `id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `payment_account` int(11) NOT NULL DEFAULT 0,
  `deposit_to` int(11) NOT NULL DEFAULT 0,
  `expense_payment_account` int(11) NOT NULL DEFAULT 0,
  `expense_deposit_to` int(11) NOT NULL DEFAULT 0,
  `purchase_payment_account` int(11) NOT NULL DEFAULT 0,
  `purchase_deposit_to` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_transaction_bankings`
--

CREATE TABLE `tblacc_transaction_bankings` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `withdrawals` decimal(15,2) NOT NULL DEFAULT 0.00,
  `deposits` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payee` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `transaction_id` varchar(150) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>posted, 2=>pending',
  `matched` int(11) NOT NULL DEFAULT 0,
  `reconcile` int(11) NOT NULL DEFAULT 0,
  `adjusted` int(11) NOT NULL DEFAULT 0,
  `is_imported` int(11) NOT NULL DEFAULT 0,
  `banking_rule` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblacc_transfers`
--

CREATE TABLE `tblacc_transfers` (
  `id` int(11) NOT NULL,
  `transfer_funds_from` int(11) NOT NULL,
  `transfer_funds_to` int(11) NOT NULL,
  `transfer_amount` decimal(15,2) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblactivity_log`
--

CREATE TABLE `tblactivity_log` (
  `id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `date` datetime NOT NULL,
  `staffid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblactivity_log`
--

INSERT INTO `tblactivity_log` (`id`, `description`, `date`, `staffid`) VALUES
(1, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 212.70.108.7]', '2024-08-20 10:43:35', 'Alraed Automobile'),
(2, 'Database Backup [database_backup_2024-08-20-10-50-15-v3-1-6.zip]', '2024-08-20 10:50:15', 'Alraed Automobile'),
(3, 'Non Existing User Tried to Login [Email: alraedautomobile@dotswebsolution.com, Is Staff Member: No, IP: 212.70.108.7]', '2024-08-20 11:25:36', 'Alraed Automobile'),
(4, 'Database Backup [database_backup_2024-08-20-14-18-54-v3-1-6.zip]', '2024-08-20 14:18:54', '[CRON]'),
(5, 'Non Existing User Tried to Login [Email: alraedautomobile@dotswebsolution.com, Is Staff Member: No, IP: 176.202.10.165]', '2024-08-20 14:21:18', NULL),
(6, 'Failed Login Attempt [Email: alraedautomobile@dotswebsolution.com, Is Staff Member: Yes, IP: 176.202.10.165]', '2024-08-20 14:21:51', NULL),
(7, 'Non Existing User Tried to Login [Email: alraedautomobile@dotswebsolution.com, Is Staff Member: No, IP: 176.202.10.165]', '2024-08-20 14:28:43', NULL),
(8, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 176.202.10.165]', '2024-08-20 14:29:13', 'Alraed Automobile'),
(9, 'Failed Login Attempt [Email: alraedautomobile@dotswebsolution.com, Is Staff Member: Yes, IP: 176.202.10.165]', '2024-08-20 15:40:31', NULL),
(10, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 176.202.10.165]', '2024-08-20 15:41:31', 'Alraed Automobile'),
(11, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 176.202.10.165]', '2024-08-20 15:41:50', 'Alraed Automobile'),
(12, 'New Lead Added [ID: 1]', '2024-08-20 16:16:14', 'Alraed Automobile'),
(13, 'New Invoice Item Added [ID:1, Computer]', '2024-08-20 16:17:47', 'Alraed Automobile'),
(14, 'New Invoice Item Added [ID:2, Laptop]', '2024-08-20 16:19:14', 'Alraed Automobile'),
(15, 'New Invoice Item Added [ID:3, Laptop]', '2024-08-20 16:19:36', 'Alraed Automobile'),
(16, 'New Proposal Created [ID: 1]', '2024-08-20 16:20:30', 'Alraed Automobile'),
(17, 'Proposal Status Changes [ProposalID:1, Status:Accepted,Client Action: 1]', '2024-08-20 16:21:53', 'Alraed Automobile'),
(18, 'Contact Created [ID: 1]', '2024-08-20 16:24:21', 'Alraed Automobile'),
(19, 'New Client Created [ID: 1, From Staff: 1]', '2024-08-20 16:24:21', 'Alraed Automobile'),
(20, 'Created Lead Client Profile [LeadID: 1, ClientID: 1]', '2024-08-20 16:24:21', 'Alraed Automobile'),
(21, 'Proposal Converted to Estimate [EstimateID: 1, ProposalID: 1]', '2024-08-20 16:25:11', 'Alraed Automobile'),
(22, 'Invoice Status Updated [Invoice Number: INV-000001, From: Unpaid To: Paid]', '2024-08-20 16:28:05', 'Alraed Automobile'),
(23, 'Payment Recorded [ID:1, Invoice Number: INV-000001, Total: $4,761.00]', '2024-08-20 16:28:05', 'Alraed Automobile'),
(24, 'Payment Updated [Number:1]', '2024-08-20 16:28:36', 'Alraed Automobile'),
(25, 'New Estimate Request Form Added [Mohammed ]', '2024-08-20 16:53:12', 'Alraed Automobile'),
(26, 'New Customer Group Created [ID:1, Name:Walk-in Customer]', '2024-08-20 16:56:13', 'Alraed Automobile'),
(27, 'New Customer Group Created [ID:2, Name:Insurance Customer]', '2024-08-20 16:56:42', 'Alraed Automobile'),
(28, 'New Currency Added [ID: QAR]', '2024-08-20 16:59:31', 'Alraed Automobile'),
(29, 'Currency Updated [QAR]', '2024-08-20 17:00:11', 'Alraed Automobile'),
(30, 'Currency Deleted [2]', '2024-08-20 17:00:21', 'Alraed Automobile'),
(31, 'Invoice Deleted [INV-000001]', '2024-08-20 17:01:54', 'Alraed Automobile'),
(32, 'Estimates Deleted [Number: EST-000001]', '2024-08-20 17:02:21', 'Alraed Automobile'),
(33, 'Proposal Deleted [ProposalID:1]', '2024-08-20 17:02:50', 'Alraed Automobile'),
(34, 'New Payment Mode Added [ID: 2, Name:Cash]', '2024-08-20 17:04:35', 'Alraed Automobile'),
(35, 'New Payment Mode Added [ID: 3, Name:Debit / Credit Card]', '2024-08-20 17:05:34', 'Alraed Automobile'),
(36, 'New Expense Category Added [ID: 1]', '2024-08-20 17:11:36', 'Alraed Automobile'),
(37, 'New Expense Category Added [ID: 2]', '2024-08-20 17:11:57', 'Alraed Automobile'),
(38, 'New Expense Category Added [ID: 3]', '2024-08-20 17:12:15', 'Alraed Automobile'),
(39, 'New Expense Category Added [ID: 4]', '2024-08-20 17:12:30', 'Alraed Automobile'),
(40, 'New Expense Category Added [ID: 5]', '2024-08-20 17:12:50', 'Alraed Automobile'),
(41, 'New Expense Category Added [ID: 6]', '2024-08-20 17:13:31', 'Alraed Automobile'),
(42, 'New Expense Category Added [ID: 7]', '2024-08-20 17:13:42', 'Alraed Automobile'),
(43, 'New Expense Category Added [ID: 8]', '2024-08-20 17:13:51', 'Alraed Automobile'),
(44, 'New Expense Category Added [ID: 9]', '2024-08-20 17:13:59', 'Alraed Automobile'),
(45, 'New Expense Category Added [ID: 10]', '2024-08-20 17:14:11', 'Alraed Automobile'),
(46, 'New Expense Category Added [ID: 11]', '2024-08-20 17:14:24', 'Alraed Automobile'),
(47, 'New Expense Category Added [ID: 12]', '2024-08-20 17:14:34', 'Alraed Automobile'),
(48, 'New Role Added [ID: 2.Manager]', '2024-08-20 17:29:05', 'Alraed Automobile'),
(49, 'Currency Deleted [1]', '2024-08-20 17:47:42', 'Alraed Automobile'),
(50, 'Client Deleted [ID: 1]', '2024-08-20 18:01:03', 'Alraed Automobile'),
(51, 'New Client Created [ID: 2, From Staff: 1]', '2024-08-20 18:02:45', 'Alraed Automobile'),
(52, 'New Client Created [ID: 3, From Staff: 1]', '2024-08-20 18:03:56', 'Alraed Automobile'),
(53, 'Customer Info Updated [ID: 2]', '2024-08-20 18:04:21', 'Alraed Automobile'),
(54, 'New Custom Field Added [Insurance Number]', '2024-08-20 19:00:27', 'Alraed Automobile'),
(55, 'New Custom Field Added [Vehicle Number]', '2024-08-20 19:01:05', 'Alraed Automobile'),
(56, 'New Custom Field Added [Vehicle Model / Year]', '2024-08-20 19:02:10', 'Alraed Automobile'),
(57, 'New Custom Field Added [Brand Name]', '2024-08-20 19:02:38', 'Alraed Automobile'),
(58, 'New Custom Field Added [Insurance Number]', '2024-08-20 19:03:01', 'Alraed Automobile'),
(59, 'New Custom Field Added [Vehicle Number]', '2024-08-20 19:03:19', 'Alraed Automobile'),
(60, 'New Custom Field Added [Vehicle Model / Year]', '2024-08-20 19:03:40', 'Alraed Automobile'),
(61, 'New Custom Field Added [Brand Name]', '2024-08-20 19:04:01', 'Alraed Automobile'),
(62, 'Lead Deleted [Deleted by: Alraed Automobile, ID: 1]', '2024-08-20 19:06:29', 'Alraed Automobile'),
(63, 'Custom Field Updated [Insurance Number]', '2024-08-20 19:33:28', 'Alraed Automobile'),
(64, 'Custom Field Updated [Vehicle Number]', '2024-08-20 19:34:16', 'Alraed Automobile'),
(65, 'Custom Field Updated [Vehicle Model / Year]', '2024-08-20 19:34:34', 'Alraed Automobile'),
(66, 'Custom Field Updated [Brand Name]', '2024-08-20 19:34:47', 'Alraed Automobile'),
(67, 'Custom Field Updated [Insurance Number]', '2024-08-20 19:35:05', 'Alraed Automobile'),
(68, 'Custom Field Updated [Vehicle Number]', '2024-08-20 19:35:21', 'Alraed Automobile'),
(69, 'Custom Field Updated [Vehicle Model / Year]', '2024-08-20 19:35:35', 'Alraed Automobile'),
(70, 'Custom Field Updated [Brand Name]', '2024-08-20 19:35:51', 'Alraed Automobile'),
(71, 'Non Existing User Tried to Login [Email: alraedautomobile@dotswebsolution.com, Is Staff Member: No, IP: 176.202.10.165]', '2024-08-21 10:26:21', NULL),
(72, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 176.202.10.165]', '2024-08-21 10:26:34', 'Alraed Automobile'),
(73, 'Payment Mode Updated [ID: 2, Name:Cash]', '2024-08-21 10:50:38', 'Alraed Automobile'),
(74, 'Payment Mode Updated [ID: 1, Name:Bank]', '2024-08-21 10:50:45', 'Alraed Automobile'),
(75, 'Payment Mode Updated [ID: 1, Name:Bank]', '2024-08-21 10:50:56', 'Alraed Automobile'),
(76, 'Payment Mode Updated [ID: 3, Name:Debit / Credit Card]', '2024-08-21 10:51:00', 'Alraed Automobile'),
(77, 'Invoice Status Updated [Invoice Number: INV-2024/000001, From: Unpaid To: Partially Paid]', '2024-08-21 10:52:41', 'Alraed Automobile'),
(78, 'Payment Recorded [ID:2, Invoice Number: INV-2024/000001, Total: 1,000.00QAR]', '2024-08-21 10:52:41', 'Alraed Automobile'),
(79, 'Payment Recorded [ID:3, Invoice Number: INV-2024/000001, Total: 500.00QAR]', '2024-08-21 12:22:40', 'Alraed Automobile'),
(80, 'Database Backup [database_backup_2024-08-22-08-00-06-v3-1-6.zip]', '2024-08-22 08:00:06', '[CRON]'),
(81, 'Database Backup [database_backup_2024-08-24-08-00-08-v3-1-6.zip]', '2024-08-24 08:00:08', '[CRON]'),
(82, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 176.202.10.165]', '2024-08-24 12:04:17', 'Alraed Automobile'),
(83, 'Non Existing User Tried to Login [Email: alraedautomobile@dotswebsolution.com, Is Staff Member: No, IP: 176.202.10.165]', '2024-08-24 12:14:12', NULL),
(84, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 176.202.10.165]', '2024-08-24 12:14:27', 'Alraed Automobile'),
(85, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 176.202.10.165]', '2024-08-24 14:10:27', 'Alraed Automobile'),
(86, 'Database Backup [database_backup_2024-08-26-08-00-08-v3-1-6.zip]', '2024-08-26 08:00:08', '[CRON]'),
(87, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 78.101.181.144]', '2024-08-26 19:01:13', 'Alraed Automobile'),
(88, 'Non Existing User Tried to Login [Email: alraedautomobile@dotswebsolution.com, Is Staff Member: No, IP: 78.101.181.144]', '2024-08-26 19:02:35', 'Alraed Automobile'),
(89, 'Staff Password Changed [1]', '2024-08-26 20:31:19', 'Alraed Automobile'),
(90, 'Non Existing User Tried to Login [Email: ravi.dhakad@intileo.com, Is Staff Member: No, IP: ::1]', '2024-08-27 15:53:31', NULL),
(91, 'Non Existing User Tried to Login [Email: alraedautomobile@dotswebsolution.com, Is Staff Member: No, IP: ::1]', '2024-08-27 15:53:53', NULL),
(92, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2024-08-27 15:55:09', 'Alraed Automobile'),
(93, 'Non Existing User Tried to Login [Email: alraedautomobile@dotswebsolution.com, Is Staff Member: No, IP: ::1]', '2024-08-27 15:55:30', 'Alraed Automobile'),
(94, 'Failed to send email template - SMTP connect() failed. https://github.com/PHPMailer/PHPMailer/wiki/Troubleshooting<br /><pre>\n\n</pre>', '2024-08-27 19:32:06', 'Alraed Automobile');

-- --------------------------------------------------------

--
-- Table structure for table `tblannouncements`
--

CREATE TABLE `tblannouncements` (
  `announcementid` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `message` mediumtext DEFAULT NULL,
  `showtousers` int(11) NOT NULL,
  `showtostaff` int(11) NOT NULL,
  `showname` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `userid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblclients`
--

CREATE TABLE `tblclients` (
  `userid` int(11) NOT NULL,
  `company` varchar(191) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT 0,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `leadid` int(11) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT 0,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT 0,
  `longitude` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `default_language` varchar(40) DEFAULT NULL,
  `default_currency` int(11) NOT NULL DEFAULT 0,
  `show_primary_contact` int(11) NOT NULL DEFAULT 0,
  `stripe_id` varchar(40) DEFAULT NULL,
  `registration_confirmed` int(11) NOT NULL DEFAULT 1,
  `addedfrom` int(11) NOT NULL DEFAULT 0,
  `balance` decimal(15,2) DEFAULT NULL,
  `balance_as_of` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblclients`
--

INSERT INTO `tblclients` (`userid`, `company`, `vat`, `phonenumber`, `country`, `city`, `zip`, `state`, `address`, `website`, `datecreated`, `active`, `leadid`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `longitude`, `latitude`, `default_language`, `default_currency`, `show_primary_contact`, `stripe_id`, `registration_confirmed`, `addedfrom`, `balance`, `balance_as_of`) VALUES
(2, 'Walk-in Customer', NULL, '', 179, 'Doha', '', '', '', '', '2024-08-20 18:02:45', 1, NULL, '', '', '', '', 0, '', '', '', '', 0, NULL, NULL, '', 3, 0, NULL, 1, 1, NULL, NULL),
(3, 'Insurance Customer', NULL, '', 179, 'Doha', '', '', '', '', '2024-08-20 18:03:55', 1, NULL, '', '', '', '', 0, '', '', '', '', 0, NULL, NULL, '', 3, 0, NULL, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblconsents`
--

CREATE TABLE `tblconsents` (
  `id` int(11) NOT NULL,
  `action` varchar(10) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(40) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `lead_id` int(11) NOT NULL DEFAULT 0,
  `description` mediumtext DEFAULT NULL,
  `opt_in_purpose_description` mediumtext DEFAULT NULL,
  `purpose_id` int(11) NOT NULL,
  `staff_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblconsent_purposes`
--

CREATE TABLE `tblconsent_purposes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontacts`
--

CREATE TABLE `tblcontacts` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `is_primary` int(11) NOT NULL DEFAULT 1,
  `firstname` varchar(191) NOT NULL,
  `lastname` varchar(191) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `email_verification_key` varchar(32) DEFAULT NULL,
  `email_verification_sent_at` datetime DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `profile_image` varchar(191) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `invoice_emails` tinyint(1) NOT NULL DEFAULT 1,
  `estimate_emails` tinyint(1) NOT NULL DEFAULT 1,
  `credit_note_emails` tinyint(1) NOT NULL DEFAULT 1,
  `contract_emails` tinyint(1) NOT NULL DEFAULT 1,
  `task_emails` tinyint(1) NOT NULL DEFAULT 1,
  `project_emails` tinyint(1) NOT NULL DEFAULT 1,
  `ticket_emails` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact_permissions`
--

CREATE TABLE `tblcontact_permissions` (
  `id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontracts`
--

CREATE TABLE `tblcontracts` (
  `id` int(11) NOT NULL,
  `content` longtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `client` int(11) NOT NULL,
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL,
  `contract_type` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `isexpirynotified` int(11) NOT NULL DEFAULT 0,
  `contract_value` decimal(15,2) DEFAULT NULL,
  `trash` tinyint(1) DEFAULT 0,
  `not_visible_to_client` tinyint(1) NOT NULL DEFAULT 0,
  `hash` varchar(32) DEFAULT NULL,
  `signed` tinyint(1) NOT NULL DEFAULT 0,
  `signature` varchar(40) DEFAULT NULL,
  `marked_as_signed` tinyint(1) NOT NULL DEFAULT 0,
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `short_link` varchar(100) DEFAULT NULL,
  `last_sent_at` datetime DEFAULT NULL,
  `contacts_sent_to` mediumtext DEFAULT NULL,
  `last_sign_reminder_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontracts_types`
--

CREATE TABLE `tblcontracts_types` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontract_comments`
--

CREATE TABLE `tblcontract_comments` (
  `id` int(11) NOT NULL,
  `content` longtext DEFAULT NULL,
  `contract_id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontract_renewals`
--

CREATE TABLE `tblcontract_renewals` (
  `id` int(11) NOT NULL,
  `contractid` int(11) NOT NULL,
  `old_start_date` date NOT NULL,
  `new_start_date` date NOT NULL,
  `old_end_date` date DEFAULT NULL,
  `new_end_date` date DEFAULT NULL,
  `old_value` decimal(15,2) DEFAULT NULL,
  `new_value` decimal(15,2) DEFAULT NULL,
  `date_renewed` datetime NOT NULL,
  `renewed_by` varchar(100) NOT NULL,
  `renewed_by_staff_id` int(11) NOT NULL DEFAULT 0,
  `is_on_old_expiry_notified` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcountries`
--

CREATE TABLE `tblcountries` (
  `country_id` int(11) NOT NULL,
  `iso2` char(2) DEFAULT NULL,
  `short_name` varchar(80) NOT NULL DEFAULT '',
  `long_name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` varchar(6) DEFAULT NULL,
  `un_member` varchar(12) DEFAULT NULL,
  `calling_code` varchar(8) DEFAULT NULL,
  `cctld` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblcountries`
--

INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES
(1, 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', '004', 'yes', '93', '.af'),
(2, 'AX', 'Aland Islands', '&Aring;land Islands', 'ALA', '248', 'no', '358', '.ax'),
(3, 'AL', 'Albania', 'Republic of Albania', 'ALB', '008', 'yes', '355', '.al'),
(4, 'DZ', 'Algeria', 'People\'s Democratic Republic of Algeria', 'DZA', '012', 'yes', '213', '.dz'),
(5, 'AS', 'American Samoa', 'American Samoa', 'ASM', '016', 'no', '1+684', '.as'),
(6, 'AD', 'Andorra', 'Principality of Andorra', 'AND', '020', 'yes', '376', '.ad'),
(7, 'AO', 'Angola', 'Republic of Angola', 'AGO', '024', 'yes', '244', '.ao'),
(8, 'AI', 'Anguilla', 'Anguilla', 'AIA', '660', 'no', '1+264', '.ai'),
(9, 'AQ', 'Antarctica', 'Antarctica', 'ATA', '010', 'no', '672', '.aq'),
(10, 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', '028', 'yes', '1+268', '.ag'),
(11, 'AR', 'Argentina', 'Argentine Republic', 'ARG', '032', 'yes', '54', '.ar'),
(12, 'AM', 'Armenia', 'Republic of Armenia', 'ARM', '051', 'yes', '374', '.am'),
(13, 'AW', 'Aruba', 'Aruba', 'ABW', '533', 'no', '297', '.aw'),
(14, 'AU', 'Australia', 'Commonwealth of Australia', 'AUS', '036', 'yes', '61', '.au'),
(15, 'AT', 'Austria', 'Republic of Austria', 'AUT', '040', 'yes', '43', '.at'),
(16, 'AZ', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', '031', 'yes', '994', '.az'),
(17, 'BS', 'Bahamas', 'Commonwealth of The Bahamas', 'BHS', '044', 'yes', '1+242', '.bs'),
(18, 'BH', 'Bahrain', 'Kingdom of Bahrain', 'BHR', '048', 'yes', '973', '.bh'),
(19, 'BD', 'Bangladesh', 'People\'s Republic of Bangladesh', 'BGD', '050', 'yes', '880', '.bd'),
(20, 'BB', 'Barbados', 'Barbados', 'BRB', '052', 'yes', '1+246', '.bb'),
(21, 'BY', 'Belarus', 'Republic of Belarus', 'BLR', '112', 'yes', '375', '.by'),
(22, 'BE', 'Belgium', 'Kingdom of Belgium', 'BEL', '056', 'yes', '32', '.be'),
(23, 'BZ', 'Belize', 'Belize', 'BLZ', '084', 'yes', '501', '.bz'),
(24, 'BJ', 'Benin', 'Republic of Benin', 'BEN', '204', 'yes', '229', '.bj'),
(25, 'BM', 'Bermuda', 'Bermuda Islands', 'BMU', '060', 'no', '1+441', '.bm'),
(26, 'BT', 'Bhutan', 'Kingdom of Bhutan', 'BTN', '064', 'yes', '975', '.bt'),
(27, 'BO', 'Bolivia', 'Plurinational State of Bolivia', 'BOL', '068', 'yes', '591', '.bo'),
(28, 'BQ', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'BES', '535', 'no', '599', '.bq'),
(29, 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', '070', 'yes', '387', '.ba'),
(30, 'BW', 'Botswana', 'Republic of Botswana', 'BWA', '072', 'yes', '267', '.bw'),
(31, 'BV', 'Bouvet Island', 'Bouvet Island', 'BVT', '074', 'no', 'NONE', '.bv'),
(32, 'BR', 'Brazil', 'Federative Republic of Brazil', 'BRA', '076', 'yes', '55', '.br'),
(33, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'IOT', '086', 'no', '246', '.io'),
(34, 'BN', 'Brunei', 'Brunei Darussalam', 'BRN', '096', 'yes', '673', '.bn'),
(35, 'BG', 'Bulgaria', 'Republic of Bulgaria', 'BGR', '100', 'yes', '359', '.bg'),
(36, 'BF', 'Burkina Faso', 'Burkina Faso', 'BFA', '854', 'yes', '226', '.bf'),
(37, 'BI', 'Burundi', 'Republic of Burundi', 'BDI', '108', 'yes', '257', '.bi'),
(38, 'KH', 'Cambodia', 'Kingdom of Cambodia', 'KHM', '116', 'yes', '855', '.kh'),
(39, 'CM', 'Cameroon', 'Republic of Cameroon', 'CMR', '120', 'yes', '237', '.cm'),
(40, 'CA', 'Canada', 'Canada', 'CAN', '124', 'yes', '1', '.ca'),
(41, 'CV', 'Cape Verde', 'Republic of Cape Verde', 'CPV', '132', 'yes', '238', '.cv'),
(42, 'KY', 'Cayman Islands', 'The Cayman Islands', 'CYM', '136', 'no', '1+345', '.ky'),
(43, 'CF', 'Central African Republic', 'Central African Republic', 'CAF', '140', 'yes', '236', '.cf'),
(44, 'TD', 'Chad', 'Republic of Chad', 'TCD', '148', 'yes', '235', '.td'),
(45, 'CL', 'Chile', 'Republic of Chile', 'CHL', '152', 'yes', '56', '.cl'),
(46, 'CN', 'China', 'People\'s Republic of China', 'CHN', '156', 'yes', '86', '.cn'),
(47, 'CX', 'Christmas Island', 'Christmas Island', 'CXR', '162', 'no', '61', '.cx'),
(48, 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', '166', 'no', '61', '.cc'),
(49, 'CO', 'Colombia', 'Republic of Colombia', 'COL', '170', 'yes', '57', '.co'),
(50, 'KM', 'Comoros', 'Union of the Comoros', 'COM', '174', 'yes', '269', '.km'),
(51, 'CG', 'Congo', 'Republic of the Congo', 'COG', '178', 'yes', '242', '.cg'),
(52, 'CK', 'Cook Islands', 'Cook Islands', 'COK', '184', 'some', '682', '.ck'),
(53, 'CR', 'Costa Rica', 'Republic of Costa Rica', 'CRI', '188', 'yes', '506', '.cr'),
(54, 'CI', 'Cote d\'ivoire (Ivory Coast)', 'Republic of C&ocirc;te D\'Ivoire (Ivory Coast)', 'CIV', '384', 'yes', '225', '.ci'),
(55, 'HR', 'Croatia', 'Republic of Croatia', 'HRV', '191', 'yes', '385', '.hr'),
(56, 'CU', 'Cuba', 'Republic of Cuba', 'CUB', '192', 'yes', '53', '.cu'),
(57, 'CW', 'Curacao', 'Cura&ccedil;ao', 'CUW', '531', 'no', '599', '.cw'),
(58, 'CY', 'Cyprus', 'Republic of Cyprus', 'CYP', '196', 'yes', '357', '.cy'),
(59, 'CZ', 'Czech Republic', 'Czech Republic', 'CZE', '203', 'yes', '420', '.cz'),
(60, 'CD', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'COD', '180', 'yes', '243', '.cd'),
(61, 'DK', 'Denmark', 'Kingdom of Denmark', 'DNK', '208', 'yes', '45', '.dk'),
(62, 'DJ', 'Djibouti', 'Republic of Djibouti', 'DJI', '262', 'yes', '253', '.dj'),
(63, 'DM', 'Dominica', 'Commonwealth of Dominica', 'DMA', '212', 'yes', '1+767', '.dm'),
(64, 'DO', 'Dominican Republic', 'Dominican Republic', 'DOM', '214', 'yes', '1+809, 8', '.do'),
(65, 'EC', 'Ecuador', 'Republic of Ecuador', 'ECU', '218', 'yes', '593', '.ec'),
(66, 'EG', 'Egypt', 'Arab Republic of Egypt', 'EGY', '818', 'yes', '20', '.eg'),
(67, 'SV', 'El Salvador', 'Republic of El Salvador', 'SLV', '222', 'yes', '503', '.sv'),
(68, 'GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', '226', 'yes', '240', '.gq'),
(69, 'ER', 'Eritrea', 'State of Eritrea', 'ERI', '232', 'yes', '291', '.er'),
(70, 'EE', 'Estonia', 'Republic of Estonia', 'EST', '233', 'yes', '372', '.ee'),
(71, 'ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', '231', 'yes', '251', '.et'),
(72, 'FK', 'Falkland Islands (Malvinas)', 'The Falkland Islands (Malvinas)', 'FLK', '238', 'no', '500', '.fk'),
(73, 'FO', 'Faroe Islands', 'The Faroe Islands', 'FRO', '234', 'no', '298', '.fo'),
(74, 'FJ', 'Fiji', 'Republic of Fiji', 'FJI', '242', 'yes', '679', '.fj'),
(75, 'FI', 'Finland', 'Republic of Finland', 'FIN', '246', 'yes', '358', '.fi'),
(76, 'FR', 'France', 'French Republic', 'FRA', '250', 'yes', '33', '.fr'),
(77, 'GF', 'French Guiana', 'French Guiana', 'GUF', '254', 'no', '594', '.gf'),
(78, 'PF', 'French Polynesia', 'French Polynesia', 'PYF', '258', 'no', '689', '.pf'),
(79, 'TF', 'French Southern Territories', 'French Southern Territories', 'ATF', '260', 'no', NULL, '.tf'),
(80, 'GA', 'Gabon', 'Gabonese Republic', 'GAB', '266', 'yes', '241', '.ga'),
(81, 'GM', 'Gambia', 'Republic of The Gambia', 'GMB', '270', 'yes', '220', '.gm'),
(82, 'GE', 'Georgia', 'Georgia', 'GEO', '268', 'yes', '995', '.ge'),
(83, 'DE', 'Germany', 'Federal Republic of Germany', 'DEU', '276', 'yes', '49', '.de'),
(84, 'GH', 'Ghana', 'Republic of Ghana', 'GHA', '288', 'yes', '233', '.gh'),
(85, 'GI', 'Gibraltar', 'Gibraltar', 'GIB', '292', 'no', '350', '.gi'),
(86, 'GR', 'Greece', 'Hellenic Republic', 'GRC', '300', 'yes', '30', '.gr'),
(87, 'GL', 'Greenland', 'Greenland', 'GRL', '304', 'no', '299', '.gl'),
(88, 'GD', 'Grenada', 'Grenada', 'GRD', '308', 'yes', '1+473', '.gd'),
(89, 'GP', 'Guadaloupe', 'Guadeloupe', 'GLP', '312', 'no', '590', '.gp'),
(90, 'GU', 'Guam', 'Guam', 'GUM', '316', 'no', '1+671', '.gu'),
(91, 'GT', 'Guatemala', 'Republic of Guatemala', 'GTM', '320', 'yes', '502', '.gt'),
(92, 'GG', 'Guernsey', 'Guernsey', 'GGY', '831', 'no', '44', '.gg'),
(93, 'GN', 'Guinea', 'Republic of Guinea', 'GIN', '324', 'yes', '224', '.gn'),
(94, 'GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', '624', 'yes', '245', '.gw'),
(95, 'GY', 'Guyana', 'Co-operative Republic of Guyana', 'GUY', '328', 'yes', '592', '.gy'),
(96, 'HT', 'Haiti', 'Republic of Haiti', 'HTI', '332', 'yes', '509', '.ht'),
(97, 'HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', 'HMD', '334', 'no', 'NONE', '.hm'),
(98, 'HN', 'Honduras', 'Republic of Honduras', 'HND', '340', 'yes', '504', '.hn'),
(99, 'HK', 'Hong Kong', 'Hong Kong', 'HKG', '344', 'no', '852', '.hk'),
(100, 'HU', 'Hungary', 'Hungary', 'HUN', '348', 'yes', '36', '.hu'),
(101, 'IS', 'Iceland', 'Republic of Iceland', 'ISL', '352', 'yes', '354', '.is'),
(102, 'IN', 'India', 'Republic of India', 'IND', '356', 'yes', '91', '.in'),
(103, 'ID', 'Indonesia', 'Republic of Indonesia', 'IDN', '360', 'yes', '62', '.id'),
(104, 'IR', 'Iran', 'Islamic Republic of Iran', 'IRN', '364', 'yes', '98', '.ir'),
(105, 'IQ', 'Iraq', 'Republic of Iraq', 'IRQ', '368', 'yes', '964', '.iq'),
(106, 'IE', 'Ireland', 'Ireland', 'IRL', '372', 'yes', '353', '.ie'),
(107, 'IM', 'Isle of Man', 'Isle of Man', 'IMN', '833', 'no', '44', '.im'),
(108, 'IL', 'Israel', 'State of Israel', 'ISR', '376', 'yes', '972', '.il'),
(109, 'IT', 'Italy', 'Italian Republic', 'ITA', '380', 'yes', '39', '.jm'),
(110, 'JM', 'Jamaica', 'Jamaica', 'JAM', '388', 'yes', '1+876', '.jm'),
(111, 'JP', 'Japan', 'Japan', 'JPN', '392', 'yes', '81', '.jp'),
(112, 'JE', 'Jersey', 'The Bailiwick of Jersey', 'JEY', '832', 'no', '44', '.je'),
(113, 'JO', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', '400', 'yes', '962', '.jo'),
(114, 'KZ', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', '398', 'yes', '7', '.kz'),
(115, 'KE', 'Kenya', 'Republic of Kenya', 'KEN', '404', 'yes', '254', '.ke'),
(116, 'KI', 'Kiribati', 'Republic of Kiribati', 'KIR', '296', 'yes', '686', '.ki'),
(117, 'XK', 'Kosovo', 'Republic of Kosovo', '---', '---', 'some', '381', ''),
(118, 'KW', 'Kuwait', 'State of Kuwait', 'KWT', '414', 'yes', '965', '.kw'),
(119, 'KG', 'Kyrgyzstan', 'Kyrgyz Republic', 'KGZ', '417', 'yes', '996', '.kg'),
(120, 'LA', 'Laos', 'Lao People\'s Democratic Republic', 'LAO', '418', 'yes', '856', '.la'),
(121, 'LV', 'Latvia', 'Republic of Latvia', 'LVA', '428', 'yes', '371', '.lv'),
(122, 'LB', 'Lebanon', 'Republic of Lebanon', 'LBN', '422', 'yes', '961', '.lb'),
(123, 'LS', 'Lesotho', 'Kingdom of Lesotho', 'LSO', '426', 'yes', '266', '.ls'),
(124, 'LR', 'Liberia', 'Republic of Liberia', 'LBR', '430', 'yes', '231', '.lr'),
(125, 'LY', 'Libya', 'Libya', 'LBY', '434', 'yes', '218', '.ly'),
(126, 'LI', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', '438', 'yes', '423', '.li'),
(127, 'LT', 'Lithuania', 'Republic of Lithuania', 'LTU', '440', 'yes', '370', '.lt'),
(128, 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', '442', 'yes', '352', '.lu'),
(129, 'MO', 'Macao', 'The Macao Special Administrative Region', 'MAC', '446', 'no', '853', '.mo'),
(130, 'MK', 'North Macedonia', 'Republic of North Macedonia', 'MKD', '807', 'yes', '389', '.mk'),
(131, 'MG', 'Madagascar', 'Republic of Madagascar', 'MDG', '450', 'yes', '261', '.mg'),
(132, 'MW', 'Malawi', 'Republic of Malawi', 'MWI', '454', 'yes', '265', '.mw'),
(133, 'MY', 'Malaysia', 'Malaysia', 'MYS', '458', 'yes', '60', '.my'),
(134, 'MV', 'Maldives', 'Republic of Maldives', 'MDV', '462', 'yes', '960', '.mv'),
(135, 'ML', 'Mali', 'Republic of Mali', 'MLI', '466', 'yes', '223', '.ml'),
(136, 'MT', 'Malta', 'Republic of Malta', 'MLT', '470', 'yes', '356', '.mt'),
(137, 'MH', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', '584', 'yes', '692', '.mh'),
(138, 'MQ', 'Martinique', 'Martinique', 'MTQ', '474', 'no', '596', '.mq'),
(139, 'MR', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', '478', 'yes', '222', '.mr'),
(140, 'MU', 'Mauritius', 'Republic of Mauritius', 'MUS', '480', 'yes', '230', '.mu'),
(141, 'YT', 'Mayotte', 'Mayotte', 'MYT', '175', 'no', '262', '.yt'),
(142, 'MX', 'Mexico', 'United Mexican States', 'MEX', '484', 'yes', '52', '.mx'),
(143, 'FM', 'Micronesia', 'Federated States of Micronesia', 'FSM', '583', 'yes', '691', '.fm'),
(144, 'MD', 'Moldava', 'Republic of Moldova', 'MDA', '498', 'yes', '373', '.md'),
(145, 'MC', 'Monaco', 'Principality of Monaco', 'MCO', '492', 'yes', '377', '.mc'),
(146, 'MN', 'Mongolia', 'Mongolia', 'MNG', '496', 'yes', '976', '.mn'),
(147, 'ME', 'Montenegro', 'Montenegro', 'MNE', '499', 'yes', '382', '.me'),
(148, 'MS', 'Montserrat', 'Montserrat', 'MSR', '500', 'no', '1+664', '.ms'),
(149, 'MA', 'Morocco', 'Kingdom of Morocco', 'MAR', '504', 'yes', '212', '.ma'),
(150, 'MZ', 'Mozambique', 'Republic of Mozambique', 'MOZ', '508', 'yes', '258', '.mz'),
(151, 'MM', 'Myanmar (Burma)', 'Republic of the Union of Myanmar', 'MMR', '104', 'yes', '95', '.mm'),
(152, 'NA', 'Namibia', 'Republic of Namibia', 'NAM', '516', 'yes', '264', '.na'),
(153, 'NR', 'Nauru', 'Republic of Nauru', 'NRU', '520', 'yes', '674', '.nr'),
(154, 'NP', 'Nepal', 'Federal Democratic Republic of Nepal', 'NPL', '524', 'yes', '977', '.np'),
(155, 'NL', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', '528', 'yes', '31', '.nl'),
(156, 'NC', 'New Caledonia', 'New Caledonia', 'NCL', '540', 'no', '687', '.nc'),
(157, 'NZ', 'New Zealand', 'New Zealand', 'NZL', '554', 'yes', '64', '.nz'),
(158, 'NI', 'Nicaragua', 'Republic of Nicaragua', 'NIC', '558', 'yes', '505', '.ni'),
(159, 'NE', 'Niger', 'Republic of Niger', 'NER', '562', 'yes', '227', '.ne'),
(160, 'NG', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', '566', 'yes', '234', '.ng'),
(161, 'NU', 'Niue', 'Niue', 'NIU', '570', 'some', '683', '.nu'),
(162, 'NF', 'Norfolk Island', 'Norfolk Island', 'NFK', '574', 'no', '672', '.nf'),
(163, 'KP', 'North Korea', 'Democratic People\'s Republic of Korea', 'PRK', '408', 'yes', '850', '.kp'),
(164, 'MP', 'Northern Mariana Islands', 'Northern Mariana Islands', 'MNP', '580', 'no', '1+670', '.mp'),
(165, 'NO', 'Norway', 'Kingdom of Norway', 'NOR', '578', 'yes', '47', '.no'),
(166, 'OM', 'Oman', 'Sultanate of Oman', 'OMN', '512', 'yes', '968', '.om'),
(167, 'PK', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', '586', 'yes', '92', '.pk'),
(168, 'PW', 'Palau', 'Republic of Palau', 'PLW', '585', 'yes', '680', '.pw'),
(169, 'PS', 'Palestine', 'State of Palestine (or Occupied Palestinian Territory)', 'PSE', '275', 'some', '970', '.ps'),
(170, 'PA', 'Panama', 'Republic of Panama', 'PAN', '591', 'yes', '507', '.pa'),
(171, 'PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PNG', '598', 'yes', '675', '.pg'),
(172, 'PY', 'Paraguay', 'Republic of Paraguay', 'PRY', '600', 'yes', '595', '.py'),
(173, 'PE', 'Peru', 'Republic of Peru', 'PER', '604', 'yes', '51', '.pe'),
(174, 'PH', 'Philippines', 'Republic of the Philippines', 'PHL', '608', 'yes', '63', '.ph'),
(175, 'PN', 'Pitcairn', 'Pitcairn', 'PCN', '612', 'no', 'NONE', '.pn'),
(176, 'PL', 'Poland', 'Republic of Poland', 'POL', '616', 'yes', '48', '.pl'),
(177, 'PT', 'Portugal', 'Portuguese Republic', 'PRT', '620', 'yes', '351', '.pt'),
(178, 'PR', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', '630', 'no', '1+939', '.pr'),
(179, 'QA', 'Qatar', 'State of Qatar', 'QAT', '634', 'yes', '974', '.qa'),
(180, 'RE', 'Reunion', 'R&eacute;union', 'REU', '638', 'no', '262', '.re'),
(181, 'RO', 'Romania', 'Romania', 'ROU', '642', 'yes', '40', '.ro'),
(182, 'RU', 'Russia', 'Russian Federation', 'RUS', '643', 'yes', '7', '.ru'),
(183, 'RW', 'Rwanda', 'Republic of Rwanda', 'RWA', '646', 'yes', '250', '.rw'),
(184, 'BL', 'Saint Barthelemy', 'Saint Barth&eacute;lemy', 'BLM', '652', 'no', '590', '.bl'),
(185, 'SH', 'Saint Helena', 'Saint Helena, Ascension and Tristan da Cunha', 'SHN', '654', 'no', '290', '.sh'),
(186, 'KN', 'Saint Kitts and Nevis', 'Federation of Saint Christopher and Nevis', 'KNA', '659', 'yes', '1+869', '.kn'),
(187, 'LC', 'Saint Lucia', 'Saint Lucia', 'LCA', '662', 'yes', '1+758', '.lc'),
(188, 'MF', 'Saint Martin', 'Saint Martin', 'MAF', '663', 'no', '590', '.mf'),
(189, 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', '666', 'no', '508', '.pm'),
(190, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', '670', 'yes', '1+784', '.vc'),
(191, 'WS', 'Samoa', 'Independent State of Samoa', 'WSM', '882', 'yes', '685', '.ws'),
(192, 'SM', 'San Marino', 'Republic of San Marino', 'SMR', '674', 'yes', '378', '.sm'),
(193, 'ST', 'Sao Tome and Principe', 'Democratic Republic of S&atilde;o Tom&eacute; and Pr&iacute;ncipe', 'STP', '678', 'yes', '239', '.st'),
(194, 'SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', '682', 'yes', '966', '.sa'),
(195, 'SN', 'Senegal', 'Republic of Senegal', 'SEN', '686', 'yes', '221', '.sn'),
(196, 'RS', 'Serbia', 'Republic of Serbia', 'SRB', '688', 'yes', '381', '.rs'),
(197, 'SC', 'Seychelles', 'Republic of Seychelles', 'SYC', '690', 'yes', '248', '.sc'),
(198, 'SL', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', '694', 'yes', '232', '.sl'),
(199, 'SG', 'Singapore', 'Republic of Singapore', 'SGP', '702', 'yes', '65', '.sg'),
(200, 'SX', 'Sint Maarten', 'Sint Maarten', 'SXM', '534', 'no', '1+721', '.sx'),
(201, 'SK', 'Slovakia', 'Slovak Republic', 'SVK', '703', 'yes', '421', '.sk'),
(202, 'SI', 'Slovenia', 'Republic of Slovenia', 'SVN', '705', 'yes', '386', '.si'),
(203, 'SB', 'Solomon Islands', 'Solomon Islands', 'SLB', '090', 'yes', '677', '.sb'),
(204, 'SO', 'Somalia', 'Somali Republic', 'SOM', '706', 'yes', '252', '.so'),
(205, 'ZA', 'South Africa', 'Republic of South Africa', 'ZAF', '710', 'yes', '27', '.za'),
(206, 'GS', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', '239', 'no', '500', '.gs'),
(207, 'KR', 'South Korea', 'Republic of Korea', 'KOR', '410', 'yes', '82', '.kr'),
(208, 'SS', 'South Sudan', 'Republic of South Sudan', 'SSD', '728', 'yes', '211', '.ss'),
(209, 'ES', 'Spain', 'Kingdom of Spain', 'ESP', '724', 'yes', '34', '.es'),
(210, 'LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LKA', '144', 'yes', '94', '.lk'),
(211, 'SD', 'Sudan', 'Republic of the Sudan', 'SDN', '729', 'yes', '249', '.sd'),
(212, 'SR', 'Suriname', 'Republic of Suriname', 'SUR', '740', 'yes', '597', '.sr'),
(213, 'SJ', 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', 'SJM', '744', 'no', '47', '.sj'),
(214, 'SZ', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', '748', 'yes', '268', '.sz'),
(215, 'SE', 'Sweden', 'Kingdom of Sweden', 'SWE', '752', 'yes', '46', '.se'),
(216, 'CH', 'Switzerland', 'Swiss Confederation', 'CHE', '756', 'yes', '41', '.ch'),
(217, 'SY', 'Syria', 'Syrian Arab Republic', 'SYR', '760', 'yes', '963', '.sy'),
(218, 'TW', 'Taiwan', 'Republic of China (Taiwan)', 'TWN', '158', 'former', '886', '.tw'),
(219, 'TJ', 'Tajikistan', 'Republic of Tajikistan', 'TJK', '762', 'yes', '992', '.tj'),
(220, 'TZ', 'Tanzania', 'United Republic of Tanzania', 'TZA', '834', 'yes', '255', '.tz'),
(221, 'TH', 'Thailand', 'Kingdom of Thailand', 'THA', '764', 'yes', '66', '.th'),
(222, 'TL', 'Timor-Leste (East Timor)', 'Democratic Republic of Timor-Leste', 'TLS', '626', 'yes', '670', '.tl'),
(223, 'TG', 'Togo', 'Togolese Republic', 'TGO', '768', 'yes', '228', '.tg'),
(224, 'TK', 'Tokelau', 'Tokelau', 'TKL', '772', 'no', '690', '.tk'),
(225, 'TO', 'Tonga', 'Kingdom of Tonga', 'TON', '776', 'yes', '676', '.to'),
(226, 'TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', '780', 'yes', '1+868', '.tt'),
(227, 'TN', 'Tunisia', 'Republic of Tunisia', 'TUN', '788', 'yes', '216', '.tn'),
(228, 'TR', 'Turkey', 'Republic of Turkey', 'TUR', '792', 'yes', '90', '.tr'),
(229, 'TM', 'Turkmenistan', 'Turkmenistan', 'TKM', '795', 'yes', '993', '.tm'),
(230, 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', '796', 'no', '1+649', '.tc'),
(231, 'TV', 'Tuvalu', 'Tuvalu', 'TUV', '798', 'yes', '688', '.tv'),
(232, 'UG', 'Uganda', 'Republic of Uganda', 'UGA', '800', 'yes', '256', '.ug'),
(233, 'UA', 'Ukraine', 'Ukraine', 'UKR', '804', 'yes', '380', '.ua'),
(234, 'AE', 'United Arab Emirates', 'United Arab Emirates', 'ARE', '784', 'yes', '971', '.ae'),
(235, 'GB', 'United Kingdom', 'United Kingdom of Great Britain and Nothern Ireland', 'GBR', '826', 'yes', '44', '.uk'),
(236, 'US', 'United States', 'United States of America', 'USA', '840', 'yes', '1', '.us'),
(237, 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', '581', 'no', 'NONE', 'NONE'),
(238, 'UY', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', '858', 'yes', '598', '.uy'),
(239, 'UZ', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', '860', 'yes', '998', '.uz'),
(240, 'VU', 'Vanuatu', 'Republic of Vanuatu', 'VUT', '548', 'yes', '678', '.vu'),
(241, 'VA', 'Vatican City', 'State of the Vatican City', 'VAT', '336', 'no', '39', '.va'),
(242, 'VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', '862', 'yes', '58', '.ve'),
(243, 'VN', 'Vietnam', 'Socialist Republic of Vietnam', 'VNM', '704', 'yes', '84', '.vn'),
(244, 'VG', 'Virgin Islands, British', 'British Virgin Islands', 'VGB', '092', 'no', '1+284', '.vg'),
(245, 'VI', 'Virgin Islands, US', 'Virgin Islands of the United States', 'VIR', '850', 'no', '1+340', '.vi'),
(246, 'WF', 'Wallis and Futuna', 'Wallis and Futuna', 'WLF', '876', 'no', '681', '.wf'),
(247, 'EH', 'Western Sahara', 'Western Sahara', 'ESH', '732', 'no', '212', '.eh'),
(248, 'YE', 'Yemen', 'Republic of Yemen', 'YEM', '887', 'yes', '967', '.ye'),
(249, 'ZM', 'Zambia', 'Republic of Zambia', 'ZMB', '894', 'yes', '260', '.zm'),
(250, 'ZW', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', '716', 'yes', '263', '.zw');

-- --------------------------------------------------------

--
-- Table structure for table `tblcreditnotes`
--

CREATE TABLE `tblcreditnotes` (
  `id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT 1,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `adminnote` mediumtext DEFAULT NULL,
  `terms` mediumtext DEFAULT NULL,
  `clientnote` mediumtext DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `discount_percent` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `discount_type` varchar(30) NOT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_credit_note` tinyint(1) NOT NULL DEFAULT 1,
  `show_quantity_as` int(11) NOT NULL DEFAULT 1,
  `reference_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcreditnote_refunds`
--

CREATE TABLE `tblcreditnote_refunds` (
  `id` int(11) NOT NULL,
  `credit_note_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `refunded_on` date NOT NULL,
  `payment_mode` varchar(40) NOT NULL,
  `note` mediumtext DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcredits`
--

CREATE TABLE `tblcredits` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `credit_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `date_applied` datetime NOT NULL,
  `amount` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcurrencies`
--

CREATE TABLE `tblcurrencies` (
  `id` int(11) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `decimal_separator` varchar(5) DEFAULT NULL,
  `thousand_separator` varchar(5) DEFAULT NULL,
  `placement` varchar(10) DEFAULT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblcurrencies`
--

INSERT INTO `tblcurrencies` (`id`, `symbol`, `name`, `decimal_separator`, `thousand_separator`, `placement`, `isdefault`) VALUES
(3, 'QAR', 'QAR', '.', ',', 'after', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcurrency_rates`
--

CREATE TABLE `tblcurrency_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_currency_id` int(11) DEFAULT NULL,
  `from_currency_name` varchar(100) DEFAULT NULL,
  `from_currency_rate` decimal(15,6) NOT NULL DEFAULT 0.000000,
  `to_currency_id` int(11) DEFAULT NULL,
  `to_currency_name` varchar(100) DEFAULT NULL,
  `to_currency_rate` decimal(15,6) NOT NULL DEFAULT 0.000000,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcurrency_rates`
--

INSERT INTO `tblcurrency_rates` (`id`, `from_currency_id`, `from_currency_name`, `from_currency_rate`, `to_currency_id`, `to_currency_name`, `to_currency_rate`, `date_updated`) VALUES
(1, 1, 'USD', 1.000000, 3, 'QAR', 3.637300, '2024-08-20 17:44:32'),
(2, 3, 'QAR', 1.000000, 1, 'USD', 0.274900, '2024-08-20 17:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblcurrency_rate_logs`
--

CREATE TABLE `tblcurrency_rate_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_currency_id` int(11) DEFAULT NULL,
  `from_currency_name` varchar(100) DEFAULT NULL,
  `from_currency_rate` decimal(15,6) NOT NULL DEFAULT 0.000000,
  `to_currency_id` int(11) DEFAULT NULL,
  `to_currency_name` varchar(100) DEFAULT NULL,
  `to_currency_rate` decimal(15,6) NOT NULL DEFAULT 0.000000,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcurrency_rate_logs`
--

INSERT INTO `tblcurrency_rate_logs` (`id`, `from_currency_id`, `from_currency_name`, `from_currency_rate`, `to_currency_id`, `to_currency_name`, `to_currency_rate`, `date`) VALUES
(1, 1, 'USD', 0.000000, 3, 'QAR', 3.637300, '2024-08-20'),
(2, 3, 'QAR', 0.000000, 1, 'USD', 0.274900, '2024-08-20'),
(3, 1, 'USD', 0.000000, 3, 'QAR', 3.637300, '2024-08-20'),
(4, 3, 'QAR', 0.000000, 1, 'USD', 0.274900, '2024-08-20'),
(5, 1, 'USD', 0.000000, 3, 'QAR', 3.637300, '2024-08-20'),
(6, 3, 'QAR', 0.000000, 1, 'USD', 0.274900, '2024-08-20');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers_groups`
--

CREATE TABLE `tblcustomers_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblcustomers_groups`
--

INSERT INTO `tblcustomers_groups` (`id`, `name`) VALUES
(2, 'Insurance Customer'),
(1, 'Walk-in Customer');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer_admins`
--

CREATE TABLE `tblcustomer_admins` (
  `staff_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_assigned` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer_groups`
--

CREATE TABLE `tblcustomer_groups` (
  `id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblcustomer_groups`
--

INSERT INTO `tblcustomer_groups` (`id`, `groupid`, `customer_id`) VALUES
(1, 2, 3),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomfields`
--

CREATE TABLE `tblcustomfields` (
  `id` int(11) NOT NULL,
  `fieldto` varchar(30) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL,
  `options` longtext DEFAULT NULL,
  `display_inline` tinyint(1) NOT NULL DEFAULT 0,
  `field_order` int(11) DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1,
  `show_on_pdf` int(11) NOT NULL DEFAULT 0,
  `show_on_ticket_form` tinyint(1) NOT NULL DEFAULT 0,
  `only_admin` tinyint(1) NOT NULL DEFAULT 0,
  `show_on_table` tinyint(1) NOT NULL DEFAULT 0,
  `show_on_client_portal` int(11) NOT NULL DEFAULT 0,
  `disalow_client_to_edit` int(11) NOT NULL DEFAULT 0,
  `bs_column` int(11) NOT NULL DEFAULT 12,
  `default_value` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblcustomfields`
--

INSERT INTO `tblcustomfields` (`id`, `fieldto`, `name`, `slug`, `required`, `type`, `options`, `display_inline`, `field_order`, `active`, `show_on_pdf`, `show_on_ticket_form`, `only_admin`, `show_on_table`, `show_on_client_portal`, `disalow_client_to_edit`, `bs_column`, `default_value`) VALUES
(1, 'estimate', 'Insurance Number', 'estimate_insurance_number', 1, 'input', '', 0, 0, 1, 1, 0, 0, 1, 0, 0, 12, ''),
(2, 'estimate', 'Vehicle Number', 'estimate_vehicle_number', 1, 'number', '', 0, 0, 1, 1, 0, 0, 1, 0, 0, 12, ''),
(3, 'estimate', 'Vehicle Model / Year', 'estimate_vehicle_model_year', 0, 'input', '', 0, 0, 1, 1, 0, 0, 1, 0, 0, 12, ''),
(4, 'estimate', 'Brand Name', 'estimate_brand_name', 0, 'input', '', 0, 0, 1, 1, 0, 0, 1, 0, 0, 12, ''),
(5, 'invoice', 'Insurance Number', 'invoice_insurance_number', 1, 'input', '', 0, 0, 1, 1, 0, 0, 1, 0, 0, 12, ''),
(6, 'invoice', 'Vehicle Number', 'invoice_vehicle_number', 1, 'number', '', 0, 0, 1, 1, 0, 0, 1, 0, 0, 12, ''),
(7, 'invoice', 'Vehicle Model / Year', 'invoice_vehicle_model_year', 0, 'input', '', 0, 0, 1, 1, 0, 0, 1, 0, 0, 12, ''),
(8, 'invoice', 'Brand Name', 'invoice_brand_name', 0, 'input', '', 0, 0, 1, 1, 0, 0, 1, 0, 0, 12, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomfieldsvalues`
--

CREATE TABLE `tblcustomfieldsvalues` (
  `id` int(11) NOT NULL,
  `relid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `fieldto` varchar(15) NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblcustomfieldsvalues`
--

INSERT INTO `tblcustomfieldsvalues` (`id`, `relid`, `fieldid`, `fieldto`, `value`) VALUES
(1, 2, 1, 'estimate', '148236'),
(2, 2, 2, 'estimate', '507573'),
(3, 2, 3, 'estimate', 'Sunny / 2023'),
(4, 2, 4, 'estimate', 'Nissan'),
(5, 3, 1, 'estimate', '456321'),
(6, 3, 2, 'estimate', '78945'),
(7, 3, 3, 'estimate', 'Sunny / 2023'),
(8, 3, 4, 'estimate', 'Nissan'),
(9, 2, 5, 'invoice', '456321'),
(10, 2, 6, 'invoice', '78945'),
(11, 2, 7, 'invoice', 'Sunny / 2023'),
(12, 2, 8, 'invoice', 'Nissan'),
(13, 4, 1, 'estimate', '125698'),
(14, 4, 2, 'estimate', '45689'),
(15, 4, 3, 'estimate', 'Sunny / 2022'),
(16, 4, 4, 'estimate', 'Nissan'),
(17, 5, 1, 'estimate', '12536'),
(18, 5, 2, 'estimate', '415632'),
(19, 5, 3, 'estimate', 'Sunny / 2022'),
(20, 5, 4, 'estimate', 'Nissan');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `departmentid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `imap_username` varchar(191) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `email_from_header` tinyint(1) NOT NULL DEFAULT 0,
  `host` varchar(150) DEFAULT NULL,
  `password` longtext DEFAULT NULL,
  `encryption` varchar(3) DEFAULT NULL,
  `folder` varchar(191) NOT NULL DEFAULT 'INBOX',
  `delete_after_import` int(11) NOT NULL DEFAULT 0,
  `calendar_id` longtext DEFAULT NULL,
  `hidefromclient` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbldismissed_announcements`
--

CREATE TABLE `tbldismissed_announcements` (
  `dismissedannouncementid` int(11) NOT NULL,
  `announcementid` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblemailtemplates`
--

CREATE TABLE `tblemailtemplates` (
  `emailtemplateid` int(11) NOT NULL,
  `type` longtext NOT NULL,
  `slug` varchar(100) NOT NULL,
  `language` varchar(40) DEFAULT NULL,
  `name` longtext NOT NULL,
  `subject` longtext NOT NULL,
  `message` longtext NOT NULL,
  `fromname` longtext NOT NULL,
  `fromemail` varchar(100) DEFAULT NULL,
  `plaintext` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblemailtemplates`
--

INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(1, 'client', 'new-client-created', 'english', 'New Contact Added/Registered (Welcome Email)', 'Welcome aboard', 'Dear {contact_firstname} {contact_lastname}<br /><br />Thank you for registering on the <strong>{companyname}</strong> CRM System.<br /><br />We just wanted to say welcome.<br /><br />Please contact us if you need any help.<br /><br />Click here to view your profile: <a href=\"{crm_url}\">{crm_url}</a><br /><br />Kind Regards, <br />{email_signature}<br /><br />(This is an automated email, so please don\'t reply to this email address)', '{companyname} | CRM', '', 0, 1, 0),
(2, 'invoice', 'invoice-send-to-client', 'english', 'Send Invoice to Customer', 'Invoice with number {invoice_number} created', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">We have prepared the following invoice for you: <strong># {invoice_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Invoice status</strong>: {invoice_status}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(3, 'ticket', 'new-ticket-opened-admin', 'english', 'New Ticket Opened (Opened by Staff, Sent to Customer)', 'New Support Ticket Opened', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">New support ticket has been opened.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department:</strong> {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}<br /></span><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_public_url}\">#{ticket_id}</a><br /><br />Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(4, 'ticket', 'ticket-reply', 'english', 'Ticket Reply (Sent to Customer)', 'New Ticket Reply', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">You have a new ticket reply to ticket <a href=\"{ticket_public_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket Subject:</strong> {ticket_subject}<br /></span><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_public_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(5, 'ticket', 'ticket-autoresponse', 'english', 'New Ticket Opened - Autoresponse', 'New Support Ticket Opened', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Thank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_public_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(6, 'invoice', 'invoice-payment-recorded', 'english', 'Invoice Payment Recorded (Sent to Customer)', 'Invoice Payment Recorded', '<span style=\"font-size: 12pt;\">Hello {contact_firstname}&nbsp;{contact_lastname}<br /><br /></span>Thank you for the payment. Find the payment details below:<br /><br />-------------------------------------------------<br /><br />Amount:&nbsp;<strong>{payment_total}<br /></strong>Date:&nbsp;<strong>{payment_date}</strong><br />Invoice number:&nbsp;<span style=\"font-size: 12pt;\"><strong># {invoice_number}<br /><br /></strong></span>-------------------------------------------------<br /><br />You can always view the invoice for this payment at the following link:&nbsp;<a href=\"{invoice_link}\"><span style=\"font-size: 12pt;\">{invoice_number}</span></a><br /><br />We are looking forward working with you.<br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(7, 'invoice', 'invoice-overdue-notice', 'english', 'Invoice Overdue Notice', 'Invoice Overdue Notice - {invoice_number}', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">This is an overdue notice for invoice <strong># {invoice_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\">This invoice was due: {invoice_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(8, 'invoice', 'invoice-already-send', 'english', 'Invoice Already Sent to Customer', 'Invoice # {invoice_number} ', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">At your request, here is the invoice with number <strong># {invoice_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(9, 'ticket', 'new-ticket-created-staff', 'english', 'New Ticket Created (Opened by Customer, Sent to Staff Members)', 'New Ticket Created', '<p><span style=\"font-size: 12pt;\">A new support ticket has been opened.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}<br /></span><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(10, 'estimate', 'estimate-send-to-client', 'english', 'Send Estimate to Customer', 'Estimate # {estimate_number} created', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Please find the attached estimate <strong># {estimate_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Estimate status:</strong> {estimate_status}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">We look forward to your communication.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}<br /></span>', '{companyname} | CRM', '', 0, 1, 0),
(11, 'ticket', 'ticket-reply-to-admin', 'english', 'Ticket Reply (Sent to Staff)', 'New Support Ticket Reply', '<span style=\"font-size: 12pt;\">A new support ticket reply from {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(12, 'estimate', 'estimate-already-send', 'english', 'Estimate Already Sent to Customer', 'Estimate # {estimate_number} ', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Thank you for your estimate request.</span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(13, 'contract', 'contract-expiration', 'english', 'Contract Expiration Reminder (Sent to Customer Contacts)', 'Contract Expiration Reminder', '<span style=\"font-size: 12pt;\">Dear {client_company}</span><br /><br /><span style=\"font-size: 12pt;\">This is a reminder that the following contract will expire soon:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {contract_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Description:</strong> {contract_description}</span><br /><span style=\"font-size: 12pt;\"><strong>Date Start:</strong> {contract_datestart}</span><br /><span style=\"font-size: 12pt;\"><strong>Date End:</strong> {contract_dateend}</span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(14, 'tasks', 'task-assigned', 'english', 'New Task Assigned (Sent to Staff)', 'New Task Assigned to You - {task_name}', '<span style=\"font-size: 12pt;\">Dear {staff_firstname}</span><br /><br /><span style=\"font-size: 12pt;\">You have been assigned to a new task:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}<br /></span><strong>Start Date:</strong> {task_startdate}<br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {task_priority}<br /><br /></span><span style=\"font-size: 12pt;\"><span>You can view the task on the following link</span>: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(15, 'tasks', 'task-added-as-follower', 'english', 'Staff Member Added as Follower on Task (Sent to Staff)', 'You are added as follower on task - {task_name}', '<span style=\"font-size: 12pt;\">Hi {staff_firstname}<br /></span><br /><span style=\"font-size: 12pt;\">You have been added as follower on the following task:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Start date:</strong> {task_startdate}</span><br /><br /><span>You can view the task on the following link</span><span>: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(16, 'tasks', 'task-commented', 'english', 'New Comment on Task (Sent to Staff)', 'New Comment on Task - {task_name}', 'Dear {staff_firstname}<br /><br />A comment has been made on the following task:<br /><br /><strong>Name:</strong> {task_name}<br /><strong>Comment:</strong> {task_comment}<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(17, 'tasks', 'task-added-attachment', 'english', 'New Attachment(s) on Task (Sent to Staff)', 'New Attachment on Task - {task_name}', 'Hi {staff_firstname}<br /><br /><strong>{task_user_take_action}</strong> added an attachment on the following task:<br /><br /><strong>Name:</strong> {task_name}<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(18, 'estimate', 'estimate-declined-to-staff', 'english', 'Estimate Declined (Sent to Staff)', 'Customer Declined Estimate', '<span style=\"font-size: 12pt;\">Hi</span><br /> <br /><span style=\"font-size: 12pt;\">Customer ({client_company}) declined estimate with number <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(19, 'estimate', 'estimate-accepted-to-staff', 'english', 'Estimate Accepted (Sent to Staff)', 'Customer Accepted Estimate', '<span style=\"font-size: 12pt;\">Hi</span><br /> <br /><span style=\"font-size: 12pt;\">Customer ({client_company}) accepted estimate with number <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(20, 'proposals', 'proposal-client-accepted', 'english', 'Customer Action - Accepted (Sent to Staff)', 'Customer Accepted Proposal', '<div>Hi<br /> <br />Client <strong>{proposal_proposal_to}</strong> accepted the following proposal:<br /> <br /><strong>Number:</strong> {proposal_number}<br /><strong>Subject</strong>: {proposal_subject}<br /><strong>Total</strong>: {proposal_total}<br /> <br />View the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /> <br />Kind Regards,<br />{email_signature}</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>', '{companyname} | CRM', '', 0, 1, 0),
(21, 'proposals', 'proposal-send-to-customer', 'english', 'Send Proposal to Customer', 'Proposal With Number {proposal_number} Created', 'Dear {proposal_proposal_to}<br /><br />Please find our attached proposal.<br /><br />This proposal is valid until: {proposal_open_till}<br />You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /><br />Please don\'t hesitate to comment online if you have any questions.<br /><br />We look forward to your communication.<br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(22, 'proposals', 'proposal-client-declined', 'english', 'Customer Action - Declined (Sent to Staff)', 'Client Declined Proposal', 'Hi<br /> <br />Customer <strong>{proposal_proposal_to}</strong> declined the proposal <strong>{proposal_subject}</strong><br /> <br />View the proposal on the following link <a href=\"{proposal_link}\">{proposal_number}</a>&nbsp;or from the admin area.<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(23, 'proposals', 'proposal-client-thank-you', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting proposal', 'Dear {proposal_proposal_to}<br /> <br />Thank for for accepting the proposal.<br /> <br />We look forward to doing business with you.<br /> <br />We will contact you as soon as possible<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(24, 'proposals', 'proposal-comment-to-client', 'english', 'New Comment  (Sent to Customer/Lead)', 'New Proposal Comment', 'Dear {proposal_proposal_to}<br /> <br />A new comment has been made on the following proposal: <strong>{proposal_number}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(25, 'proposals', 'proposal-comment-to-admin', 'english', 'New Comment (Sent to Staff) ', 'New Proposal Comment', 'Hi<br /> <br />A new comment has been made to the proposal <strong>{proposal_subject}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_number}</a>&nbsp;or from the admin area.<br /> <br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(26, 'estimate', 'estimate-thank-you-to-customer', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting estimate', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Thank for for accepting the estimate.</span><br /> <br /><span style=\"font-size: 12pt;\">We look forward to doing business with you.</span><br /> <br /><span style=\"font-size: 12pt;\">We will contact you as soon as possible.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(27, 'tasks', 'task-deadline-notification', 'english', 'Task Deadline Reminder - Sent to Assigned Members', 'Task Deadline Reminder', 'Hi {staff_firstname}&nbsp;{staff_lastname}<br /><br />This is an automated email from {companyname}.<br /><br />The task <strong>{task_name}</strong> deadline is on <strong>{task_duedate}</strong>. <br />This task is still not finished.<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(28, 'contract', 'send-contract', 'english', 'Send Contract to Customer', 'Contract - {contract_subject}', '<p><span style=\"font-size: 12pt;\">Hi&nbsp;{contact_firstname}&nbsp;{contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Please find the <a href=\"{contract_link}\">{contract_subject}</a> attached.<br /><br />Description: {contract_description}<br /><br /></span><span style=\"font-size: 12pt;\">Looking forward to hear from you.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(29, 'invoice', 'invoice-payment-recorded-to-staff', 'english', 'Invoice Payment Recorded (Sent to Staff)', 'New Invoice Payment', '<span style=\"font-size: 12pt;\">Hi</span><br /><br /><span style=\"font-size: 12pt;\">Customer recorded payment for invoice <strong># {invoice_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(30, 'ticket', 'auto-close-ticket', 'english', 'Auto Close Ticket', 'Ticket Auto Closed', '<p><span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Ticket {ticket_subject} has been auto close due to inactivity.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket #</strong>: <a href=\"{ticket_public_url}\">{ticket_id}</a></span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(31, 'project', 'new-project-discussion-created-to-staff', 'english', 'New Project Discussion (Sent to Project Members)', 'New Project Discussion Created - {project_name}', '<p>Hi {staff_firstname}<br /><br />New project discussion created from <strong>{discussion_creator}</strong><br /><br /><strong>Subject:</strong> {discussion_subject}<br /><strong>Description:</strong> {discussion_description}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(32, 'project', 'new-project-discussion-created-to-customer', 'english', 'New Project Discussion (Sent to Customer Contacts)', 'New Project Discussion Created - {project_name}', '<p>Hello {contact_firstname} {contact_lastname}<br /><br />New project discussion created from <strong>{discussion_creator}</strong><br /><br /><strong>Subject:</strong> {discussion_subject}<br /><strong>Description:</strong> {discussion_description}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(33, 'project', 'new-project-file-uploaded-to-customer', 'english', 'New Project File(s) Uploaded (Sent to Customer Contacts)', 'New Project File(s) Uploaded - {project_name}', '<p>Hello {contact_firstname} {contact_lastname}<br /><br />New project file is uploaded on <strong>{project_name}</strong> from <strong>{file_creator}</strong><br /><br />You can view the project on the following link: <a href=\"{project_link}\">{project_name}</a><br /><br />To view the file in our CRM you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(34, 'project', 'new-project-file-uploaded-to-staff', 'english', 'New Project File(s) Uploaded (Sent to Project Members)', 'New Project File(s) Uploaded - {project_name}', '<p>Hello&nbsp;{staff_firstname}</p>\r\n<p>New project&nbsp;file is uploaded on&nbsp;<strong>{project_name}</strong> from&nbsp;<strong>{file_creator}</strong></p>\r\n<p>You can view the project on the following link: <a href=\"{project_link}\">{project_name}<br /></a><br />To view&nbsp;the file you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(35, 'project', 'new-project-discussion-comment-to-customer', 'english', 'New Discussion Comment  (Sent to Customer Contacts)', 'New Discussion Comment', '<p><span style=\"font-size: 12pt;\">Hello {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">New discussion comment has been made on <strong>{discussion_subject}</strong> from <strong>{comment_creator}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Discussion subject:</strong> {discussion_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Comment</strong>: {discussion_comment}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(36, 'project', 'new-project-discussion-comment-to-staff', 'english', 'New Discussion Comment (Sent to Project Members)', 'New Discussion Comment', '<p>Hi {staff_firstname}<br /><br />New discussion comment has been made on <strong>{discussion_subject}</strong> from <strong>{comment_creator}</strong><br /><br /><strong>Discussion subject:</strong> {discussion_subject}<br /><strong>Comment:</strong> {discussion_comment}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(37, 'project', 'staff-added-as-project-member', 'english', 'Staff Added as Project Member', 'New project assigned to you', '<p>Hi {staff_firstname}<br /><br />New project has been assigned to you.<br /><br />You can view the project on the following link <a href=\"{project_link}\">{project_name}</a><br /><br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(38, 'estimate', 'estimate-expiry-reminder', 'english', 'Estimate Expiration Reminder', 'Estimate Expiration Reminder', '<p><span style=\"font-size: 12pt;\">Hello {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">The estimate with <strong># {estimate_number}</strong> will expire on <strong>{estimate_expirydate}</strong></span><br /><br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(39, 'proposals', 'proposal-expiry-reminder', 'english', 'Proposal Expiration Reminder', 'Proposal Expiration Reminder', '<p>Hello {proposal_proposal_to}<br /><br />The proposal {proposal_number}&nbsp;will expire on <strong>{proposal_open_till}</strong><br /><br />You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(40, 'staff', 'new-staff-created', 'english', 'New Staff Created (Welcome Email)', 'You are added as staff member', 'Hi {staff_firstname}<br /><br />You are added as member on our CRM.<br /><br />Please use the following logic credentials:<br /><br /><strong>Email:</strong> {staff_email}<br /><strong>Password:</strong> {password}<br /><br />Click <a href=\"{admin_url}\">here </a>to login in the dashboard.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(41, 'client', 'contact-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2>Create a new password</h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a {companyname}&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(42, 'client', 'contact-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<strong><span style=\"font-size: 14pt;\">You have changed your password.</span><br /></strong><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {contact_email}<br /><br />If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(43, 'client', 'contact-set-password', 'english', 'Set New Password', 'Set new password on {companyname} ', '<h2><span style=\"font-size: 14pt;\">Setup your new password on {companyname}</span></h2>\r\nPlease use the following link to set up your new password:<br /><br /><a href=\"{set_password_url}\">Set new password</a><br /><br />Keep it in your records so you don\'t forget it.<br /><br />Please set your new password in <strong>48 hours</strong>. After that, you won\'t be able to set your password because this link will expire.<br /><br />You can login at: <a href=\"{crm_url}\">{crm_url}</a><br />Your email address for login: {contact_email}<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(44, 'staff', 'staff-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2><span style=\"font-size: 14pt;\">Create a new password</span></h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a <strong>{companyname}</strong>&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(45, 'staff', 'staff-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<span style=\"font-size: 14pt;\"><strong>You have changed your password.<br /></strong></span><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {staff_email}<br /><br /> If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(46, 'project', 'assigned-to-project', 'english', 'New Project Created (Sent to Customer Contacts)', 'New Project Created', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New project is assigned to your company.<br /><br /><strong>Project Name:</strong>&nbsp;{project_name}<br /><strong>Project Start Date:</strong>&nbsp;{project_start_date}</p>\r\n<p>You can view the project on the following link:&nbsp;<a href=\"{project_link}\">{project_name}</a></p>\r\n<p>We are looking forward hearing from you.<br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(47, 'tasks', 'task-added-attachment-to-contacts', 'english', 'New Attachment(s) on Task (Sent to Customer Contacts)', 'New Attachment on Task - {task_name}', '<span>Hi {contact_firstname} {contact_lastname}</span><br /><br /><strong>{task_user_take_action}</strong><span> added an attachment on the following task:</span><br /><br /><strong>Name:</strong><span> {task_name}</span><br /><br /><span>You can view the task on the following link: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span>Kind Regards,</span><br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(48, 'tasks', 'task-commented-to-contacts', 'english', 'New Comment on Task (Sent to Customer Contacts)', 'New Comment on Task - {task_name}', '<span>Dear {contact_firstname} {contact_lastname}</span><br /><br /><span>A comment has been made on the following task:</span><br /><br /><strong>Name:</strong><span> {task_name}</span><br /><strong>Comment:</strong><span> {task_comment}</span><br /><br /><span>You can view the task on the following link: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span>Kind Regards,</span><br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(49, 'leads', 'new-lead-assigned', 'english', 'New Lead Assigned to Staff Member', 'New lead assigned to you', '<p>Hello {lead_assigned}<br /><br />New lead is assigned to you.<br /><br /><strong>Lead Name:</strong>&nbsp;{lead_name}<br /><strong>Lead Email:</strong>&nbsp;{lead_email}<br /><br />You can view the lead on the following link: <a href=\"{lead_link}\">{lead_name}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(50, 'client', 'client-statement', 'english', 'Statement - Account Summary', 'Account Statement from {statement_from} to {statement_to}', 'Dear {contact_firstname} {contact_lastname}, <br /><br />Its been a great experience working with you.<br /><br />Attached with this email is a list of all transactions for the period between {statement_from} to {statement_to}<br /><br />For your information your account balance due is total:&nbsp;{statement_balance_due}<br /><br />Please contact us if you need more information.<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(51, 'ticket', 'ticket-assigned-to-admin', 'english', 'New Ticket Assigned (Sent to Staff)', 'New support ticket has been assigned to you', '<p><span style=\"font-size: 12pt;\">Hi</span></p>\r\n<p><span style=\"font-size: 12pt;\">A new support ticket&nbsp;has been assigned to you.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(52, 'client', 'new-client-registered-to-admin', 'english', 'New Customer Registration (Sent to admins)', 'New Customer Registration', 'Hello.<br /><br />New customer registration on your customer portal:<br /><br /><strong>Firstname:</strong>&nbsp;{contact_firstname}<br /><strong>Lastname:</strong>&nbsp;{contact_lastname}<br /><strong>Company:</strong>&nbsp;{client_company}<br /><strong>Email:</strong>&nbsp;{contact_email}<br /><br />Best Regards', '{companyname} | CRM', '', 0, 1, 0),
(53, 'leads', 'new-web-to-lead-form-submitted', 'english', 'Web to lead form submitted - Sent to lead', '{lead_name} - We Received Your Request', 'Hello {lead_name}.<br /><br /><strong>Your request has been received.</strong><br /><br />This email is to let you know that we received your request and we will get back to you as soon as possible with more information.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 0, 0),
(54, 'staff', 'two-factor-authentication', 'english', 'Two Factor Authentication', 'Confirm Your Login', '<p>Hi {staff_firstname}</p>\r\n<p style=\"text-align: left;\">You received this email because you have enabled two factor authentication in your account.<br />Use the following code to confirm your login:</p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 18pt;\"><strong>{two_factor_auth_code}<br /><br /></strong><span style=\"font-size: 12pt;\">{email_signature}</span><strong><br /><br /><br /><br /></strong></span></p>', '{companyname} | CRM', '', 0, 1, 0),
(55, 'project', 'project-finished-to-customer', 'english', 'Project Marked as Finished (Sent to Customer Contacts)', 'Project Marked as Finished', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>You are receiving this email because project&nbsp;<strong>{project_name}</strong> has been marked as finished. This project is assigned under your company and we just wanted to keep you up to date.<br /><br />You can view the project on the following link:&nbsp;<a href=\"{project_link}\">{project_name}</a></p>\r\n<p>If you have any questions don\'t hesitate to contact us.<br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(56, 'credit_note', 'credit-note-send-to-client', 'english', 'Send Credit Note To Email', 'Credit Note With Number #{credit_note_number} Created', 'Dear&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />We have attached the credit note with number <strong>#{credit_note_number} </strong>for your reference.<br /><br /><strong>Date:</strong>&nbsp;{credit_note_date}<br /><strong>Total Amount:</strong>&nbsp;{credit_note_total}<br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(57, 'tasks', 'task-status-change-to-staff', 'english', 'Task Status Changed (Sent to Staff)', 'Task Status Changed', '<span style=\"font-size: 12pt;\">Hi {staff_firstname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>{task_user_take_action}</strong> marked task as <strong>{task_status}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(58, 'tasks', 'task-status-change-to-contacts', 'english', 'Task Status Changed (Sent to Customer Contacts)', 'Task Status Changed', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>{task_user_take_action}</strong> marked task as <strong>{task_status}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(59, 'staff', 'reminder-email-staff', 'english', 'Staff Reminder Email', 'You Have a New Reminder!', '<p>Hello&nbsp;{staff_firstname}<br /><br /><strong>You have a new reminder&nbsp;linked to&nbsp;{staff_reminder_relation_name}!<br /><br />Reminder description:</strong><br />{staff_reminder_description}<br /><br />Click <a href=\"{staff_reminder_relation_link}\">here</a> to view&nbsp;<a href=\"{staff_reminder_relation_link}\">{staff_reminder_relation_name}</a><br /><br />Best Regards<br /><br /></p>', '{companyname} | CRM', '', 0, 1, 0),
(60, 'contract', 'contract-comment-to-client', 'english', 'New Comment  (Sent to Customer Contacts)', 'New Contract Comment', 'Dear {contact_firstname} {contact_lastname}<br /> <br />A new comment has been made on the following contract: <strong>{contract_subject}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{contract_link}\">{contract_subject}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(61, 'contract', 'contract-comment-to-admin', 'english', 'New Comment (Sent to Staff) ', 'New Contract Comment', 'Hi {staff_firstname}<br /><br />A new comment has been made to the contract&nbsp;<strong>{contract_subject}</strong><br /><br />You can view and reply to the comment on the following link: <a href=\"{contract_link}\">{contract_subject}</a>&nbsp;or from the admin area.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(62, 'subscriptions', 'send-subscription', 'english', 'Send Subscription to Customer', 'Subscription Created', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />We have prepared the subscription&nbsp;<strong>{subscription_name}</strong> for your company.<br /><br />Click <a href=\"{subscription_link}\">here</a> to review the subscription and subscribe.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(63, 'subscriptions', 'subscription-payment-failed', 'english', 'Subscription Payment Failed', 'Your most recent invoice payment failed', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br br=\"\" />Unfortunately, your most recent invoice payment for&nbsp;<strong>{subscription_name}</strong> was declined.<br /><br />This could be due to a change in your card number, your card expiring,<br />cancellation of your credit card, or the card issuer not recognizing the<br />payment and therefore taking action to prevent it.<br /><br />Please update your payment information as soon as possible by logging in here:<br /><a href=\"{crm_url}/login\">{crm_url}/login</a><br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(64, 'subscriptions', 'subscription-canceled', 'english', 'Subscription Canceled (Sent to customer primary contact)', 'Your subscription has been canceled', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />Your subscription&nbsp;<strong>{subscription_name} </strong>has been canceled, if you have any questions don\'t hesitate to contact us.<br /><br />It was a pleasure doing business with you.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(65, 'subscriptions', 'subscription-payment-succeeded', 'english', 'Subscription Payment Succeeded (Sent to customer primary contact)', 'Subscription  Payment Receipt - {subscription_name}', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />This email is to let you know that we received your payment for subscription&nbsp;<strong>{subscription_name}&nbsp;</strong>of&nbsp;<strong><span>{payment_total}<br /><br /></span></strong>The invoice associated with it is now with status&nbsp;<strong>{invoice_status}<br /></strong><br />Thank you for your confidence.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(66, 'contract', 'contract-expiration-to-staff', 'english', 'Contract Expiration Reminder (Sent to Staff)', 'Contract Expiration Reminder', 'Hi {staff_firstname}<br /><br /><span style=\"font-size: 12pt;\">This is a reminder that the following contract will expire soon:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {contract_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Description:</strong> {contract_description}</span><br /><span style=\"font-size: 12pt;\"><strong>Date Start:</strong> {contract_datestart}</span><br /><span style=\"font-size: 12pt;\"><strong>Date End:</strong> {contract_dateend}</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(67, 'gdpr', 'gdpr-removal-request', 'english', 'Removal Request From Contact (Sent to administrators)', 'Data Removal Request Received', 'Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />Data removal has been requested by&nbsp;{contact_firstname} {contact_lastname}<br /><br />You can review this request and take proper actions directly from the admin area.', '{companyname} | CRM', '', 0, 1, 0),
(68, 'gdpr', 'gdpr-removal-request-lead', 'english', 'Removal Request From Lead (Sent to administrators)', 'Data Removal Request Received', 'Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />Data removal has been requested by {lead_name}<br /><br />You can review this request and take proper actions directly from the admin area.<br /><br />To view the lead inside the admin area click here:&nbsp;<a href=\"{lead_link}\">{lead_link}</a>', '{companyname} | CRM', '', 0, 1, 0),
(69, 'client', 'client-registration-confirmed', 'english', 'Customer Registration Confirmed', 'Your registration is confirmed', '<p>Dear {contact_firstname} {contact_lastname}<br /><br />We just wanted to let you know that your registration at&nbsp;{companyname} is successfully confirmed and your account is now active.<br /><br />You can login at&nbsp;<a href=\"{crm_url}\">{crm_url}</a> with the email and password you provided during registration.<br /><br />Please contact us if you need any help.<br /><br />Kind Regards, <br />{email_signature}</p>\r\n<p><br />(This is an automated email, so please don\'t reply to this email address)</p>', '{companyname} | CRM', '', 0, 1, 0),
(70, 'contract', 'contract-signed-to-staff', 'english', 'Contract Signed (Sent to Staff)', 'Customer Signed a Contract', 'Hi {staff_firstname}<br /><br />A contract with subject&nbsp;<strong>{contract_subject} </strong>has been successfully signed by the customer.<br /><br />You can view the contract at the following link: <a href=\"{contract_link}\">{contract_subject}</a>&nbsp;or from the admin area.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(71, 'subscriptions', 'customer-subscribed-to-staff', 'english', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator)', 'Customer Subscribed to a Subscription', 'The customer <strong>{client_company}</strong> subscribed to a subscription with name&nbsp;<strong>{subscription_name}</strong><br /><br /><strong>ID</strong>:&nbsp;{subscription_id}<br /><strong>Subscription name</strong>:&nbsp;{subscription_name}<br /><strong>Subscription description</strong>:&nbsp;{subscription_description}<br /><br />You can view the subscription by clicking <a href=\"{subscription_link}\">here</a><br />\r\n<div style=\"text-align: center;\"><span style=\"font-size: 10pt;\">&nbsp;</span></div>\r\nBest Regards,<br />{email_signature}<br /><br /><span style=\"font-size: 10pt;\"><span style=\"color: #999999;\">You are receiving this email because you are either administrator or you are creator of the subscription.</span></span>', '{companyname} | CRM', '', 0, 1, 0),
(72, 'client', 'contact-verification-email', 'english', 'Email Verification (Sent to Contact After Registration)', 'Verify Email Address', '<p>Hello&nbsp;{contact_firstname}<br /><br />Please click the button below to verify your email address.<br /><br /><a href=\"{email_verification_url}\">Verify Email Address</a><br /><br />If you did not create an account, no further action is required</p>\r\n<p><br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(73, 'client', 'new-customer-profile-file-uploaded-to-staff', 'english', 'New Customer Profile File(s) Uploaded (Sent to Staff)', 'Customer Uploaded New File(s) in Profile', 'Hi!<br /><br />New file(s) is uploaded into the customer ({client_company}) profile by&nbsp;{contact_firstname}<br /><br />You can check the uploaded files into the admin area by clicking <a href=\"{customer_profile_files_admin_link}\">here</a> or at the following link:&nbsp;{customer_profile_files_admin_link}<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(74, 'staff', 'event-notification-to-staff', 'english', 'Event Notification (Calendar)', 'Upcoming Event - {event_title}', 'Hi {staff_firstname}! <br /><br />This is a reminder for event <a href=\\\"{event_link}\\\">{event_title}</a> scheduled at {event_start_date}. <br /><br />Regards.', '', '', 0, 1, 0),
(75, 'subscriptions', 'subscription-payment-requires-action', 'english', 'Credit Card Authorization Required - SCA', 'Important: Confirm your subscription {subscription_name} payment', '<p>Hello {contact_firstname}</p>\r\n<p><strong>Your bank sometimes requires an additional step to make sure an online transaction was authorized.</strong><br /><br />Because of European regulation to protect consumers, many online payments now require two-factor authentication. Your bank ultimately decides when authentication is required to confirm a payment, but you may notice this step when you start paying for a service or when the cost changes.<br /><br />In order to pay the subscription <strong>{subscription_name}</strong>, you will need to&nbsp;confirm your payment by clicking on the follow link: <strong><a href=\"{subscription_authorize_payment_link}\">{subscription_authorize_payment_link}</a></strong><br /><br />To view the subscription, please click at the following link: <a href=\"{subscription_link}\"><span>{subscription_link}</span></a><br />or you can login in our dedicated area here: <a href=\"{crm_url}/login\">{crm_url}/login</a> in case you want to update your credit card or view the subscriptions you are subscribed.<br /><br />Best Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(76, 'invoice', 'invoice-due-notice', 'english', 'Invoice Due Notice', 'Your {invoice_number} will be due soon', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}<br /><br /></span>You invoice <span style=\"font-size: 12pt;\"><strong># {invoice_number} </strong>will be due on <strong>{invoice_duedate}</strong></span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(77, 'estimate_request', 'estimate-request-submitted-to-staff', 'english', 'Estimate Request Submitted (Sent to Staff)', 'New Estimate Request Submitted', '<span> Hello,&nbsp;</span><br /><br />{estimate_request_email} submitted an estimate request via the {estimate_request_form_name} form.<br /><br />You can view the request at the following link: <a href=\"{estimate_request_link}\">{estimate_request_link}</a><br /><br />==<br /><br />{estimate_request_submitted_data}<br /><br />Kind Regards,<br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(78, 'estimate_request', 'estimate-request-assigned', 'english', 'Estimate Request Assigned (Sent to Staff)', 'New Estimate Request Assigned', '<span> Hello {estimate_request_assigned},&nbsp;</span><br /><br />Estimate request #{estimate_request_id} has been assigned to you.<br /><br />You can view the request at the following link: <a href=\"{estimate_request_link}\">{estimate_request_link}</a><br /><br />Kind Regards,<br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(79, 'estimate_request', 'estimate-request-received-to-user', 'english', 'Estimate Request Received (Sent to User)', 'Estimate Request Received', 'Hello,<br /><br /><strong>Your request has been received.</strong><br /><br />This email is to let you know that we received your request and we will get back to you as soon as possible with more information.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 0, 0),
(80, 'notifications', 'non-billed-tasks-reminder', 'english', 'Non-billed tasks reminder (sent to selected staff members)', 'Action required: Completed tasks are not billed', 'Hello {staff_firstname}<br><br>The following tasks are marked as complete but not yet billed:<br><br>{unbilled_tasks_list}<br><br>Kind Regards,<br><br>{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(81, 'invoice', 'invoices-batch-payments', 'english', 'Invoices Payments Recorded in Batch (Sent to Customer)', 'We have received your payments', 'Hello {contact_firstname} {contact_lastname}<br><br>Thank you for the payments. Please find the payments details below:<br><br>{batch_payments_list}<br><br>We are looking forward working with you.<br><br>Kind Regards,<br><br>{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(82, 'contract', 'contract-sign-reminder', 'english', 'Contract Sign Reminder (Sent to Customer)', 'Contract Sign Reminder', '<p>Hello {contact_firstname} {contact_lastname}<br /><br />This is a reminder to review and sign the contract:<a href=\"{contract_link}\">{contract_subject}</a></p><p>You can view and sign by visiting: <a href=\"{contract_link}\">{contract_subject}</a></p><p><br />We are looking forward working with you.<br /><br />Kind Regards,<br /><br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblestimates`
--

CREATE TABLE `tblestimates` (
  `id` int(11) NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT 0,
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT 0,
  `hash` varchar(32) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `expirydate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `clientnote` mediumtext DEFAULT NULL,
  `adminnote` mediumtext DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `discount_type` varchar(30) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `invoiced_date` datetime DEFAULT NULL,
  `terms` mediumtext DEFAULT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT 0,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_estimate` tinyint(1) NOT NULL DEFAULT 1,
  `show_quantity_as` int(11) NOT NULL DEFAULT 1,
  `pipeline_order` int(11) DEFAULT 1,
  `is_expiry_notified` int(11) NOT NULL DEFAULT 0,
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL,
  `short_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblestimates`
--

INSERT INTO `tblestimates` (`id`, `sent`, `datesend`, `clientid`, `deleted_customer_name`, `project_id`, `number`, `prefix`, `number_format`, `hash`, `datecreated`, `date`, `expirydate`, `currency`, `subtotal`, `total_tax`, `total`, `adjustment`, `addedfrom`, `status`, `clientnote`, `adminnote`, `discount_percent`, `discount_total`, `discount_type`, `invoiceid`, `invoiced_date`, `terms`, `reference_no`, `sale_agent`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `include_shipping`, `show_shipping_on_estimate`, `show_quantity_as`, `pipeline_order`, `is_expiry_notified`, `acceptance_firstname`, `acceptance_lastname`, `acceptance_email`, `acceptance_date`, `acceptance_ip`, `signature`, `short_link`) VALUES
(2, 0, NULL, 3, NULL, 0, 1, 'EST-', 1, '675e31ee68e6364e6ec5e0568d097314', '2024-08-20 19:40:35', '2024-08-20', '2024-08-27', 3, 1450.00, 0.00, 1400.00, 0.00, 1, 1, '', '', 0.00, 50.00, 'before_tax', NULL, NULL, 'Terms and Conditions:<br />\r\n• The above product and services mentioned are covered in this quotation.<br />\r\n• This quotation excl udes civil works.<br />\r\n• Any additional items or services will be invoiced separately.<br />\r\nPayment Term:<br />\r\n• 50% Advanced and 50% Upon project / Services completion or Product Delivered<br />\r\n• Payment is due from the delivery of the Product/Services.<br />\r\n• The payment options available are as agreed upon, including Cash, Cheque, and Online Bank<br />\r\nTransfer.<br />\r\n<br />\r\n<br />\r\n<br />\r\nService Advisor -------------------------------                                                                                  Customer Sign------------------------------------', 'QIC Insurance', 1, '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 0, NULL, 3, NULL, 0, 2, 'Job-', 2, 'add5bc682d5f99c318c8c8aa231ee724', '2024-08-21 10:45:07', '2024-08-21', '2024-08-28', 3, 3060.00, 0.00, 3010.00, 0.00, 1, 4, '', '', 0.00, 50.00, 'after_tax', 2, '2024-08-21 10:49:34', '• The above product and services mentioned are covered in this quotation.<br />\r\n• This quotation excl udes civil works.<br />\r\n• Any additional items or services will be invoiced separately.<br />\r\nPayment Term:<br />\r\n• 50% Advanced and 50% Upon project / Services completion or Product Delivered<br />\r\n• Payment is due from the delivery of the Product/Services.<br />\r\n• The payment options available are as agreed upon, including Cash, Cheque, and Online Bank<br />\r\nTransfer.', 'QIC Insurance', 1, '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 0, NULL, 2, NULL, 0, 3, 'Job-', 2, 'aaf29630d12ea7827ec178ddd04d426d', '2024-08-21 11:59:13', '2024-08-21', '2024-08-28', 3, 200.00, 0.00, 150.00, 0.00, 1, 1, '', '', 0.00, 50.00, 'before_tax', NULL, NULL, '', 'QIC Insurance', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 0, NULL, 3, NULL, 0, 4, 'Job-', 2, '752aa77ec34a60c2a4b66f8f3ebbad39', '2024-08-21 12:04:04', '2024-08-21', '2024-08-28', 3, 400.00, 0.00, 400.00, 0.00, 1, 4, 'Test Client Note', '', 0.00, 0.00, '', NULL, NULL, '', 'QIC Insurance', 1, '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 0, NULL, NULL, NULL, '2024-08-27 19:32:06', '::1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblestimate_requests`
--

CREATE TABLE `tblestimate_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `submission` longtext NOT NULL,
  `last_status_change` datetime DEFAULT NULL,
  `date_estimated` datetime DEFAULT NULL,
  `from_form_id` int(11) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `default_language` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblestimate_request_forms`
--

CREATE TABLE `tblestimate_request_forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_key` varchar(32) NOT NULL,
  `type` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `form_data` longtext DEFAULT NULL,
  `recaptcha` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `submit_btn_name` varchar(100) DEFAULT NULL,
  `submit_btn_bg_color` varchar(10) DEFAULT '#84c529',
  `submit_btn_text_color` varchar(10) DEFAULT '#ffffff',
  `success_submit_msg` mediumtext DEFAULT NULL,
  `submit_action` int(11) DEFAULT 0,
  `submit_redirect_url` longtext DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `notify_type` varchar(100) DEFAULT NULL,
  `notify_ids` longtext DEFAULT NULL,
  `responsible` int(11) DEFAULT NULL,
  `notify_request_submitted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblestimate_request_forms`
--

INSERT INTO `tblestimate_request_forms` (`id`, `form_key`, `type`, `name`, `form_data`, `recaptcha`, `status`, `submit_btn_name`, `submit_btn_bg_color`, `submit_btn_text_color`, `success_submit_msg`, `submit_action`, `submit_redirect_url`, `language`, `dateadded`, `notify_type`, `notify_ids`, `responsible`, `notify_request_submitted`) VALUES
(1, 'ce356405a9ee47e5230cbf7cd3aa2f53', '', 'Mohammed ', NULL, NULL, 2, 'Submit', '#84c529', '#ffffff', 'hi', 0, '', 'english', '2024-08-20 16:53:12', 'specific_staff', 'a:0:{}', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblestimate_request_status`
--

CREATE TABLE `tblestimate_request_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `statusorder` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `flag` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblestimate_request_status`
--

INSERT INTO `tblestimate_request_status` (`id`, `name`, `statusorder`, `color`, `flag`) VALUES
(1, 'Cancelled', 1, '#808080', 'cancelled'),
(2, 'Processing', 2, '#007bff', 'processing'),
(3, 'Completed', 3, '#28a745', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `tblevents`
--

CREATE TABLE `tblevents` (
  `eventid` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT 0,
  `color` varchar(10) DEFAULT NULL,
  `isstartnotified` tinyint(1) NOT NULL DEFAULT 0,
  `reminder_before` int(11) NOT NULL DEFAULT 0,
  `reminder_before_type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblexpenses`
--

CREATE TABLE `tblexpenses` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `currency` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) NOT NULL DEFAULT 0,
  `reference_no` varchar(100) DEFAULT NULL,
  `note` mediumtext DEFAULT NULL,
  `expense_name` varchar(191) DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `billable` int(11) DEFAULT 0,
  `invoiceid` int(11) DEFAULT NULL,
  `paymentmode` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT 0,
  `cycles` int(11) NOT NULL DEFAULT 0,
  `total_cycles` int(11) NOT NULL DEFAULT 0,
  `custom_recurring` int(11) NOT NULL DEFAULT 0,
  `last_recurring_date` date DEFAULT NULL,
  `create_invoice_billable` tinyint(1) DEFAULT NULL,
  `send_invoice_to_customer` tinyint(1) NOT NULL,
  `recurring_from` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `vendor` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `date_paid` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_bill` int(11) NOT NULL DEFAULT 0,
  `reason_for_void` text DEFAULT NULL,
  `voided` int(11) NOT NULL DEFAULT 0,
  `approved` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblexpenses_categories`
--

CREATE TABLE `tblexpenses_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblexpenses_categories`
--

INSERT INTO `tblexpenses_categories` (`id`, `name`, `description`) VALUES
(1, 'Salary', ''),
(2, 'Paint Material', ''),
(3, 'Office Accessories', ''),
(4, 'Garage Rent', ''),
(5, 'Employee QID Renewal', ''),
(6, 'Kahramaa Bill', ''),
(7, 'Telephone and Mobile', ''),
(8, 'Fuel', ''),
(9, 'Commission', ''),
(10, 'Garage Tools', ''),
(11, 'Garage Maintenance', ''),
(12, 'Others', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblfiles`
--

CREATE TABLE `tblfiles` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `filetype` varchar(40) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT 0,
  `attachment_key` varchar(32) DEFAULT NULL,
  `external` varchar(40) DEFAULT NULL,
  `external_link` mediumtext DEFAULT NULL,
  `thumbnail_link` mediumtext DEFAULT NULL COMMENT 'For external usage',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT 0,
  `task_comment_id` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblfilters`
--

CREATE TABLE `tblfilters` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `builder` mediumtext NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(191) NOT NULL,
  `is_shared` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblfilter_defaults`
--

CREATE TABLE `tblfilter_defaults` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(11) NOT NULL,
  `identifier` varchar(191) NOT NULL,
  `view` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_questions`
--

CREATE TABLE `tblform_questions` (
  `questionid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `question` longtext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `question_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_question_box`
--

CREATE TABLE `tblform_question_box` (
  `boxid` int(11) NOT NULL,
  `boxtype` varchar(10) NOT NULL,
  `questionid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_question_box_description`
--

CREATE TABLE `tblform_question_box_description` (
  `questionboxdescriptionid` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `boxid` longtext NOT NULL,
  `questionid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_results`
--

CREATE TABLE `tblform_results` (
  `resultid` int(11) NOT NULL,
  `boxid` int(11) NOT NULL,
  `boxdescriptionid` int(11) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `questionid` int(11) NOT NULL,
  `answer` mediumtext DEFAULT NULL,
  `resultsetid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblgdpr_requests`
--

CREATE TABLE `tblgdpr_requests` (
  `id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL DEFAULT 0,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `lead_id` int(11) NOT NULL DEFAULT 0,
  `request_type` varchar(191) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `request_date` datetime NOT NULL,
  `request_from` varchar(150) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoicepaymentrecords`
--

CREATE TABLE `tblinvoicepaymentrecords` (
  `id` int(11) NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `paymentmode` varchar(40) DEFAULT NULL,
  `paymentmethod` varchar(191) DEFAULT NULL,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` mediumtext DEFAULT NULL,
  `transactionid` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblinvoicepaymentrecords`
--

INSERT INTO `tblinvoicepaymentrecords` (`id`, `invoiceid`, `amount`, `paymentmode`, `paymentmethod`, `date`, `daterecorded`, `note`, `transactionid`) VALUES
(2, 2, 1000.00, '2', NULL, '2024-08-21', '2024-08-21 10:52:41', '', ''),
(3, 2, 500.00, '2', NULL, '2024-08-21', '2024-08-21 12:22:40', 'Balance Due Amount', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoices`
--

CREATE TABLE `tblinvoices` (
  `id` int(11) NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT 0,
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT 0,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `status` int(11) DEFAULT 1,
  `clientnote` mediumtext DEFAULT NULL,
  `adminnote` mediumtext DEFAULT NULL,
  `last_overdue_reminder` date DEFAULT NULL,
  `last_due_reminder` date DEFAULT NULL,
  `cancel_overdue_reminders` int(11) NOT NULL DEFAULT 0,
  `allowed_payment_modes` longtext DEFAULT NULL,
  `token` longtext DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `discount_type` varchar(30) NOT NULL,
  `recurring` int(11) NOT NULL DEFAULT 0,
  `recurring_type` varchar(10) DEFAULT NULL,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT 0,
  `cycles` int(11) NOT NULL DEFAULT 0,
  `total_cycles` int(11) NOT NULL DEFAULT 0,
  `is_recurring_from` int(11) DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `terms` mediumtext DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT 0,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_invoice` tinyint(1) NOT NULL DEFAULT 1,
  `show_quantity_as` int(11) NOT NULL DEFAULT 1,
  `project_id` int(11) DEFAULT 0,
  `subscription_id` int(11) NOT NULL DEFAULT 0,
  `short_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblinvoices`
--

INSERT INTO `tblinvoices` (`id`, `sent`, `datesend`, `clientid`, `deleted_customer_name`, `number`, `prefix`, `number_format`, `datecreated`, `date`, `duedate`, `currency`, `subtotal`, `total_tax`, `total`, `adjustment`, `addedfrom`, `hash`, `status`, `clientnote`, `adminnote`, `last_overdue_reminder`, `last_due_reminder`, `cancel_overdue_reminders`, `allowed_payment_modes`, `token`, `discount_percent`, `discount_total`, `discount_type`, `recurring`, `recurring_type`, `custom_recurring`, `cycles`, `total_cycles`, `is_recurring_from`, `last_recurring_date`, `terms`, `sale_agent`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `include_shipping`, `show_shipping_on_invoice`, `show_quantity_as`, `project_id`, `subscription_id`, `short_link`) VALUES
(2, 0, NULL, 3, NULL, 1, 'INV-', 2, '2024-08-21 10:49:33', '2024-08-21', '2024-09-20', 3, 2800.00, 0.00, 2750.00, 0.00, 1, 'a21c22a946c5817eeec538c60ef30066', 3, 'Note: Payment NOte for Invoice', '', NULL, NULL, 0, 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}', NULL, 0.00, 50.00, 'after_tax', 0, NULL, 0, 0, 0, NULL, NULL, '', 1, '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblitemable`
--

CREATE TABLE `tblitemable` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `description` longtext NOT NULL,
  `long_description` longtext DEFAULT NULL,
  `qty` decimal(15,2) NOT NULL,
  `rate` decimal(15,2) NOT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblitemable`
--

INSERT INTO `tblitemable` (`id`, `rel_id`, `rel_type`, `description`, `long_description`, `qty`, `rate`, `unit`, `item_order`) VALUES
(10, 2, 'estimate', 'Break', 'Change', 1.00, 200.00, '', 1),
(11, 2, 'estimate', 'Light', 'Change', 2.00, 500.00, '', 2),
(12, 2, 'estimate', 'Door', 'Repair', 1.00, 250.00, '', 3),
(13, 3, 'estimate', 'Head Light', 'Change', 2.00, 500.00, '', 1),
(14, 3, 'estimate', 'Door Right Side', 'Repair', 1.00, 500.00, '', 2),
(15, 3, 'estimate', 'Break', 'Change', 2.00, 400.00, '', 3),
(16, 3, 'estimate', 'Labor Charge', '', 1.00, 500.00, '', 4),
(17, 2, 'invoice', 'Head Light', 'Change', 2.00, 500.00, '', 1),
(18, 2, 'invoice', 'Door Right Side', 'Repair', 1.00, 500.00, '', 2),
(19, 2, 'invoice', 'Break', 'Change', 2.00, 400.00, '', 3),
(20, 2, 'invoice', 'Labor Charge', '', 1.00, 500.00, '', 4),
(21, 3, 'estimate', 'Tyre', '', 2.00, 130.00, '', 5),
(22, 4, 'estimate', 'tyre', '', 1.00, 200.00, '', 1),
(23, 5, 'estimate', 'glass', '', 1.00, 400.00, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblitems`
--

CREATE TABLE `tblitems` (
  `id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `long_description` mediumtext DEFAULT NULL,
  `rate` decimal(15,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) DEFAULT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblitems`
--

INSERT INTO `tblitems` (`id`, `description`, `long_description`, `rate`, `tax`, `tax2`, `unit`, `group_id`) VALUES
(1, 'Computer', '- i5\r\n-256hdd', 2000.00, NULL, NULL, '1', 0),
(2, 'Laptop', '-i7\r\n-SSD', 2500.00, NULL, NULL, '2', 0),
(3, 'Laptop', '', 2011.00, NULL, NULL, '2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblitems_groups`
--

CREATE TABLE `tblitems_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblitem_tax`
--

CREATE TABLE `tblitem_tax` (
  `id` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `taxrate` decimal(15,2) NOT NULL,
  `taxname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowedge_base_article_feedback`
--

CREATE TABLE `tblknowedge_base_article_feedback` (
  `articleanswerid` int(11) NOT NULL,
  `articleid` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowledge_base`
--

CREATE TABLE `tblknowledge_base` (
  `articleid` int(11) NOT NULL,
  `articlegroup` int(11) NOT NULL,
  `subject` longtext NOT NULL,
  `description` mediumtext NOT NULL,
  `slug` longtext NOT NULL,
  `active` tinyint(4) NOT NULL,
  `datecreated` datetime NOT NULL,
  `article_order` int(11) NOT NULL DEFAULT 0,
  `staff_article` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowledge_base_groups`
--

CREATE TABLE `tblknowledge_base_groups` (
  `groupid` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `group_slug` mediumtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `group_order` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblleads`
--

CREATE TABLE `tblleads` (
  `id` int(11) NOT NULL,
  `hash` varchar(65) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT 0,
  `zip` varchar(15) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `assigned` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL,
  `from_form_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `lastcontact` datetime DEFAULT NULL,
  `dateassigned` date DEFAULT NULL,
  `last_status_change` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `leadorder` int(11) DEFAULT 1,
  `phonenumber` varchar(50) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `lost` tinyint(1) NOT NULL DEFAULT 0,
  `junk` int(11) NOT NULL DEFAULT 0,
  `last_lead_status` int(11) NOT NULL DEFAULT 0,
  `is_imported_from_email_integration` tinyint(1) NOT NULL DEFAULT 0,
  `email_integration_uid` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 0,
  `default_language` varchar(40) DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `lead_value` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblleads_email_integration`
--

CREATE TABLE `tblleads_email_integration` (
  `id` int(11) NOT NULL COMMENT 'the ID always must be 1',
  `active` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `imap_server` varchar(100) NOT NULL,
  `password` longtext NOT NULL,
  `check_every` int(11) NOT NULL DEFAULT 5,
  `responsible` int(11) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `encryption` varchar(3) DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `last_run` varchar(50) DEFAULT NULL,
  `notify_lead_imported` tinyint(1) NOT NULL DEFAULT 1,
  `notify_lead_contact_more_times` tinyint(1) NOT NULL DEFAULT 1,
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` longtext DEFAULT NULL,
  `mark_public` int(11) NOT NULL DEFAULT 0,
  `only_loop_on_unseen_emails` tinyint(1) NOT NULL DEFAULT 1,
  `delete_after_import` int(11) NOT NULL DEFAULT 0,
  `create_task_if_customer` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblleads_email_integration`
--

INSERT INTO `tblleads_email_integration` (`id`, `active`, `email`, `imap_server`, `password`, `check_every`, `responsible`, `lead_source`, `lead_status`, `encryption`, `folder`, `last_run`, `notify_lead_imported`, `notify_lead_contact_more_times`, `notify_type`, `notify_ids`, `mark_public`, `only_loop_on_unseen_emails`, `delete_after_import`, `create_task_if_customer`) VALUES
(1, 0, '', '', '', 10, 0, 0, 0, 'tls', 'INBOX', '', 1, 1, 'assigned', '', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblleads_sources`
--

CREATE TABLE `tblleads_sources` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblleads_sources`
--

INSERT INTO `tblleads_sources` (`id`, `name`) VALUES
(2, 'Facebook'),
(1, 'Google');

-- --------------------------------------------------------

--
-- Table structure for table `tblleads_status`
--

CREATE TABLE `tblleads_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `statusorder` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `isdefault` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblleads_status`
--

INSERT INTO `tblleads_status` (`id`, `name`, `statusorder`, `color`, `isdefault`) VALUES
(1, 'Customer', 1000, '#7cb342', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbllead_activity_log`
--

CREATE TABLE `tbllead_activity_log` (
  `id` int(11) NOT NULL,
  `leadid` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `additional_data` mediumtext DEFAULT NULL,
  `date` datetime NOT NULL,
  `staffid` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `custom_activity` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbllead_integration_emails`
--

CREATE TABLE `tbllead_integration_emails` (
  `id` int(11) NOT NULL,
  `subject` longtext DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `leadid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblmail_queue`
--

CREATE TABLE `tblmail_queue` (
  `id` int(11) NOT NULL,
  `engine` varchar(40) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `cc` mediumtext DEFAULT NULL,
  `bcc` mediumtext DEFAULT NULL,
  `message` longtext NOT NULL,
  `alt_message` longtext DEFAULT NULL,
  `status` enum('pending','sending','sent','failed') DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `headers` mediumtext DEFAULT NULL,
  `attachments` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblmigrations`
--

CREATE TABLE `tblmigrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblmigrations`
--

INSERT INTO `tblmigrations` (`version`) VALUES
(316);

-- --------------------------------------------------------

--
-- Table structure for table `tblmilestones`
--

CREATE TABLE `tblmilestones` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `description_visible_to_customer` tinyint(1) DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `due_date` date NOT NULL,
  `project_id` int(11) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  `milestone_order` int(11) NOT NULL DEFAULT 0,
  `datecreated` date NOT NULL,
  `hide_from_customer` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblmodules`
--

CREATE TABLE `tblmodules` (
  `id` int(11) NOT NULL,
  `module_name` varchar(55) NOT NULL,
  `installed_version` varchar(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblmodules`
--

INSERT INTO `tblmodules` (`id`, `module_name`, `installed_version`, `active`) VALUES
(1, 'accounting', '1.3.4', 1),
(2, 'backup', '2.3.0', 1),
(3, 'exports', '1.0.0', 1),
(4, 'menu_setup', '2.3.0', 1),
(5, 'theme_style', '2.3.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_comment_likes`
--

CREATE TABLE `tblnewsfeed_comment_likes` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_posts`
--

CREATE TABLE `tblnewsfeed_posts` (
  `postid` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `visibility` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `pinned` int(11) NOT NULL,
  `datepinned` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_post_comments`
--

CREATE TABLE `tblnewsfeed_post_comments` (
  `id` int(11) NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_post_likes`
--

CREATE TABLE `tblnewsfeed_post_likes` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblnotes`
--

CREATE TABLE `tblnotes` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `date_contacted` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblnotifications`
--

CREATE TABLE `tblnotifications` (
  `id` int(11) NOT NULL,
  `isread` int(11) NOT NULL DEFAULT 0,
  `isread_inline` tinyint(1) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL,
  `description` mediumtext NOT NULL,
  `fromuserid` int(11) NOT NULL,
  `fromclientid` int(11) NOT NULL DEFAULT 0,
  `from_fullname` varchar(100) NOT NULL,
  `touserid` int(11) NOT NULL,
  `fromcompany` int(11) DEFAULT NULL,
  `link` longtext DEFAULT NULL,
  `additional_data` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblnotifications`
--

INSERT INTO `tblnotifications` (`id`, `isread`, `isread_inline`, `date`, `description`, `fromuserid`, `fromclientid`, `from_fullname`, `touserid`, `fromcompany`, `link`, `additional_data`) VALUES
(1, 1, 1, '2024-08-20 16:21:53', 'not_proposal_proposal_accepted', 0, 0, '', 1, 1, 'proposals/list_proposals/1', 'a:1:{i:0;s:10:\"PRO-000001\";}'),
(2, 1, 1, '2024-08-26 19:11:57', 'not_customer_viewed_estimate', 0, 0, '', 1, 1, 'estimates/list_estimates/5', 'a:1:{i:0;s:15:\"Job-2024/000004\";}'),
(3, 1, 1, '2024-08-26 19:55:34', 'not_customer_viewed_invoice', 0, 0, '', 1, 1, 'invoices/list_invoices/2', 'a:1:{i:0;s:15:\"INV-2024/000001\";}'),
(4, 0, 0, '2024-08-27 19:32:05', 'not_estimate_customer_accepted', 0, 0, '', 1, 1, 'estimates/list_estimates/5', 'a:1:{i:0;s:15:\"Job-2024/000004\";}');

-- --------------------------------------------------------

--
-- Table structure for table `tbloptions`
--

CREATE TABLE `tbloptions` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` longtext NOT NULL,
  `autoload` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbloptions`
--

INSERT INTO `tbloptions` (`id`, `name`, `value`, `autoload`) VALUES
(1, 'dateformat', 'd/m/Y|%d/%m/%Y', 1),
(2, 'companyname', 'Al Raed Automobile Services', 1),
(3, 'services', '1', 1),
(4, 'maximum_allowed_ticket_attachments', '4', 1),
(5, 'ticket_attachments_file_extensions', '.jpg,.png,.pdf,.doc,.zip,.rar', 1),
(6, 'staff_access_only_assigned_departments', '1', 1),
(7, 'use_knowledge_base', '0', 1),
(8, 'smtp_email', '', 1),
(9, 'smtp_password', '', 1),
(10, 'company_info_format', '{company_name}<br />\r\n      {address}<br />\r\n      {city} {state}<br />\r\n      {country_code} {zip_code}<br />\r\n      {vat_number_with_label}', 0),
(11, 'smtp_port', '', 1),
(12, 'smtp_host', '', 1),
(13, 'smtp_email_charset', 'utf-8', 1),
(14, 'default_timezone', 'Asia/Qatar', 1),
(15, 'clients_default_theme', 'perfex', 1),
(16, 'company_logo', '804911d5528adf9194dac5a9304aef65.png', 1),
(17, 'tables_pagination_limit', '25', 1),
(18, 'main_domain', 'www.alraedautomobile.com', 1),
(19, 'allow_registration', '0', 1),
(20, 'knowledge_base_without_registration', '1', 1),
(21, 'email_signature', '', 1),
(22, 'default_staff_role', '1', 1),
(23, 'newsfeed_maximum_files_upload', '10', 1),
(24, 'contract_expiration_before', '0', 1),
(25, 'invoice_prefix', 'INV-', 1),
(26, 'decimal_separator', '.', 1),
(27, 'thousand_separator', ',', 1),
(28, 'invoice_company_name', 'Al Raed Automobile Services', 1),
(29, 'invoice_company_address', 'East Industrial Area, Al Rayan Road, Street No 40, Gate No 01', 1),
(30, 'invoice_company_city', 'Doha', 1),
(31, 'invoice_company_country_code', '974', 1),
(32, 'invoice_company_postal_code', '', 1),
(33, 'invoice_company_phonenumber', '4478 3711', 1),
(34, 'view_invoice_only_logged_in', '0', 1),
(35, 'invoice_number_format', '2', 1),
(36, 'next_invoice_number', '2', 0),
(37, 'active_language', 'english', 1),
(38, 'invoice_number_decrement_on_delete', '1', 1),
(39, 'automatically_send_invoice_overdue_reminder_after', '0', 1),
(40, 'automatically_resend_invoice_overdue_reminder_after', '0', 1),
(41, 'expenses_auto_operations_hour', '0', 1),
(42, 'delete_only_on_last_invoice', '1', 1),
(43, 'delete_only_on_last_estimate', '1', 1),
(44, 'create_invoice_from_recurring_only_on_paid_invoices', '0', 1),
(45, 'allow_payment_amount_to_be_modified', '1', 1),
(46, 'rtl_support_client', '0', 1),
(47, 'limit_top_search_bar_results_to', '10', 1),
(48, 'estimate_prefix', 'Job-', 1),
(49, 'next_estimate_number', '5', 0),
(50, 'estimate_number_decrement_on_delete', '1', 1),
(51, 'estimate_number_format', '2', 1),
(52, 'estimate_auto_convert_to_invoice_on_client_accept', '0', 1),
(53, 'exclude_estimate_from_client_area_with_draft_status', '1', 1),
(54, 'rtl_support_admin', '0', 1),
(55, 'last_cron_run', '1724648407', 1),
(56, 'show_sale_agent_on_estimates', '0', 1),
(57, 'show_sale_agent_on_invoices', '0', 1),
(58, 'predefined_terms_invoice', '', 1),
(59, 'predefined_terms_estimate', '', 1),
(60, 'default_task_priority', '2', 1),
(61, 'dropbox_app_key', '', 1),
(62, 'show_expense_reminders_on_calendar', '1', 1),
(63, 'only_show_contact_tickets', '1', 1),
(64, 'predefined_clientnote_invoice', '', 1),
(65, 'predefined_clientnote_estimate', '', 1),
(66, 'custom_pdf_logo_image_url', '', 1),
(67, 'favicon', 'favicon.png', 1),
(68, 'invoice_due_after', '30', 1),
(69, 'google_api_key', '', 1),
(70, 'google_calendar_main_calendar', '', 1),
(71, 'default_tax', 'a:0:{}', 1),
(72, 'show_invoices_on_calendar', '1', 1),
(73, 'show_estimates_on_calendar', '1', 1),
(74, 'show_contracts_on_calendar', '1', 1),
(75, 'show_tasks_on_calendar', '1', 1),
(76, 'show_customer_reminders_on_calendar', '1', 1),
(77, 'output_client_pdfs_from_admin_area_in_client_language', '1', 1),
(78, 'show_lead_reminders_on_calendar', '1', 1),
(79, 'send_estimate_expiry_reminder_before', '0', 1),
(80, 'leads_default_source', '', 1),
(81, 'leads_default_status', '', 1),
(82, 'proposal_expiry_reminder_enabled', '1', 1),
(83, 'send_proposal_expiry_reminder_before', '0', 1),
(84, 'default_contact_permissions', 'a:6:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";}', 1),
(85, 'pdf_logo_width', '150', 1),
(86, 'access_tickets_to_none_staff_members', '0', 1),
(87, 'customer_default_country', '179', 1),
(88, 'view_estimate_only_logged_in', '0', 1),
(89, 'show_status_on_pdf_ei', '1', 1),
(90, 'email_piping_only_replies', '0', 1),
(91, 'email_piping_only_registered', '0', 1),
(92, 'default_view_calendar', 'dayGridMonth', 1),
(93, 'email_piping_default_priority', '2', 1),
(94, 'total_to_words_lowercase', '0', 1),
(95, 'show_tax_per_item', '0', 1),
(96, 'total_to_words_enabled', '1', 1),
(97, 'receive_notification_on_new_ticket', '1', 0),
(98, 'autoclose_tickets_after', '0', 1),
(99, 'media_max_file_size_upload', '10', 1),
(100, 'client_staff_add_edit_delete_task_comments_first_hour', '0', 1),
(101, 'show_projects_on_calendar', '1', 1),
(102, 'leads_kanban_limit', '50', 1),
(103, 'tasks_reminder_notification_before', '0', 1),
(104, 'pdf_font', 'freesans', 1),
(105, 'pdf_table_heading_color', '#323a45', 1),
(106, 'pdf_table_heading_text_color', '#ffffff', 1),
(107, 'pdf_font_size', '10', 1),
(108, 'default_leads_kanban_sort', 'leadorder', 1),
(109, 'default_leads_kanban_sort_type', 'asc', 1),
(110, 'allowed_files', '.png,.jpg,.pdf,.doc,.docx,.xls,.xlsx,.zip,.rar,.txt', 1),
(111, 'show_all_tasks_for_project_member', '1', 1),
(112, 'email_protocol', 'smtp', 1),
(113, 'calendar_first_day', '6', 1),
(114, 'recaptcha_secret_key', '6LdPRi4qAAAAABrWbq6b0JLbrwzc6LylVtT3pYoh', 1),
(115, 'show_help_on_setup_menu', '1', 1),
(116, 'show_proposals_on_calendar', '1', 1),
(117, 'smtp_encryption', '', 1),
(118, 'recaptcha_site_key', '6LdPRi4qAAAAAJ2iaCcLDifwhkjRSxsLi5GZ87OP', 1),
(119, 'smtp_username', 'alraedautomobile@dotswebsolution.com', 1),
(120, 'auto_stop_tasks_timers_on_new_timer', '1', 1),
(121, 'notification_when_customer_pay_invoice', '1', 1),
(122, 'calendar_invoice_color', '#ff6f00', 1),
(123, 'calendar_estimate_color', '#ff6f00', 1),
(124, 'calendar_proposal_color', '#84c529', 1),
(125, 'new_task_auto_assign_current_member', '1', 1),
(126, 'calendar_reminder_color', '#03a9f4', 1),
(127, 'calendar_contract_color', '#b72974', 1),
(128, 'calendar_project_color', '#b72974', 1),
(129, 'update_info_message', '', 1),
(130, 'show_estimate_reminders_on_calendar', '1', 1),
(131, 'show_invoice_reminders_on_calendar', '1', 1),
(132, 'show_proposal_reminders_on_calendar', '1', 1),
(133, 'proposal_due_after', '7', 1),
(134, 'allow_customer_to_change_ticket_status', '0', 1),
(135, 'lead_lock_after_convert_to_customer', '0', 1),
(136, 'default_proposals_pipeline_sort', 'pipeline_order', 1),
(137, 'default_proposals_pipeline_sort_type', 'asc', 1),
(138, 'default_estimates_pipeline_sort', 'pipeline_order', 1),
(139, 'default_estimates_pipeline_sort_type', 'asc', 1),
(140, 'use_recaptcha_customers_area', '1', 1),
(141, 'remove_decimals_on_zero', '0', 1),
(142, 'remove_tax_name_from_item_table', '1', 1),
(143, 'pdf_format_invoice', 'A4-PORTRAIT', 1),
(144, 'pdf_format_estimate', 'A4-PORTRAIT', 1),
(145, 'pdf_format_proposal', 'A4-PORTRAIT', 1),
(146, 'pdf_format_payment', 'A4-PORTRAIT', 1),
(147, 'pdf_format_contract', 'A4-PORTRAIT', 1),
(148, 'swap_pdf_info', '0', 1),
(149, 'exclude_invoice_from_client_area_with_draft_status', '1', 1),
(150, 'cron_has_run_from_cli', '1', 1),
(151, 'hide_cron_is_required_message', '0', 0),
(152, 'auto_assign_customer_admin_after_lead_convert', '1', 1),
(153, 'show_transactions_on_invoice_pdf', '1', 1),
(154, 'show_pay_link_to_invoice_pdf', '0', 1),
(155, 'tasks_kanban_limit', '50', 1),
(156, 'purchase_key', '', 1),
(157, 'estimates_pipeline_limit', '50', 1),
(158, 'proposals_pipeline_limit', '50', 1),
(159, 'proposal_number_prefix', 'PRO-', 1),
(160, 'number_padding_prefixes', '6', 1),
(161, 'show_page_number_on_pdf', '0', 1),
(162, 'calendar_events_limit', '4', 1),
(163, 'show_setup_menu_item_only_on_hover', '0', 1),
(164, 'company_requires_vat_number_field', '0', 1),
(165, 'company_is_required', '1', 1),
(166, 'allow_contact_to_delete_files', '0', 1),
(167, 'company_vat', '', 1),
(168, 'di', '1724139708', 1),
(169, 'invoice_auto_operations_hour', '0', 1),
(170, 'use_minified_files', '1', 1),
(171, 'only_own_files_contacts', '0', 1),
(172, 'allow_primary_contact_to_view_edit_billing_and_shipping', '0', 1),
(173, 'estimate_due_after', '7', 1),
(174, 'staff_members_open_tickets_to_all_contacts', '1', 1),
(175, 'time_format', '12', 1),
(176, 'delete_activity_log_older_then', '1', 1),
(177, 'disable_language', '0', 1),
(178, 'company_state', 'Qatar', 1),
(179, 'email_header', '<!doctype html>\r\n      <html>\r\n      <head>\r\n      <meta name=\"viewport\" content=\"width=device-width\" />\r\n      <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n      <style>\r\n      body {\r\n        background-color: #f6f6f6;\r\n        font-family: sans-serif;\r\n        -webkit-font-smoothing: antialiased;\r\n        font-size: 14px;\r\n        line-height: 1.4;\r\n        margin: 0;\r\n        padding: 0;\r\n        -ms-text-size-adjust: 100%;\r\n        -webkit-text-size-adjust: 100%;\r\n      }\r\n      table {\r\n        border-collapse: separate;\r\n        mso-table-lspace: 0pt;\r\n        mso-table-rspace: 0pt;\r\n        width: 100%;\r\n      }\r\n      table td {\r\n        font-family: sans-serif;\r\n        font-size: 14px;\r\n        vertical-align: top;\r\n      }\r\n      /* -------------------------------------\r\n      BODY & CONTAINER\r\n      ------------------------------------- */\r\n      .body {\r\n        background-color: #f6f6f6;\r\n        width: 100%;\r\n      }\r\n      /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\r\n      \r\n      .container {\r\n        display: block;\r\n        margin: 0 auto !important;\r\n        /* makes it centered */\r\n        max-width: 680px;\r\n        padding: 10px;\r\n        width: 680px;\r\n      }\r\n      /* This should also be a block element, so that it will fill 100% of the .container */\r\n      \r\n      .content {\r\n        box-sizing: border-box;\r\n        display: block;\r\n        margin: 0 auto;\r\n        max-width: 680px;\r\n        padding: 10px;\r\n      }\r\n      /* -------------------------------------\r\n      HEADER, FOOTER, MAIN\r\n      ------------------------------------- */\r\n      \r\n      .main {\r\n        background: #fff;\r\n        border-radius: 3px;\r\n        width: 100%;\r\n      }\r\n      .wrapper {\r\n        box-sizing: border-box;\r\n        padding: 20px;\r\n      }\r\n      .footer {\r\n        clear: both;\r\n        padding-top: 10px;\r\n        text-align: center;\r\n        width: 100%;\r\n      }\r\n      .footer td,\r\n      .footer p,\r\n      .footer span,\r\n      .footer a {\r\n        color: #999999;\r\n        font-size: 12px;\r\n        text-align: center;\r\n      }\r\n      hr {\r\n        border: 0;\r\n        border-bottom: 1px solid #f6f6f6;\r\n        margin: 20px 0;\r\n      }\r\n      /* -------------------------------------\r\n      RESPONSIVE AND MOBILE FRIENDLY STYLES\r\n      ------------------------------------- */\r\n      \r\n      @media only screen and (max-width: 620px) {\r\n        table[class=body] .content {\r\n          padding: 0 !important;\r\n        }\r\n        table[class=body] .container {\r\n          padding: 0 !important;\r\n          width: 100% !important;\r\n        }\r\n        table[class=body] .main {\r\n          border-left-width: 0 !important;\r\n          border-radius: 0 !important;\r\n          border-right-width: 0 !important;\r\n        }\r\n      }\r\n      </style>\r\n      </head>\r\n      <body class=\"\">\r\n      <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"body\">\r\n      <tr>\r\n      <td>&nbsp;</td>\r\n      <td class=\"container\">\r\n      <div class=\"content\">\r\n      <!-- START CENTERED WHITE CONTAINER -->\r\n      <table class=\"main\">\r\n      <!-- START MAIN CONTENT AREA -->\r\n      <tr>\r\n      <td class=\"wrapper\">\r\n      <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n      <tr>\r\n      <td>', 1),
(180, 'show_pdf_signature_invoice', '1', 0),
(181, 'show_pdf_signature_estimate', '1', 0),
(182, 'signature_image', '', 0),
(183, 'email_footer', '</td>\r\n      </tr>\r\n      </table>\r\n      </td>\r\n      </tr>\r\n      <!-- END MAIN CONTENT AREA -->\r\n      </table>\r\n      <!-- START FOOTER -->\r\n      <div class=\"footer\">\r\n      <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n      <tr>\r\n      <td class=\"content-block\">\r\n      <span>{companyname}</span>\r\n      </td>\r\n      </tr>\r\n      </table>\r\n      </div>\r\n      <!-- END FOOTER -->\r\n      <!-- END CENTERED WHITE CONTAINER -->\r\n      </div>\r\n      </td>\r\n      <td>&nbsp;</td>\r\n      </tr>\r\n      </table>\r\n      </body>\r\n      </html>', 1),
(184, 'exclude_proposal_from_client_area_with_draft_status', '1', 1),
(185, 'pusher_app_key', '', 1),
(186, 'pusher_app_secret', '', 1),
(187, 'pusher_app_id', '', 1),
(188, 'pusher_realtime_notifications', '0', 1),
(189, 'pdf_format_statement', 'A4-PORTRAIT', 1),
(190, 'pusher_cluster', '', 1),
(191, 'show_table_export_button', 'to_all', 1),
(192, 'allow_staff_view_proposals_assigned', '1', 1),
(193, 'show_cloudflare_notice', '0', 0),
(194, 'task_modal_class', 'modal-lg', 1),
(195, 'lead_modal_class', 'modal-lg', 1),
(196, 'show_timesheets_overview_all_members_notice_admins', '0', 1),
(197, 'desktop_notifications', '0', 1),
(198, 'hide_notified_reminders_from_calendar', '1', 0),
(199, 'customer_info_format', '{company_name}<br />\r\n      {street}<br />\r\n      {city} {state}<br />\r\n      {country_code} {zip_code}<br />\r\n      {vat_number_with_label}', 0),
(200, 'timer_started_change_status_in_progress', '1', 0),
(201, 'default_ticket_reply_status', '3', 1),
(202, 'default_task_status', 'auto', 1),
(203, 'email_queue_skip_with_attachments', '1', 1),
(204, 'email_queue_enabled', '0', 1),
(205, 'last_email_queue_retry', '1724648407', 1),
(206, 'auto_dismiss_desktop_notifications_after', '0', 1),
(207, 'proposal_info_format', '{proposal_to}<br />\r\n      {address}<br />\r\n      {city} {state}<br />\r\n      {country_code} {zip_code}<br />\r\n      {phone}<br />\r\n      {email}', 0),
(208, 'ticket_replies_order', 'asc', 1),
(209, 'new_recurring_invoice_action', 'generate_and_send', 0),
(210, 'bcc_emails', '', 0),
(211, 'email_templates_language_checks', '', 0),
(212, 'proposal_accept_identity_confirmation', '0', 0),
(213, 'estimate_accept_identity_confirmation', '0', 0),
(214, 'new_task_auto_follower_current_member', '0', 1),
(215, 'task_biillable_checked_on_creation', '1', 1),
(216, 'predefined_clientnote_credit_note', '', 1),
(217, 'predefined_terms_credit_note', '', 1),
(218, 'next_credit_note_number', '1', 1),
(219, 'credit_note_prefix', 'CN-', 1),
(220, 'credit_note_number_decrement_on_delete', '1', 1),
(221, 'pdf_format_credit_note', 'A4-PORTRAIT', 1),
(222, 'show_pdf_signature_credit_note', '1', 0),
(223, 'show_credit_note_reminders_on_calendar', '1', 1),
(224, 'show_amount_due_on_invoice', '1', 1),
(225, 'show_total_paid_on_invoice', '1', 1),
(226, 'show_credits_applied_on_invoice', '1', 1),
(227, 'staff_members_create_inline_lead_status', '1', 1),
(228, 'staff_members_create_inline_customer_groups', '1', 1),
(229, 'staff_members_create_inline_ticket_services', '1', 1),
(230, 'staff_members_save_tickets_predefined_replies', '1', 1),
(231, 'staff_members_create_inline_contract_types', '1', 1),
(232, 'staff_members_create_inline_expense_categories', '1', 1),
(233, 'show_project_on_credit_note', '1', 1),
(234, 'proposals_auto_operations_hour', '0', 1),
(235, 'estimates_auto_operations_hour', '0', 1),
(236, 'contracts_auto_operations_hour', '0', 1),
(237, 'credit_note_number_format', '1', 1),
(238, 'allow_non_admin_members_to_import_leads', '0', 1),
(239, 'e_sign_legal_text', 'By clicking on \"Sign\", I consent to be legally bound by this electronic representation of my signature.', 1),
(240, 'show_pdf_signature_contract', '1', 1),
(241, 'view_contract_only_logged_in', '0', 1),
(242, 'show_subscriptions_in_customers_area', '0', 1),
(243, 'calendar_only_assigned_tasks', '0', 1),
(244, 'after_subscription_payment_captured', 'nothing', 1),
(245, 'mail_engine', 'phpmailer', 1),
(246, 'gdpr_enable_terms_and_conditions', '0', 1),
(247, 'privacy_policy', '', 1),
(248, 'terms_and_conditions', '', 1),
(249, 'gdpr_enable_terms_and_conditions_lead_form', '0', 1),
(250, 'gdpr_enable_terms_and_conditions_ticket_form', '0', 1),
(251, 'gdpr_contact_enable_right_to_be_forgotten', '0', 1),
(252, 'show_gdpr_in_customers_menu', '1', 1),
(253, 'show_gdpr_link_in_footer', '1', 1),
(254, 'enable_gdpr', '0', 1),
(255, 'gdpr_on_forgotten_remove_invoices_credit_notes', '0', 1),
(256, 'gdpr_on_forgotten_remove_estimates', '0', 1),
(257, 'gdpr_enable_consent_for_contacts', '0', 1),
(258, 'gdpr_consent_public_page_top_block', '', 1),
(259, 'gdpr_page_top_information_block', '', 1),
(260, 'gdpr_enable_lead_public_form', '0', 1),
(261, 'gdpr_show_lead_custom_fields_on_public_form', '0', 1),
(262, 'gdpr_lead_attachments_on_public_form', '0', 1),
(263, 'gdpr_enable_consent_for_leads', '0', 1),
(264, 'gdpr_lead_enable_right_to_be_forgotten', '0', 1),
(265, 'allow_staff_view_invoices_assigned', '1', 1),
(266, 'gdpr_data_portability_leads', '0', 1),
(267, 'gdpr_lead_data_portability_allowed', '', 1),
(268, 'gdpr_contact_data_portability_allowed', '', 1),
(269, 'gdpr_data_portability_contacts', '0', 1),
(270, 'allow_staff_view_estimates_assigned', '1', 1),
(271, 'gdpr_after_lead_converted_delete', '0', 1),
(272, 'gdpr_show_terms_and_conditions_in_footer', '0', 1),
(273, 'save_last_order_for_tables', '0', 1),
(274, 'company_logo_dark', 'd6494c9b1ff35de329f26af3b00185de.png', 1),
(275, 'customers_register_require_confirmation', '0', 1),
(276, 'allow_non_admin_staff_to_delete_ticket_attachments', '0', 1),
(277, 'receive_notification_on_new_ticket_replies', '1', 0),
(278, 'google_client_id', '', 1),
(279, 'enable_google_picker', '1', 1),
(280, 'show_ticket_reminders_on_calendar', '1', 1),
(281, 'ticket_import_reply_only', '0', 1),
(282, 'visible_customer_profile_tabs', 'all', 0),
(283, 'show_project_on_invoice', '0', 1),
(284, 'show_project_on_estimate', '0', 1),
(285, 'staff_members_create_inline_lead_source', '1', 1),
(286, 'lead_unique_validation', '[\"email\"]', 1),
(287, 'last_upgrade_copy_data', '', 1),
(288, 'custom_js_admin_scripts', '', 1),
(289, 'custom_js_customer_scripts', '0', 1),
(290, 'stripe_webhook_id', '', 1),
(291, 'stripe_webhook_signing_secret', '', 1),
(292, 'stripe_ideal_webhook_id', '', 1),
(293, 'stripe_ideal_webhook_signing_secret', '', 1),
(294, 'show_php_version_notice', '1', 0),
(295, 'recaptcha_ignore_ips', '', 1),
(296, 'show_task_reminders_on_calendar', '1', 1),
(297, 'customer_settings', 'true', 1),
(298, 'tasks_reminder_notification_hour', '0', 1),
(299, 'allow_primary_contact_to_manage_other_contacts', '0', 1),
(300, 'items_table_amounts_exclude_currency_symbol', '1', 1),
(301, 'round_off_task_timer_option', '0', 1),
(302, 'round_off_task_timer_time', '5', 1),
(303, 'bitly_access_token', '', 1),
(304, 'enable_support_menu_badges', '0', 1),
(305, 'attach_invoice_to_payment_receipt_email', '0', 1),
(306, 'invoice_due_notice_before', '0', 1),
(307, 'invoice_due_notice_resend_after', '0', 1),
(308, '_leads_settings', 'true', 1),
(309, 'show_estimate_request_in_customers_area', '0', 1),
(310, 'gdpr_enable_terms_and_conditions_estimate_request_form', '0', 1),
(311, 'identification_key', '1760867706172413981566c44927b05a6', 1),
(312, 'automatically_stop_task_timer_after_hours', '0', 1),
(313, 'automatically_assign_ticket_to_first_staff_responding', '0', 1),
(314, 'reminder_for_completed_but_not_billed_tasks', '0', 1),
(315, 'staff_notify_completed_but_not_billed_tasks', '[\"1\"]', 1),
(316, 'reminder_for_completed_but_not_billed_tasks_days', '[\"Monday\"]', 1),
(317, 'tasks_reminder_notification_last_notified_day', '', 1),
(318, 'staff_related_ticket_notification_to_assignee_only', '0', 1),
(319, 'show_pdf_signature_proposal', '1', 1),
(320, 'enable_honeypot_spam_validation', '0', 1),
(321, 'microsoft_mail_client_id', '', 1),
(322, 'microsoft_mail_client_secret', '', 1),
(323, 'microsoft_mail_azure_tenant_id', '', 1),
(324, 'google_mail_client_id', '', 1),
(325, 'google_mail_client_secret', '', 1),
(326, 'google_mail_refresh_token', '', 1),
(327, 'microsoft_mail_refresh_token', '', 1),
(328, 'automatically_set_logged_in_staff_sales_agent', '1', 1),
(329, 'contract_sign_reminder_every_days', '0', 1),
(330, 'last_updated_date', '', 1),
(331, 'v310_incompatible_tables', '[]', 1),
(332, 'required_register_fields', '[]', 0),
(333, 'allow_non_admin_members_to_delete_tickets_and_replies', '0', 1),
(334, 'allow_non_admin_members_to_edit_ticket_messages', '0', 1),
(335, 'proposal_auto_convert_to_invoice_on_client_accept', '0', 1),
(336, 'show_project_on_proposal', '1', 1),
(337, 'upgraded_from_version', '', 0),
(338, 'sms_clickatell_api_key', '', 1),
(339, 'sms_clickatell_active', '0', 1),
(340, 'sms_clickatell_initialized', '1', 1),
(341, 'sms_msg91_sender_id', '', 1),
(342, 'sms_msg91_api_type', 'api', 1),
(343, 'sms_msg91_auth_key', '', 1),
(344, 'sms_msg91_active', '0', 1),
(345, 'sms_msg91_initialized', '1', 1),
(346, 'sms_twilio_account_sid', '', 1),
(347, 'sms_twilio_auth_token', '', 1),
(348, 'sms_twilio_phone_number', '', 1),
(349, 'sms_twilio_sender_id', '', 1),
(350, 'sms_twilio_active', '0', 1),
(351, 'sms_twilio_initialized', '1', 1),
(352, 'paymentmethod_authorize_acceptjs_active', '0', 1),
(353, 'paymentmethod_authorize_acceptjs_label', 'Authorize.net Accept.js', 1),
(354, 'paymentmethod_authorize_acceptjs_public_key', '', 0),
(355, 'paymentmethod_authorize_acceptjs_api_login_id', '', 0),
(356, 'paymentmethod_authorize_acceptjs_api_transaction_key', '', 0),
(357, 'paymentmethod_authorize_acceptjs_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(358, 'paymentmethod_authorize_acceptjs_currencies', 'USD', 0),
(359, 'paymentmethod_authorize_acceptjs_test_mode_enabled', '0', 0),
(360, 'paymentmethod_authorize_acceptjs_default_selected', '1', 1),
(361, 'paymentmethod_authorize_acceptjs_initialized', '1', 1),
(362, 'paymentmethod_instamojo_active', '0', 1),
(363, 'paymentmethod_instamojo_label', 'Instamojo', 1),
(364, 'paymentmethod_instamojo_fee_fixed', '0', 0),
(365, 'paymentmethod_instamojo_fee_percent', '0', 0),
(366, 'paymentmethod_instamojo_api_key', '', 0),
(367, 'paymentmethod_instamojo_auth_token', '', 0),
(368, 'paymentmethod_instamojo_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(369, 'paymentmethod_instamojo_currencies', 'INR', 0),
(370, 'paymentmethod_instamojo_test_mode_enabled', '1', 0),
(371, 'paymentmethod_instamojo_default_selected', '1', 1),
(372, 'paymentmethod_instamojo_initialized', '1', 1),
(373, 'paymentmethod_mollie_active', '0', 1),
(374, 'paymentmethod_mollie_label', 'Mollie', 1),
(375, 'paymentmethod_mollie_api_key', '', 0),
(376, 'paymentmethod_mollie_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(377, 'paymentmethod_mollie_currencies', 'EUR', 0),
(378, 'paymentmethod_mollie_test_mode_enabled', '1', 0),
(379, 'paymentmethod_mollie_default_selected', '1', 1),
(380, 'paymentmethod_mollie_initialized', '1', 1),
(381, 'paymentmethod_paypal_braintree_active', '0', 1),
(382, 'paymentmethod_paypal_braintree_label', 'Braintree', 1),
(383, 'paymentmethod_paypal_braintree_merchant_id', '', 0),
(384, 'paymentmethod_paypal_braintree_api_public_key', '', 0),
(385, 'paymentmethod_paypal_braintree_api_private_key', '', 0),
(386, 'paymentmethod_paypal_braintree_currencies', 'USD', 0),
(387, 'paymentmethod_paypal_braintree_paypal_enabled', '1', 0),
(388, 'paymentmethod_paypal_braintree_test_mode_enabled', '1', 0),
(389, 'paymentmethod_paypal_braintree_default_selected', '1', 1),
(390, 'paymentmethod_paypal_braintree_initialized', '1', 1),
(391, 'paymentmethod_paypal_checkout_active', '0', 1),
(392, 'paymentmethod_paypal_checkout_label', 'Paypal Smart Checkout', 1),
(393, 'paymentmethod_paypal_checkout_fee_fixed', '0', 0),
(394, 'paymentmethod_paypal_checkout_fee_percent', '0', 0),
(395, 'paymentmethod_paypal_checkout_client_id', '', 0),
(396, 'paymentmethod_paypal_checkout_secret', '', 0),
(397, 'paymentmethod_paypal_checkout_payment_description', 'Payment for Invoice {invoice_number}', 0),
(398, 'paymentmethod_paypal_checkout_currencies', 'USD,CAD,EUR', 0),
(399, 'paymentmethod_paypal_checkout_test_mode_enabled', '1', 0),
(400, 'paymentmethod_paypal_checkout_default_selected', '1', 1),
(401, 'paymentmethod_paypal_checkout_initialized', '1', 1),
(402, 'paymentmethod_paypal_active', '0', 1),
(403, 'paymentmethod_paypal_label', 'Paypal', 1),
(404, 'paymentmethod_paypal_fee_fixed', '0', 0),
(405, 'paymentmethod_paypal_fee_percent', '0', 0),
(406, 'paymentmethod_paypal_username', '', 0),
(407, 'paymentmethod_paypal_password', '', 0),
(408, 'paymentmethod_paypal_signature', '', 0),
(409, 'paymentmethod_paypal_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(410, 'paymentmethod_paypal_currencies', 'EUR,USD', 0),
(411, 'paymentmethod_paypal_test_mode_enabled', '1', 0),
(412, 'paymentmethod_paypal_default_selected', '1', 1),
(413, 'paymentmethod_paypal_initialized', '1', 1),
(414, 'paymentmethod_payu_money_active', '0', 1),
(415, 'paymentmethod_payu_money_label', 'PayU Money', 1),
(416, 'paymentmethod_payu_money_fee_fixed', '0', 0),
(417, 'paymentmethod_payu_money_fee_percent', '0', 0),
(418, 'paymentmethod_payu_money_key', '', 0),
(419, 'paymentmethod_payu_money_salt', '', 0),
(420, 'paymentmethod_payu_money_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(421, 'paymentmethod_payu_money_currencies', 'INR', 0),
(422, 'paymentmethod_payu_money_test_mode_enabled', '1', 0),
(423, 'paymentmethod_payu_money_default_selected', '1', 1),
(424, 'paymentmethod_payu_money_initialized', '1', 1),
(425, 'paymentmethod_stripe_active', '0', 1),
(426, 'paymentmethod_stripe_label', 'Stripe Checkout', 1),
(427, 'paymentmethod_stripe_fee_fixed', '0', 0),
(428, 'paymentmethod_stripe_fee_percent', '0', 0),
(429, 'paymentmethod_stripe_api_publishable_key', '', 0),
(430, 'paymentmethod_stripe_api_secret_key', '', 0),
(431, 'paymentmethod_stripe_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(432, 'paymentmethod_stripe_currencies', 'USD,CAD', 0),
(433, 'paymentmethod_stripe_allow_primary_contact_to_update_credit_card', '1', 0),
(434, 'paymentmethod_stripe_default_selected', '1', 1),
(435, 'paymentmethod_stripe_initialized', '1', 1),
(436, 'paymentmethod_stripe_ideal_active', '0', 1),
(437, 'paymentmethod_stripe_ideal_label', 'Stripe iDEAL', 1),
(438, 'paymentmethod_stripe_ideal_api_secret_key', '', 0),
(439, 'paymentmethod_stripe_ideal_api_publishable_key', '', 0),
(440, 'paymentmethod_stripe_ideal_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(441, 'paymentmethod_stripe_ideal_statement_descriptor', 'Payment for Invoice {invoice_number}', 0),
(442, 'paymentmethod_stripe_ideal_currencies', 'EUR', 0),
(443, 'paymentmethod_stripe_ideal_default_selected', '1', 1),
(444, 'paymentmethod_stripe_ideal_initialized', '1', 1),
(445, 'paymentmethod_two_checkout_active', '0', 1),
(446, 'paymentmethod_two_checkout_label', '2Checkout', 1),
(447, 'paymentmethod_two_checkout_fee_fixed', '0', 0),
(448, 'paymentmethod_two_checkout_fee_percent', '0', 0),
(449, 'paymentmethod_two_checkout_merchant_code', '', 0),
(450, 'paymentmethod_two_checkout_secret_key', '', 0),
(451, 'paymentmethod_two_checkout_description', 'Payment for Invoice {invoice_number}', 0),
(452, 'paymentmethod_two_checkout_currencies', 'USD, EUR, GBP', 0),
(453, 'paymentmethod_two_checkout_test_mode_enabled', '1', 0),
(454, 'paymentmethod_two_checkout_default_selected', '1', 1),
(455, 'paymentmethod_two_checkout_initialized', '1', 1),
(456, 'acc_first_month_of_financial_year', 'January', 1),
(457, 'acc_first_month_of_tax_year', 'same_as_financial_year', 1),
(458, 'acc_accounting_method', 'accrual', 1),
(459, 'acc_close_the_books', '0', 1),
(460, 'acc_allow_changes_after_viewing', 'allow_changes_after_viewing_a_warning', 1),
(461, 'acc_close_book_password', 'Dots$#@!4321', 1),
(462, 'acc_close_book_passwordr', '', 1),
(463, 'acc_enable_account_numbers', '0', 1),
(464, 'acc_show_account_numbers', '0', 1),
(465, 'acc_closing_date', '', 1),
(466, 'acc_add_default_account', '1', 1),
(467, 'acc_add_default_account_new', '0', 1),
(468, 'acc_invoice_automatic_conversion', '1', 1),
(469, 'acc_payment_automatic_conversion', '1', 1),
(470, 'acc_credit_note_automatic_conversion', '1', 1),
(471, 'acc_credit_note_refund_automatic_conversion', '1', 1),
(472, 'acc_expense_automatic_conversion', '1', 1),
(473, 'acc_tax_automatic_conversion', '0', 1),
(474, 'acc_invoice_payment_account', '66', 1),
(475, 'acc_invoice_deposit_to', '1', 1),
(476, 'acc_payment_payment_account', '1', 1),
(477, 'acc_payment_deposit_to', '13', 1),
(478, 'acc_credit_note_payment_account', '1', 1),
(479, 'acc_credit_note_deposit_to', '13', 1),
(480, 'acc_credit_note_refund_payment_account', '1', 1),
(481, 'acc_credit_note_refund_deposit_to', '13', 1),
(482, 'acc_expense_payment_account', '13', 1),
(483, 'acc_expense_deposit_to', '80', 1),
(484, 'acc_tax_payment_account', '29', 1),
(485, 'acc_tax_deposit_to', '1', 1),
(486, 'acc_expense_tax_payment_account', '13', 1),
(487, 'acc_expense_tax_deposit_to', '29', 1),
(488, 'acc_active_payment_mode_mapping', '1', 1),
(489, 'acc_active_expense_category_mapping', '1', 1),
(490, 'acc_payment_expense_automatic_conversion', '1', 1),
(491, 'acc_payment_sale_automatic_conversion', '1', 1),
(492, 'acc_expense_payment_payment_account', '1', 1),
(493, 'acc_expense_payment_deposit_to', '1', 1),
(494, 'acc_pl_total_insurance_automatic_conversion', '1', 1),
(495, 'acc_pl_total_insurance_payment_account', '13', 1),
(496, 'acc_pl_total_insurance_deposit_to', '32', 1),
(497, 'acc_pl_tax_paye_automatic_conversion', '1', 1),
(498, 'acc_pl_tax_paye_payment_account', '13', 1),
(499, 'acc_pl_tax_paye_deposit_to', '28', 1),
(500, 'acc_pl_net_pay_automatic_conversion', '1', 1),
(501, 'acc_pl_net_pay_payment_account', '13', 1),
(502, 'acc_pl_net_pay_deposit_to', '56', 1),
(503, 'acc_wh_stock_import_automatic_conversion', '1', 1),
(504, 'acc_wh_stock_import_payment_account', '87', 1),
(505, 'acc_wh_stock_import_deposit_to', '37', 1),
(506, 'acc_wh_stock_export_automatic_conversion', '1', 1),
(507, 'acc_wh_stock_export_payment_account', '37', 1),
(508, 'acc_wh_stock_export_deposit_to', '1', 1),
(509, 'acc_wh_loss_adjustment_automatic_conversion', '1', 1),
(510, 'acc_wh_decrease_payment_account', '37', 1),
(511, 'acc_wh_decrease_deposit_to', '1', 1),
(512, 'acc_wh_increase_payment_account', '87', 1),
(513, 'acc_wh_increase_deposit_to', '37', 1),
(514, 'acc_wh_opening_stock_automatic_conversion', '1', 1),
(515, 'acc_wh_opening_stock_payment_account', '88', 1),
(516, 'acc_wh_opening_stock_deposit_to', '37', 1),
(517, 'acc_pur_order_automatic_conversion', '1', 1),
(518, 'acc_pur_order_payment_account', '13', 1),
(519, 'acc_pur_order_deposit_to', '80', 1),
(520, 'acc_pur_payment_automatic_conversion', '1', 1),
(521, 'acc_pur_payment_payment_account', '16', 1),
(522, 'acc_pur_payment_deposit_to', '37', 1),
(523, 'acc_mrp_manufacturing_order_automatic_conversion', '1', 1),
(524, 'acc_mrp_material_cost_payment_account', '13', 1),
(525, 'acc_mrp_material_cost_deposit_to', '45', 1),
(526, 'acc_mrp_labour_cost_payment_account', '13', 1),
(527, 'acc_mrp_labour_cost_deposit_to', '18', 1),
(528, 'acc_pur_order_return_automatic_conversion', '1', 1),
(529, 'acc_pur_order_return_payment_account', '80', 1),
(530, 'acc_pur_order_return_deposit_to', '13', 1),
(531, 'acc_pur_refund_automatic_conversion', '1', 1),
(532, 'acc_pur_refund_payment_account', '37', 1),
(533, 'acc_pur_refund_deposit_to', '16', 1),
(534, 'acc_pur_invoice_automatic_conversion', '1', 1),
(535, 'acc_pur_invoice_payment_account', '13', 1),
(536, 'acc_pur_invoice_deposit_to', '80', 1),
(537, 'acc_omni_sales_order_return_automatic_conversion', '1', 1),
(538, 'acc_omni_sales_order_return_payment_account', '1', 1),
(539, 'acc_omni_sales_order_return_deposit_to', '66', 1),
(540, 'acc_omni_sales_refund_automatic_conversion', '1', 1),
(541, 'acc_omni_sales_refund_payment_account', '13', 1),
(542, 'acc_omni_sales_refund_deposit_to', '1', 1),
(543, 'acc_routing_number_icon_a', 'a', 1),
(544, 'acc_routing_number_icon_b', 'a', 1),
(545, 'acc_bank_account_icon_a', 'a', 1),
(546, 'acc_bank_account_icon_b', 'a', 1),
(547, 'acc_current_check_no_icon_a', 'a', 1),
(548, 'acc_current_check_no_icon_b', 'a', 1),
(549, 'acc_check_type', 'type_1', 1),
(550, 'acc_fe_asset_automatic_conversion', '1', 1),
(551, 'acc_fe_asset_payment_account', '13', 1),
(552, 'acc_fe_asset_deposit_to', '1', 1),
(553, 'acc_fe_license_automatic_conversion', '1', 1),
(554, 'acc_fe_license_payment_account', '13', 1),
(555, 'acc_fe_license_deposit_to', '1', 1),
(556, 'acc_fe_consumable_automatic_conversion', '1', 1),
(557, 'acc_fe_consumable_payment_account', '13', 1),
(558, 'acc_fe_consumable_deposit_to', '1', 1),
(559, 'acc_fe_component_automatic_conversion', '1', 1),
(560, 'acc_fe_component_payment_account', '13', 1),
(561, 'acc_fe_component_deposit_to', '1', 1),
(562, 'acc_fe_maintenance_automatic_conversion', '1', 1),
(563, 'acc_fe_maintenance_payment_account', '13', 1),
(564, 'acc_fe_maintenance_deposit_to', '1', 1),
(565, 'acc_fe_depreciation_automatic_conversion', '1', 1),
(566, 'acc_fe_depreciation_payment_account', '13', 1),
(567, 'acc_fe_depreciation_deposit_to', '1', 1),
(568, 'acc_wh_stock_export_profit_payment_account', '66', 1),
(569, 'acc_wh_stock_export_profit_deposit_to', '1', 1),
(570, 'update_bank_account_v124', '1', 1),
(571, 'update_income_statement_modifications_v125', '1', 1),
(572, 'acc_enable_income_statement_modifications', '0', 1),
(573, 'acc_invoice_discount_payment_account', '1', 1),
(574, 'acc_invoice_discount_deposit_to', '19', 1),
(575, 'acc_pur_tax_automatic_conversion', '1', 1),
(576, 'acc_pur_tax_payment_account', '13', 1),
(577, 'acc_pur_tax_deposit_to', '29', 1),
(578, 'acc_wh_stock_import_return_automatic_conversion', '0', 1),
(579, 'acc_wh_stock_import_return_payment_account', '1', 1),
(580, 'acc_wh_stock_import_return_deposit_to', '37', 1),
(581, 'acc_wh_stock_export_profit_automatic_conversion', '1', 1),
(582, 'cr_date_cronjob_currency_rates', '', 1),
(583, 'cr_automatically_get_currency_rate', '1', 1),
(584, 'cr_global_amount_expiration', '0', 1),
(585, 'auto_backup_enabled', '1', 1),
(586, 'auto_backup_every', '1', 1),
(587, 'last_auto_backup', '1724648408', 1),
(588, 'delete_backups_older_then', '30', 1),
(589, 'auto_backup_hour', '1', 1),
(590, 'aside_menu_active', '{\"dashboard\":{\"id\":\"dashboard\",\"icon\":\"\",\"disabled\":\"false\",\"position\":1},\"estimates\":{\"id\":\"estimates\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"10\"},\"invoices\":{\"id\":\"invoices\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"15\"},\"sales\":{\"id\":\"sales\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"20\",\"children\":{\"proposals\":{\"disabled\":\"true\",\"id\":\"proposals\",\"icon\":\"\",\"position\":\"5\"},\"payments\":{\"disabled\":\"false\",\"id\":\"payments\",\"icon\":\"\",\"position\":\"10\"},\"credit_notes\":{\"disabled\":\"false\",\"id\":\"credit_notes\",\"icon\":\"\",\"position\":\"15\"},\"items\":{\"disabled\":\"false\",\"id\":\"items\",\"icon\":\"\",\"position\":\"20\"}}},\"customers\":{\"id\":\"customers\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"25\"},\"accounting\":{\"id\":\"accounting\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"30\",\"children\":{\"accounting_dashboard\":{\"disabled\":\"false\",\"id\":\"accounting_dashboard\",\"icon\":\"\",\"position\":\"5\"},\"accounting_banking\":{\"disabled\":\"false\",\"id\":\"accounting_banking\",\"icon\":\"\",\"position\":\"10\"},\"accounting_transaction\":{\"disabled\":\"false\",\"id\":\"accounting_transaction\",\"icon\":\"\",\"position\":\"15\"},\"accounting_registers\":{\"disabled\":\"false\",\"id\":\"accounting_registers\",\"icon\":\"\",\"position\":\"20\"},\"accounting_bills\":{\"disabled\":\"false\",\"id\":\"accounting_bills\",\"icon\":\"\",\"position\":\"25\"},\"accounting_checks\":{\"disabled\":\"false\",\"id\":\"accounting_checks\",\"icon\":\"\",\"position\":\"30\"},\"accounting_journal_entry\":{\"disabled\":\"false\",\"id\":\"accounting_journal_entry\",\"icon\":\"\",\"position\":\"35\"},\"accounting_transfer\":{\"disabled\":\"false\",\"id\":\"accounting_transfer\",\"icon\":\"\",\"position\":\"40\"},\"accounting_chart_of_accounts\":{\"disabled\":\"false\",\"id\":\"accounting_chart_of_accounts\",\"icon\":\"\",\"position\":\"45\"},\"accounting_reconcile\":{\"disabled\":\"false\",\"id\":\"accounting_reconcile\",\"icon\":\"\",\"position\":\"50\"},\"accounting_budget\":{\"disabled\":\"false\",\"id\":\"accounting_budget\",\"icon\":\"\",\"position\":\"55\"},\"accounting_vendor\":{\"disabled\":\"false\",\"id\":\"accounting_vendor\",\"icon\":\"\",\"position\":\"60\"},\"accounting_report\":{\"disabled\":\"false\",\"id\":\"accounting_report\",\"icon\":\"\",\"position\":\"65\"},\"accounting_setting\":{\"disabled\":\"false\",\"id\":\"accounting_setting\",\"icon\":\"\",\"position\":\"70\"}}},\"subscriptions\":{\"id\":\"subscriptions\",\"icon\":\"\",\"disabled\":\"true\",\"position\":\"35\"},\"expenses\":{\"id\":\"expenses\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"40\"},\"contracts\":{\"id\":\"contracts\",\"icon\":\"\",\"disabled\":\"true\",\"position\":\"45\"},\"projects\":{\"id\":\"projects\",\"icon\":\"\",\"disabled\":\"true\",\"position\":\"50\"},\"tasks\":{\"id\":\"tasks\",\"icon\":\"\",\"disabled\":\"true\",\"position\":\"55\"},\"support\":{\"id\":\"support\",\"icon\":\"\",\"disabled\":\"true\",\"position\":\"60\"},\"leads\":{\"id\":\"leads\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"65\"},\"estimate_request\":{\"id\":\"estimate_request\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"70\"},\"knowledge-base\":{\"id\":\"knowledge-base\",\"icon\":\"\",\"disabled\":\"true\",\"position\":\"75\"},\"utilities\":{\"id\":\"utilities\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"80\",\"children\":{\"media\":{\"disabled\":\"false\",\"id\":\"media\",\"icon\":\"\",\"position\":\"5\"},\"bulk-pdf-exporter\":{\"disabled\":\"false\",\"id\":\"bulk-pdf-exporter\",\"icon\":\"\",\"position\":\"10\"},\"csv-export\":{\"disabled\":\"false\",\"id\":\"csv-export\",\"icon\":\"\",\"position\":\"15\"},\"calendar\":{\"disabled\":\"false\",\"id\":\"calendar\",\"icon\":\"\",\"position\":\"20\"},\"announcements\":{\"disabled\":\"true\",\"id\":\"announcements\",\"icon\":\"\",\"position\":\"25\"},\"activity-log\":{\"disabled\":\"false\",\"id\":\"activity-log\",\"icon\":\"\",\"position\":\"30\"},\"utility_backup\":{\"disabled\":\"false\",\"id\":\"utility_backup\",\"icon\":\"\",\"position\":\"35\"},\"ticket-pipe-log\":{\"disabled\":\"true\",\"id\":\"ticket-pipe-log\",\"icon\":\"\",\"position\":\"40\"}}},\"reports\":{\"id\":\"reports\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"85\",\"children\":{\"sales-reports\":{\"disabled\":\"false\",\"id\":\"sales-reports\",\"icon\":\"\",\"position\":\"5\"},\"expenses-reports\":{\"disabled\":\"false\",\"id\":\"expenses-reports\",\"icon\":\"\",\"position\":\"10\"},\"expenses-vs-income-reports\":{\"disabled\":\"false\",\"id\":\"expenses-vs-income-reports\",\"icon\":\"\",\"position\":\"15\"},\"leads-reports\":{\"disabled\":\"true\",\"id\":\"leads-reports\",\"icon\":\"\",\"position\":\"20\"},\"timesheets-reports\":{\"disabled\":\"false\",\"id\":\"timesheets-reports\",\"icon\":\"\",\"position\":\"25\"},\"knowledge-base-reports\":{\"disabled\":\"false\",\"id\":\"knowledge-base-reports\",\"icon\":\"\",\"position\":\"30\"}}}}', 1),
(591, 'setup_menu_active', '{\"staff\":{\"id\":\"staff\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"5\"},\"customers\":{\"id\":\"customers\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"10\",\"children\":{\"customer-groups\":{\"disabled\":\"false\",\"id\":\"customer-groups\",\"icon\":\"\",\"position\":\"5\"}}},\"support\":{\"id\":\"support\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"15\",\"children\":{\"departments\":{\"disabled\":\"false\",\"id\":\"departments\",\"icon\":\"\",\"position\":\"5\"},\"tickets-predefined-replies\":{\"disabled\":\"false\",\"id\":\"tickets-predefined-replies\",\"icon\":\"\",\"position\":\"10\"},\"tickets-priorities\":{\"disabled\":\"false\",\"id\":\"tickets-priorities\",\"icon\":\"\",\"position\":\"15\"},\"tickets-statuses\":{\"disabled\":\"false\",\"id\":\"tickets-statuses\",\"icon\":\"\",\"position\":\"20\"},\"tickets-services\":{\"disabled\":\"false\",\"id\":\"tickets-services\",\"icon\":\"\",\"position\":\"25\"},\"tickets-spam-filters\":{\"disabled\":\"false\",\"id\":\"tickets-spam-filters\",\"icon\":\"\",\"position\":\"30\"}}},\"leads\":{\"id\":\"leads\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"20\",\"children\":{\"leads-sources\":{\"disabled\":\"false\",\"id\":\"leads-sources\",\"icon\":\"\",\"position\":\"5\"},\"leads-statuses\":{\"disabled\":\"false\",\"id\":\"leads-statuses\",\"icon\":\"\",\"position\":\"10\"},\"leads-email-integration\":{\"disabled\":\"false\",\"id\":\"leads-email-integration\",\"icon\":\"\",\"position\":\"15\"},\"web-to-lead\":{\"disabled\":\"false\",\"id\":\"web-to-lead\",\"icon\":\"\",\"position\":\"20\"}}},\"finance\":{\"id\":\"finance\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"25\",\"children\":{\"taxes\":{\"disabled\":\"false\",\"id\":\"taxes\",\"icon\":\"\",\"position\":\"5\"},\"currencies\":{\"disabled\":\"false\",\"id\":\"currencies\",\"icon\":\"\",\"position\":\"10\"},\"payment-modes\":{\"id\":\"payment-modes\",\"disabled\":\"false\",\"icon\":\"\",\"position\":\"15\"},\"expenses-categories\":{\"disabled\":\"false\",\"id\":\"expenses-categories\",\"icon\":\"\",\"position\":\"20\"}}},\"contracts\":{\"id\":\"contracts\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"30\",\"children\":{\"contracts-types\":{\"disabled\":\"false\",\"id\":\"contracts-types\",\"icon\":\"\",\"position\":\"5\"}}},\"estimate_request\":{\"id\":\"estimate_request\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"35\",\"children\":{\"estimate-request-forms\":{\"disabled\":\"false\",\"id\":\"estimate-request-forms\",\"icon\":\"\",\"position\":\"5\"},\"estimate-request-statuses\":{\"disabled\":\"false\",\"id\":\"estimate-request-statuses\",\"icon\":\"\",\"position\":\"10\"}}},\"modules\":{\"id\":\"modules\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"40\"},\"email-templates\":{\"id\":\"email-templates\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"45\"},\"custom-fields\":{\"id\":\"custom-fields\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"50\"},\"gdpr\":{\"id\":\"gdpr\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"55\"},\"roles\":{\"id\":\"roles\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"60\"},\"menu-options\":{\"id\":\"menu-options\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"65\",\"children\":{\"main-menu-options\":{\"disabled\":\"false\",\"id\":\"main-menu-options\",\"icon\":\"\",\"position\":\"5\"},\"setup-menu-options\":{\"disabled\":\"false\",\"id\":\"setup-menu-options\",\"icon\":\"\",\"position\":\"10\"}}},\"theme-style\":{\"id\":\"theme-style\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"70\"},\"settings\":{\"id\":\"settings\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"75\"}}', 1),
(592, 'theme_style', '[]', 1),
(593, 'theme_style_custom_admin_area', '', 1),
(594, 'theme_style_custom_clients_area', '', 1),
(595, 'theme_style_custom_clients_and_admin_area', '', 1),
(596, 'sms_trigger_invoice_overdue_notice', '', 0),
(597, 'sms_trigger_invoice_due_notice', '', 0),
(598, 'sms_trigger_invoice_payment_recorded', '', 0),
(599, 'sms_trigger_estimate_expiration_reminder', '', 0),
(600, 'sms_trigger_proposal_expiration_reminder', '', 0),
(601, 'sms_trigger_proposal_new_comment_to_customer', '', 0),
(602, 'sms_trigger_proposal_new_comment_to_staff', '', 0),
(603, 'sms_trigger_contract_new_comment_to_customer', '', 0),
(604, 'sms_trigger_contract_new_comment_to_staff', '', 0),
(605, 'sms_trigger_contract_expiration_reminder', '', 0),
(606, 'sms_trigger_contract_sign_reminder_to_customer', '', 0),
(607, 'sms_trigger_staff_reminder', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment_attempts`
--

CREATE TABLE `tblpayment_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference` varchar(100) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `fee` double NOT NULL,
  `payment_gateway` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment_modes`
--

CREATE TABLE `tblpayment_modes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `show_on_pdf` int(11) NOT NULL DEFAULT 0,
  `invoices_only` int(11) NOT NULL DEFAULT 0,
  `expenses_only` int(11) NOT NULL DEFAULT 0,
  `selected_by_default` int(11) NOT NULL DEFAULT 1,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblpayment_modes`
--

INSERT INTO `tblpayment_modes` (`id`, `name`, `description`, `show_on_pdf`, `invoices_only`, `expenses_only`, `selected_by_default`, `active`) VALUES
(1, 'Bank', '', 0, 0, 0, 1, 1),
(2, 'Cash', '', 0, 0, 0, 1, 1),
(3, 'Debit / Credit Card', '', 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpinned_projects`
--

CREATE TABLE `tblpinned_projects` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblprojectdiscussioncomments`
--

CREATE TABLE `tblprojectdiscussioncomments` (
  `id` int(11) NOT NULL,
  `discussion_id` int(11) NOT NULL,
  `discussion_type` varchar(10) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `content` mediumtext NOT NULL,
  `staff_id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT 0,
  `fullname` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `file_mime_type` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblprojectdiscussions`
--

CREATE TABLE `tblprojectdiscussions` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `description` mediumtext NOT NULL,
  `show_to_customer` tinyint(1) NOT NULL DEFAULT 0,
  `datecreated` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `staff_id` int(11) NOT NULL DEFAULT 0,
  `contact_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblprojects`
--

CREATE TABLE `tblprojects` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `clientid` int(11) NOT NULL,
  `billing_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `deadline` date DEFAULT NULL,
  `project_created` date NOT NULL,
  `date_finished` datetime DEFAULT NULL,
  `progress` int(11) DEFAULT 0,
  `progress_from_tasks` int(11) NOT NULL DEFAULT 1,
  `project_cost` decimal(15,2) DEFAULT NULL,
  `project_rate_per_hour` decimal(15,2) DEFAULT NULL,
  `estimated_hours` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `contact_notification` int(11) DEFAULT 1,
  `notify_contacts` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_activity`
--

CREATE TABLE `tblproject_activity` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL DEFAULT 0,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `fullname` varchar(100) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT 0,
  `description_key` varchar(191) NOT NULL COMMENT 'Language file key',
  `additional_data` mediumtext DEFAULT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_files`
--

CREATE TABLE `tblproject_files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `original_file_name` longtext DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `visible_to_customer` tinyint(1) DEFAULT 0,
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `external` varchar(40) DEFAULT NULL,
  `external_link` mediumtext DEFAULT NULL,
  `thumbnail_link` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_members`
--

CREATE TABLE `tblproject_members` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_notes`
--

CREATE TABLE `tblproject_notes` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `content` mediumtext NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_settings`
--

CREATE TABLE `tblproject_settings` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproposals`
--

CREATE TABLE `tblproposals` (
  `id` int(11) NOT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `discount_percent` decimal(15,2) NOT NULL,
  `discount_total` decimal(15,2) NOT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `show_quantity_as` int(11) NOT NULL DEFAULT 1,
  `currency` int(11) NOT NULL,
  `open_till` date DEFAULT NULL,
  `date` date NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(40) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `proposal_to` varchar(191) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT 0,
  `zip` varchar(50) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `allow_comments` tinyint(1) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL,
  `estimate_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `pipeline_order` int(11) DEFAULT 1,
  `is_expiry_notified` int(11) NOT NULL DEFAULT 0,
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL,
  `short_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproposal_comments`
--

CREATE TABLE `tblproposal_comments` (
  `id` int(11) NOT NULL,
  `content` longtext DEFAULT NULL,
  `proposalid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_vendor`
--

CREATE TABLE `tblpur_vendor` (
  `userid` int(10) UNSIGNED NOT NULL,
  `company` varchar(200) DEFAULT NULL,
  `vat` varchar(200) DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT 0,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `leadid` int(11) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT 0,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT 0,
  `longitude` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `default_language` varchar(40) DEFAULT NULL,
  `default_currency` int(11) NOT NULL DEFAULT 0,
  `show_primary_contact` int(11) NOT NULL DEFAULT 0,
  `stripe_id` varchar(40) DEFAULT NULL,
  `registration_confirmed` int(11) NOT NULL DEFAULT 1,
  `addedfrom` int(11) NOT NULL DEFAULT 0,
  `category` text DEFAULT NULL,
  `bank_detail` text DEFAULT NULL,
  `payment_terms` text DEFAULT NULL,
  `vendor_code` varchar(100) DEFAULT NULL,
  `return_within_day` int(11) DEFAULT NULL,
  `return_order_fee` decimal(15,2) DEFAULT NULL,
  `return_policies` text DEFAULT NULL,
  `balance` decimal(15,2) DEFAULT NULL,
  `balance_as_of` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblrelated_items`
--

CREATE TABLE `tblrelated_items` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(30) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblreminders`
--

CREATE TABLE `tblreminders` (
  `id` int(11) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `date` datetime NOT NULL,
  `isnotified` int(11) NOT NULL DEFAULT 0,
  `rel_id` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `notify_by_email` int(11) NOT NULL DEFAULT 1,
  `creator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblroles`
--

CREATE TABLE `tblroles` (
  `roleid` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `permissions` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblroles`
--

INSERT INTO `tblroles` (`roleid`, `name`, `permissions`) VALUES
(1, 'Employee', NULL),
(2, 'Manager', 'a:36:{s:17:\"bulk_pdf_exporter\";a:1:{i:0;s:4:\"view\";}s:9:\"contracts\";a:5:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";i:4;s:18:\"view_all_templates\";}s:12:\"credit_notes\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:9:\"customers\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:15:\"email_templates\";a:2:{i:0;s:4:\"view\";i:1;s:4:\"edit\";}s:9:\"estimates\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:8:\"expenses\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:8:\"invoices\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:5:\"items\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:14:\"knowledge_base\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:8:\"payments\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:8:\"projects\";a:7:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";i:4;s:17:\"create_milestones\";i:5;s:15:\"edit_milestones\";i:6;s:17:\"delete_milestones\";}s:9:\"proposals\";a:5:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";i:4;s:18:\"view_all_templates\";}s:7:\"reports\";a:2:{i:0;s:4:\"view\";i:1;s:15:\"view-timesheets\";}s:5:\"roles\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:8:\"settings\";a:1:{i:0;s:4:\"view\";}s:5:\"staff\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:13:\"subscriptions\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:5:\"tasks\";a:8:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";i:4;s:14:\"edit_timesheet\";i:5;s:18:\"edit_own_timesheet\";i:6;s:16:\"delete_timesheet\";i:7;s:20:\"delete_own_timesheet\";}s:19:\"checklist_templates\";a:2:{i:0;s:6:\"create\";i:1;s:6:\"delete\";}s:16:\"estimate_request\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:5:\"leads\";a:2:{i:0;s:4:\"view\";i:1;s:6:\"delete\";}s:20:\"accounting_dashboard\";a:1:{i:0;s:4:\"view\";}s:18:\"accounting_banking\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:22:\"accounting_transaction\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:20:\"accounting_registers\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:16:\"accounting_bills\";a:2:{i:0;s:4:\"view\";i:1;s:6:\"create\";}s:17:\"accounting_checks\";a:2:{i:0;s:4:\"view\";i:1;s:6:\"create\";}s:24:\"accounting_journal_entry\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:19:\"accounting_transfer\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:28:\"accounting_chart_of_accounts\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:20:\"accounting_reconcile\";a:3:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";}s:17:\"accounting_budget\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:17:\"accounting_vendor\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:17:\"accounting_report\";a:1:{i:0;s:4:\"view\";}s:18:\"accounting_setting\";a:1:{i:0;s:4:\"view\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `tblsales_activity`
--

CREATE TABLE `tblsales_activity` (
  `id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `additional_data` mediumtext DEFAULT NULL,
  `staffid` varchar(11) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblsales_activity`
--

INSERT INTO `tblsales_activity` (`id`, `rel_type`, `rel_id`, `description`, `additional_data`, `staffid`, `full_name`, `date`) VALUES
(7, 'estimate', 2, 'estimate_activity_created', '', '1', 'Alraed Automobile', '2024-08-20 19:40:35'),
(8, 'estimate', 3, 'estimate_activity_created', '', '1', 'Alraed Automobile', '2024-08-21 10:45:07'),
(9, 'estimate', 3, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:5:\"Break\";}', '1', 'Alraed Automobile', '2024-08-21 10:47:23'),
(10, 'estimate', 3, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:12:\"Labor Charge\";}', '1', 'Alraed Automobile', '2024-08-21 10:47:23'),
(11, 'invoice', 2, 'invoice_activity_created', '', '1', 'Alraed Automobile', '2024-08-21 10:49:33'),
(12, 'estimate', 3, 'estimate_activity_converted', 'a:1:{i:0;s:93:\"<a href=\"https://erp.alraedautomobile.com/admin/invoices/list_invoices/2\">INV-2024/000001</a>\";}', '1', 'Alraed Automobile', '2024-08-21 10:49:34'),
(13, 'invoice', 2, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>3</new_status>\";}', '1', 'Alraed Automobile', '2024-08-21 10:52:41'),
(14, 'invoice', 2, 'invoice_activity_payment_made_by_staff', 'a:2:{i:0;s:11:\"1,000.00QAR\";i:1;s:90:\"<a href=\"https://erp.alraedautomobile.com/admin/payments/payment/2\" target=\"_blank\">#2</a>\";}', '1', 'Alraed Automobile', '2024-08-21 10:52:41'),
(15, 'estimate', 3, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:4:\"Tyre\";}', '1', 'Alraed Automobile', '2024-08-21 11:57:36'),
(16, 'estimate', 4, 'estimate_activity_created', '', '1', 'Alraed Automobile', '2024-08-21 11:59:13'),
(17, 'estimate', 5, 'estimate_activity_created', '', '1', 'Alraed Automobile', '2024-08-21 12:04:04'),
(18, 'invoice', 2, 'invoice_activity_payment_made_by_staff', 'a:2:{i:0;s:9:\"500.00QAR\";i:1;s:90:\"<a href=\"https://erp.alraedautomobile.com/admin/payments/payment/3\" target=\"_blank\">#3</a>\";}', '1', 'Alraed Automobile', '2024-08-21 12:22:40'),
(19, 'estimate', 5, 'estimate_activity_client_accepted', '', NULL, '', '2024-08-27 19:32:05');

-- --------------------------------------------------------

--
-- Table structure for table `tblscheduled_emails`
--

CREATE TABLE `tblscheduled_emails` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `scheduled_at` datetime NOT NULL,
  `contacts` varchar(197) NOT NULL,
  `cc` mediumtext DEFAULT NULL,
  `attach_pdf` tinyint(1) NOT NULL DEFAULT 1,
  `template` varchar(197) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `serviceid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblsessions`
--

CREATE TABLE `tblsessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblsessions`
--

INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('082cubcrrov5qd3hs2quep5qrpubrj7l', '176.202.10.165', 1724169932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136393933323b5f707265765f75726c7c733a34363a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f636c69656e7473223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('09ak2l657689f6o1u3neg197c8cmsh8t', '45.148.234.134', 1724151338, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135313333383b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('0a5q8tbltuk3e5l9c2s04fv9uefkkliq', '68.66.220.30', 1724216411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343231363431303b5f707265765f75726c7c733a34333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f63726f6e2f696e646578223b),
('0aorq6pqlnqrb8eef8doqtt01osdrmg8', '176.202.10.165', 1724226307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343232363330373b5f707265765f75726c7c733a35373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f657374696d617465223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b6d6573736167652d737563636573737c733a32383a22457374696d617465206164646564207375636365737366756c6c792e223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167652d73756363657373223b733a333a226e6577223b7d),
('0fpipvesnerspqrq7h1ate02sdgl599m', '2a01:4f9:c012:6365::1', 1724513900, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343531333930303b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('0qedslbc431or4b9bd56c0reb0ce3o3m', '176.202.10.165', 1724157662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135373636313b7265645f75726c7c733a33383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('0umik9m4phk1d7vgsjtj5qmuk8fri9f7', '176.202.10.165', 1724166235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136363233353b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f636c69656e74732f636c69656e74223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('113ib7nufmsbu6jn4kuvfghng8ikqfom', '::1', 1724764497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343736343439373b5f707265765f75726c7c733a34353a22687474703a2f2f6c6f63616c686f73742f6572702f61646d696e2f657374696d617465732f657374696d617465223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f6c6f63616c686f73742f6572702f223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('136h7g51neck264f3i7men3smn4ruju4', '2a01:4f9:c012:6365::1', 1724518054, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343531383035343b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('18m5mclolt68kd5g3oe051sf3hhs1ilb', '23.228.131.5', 1724153342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135333334313b7265645f75726c7c733a33383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('1au38var58qsarufs42160m35usq5fd4', '2a03:b0c0:3:d0::d1a:1', 1724145178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353137383b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('1c8d1q9spv5oufb6cvjcud5g1oq58crn', '212.70.108.7', 1724140095, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134303039353b5f707265765f75726c7c733a34363a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6d6f64756c6573223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('1g5rv485kn2i1u3rftlqe8hl2f250e45', '34.105.219.249', 1724688120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343638383131393b7265645f75726c7c733a33383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('230rvlasa2fsno8up45g3qihugqeisqh', '203.192.226.78', 1724146940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363934303b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('276n8bn7k45g1668lnamh0d2d7q8cai4', '45.87.9.13', 1724566352, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343536363335313b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('282ujp7uplk48gfkkg1g5nt763ga82pp', '193.202.83.32', 1724146923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363932333b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('2c17ps7rgrspjkf5kb49cupp9um4luqn', '176.202.10.165', 1724168553, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136383535333b5f707265765f75726c7c733a33383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('2ceau9p12da1ig36quqcbru98thbpp0n', '2604:a880:400:d0::24c8:8001', 1724145178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353137383b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('2jlhpd7hv9ma8s5h427eacjfv75rlvg4', '34.105.219.249', 1724139812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343133393831323b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('2k0b0j5sk4ebom8g4qb3nbedvufgj1sn', '134.209.150.154', 1724664157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343636343135373b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('2offlv7gnmf87dve4gdlh2a7icrt5d5f', '176.202.10.165', 1724226006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343232363030363b5f707265765f75726c7c733a35373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f657374696d617465223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('2uc29hnfdcp7vrugg9jllp4ebnub2b05', '67.61.40.5', 1724688075, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343638383037353b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('327tojm6cgic9ihmn81730flf08pftvv', '134.209.150.154', 1724664156, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343636343135363b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('3aas692sevbiv7iq9v1kfpsgboauqrug', '176.202.10.165', 1724172851, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343137323637303b5f707265765f75726c7c733a34383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d61746573223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('3etlb4533rhmomri2ts1u9vtc40utomj', '192.175.111.229', 1724147517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134373531373b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('3fp6b9e3f3t42io6i6grcf9l3g04526m', '212.70.108.7', 1724142810, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134323831303b5f707265765f75726c7c733a34333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f63726f6e2f696e646578223b),
('3gpfie1ukuv5obl377eni0q7vtcr8v55', '202.7.52.129', 1724146948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363934383b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('3o9g5quou8ars3ap0ll1n13liefle9pl', '78.101.181.144', 1724693502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343639333433363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f73746166662f656469745f70726f66696c65223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('3uulltdue14rdihuknnh1gg9c8pvduci', '176.202.10.165', 1724152733, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135323733333b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('43m0dv2rhuhmv6klae1fdnjf7336ggb1', '176.202.10.165', 1724159082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135393038323b5f707265765f75726c7c733a36313a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f73657474696e67733f67726f75703d636f6d70616e79223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('46cannjo0v7ugopbf7tf0cv70rc94dr3', '197.155.69.18', 1724146943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363934333b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('47vi3vmh15rei66hiint1j19fiupu42s', '134.122.88.193', 1724313043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343331333034333b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('493758rnnjmosgot8msaov1136bhvpqs', '195.211.77.142', 1724192148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343139323134383b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('4dk3kas4c8f0p6t8lpg0cph6h6ojddg4', '113.160.115.82', 1724146946, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363934363b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('4pkv2ge2cgjlpo9niae726umnamsvb4c', '174.72.24.251', 1724146801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363830313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('5e2scvtr1fq4a3p89qf7qjv13s5lr54b', '::1', 1724776963, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343737363936333b5f707265765f75726c7c733a34333a22687474703a2f2f6c6f63616c686f73742f6572702f61646d696e2f696e766f696365732f696e766f696365223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f6c6f63616c686f73742f6572702f223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('5hgcdjnjfjbiton46rf2r3v343fmbo19', '176.202.10.165', 1724170898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343137303839383b5f707265765f75726c7c733a35373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f657374696d617465223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('5hldus2be6djlmr8eb020i2227doerfh', '176.202.10.165', 1724159487, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135393438373b5f707265765f75726c7c733a35373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f657374696d617465223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('5lksb4jljm690cav4qka2brprnknrjlq', '154.28.229.247', 1724145226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353232313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a36333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f666f72676f745f70617373776f7264223b),
('6871av3d4o0gsvc407v16tug27otbang', '176.202.10.165', 1724491679, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343439313637393b5f707265765f75726c7c733a35373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f657374696d617465223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('69okrpi1d94t2slfg266buv8o6ks46vv', '47.88.94.28', 1724190329, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343139303332393b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('6c4joi3ul26gpuku95heu746epsfrpm4', '2604:a880:800:10::d4e:a001', 1724145178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353137383b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('6do7jqr7s8dng8ntkqq44h04jlllhic7', '176.202.10.165', 1724172358, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343137323335383b5f707265765f75726c7c733a37333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f73657474696e67733f67726f75703d73616c6573267461623d657374696d61746573223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d6d6573736167652d737563636573737c733a31363a2253657474696e67732055706461746564223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167652d73756363657373223b733a333a226f6c64223b7d),
('6jj4b7v9n7ji7j74odc45jiv72kd84jh', '176.202.10.165', 1724232097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343233323039373b5f707265765f75726c7c733a36383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f7064662f353f6f75747075745f747970653d49223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('6ke7eosuqq598phb99blanvafrt9b2ce', '223.113.128.201', 1724293929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343239333932383b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('6lifaqhl0fgu29ogdf9ktfb6tqt90caq', '35.187.232.113', 1724140918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134303931373b7265645f75726c7c733a36393a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6d6973632f6469736d6973735f636c6f7564666c6172655f6e6f74696365223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('6oaa7rscujv0sdq6vql9ae8v8uso2p45', '78.100.51.218', 1724142251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134323235313b5f707265765f75726c7c733a33383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('6oen1c3q1sveau15l8oahlha5eqp8v6m', '2a05:9404::bf9', 1724525962, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343532353936323b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('6s763bcenjvaeecamdjgv8t26br1glvb', '176.202.10.165', 1724162413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136323431333b5f707265765f75726c7c733a34393a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f63757272656e63696573223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('6u4flguhpvup9n61u2m3eejbq0h954pf', '176.202.10.165', 1724158772, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135383737323b5f707265765f75726c7c733a36373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6163636f756e74696e672f6e65775f6a6f75726e616c5f656e747279223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('74r96ntd86tlvqtke3ht4evfk86rs785', '195.211.77.140', 1724192116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343139323131363b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('770gq6vdpjk36a42vp89t5lcjpe1tje1', '113.160.187.2', 1724146944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363934343b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('7e69d10i4he9mvq5j3tugpi6tem58ei5', '176.202.10.165', 1724495951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343439353935313b5f707265765f75726c7c733a35373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f657374696d617465223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('7hnd35ltqj8bihfi5878n12f044p7vpn', '134.122.88.193', 1724313043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343331333034333b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('7l5vjjn96ebcdpeu9bntlkkvtbveco0f', '146.70.224.98', 1724145670, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353636393b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('7nd3rab8ngeogvjbuaagk75kieg3qosc', '176.202.10.165', 1724230539, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343233303533393b5f707265765f75726c7c733a37373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f696e766f696365732f6c6973745f696e766f696365733f66696c7465723d6e6f745f73656e74223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('7nt5f6s2kggoomvtg85qchbejf2gk9k9', '64.15.129.108', 1724147518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134373531383b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('7raoaaivd8f7ad3t3ib16b6n59h7va05', '174.72.24.251', 1724145384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353338343b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('7u7do9h6k2r40onr6d1ms68npk1ksvc9', '::1', 1724775119, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343737353131393b5f707265765f75726c7c733a34353a22687474703a2f2f6c6f63616c686f73742f6572702f61646d696e2f657374696d617465732f657374696d617465223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f6c6f63616c686f73742f6572702f223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('81ipcn5b1rbjdqj7723bv2qdd8du331k', '52.81.78.71', 1724293953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343239333935333b5f707265765f75726c7c733a36343a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e2f726f626f74732e747874223b),
('8c6lciuj2ruifq2jfgmej8ldi82a2i47', '176.202.10.165', 1724168567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136383535333b5f707265765f75726c7c733a36313a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f73657474696e67733f67726f75703d67656e6572616c223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('8m03d1suuklneruog0a5brlvgj21mrat', '154.28.229.166', 1724189809, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343138393830393b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('8qd2ca66v5chpe4u4ktbf9065lq41ilf', '212.70.108.7', 1724142884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134323838343b5f707265765f75726c7c733a34353a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6261636b7570223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('8u229ps1q2hg00bkh80n03djo8rd7du6', '103.171.172.58', 1724146952, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363935323b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('907c8cugo5unlv1ti89hvetsfrrtfu36', '34.105.219.249', 1724691297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343639313239373b7265645f75726c7c733a34373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f696e766f69636573223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('909vpqv9q1cq7kuan6b4fu2kaikar8jh', '46.101.119.44', 1724660182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343636303138323b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('93f7mja95h7glt2tkf7j6tiifaaau1t4', '192.175.111.243', 1724147517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134373531373b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('9fs7e2gd3j4lonlnk324nenfcgce9u5q', '34.248.137.227', 1724155975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135353937353b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('9gofnv99btcm2p22mh6g423829vf8ccg', '45.140.205.67', 1724146923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363932333b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('9h2fiqgg78qdla2u2946a6s11nt4burn', '78.101.181.144', 1724691689, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343639313638393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a34373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f696e766f69636573223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('9k9m2g8pogqatl30n07jsa6tot8e7emr', '93.177.119.64', 1724146923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363932333b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('9oms5ket11h8b0u9fhnjmg9ns5fbftvp', '::1', 1724776563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343737363536323b5f707265765f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6572702f61646d696e2f696e766f69636573223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f6c6f63616c686f73742f6572702f223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('9ot5nvboq0kt0mqdagohu24fmquahg52', '205.169.39.195', 1724145251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353235313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('9rnaa6me4neb809igae6vuqehpu7mlnr', '176.202.10.165', 1724160468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136303436383b5f707265765f75726c7c733a36353a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f6c6973745f657374696d617465732f31223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('9vhvenhm6990mvhacvlht8l0c75oo1kf', '45.87.9.220', 1724145288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353238373b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('a6169pidm5duthgi9j192ke3ldha2j86', '176.202.10.165', 1724494586, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343439343538363b5f707265765f75726c7c733a35373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f657374696d617465223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('acvo58o5mojsvna9nskt4mqgpfuj47s6', '176.202.10.165', 1724158051, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135383035313b5f707265765f75726c7c733a34343a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6c65616473223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('agme5ibat9v1dmfj3snusncicr4qh9e4', '176.202.10.165', 1724159821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135393832313b5f707265765f75726c7c733a34343a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6c65616473223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('am1ga3j7l1mj4tc3suju5b8s6nqangk6', '154.28.229.216', 1724189809, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343138393830393b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('amqg76sd98jvdd83fm64m5d2jrsbdv6d', '::1', 1724763330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343736333333303b5f707265765f75726c7c733a34313a22687474703a2f2f6c6f63616c686f73742f6572702f61757468656e7469636174696f6e2f6c6f67696e223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f6c6f63616c686f73742f6572702f223b),
('b7u0tup8fqq71ma3lanjf5bf7otk6ld8', '102.0.7.248', 1724146939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363933393b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('ba86d8p1if9iibs9ba787bethi0nelej', '2001:41d0:602:b8::', 1724152764, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135323735393b7265645f75726c7c733a33383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('bf5rd2966molair4ljvnpq06ejrf2d6d', '176.202.10.165', 1724167941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136373934313b5f707265765f75726c7c733a35353a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f636c69656e74732f636c69656e742f32223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('bg69b6ml0charu1vg3l36m25bchr02qg', '106.75.17.115', 1724294027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343239343032373b5f707265765f75726c7c733a36343a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e2f726f626f74732e747874223b),
('bnhpm0vj6jo3doo66ke4a90r49lbt884', '2604:a880:400:d0::2309:5001', 1724145178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353137383b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('br8gr0henqa4cb325f1j57sit39efat0', '78.101.181.144', 1724691297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343639313239373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35393a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f657374696d6174652f35223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('brsfmusm0vk60bsj44a3hfhmocia3rdf', '14.229.14.173', 1724146950, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363935303b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('btf89bgrcm1mv297capljs3l033nhl69', '38.47.39.37', 1724146945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363934353b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('c06aoq5d2mpq9rpvq30ju0ublp0sp0au', '212.70.108.7', 1724142817, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134323831373b5f707265765f75726c7c733a34333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f63726f6e2f696e646578223b),
('c1i4jtmhh5eo6jju7m7jg36nuj86d31q', '::1', 1724777983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343737373938333b5f707265765f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6572702f61646d696e2f696e766f69636573223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f6c6f63616c686f73742f6572702f223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('c3m7k8k3sd2hmo4ce9qvhnbjgli0kpcj', '192.175.111.251', 1724147518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134373531383b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('c866vrgq3fa1h215vj8p0em1retu7330', '47.254.85.182', 1724189267, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343138393236373b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('ce4icgutum94sfeddehevjsck2ckttpr', '34.105.219.249', 1724691722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343639313732323b7265645f75726c7c733a36333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f696e766f696365732f6c6973745f696e766f696365732f32223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('cfi0cn36p4j907fd8t32qpsinjj8tu2j', '34.105.219.249', 1724691573, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343639313537333b7265645f75726c7c733a35393a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f657374696d6174652f35223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('cftip81nuhdk9fm8l37ba048fid7d4i8', '176.202.10.165', 1724161907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136313930373b5f707265765f75726c7c733a36373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6163636f756e74696e672f63686172745f6f665f6163636f756e7473223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('cg3j92il7jp9miinv5s53e583q499jc5', '2001:41d0:602:b8::', 1724151254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135313234373b7265645f75726c7c733a33383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('cie8rbfh4p4fssir20bpgpfq4kf18ct1', '134.122.88.193', 1724313043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343331333034323b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('cjilh3b0i1ogt6knuod1mjvomi5v8ncv', '34.105.219.249', 1724140213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134303231323b7265645f75726c7c733a34353a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6261636b7570223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('cjmcutuh87ddrd13icsojl349ns2espo', '176.202.10.165', 1724162065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136323036353b5f707265765f75726c7c733a35393a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6d656e755f73657475702f6d61696e5f6d656e75223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('co5l63gfdrcqpcv7i82316gkhl08t9dd', '205.169.39.0', 1724145254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353235313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('cpgrtes9u39igdqc1h505ij95laodd33', '34.105.219.249', 1724691760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343639313736303b5f707265765f75726c7c733a37353a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f696e766f6963652f322f6132316332326139343663353831376565656335333863363065663330303636223b),
('ctvuc4860lnb92ac3j7d0s2rfj0888dt', '103.216.50.20', 1724146944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363934343b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('d02mj7orocchbvcv9g2gvm8q55i17hra', '::1', 1724764168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343736343136383b5f707265765f75726c7c733a34353a22687474703a2f2f6c6f63616c686f73742f6572702f61646d696e2f657374696d617465732f657374696d617465223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f6c6f63616c686f73742f6572702f223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('d6hmem5of1q9nkoqj55kl5fueko1supn', '34.105.219.249', 1724691574, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343639313537343b7265645f75726c7c733a36353a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f6c6973745f657374696d617465732f35223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('d99v6glqqpusqabod35h2v8155i57h86', '113.162.84.219', 1724146938, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363933383b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('db2pchntjvrv6tntb1ehr6nj6lqunlmi', '102.216.68.22', 1724146950, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363935303b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('dfogdstu1vm8rsf9o15v5ac3kle6uf7q', '34.105.219.249', 1724142252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134323235323b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('djgojsm6q77cmh5vkvut83mkjg5et4fp', '176.202.10.165', 1724172035, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343137323033353b5f707265765f75726c7c733a35373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f657374696d617465223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('dk1hbe1smh1qgct1ftv3ch5o772ar86c', '176.202.10.165', 1724157617, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135373631373b7265645f75726c7c733a33383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b6d6573736167652d64616e6765727c733a32353a22496e76616c696420656d61696c206f722070617373776f7264223b5f5f63695f766172737c613a313a7b733a31343a226d6573736167652d64616e676572223b733a333a226f6c64223b7d),
('dl2qd0jtrdjtg1p8ss6i053fmuado4pu', '34.105.219.249', 1724688120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343638383132303b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('dtuk827jurtocvmq1iji7kl047j0rdeb', '176.202.10.165', 1724491329, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343439313332393b5f707265765f75726c7c733a35383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f73657474696e67733f67726f75703d6d697363223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('e0g9efsbhun40kf102plifs0ku2oag3v', '176.202.10.165', 1724233191, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343233333139313b5f707265765f75726c7c733a36333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f696e766f696365732f6c6973745f696e766f696365732f32223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('e0ogi4c3k6qki8aisbg7f33n9607t7f0', '34.105.219.249', 1724140197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134303139363b7265645f75726c7c733a36323a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6d6f64756c65732f61637469766174652f6261636b7570223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('e5jkodco3f4jcmc1n3msfptnd818qsrd', '34.105.219.249', 1724140202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134303230323b7265645f75726c7c733a36333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6d6f64756c65732f61637469766174652f6578706f727473223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('e7vhpi2n5rr92eirn42p8got060uclbo', '52.81.78.71', 1724180675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343138303637353b5f707265765f75726c7c733a36343a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e2f726f626f74732e747874223b),
('e8umabmeculb6vii0r2u8qaig3hogr4k', '167.172.61.12', 1724479859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343437393835393b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('eakga8drqemnf5etmij7avckrbe8sabc', '45.87.9.173', 1724468832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343436383833313b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('ecnr8l6b9m0pejajiaj6uc2di7144cgj', '34.105.219.249', 1724693479, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343639333437393b7265645f75726c7c733a36383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f73746166662f6368616e67655f70617373776f72645f70726f66696c65223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('ejhcc3rd5nbk5tu47rght666sj5l5sh9', '34.105.219.249', 1724140091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134303039313b7265645f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6d6f64756c65732f75706c6f6164223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('ekmj9ps1rurbns7s9e09gfn9f09tashe', '::1', 1724778147, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343737373938333b5f707265765f75726c7c733a34353a22687474703a2f2f6c6f63616c686f73742f6572702f61646d696e2f657374696d617465732f657374696d617465223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f6c6f63616c686f73742f6572702f223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('eqoib4qi5i7q4618da8r14cbs0korfj9', '176.202.10.165', 1724172670, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343137323637303b5f707265765f75726c7c733a35373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f657374696d617465223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('f0hht3pemon7piteb4jbl3dibip63f0u', '106.75.17.115', 1724294018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343239343031383b5f707265765f75726c7c733a36343a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e2f726f626f74732e747874223b),
('f16fdn0l3b5gnfdbbr1rp7mqc8sqarct', '176.202.10.165', 1724160126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136303132363b5f707265765f75726c7c733a37363a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f70726f706f73616c2f312f3734656464316262623936383033333238633666393466396536333361616630223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('f6onao2n7ifrkb6612j0al1enf4a2c2a', '::1', 1724776244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343737363234343b5f707265765f75726c7c733a34353a22687474703a2f2f6c6f63616c686f73742f6572702f61646d696e2f657374696d617465732f657374696d617465223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f6c6f63616c686f73742f6572702f223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('f81qvhnlun1e16lv6j9t8g01qpohnl44', '34.105.219.249', 1724691722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343639313732313b7265645f75726c7c733a35373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f696e766f696365732f696e766f6963652f32223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('f974dqds1s2drgti31jd19lc1ol8pcr7', '176.202.10.165', 1724169628, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136393632383b5f707265765f75726c7c733a35383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f637573746f6d5f6669656c64732f6669656c64223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d6d6573736167652d737563636573737c733a33323a22437573746f6d206669656c64206164646564207375636365737366756c6c792e223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167652d73756363657373223b733a333a226e6577223b7d),
('fbma1vstgkvh1enhp3bt919ll6e0jp0e', '104.166.80.79', 1724157822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135373832323b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('fds3f3pqit2950alfk7njjekqdd82d5p', '212.119.45.133', 1724146923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363932333b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('ffqu9jg2a9jn8731hhfn3aqojd1dmj6u', '223.113.128.201', 1724293938, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343239333933383b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('fivh1t8d0e2ibqtiv8tip52mdh56kfuv', '176.202.10.165', 1724152938, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135323933383b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('fk5tpcbn5lam1s5fg1hiceq8qhifqram', '106.75.17.115', 1724294018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343239343031383b5f707265765f75726c7c733a36353a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e2f736974656d61702e786d6c223b),
('fqjhbg3eouj05bjra2titr9ovac41n19', '47.88.94.28', 1724190329, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343139303332393b69735f6d6f62696c657c623a313b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('fr02p4fa1jhs687jniidckbc1d3qqkip', '2a01:4f9:c012:6365::1', 1724513900, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343531333930303b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('frfrk13f4rn2f99laieirooldnglr9sh', '45.87.9.109', 1724220436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343232303433353b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('fv63s741m5a27el1qdsrsn53dddcafq9', '2604:a880:800:10::d4e:a001', 1724145178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353137383b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('g4jfg8j67nqv4p4kg2iu9bn9mr08krv6', '176.202.10.165', 1724162756, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136323735363b5f707265765f75726c7c733a35313a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f7061796d656e746d6f646573223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('g4kutm0o333kltrom2fm9nd4u6k619ac', '176.202.10.165', 1724159177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135393137373b5f707265765f75726c7c733a36313a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6b6e6f776c656467655f626173652f61727469636c65223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('g5st4r43ho1j0noc96tmj0jmefj7ot90', '154.28.229.216', 1724189817, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343138393831313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a36333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f666f72676f745f70617373776f7264223b),
('g7bj9rf5es8jlbas79pkjnkt6f2kjjf9', '78.101.181.144', 1724688685, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343638383638353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a33383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('gg7599b619kpbh8f2o5ci6o680r91b20', '34.105.219.249', 1724691334, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343639313333343b5f707265765f75726c7c733a37353a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f696e766f6963652f322f6132316332326139343663353831376565656335333863363065663330303636223b),
('gjbp69oshv61ir5q5tm0nuo257qlc129', '176.202.10.165', 1724225176, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343232353137363b7265645f75726c7c733a34383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d61746573223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('gk8oi8pj4aaplhgr36ecbetav53pno89', '176.202.10.165', 1724159790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135393739303b5f707265765f75726c7c733a36323a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f73657474696e67733f67726f75703d63616c656e646172223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('gns0q2osvi2dj875l18juhfrhnvp9suj', '::1', 1724775891, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343737353839313b5f707265765f75726c7c733a34353a22687474703a2f2f6c6f63616c686f73742f6572702f61646d696e2f657374696d617465732f657374696d617465223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f6c6f63616c686f73742f6572702f223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('gs61mod6mst1qciq8pj9k86ao16usagh', '78.101.181.144', 1724689099, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343638393039393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a37363a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f657374696d6174652f352f3735326161373765633334613630633261346236366638663365626261643339223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('h015lt7567p6f1u7ab5rsh1lvrap2q2g', '176.202.10.165', 1724143372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134333337323b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('hke7rdbu29m0s04epm3gv5b1eghvkkqa', '176.202.10.165', 1724162604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136323436393b5f707265765f75726c7c733a35323a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f7265706f7274732f6c65616473223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('hl9ogr4k8vb9urdqnlr3j9dpe2vlpiau', '51.81.46.212', 1724161601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136313630313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('hp8v9kietq5b5ahfj9p31tqsaafp0qep', '34.105.219.249', 1724139767, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343133393736373b),
('hs5dle7b8pkkd5or4agll58kp0ver1fv', '2604:a880:400:d0::2309:5001', 1724145178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353137383b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('hsj38bfkcvlkvi602ucssb5uc6b0uaps', '176.202.10.165', 1724497834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343439373739323b5f707265765f75726c7c733a36303a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f73657474696e67733f67726f75703d676f6f676c65223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('hv2to7p2m24rjvbfblmc62rcd57p5lnr', '176.202.10.165', 1724164667, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136343636373b5f707265765f75726c7c733a35383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6163636f756e74696e672f6e65775f72756c65223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('i5au0b4liq0m29ffhuum44g3kmvc6288', '52.81.78.71', 1724293953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343239333935333b5f707265765f75726c7c733a36353a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e2f736974656d61702e786d6c223b),
('icbgfhot3hroudlk7bi0bt88thhdrltb', '176.202.10.165', 1724164361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136343336313b5f707265765f75726c7c733a34393a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f726f6c65732f726f6c65223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('if8p46hlug7ilqo7fjqss0215l3bp1ub', '176.202.10.165', 1724158155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135383135353b5f707265765f75726c7c733a34373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f73657474696e6773223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('igca991mtplmvnrlk66vdkpreb7l4ile', '34.105.219.249', 1724689650, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343638393635303b7265645f75726c7c733a36333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6163636f756e74696e672f6a6f75726e616c5f656e747279223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('ighsan6jj48r2kiak9kqfe7emjp47fnl', '34.145.227.243', 1724139865, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343133393836353b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('ikl2qtk2pjeac98t6s9tkjkrgd7jitl1', '103.81.118.194', 1724146936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363933363b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('inc7fq5v2cv3ak3rt5in77r612ir69ep', '51.81.46.212', 1724161601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136313630313b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('iui9k3run7npifjvtb17s2a9mj6mql4m', '34.105.219.249', 1724142750, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134323735303b7265645f75726c7c733a34373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f73657474696e6773223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('ivjj5qvgrkh5d2bda6mn64o5stmoteka', '134.209.150.154', 1724664158, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343636343135383b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('j38b7b6koimh5jks06ib3j9j1b3td8i4', '68.66.220.30', 1724648408, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343634383430373b5f707265765f75726c7c733a34333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f63726f6e2f696e646578223b),
('j6rdh84eecnv18t9i2eo7a98id1dj5kl', '195.211.77.142', 1724145204, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353230343b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('jd3raaiseqg0fnsdc0luldj2crkn3uoj', '68.66.220.30', 1724562006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343536323030363b5f707265765f75726c7c733a34333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f63726f6e2f696e646578223b),
('jehejdvf7b1npcgbjkaoc405akgjd49j', '104.166.80.79', 1724157823, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135373832333b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('jingc5im77kob67j9tofv37clg9bl1ie', '223.113.128.201', 1724293938, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343239333933383b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('jjcqutvqpcb7plujk3ovsuu4cbpt955d', '68.66.220.30', 1724302806, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343330323830353b5f707265765f75726c7c733a34333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f63726f6e2f696e646578223b),
('jln4bmfdip4nfe55ud5aublqlup75n6t', '2604:a880:400:d0::24c8:8001', 1724145178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353137383b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('jml453ufgbovjk768bv5hmlh61fa8o69', '52.81.78.71', 1724180673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343138303637333b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('jmqd3q093arlag0i7buloav11mqah2ia', '176.202.10.165', 1724490880, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343439303838303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b5f707265765f75726c7c733a34353a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6261636b7570223b),
('jo2b2kmi3ffo7udao9a31atdjar4vvn5', '106.75.17.115', 1724294027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343239343032373b5f707265765f75726c7c733a36353a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e2f736974656d61702e786d6c223b),
('jpt4occtt9uq3l4k006tntlrue1a01lu', '34.105.219.249', 1724142885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134323838353b7265645f75726c7c733a37323a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6261636b75702f7570646174655f6175746f5f6261636b75705f6f7074696f6e73223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('k9doudmc07f4rctgni2c9lna5d7ndrvt', '204.85.30.68', 1724157676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135373637363b7265645f75726c7c733a33383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('kbqgqtkfeefu28lt5nfiee3bjseho0tm', '45.140.205.208', 1724146923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363932333b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('kibogtnnbrpbcagmsoahk10gff922q0q', '78.101.181.144', 1724689650, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343638393635303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35393a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f657374696d6174652f35223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('kj19p4s3pc1s2vau5c9kf40bp3c612ok', '::1', 1724763792, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343736333739323b5f707265765f75726c7c733a34353a22687474703a2f2f6c6f63616c686f73742f6572702f61646d696e2f657374696d617465732f657374696d617465223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f6c6f63616c686f73742f6572702f223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('kllco42mfdc1itg7mkvod1lvc65fcikn', '176.202.10.165', 1724494252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343439343235323b5f707265765f75726c7c733a37353a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f696e766f6963652f322f6132316332326139343663353831376565656335333863363065663330303636223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('klnvgu563g9iht6cs3dmmqosesgk6k42', '194.104.8.144', 1724151339, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135313333393b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('klvlcuu7ggnu1q3hikpetl2m9brnpda0', '34.105.219.249', 1724691303, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343639313330333b7265645f75726c7c733a35373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f696e766f696365732f696e766f6963652f32223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('knc6gl5troe608esn16ukr5jpu1imn4t', '34.105.219.249', 1724140213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134303231323b7265645f75726c7c733a34353a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6261636b7570223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('kpcs3kc3tgsbign2tdn3vi04qcto090u', '34.105.219.249', 1724688717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343638383731373b5f707265765f75726c7c733a37363a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f657374696d6174652f352f3735326161373765633334613630633261346236366638663365626261643339223b),
('kscff7sqbuicv88qi6cjc4jb3guu5edf', '45.140.205.43', 1724146923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363932333b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('l1r39699keslnk1c82tuuqoji59an9hg', '18.144.74.167', 1724145251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353235313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('lhp6uq5vp8f53pv6tq7r4gl49sc9c9gu', '34.133.138.57', 1724145319, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353331393b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('lml214lbcjiqo9kv15tqb5vfautqnkef', '176.202.10.165', 1724171282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343137313238323b5f707265765f75726c7c733a36313a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f73657474696e67733f67726f75703d67656e6572616c223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d6d6573736167652d737563636573737c733a31363a2253657474696e67732055706461746564223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167652d73756363657373223b733a333a226f6c64223b7d),
('ln9763tfu4hpfm7cl94c5rdqsuvul4ir', '223.113.128.201', 1724293929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343239333932383b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('lo1kupnss53hggq3vk5p9drp9bb95j9u', '34.248.137.227', 1724155975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135353937353b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('lqmie2cf83osja6u7hkjkhlud49mpq63', '176.202.10.165', 1724165009, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136353030393b5f707265765f75726c7c733a39333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6163636f756e74696e672f73657474696e673f67726f75703d696e636f6d655f73746174656d656e745f6d6f64696669636174696f6e223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('m8l01scuaa09bopoik0b598p81sov2np', '176.202.10.165', 1724159399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135393339393b5f707265765f75726c7c733a37303a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f73657474696e67733f67726f75703d7061796d656e745f6761746577617973223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('mao8vaad3l08rj6ca4psa9sgpdpu406j', '52.81.78.71', 1724180690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343138303639303b5f707265765f75726c7c733a36353a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e2f736974656d61702e786d6c223b),
('mg14nv60pmj810blsuqqgp719v57v22m', '176.202.10.165', 1724226676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343232363637363b5f707265765f75726c7c733a35313a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f7061796d656e746d6f646573223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('mg7vh6k6k1it9e7dfrm5tnnn2q9o7le6', '176.202.10.165', 1724231511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343233313531313b5f707265765f75726c7c733a36313a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f73657474696e67733f67726f75703d67656e6572616c223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b64656275677c733a3130333a224c6f676f206f722046617669636f6e206368616e67652064657465637465642e20496620796f75207374696c6c2073656520746865206f726967696e616c2043524d206c6f676f2074727920746f20636c65617220796f75722062726f77736572206361636865223b5f5f63695f766172737c613a313a7b733a353a226465627567223b733a333a226f6c64223b7d),
('mhqpq1rsift9blfrm82j9g2tsajo9ipc', '106.75.17.115', 1724294016, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343239343031363b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('ms3e63r6gk0csjtrkqjudc7jffj33r8n', '176.202.10.165', 1724170241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343137303234313b5f707265765f75726c7c733a33383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('msn4r4u9jls640svp38mt0fg9v43a5t2', '195.211.77.140', 1724145197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353139373b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('mss827evl96psv16v6se4nj4aik1jlas', '34.105.219.249', 1724140103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134303130323b7265645f75726c7c733a36363a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6d6f64756c65732f61637469766174652f6163636f756e74696e67223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('nf95vke3tos2fnprerkjr4ejnbc94nt5', '47.254.85.182', 1724189268, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343138393236383b69735f6d6f62696c657c623a313b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('ni9pfls6kd9isuhjopl0nisfetd6bv9p', '35.187.232.113', 1724140895, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134303839353b7265645f75726c7c733a35393a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6163636f756e74696e672f64617368626f617264223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('nltid106f6ud8mmj4biqn3v0pmnir6lf', '176.202.10.165', 1724163297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136333239373b5f707265765f75726c7c733a35383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657870656e7365732f63617465676f72696573223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('nlvcvc5mo536p4fl9k5brvtn86hj6oqm', '34.105.219.249', 1724140206, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134303230363b7265645f75726c7c733a36363a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6d6f64756c65732f61637469766174652f6d656e755f7365747570223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('nn0r6oes15qflesielntd3fsmptbveuc', '167.172.61.12', 1724479858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343437393835383b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('npm13pd0p75q4c39u2vf1afk0mfhcd80', '133.242.174.119', 1724158277, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135383237363b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('nste4t71cmunm0tl7dgfesr7e846m55s', '2a01:4f8:10a:2d6::2', 1724146947, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363934363b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('o874epg07efq8a7k7fdrvv16bsfak7f3', '34.105.219.249', 1724140215, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134303231353b7265645f75726c7c733a36303a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6261636b75702f6d616b655f6261636b75705f6462223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('o8cijs8rpa2aatb2j62qiom2pmqd5kmu', '104.253.214.226', 1724145406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353430363b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('ojdejrhdsg40r1bpsubdfmrg4sr9r4ag', '176.202.10.165', 1724497304, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343439373330343b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f7061796d656e74732f7064662f32223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('olpvk77a1gnlg5u3klgl604tp1hjikg5', '2a01:4f9:c012:6365::1', 1724518054, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343531383035343b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('opph4oj7up0svuptli19ar3ovosjqul6', '34.105.219.249', 1724140062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134303036323b7265645f75726c7c733a34363a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6d6f64756c6573223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('os1luthuo29pq7hm7ogunluan9v4bnje', '167.172.61.12', 1724479858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343437393835383b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('osg4rs3as8af3bhi668trg2i33aa5j51', '176.202.10.165', 1724495119, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343439353131393b5f707265765f75726c7c733a35373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f657374696d617465223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('ovmq1qhk14u0iacmsfner368tak83t9n', '2001:41d0:602:b8::', 1724152695, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135323638393b7265645f75726c7c733a33383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('p0rp4837pvt90cj2oclftclqg019upoj', '176.202.10.165', 1724165900, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136353930303b5f707265765f75726c7c733a36383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6163636f756e74696e672f6372656174655f706c6169645f746f6b656e223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('p3jsnnn1iuel0rf10tp9mgp62vgkou2q', '67.219.201.132', 1724688074, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343638383037343b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('p6hpnirsn6q50pisalc7ril845e36erg', '83.142.55.115', 1724146923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363932333b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('p72kltai31alebg35q6jihusjoj7668b', '::1', 1724775535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343737353533353b5f707265765f75726c7c733a34353a22687474703a2f2f6c6f63616c686f73742f6572702f61646d696e2f657374696d617465732f657374696d617465223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f6c6f63616c686f73742f6572702f223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('p83m3fvm9q7l100rdes181bi92hhmeaf', '94.139.233.80', 1724220490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343232303438393b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('pe09oo7k14bsbbsmeqt7pbp8rei1005p', '45.201.199.142', 1724146952, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363935323b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('pfdndg84pegmhq2aeq5i2c0kco1t2uq9', '176.202.10.165', 1724231187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343233313138373b5f707265765f75726c7c733a36383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f7064662f353f6f75747075745f747970653d49223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('pg37b1lgdit3bbio4a9lsd3nn84f0ag0', '34.105.219.249', 1724693458, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343639333435383b7265645f75726c7c733a35373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f73746166662f656469745f70726f66696c65223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('pka1bm93efuquodj086f2nck3fhf4di7', '176.202.10.165', 1724491333, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343439303838303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b5f707265765f75726c7c733a34373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f73657474696e6773223b),
('q1lp9ihfb92voai4bulfhfjja2ojpihv', '::1', 1724777649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343737373634393b5f707265765f75726c7c733a36333a22687474703a2f2f6c6f63616c686f73742f6572702f696e766f6963652f322f6132316332326139343663353831376565656335333863363065663330303636223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f6c6f63616c686f73742f6572702f223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('q3umdgp0q3m0efbrpeck5cuqmeqflq9n', '::1', 1724777323, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343737373332333b5f707265765f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6572702f61646d696e2f696e766f69636573223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f6c6f63616c686f73742f6572702f223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('qehuospi8pe8iii13pc9chn2bmp7qtjl', '34.105.219.249', 1724688713, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343638383731333b7265645f75726c7c733a34383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d61746573223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('qjhirhbhbtanmpepa2nfra51me78t1pp', '176.202.10.165', 1724157662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135373636313b7265645f75726c7c733a33383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('qlvdtra3lu7fjva116qeo8ntb3oh8etl', '2001:861:3007:42a0:9cca:edda:9dea:87b7', 1724228331, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343232383333313b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('qn6hk17cjfqarnqfobvjg6u7sim7baot', '212.70.108.7', 1724153260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135333236303b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('qv8p73sffgupbknrinqije4jiuucgkvp', '176.202.10.165', 1724163916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136333931363b5f707265765f75726c7c733a34393a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f726f6c65732f726f6c65223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('qvu41cfl4hdjrk5q6qsol8b0kfvh73r7', '176.202.10.165', 1724230871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343233303837313b5f707265765f75726c7c733a35343a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f7064662f34223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('r10kivk46detav5a5hckrdodcoij1b5c', '64.15.129.122', 1724147518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134373531383b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('r7bvjh5kle899vbl3kc0k74e8ruitejl', '78.101.181.144', 1724693436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343639333433363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a37353a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f696e766f6963652f322f6132316332326139343663353831376565656335333863363065663330303636223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('rbv2i2g13hq1kl5n6g8r0u0cj8u8q23n', '212.70.108.7', 1724140892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134303839323b5f707265765f75726c7c733a34353a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6261636b7570223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('ren6sqriuqnmdl9sgkquqtsvkk4kr0e9', '171.244.43.14', 1724188407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343138383430363b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('rg1njvv3lv1l8lm6mpmpadul6s4al17e', '104.164.173.170', 1724146613, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363631313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('rgj5dgmsrh4q8sjqssgdvs2jt1lssr4b', '104.166.80.205', 1724150669, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135303636383b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('rkrru94bvofomac0d74iph9s6vd5vbd2', '192.175.111.251', 1724147518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134373531383b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('rmksh6aue7hjl7qnuouqjkg521iejvpt', '45.87.9.94', 1724288694, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343238383639323b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('rpjt4kh642lp4brqps3td6ulqhorp1ak', '205.169.39.195', 1724145261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353236303b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('rr06jh9o3oonp1rno75f5e9jmed70mpb', '68.66.220.30', 1724475608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343437353630373b5f707265765f75726c7c733a34333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f63726f6e2f696e646578223b),
('rs6v3om05mmuqpe15lpjmvdc41oq60f0', '46.101.119.44', 1724660182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343636303138323b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('ru6eq7jpd0pp689mmlroh01h6vgoikr7', '45.87.9.126', 1724386239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343338363233383b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('rv5v0e7luc84rp2qkvbkdrldlafccgpc', '176.202.10.165', 1724497827, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343439373831313b5f707265765f75726c7c733a33383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('s3kv09vc0qtili4cmvaigovhmqlp536t', '176.202.10.165', 1724157682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135373638323b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('s5mkh9cdqc3t1cg3gnei880llm9hlmo4', '212.70.108.7', 1724142578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134323537383b5f707265765f75726c7c733a34353a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6261636b7570223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('s60f3ogn294388ppecebmmpo4d1r7k01', '34.248.137.227', 1724155980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135353937393b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('sctnpm4o34hi0e5r933151rbun3uedcu', '176.202.10.165', 1724249263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343234393236333b5f707265765f75726c7c733a33383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('sj7shmt8ken9a7j9n2pv0cfu757ug5t0', '176.202.10.165', 1724492380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343439323338303b5f707265765f75726c7c733a37363a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f657374696d6174652f352f3735326161373765633334613630633261346236366638663365626261643339223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('sjh78gogjs6civv2lnvc3r9iopcud9eb', '192.175.111.249', 1724147518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134373531383b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('sloco6k3ekvti7p3a7bnqq1q2tk4e2k1', '176.202.10.165', 1724171592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343137313539323b5f707265765f75726c7c733a35373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f657374696d617465223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('slrncia3uglka76t3fi8qldm4lmnrju8', '34.105.219.249', 1724139905, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343133393930343b7265645f75726c7c733a34373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f73657474696e6773223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('stgapfsm2vtjjqrb1pc91g6dcm84dmvn', '176.202.10.165', 1724161708, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136313730383b5f707265765f75726c7c733a35383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f73657474696e67733f67726f75703d696e666f223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('su6mgvuem7ukfcf583h4qseme2vl8qgf', '176.202.10.165', 1724249265, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343234393236333b5f707265765f75726c7c733a33383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('t0rm4u90b794imesbpeoi7mra0gcpk1t', '176.202.10.165', 1724497792, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343439373739323b5f707265765f75726c7c733a36303a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f73657474696e67733f67726f75703d676f6f676c65223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('t102nua9psu2vq0s4ieo3v838tokb75f', '34.105.219.249', 1724693451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343639333435313b7265645f75726c7c733a34363a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f70726f66696c65223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('t8orm59bojfcnfjdcd4tcpfj6ol823t5', '46.101.119.44', 1724660181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343636303138313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('tlfbf3522vjk3niev49uqgm4kir49no9', '68.66.220.30', 1724389208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343338393230373b5f707265765f75726c7c733a34333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f63726f6e2f696e646578223b),
('u3kdkt3adj67ps8u2p2eru6sgt4iop4n', '176.202.10.165', 1724225677, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343232353637373b5f707265765f75726c7c733a35393a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f657374696d6174652f32223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('u4u2lb3bfisqko3bittsh8jskt3f8c6d', '64.15.129.104', 1724147518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134373531383b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('ub8u30ppol6ph8avtmlunljr4grrl3k6', '176.202.10.165', 1724163612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136333631323b5f707265765f75726c7c733a34363a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6d6f64756c6573223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a226436663430363035643165613432326235373562373063663030313062643332223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a34333a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636866223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d637a6866223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d636a6866223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a353a222d634a6866223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a363a222d7239202d71223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31363a226170706c69636174696f6e2f782d787a223b613a353a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b733a373a2267657473697a65223b613a343a7b733a343a2261726763223b733a343a222d787666223b733a363a22746f53706563223b733a31373a222d2d746f2d7374646f75747c7763202d63223b733a353a227265676578223b733a34383a222f5e2e2b283f3a5c725c6e7c5c6e7c5c72295b5e5c725c6e302d395d2a285b302d395d2b295b5e5c725c6e5d2a242f73223b733a373a227265706c616365223b733a323a222431223b7d7d733a31353a226170706c69636174696f6e2f7a6970223b613a353a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a323a222d71223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b733a373a2267657473697a65223b613a333a7b733a343a2261726763223b733a353a222d5a202d74223b733a353a227265676578223b733a32313a222f5e2e2b3f2c5c733f285b302d395d2b292e2b242f223b733a373a227265706c616365223b733a323a222431223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a373a2273756264697273223b613a313a7b733a35303a222f686f6d652f616c726165642f6572702e616c726165646175746f6d6f62696c652e636f6d2f6d656469612f7075626c6963223b623a303b7d7d733a31343a223a4c4153545f4143544956495459223b693a313732343136313938323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('ue14cal2dj7ff03c3a0l1sdm2sikcrg6', '34.105.219.249', 1724140209, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134303230393b7265645f75726c7c733a36373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6d6f64756c65732f61637469766174652f7468656d655f7374796c65223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('ufts1518sgb0unbuijgt7aae7qa0pbtn', '176.202.10.165', 1724160143, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136303134333b5f707265765f75726c7c733a35373a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f73657474696e67733f67726f75703d706466223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b6d6573736167652d7761726e696e677c733a32303a224e6f2066696c65207761732075706c6f61646564223b5f5f63695f766172737c613a323a7b733a31353a226d6573736167652d7761726e696e67223b733a333a226f6c64223b733a31353a226d6573736167652d73756363657373223b733a333a226f6c64223b7d6d6573736167652d737563636573737c733a31363a2253657474696e67732055706461746564223b),
('uhom2mmrlniv3bjtb8h3jjt04g4l9ktn', '104.164.173.195', 1724192168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343139323136353b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a36333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f666f72676f745f70617373776f7264223b),
('uiu1i3dgvgtqo8771ajph3n6edq864jn', '2a03:b0c0:3:d0::d1a:1', 1724145178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353137383b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('un18eovk5h7v52q4lqrigk2007itrqq6', '34.105.219.249', 1724689099, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343638393039383b7265645f75726c7c733a35393a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d617465732f657374696d6174652f35223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('uplp8b25uigk88eikri2ko064qoabtd9', '2001:861:3007:42a0:9cca:edda:9dea:87b7', 1724228331, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343232383333313b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('v3uagd25d6ict1lp1u5p10sa36gio6qm', '223.96.253.157', 1724146937, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363933373b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('v9bmn75nfutptt79k98bfg3eq0jmqt65', '212.70.108.7', 1724153260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343135333236303b5f707265765f75726c7c733a34353a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f6261636b7570223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('vgk3nbel326s1tv181ekni6v4ro6tkdg', '161.123.42.61', 1724220496, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343232303439363b69735f6d6f62696c657c623a313b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('vhc3ppkjlqd7170hmbacpgf28u9foqli', '107.172.166.241', 1724145405, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134353430353b69735f6d6f62696c657c623a313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('vjk7e3kg4hnusl575vngu0m3f4b9rd25', '34.105.219.249', 1724139815, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343133393831353b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f61757468656e7469636174696f6e223b),
('vln4jsm8kt17oqiuufldm1pbb1f89pq1', '103.206.130.90', 1724146940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343134363934303b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('vo33l2h01ntttvacjtsjgr22f774dlfe', '176.202.10.165', 1724162469, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343136323436393b5f707265765f75726c7c733a34383a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61646d696e2f657374696d61746573223b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('voc88g99jlntp20dn8iou5r324gsf5kf', '34.105.219.249', 1724693436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343639333433353b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b),
('vp6kp5ib3n89r083279omnsd8ebv8epu', '52.81.78.71', 1724293951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343239333935313b7265645f75726c7c733a33333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f223b),
('vstha3iq68qq910seg5uljth0pqmh9jo', '106.75.17.115', 1724294023, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732343239343032333b5f707265765f75726c7c733a35333a2268747470733a2f2f6572702e616c726165646175746f6d6f62696c652e636f6d2f61757468656e7469636174696f6e2f6c6f67696e223b);

-- --------------------------------------------------------

--
-- Table structure for table `tblshared_customer_files`
--

CREATE TABLE `tblshared_customer_files` (
  `file_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblspam_filters`
--

CREATE TABLE `tblspam_filters` (
  `id` int(11) NOT NULL,
  `type` varchar(40) NOT NULL,
  `rel_type` varchar(10) NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `staffid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `facebook` longtext DEFAULT NULL,
  `linkedin` longtext DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `datecreated` datetime NOT NULL,
  `profile_image` varchar(191) DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT 0,
  `role` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `default_language` varchar(40) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `media_path_slug` varchar(191) DEFAULT NULL,
  `is_not_staff` int(11) NOT NULL DEFAULT 0,
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT 0.00,
  `two_factor_auth_enabled` tinyint(1) DEFAULT 0,
  `two_factor_auth_code` varchar(100) DEFAULT NULL,
  `two_factor_auth_code_requested` datetime DEFAULT NULL,
  `email_signature` mediumtext DEFAULT NULL,
  `google_auth_secret` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`staffid`, `email`, `firstname`, `lastname`, `facebook`, `linkedin`, `phonenumber`, `skype`, `password`, `datecreated`, `profile_image`, `last_ip`, `last_login`, `last_activity`, `last_password_change`, `new_pass_key`, `new_pass_key_requested`, `admin`, `role`, `active`, `default_language`, `direction`, `media_path_slug`, `is_not_staff`, `hourly_rate`, `two_factor_auth_enabled`, `two_factor_auth_code`, `two_factor_auth_code_requested`, `email_signature`, `google_auth_secret`) VALUES
(1, 'alraedautomobile@dotswebsolution.com', 'Alraed', 'Automobile', NULL, NULL, NULL, NULL, '$2a$08$SfVq9md1UonKGwxjYprAX.BOmk8VcvHkwnN8Gfbyqhhwg8ukSB4kW', '2024-08-20 03:41:48', NULL, '::1', '2024-08-27 15:55:09', '2024-08-27 20:02:27', '2024-08-26 20:31:19', NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, 0, 0.00, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff_departments`
--

CREATE TABLE `tblstaff_departments` (
  `staffdepartmentid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `departmentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff_permissions`
--

CREATE TABLE `tblstaff_permissions` (
  `staff_id` int(11) NOT NULL,
  `feature` varchar(40) NOT NULL,
  `capability` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscriptions`
--

CREATE TABLE `tblsubscriptions` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `description_in_item` tinyint(1) NOT NULL DEFAULT 0,
  `clientid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `terms` mediumtext DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `stripe_tax_id` varchar(50) DEFAULT NULL,
  `tax_id_2` int(11) NOT NULL DEFAULT 0,
  `stripe_tax_id_2` varchar(50) DEFAULT NULL,
  `stripe_plan_id` mediumtext DEFAULT NULL,
  `stripe_subscription_id` mediumtext NOT NULL,
  `next_billing_cycle` bigint(20) DEFAULT NULL,
  `ends_at` bigint(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `hash` varchar(32) NOT NULL,
  `created` datetime NOT NULL,
  `created_from` int(11) NOT NULL,
  `date_subscribed` datetime DEFAULT NULL,
  `in_test_environment` int(11) DEFAULT NULL,
  `last_sent_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltaggables`
--

CREATE TABLE `tbltaggables` (
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `tag_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltags`
--

CREATE TABLE `tbltags` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltasks`
--

CREATE TABLE `tbltasks` (
  `id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `startdate` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `datefinished` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `is_added_from_contact` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT 0,
  `is_recurring_from` int(11) DEFAULT NULL,
  `cycles` int(11) NOT NULL DEFAULT 0,
  `total_cycles` int(11) NOT NULL DEFAULT 0,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT 0,
  `last_recurring_date` date DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 0,
  `billable` tinyint(1) NOT NULL DEFAULT 0,
  `billed` tinyint(1) NOT NULL DEFAULT 0,
  `invoice_id` int(11) NOT NULL DEFAULT 0,
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT 0.00,
  `milestone` int(11) DEFAULT 0,
  `kanban_order` int(11) DEFAULT 1,
  `milestone_order` int(11) NOT NULL DEFAULT 0,
  `visible_to_client` tinyint(1) NOT NULL DEFAULT 0,
  `deadline_notified` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltaskstimers`
--

CREATE TABLE `tbltaskstimers` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `start_time` varchar(64) NOT NULL,
  `end_time` varchar(64) DEFAULT NULL,
  `staff_id` int(11) NOT NULL,
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT 0.00,
  `note` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltasks_checklist_templates`
--

CREATE TABLE `tbltasks_checklist_templates` (
  `id` int(11) NOT NULL,
  `description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_assigned`
--

CREATE TABLE `tbltask_assigned` (
  `id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `assigned_from` int(11) NOT NULL DEFAULT 0,
  `is_assigned_from_contact` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_checklist_items`
--

CREATE TABLE `tbltask_checklist_items` (
  `id` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `finished` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `finished_from` int(11) DEFAULT 0,
  `list_order` int(11) NOT NULL DEFAULT 0,
  `assigned` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_comments`
--

CREATE TABLE `tbltask_comments` (
  `id` int(11) NOT NULL,
  `content` mediumtext NOT NULL,
  `taskid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `file_id` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_followers`
--

CREATE TABLE `tbltask_followers` (
  `id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltaxes`
--

CREATE TABLE `tbltaxes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `taxrate` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltemplates`
--

CREATE TABLE `tbltemplates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets`
--

CREATE TABLE `tbltickets` (
  `ticketid` int(11) NOT NULL,
  `adminreplying` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL,
  `contactid` int(11) NOT NULL DEFAULT 0,
  `merged_ticket_id` int(11) DEFAULT NULL,
  `email` mediumtext DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `department` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `service` int(11) DEFAULT NULL,
  `ticketkey` varchar(32) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` mediumtext DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `lastreply` datetime DEFAULT NULL,
  `clientread` int(11) NOT NULL DEFAULT 0,
  `adminread` int(11) NOT NULL DEFAULT 0,
  `assigned` int(11) NOT NULL DEFAULT 0,
  `staff_id_replying` int(11) DEFAULT NULL,
  `cc` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_pipe_log`
--

CREATE TABLE `tbltickets_pipe_log` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `email_to` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` longtext NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_predefined_replies`
--

CREATE TABLE `tbltickets_predefined_replies` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_priorities`
--

CREATE TABLE `tbltickets_priorities` (
  `priorityid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbltickets_priorities`
--

INSERT INTO `tbltickets_priorities` (`priorityid`, `name`) VALUES
(1, 'Low'),
(2, 'Medium'),
(3, 'High');

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_status`
--

CREATE TABLE `tbltickets_status` (
  `ticketstatusid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `isdefault` int(11) NOT NULL DEFAULT 0,
  `statuscolor` varchar(7) DEFAULT NULL,
  `statusorder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbltickets_status`
--

INSERT INTO `tbltickets_status` (`ticketstatusid`, `name`, `isdefault`, `statuscolor`, `statusorder`) VALUES
(1, 'Open', 1, '#ff2d42', 1),
(2, 'In progress', 1, '#22c55e', 2),
(3, 'Answered', 1, '#2563eb', 3),
(4, 'On Hold', 1, '#64748b', 4),
(5, 'Closed', 1, '#03a9f4', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblticket_attachments`
--

CREATE TABLE `tblticket_attachments` (
  `id` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `replyid` int(11) DEFAULT NULL,
  `file_name` varchar(191) NOT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblticket_replies`
--

CREATE TABLE `tblticket_replies` (
  `id` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `contactid` int(11) NOT NULL DEFAULT 0,
  `name` mediumtext DEFAULT NULL,
  `email` mediumtext DEFAULT NULL,
  `date` datetime NOT NULL,
  `message` mediumtext DEFAULT NULL,
  `attachment` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltodos`
--

CREATE TABLE `tbltodos` (
  `todoid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `datefinished` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltracked_mails`
--

CREATE TABLE `tbltracked_mails` (
  `id` int(11) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT 0,
  `date_opened` datetime DEFAULT NULL,
  `subject` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltwocheckout_log`
--

CREATE TABLE `tbltwocheckout_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference` varchar(64) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `created_at` datetime NOT NULL,
  `attempt_reference` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_auto_login`
--

CREATE TABLE `tbluser_auto_login` (
  `key_id` char(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(150) NOT NULL,
  `last_ip` varchar(40) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `staff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbluser_auto_login`
--

INSERT INTO `tbluser_auto_login` (`key_id`, `user_id`, `user_agent`, `last_ip`, `last_login`, `staff`) VALUES
('b5669bdced1e5fef965eeadd99d85b59', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '212.70.108.7', '2024-08-20 07:43:35', 1),
('6c9d299ce5a8a07fe2ff6e74e801e23b', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '176.202.10.165', '2024-08-21 07:26:34', 1),
('3b99a39fcb5d79a11678d5ed451daf0c', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '176.202.10.165', '2024-08-24 09:14:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_meta`
--

CREATE TABLE `tbluser_meta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `client_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `contact_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(191) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbluser_meta`
--

INSERT INTO `tbluser_meta` (`umeta_id`, `staff_id`, `client_id`, `contact_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 0, 0, 'dashboard_widgets_visibility', NULL),
(2, 1, 0, 0, 'dashboard_widgets_order', 'a:8:{s:6:\"top-12\";a:1:{i:0;s:16:\"widget-top_stats\";}s:13:\"middle-left-6\";a:0:{}s:14:\"middle-right-6\";a:0:{}s:6:\"left-8\";a:7:{i:0;s:23:\"widget-finance_overview\";i:1;s:21:\"widget-payments_chart\";i:2;s:16:\"widget-user_data\";i:3;s:22:\"widget-upcoming_events\";i:4;s:15:\"widget-calendar\";i:5;s:25:\"widget-contracts_expiring\";i:6;s:21:\"widget-tickets_report\";}s:7:\"right-4\";a:5:{i:0;s:12:\"widget-todos\";i:1;s:18:\"widget-leads_chart\";i:2;s:21:\"widget-projects_chart\";i:3;s:20:\"widget-tickets_chart\";i:4;s:24:\"widget-projects_activity\";}s:13:\"bottom-left-4\";a:0:{}s:15:\"bottom-middle-4\";a:0:{}s:14:\"bottom-right-4\";a:0:{}}'),
(4, 1, 0, 0, 'recent_searches', '[\"cap\",\"re\",\"recap\",\"rec\",\"disco\"]');

-- --------------------------------------------------------

--
-- Table structure for table `tblvault`
--

CREATE TABLE `tblvault` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `server_address` varchar(191) NOT NULL,
  `port` int(11) DEFAULT NULL,
  `username` varchar(191) NOT NULL,
  `password` mediumtext NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `creator` int(11) NOT NULL,
  `creator_name` varchar(100) DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 1,
  `share_in_projects` tinyint(1) NOT NULL DEFAULT 0,
  `last_updated` datetime DEFAULT NULL,
  `last_updated_from` varchar(100) DEFAULT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblviews_tracking`
--

CREATE TABLE `tblviews_tracking` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `view_ip` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblviews_tracking`
--

INSERT INTO `tblviews_tracking` (`id`, `rel_id`, `rel_type`, `date`, `view_ip`) VALUES
(1, 5, 'estimate', '2024-08-26 19:11:57', '34.105.219.249'),
(2, 2, 'invoice', '2024-08-26 19:55:34', '34.105.219.249');

-- --------------------------------------------------------

--
-- Table structure for table `tblweb_to_lead`
--

CREATE TABLE `tblweb_to_lead` (
  `id` int(11) NOT NULL,
  `form_key` varchar(32) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `notify_lead_imported` int(11) NOT NULL DEFAULT 1,
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` longtext DEFAULT NULL,
  `responsible` int(11) NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL,
  `form_data` longtext DEFAULT NULL,
  `recaptcha` int(11) NOT NULL DEFAULT 0,
  `submit_btn_name` varchar(40) DEFAULT NULL,
  `submit_btn_text_color` varchar(10) DEFAULT '#ffffff',
  `submit_btn_bg_color` varchar(10) DEFAULT '#84c529',
  `success_submit_msg` mediumtext DEFAULT NULL,
  `submit_action` int(11) DEFAULT 0,
  `lead_name_prefix` varchar(255) DEFAULT NULL,
  `submit_redirect_url` longtext DEFAULT NULL,
  `language` varchar(40) DEFAULT NULL,
  `allow_duplicate` int(11) NOT NULL DEFAULT 1,
  `mark_public` int(11) NOT NULL DEFAULT 0,
  `track_duplicate_field` varchar(20) DEFAULT NULL,
  `track_duplicate_field_and` varchar(20) DEFAULT NULL,
  `create_task_on_duplicate` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblacc_accounts`
--
ALTER TABLE `tblacc_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_account_history`
--
ALTER TABLE `tblacc_account_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_account_type_details`
--
ALTER TABLE `tblacc_account_type_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_banking_rules`
--
ALTER TABLE `tblacc_banking_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_banking_rule_details`
--
ALTER TABLE `tblacc_banking_rule_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_bank_reconciles`
--
ALTER TABLE `tblacc_bank_reconciles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_bill_mappings`
--
ALTER TABLE `tblacc_bill_mappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_budgets`
--
ALTER TABLE `tblacc_budgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_budget_details`
--
ALTER TABLE `tblacc_budget_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_checks`
--
ALTER TABLE `tblacc_checks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_checks_printed`
--
ALTER TABLE `tblacc_checks_printed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_check_details`
--
ALTER TABLE `tblacc_check_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_expense_category_mappings`
--
ALTER TABLE `tblacc_expense_category_mappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_expense_category_mapping_details`
--
ALTER TABLE `tblacc_expense_category_mapping_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_income_statement_modifications`
--
ALTER TABLE `tblacc_income_statement_modifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_item_automatics`
--
ALTER TABLE `tblacc_item_automatics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_journal_entries`
--
ALTER TABLE `tblacc_journal_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_matched_transactions`
--
ALTER TABLE `tblacc_matched_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_payment_mode_mappings`
--
ALTER TABLE `tblacc_payment_mode_mappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_pay_bills`
--
ALTER TABLE `tblacc_pay_bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_pay_bill_details`
--
ALTER TABLE `tblacc_pay_bill_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_pay_bill_item_paid`
--
ALTER TABLE `tblacc_pay_bill_item_paid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_plaid_transaction_logs`
--
ALTER TABLE `tblacc_plaid_transaction_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_print_later`
--
ALTER TABLE `tblacc_print_later`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_reconciles`
--
ALTER TABLE `tblacc_reconciles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_tax_mappings`
--
ALTER TABLE `tblacc_tax_mappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_transaction_bankings`
--
ALTER TABLE `tblacc_transaction_bankings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblacc_transfers`
--
ALTER TABLE `tblacc_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblactivity_log`
--
ALTER TABLE `tblactivity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staffid` (`staffid`);

--
-- Indexes for table `tblannouncements`
--
ALTER TABLE `tblannouncements`
  ADD PRIMARY KEY (`announcementid`);

--
-- Indexes for table `tblclients`
--
ALTER TABLE `tblclients`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `country` (`country`),
  ADD KEY `leadid` (`leadid`),
  ADD KEY `company` (`company`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `tblconsents`
--
ALTER TABLE `tblconsents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purpose_id` (`purpose_id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `lead_id` (`lead_id`);

--
-- Indexes for table `tblconsent_purposes`
--
ALTER TABLE `tblconsent_purposes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontacts`
--
ALTER TABLE `tblcontacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `lastname` (`lastname`),
  ADD KEY `email` (`email`),
  ADD KEY `is_primary` (`is_primary`);

--
-- Indexes for table `tblcontact_permissions`
--
ALTER TABLE `tblcontact_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontracts`
--
ALTER TABLE `tblcontracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client` (`client`),
  ADD KEY `contract_type` (`contract_type`);

--
-- Indexes for table `tblcontracts_types`
--
ALTER TABLE `tblcontracts_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontract_comments`
--
ALTER TABLE `tblcontract_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontract_renewals`
--
ALTER TABLE `tblcontract_renewals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcountries`
--
ALTER TABLE `tblcountries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tblcreditnotes`
--
ALTER TABLE `tblcreditnotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency` (`currency`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `tblcreditnote_refunds`
--
ALTER TABLE `tblcreditnote_refunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcredits`
--
ALTER TABLE `tblcredits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcurrencies`
--
ALTER TABLE `tblcurrencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcurrency_rates`
--
ALTER TABLE `tblcurrency_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcurrency_rate_logs`
--
ALTER TABLE `tblcurrency_rate_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcustomers_groups`
--
ALTER TABLE `tblcustomers_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblcustomer_admins`
--
ALTER TABLE `tblcustomer_admins`
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `tblcustomer_groups`
--
ALTER TABLE `tblcustomer_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupid` (`groupid`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tblcustomfields`
--
ALTER TABLE `tblcustomfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcustomfieldsvalues`
--
ALTER TABLE `tblcustomfieldsvalues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relid` (`relid`),
  ADD KEY `fieldto` (`fieldto`),
  ADD KEY `fieldid` (`fieldid`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`departmentid`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tbldismissed_announcements`
--
ALTER TABLE `tbldismissed_announcements`
  ADD PRIMARY KEY (`dismissedannouncementid`),
  ADD KEY `announcementid` (`announcementid`),
  ADD KEY `staff` (`staff`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `tblemailtemplates`
--
ALTER TABLE `tblemailtemplates`
  ADD PRIMARY KEY (`emailtemplateid`);

--
-- Indexes for table `tblestimates`
--
ALTER TABLE `tblestimates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `currency` (`currency`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `sale_agent` (`sale_agent`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tblestimate_requests`
--
ALTER TABLE `tblestimate_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblestimate_request_forms`
--
ALTER TABLE `tblestimate_request_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblestimate_request_status`
--
ALTER TABLE `tblestimate_request_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblevents`
--
ALTER TABLE `tblevents`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `tblexpenses`
--
ALTER TABLE `tblexpenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `category` (`category`),
  ADD KEY `currency` (`currency`);

--
-- Indexes for table `tblexpenses_categories`
--
ALTER TABLE `tblexpenses_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfiles`
--
ALTER TABLE `tblfiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`);

--
-- Indexes for table `tblfilters`
--
ALTER TABLE `tblfilters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfilter_defaults`
--
ALTER TABLE `tblfilter_defaults`
  ADD KEY `filter_id` (`filter_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `tblform_questions`
--
ALTER TABLE `tblform_questions`
  ADD PRIMARY KEY (`questionid`);

--
-- Indexes for table `tblform_question_box`
--
ALTER TABLE `tblform_question_box`
  ADD PRIMARY KEY (`boxid`);

--
-- Indexes for table `tblform_question_box_description`
--
ALTER TABLE `tblform_question_box_description`
  ADD PRIMARY KEY (`questionboxdescriptionid`);

--
-- Indexes for table `tblform_results`
--
ALTER TABLE `tblform_results`
  ADD PRIMARY KEY (`resultid`);

--
-- Indexes for table `tblgdpr_requests`
--
ALTER TABLE `tblgdpr_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblinvoicepaymentrecords`
--
ALTER TABLE `tblinvoicepaymentrecords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceid` (`invoiceid`),
  ADD KEY `paymentmethod` (`paymentmethod`);

--
-- Indexes for table `tblinvoices`
--
ALTER TABLE `tblinvoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency` (`currency`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `sale_agent` (`sale_agent`),
  ADD KEY `total` (`total`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tblitemable`
--
ALTER TABLE `tblitemable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `qty` (`qty`),
  ADD KEY `rate` (`rate`);

--
-- Indexes for table `tblitems`
--
ALTER TABLE `tblitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax` (`tax`),
  ADD KEY `tax2` (`tax2`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `tblitems_groups`
--
ALTER TABLE `tblitems_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblitem_tax`
--
ALTER TABLE `tblitem_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemid` (`itemid`),
  ADD KEY `rel_id` (`rel_id`);

--
-- Indexes for table `tblknowedge_base_article_feedback`
--
ALTER TABLE `tblknowedge_base_article_feedback`
  ADD PRIMARY KEY (`articleanswerid`);

--
-- Indexes for table `tblknowledge_base`
--
ALTER TABLE `tblknowledge_base`
  ADD PRIMARY KEY (`articleid`);

--
-- Indexes for table `tblknowledge_base_groups`
--
ALTER TABLE `tblknowledge_base_groups`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `tblleads`
--
ALTER TABLE `tblleads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `company` (`company`),
  ADD KEY `email` (`email`),
  ADD KEY `assigned` (`assigned`),
  ADD KEY `status` (`status`),
  ADD KEY `source` (`source`),
  ADD KEY `lastcontact` (`lastcontact`),
  ADD KEY `dateadded` (`dateadded`),
  ADD KEY `leadorder` (`leadorder`),
  ADD KEY `from_form_id` (`from_form_id`);

--
-- Indexes for table `tblleads_email_integration`
--
ALTER TABLE `tblleads_email_integration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleads_sources`
--
ALTER TABLE `tblleads_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblleads_status`
--
ALTER TABLE `tblleads_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tbllead_activity_log`
--
ALTER TABLE `tbllead_activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbllead_integration_emails`
--
ALTER TABLE `tbllead_integration_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmail_queue`
--
ALTER TABLE `tblmail_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmilestones`
--
ALTER TABLE `tblmilestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmodules`
--
ALTER TABLE `tblmodules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnewsfeed_comment_likes`
--
ALTER TABLE `tblnewsfeed_comment_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnewsfeed_posts`
--
ALTER TABLE `tblnewsfeed_posts`
  ADD PRIMARY KEY (`postid`);

--
-- Indexes for table `tblnewsfeed_post_comments`
--
ALTER TABLE `tblnewsfeed_post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnewsfeed_post_likes`
--
ALTER TABLE `tblnewsfeed_post_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnotes`
--
ALTER TABLE `tblnotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`);

--
-- Indexes for table `tblnotifications`
--
ALTER TABLE `tblnotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbloptions`
--
ALTER TABLE `tbloptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblpayment_attempts`
--
ALTER TABLE `tblpayment_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpayment_modes`
--
ALTER TABLE `tblpayment_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpinned_projects`
--
ALTER TABLE `tblpinned_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `tblprojectdiscussioncomments`
--
ALTER TABLE `tblprojectdiscussioncomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprojectdiscussions`
--
ALTER TABLE `tblprojectdiscussions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprojects`
--
ALTER TABLE `tblprojects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblproject_activity`
--
ALTER TABLE `tblproject_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproject_files`
--
ALTER TABLE `tblproject_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproject_members`
--
ALTER TABLE `tblproject_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `tblproject_notes`
--
ALTER TABLE `tblproject_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproject_settings`
--
ALTER TABLE `tblproject_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `tblproposals`
--
ALTER TABLE `tblproposals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tblproposal_comments`
--
ALTER TABLE `tblproposal_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_vendor`
--
ALTER TABLE `tblpur_vendor`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `tblrelated_items`
--
ALTER TABLE `tblrelated_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblreminders`
--
ALTER TABLE `tblreminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `staff` (`staff`);

--
-- Indexes for table `tblroles`
--
ALTER TABLE `tblroles`
  ADD PRIMARY KEY (`roleid`);

--
-- Indexes for table `tblsales_activity`
--
ALTER TABLE `tblsales_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblscheduled_emails`
--
ALTER TABLE `tblscheduled_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `tblsessions`
--
ALTER TABLE `tblsessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tblspam_filters`
--
ALTER TABLE `tblspam_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`staffid`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `lastname` (`lastname`);

--
-- Indexes for table `tblstaff_departments`
--
ALTER TABLE `tblstaff_departments`
  ADD PRIMARY KEY (`staffdepartmentid`);

--
-- Indexes for table `tblsubscriptions`
--
ALTER TABLE `tblsubscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `currency` (`currency`),
  ADD KEY `tax_id` (`tax_id`);

--
-- Indexes for table `tbltaggables`
--
ALTER TABLE `tbltaggables`
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `tbltags`
--
ALTER TABLE `tbltags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tbltasks`
--
ALTER TABLE `tbltasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `milestone` (`milestone`),
  ADD KEY `kanban_order` (`kanban_order`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbltaskstimers`
--
ALTER TABLE `tbltaskstimers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `tbltasks_checklist_templates`
--
ALTER TABLE `tbltasks_checklist_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltask_assigned`
--
ALTER TABLE `tbltask_assigned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taskid` (`taskid`),
  ADD KEY `staffid` (`staffid`);

--
-- Indexes for table `tbltask_checklist_items`
--
ALTER TABLE `tbltask_checklist_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taskid` (`taskid`);

--
-- Indexes for table `tbltask_comments`
--
ALTER TABLE `tbltask_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `taskid` (`taskid`);

--
-- Indexes for table `tbltask_followers`
--
ALTER TABLE `tbltask_followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltaxes`
--
ALTER TABLE `tbltaxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltemplates`
--
ALTER TABLE `tbltemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltickets`
--
ALTER TABLE `tbltickets`
  ADD PRIMARY KEY (`ticketid`),
  ADD KEY `service` (`service`),
  ADD KEY `department` (`department`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`),
  ADD KEY `priority` (`priority`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `contactid` (`contactid`);

--
-- Indexes for table `tbltickets_pipe_log`
--
ALTER TABLE `tbltickets_pipe_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltickets_predefined_replies`
--
ALTER TABLE `tbltickets_predefined_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltickets_priorities`
--
ALTER TABLE `tbltickets_priorities`
  ADD PRIMARY KEY (`priorityid`);

--
-- Indexes for table `tbltickets_status`
--
ALTER TABLE `tbltickets_status`
  ADD PRIMARY KEY (`ticketstatusid`);

--
-- Indexes for table `tblticket_attachments`
--
ALTER TABLE `tblticket_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblticket_replies`
--
ALTER TABLE `tblticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltodos`
--
ALTER TABLE `tbltodos`
  ADD PRIMARY KEY (`todoid`);

--
-- Indexes for table `tbltracked_mails`
--
ALTER TABLE `tbltracked_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltwocheckout_log`
--
ALTER TABLE `tbltwocheckout_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `tbluser_meta`
--
ALTER TABLE `tbluser_meta`
  ADD PRIMARY KEY (`umeta_id`);

--
-- Indexes for table `tblvault`
--
ALTER TABLE `tblvault`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblviews_tracking`
--
ALTER TABLE `tblviews_tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblweb_to_lead`
--
ALTER TABLE `tblweb_to_lead`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblacc_accounts`
--
ALTER TABLE `tblacc_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `tblacc_account_history`
--
ALTER TABLE `tblacc_account_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tblacc_account_type_details`
--
ALTER TABLE `tblacc_account_type_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `tblacc_banking_rules`
--
ALTER TABLE `tblacc_banking_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_banking_rule_details`
--
ALTER TABLE `tblacc_banking_rule_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_bank_reconciles`
--
ALTER TABLE `tblacc_bank_reconciles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_bill_mappings`
--
ALTER TABLE `tblacc_bill_mappings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_budgets`
--
ALTER TABLE `tblacc_budgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_budget_details`
--
ALTER TABLE `tblacc_budget_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_checks`
--
ALTER TABLE `tblacc_checks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_checks_printed`
--
ALTER TABLE `tblacc_checks_printed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_check_details`
--
ALTER TABLE `tblacc_check_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_expense_category_mappings`
--
ALTER TABLE `tblacc_expense_category_mappings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_expense_category_mapping_details`
--
ALTER TABLE `tblacc_expense_category_mapping_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_income_statement_modifications`
--
ALTER TABLE `tblacc_income_statement_modifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_item_automatics`
--
ALTER TABLE `tblacc_item_automatics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_journal_entries`
--
ALTER TABLE `tblacc_journal_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_matched_transactions`
--
ALTER TABLE `tblacc_matched_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_payment_mode_mappings`
--
ALTER TABLE `tblacc_payment_mode_mappings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_pay_bills`
--
ALTER TABLE `tblacc_pay_bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_pay_bill_details`
--
ALTER TABLE `tblacc_pay_bill_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_pay_bill_item_paid`
--
ALTER TABLE `tblacc_pay_bill_item_paid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_plaid_transaction_logs`
--
ALTER TABLE `tblacc_plaid_transaction_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_print_later`
--
ALTER TABLE `tblacc_print_later`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_reconciles`
--
ALTER TABLE `tblacc_reconciles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_tax_mappings`
--
ALTER TABLE `tblacc_tax_mappings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_transaction_bankings`
--
ALTER TABLE `tblacc_transaction_bankings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblacc_transfers`
--
ALTER TABLE `tblacc_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblactivity_log`
--
ALTER TABLE `tblactivity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `tblannouncements`
--
ALTER TABLE `tblannouncements`
  MODIFY `announcementid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblclients`
--
ALTER TABLE `tblclients`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblconsents`
--
ALTER TABLE `tblconsents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblconsent_purposes`
--
ALTER TABLE `tblconsent_purposes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontacts`
--
ALTER TABLE `tblcontacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontact_permissions`
--
ALTER TABLE `tblcontact_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblcontracts`
--
ALTER TABLE `tblcontracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontracts_types`
--
ALTER TABLE `tblcontracts_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontract_comments`
--
ALTER TABLE `tblcontract_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontract_renewals`
--
ALTER TABLE `tblcontract_renewals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcountries`
--
ALTER TABLE `tblcountries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `tblcreditnotes`
--
ALTER TABLE `tblcreditnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcreditnote_refunds`
--
ALTER TABLE `tblcreditnote_refunds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcredits`
--
ALTER TABLE `tblcredits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcurrencies`
--
ALTER TABLE `tblcurrencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcurrency_rates`
--
ALTER TABLE `tblcurrency_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcurrency_rate_logs`
--
ALTER TABLE `tblcurrency_rate_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblcustomers_groups`
--
ALTER TABLE `tblcustomers_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcustomer_groups`
--
ALTER TABLE `tblcustomer_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcustomfields`
--
ALTER TABLE `tblcustomfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcustomfieldsvalues`
--
ALTER TABLE `tblcustomfieldsvalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `departmentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbldismissed_announcements`
--
ALTER TABLE `tbldismissed_announcements`
  MODIFY `dismissedannouncementid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblemailtemplates`
--
ALTER TABLE `tblemailtemplates`
  MODIFY `emailtemplateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `tblestimates`
--
ALTER TABLE `tblestimates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblestimate_requests`
--
ALTER TABLE `tblestimate_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblestimate_request_forms`
--
ALTER TABLE `tblestimate_request_forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblestimate_request_status`
--
ALTER TABLE `tblestimate_request_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblevents`
--
ALTER TABLE `tblevents`
  MODIFY `eventid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblexpenses`
--
ALTER TABLE `tblexpenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblexpenses_categories`
--
ALTER TABLE `tblexpenses_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblfiles`
--
ALTER TABLE `tblfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblfilters`
--
ALTER TABLE `tblfilters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblform_questions`
--
ALTER TABLE `tblform_questions`
  MODIFY `questionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblform_question_box`
--
ALTER TABLE `tblform_question_box`
  MODIFY `boxid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblform_question_box_description`
--
ALTER TABLE `tblform_question_box_description`
  MODIFY `questionboxdescriptionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblform_results`
--
ALTER TABLE `tblform_results`
  MODIFY `resultid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblgdpr_requests`
--
ALTER TABLE `tblgdpr_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblinvoicepaymentrecords`
--
ALTER TABLE `tblinvoicepaymentrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblinvoices`
--
ALTER TABLE `tblinvoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblitemable`
--
ALTER TABLE `tblitemable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblitems`
--
ALTER TABLE `tblitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblitems_groups`
--
ALTER TABLE `tblitems_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblitem_tax`
--
ALTER TABLE `tblitem_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblknowedge_base_article_feedback`
--
ALTER TABLE `tblknowedge_base_article_feedback`
  MODIFY `articleanswerid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblknowledge_base`
--
ALTER TABLE `tblknowledge_base`
  MODIFY `articleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblknowledge_base_groups`
--
ALTER TABLE `tblknowledge_base_groups`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblleads`
--
ALTER TABLE `tblleads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblleads_email_integration`
--
ALTER TABLE `tblleads_email_integration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'the ID always must be 1', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblleads_sources`
--
ALTER TABLE `tblleads_sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblleads_status`
--
ALTER TABLE `tblleads_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbllead_activity_log`
--
ALTER TABLE `tbllead_activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbllead_integration_emails`
--
ALTER TABLE `tbllead_integration_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmail_queue`
--
ALTER TABLE `tblmail_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmilestones`
--
ALTER TABLE `tblmilestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmodules`
--
ALTER TABLE `tblmodules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblnewsfeed_comment_likes`
--
ALTER TABLE `tblnewsfeed_comment_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnewsfeed_posts`
--
ALTER TABLE `tblnewsfeed_posts`
  MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnewsfeed_post_comments`
--
ALTER TABLE `tblnewsfeed_post_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnewsfeed_post_likes`
--
ALTER TABLE `tblnewsfeed_post_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnotes`
--
ALTER TABLE `tblnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnotifications`
--
ALTER TABLE `tblnotifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbloptions`
--
ALTER TABLE `tbloptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=608;

--
-- AUTO_INCREMENT for table `tblpayment_attempts`
--
ALTER TABLE `tblpayment_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpayment_modes`
--
ALTER TABLE `tblpayment_modes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpinned_projects`
--
ALTER TABLE `tblpinned_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblprojectdiscussioncomments`
--
ALTER TABLE `tblprojectdiscussioncomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblprojectdiscussions`
--
ALTER TABLE `tblprojectdiscussions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblprojects`
--
ALTER TABLE `tblprojects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproject_activity`
--
ALTER TABLE `tblproject_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproject_files`
--
ALTER TABLE `tblproject_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproject_members`
--
ALTER TABLE `tblproject_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproject_notes`
--
ALTER TABLE `tblproject_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproject_settings`
--
ALTER TABLE `tblproject_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproposals`
--
ALTER TABLE `tblproposals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblproposal_comments`
--
ALTER TABLE `tblproposal_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_vendor`
--
ALTER TABLE `tblpur_vendor`
  MODIFY `userid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrelated_items`
--
ALTER TABLE `tblrelated_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblreminders`
--
ALTER TABLE `tblreminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblroles`
--
ALTER TABLE `tblroles`
  MODIFY `roleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblsales_activity`
--
ALTER TABLE `tblsales_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblscheduled_emails`
--
ALTER TABLE `tblscheduled_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `serviceid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblspam_filters`
--
ALTER TABLE `tblspam_filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `staffid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblstaff_departments`
--
ALTER TABLE `tblstaff_departments`
  MODIFY `staffdepartmentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsubscriptions`
--
ALTER TABLE `tblsubscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltags`
--
ALTER TABLE `tbltags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltasks`
--
ALTER TABLE `tbltasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltaskstimers`
--
ALTER TABLE `tbltaskstimers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltasks_checklist_templates`
--
ALTER TABLE `tbltasks_checklist_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_assigned`
--
ALTER TABLE `tbltask_assigned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_checklist_items`
--
ALTER TABLE `tbltask_checklist_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_comments`
--
ALTER TABLE `tbltask_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_followers`
--
ALTER TABLE `tbltask_followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltaxes`
--
ALTER TABLE `tbltaxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltemplates`
--
ALTER TABLE `tbltemplates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltickets`
--
ALTER TABLE `tbltickets`
  MODIFY `ticketid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltickets_pipe_log`
--
ALTER TABLE `tbltickets_pipe_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltickets_predefined_replies`
--
ALTER TABLE `tbltickets_predefined_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltickets_priorities`
--
ALTER TABLE `tbltickets_priorities`
  MODIFY `priorityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbltickets_status`
--
ALTER TABLE `tbltickets_status`
  MODIFY `ticketstatusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblticket_attachments`
--
ALTER TABLE `tblticket_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblticket_replies`
--
ALTER TABLE `tblticket_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltodos`
--
ALTER TABLE `tbltodos`
  MODIFY `todoid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltracked_mails`
--
ALTER TABLE `tbltracked_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltwocheckout_log`
--
ALTER TABLE `tbltwocheckout_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbluser_meta`
--
ALTER TABLE `tbluser_meta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblvault`
--
ALTER TABLE `tblvault`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblviews_tracking`
--
ALTER TABLE `tblviews_tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblweb_to_lead`
--
ALTER TABLE `tblweb_to_lead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblfilter_defaults`
--
ALTER TABLE `tblfilter_defaults`
  ADD CONSTRAINT `tblfilter_defaults_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `tblfilters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblfilter_defaults_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `tblstaff` (`staffid`) ON DELETE CASCADE;

--
-- Constraints for table `tbltwocheckout_log`
--
ALTER TABLE `tbltwocheckout_log`
  ADD CONSTRAINT `tbltwocheckout_log_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `tblinvoices` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
