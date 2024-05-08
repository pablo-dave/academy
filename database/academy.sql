/*
 Navicat Premium Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 100509 (10.5.9-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : academy

 Target Server Type    : MySQL
 Target Server Version : 100509 (10.5.9-MariaDB)
 File Encoding         : 65001

 Date: 08/05/2024 18:59:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for asignatura
-- ----------------------------
DROP TABLE IF EXISTS `asignatura`;
CREATE TABLE `asignatura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of asignatura
-- ----------------------------
BEGIN;
INSERT INTO `asignatura` (`id`, `nombre`) VALUES (3, 'Matemática');
COMMIT;

-- ----------------------------
-- Table structure for calificacion
-- ----------------------------
DROP TABLE IF EXISTS `calificacion`;
CREATE TABLE `calificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estudiante_id` int(11) DEFAULT NULL,
  `asignatura_id` int(11) DEFAULT NULL,
  `curso_id` int(11) DEFAULT NULL,
  `u1_insumo1` decimal(4,2) DEFAULT NULL,
  `u1_r_insumo1` decimal(4,2) DEFAULT NULL,
  `u1_insumo2` decimal(4,2) DEFAULT NULL,
  `u1_r_insumo1_2` decimal(4,2) DEFAULT NULL,
  `u1_promedio` decimal(4,2) DEFAULT NULL,
  `u2_insumo1` decimal(4,2) DEFAULT NULL,
  `u2_r_insumo1` decimal(4,2) DEFAULT NULL,
  `u2_insumo2` decimal(4,2) DEFAULT NULL,
  `u2_r_insumo1_2` decimal(4,2) DEFAULT NULL,
  `u2_promedio` decimal(4,2) DEFAULT NULL,
  `u3_insumo1` decimal(4,2) DEFAULT NULL,
  `u3_r_insumo1` decimal(4,2) DEFAULT NULL,
  `u3_insumo2` decimal(4,2) DEFAULT NULL,
  `u3_r_insumo1_2` decimal(4,2) DEFAULT NULL,
  `u3_promedio` decimal(4,2) DEFAULT NULL,
  `promedio_de_prom` decimal(4,2) DEFAULT NULL,
  `ochenta_porciento` decimal(4,2) DEFAULT NULL,
  `eval_final` decimal(4,2) DEFAULT NULL,
  `veinte_porciento` decimal(4,2) DEFAULT NULL,
  `nota_quimestre` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of calificacion
-- ----------------------------
BEGIN;
INSERT INTO `calificacion` (`id`, `estudiante_id`, `asignatura_id`, `curso_id`, `u1_insumo1`, `u1_r_insumo1`, `u1_insumo2`, `u1_r_insumo1_2`, `u1_promedio`, `u2_insumo1`, `u2_r_insumo1`, `u2_insumo2`, `u2_r_insumo1_2`, `u2_promedio`, `u3_insumo1`, `u3_r_insumo1`, `u3_insumo2`, `u3_r_insumo1_2`, `u3_promedio`, `promedio_de_prom`, `ochenta_porciento`, `eval_final`, `veinte_porciento`, `nota_quimestre`) VALUES (6, 5, 3, 3, 10.00, 10.00, 0.00, 0.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.67, 1.33, 0.00, 0.00, 1.33);
COMMIT;

-- ----------------------------
-- Table structure for cms_apicustom
-- ----------------------------
DROP TABLE IF EXISTS `cms_apicustom`;
CREATE TABLE `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_apicustom
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cms_apikey
-- ----------------------------
DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_apikey
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cms_dashboard
-- ----------------------------
DROP TABLE IF EXISTS `cms_dashboard`;
CREATE TABLE `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_dashboard
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cms_email_queues
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_queues`;
CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_email_queues
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cms_email_templates
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_templates`;
CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_email_templates
-- ----------------------------
BEGIN;
INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES (1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2022-03-27 14:45:18', NULL);
COMMIT;

-- ----------------------------
-- Table structure for cms_logs
-- ----------------------------
DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_logs
-- ----------------------------
BEGIN;
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (1, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2022-03-27 14:48:27', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (2, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-03-27 09:53:26', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (3, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP ::1', '', 1, '2022-03-27 09:53:37', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (4, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP ::1', '', 1, '2022-03-27 10:00:16', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (5, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/menu_management/edit-save/1', 'Actualizar información Estudiante en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>estudiante</td><td>Estudiante</td></tr><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2022-03-27 10:04:16', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (6, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/estudiante/add-save', 'Añadir nueva información  en Estudiante', '', 1, '2022-03-27 10:10:30', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (7, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/menu_management/edit-save/2', 'Actualizar información Docente en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>docente</td><td>Docente</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-03-27 10:15:16', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (8, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/docente/add-save', 'Añadir nueva información  en Docente', '', 1, '2022-03-27 10:19:03', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (9, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/menu_management/edit-save/3', 'Actualizar información Asignatura en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>asignatura</td><td>Asignatura</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-03-27 10:23:19', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (10, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/asignatura/add-save', 'Añadir nueva información  en Asignaturas', '', 1, '2022-03-27 10:23:43', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (11, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/menu_management/edit-save/4', 'Actualizar información Periodo en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>periodo</td><td>Periodo</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-03-27 10:25:14', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (12, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/menu_management/edit-save/5', 'Actualizar información Cursos en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>curso</td><td>Cursos</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-inbox</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2022-03-27 10:27:26', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (13, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/periodo/add-save', 'Añadir nueva información  en Periodo', '', 1, '2022-03-27 10:32:28', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (14, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/curso/add-save', 'Añadir nueva información  en Cursos', '', 1, '2022-03-27 10:32:41', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (15, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/menu_management/edit-save/6', 'Actualizar información Calificaciones en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>calificacion</td><td>Calificaciones</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-03-27 10:40:57', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (16, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/docente/edit-save/3', 'Actualizar información  en Docente', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>titulo</td><td></td><td>Lcda. Contabilidad y auditoria</td></tr><tr><td>sexo</td><td></td><td></td></tr><tr><td>direccion</td><td></td><td></td></tr><tr><td>telefono</td><td></td><td></td></tr><tr><td>nivel</td><td></td><td></td></tr></tbody></table>', 1, '2022-03-27 11:26:38', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (17, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/users/add-save', 'Añadir nueva información Lola   Flores en Users Management', '', 1, '2022-03-27 12:09:40', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (18, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'developer@academy.com se desconectó', '', 1, '2022-03-27 12:10:00', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (19, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de lola@gmail.com desde la Dirección IP ::1', '', 2, '2022-03-27 12:10:05', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (20, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'lola@gmail.com se desconectó', '', 2, '2022-03-27 12:10:12', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (21, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de developer@academy.com desde la Dirección IP ::1', '', 1, '2022-03-27 12:10:23', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (22, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/menu_management/edit-save/6', 'Actualizar información Calificaciones en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-03-27 12:10:50', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (23, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/menu_management/edit-save/6', 'Actualizar información Calificaciones en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-th-list</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-03-27 12:10:59', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (24, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'developer@academy.com se desconectó', '', 1, '2022-03-27 12:11:09', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (25, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de lola@gmail.com desde la Dirección IP ::1', '', 2, '2022-03-27 12:11:19', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (26, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'lola@gmail.com se desconectó', '', 2, '2022-03-27 12:54:29', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (27, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de developer@academy.com desde la Dirección IP ::1', '', 1, '2022-03-27 12:54:44', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (28, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/menu_management/add-save', 'Añadir nueva información Reportes en Menu Management', '', 1, '2022-03-27 13:00:03', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (29, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'developer@academy.com se desconectó', '', 1, '2022-03-27 13:00:41', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (30, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de lola@gmail.com desde la Dirección IP ::1', '', 2, '2022-03-27 13:00:49', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (31, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'lola@gmail.com se desconectó', '', 2, '2022-03-27 13:00:58', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (32, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de developer@academy.com desde la Dirección IP ::1', '', 1, '2022-03-27 13:01:08', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (33, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/menu_management/edit-save/6', 'Actualizar información Calificaciones en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Controller & Method</td></tr><tr><td>path</td><td>AdminCalificacionControllerGetIndex</td><td>ReporteController@index</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-03-27 13:01:59', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (34, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'developer@academy.com se desconectó', '', 1, '2022-03-27 13:02:11', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (35, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de lola@gmail.com desde la Dirección IP ::1', '', 2, '2022-03-27 13:02:17', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (36, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'lola@gmail.com se desconectó', '', 2, '2022-03-27 13:02:28', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (37, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de developer@academy.com desde la Dirección IP ::1', '', 1, '2022-03-27 13:02:42', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (38, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/menu_management/edit-save/6', 'Actualizar información Calificaciones en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Controller & Method</td><td>Route</td></tr><tr><td>path</td><td>ReporteController@index</td><td>AdminCalificacionControllerGetIndex</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-03-27 13:03:23', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (39, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/users/add-save', 'Añadir nueva información Javier Portillo en Users Management', '', 1, '2022-03-27 13:06:03', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (40, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'developer@academy.com se desconectó', '', 1, '2022-03-27 13:06:11', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (41, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de javier@gmail.com desde la Dirección IP ::1', '', 3, '2022-03-27 13:06:18', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (42, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'javier@gmail.com se desconectó', '', 3, '2022-03-27 13:07:29', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (43, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de developer@academy.com desde la Dirección IP ::1', '', 1, '2022-03-27 13:08:11', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (44, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'developer@academy.com se desconectó', '', 1, '2022-03-27 13:09:53', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (45, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de developer@academy.com desde la Dirección IP ::1', '', 1, '2022-03-27 13:09:59', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (46, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/menu_management/edit-save/1', 'Actualizar información Estudiante en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-03-27 13:10:11', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (47, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/menu_management/edit-save/2', 'Actualizar información Docente en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-03-27 13:10:18', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (48, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/menu_management/edit-save/3', 'Actualizar información Asignatura en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-03-27 13:10:25', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (49, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/menu_management/edit-save/4', 'Actualizar información Periodo en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-03-27 13:10:31', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (50, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/menu_management/edit-save/5', 'Actualizar información Cursos en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2022-03-27 13:10:38', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (51, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/menu_management/edit-save/6', 'Actualizar información Calificaciones en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-03-27 13:10:45', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (52, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'developer@academy.com se desconectó', '', 1, '2022-03-27 13:10:52', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (53, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de javier@gmail.com desde la Dirección IP ::1', '', 3, '2022-03-27 13:11:04', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (54, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'javier@gmail.com se desconectó', '', 3, '2022-03-27 13:12:21', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (55, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de developer@academy.com desde la Dirección IP ::1', '', 1, '2022-03-27 13:31:18', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (56, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'developer@academy.com se desconectó', '', 1, '2022-03-27 13:32:12', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (57, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de javier@gmail.com desde la Dirección IP ::1', '', 3, '2022-03-27 13:32:21', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (58, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'javier@gmail.com se desconectó', '', 3, '2022-03-27 13:33:10', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (59, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de developer@academy.com desde la Dirección IP ::1', '', 1, '2022-03-27 13:33:12', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (60, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'developer@academy.com se desconectó', '', 1, '2022-03-27 13:33:50', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (61, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de javier@gmail.com desde la Dirección IP ::1', '', 3, '2022-03-27 13:34:01', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (62, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/estudiante/add-save', 'Añadir nueva información  en Estudiante', '', 3, '2022-03-27 13:44:50', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (63, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de developer@academy.com desde la Dirección IP ::1', '', 1, '2022-03-28 12:17:53', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (64, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de developer@academy.com desde la Dirección IP ::1', '', 1, '2022-03-28 18:51:56', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (65, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de developer@academy.com desde la Dirección IP ::1', '', 1, '2022-03-28 18:59:08', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (66, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de developer@academy.com desde la Dirección IP ::1', '', 1, '2022-03-29 09:11:52', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (67, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'developer@academy.com se desconectó', '', 1, '2022-03-29 09:21:27', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (68, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de javier@gmail.com desde la Dirección IP ::1', '', 3, '2022-03-29 09:21:31', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (69, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'javier@gmail.com se desconectó', '', 3, '2022-03-29 09:21:53', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (70, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de developer@academy.com desde la Dirección IP ::1', '', 1, '2022-03-29 09:21:55', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (71, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://localhost:8080/academy/public/admin/menu_management/add-save', 'Añadir nueva información Usuarios en Menu Management', '', 1, '2022-03-29 09:22:36', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (72, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'developer@academy.com se desconectó', '', 1, '2022-03-29 09:22:41', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (73, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de javier@gmail.com desde la Dirección IP ::1', '', 3, '2022-03-29 09:22:44', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (74, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'javier@gmail.com se desconectó', '', 3, '2022-03-29 09:34:45', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (75, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de developer@academy.com desde la Dirección IP ::1', '', 1, '2022-03-29 09:34:47', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (76, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'developer@academy.com se desconectó', '', 1, '2022-03-29 09:36:13', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (77, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de developer@academy.com desde la Dirección IP ::1', '', 1, '2022-03-29 09:36:19', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (78, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://localhost:8080/academy/public/admin/logout', 'developer@academy.com se desconectó', '', 1, '2022-03-29 09:36:48', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (79, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de javier@gmail.com desde la Dirección IP ::1', '', 3, '2022-03-29 09:37:02', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (80, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://localhost:8080/academy/public/admin/login', 'Ingreso de developer@academy.com desde la Dirección IP ::1', '', 1, '2022-04-08 22:52:38', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (81, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://localhost:8080/academy/public/admin/docente/add-save', 'Añadir nueva información  en Docente', '', 1, '2022-04-08 22:55:56', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES (82, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://localhost:8080/academy/public/admin/docente/edit-save/4', 'Actualizar información  en Docente', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>telefono</td><td>0964445520</td><td>0965441015</td></tr></tbody></table>', 1, '2022-04-08 22:56:09', NULL);
COMMIT;

-- ----------------------------
-- Table structure for cms_menus
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_menus
-- ----------------------------
BEGIN;
INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES (1, 'Estudiante', 'Route', 'AdminEstudianteControllerGetIndex', 'normal', 'fa fa-user', 0, 1, 0, 1, 1, '2022-03-27 10:02:30', '2022-03-27 13:10:11');
INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES (2, 'Docente', 'Route', 'AdminDocenteControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 2, '2022-03-27 10:14:41', '2022-03-27 13:10:18');
INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES (3, 'Asignatura', 'Route', 'AdminAsignaturaControllerGetIndex', 'normal', 'fa fa-book', 0, 1, 0, 1, 3, '2022-03-27 10:22:50', '2022-03-27 13:10:25');
INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES (4, 'Periodo', 'Route', 'AdminPeriodoControllerGetIndex', 'normal', 'fa fa-calendar', 0, 1, 0, 1, 4, '2022-03-27 10:24:52', '2022-03-27 13:10:31');
INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES (5, 'Cursos', 'Route', 'AdminCursoControllerGetIndex', 'normal', 'fa fa-inbox', 0, 1, 0, 1, 5, '2022-03-27 10:26:45', '2022-03-27 13:10:38');
INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES (6, 'Calificaciones', 'Route', 'AdminCalificacionControllerGetIndex', 'normal', 'fa fa-th-list', 0, 1, 0, 1, 6, '2022-03-27 10:40:01', '2022-03-27 13:10:45');
INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES (7, 'Reportes', 'Controller & Method', 'ReporteController@index', 'normal', 'fa fa-file-o', 0, 1, 0, 1, NULL, '2022-03-27 13:00:03', NULL);
INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES (8, 'Usuarios', 'Module', 'users', 'normal', 'fa fa-users', 0, 1, 0, 1, NULL, '2022-03-29 09:22:36', NULL);
COMMIT;

-- ----------------------------
-- Table structure for cms_menus_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_menus_privileges
-- ----------------------------
BEGIN;
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES (17, 7, 2);
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES (18, 7, 1);
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES (23, 1, 2);
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES (24, 1, 1);
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES (25, 2, 2);
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES (26, 2, 1);
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES (27, 3, 2);
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES (28, 3, 1);
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES (29, 4, 2);
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES (30, 4, 1);
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES (31, 5, 2);
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES (32, 5, 1);
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES (33, 6, 2);
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES (34, 6, 3);
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES (35, 6, 1);
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES (36, 8, 2);
COMMIT;

-- ----------------------------
-- Table structure for cms_moduls
-- ----------------------------
DROP TABLE IF EXISTS `cms_moduls`;
CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_moduls
-- ----------------------------
BEGIN;
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2022-03-27 14:45:18', NULL, NULL);
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2022-03-27 14:45:18', NULL, NULL);
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2022-03-27 14:45:18', NULL, NULL);
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 'Usuarios', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2022-03-27 14:45:18', NULL, NULL);
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2022-03-27 14:45:18', NULL, NULL);
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2022-03-27 14:45:18', NULL, NULL);
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2022-03-27 14:45:18', NULL, NULL);
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2022-03-27 14:45:18', NULL, NULL);
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2022-03-27 14:45:18', NULL, NULL);
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2022-03-27 14:45:18', NULL, NULL);
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES (11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2022-03-27 14:45:18', NULL, NULL);
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES (12, 'Estudiante', 'fa fa-user', 'estudiante', 'estudiante', 'AdminEstudianteController', 0, 0, '2022-03-27 10:02:30', NULL, NULL);
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES (13, 'Docente', 'fa fa-cog', 'docente', 'docente', 'AdminDocenteController', 0, 0, '2022-03-27 10:14:41', NULL, NULL);
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES (14, 'Asignaturas', 'fa fa-cog', 'asignatura', 'asignatura', 'AdminAsignaturaController', 0, 0, '2022-03-27 10:22:50', NULL, NULL);
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES (15, 'Periodo', 'fa fa-cog', 'periodo', 'periodo', 'AdminPeriodoController', 0, 0, '2022-03-27 10:24:52', NULL, NULL);
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES (16, 'Cursos', 'fa fa-cog', 'curso', 'curso', 'AdminCursoController', 0, 0, '2022-03-27 10:26:45', NULL, NULL);
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES (17, 'Calificaciones', 'fa fa-adjust', 'calificacion', 'calificacion', 'AdminCalificacionController', 0, 0, '2022-03-27 10:40:01', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for cms_notifications
-- ----------------------------
DROP TABLE IF EXISTS `cms_notifications`;
CREATE TABLE `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_notifications
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cms_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges`;
CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_privileges
-- ----------------------------
BEGIN;
INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES (1, 'Super Administrator', 1, 'skin-red', '2022-03-27 14:45:18', NULL);
INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES (2, 'Administrador', 0, 'skin-blue', NULL, NULL);
INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES (3, 'Docente', 0, 'skin-yellow', NULL, NULL);
INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES (4, 'Secretaria', 0, 'skin-green', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for cms_privileges_roles
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges_roles`;
CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_privileges_roles
-- ----------------------------
BEGIN;
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (1, 1, 0, 0, 0, 0, 1, 1, '2022-03-27 14:45:18', NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (2, 1, 1, 1, 1, 1, 1, 2, '2022-03-27 14:45:18', NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (3, 0, 1, 1, 1, 1, 1, 3, '2022-03-27 14:45:18', NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (4, 1, 1, 1, 1, 1, 1, 4, '2022-03-27 14:45:18', NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (5, 1, 1, 1, 1, 1, 1, 5, '2022-03-27 14:45:18', NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (6, 1, 1, 1, 1, 1, 1, 6, '2022-03-27 14:45:18', NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (7, 1, 1, 1, 1, 1, 1, 7, '2022-03-27 14:45:18', NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (8, 1, 1, 1, 1, 1, 1, 8, '2022-03-27 14:45:18', NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (9, 1, 1, 1, 1, 1, 1, 9, '2022-03-27 14:45:18', NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (10, 1, 1, 1, 1, 1, 1, 10, '2022-03-27 14:45:18', NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (11, 1, 0, 1, 0, 1, 1, 11, '2022-03-27 14:45:18', NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (18, 1, 1, 1, 1, 1, 2, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (19, 1, 1, 1, 1, 1, 2, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (20, 1, 1, 1, 1, 1, 2, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (21, 1, 1, 1, 1, 1, 2, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (22, 1, 1, 1, 1, 1, 2, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (23, 1, 1, 1, 1, 1, 2, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (24, 1, 1, 1, 1, 1, 2, 4, NULL, NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (32, 1, 1, 1, 1, 1, 3, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES (33, 1, 1, 1, 1, 1, 4, 12, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for cms_settings
-- ----------------------------
DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_settings
-- ----------------------------
BEGIN;
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES (1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2022-03-27 14:45:18', NULL, 'Login Register Style', 'Login Background Color');
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES (2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2022-03-27 14:45:18', NULL, 'Login Register Style', 'Login Font Color');
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES (3, 'login_background_image', 'uploads/2022-03/753ddcc0577c1741d497ea056cffa37b.jpg', 'upload_image', NULL, NULL, '2022-03-27 14:45:18', NULL, 'Login Register Style', 'Login Background Image');
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES (4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2022-03-27 14:45:18', NULL, 'Email Setting', 'Email Sender');
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES (5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2022-03-27 14:45:18', NULL, 'Email Setting', 'Mail Driver');
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES (6, 'smtp_host', '', 'text', NULL, NULL, '2022-03-27 14:45:18', NULL, 'Email Setting', 'SMTP Host');
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES (7, 'smtp_port', '25', 'text', NULL, 'default 25', '2022-03-27 14:45:18', NULL, 'Email Setting', 'SMTP Port');
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES (8, 'smtp_username', '', 'text', NULL, NULL, '2022-03-27 14:45:18', NULL, 'Email Setting', 'SMTP Username');
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES (9, 'smtp_password', '', 'text', NULL, NULL, '2022-03-27 14:45:18', NULL, 'Email Setting', 'SMTP Password');
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES (10, 'appname', 'Sistema Académico', 'text', NULL, NULL, '2022-03-27 14:45:18', NULL, 'Application Setting', 'Application Name');
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES (11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2022-03-27 14:45:18', NULL, 'Application Setting', 'Default Paper Print Size');
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES (12, 'logo', 'uploads/2022-03/a379ffc35b0621616c7ce6326a63cfe3.png', 'upload_image', NULL, NULL, '2022-03-27 14:45:18', NULL, 'Application Setting', 'Logo');
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES (13, 'favicon', NULL, 'upload_image', NULL, NULL, '2022-03-27 14:45:18', NULL, 'Application Setting', 'Favicon');
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES (14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2022-03-27 14:45:18', NULL, 'Application Setting', 'API Debug Mode');
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES (15, 'google_api_key', NULL, 'text', NULL, NULL, '2022-03-27 14:45:18', NULL, 'Application Setting', 'Google API Key');
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES (16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2022-03-27 14:45:18', NULL, 'Application Setting', 'Google FCM Key');
COMMIT;

-- ----------------------------
-- Table structure for cms_statistic_components
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistic_components`;
CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_statistic_components
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cms_statistics
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistics`;
CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_statistics
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cms_users
-- ----------------------------
DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docente_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_users
-- ----------------------------
BEGIN;
INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`, `docente_id`) VALUES (1, 'Super Admin', NULL, 'developer@academy.com', '$2y$10$4thhppWAAy6kHTari6eWpeR9eEnuwCm0OUqwmRBfCCqeXsNorMhbC', 1, '2022-03-27 14:45:18', NULL, 'Active', NULL);
INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`, `docente_id`) VALUES (2, 'Lola   Flores', 'uploads/1/2022-03/01_shutterstock_476340928_irina_bg.jpg', 'lola@gmail.com', '$2y$10$5iTpycrdhjm1cM0kQYXxw.E9UmKV1Rd.njP7pWMrcnA7yiFYMWPWy', 3, '2022-03-27 12:09:40', NULL, NULL, 3);
INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`, `docente_id`) VALUES (3, 'Javier Portillo', 'uploads/1/2022-03/images.jpeg', 'javier@gmail.com', '$2y$10$mWiiGWutt.ILxamLmCpQKOjjFM5pbEj132ZwXNyL3hEIYRiZqom7K', 2, '2022-03-27 13:06:03', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for curso
-- ----------------------------
DROP TABLE IF EXISTS `curso`;
CREATE TABLE `curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anio` varchar(255) DEFAULT NULL,
  `periodo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of curso
-- ----------------------------
BEGIN;
INSERT INTO `curso` (`id`, `anio`, `periodo_id`) VALUES (3, 'Décimo Año de E.G.B. \"A\"', 3);
COMMIT;

-- ----------------------------
-- Table structure for curso_asignatura
-- ----------------------------
DROP TABLE IF EXISTS `curso_asignatura`;
CREATE TABLE `curso_asignatura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curso_id` int(11) DEFAULT NULL,
  `asignatura_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of curso_asignatura
-- ----------------------------
BEGIN;
INSERT INTO `curso_asignatura` (`id`, `curso_id`, `asignatura_id`) VALUES (4, 3, 3);
COMMIT;

-- ----------------------------
-- Table structure for curso_estudiante
-- ----------------------------
DROP TABLE IF EXISTS `curso_estudiante`;
CREATE TABLE `curso_estudiante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estudiante_id` int(11) DEFAULT NULL,
  `curso_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of curso_estudiante
-- ----------------------------
BEGIN;
INSERT INTO `curso_estudiante` (`id`, `estudiante_id`, `curso_id`) VALUES (6, 5, 3);
COMMIT;

-- ----------------------------
-- Table structure for docente
-- ----------------------------
DROP TABLE IF EXISTS `docente`;
CREATE TABLE `docente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(10) DEFAULT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `nivel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of docente
-- ----------------------------
BEGIN;
INSERT INTO `docente` (`id`, `cedula`, `nombres`, `apellidos`, `titulo`, `sexo`, `direccion`, `telefono`, `nivel`, `email`) VALUES (3, '0201504768', 'Lola', 'Flores', 'Lcda. Contabilidad y auditoria', NULL, NULL, NULL, NULL, 'lola@gmail.com');
INSERT INTO `docente` (`id`, `cedula`, `nombres`, `apellidos`, `titulo`, `sexo`, `direccion`, `telefono`, `nivel`, `email`) VALUES (4, '1713570412', 'Maria', 'Angulo', 'Lcda. Contabilidad y auditoria', 'F', 'Moromoro pasaje OE2J casa #s26-167', '0965441015', 'Superior', 'mariaa@gmail.com');
COMMIT;

-- ----------------------------
-- Table structure for docente_asignatura
-- ----------------------------
DROP TABLE IF EXISTS `docente_asignatura`;
CREATE TABLE `docente_asignatura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docente_id` int(11) NOT NULL,
  `asignatura_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of docente_asignatura
-- ----------------------------
BEGIN;
INSERT INTO `docente_asignatura` (`id`, `docente_id`, `asignatura_id`) VALUES (42, 3, 3);
COMMIT;

-- ----------------------------
-- Table structure for estudiante
-- ----------------------------
DROP TABLE IF EXISTS `estudiante`;
CREATE TABLE `estudiante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apellidos` varchar(255) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `cedula` varchar(10) NOT NULL,
  `fecha_nac` date DEFAULT NULL,
  `anios_cumplidos` int(3) DEFAULT NULL,
  `con_quien_vive` varchar(255) DEFAULT NULL,
  `num_hermanos` int(2) DEFAULT NULL,
  `lugar_ocupa` int(2) DEFAULT NULL,
  `enfermedades` varchar(255) DEFAULT NULL,
  `medicina_usa` varchar(255) DEFAULT NULL,
  `tipo_sangre` varchar(80) DEFAULT NULL,
  `discapacidad` varchar(255) DEFAULT NULL,
  `carnet_conadis` varchar(255) DEFAULT NULL,
  `etnia` varchar(255) DEFAULT NULL,
  `escuela_que_proviene` varchar(255) DEFAULT NULL,
  `nombres_representante` varchar(255) DEFAULT NULL,
  `cedula_representante` varchar(10) DEFAULT NULL,
  `direccion_representante` varchar(255) DEFAULT NULL,
  `telefono_representante` varchar(255) DEFAULT NULL,
  `celular_representante` varchar(255) DEFAULT NULL,
  `otros_contactos` varchar(255) DEFAULT NULL,
  `correo_representante` varchar(255) DEFAULT NULL,
  `nombres_padre` varchar(255) DEFAULT NULL,
  `ocupacion_padre` varchar(255) DEFAULT NULL,
  `cedula_padre` varchar(10) DEFAULT NULL,
  `lugar_trabajo_padre` varchar(255) DEFAULT NULL,
  `telefono_padre` varchar(255) DEFAULT NULL,
  `nombres_madre` varchar(255) DEFAULT NULL,
  `ocupacion_madre` varchar(255) DEFAULT NULL,
  `cedula_madre` varchar(10) DEFAULT NULL,
  `lugar_trabajo_madre` varchar(255) DEFAULT NULL,
  `telefono_madre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of estudiante
-- ----------------------------
BEGIN;
INSERT INTO `estudiante` (`id`, `apellidos`, `nombres`, `cedula`, `fecha_nac`, `anios_cumplidos`, `con_quien_vive`, `num_hermanos`, `lugar_ocupa`, `enfermedades`, `medicina_usa`, `tipo_sangre`, `discapacidad`, `carnet_conadis`, `etnia`, `escuela_que_proviene`, `nombres_representante`, `cedula_representante`, `direccion_representante`, `telefono_representante`, `celular_representante`, `otros_contactos`, `correo_representante`, `nombres_padre`, `ocupacion_padre`, `cedula_padre`, `lugar_trabajo_padre`, `telefono_padre`, `nombres_madre`, `ocupacion_madre`, `cedula_madre`, `lugar_trabajo_madre`, `telefono_madre`) VALUES (5, 'Suarez', 'Jhon', '1715646434', '2009-07-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `estudiante` (`id`, `apellidos`, `nombres`, `cedula`, `fecha_nac`, `anios_cumplidos`, `con_quien_vive`, `num_hermanos`, `lugar_ocupa`, `enfermedades`, `medicina_usa`, `tipo_sangre`, `discapacidad`, `carnet_conadis`, `etnia`, `escuela_que_proviene`, `nombres_representante`, `cedula_representante`, `direccion_representante`, `telefono_representante`, `celular_representante`, `otros_contactos`, `correo_representante`, `nombres_padre`, `ocupacion_padre`, `cedula_padre`, `lugar_trabajo_padre`, `telefono_padre`, `nombres_madre`, `ocupacion_madre`, `cedula_madre`, `lugar_trabajo_madre`, `telefono_madre`) VALUES (6, 'Perez', 'Pepito', '0502139579', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3, '2016_08_07_145904_add_table_cms_apicustom', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (4, '2016_08_07_150834_add_table_cms_dashboard', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (5, '2016_08_07_151210_add_table_cms_logs', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (6, '2016_08_07_151211_add_details_cms_logs', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (7, '2016_08_07_152014_add_table_cms_privileges', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (8, '2016_08_07_152214_add_table_cms_privileges_roles', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (9, '2016_08_07_152320_add_table_cms_settings', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (10, '2016_08_07_152421_add_table_cms_users', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (11, '2016_08_07_154624_add_table_cms_menus_privileges', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (12, '2016_08_07_154624_add_table_cms_moduls', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (13, '2016_08_17_225409_add_status_cms_users', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (14, '2016_08_20_125418_add_table_cms_notifications', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (15, '2016_09_04_033706_add_table_cms_email_queues', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (16, '2016_09_16_035347_add_group_setting', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (17, '2016_09_16_045425_add_label_setting', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (18, '2016_09_17_104728_create_nullable_cms_apicustom', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (19, '2016_10_01_141740_add_method_type_apicustom', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (20, '2016_10_01_141846_add_parameters_apicustom', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (21, '2016_10_01_141934_add_responses_apicustom', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (22, '2016_10_01_144826_add_table_apikey', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (23, '2016_11_14_141657_create_cms_menus', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (24, '2016_11_15_132350_create_cms_email_templates', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (25, '2016_11_15_190410_create_cms_statistics', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (26, '2016_11_17_102740_create_cms_statistic_components', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (27, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (28, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (29, '2019_12_14_000001_create_personal_access_tokens_table', 1);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for periodo
-- ----------------------------
DROP TABLE IF EXISTS `periodo`;
CREATE TABLE `periodo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of periodo
-- ----------------------------
BEGIN;
INSERT INTO `periodo` (`id`, `nombre`) VALUES (3, '2021-2022');
COMMIT;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
