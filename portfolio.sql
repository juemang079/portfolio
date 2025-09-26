CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `role_id` tinyint(4) UNSIGNED NOT NULL,
  `username` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `device_info` TEXT DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `is_ios` tinyint(4) DEFAULT NULL,
  `language` tinyint(4) DEFAULT 1,
  `outlet_code_id` int DEFAULT NULL,
  `status_id` TINYINT NOT NULL,
  `created_by` INT NOT NULL,
  `updated_by` INT NULL DEFAULT NULL,
  `deleted_by` INT NULL DEFAULT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `users` (`id`, `role_id`, `username`, `email`, `name`, `password`, `status_id`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'admin', 'admin', 'admin', '$2y$10$ssNB.9vIBEAFpRnqC./4a.tNApTRRrOBTUTAekAMQ6NrFXT07p.RG', 1, 1, NULL, NULL, '2024-12-06 05:39:50', '2024-12-11 03:51:02', NULL);

CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(255) NOT NULL,
  `dsc` varchar(255) DEFAULT NULL,
  `status_id` TINYINT NOT NULL,
  `created_by` INT NOT NULL,
  `updated_by` INT NULL DEFAULT NULL,
  `deleted_by` INT NULL DEFAULT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `roles` (`id`, `name`, `dsc`, `status_id`, `created_by`, `created_at`) VALUES
(1, 'Super Admin', 'Full Access', 1, 1, '2024-05-06 16:00:00'),
(2, 'Admin', 'Admin Access', 1, 1, '2024-05-05 16:00:00'),
(3, 'Outlet', 'Outlet Access', 1, 1, '2024-05-05 16:00:00');

