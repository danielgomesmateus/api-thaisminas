-- Adminer 4.7.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE DATABASE `db_thaisminas` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_thaisminas`;

DROP TABLE IF EXISTS `admin_interface_theme`;
CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `css` longtext NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `css`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`) VALUES
(1,	'Django',	1,	'Django administration',	1,	'',	1,	'#0C4B33',	'#F5DD5D',	'#44B78B',	'#FFFFFF',	'#C9F0DD',	'#44B78B',	'#FFFFFF',	'#FFFFFF',	'#C9F0DD',	1,	'#0C3C26',	'#156641',	'#0C4B33',	'#0C3C26',	'#FFFFFF',	'#BA2121',	'#A41515',	'#FFFFFF',	'',	0,	1,	'#000000',	1,	'#FFFFFF',	1,	'',	'0.3',	'',	1,	'#E74C3C',	1,	1,	1,	'code');

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1,	'Can add Theme',	1,	'add_theme'),
(2,	'Can change Theme',	1,	'change_theme'),
(3,	'Can delete Theme',	1,	'delete_theme'),
(4,	'Can view Theme',	1,	'view_theme'),
(5,	'Can add log entry',	2,	'add_logentry'),
(6,	'Can change log entry',	2,	'change_logentry'),
(7,	'Can delete log entry',	2,	'delete_logentry'),
(8,	'Can view log entry',	2,	'view_logentry'),
(9,	'Can add permission',	3,	'add_permission'),
(10,	'Can change permission',	3,	'change_permission'),
(11,	'Can delete permission',	3,	'delete_permission'),
(12,	'Can view permission',	3,	'view_permission'),
(13,	'Can add group',	4,	'add_group'),
(14,	'Can change group',	4,	'change_group'),
(15,	'Can delete group',	4,	'delete_group'),
(16,	'Can view group',	4,	'view_group'),
(17,	'Can add user',	5,	'add_user'),
(18,	'Can change user',	5,	'change_user'),
(19,	'Can delete user',	5,	'delete_user'),
(20,	'Can view user',	5,	'view_user'),
(21,	'Can add content type',	6,	'add_contenttype'),
(22,	'Can change content type',	6,	'change_contenttype'),
(23,	'Can delete content type',	6,	'delete_contenttype'),
(24,	'Can view content type',	6,	'view_contenttype'),
(25,	'Can add session',	7,	'add_session'),
(26,	'Can change session',	7,	'change_session'),
(27,	'Can delete session',	7,	'delete_session'),
(28,	'Can view session',	7,	'view_session'),
(29,	'Can add Contato',	8,	'add_contact'),
(30,	'Can change Contato',	8,	'change_contact'),
(31,	'Can delete Contato',	8,	'delete_contact'),
(32,	'Can view Contato',	8,	'view_contact'),
(33,	'Can add Página',	9,	'add_page'),
(34,	'Can change Página',	9,	'change_page'),
(35,	'Can delete Página',	9,	'delete_page'),
(36,	'Can view Página',	9,	'view_page'),
(37,	'Can add Categoria',	10,	'add_categorie'),
(38,	'Can change Categoria',	10,	'change_categorie'),
(39,	'Can delete Categoria',	10,	'delete_categorie'),
(40,	'Can view Categoria',	10,	'view_categorie'),
(41,	'Can add Projeto',	11,	'add_project'),
(42,	'Can change Projeto',	11,	'change_project'),
(43,	'Can delete Projeto',	11,	'delete_project'),
(44,	'Can view Projeto',	11,	'view_project'),
(45,	'Can add Álbum',	12,	'add_album'),
(46,	'Can change Álbum',	12,	'change_album'),
(47,	'Can delete Álbum',	12,	'delete_album'),
(48,	'Can view Álbum',	12,	'view_album'),
(49,	'Can add Foto',	13,	'add_photo'),
(50,	'Can change Foto',	13,	'change_photo'),
(51,	'Can delete Foto',	13,	'delete_photo'),
(52,	'Can view Foto',	13,	'view_photo'),
(53,	'Can add Arquivo',	14,	'add_file'),
(54,	'Can change Arquivo',	14,	'change_file'),
(55,	'Can delete Arquivo',	14,	'delete_file'),
(56,	'Can view Arquivo',	14,	'view_file');

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1,	'pbkdf2_sha256$180000$00SuvsPM9fIT$4zxs6RykMLfmHtTWA5mAfA8oftwoSirizol9hTPngKs=',	'2020-04-20 21:48:08.868732',	1,	'danielgmateus',	'',	'',	'',	1,	1,	'2020-04-20 21:47:51.150919');

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `contacts_contact`;
CREATE TABLE `contacts_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1,	'2020-04-20 22:32:41.504038',	'1',	'Converter dados Excel',	1,	'[{\"added\": {}}]',	10,	1),
(2,	'2020-04-20 22:34:33.681164',	'1',	'Converter dados contábil',	1,	'[{\"added\": {}}]',	11,	1),
(3,	'2020-04-20 22:37:23.478746',	'1',	'Eteg',	1,	'[{\"added\": {}}]',	14,	1),
(4,	'2020-04-20 22:41:04.690875',	'1',	'Quem somos',	1,	'[{\"added\": {}}]',	9,	1),
(5,	'2020-04-20 22:41:16.456513',	'2',	'Saiba mais',	1,	'[{\"added\": {}}]',	9,	1),
(6,	'2020-04-20 22:41:39.426852',	'3',	'Ajude a manter o trabalho',	1,	'[{\"added\": {}}]',	9,	1),
(7,	'2020-04-20 22:42:03.573450',	'1',	'Python Brasil 2019',	1,	'[{\"added\": {}}]',	12,	1),
(8,	'2020-04-20 22:42:18.685148',	'2',	'PHP Conference 2020',	1,	'[{\"added\": {}}]',	12,	1),
(9,	'2020-04-20 22:42:37.304858',	'1',	'photos/maxresdefault.jpg',	1,	'[{\"added\": {}}]',	13,	1),
(10,	'2020-04-20 22:42:49.941961',	'2',	'photos/imagem-php-site-temporealeventosnovo-1024x546.png',	1,	'[{\"added\": {}}]',	13,	1),
(11,	'2020-04-20 22:45:03.633938',	'1',	'Eteg',	2,	'[{\"changed\": {\"fields\": [\"Arquivos do projeto:\"]}}]',	14,	1),
(12,	'2020-04-20 22:46:00.677067',	'2',	'Eteg',	1,	'[{\"added\": {}}]',	14,	1);

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2,	'admin',	'logentry'),
(1,	'admin_interface',	'theme'),
(4,	'auth',	'group'),
(3,	'auth',	'permission'),
(5,	'auth',	'user'),
(8,	'contacts',	'contact'),
(6,	'contenttypes',	'contenttype'),
(12,	'galleries',	'album'),
(13,	'galleries',	'photo'),
(9,	'pages',	'page'),
(10,	'projects',	'categorie'),
(14,	'projects',	'file'),
(11,	'projects',	'project'),
(7,	'sessions',	'session');

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1,	'contenttypes',	'0001_initial',	'2020-04-20 21:31:29.416930'),
(2,	'auth',	'0001_initial',	'2020-04-20 21:31:31.821175'),
(3,	'admin',	'0001_initial',	'2020-04-20 21:31:41.691663'),
(4,	'admin',	'0002_logentry_remove_auto_add',	'2020-04-20 21:31:44.024975'),
(5,	'admin',	'0003_logentry_add_action_flag_choices',	'2020-04-20 21:31:44.094391'),
(6,	'admin_interface',	'0001_initial',	'2020-04-20 21:31:44.889502'),
(7,	'admin_interface',	'0002_add_related_modal',	'2020-04-20 21:31:48.461460'),
(8,	'admin_interface',	'0003_add_logo_color',	'2020-04-20 21:31:49.696043'),
(9,	'admin_interface',	'0004_rename_title_color',	'2020-04-20 21:31:49.911143'),
(10,	'admin_interface',	'0005_add_recent_actions_visible',	'2020-04-20 21:31:50.549552'),
(11,	'admin_interface',	'0006_bytes_to_str',	'2020-04-20 21:31:50.702698'),
(12,	'admin_interface',	'0007_add_favicon',	'2020-04-20 21:31:51.431200'),
(13,	'admin_interface',	'0008_change_related_modal_background_opacity_type',	'2020-04-20 21:31:53.115763'),
(14,	'admin_interface',	'0009_add_enviroment',	'2020-04-20 21:31:54.634919'),
(15,	'admin_interface',	'0010_add_localization',	'2020-04-20 21:31:54.726770'),
(16,	'admin_interface',	'0011_add_environment_options',	'2020-04-20 21:31:56.623502'),
(17,	'admin_interface',	'0012_update_verbose_names',	'2020-04-20 21:31:56.696492'),
(18,	'admin_interface',	'0013_add_related_modal_close_button',	'2020-04-20 21:31:57.450733'),
(19,	'admin_interface',	'0014_name_unique',	'2020-04-20 21:31:57.783011'),
(20,	'admin_interface',	'0015_add_language_chooser_active',	'2020-04-20 21:31:58.733960'),
(21,	'admin_interface',	'0016_add_language_chooser_display',	'2020-04-20 21:31:59.771153'),
(22,	'contenttypes',	'0002_remove_content_type_name',	'2020-04-20 21:32:01.165629'),
(23,	'auth',	'0002_alter_permission_name_max_length',	'2020-04-20 21:32:04.622272'),
(24,	'auth',	'0003_alter_user_email_max_length',	'2020-04-20 21:32:05.958656'),
(25,	'auth',	'0004_alter_user_username_opts',	'2020-04-20 21:32:06.107872'),
(26,	'auth',	'0005_alter_user_last_login_null',	'2020-04-20 21:32:06.964545'),
(27,	'auth',	'0006_require_contenttypes_0002',	'2020-04-20 21:32:07.085229'),
(28,	'auth',	'0007_alter_validators_add_error_messages',	'2020-04-20 21:32:07.220863'),
(29,	'auth',	'0008_alter_user_username_max_length',	'2020-04-20 21:32:08.592259'),
(30,	'auth',	'0009_alter_user_last_name_max_length',	'2020-04-20 21:32:09.709269'),
(31,	'auth',	'0010_alter_group_name_max_length',	'2020-04-20 21:32:11.405066'),
(32,	'auth',	'0011_update_proxy_permissions',	'2020-04-20 21:32:11.486816'),
(33,	'sessions',	'0001_initial',	'2020-04-20 21:32:12.065423'),
(34,	'contacts',	'0001_initial',	'2020-04-20 21:34:34.608661'),
(35,	'contacts',	'0002_auto_20200314_1241',	'2020-04-20 21:34:34.740267'),
(36,	'contacts',	'0003_auto_20200314_1401',	'2020-04-20 21:34:34.858006'),
(37,	'contacts',	'0004_auto_20200418_0952',	'2020-04-20 21:34:35.007736'),
(38,	'galleries',	'0001_initial',	'2020-04-20 21:34:36.140283'),
(39,	'galleries',	'0002_auto_20200418_0952',	'2020-04-20 21:34:37.818875'),
(40,	'galleries',	'0003_album_cover_image',	'2020-04-20 21:34:40.400201'),
(41,	'pages',	'0001_initial',	'2020-04-20 21:34:41.619876'),
(42,	'pages',	'0002_auto_20200321_1132',	'2020-04-20 21:34:42.092994'),
(43,	'pages',	'0003_auto_20200418_0952',	'2020-04-20 21:34:42.195699'),
(44,	'projects',	'0001_initial',	'2020-04-20 21:34:42.689633'),
(45,	'projects',	'0002_auto_20200314_1616',	'2020-04-20 21:34:45.460736'),
(46,	'projects',	'0003_auto_20200314_1740',	'2020-04-20 21:34:48.477512'),
(47,	'projects',	'0004_auto_20200321_1132',	'2020-04-20 21:34:50.262253'),
(48,	'projects',	'0005_auto_20200418_0952',	'2020-04-20 21:34:50.335019'),
(49,	'projects',	'0006_auto_20200420_1742',	'2020-04-20 21:34:50.553893'),
(50,	'projects',	'0007_auto_20200420_1804',	'2020-04-20 21:34:53.427391'),
(51,	'projects',	'0008_auto_20200420_1834',	'2020-04-20 21:34:53.635529'),
(52,	'galleries',	'0004_auto_20200420_1845',	'2020-04-20 21:45:22.129019'),
(53,	'projects',	'0009_auto_20200420_1846',	'2020-04-20 21:46:18.035976'),
(54,	'projects',	'0010_remove_project_files',	'2020-04-20 22:20:51.542944'),
(55,	'projects',	'0011_file',	'2020-04-20 22:31:20.973150'),
(56,	'projects',	'0012_auto_20200420_1936',	'2020-04-20 22:36:43.934351'),
(57,	'projects',	'0013_auto_20200420_1943',	'2020-04-20 22:43:58.877950');

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9y0gmgsy6ubrpknjl42ckrw26qfm93ai',	'ZDhkMTFjMmMwMjJkYWNiMWRjNTdkZjIyOWIwYzNhNTZlOWZmOWFhMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZDk0MzdiMmY0MTEyN2ZjNjE3YmMzMDlkZmQyZjY1MzgzMzZlOTZlIn0=',	'2020-05-04 21:48:08.914050');

DROP TABLE IF EXISTS `galleries_album`;
CREATE TABLE `galleries_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) NOT NULL,
  `description_short` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `cover_image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_album_slug_16222145` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `galleries_album` (`id`, `name`, `description_short`, `slug`, `status`, `created_at`, `updated_at`, `cover_image`) VALUES
