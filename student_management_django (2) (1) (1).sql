-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2026 at 09:50 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_management_django`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add student', 7, 'add_student'),
(26, 'Can change student', 7, 'change_student'),
(27, 'Can delete student', 7, 'delete_student'),
(28, 'Can view student', 7, 'view_student'),
(29, 'Can add teacher', 8, 'add_teacher'),
(30, 'Can change teacher', 8, 'change_teacher'),
(31, 'Can delete teacher', 8, 'delete_teacher'),
(32, 'Can view teacher', 8, 'view_teacher'),
(33, 'Can add subject', 9, 'add_subject'),
(34, 'Can change subject', 9, 'change_subject'),
(35, 'Can delete subject', 9, 'delete_subject'),
(36, 'Can view subject', 9, 'view_subject'),
(37, 'Can add student subject', 10, 'add_studentsubject'),
(38, 'Can change student subject', 10, 'change_studentsubject'),
(39, 'Can delete student subject', 10, 'delete_studentsubject'),
(40, 'Can view student subject', 10, 'view_studentsubject'),
(41, 'Can add class model', 11, 'add_classmodel'),
(42, 'Can change class model', 11, 'change_classmodel'),
(43, 'Can delete class model', 11, 'delete_classmodel'),
(44, 'Can view class model', 11, 'view_classmodel'),
(45, 'Can add class student', 12, 'add_classstudent'),
(46, 'Can change class student', 12, 'change_classstudent'),
(47, 'Can delete class student', 12, 'delete_classstudent'),
(48, 'Can view class student', 12, 'view_classstudent'),
(49, 'Can add designation', 13, 'add_designation'),
(50, 'Can change designation', 13, 'change_designation'),
(51, 'Can delete designation', 13, 'delete_designation'),
(52, 'Can view designation', 13, 'view_designation'),
(53, 'Can add department', 14, 'add_department'),
(54, 'Can change department', 14, 'change_department'),
(55, 'Can delete department', 14, 'delete_department'),
(56, 'Can view department', 14, 'view_department'),
(57, 'Can add department', 15, 'add_department'),
(58, 'Can change department', 15, 'change_department'),
(59, 'Can delete department', 15, 'delete_department'),
(60, 'Can view department', 15, 'view_department');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class_name`, `subject_id`, `teacher_id`, `created_at`, `updated_at`) VALUES
(13, 'A', 11, 3, '2025-10-20 05:23:16', '2025-10-20 05:23:16'),
(15, 'C', 15, 8, '2025-10-24 09:21:43', '2025-10-24 09:21:43');

-- --------------------------------------------------------

--
-- Table structure for table `class_student`
--

CREATE TABLE `class_student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_student`
--