CREATE TABLE `outlet_codes` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `code` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `synced_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*
  INSERT INTO `outlet_codes` (`id`, `code`, `name`, `status_id`, `created_at`, `updated_at`) VALUES
  (1, 'BB17', 'BB373', 1, '2025-01-10 09:45:00', '2025-01-10 17:45:00'),
  (2, 'BK10', 'BK991', 1, '2025-01-10 09:45:00', '2025-01-10 17:45:00'),
  (3, 'BR16', 'BDR106', 1, '2025-01-10 09:45:20', '2025-01-10 17:45:20'),
  (4, 'CC08', 'CC25A', 1, '2025-01-10 09:45:20', '2025-01-10 17:45:20'),
  (5, 'CK02', 'CCK253', 1, '2025-01-10 09:45:35', '2025-01-10 17:45:35'),
  (6, 'CP21', 'CP263', 1, '2025-01-10 09:45:35', '2025-01-10 17:45:35'),
  (7, 'EC37', 'EC37', 1, '2025-01-10 09:45:59', '2025-01-10 17:45:59'),
  (8, 'HG01', 'HG106', 1, '2025-01-10 09:45:59', '2025-01-10 17:45:59'),
  (9, 'HGA05', 'HG159A', 1, '2025-01-10 09:46:19', '2025-01-10 17:46:19'),
  (10, 'JS24', 'JS01', 1, '2025-01-10 09:46:19', '2025-01-10 17:46:19'),
  (11, 'JT21', 'JT116', 1, '2025-01-10 09:46:35', '2025-01-10 17:46:35'),
  (12, 'JW06', 'JW962', 1, '2025-01-10 09:46:35', '2025-01-10 17:46:35'),
  (13, 'JW12', 'JW763', 1, '2025-01-10 09:46:48', '2025-01-10 17:46:48'),
  (14, 'KG01', 'KG803', 1, '2025-01-10 09:46:48', '2025-01-10 17:46:48'),
  (15, 'NT09', 'NTU', 1, '2025-01-10 09:47:00', '2025-01-10 17:47:00'),
  (16, 'NT35', 'NT35', 1, '2025-01-10 09:47:00', '2025-01-10 17:47:00'),
  (17, 'PF20', 'PF108', 1, '2025-01-10 09:47:10', '2025-01-10 17:47:10'),
  (18, 'SC14', 'SEM365', 1, '2025-01-10 09:47:10', '2025-01-10 17:47:10'),
  (19, 'SM15', 'SM322', 1, '2025-01-10 09:47:21', '2025-01-10 17:47:21'),
  (20, 'TN18', 'TN610', 1, '2025-01-10 09:47:21', '2025-01-10 17:47:21'),
  (21, 'TP19', 'TP823', 1, '2025-01-10 09:47:30', '2025-01-10 17:47:30'),
  (22, 'TW08', 'TW142', 1, '2025-01-10 09:47:30', '2025-01-10 17:47:30'),
  (23, 'WL03', 'WL768', 1, '2025-01-10 09:47:41', '2025-01-10 17:47:41'),
  (24, 'WL20', 'WL678', 1, '2025-01-10 09:47:41', '2025-01-10 17:47:41'),
  (25, 'YB13', 'YS461', 1, '2025-01-10 09:47:57', '2025-01-10 17:47:57'),
  (26, 'YS06', 'YS761', 1, '2025-01-10 09:47:57', '2025-01-10 17:47:57');
*/
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `barcode` varchar(40) NOT NULL,
  `item_number` varchar(40) NOT NULL,
  `product_name` TEXT NOT NULL,
  `uom` varchar(40) NOT NULL,
  `selling_price` DECIMAL(19,2) NOT NULL,
  `synced_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `barcodes`(
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `barcode` varchar(40) NOT NULL,
  `item_number` varchar(40) NOT NULL,
  `uom` varchar(40) NOT NULL,
  `synced_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `drafts` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `draft_id` int NOT NULL,
  `user_id` int NOT NULL,
  `document_number` varchar(255) NOT NULL,
  `count_date` DATE NOT NULL,
  `username` varchar(255) NOT NULL,
  `shelf_number` varchar(255) NOT NULL,
  `products` TEXT NOT NULL,
  `weekly_stock` tinyint NOT NULL DEFAULT 1,
  `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `status_id` tinyint NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `stock_counts` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `user_id` int NOT NULL,
  `document_number` varchar(255) NOT NULL,
  `count_date` DATE NOT NULL,
  `username` varchar(255) NOT NULL,
  `shelf_number` varchar(255) NOT NULL,
  `products` TEXT NOT NULL,
  `weekly_stock` tinyint NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `submitted` tinyint NOT NULL DEFAULT 0,
  `processed` tinyint NOT NULL DEFAULT 0,
  `exported` tinyint NOT NULL DEFAULT 0,
  `status_id` tinyint NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `stock_count_raw_data` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `stock_count_id` int NOT NULL,
  `entity` varchar(255) NOT NULL,
  `store_number` varchar(255) NOT NULL,
  `scanner_id` varchar(255) NOT NULL,
  `document_number` varchar(255) NOT NULL,
  `count_date` DATE NOT NULL,
  `product_barcode` varchar(255) NOT NULL,
  `product_number` varchar(255) NOT NULL,
  `product_line_number` INT NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_uom` varchar(255) NOT NULL,
  `product_quantity` INT NOT NULL,
  `weekly_stock` tinyint NOT NULL DEFAULT 1,
  `soh_uom` varchar(255) NOT NULL,
  `soh_quantity` DECIMAL(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `notifications` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `notification_type` int NOT NULL DEFAULT 1,
  `user_id` int NOT NULL,
  `title` TEXT NOT NULL,
  `message` TEXT NOT NULL,
  `title_chinese` TEXT NOT NULL,
  `message_chinese` TEXT NOT NULL,
  `read` TINYINT NOT NULL DEFAULT 0,
  `deleted` TINYINT NOT NULL DEFAULT 0,
  `created_at` TIMESTAMP NULL DEFAULT NOW(),
  `read_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL ON UPDATE NOW(),
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `status_id` TINYINT NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `folders` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `outlet_id` int NOT NULL,
  `file_path` TEXT NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `stock_on_hand` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `code` varchar(40) NOT NULL,
  `item_number` varchar(40) NOT NULL,
  `uom` varchar(40) NOT NULL,
  `soh_quantity` DECIMAL(10,2) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NOW(),
  `updated_at` TIMESTAMP NULL DEFAULT NULL ON UPDATE NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

set global sql_mode='';