(1,	'Python Brasil 2019',	'Fotos de como foi minha ida ao Python Brasil 2019',	'python-brasil-2019',	1,	'2020-04-20 22:42:03.570257',	'2020-04-20 22:42:03.570392',	'albuns/imagem-php-site-temporealeventosnovo-1024x546.png'),
(2,	'PHP Conference 2020',	'Preparação para a PHP Conference 2020',	'php-conference-2020',	1,	'2020-04-20 22:42:18.682535',	'2020-04-20 22:42:18.682622',	'albuns/maxresdefault.jpg');

DROP TABLE IF EXISTS `galleries_photo`;
CREATE TABLE `galleries_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(100) NOT NULL,
  `description_short` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_photo_album_id_64e7435e_fk_galleries_album_id` (`album_id`),
  CONSTRAINT `galleries_photo_album_id_64e7435e_fk_galleries_album_id` FOREIGN KEY (`album_id`) REFERENCES `galleries_album` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `galleries_photo` (`id`, `photo`, `description_short`, `status`, `created_at`, `updated_at`, `album_id`) VALUES
(1,	'photos/maxresdefault.jpg',	'Lorem ipsum curae enim habitant orci curabitur.',	1,	'2020-04-20 22:42:37.302907',	'2020-04-20 22:42:37.302991',	2),
(2,	'photos/imagem-php-site-temporealeventosnovo-1024x546.png',	'Lorem ipsum curae enim habitant orci curabitur.',	1,	'2020-04-20 22:42:49.939666',	'2020-04-20 22:42:49.939756',	1);