INSERT INTO `class_student` (`id`, `class_id`, `student_id`, `created_at`, `updated_at`) VALUES
(22, 15, 4, NULL, NULL),
(23, 15, 10, NULL, NULL),
(24, 15, 12, NULL, NULL),
(25, 13, 10, NULL, NULL),
(26, 13, 11, NULL, NULL),
(27, 13, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `created_by`, `status`, `created_at`) VALUES
(21, 'English', 'Admin', 1, '2026-04-16 08:58:33'),
(23, 'Mathematics', 'Admin', 1, '2026-04-16 08:56:28'),
(24, 'Physics', 'Admin', 1, '2026-04-16 08:56:28'),
(26, 'Information Technology (IT)', 'Admin', 1, '2026-04-16 08:56:28'),
(27, 'Software Engineering', 'Admin', 1, '2026-04-16 08:56:28'),
(32, 'Business Administration', 'Admin', 1, '2026-04-16 08:58:33'),
(33, 'Mathematics', 'Admin', 1, '2026-04-16 08:58:33'),
(34, 'Administration', 'Admin', 1, '2026-04-16 08:58:33'),
(35, 'Accounts', 'Admin', 1, '2026-04-16 08:58:33'),
(36, 'Examination', 'Admin', 1, '2026-04-16 08:58:33'),
(38, 'Library', 'Admin', 1, '2026-04-16 08:58:33'),
(39, 'HR (Human Resource)', 'Admin', 1, '2026-04-16 08:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `name`, `created_by`, `status`, `created_at`, `department_id`) VALUES
(15, 'Principal', 'Admin', 1, '2026-04-16 08:58:33', 34),
(16, 'Vice Principal', 'Admin', 1, '2026-04-16 08:58:33', 34),
(17, 'Head of Department', 'Admin', 1, '2026-04-16 08:58:33', 34),
(18, 'Lecturer', 'Admin', 1, '2026-04-16 08:58:33', 21),
(19, 'Senior Lecturer', 'Admin', 1, '2026-04-16 08:58:33', 24),
(20, 'Assistant Professor', 'Admin', 1, '2026-04-16 08:58:33', 26),
(21, 'Registrar', 'Admin', 1, '2026-04-16 08:58:33', 39),
(22, 'Exam Controller', 'Admin', 1, '2026-04-16 08:58:33', 36),
(23, 'Lab Assistant', 'Admin', 0, '2026-04-16 08:58:33', 38),
(26, 'Account Officer', 'Admin', 1, '2026-04-16 08:58:33', 35),
(27, 'IT Support', 'Admin', 1, '2026-04-16 08:58:33', 26);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(11, 'classes', 'classmodel'),
(12, 'classes', 'classstudent'),
(5, 'contenttypes', 'contenttype'),
(14, 'department', 'department'),
(15, 'designation', 'department'),
(13, 'designation', 'designation'),
(6, 'sessions', 'session'),
(7, 'students', 'student'),
(10, 'subjects', 'studentsubject'),
(9, 'subjects', 'subject'),
(8, 'teachers', 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2026-04-06 09:45:10.849811'),
(2, 'auth', '0001_initial', '2026-04-06 09:45:17.700089'),
(3, 'admin', '0001_initial', '2026-04-06 09:45:19.917670'),
(4, 'admin', '0002_logentry_remove_auto_add', '2026-04-06 09:45:19.986664'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2026-04-06 09:45:20.016846'),
(6, 'contenttypes', '0002_remove_content_type_name', '2026-04-06 09:45:20.600096'),
(7, 'auth', '0002_alter_permission_name_max_length', '2026-04-06 09:45:21.433816'),
(8, 'auth', '0003_alter_user_email_max_length', '2026-04-06 09:45:21.552319'),
(9, 'auth', '0004_alter_user_username_opts', '2026-04-06 09:45:21.586259'),
(10, 'auth', '0005_alter_user_last_login_null', '2026-04-06 09:45:21.948587'),
(11, 'auth', '0006_require_contenttypes_0002', '2026-04-06 09:45:21.979140'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2026-04-06 09:45:22.035118'),
(13, 'auth', '0008_alter_user_username_max_length', '2026-04-06 09:45:22.168449'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2026-04-06 09:45:22.244432'),
(15, 'auth', '0010_alter_group_name_max_length', '2026-04-06 09:45:22.400040'),
(16, 'auth', '0011_update_proxy_permissions', '2026-04-06 09:45:22.466762'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2026-04-06 09:45:22.569018'),
(18, 'classes', '0001_initial', '2026-04-06 09:45:22.625409'),
(19, 'sessions', '0001_initial', '2026-04-06 09:45:23.179862'),
(20, 'students', '0001_initial', '2026-04-06 09:45:23.234325'),
(21, 'subjects', '0001_initial', '2026-04-06 09:45:23.268730'),
(22, 'teachers', '0001_initial', '2026-04-06 09:45:23.308207'),
(23, 'designation', '0001_initial', '2026-04-06 10:54:44.636688'),
(24, 'designation', '0002_alter_designation_options_designation_category_and_more', '2026-04-07 04:58:45.360925'),
(25, 'designation', '0003_add_designations', '2026-04-07 05:06:02.869077'),
(27, 'staff', '0001_initial', '2026-04-07 08:10:50.560534'),
(28, 'staff', '0002_alter_staff_options', '2026-04-09 02:58:51.262941'),
(29, 'staff', '0003_alter_staff_options', '2026-04-09 04:07:57.237997'),
(30, 'designation', '0004_alter_designation_category', '2026-04-11 07:22:24.088829'),
(31, 'department', '0001_initial', '2026-04-11 19:39:29.220921'),
(32, 'designation', '0002_alter_designation_options', '2026-04-13 19:00:48.652941'),
(33, 'designation', '0003_alter_designation_table', '2026-04-13 19:17:03.053125'),
(34, 'designation', '0003_alter_designation_options', '2026-04-13 19:26:02.611928'),
(35, 'department', '0002_alter_department_options', '2026-04-16 01:45:47.607284'),
(36, 'designation', '0002_department_alter_designation_options', '2026-04-16 01:45:47.679239'),
(37, 'designation', '0003_alter_department_options_alter_designation_options', '2026-04-16 02:04:11.641851');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_10_13_143257_create_teachers_table', 1),
(5, '2025_10_13_143258_create_students_table', 1),
(6, '2025_10_13_143259_create_subjects_table', 1),
(7, '2025_10_13_143555_create_student_subject_table', 1),
(8, '2025_10_20_092825_create_classes_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9m9jQLTA1yJvBvm3DKXr8natryGoQGOEFEmRefBS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNjlCSTB6c1o4WGVBRm02NlRzdTY1SEd2RjVxVWpTeW1rME1ybTBrTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODA4MC9yZWdpc3RlciI7fX0=', 1762087700),
('Dtws50Tg0F51zvk6sLUevXPovb54RO6zFcNr7CMo', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMWY4WE1lTEg4NUNPTHQwNjMwNlJobTZFMzh6V2J2MkY0YlVQQUZtNiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3N1YmplY3QiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1762080018),
('J2f2BKttCT3Op22BPGIOsKu1Lotr9ovtr1xTOz9y', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHdsalRPbm9Zd0VSZnQwZlZOckNjN1JhNmtmNEt2QmVqR1ZQeWVDaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1761461775),
('jb5HMM0VRJ754S6Y9WF1tH0Ubp5yZaW6jUM11XJk', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZklGSWlLdmdTWnpTVGRWdmM3aGJjNm9GdmJ4SlRXMXRwZ0F2akl4bSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdHVkZW50Ijt9czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2NsYXNzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1761459499),
('xsFYHW2W7uXjsg8t8Ub9oD9v9GwMKVjhy6oCJAhc', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibFllTGpWQmJyaVE3OTBZOVQ0WEFjWEIzU0czSExpTWtNTWFKb1J1RCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1761735895);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(500) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Nafisa', 'n@gmail.com', '123456', 'kdsjfskjd', 'Active', '2025-10-13 10:38:53', '2025-10-13 10:38:53'),
(10, 'Asad', 'b@gmail.com', '23234', 'sfdsfvsd', 'Active', '2025-10-14 11:41:07', '2025-10-14 11:41:07'),
(11, 'Tahiyat', 'ni@gmail.com', '01858937859', 'sxasdcas', 'Inactive', '2025-10-21 01:44:56', '2025-10-21 01:44:56'),
(12, 'Gracique', 'sa1112@gmail.com', '1221', 'zbzfdvss', 'Active', '2025-10-21 01:45:28', '2025-10-21 01:45:28'),
(13, 'Nirjhor10', 'nirjhor@gmail.com', '018683489734', 'rshzgetydfh', 'Active', '2025-10-25 03:16:11', '2025-10-25 03:16:11'),
(14, 'Rakib', 'r@gmail.com', '123456', 'jlvhslka;fk', 'Inactive', '2025-10-26 00:46:03', '2025-10-26 00:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

CREATE TABLE `student_subject` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `description`, `teacher_id`, `created_at`, `updated_at`) VALUES
(11, 'Python', 'Django', 3, '2025-10-14 11:41:58', '2025-10-15 03:52:41'),
(15, 'PHP', 'Laravel', 8, '2025-10-24 09:20:45', '2025-10-24 09:20:45'),
(17, 'GOLANG', 'GOLANG ALL', 3, '2025-11-13 18:00:00', '2025-11-13 18:00:00'),
(18, 'Bangla', '2nd Part', 3, '2025-11-13 18:00:00', '2025-11-17 18:00:00'),
(19, 'fafadf', 'fdasdsffdsafdasdf', 3, '2025-11-13 18:00:00', '2025-11-13 18:00:00'),
(21, 'ff-a', 'ff-a', 8, '2025-11-13 18:00:00', '2025-11-17 18:00:00'),
(28, 'Golang', 'golang', 8, '2025-11-13 18:00:00', '2025-11-14 18:00:00'),
(29, 'fafadf', 'fdasdsffdsafdasdf', 3, '2025-11-13 18:00:00', '2025-11-13 18:00:00'),
(30, 'fafadf', 'fdasdsffdsafdasdf', 8, '2025-11-13 18:00:00', '2025-11-13 18:00:00'),
(31, 'reee', 'wewewe', 3, '2025-11-13 18:00:00', '2025-11-13 18:00:00'),
(32, 'go', 'go-3', 8, '2025-11-13 18:00:00', '2025-11-17 18:00:00'),
(34, 'fafadf', 'fdasdsffdsafdasdf', 3, '2025-11-13 18:00:00', '2025-11-13 18:00:00'),
(36, 'q', 'q', 3, '2025-11-15 18:00:00', '2025-11-15 18:00:00'),
(37, 'ff', 'ff', 3, '2025-11-15 18:00:00', '2025-11-15 18:00:00'),
(38, 'fds', 's', 3, '2025-11-15 18:00:00', '2025-11-15 18:00:00'),
(41, 'Foxpro', 'Optional', 8, '2025-11-15 18:00:00', '2025-11-15 18:00:00'),
(42, 'Foxpro', 'Optional', 8, '2025-11-15 18:00:00', '2025-11-15 18:00:00'),
(45, 'Foxpro', 'Optional', 8, '2025-11-15 18:00:00', '2025-11-15 18:00:00'),
(46, 'Foxpro', 'Optional', 8, '2025-11-15 18:00:00', '2025-11-15 18:00:00'),
(47, 'Foxpro', 'Optional', 8, '2025-11-15 18:00:00', '2025-11-15 18:00:00'),
(48, 'Ahmed', 'ahmed', 8, '2025-11-15 18:00:00', '2025-11-15 18:00:00'),
(49, 'Python', 'Django', 8, '2025-11-17 18:00:00', '2025-11-17 18:00:00'),
(50, 'xyzwww', 'ahmedwwww', 3, '2025-11-18 18:00:00', '2025-11-18 18:00:00'),
(51, 'English', '2nd part', 8, '2025-11-18 18:00:00', '2025-11-18 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(3, 'Nafisa', 'nafisa@gmail.com', '123456', NULL, '2025-10-25 03:16:49'),
(8, 'Tahiyat', 'nirjhor@gmail.com', '01858937859', '2025-10-23 02:19:39', '2025-11-17 20:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tahiyat', 'n@gmail.com', NULL, '$2y$12$1xZ64PYK5VYouh.RsldfFOGluCHWxUFCDynQv7fZhh.yvnELG6IOe', NULL, '2025-10-23 01:04:15', '2025-10-23 01:04:15'),
(2, 'Tahiyat', 'na@gmail.com', NULL, '$2y$12$.ccpsQA70Frn0Rc4lLSqDufbOdmn3Z9tVEALIzj.PMAKQhOhv06a.', NULL, '2025-10-23 01:40:31', '2025-10-23 01:40:31'),
(3, 'n', 'naf@gmail.com', NULL, '$2y$12$hTVF.W30mEGSUDAC.dqqQePw.tH41fa6MzSN60GD0RfV6voonPZAq', NULL, '2025-10-23 01:41:06', '2025-10-23 01:41:06'),
(4, 'a', 'a@gmail.com', NULL, '$2y$12$1bo98o07T0OjEtjhNhTZDO72lBcvJLRM7RQJreFTtFLa14UaBlR3a', NULL, '2025-10-23 01:42:03', '2025-10-23 01:42:03'),
(5, 's', 's@gmail.com', NULL, '$2y$12$Wu6m9jdejVW9KvbvLwDtRe52Hf0X8focKNFWRvh4ZQTCuythL7MZi', NULL, '2025-10-23 01:44:45', '2025-10-23 01:44:45'),
(6, 'Tahiyat', 'afds@gmail.com', NULL, '$2y$12$45egqwygBQp90qP/Mr8PEuPEu9xe5wAXhtLksZGf1XFWEPwzrqTOe', NULL, '2025-10-23 02:01:46', '2025-10-23 02:01:46'),
(7, 'Nafisa', 'nafisa@gmail.com', NULL, '$2y$12$YKNmYmeufKUV5AEKsLr9Y.A7L.9LD1/JbyxjhZQLlS15PNGpeAJxW', NULL, '2025-10-24 09:15:11', '2025-10-24 09:15:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classes_subject_id_foreign` (`subject_id`),
  ADD KEY `classes_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `class_student`
--
ALTER TABLE `class_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_student_class_id_foreign` (`class_id`),
  ADD KEY `class_student_student_id_foreign` (`student_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation_department_id_fk` (`department_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

--
-- Indexes for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_subject_student_id_foreign` (`student_id`),
  ADD KEY `student_subject_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `class_student`
--
ALTER TABLE `class_student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `student_subject`
--
ALTER TABLE `student_subject`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `classes_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_student`
--
ALTER TABLE `class_student`
  ADD CONSTRAINT `class_student_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `designation`
--
ALTER TABLE `designation`
  ADD CONSTRAINT `designation_department_id_fk` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD CONSTRAINT `student_subject_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_subject_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