DROP TABLE IF EXISTS `pages_page`;
CREATE TABLE `pages_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(35) NOT NULL,
  `content` longtext NOT NULL,
  `slug` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_page_slug_770723b9` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `pages_page` (`id`, `title`, `content`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1,	'Quem somos',	'<p><span style=\'color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean placerat sed dolor quis pellentesque. Maecenas luctus bibendum ex, ut feugiat est laoreet non. Phasellus hendrerit sit amet justo sed aliquet. Vivamus mattis malesuada vestibulum. Nunc a venenatis risus, sit amet gravida magna. Donec non lectus egestas, viverra est sed, interdum odio. Duis maximus odio ac volutpat fermentum. Donec et erat non lorem ultricies bibendum. Nullam commodo est ac tortor bibendum imperdiet. Proin fringilla eget augue at iaculis. Cras rutrum massa sed enim tincidunt, ac dictum risus accumsan. Integer rhoncus massa eu velit vehicula faucibus. Fusce facilisis risus et luctus molestie. Sed egestas faucibus pretium. Suspendisse potenti.</span></p>',	'quem-somos',	1,	'2020-04-20 22:41:04.688797',	'2020-04-20 22:41:04.688889'),
(2,	'Saiba mais',	'<p><span style=\'color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean placerat sed dolor quis pellentesque. Maecenas luctus bibendum ex, ut feugiat est laoreet non. Phasellus hendrerit sit amet justo sed aliquet. Vivamus mattis malesuada vestibulum. Nunc a venenatis risus, sit amet gravida magna. Donec non lectus egestas, viverra est sed, interdum odio. Duis maximus odio ac volutpat fermentum. Donec et erat non lorem ultricies bibendum. Nullam commodo est ac tortor bibendum imperdiet. Proin fringilla eget augue at iaculis. Cras rutrum massa sed enim tincidunt, ac dictum risus accumsan. Integer rhoncus massa eu velit vehicula faucibus. Fusce facilisis risus et luctus molestie. Sed egestas faucibus pretium. Suspendisse potenti.</span></p>',	'saiba-mais',	1,	'2020-04-20 22:41:16.455114',	'2020-04-20 22:41:16.455164'),
(3,	'Ajude a manter o trabalho',	'<p><span style=\'color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean placerat sed dolor quis pellentesque. Maecenas luctus bibendum ex, ut feugiat est laoreet non. Phasellus hendrerit sit amet justo sed aliquet. Vivamus mattis malesuada vestibulum. Nunc a venenatis risus, sit amet gravida magna. Donec non lectus egestas, viverra est sed, interdum odio. Duis maximus odio ac volutpat fermentum. Donec et erat non lorem ultricies bibendum. Nullam commodo est ac tortor bibendum imperdiet. Proin fringilla eget augue at iaculis. Cras rutrum massa sed enim tincidunt, ac dictum risus accumsan. Integer rhoncus massa eu velit vehicula faucibus. Fusce facilisis risus et luctus molestie. Sed egestas faucibus pretium. Suspendisse potenti.</span></p>',	'ajude-a-manter-o-trabalho',	1,	'2020-04-20 22:41:39.425527',	'2020-04-20 22:41:39.425572');

DROP TABLE IF EXISTS `projects_categorie`;
CREATE TABLE `projects_categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `projects_categorie_slug_3b4a21c4` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `projects_categorie` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1,	'Converter dados Excel',	'converter-dados-excel',	1,	'2020-04-20 22:32:41.502856',	'2020-04-20 22:32:41.502914');

DROP TABLE IF EXISTS `projects_file`;
CREATE TABLE `projects_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `version` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `files` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projects_file_project_id_00c4f448_fk_projects_project_id` (`project_id`),
  CONSTRAINT `projects_file_project_id_00c4f448_fk_projects_project_id` FOREIGN KEY (`project_id`) REFERENCES `projects_project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `projects_file` (`id`, `name`, `version`, `content`, `files`, `status`, `created_at`, `updated_at`, `project_id`) VALUES
(1,	'Eteg',	'v1.0',	'<p><span style=\'color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean placerat sed dolor quis pellentesque. Maecenas luctus bibendum ex, ut feugiat est laoreet non. Phasellus hendrerit sit amet justo sed aliquet. Vivamus mattis malesuada vestibulum. Nunc a venenatis risus, sit amet gravida magna. Donec non lectus egestas, viverra est sed, interdum odio. Duis maximus odio ac volutpat fermentum. Donec et erat non lorem ultricies bibendum. Nullam commodo est ac tortor bibendum imperdiet. Proin fringilla eget augue at iaculis. Cras rutrum massa sed enim tincidunt, ac dictum risus accumsan. Integer rhoncus massa eu velit vehicula faucibus. Fusce facilisis risus et luctus molestie. Sed egestas faucibus pretium. Suspendisse potenti.</span></p>',	'projects/files/eteg-v0.1.zip',	1,	'2020-04-20 22:37:23.475131',	'2020-04-20 22:45:03.629956',	1),
(2,	'Eteg',	'v1.1',	'<p><span style=\'color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean placerat sed dolor quis pellentesque. Maecenas luctus bibendum ex, ut feugiat est laoreet non. Phasellus hendrerit sit amet justo sed aliquet. Vivamus mattis malesuada vestibulum. Nunc a venenatis risus, sit amet gravida magna. Donec non lectus egestas, viverra est sed, interdum odio. Duis maximus odio ac volutpat fermentum. Donec et erat non lorem ultricies bibendum. Nullam commodo est ac tortor bibendum imperdiet. Proin fringilla eget augue at iaculis. Cras rutrum massa sed enim tincidunt, ac dictum risus accumsan. Integer rhoncus massa eu velit vehicula faucibus. Fusce facilisis risus et luctus molestie. Sed egestas faucibus pretium. Suspendisse potenti.</span></p>',	'projects/files/eteg-v0.2.zip',	1,	'2020-04-20 22:46:00.674444',	'2020-04-20 22:46:00.674543',	1);

DROP TABLE IF EXISTS `projects_project`;
CREATE TABLE `projects_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description_short` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `cover_image` varchar(255) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projects_project_slug_2d50067a` (`slug`),
  KEY `projects_project_categorie_id_2cd97d52_fk_projects_categorie_id` (`categorie_id`),
  CONSTRAINT `projects_project_categorie_id_2cd97d52_fk_projects_categorie_id` FOREIGN KEY (`categorie_id`) REFERENCES `projects_categorie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `projects_project` (`id`, `name`, `description_short`, `content`, `cover_image`, `slug`, `status`, `created_at`, `updated_at`, `categorie_id`) VALUES
(1,	'Converter dados contábil',	'Como converter dados contábil do excel para PDF.',	'<p style=\'margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean placerat sed dolor quis pellentesque. Maecenas luctus bibendum ex, ut feugiat est laoreet non. Phasellus hendrerit sit amet justo sed aliquet. Vivamus mattis malesuada vestibulum. Nunc a venenatis risus, sit amet gravida magna. Donec non lectus egestas, viverra est sed, interdum odio. Duis maximus odio ac volutpat fermentum. Donec et erat non lorem ultricies bibendum. Nullam commodo est ac tortor bibendum imperdiet. Proin fringilla eget augue at iaculis. Cras rutrum massa sed enim tincidunt, ac dictum risus accumsan. Integer rhoncus massa eu velit vehicula faucibus. Fusce facilisis risus et luctus molestie. Sed egestas faucibus pretium. Suspendisse potenti.</p><p style=\'margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'>Nam pretium elementum dictum. Nunc mauris lacus, feugiat elementum purus eu, varius efficitur orci. Suspendisse potenti. Suspendisse potenti. Phasellus ut nisi in ante tristique laoreet. Cras gravida aliquam lobortis. Ut vehicula eget quam elementum tincidunt. Sed maximus in dui vitae mollis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur erat mi, tincidunt in nisi sit amet, molestie tincidunt risus.</p><p style=\'margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'>Nulla facilisi. Integer est nulla, cursus id libero convallis, sagittis congue neque. Donec ultricies convallis scelerisque. Sed congue metus sed nulla sodales, vel ultrices lectus egestas. Integer mauris quam, luctus tincidunt rhoncus eget, porta et odio. Morbi enim urna, posuere vel lorem id, feugiat fringilla eros. Fusce sed leo fermentum, interdum diam ac, posuere diam. Etiam tincidunt tincidunt sem, eu tincidunt enim fringilla eu. Maecenas rhoncus massa eget massa convallis rhoncus. Cras quam massa, lobortis eget tempus quis, pharetra nec magna. Sed mattis leo at erat laoreet, in lobortis libero tincidunt. Nam sit amet porta arcu.</p><p style=\'margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'>Etiam iaculis lacus in gravida aliquet. Maecenas volutpat eget nisi eget volutpat. Donec tellus ipsum, varius facilisis pellentesque non, commodo non ligula. Proin fermentum ultricies tortor, vitae pharetra lorem vulputate sed. Sed consequat augue leo, eget iaculis augue interdum at. Aliquam fringilla nisi et congue gravida. Praesent sollicitudin semper lobortis. Vestibulum porta dolor eget convallis pretium. Sed turpis augue, vulputate nec tempus sit amet, vehicula id nunc. Sed consectetur metus nisl, in gravida est tempor et. Sed suscipit hendrerit velit quis venenatis. Pellentesque euismod ultrices sem, non tristique nunc sodales id. Maecenas vehicula eget justo eget eleifend.</p><p style=\'margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'>Ut tempus tellus ac metus maximus ultrices. Fusce quis consectetur urna. Vestibulum vehicula porta pretium. Aliquam pharetra eros ac nisi porttitor blandit. Phasellus varius ligula metus, eu aliquet arcu gravida sed. Etiam porttitor ut enim ut suscipit. Morbi bibendum lacinia mauris sed aliquam. Duis a ex id neque ornare ultricies et at nisi. Nunc vitae sem rhoncus, euismod felis sit amet, ultricies neque. Mauris bibendum ante nulla, ut tempus risus posuere ut. Nullam pretium metus at ullamcorper laoreet. Maecenas est dui, venenatis et elit sit amet, elementum porta arcu. Praesent lacinia laoreet eros sed malesuada. Donec sit amet magna lorem. Suspendisse et vehicula sapien.</p>',	'projects/images/imagem-php-site-temporealeventosnovo-1024x546.png',	'como-converter-dados-contabil-do-excel-para-pdf',	1,	'2020-04-20 22:34:33.676697',	'2020-04-20 22:34:33.676820',	1);

-- 2020-04-20 22:48:00
