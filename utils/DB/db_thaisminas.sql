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
(1,	'Django',	1,	'Administração',	0,	'',	1,	'#0C3C26',	'#F5DD5D',	'#FFFFFF',	'#FFFFFF',	'#C9F0DD',	'#156641',	'#FFFFFF',	'#FFFFFF',	'#C9F0DD',	1,	'#0C3C26',	'#156641',	'#0C4B33',	'#0C3C26',	'#FFFFFF',	'#BA2121',	'#A41515',	'#FFFFFF',	'',	1,	1,	'#000000',	1,	'#FFFFFF',	1,	'',	'0.3',	'',	1,	'#E74C3C',	1,	1,	1,	'name'),
(2,	'Bootstrap',	0,	'Django administration',	0,	'',	1,	'#FFFFFF',	'#503873',	'#463265',	'#463265',	'#7351A6',	'#7351A6',	'#FFFFFF',	'#CDBFE3',	'#FFFFFF',	1,	'#463265',	'#7351A6',	'#5CB85C',	'#449D44',	'#FFFFFF',	'#D9534F',	'#C9302C',	'#FFFFFF',	'',	0,	1,	'#503873',	1,	'#503873',	1,	'',	'0.2',	'',	1,	'#E74C3C',	1,	1,	1,	'code'),
(3,	'Foundation',	0,	'Django administration',	0,	'',	1,	'#2C3840',	'#DDDDDD',	'#FFFFFF',	'#FFFFFF',	'#DDDDDD',	'#074E68',	'#FFFFFF',	'#FFFFFF',	'#DDDDDD',	1,	'#000000',	'#074E68',	'#2199E8',	'#1585CF',	'#FFFFFF',	'#CC4B37',	'#BF4634',	'#FFFFFF',	'',	0,	1,	'#000000',	1,	'#CCCCCC',	1,	'',	'0.2',	'',	1,	'#E74C3C',	1,	1,	1,	'code'),
(4,	'USWDS',	0,	'Django administration',	0,	'',	1,	'#112E51',	'#FFFFFF',	'#FFFFFF',	'#FFFFFF',	'#E1F3F8',	'#205493',	'#FFFFFF',	'#FFFFFF',	'#E1F3F8',	1,	'#205493',	'#0071BC',	'#205493',	'#112E51',	'#FFFFFF',	'#CD2026',	'#981B1E',	'#FFFFFF',	'',	0,	1,	'#000000',	1,	'#FFFFFF',	1,	'',	'0.8',	'',	1,	'#E74C3C',	1,	1,	1,	'code');

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
(1,	'Can add log entry',	1,	'add_logentry'),
(2,	'Can change log entry',	1,	'change_logentry'),
(3,	'Can delete log entry',	1,	'delete_logentry'),
(4,	'Can view log entry',	1,	'view_logentry'),
(5,	'Can add permission',	2,	'add_permission'),
(6,	'Can change permission',	2,	'change_permission'),
(7,	'Can delete permission',	2,	'delete_permission'),
(8,	'Can view permission',	2,	'view_permission'),
(9,	'Can add group',	3,	'add_group'),
(10,	'Can change group',	3,	'change_group'),
(11,	'Can delete group',	3,	'delete_group'),
(12,	'Can view group',	3,	'view_group'),
(13,	'Can add user',	4,	'add_user'),
(14,	'Can change user',	4,	'change_user'),
(15,	'Can delete user',	4,	'delete_user'),
(16,	'Can view user',	4,	'view_user'),
(17,	'Can add content type',	5,	'add_contenttype'),
(18,	'Can change content type',	5,	'change_contenttype'),
(19,	'Can delete content type',	5,	'delete_contenttype'),
(20,	'Can view content type',	5,	'view_contenttype'),
(21,	'Can add session',	6,	'add_session'),
(22,	'Can change session',	6,	'change_session'),
(23,	'Can delete session',	6,	'delete_session'),
(24,	'Can view session',	6,	'view_session'),
(25,	'Can add contact',	7,	'add_contact'),
(26,	'Can change contact',	7,	'change_contact'),
(27,	'Can delete contact',	7,	'delete_contact'),
(28,	'Can view contact',	7,	'view_contact'),
(29,	'Can add page',	8,	'add_page'),
(30,	'Can change page',	8,	'change_page'),
(31,	'Can delete page',	8,	'delete_page'),
(32,	'Can view page',	8,	'view_page'),
(33,	'Can add project',	9,	'add_project'),
(34,	'Can change project',	9,	'change_project'),
(35,	'Can delete project',	9,	'delete_project'),
(36,	'Can view project',	9,	'view_project'),
(37,	'Can add Categoria',	10,	'add_categorie'),
(38,	'Can change Categoria',	10,	'change_categorie'),
(39,	'Can delete Categoria',	10,	'delete_categorie'),
(40,	'Can view Categoria',	10,	'view_categorie'),
(41,	'Can add Foto',	11,	'add_photo'),
(42,	'Can change Foto',	11,	'change_photo'),
(43,	'Can delete Foto',	11,	'delete_photo'),
(44,	'Can view Foto',	11,	'view_photo'),
(45,	'Can add Album',	12,	'add_album'),
(46,	'Can change Album',	12,	'change_album'),
(47,	'Can delete Album',	12,	'delete_album'),
(48,	'Can view Album',	12,	'view_album'),
(49,	'Can add Álbum',	13,	'add_album'),
(50,	'Can change Álbum',	13,	'change_album'),
(51,	'Can delete Álbum',	13,	'delete_album'),
(52,	'Can view Álbum',	13,	'view_album'),
(53,	'Can add Foto',	14,	'add_photo'),
(54,	'Can change Foto',	14,	'change_photo'),
(55,	'Can delete Foto',	14,	'delete_photo'),
(56,	'Can view Foto',	14,	'view_photo'),
(57,	'Can add Theme',	15,	'add_theme'),
(58,	'Can change Theme',	15,	'change_theme'),
(59,	'Can delete Theme',	15,	'delete_theme'),
(60,	'Can view Theme',	15,	'view_theme');

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
(1,	'pbkdf2_sha256$180000$nMZRswskNaOb$GiV3kfApgY6jDDO+eNKfOasU4h5qwrwOIyTpz4nAPPM=',	'2020-03-15 14:14:28.206062',	1,	'daniel',	'',	'',	'contato@danielgmateus.com.br',	1,	1,	'2020-03-14 12:44:31.996261');

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

INSERT INTO `contacts_contact` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1,	'Daniel Gomes Mateus',	'daniel.analista@outlook.com',	NULL,	'Preciso saber os valores dos seus serviços de contabilidade.',	'2020-03-14 15:53:49.492153',	'2020-03-14 15:53:49.492231'),
(2,	'Maria Eduarda',	'maria.eduarda@gmail.com',	'(31)99515-8907',	'Você realiza declaração de imposto de renda?',	'2020-03-14 15:55:05.187156',	'2020-03-14 15:55:05.187200');

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
(1,	'2020-03-14 14:54:30.365273',	'1',	'Project object (1)',	1,	'[{\"added\": {}}]',	9,	1),
(2,	'2020-03-14 15:31:21.425428',	'1',	'Lorem ipsum dolor sit amet',	1,	'[{\"added\": {}}]',	8,	1),
(3,	'2020-03-14 16:19:11.807976',	'1',	'Análise de dados',	1,	'[{\"added\": {}}]',	10,	1),
(4,	'2020-03-14 16:19:44.577393',	'2',	'Automatização',	1,	'[{\"added\": {}}]',	10,	1),
(5,	'2020-03-14 16:22:30.670203',	'1',	'Como analisar dados',	1,	'[{\"added\": {}}]',	9,	1),
(6,	'2020-03-14 16:27:21.311179',	'1',	'Como analisar dados',	2,	'[{\"changed\": {\"fields\": [\"Categorie\"]}}]',	9,	1),
(7,	'2020-03-14 17:43:58.427776',	'2',	'Python Brasil 2019',	1,	'[{\"added\": {}}]',	12,	1),
(8,	'2020-03-14 18:17:24.295072',	'1',	'Python Brasil 2019',	1,	'[{\"added\": {}}]',	12,	1),
(9,	'2020-03-14 18:18:14.707869',	'2',	'PHP Conference 2020',	1,	'[{\"added\": {}}]',	12,	1),
(10,	'2020-03-14 18:24:33.705898',	'2',	'Primeiro palestra sobre a versão 7 do PHP',	1,	'[{\"added\": {}}]',	11,	1),
(11,	'2020-03-14 18:31:55.258864',	'1',	'Python Brasil 2019',	1,	'[{\"added\": {}}]',	13,	1),
(12,	'2020-03-14 18:32:09.213763',	'2',	'PHP Conference 2020',	1,	'[{\"added\": {}}]',	13,	1),
(13,	'2020-03-14 18:37:07.895409',	'1',	'Primeiro palestra sobre a versão 7 do PHP',	1,	'[{\"added\": {}}]',	14,	1),
(14,	'2020-03-14 18:56:14.374341',	'1',	'Python Brasil 2019',	1,	'[{\"added\": {}}]',	12,	1),
(15,	'2020-03-14 18:56:25.000392',	'2',	'PHP Conference 2020',	1,	'[{\"added\": {}}]',	12,	1),
(16,	'2020-03-14 18:56:41.437214',	'1',	'Preparação para a PHP Conference 2020',	1,	'[{\"added\": {}}]',	11,	1),
(17,	'2020-03-14 19:24:13.213051',	'2',	'Como analisar e extrair dados do Excel',	1,	'[{\"added\": {}}]',	11,	1),
(18,	'2020-03-15 13:59:00.120609',	'1',	'Django',	2,	'[{\"changed\": {\"fields\": [\"Background opacity\", \"Use dropdown\"]}}]',	15,	1),
(19,	'2020-03-15 14:00:33.787075',	'1',	'Django',	2,	'[{\"changed\": {\"fields\": [\"Title\", \"Background opacity\"]}}]',	15,	1),
(20,	'2020-03-15 14:01:44.101619',	'1',	'Django',	2,	'[{\"changed\": {\"fields\": [\"Active\"]}}]',	15,	1),
(21,	'2020-03-15 14:01:47.457804',	'1',	'Django',	2,	'[{\"changed\": {\"fields\": [\"Active\"]}}]',	15,	1),
(22,	'2020-03-15 14:03:49.291510',	'1',	'Principal',	2,	'[{\"changed\": {\"fields\": [\"Name\", \"Display\", \"Background color\", \"Text color\"]}}]',	15,	1),
(23,	'2020-03-15 14:04:33.685772',	'1',	'Principal',	2,	'[{\"changed\": {\"fields\": [\"Background color\"]}}]',	15,	1),
(24,	'2020-03-15 14:06:05.708345',	'1',	'Principal',	2,	'[{\"changed\": {\"fields\": [\"Background color\", \"Background color\"]}}]',	15,	1),
(25,	'2020-03-15 14:07:47.556723',	'1',	'Principal',	2,	'[{\"changed\": {\"fields\": [\"Logo\"]}}]',	15,	1),
(26,	'2020-03-15 14:08:29.587762',	'1',	'Principal',	2,	'[{\"changed\": {\"fields\": [\"Logo\"]}}]',	15,	1),
(27,	'2020-03-15 14:13:26.892425',	'4',	'USWDS',	2,	'[{\"changed\": {\"fields\": [\"Active\"]}}]',	15,	1),
(28,	'2020-03-15 14:13:27.068451',	'3',	'Foundation',	2,	'[{\"changed\": {\"fields\": [\"Active\"]}}]',	15,	1),
(29,	'2020-03-15 14:13:50.447502',	'4',	'USWDS',	2,	'[{\"changed\": {\"fields\": [\"Active\"]}}]',	15,	1),
(30,	'2020-03-15 14:13:50.601728',	'3',	'Foundation',	2,	'[{\"changed\": {\"fields\": [\"Active\"]}}]',	15,	1),
(31,	'2020-03-15 14:14:03.792205',	'4',	'USWDS',	2,	'[{\"changed\": {\"fields\": [\"Active\"]}}]',	15,	1),
(32,	'2020-03-15 14:14:03.934833',	'2',	'Bootstrap',	2,	'[{\"changed\": {\"fields\": [\"Active\"]}}]',	15,	1),
(33,	'2020-03-15 14:14:16.956297',	'3',	'Foundation',	2,	'[{\"changed\": {\"fields\": [\"Active\"]}}]',	15,	1),
(34,	'2020-03-15 14:14:17.067320',	'2',	'Bootstrap',	2,	'[{\"changed\": {\"fields\": [\"Active\"]}}]',	15,	1),
(35,	'2020-03-15 14:14:33.991963',	'4',	'USWDS',	2,	'[{\"changed\": {\"fields\": [\"Active\"]}}]',	15,	1),
(36,	'2020-03-15 14:14:34.083365',	'3',	'Foundation',	2,	'[{\"changed\": {\"fields\": [\"Active\"]}}]',	15,	1),
(37,	'2020-03-15 14:14:56.590671',	'4',	'USWDS',	2,	'[{\"changed\": {\"fields\": [\"Active\"]}}]',	15,	1),
(38,	'2020-03-15 14:14:56.735494',	'2',	'Bootstrap',	2,	'[{\"changed\": {\"fields\": [\"Active\"]}}]',	15,	1),
(39,	'2020-03-15 14:15:43.799000',	'2',	'Bootstrap',	2,	'[{\"changed\": {\"fields\": [\"Active\"]}}]',	15,	1),
(40,	'2020-03-15 14:15:44.055278',	'1',	'Principal',	2,	'[{\"changed\": {\"fields\": [\"Active\"]}}]',	15,	1),
(41,	'2020-03-15 14:15:54.414528',	'1',	'Principal',	2,	'[{\"changed\": {\"fields\": [\"Visible\"]}}]',	15,	1),
(42,	'2020-03-15 14:16:03.514052',	'1',	'Django',	2,	'[{\"changed\": {\"fields\": [\"Name\"]}}]',	15,	1);

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1,	'admin',	'logentry'),
(15,	'admin_interface',	'theme'),
(13,	'albums',	'album'),
(14,	'albums',	'photo'),
(3,	'auth',	'group'),
(2,	'auth',	'permission'),
(4,	'auth',	'user'),
(7,	'contacts',	'contact'),
(5,	'contenttypes',	'contenttype'),
(8,	'pages',	'page'),
(12,	'photos',	'album'),
(11,	'photos',	'photo'),
(10,	'projects',	'categorie'),
(9,	'projects',	'project'),
(6,	'sessions',	'session');

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1,	'contenttypes',	'0001_initial',	'2020-03-14 12:35:29.104877'),
(2,	'auth',	'0001_initial',	'2020-03-14 12:35:31.599322'),
(3,	'admin',	'0001_initial',	'2020-03-14 12:35:40.682964'),
(4,	'admin',	'0002_logentry_remove_auto_add',	'2020-03-14 12:35:42.764862'),
(5,	'admin',	'0003_logentry_add_action_flag_choices',	'2020-03-14 12:35:42.841325'),
(6,	'contenttypes',	'0002_remove_content_type_name',	'2020-03-14 12:35:44.747767'),
(7,	'auth',	'0002_alter_permission_name_max_length',	'2020-03-14 12:35:45.876007'),
(8,	'auth',	'0003_alter_user_email_max_length',	'2020-03-14 12:35:47.013985'),
(9,	'auth',	'0004_alter_user_username_opts',	'2020-03-14 12:35:47.097713'),
(10,	'auth',	'0005_alter_user_last_login_null',	'2020-03-14 12:35:47.932417'),
(11,	'auth',	'0006_require_contenttypes_0002',	'2020-03-14 12:35:47.987476'),
(12,	'auth',	'0007_alter_validators_add_error_messages',	'2020-03-14 12:35:48.060154'),
(13,	'auth',	'0008_alter_user_username_max_length',	'2020-03-14 12:35:49.135347'),
(14,	'auth',	'0009_alter_user_last_name_max_length',	'2020-03-14 12:35:50.129022'),
(15,	'auth',	'0010_alter_group_name_max_length',	'2020-03-14 12:35:51.273158'),
(16,	'auth',	'0011_update_proxy_permissions',	'2020-03-14 12:35:51.377318'),
(17,	'contacts',	'0001_initial',	'2020-03-14 12:35:51.790713'),
(20,	'sessions',	'0001_initial',	'2020-03-14 12:35:53.395168'),
(21,	'contacts',	'0002_auto_20200314_1241',	'2020-03-14 12:41:49.778584'),
(23,	'projects',	'0002_auto_20200314_1241',	'2020-03-14 12:41:49.889580'),
(24,	'contacts',	'0003_auto_20200314_1401',	'2020-03-14 14:01:09.300259'),
(26,	'projects',	'0003_auto_20200314_1401',	'2020-03-14 14:01:11.769177'),
(33,	'pages',	'0001_initial',	'2020-03-14 15:29:54.549860'),
(34,	'projects',	'0001_initial',	'2020-03-14 16:16:38.528463'),
(35,	'projects',	'0002_auto_20200314_1616',	'2020-03-14 16:16:40.629205'),
(36,	'projects',	'0003_auto_20200314_1740',	'2020-03-14 17:40:12.119775'),
(42,	'photos',	'0001_initial',	'2020-03-14 18:55:10.820298'),
(43,	'admin_interface',	'0001_initial',	'2020-03-15 13:57:01.021111'),
(44,	'admin_interface',	'0002_add_related_modal',	'2020-03-15 13:57:03.973709'),
(45,	'admin_interface',	'0003_add_logo_color',	'2020-03-15 13:57:04.776328'),
(46,	'admin_interface',	'0004_rename_title_color',	'2020-03-15 13:57:04.956400'),
(47,	'admin_interface',	'0005_add_recent_actions_visible',	'2020-03-15 13:57:05.852488'),
(48,	'admin_interface',	'0006_bytes_to_str',	'2020-03-15 13:57:06.019604'),
(49,	'admin_interface',	'0007_add_favicon',	'2020-03-15 13:57:06.911466'),
(50,	'admin_interface',	'0008_change_related_modal_background_opacity_type',	'2020-03-15 13:57:08.487356'),
(51,	'admin_interface',	'0009_add_enviroment',	'2020-03-15 13:57:10.093691'),
(52,	'admin_interface',	'0010_add_localization',	'2020-03-15 13:57:10.181107'),
(53,	'admin_interface',	'0011_add_environment_options',	'2020-03-15 13:57:11.894012'),
(54,	'admin_interface',	'0012_update_verbose_names',	'2020-03-15 13:57:11.963640'),
(55,	'admin_interface',	'0013_add_related_modal_close_button',	'2020-03-15 13:57:12.808565'),
(56,	'admin_interface',	'0014_name_unique',	'2020-03-15 13:57:13.276039'),
(57,	'admin_interface',	'0015_add_language_chooser_active',	'2020-03-15 13:57:14.282271'),
(58,	'admin_interface',	'0016_add_language_chooser_display',	'2020-03-15 13:57:15.075937');

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('w1dnl3hghtbhdahacbqoadtadp6xtx0w',	'ZGQwYWNjNTkwODdiZWVkZTdiNjRlODJlMTgwOGI4ZGEzNWYxZTM4Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDEzMTdjZTBiNjBkYjIzNGZjOGYzYzMzYjEwNWExOWZhYmI1ZjM3In0=',	'2020-03-29 14:14:28.318023');

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
(1,	'Lorem ipsum dolor sit amet',	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam suscipit augue sit amet tincidunt venenatis. Suspendisse consectetur felis metus, et rutrum arcu pellentesque eget. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Curabitur tristique dolor ac arcu dignissim bibendum. Maecenas fringilla tellus ac tempus suscipit. Mauris vel nisl sed neque auctor efficitur. Aliquam ultrices finibus eros ac condimentum. Mauris tortor metus, suscipit at tortor id, venenatis dapibus mi. Aenean id nisl felis. Sed lectus urna, aliquet eu dictum et, porta ac turpis. Donec varius ac odio ac imperdiet.\r\n\r\nIn nec arcu at nisl ornare tincidunt at ac lectus. Proin hendrerit placerat libero at bibendum. Suspendisse ullamcorper eros sed ipsum pretium, molestie sollicitudin elit eleifend. Donec maximus mauris sit amet dui feugiat, a accumsan tortor tempor. Maecenas vitae feugiat magna, quis iaculis massa. Praesent sodales facilisis risus sit amet ullamcorper. Proin sit amet lorem lorem.\r\n\r\nEtiam vehicula nibh in aliquam malesuada. Aliquam sagittis et erat non tempor. Nulla vitae lacus eros. Etiam pulvinar tortor nec nisl porta, at pulvinar nibh ullamcorper. Etiam sodales velit quis lacus convallis, ut convallis velit imperdiet. Duis sagittis euismod est, sed faucibus nisi tristique id. Nunc imperdiet orci mauris. Morbi congue mi eu nunc vehicula egestas. Aenean dapibus at justo ut imperdiet.\r\n\r\nAenean nec imperdiet neque. Vivamus lectus magna, dignissim at pretium id, porttitor eu diam. Sed non dignissim nulla. Donec eu tincidunt tortor. Duis magna leo, rutrum tempor consectetur quis, scelerisque in nisl. Sed egestas orci a ex consectetur, non venenatis arcu interdum. Nunc et eros vel dolor ultrices aliquam. Maecenas varius laoreet malesuada. Vestibulum tempor nulla eu nunc pharetra, eu feugiat enim congue. Donec faucibus vel nibh aliquet vestibulum. Phasellus enim libero, aliquet nec accumsan vitae, tristique eu nibh. Sed finibus euismod laoreet. Nullam tempus lectus tincidunt tortor bibendum, quis aliquam nibh tempor. Phasellus enim risus, tempus ac dolor id, pharetra porta quam.\r\n\r\nCurabitur convallis tellus non sagittis pharetra. Fusce vel tortor sed enim iaculis accumsan eget quis leo. Pellentesque rhoncus, dolor at lacinia iaculis, velit velit tempor arcu, a fringilla felis metus id orci. Nam accumsan metus vel risus posuere, at pretium elit ullamcorper. Aliquam ut lectus consectetur, elementum dui placerat, auctor nisi. Mauris laoreet nunc diam, vel dictum turpis eleifend ut. Nunc lacinia vitae tortor quis scelerisque. Integer a porttitor risus. Aliquam erat volutpat. Ut blandit ut neque quis ullamcorper. Nulla facilisi. Donec ac feugiat turpis. Donec euismod, ipsum ornare viverra ullamcorper, odio arcu euismod odio, id malesuada est metus vitae urna.',	'lorem-ipsum-dolor-sit-amet',	1,	'2020-03-14 15:31:21.424188',	'2020-03-14 15:31:21.424234');

DROP TABLE IF EXISTS `photos_album`;
CREATE TABLE `photos_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) NOT NULL,
  `description_short` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `photos_album_slug_de6fbed1` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `photos_album` (`id`, `name`, `description_short`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1,	'Python Brasil 2019',	'Fotos de como foi minha ida ao Python Brasil 2019',	'python-brasil-2019',	1,	'2020-03-14 18:56:14.373162',	'2020-03-14 18:56:14.373200'),
(2,	'PHP Conference 2020',	'Preparação para a PHP Conference 2020',	'php-conference-2020',	1,	'2020-03-14 18:56:24.999174',	'2020-03-14 18:56:24.999225');

DROP TABLE IF EXISTS `photos_photo`;
CREATE TABLE `photos_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(100) NOT NULL,
  `description_short` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `photos_photo_album_id_d37b4f12_fk_photos_album_id` (`album_id`),
  CONSTRAINT `photos_photo_album_id_d37b4f12_fk_photos_album_id` FOREIGN KEY (`album_id`) REFERENCES `photos_album` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `photos_photo` (`id`, `photo`, `description_short`, `status`, `created_at`, `updated_at`, `album_id`) VALUES
(1,	'photos/thumbnail_1111373_720x460_iF4ZEUM.jpg',	'Preparação para a PHP Conference 2020',	1,	'2020-03-14 18:56:41.435197',	'2020-03-14 18:56:41.435241',	2),
(2,	'photos/6-erros-comuns-gestão-de-projetos-696x390.jpg',	'Como analisar e extrair dados do Excel',	1,	'2020-03-14 19:24:13.210917',	'2020-03-14 19:24:13.210977',	2);

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
(1,	'Análise de dados',	'analise-de-dados',	1,	'2020-03-14 16:19:11.806622',	'2020-03-14 16:19:11.806683'),
(2,	'Automatização',	'automatizacao',	1,	'2020-03-14 16:19:44.576082',	'2020-03-14 16:19:44.576139');

DROP TABLE IF EXISTS `projects_project`;
CREATE TABLE `projects_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description_short` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `cover_image` varchar(100) NOT NULL,
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
(1,	'Como analisar dados',	'Como analisar e extrair dados do Excel',	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at finibus dui. Suspendisse viverra massa ac dictum cursus. Ut sagittis maximus nisi, quis vestibulum orci porta a. Pellentesque tempor scelerisque massa, at tincidunt arcu maximus in. Proin in augue posuere, vestibulum nibh non, tincidunt massa. Nullam aliquet euismod mi, ut mollis tellus mattis ut. Integer interdum nunc ex, sed sollicitudin tellus tempus a. Duis lacus tellus, venenatis et ex in, viverra semper turpis. Cras sed justo non tortor egestas pretium ut dignissim ex. Duis sapien arcu, pretium eu malesuada nec, pellentesque aliquet turpis. Nullam ultrices est eget vulputate vulputate. Proin et commodo quam. Donec ipsum magna, faucibus in fermentum eu, congue nec lacus. Proin aliquam gravida elementum.\r\n\r\nInteger mattis, lorem at facilisis bibendum, tortor felis pretium ipsum, vitae fringilla purus nunc ultricies magna. Nulla gravida augue vitae nunc rutrum varius. Morbi blandit cursus semper. Aliquam blandit tortor vel consequat rhoncus. Morbi rhoncus tempor urna, quis dictum purus scelerisque eget. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras hendrerit ex et metus mattis lacinia. Suspendisse tincidunt risus at tortor ultrices, non semper tortor rutrum. Curabitur eget tellus iaculis mi dictum gravida et non arcu. Aenean egestas feugiat purus, congue blandit est faucibus ut. Integer ultrices nunc sodales pharetra dapibus. Nam elit enim, imperdiet nec nibh a, porta interdum diam. Pellentesque vehicula consequat sodales. Vivamus fringilla quam elit, vitae sodales est ornare vitae. Curabitur volutpat lacus felis, et faucibus leo pharetra sit amet.\r\n\r\nUt facilisis dolor eu urna euismod sagittis. Ut dictum nulla eget tincidunt maximus. Nulla facilisi. Praesent sed ex vel libero ultrices rhoncus eu in tortor. Ut nibh magna, convallis nec erat ut, blandit cursus nisl. Proin eu lectus lorem. Sed erat enim, placerat a fermentum et, ullamcorper pharetra velit. Morbi justo metus, mattis at turpis varius, interdum convallis nisl. Fusce ligula lectus, blandit a blandit id, efficitur quis lacus. Mauris vehicula tellus sit amet felis semper convallis. Praesent ut mi purus. Quisque rhoncus felis mollis arcu ullamcorper, vel ultricies elit ultrices. Phasellus pharetra congue metus et sagittis. Nam id metus quis tortor dapibus imperdiet. Aliquam luctus erat dui, quis faucibus augue tempor sit amet. Cras rhoncus lectus sodales, convallis lorem sit amet, semper purus.\r\n\r\nQuisque quis luctus dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer viverra libero mauris, vel accumsan neque auctor non. Vivamus sodales, purus ac consequat pellentesque, sem magna accumsan leo, eu iaculis odio ipsum at turpis. Aenean nec sollicitudin mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam sit amet sodales ipsum. Etiam velit odio, consectetur in turpis nec, semper tincidunt lorem. Nulla suscipit in massa sit amet porta. Nam sem mi, luctus id felis dignissim, pulvinar mattis velit. Sed sed viverra dolor. Pellentesque commodo risus mi, sed rutrum neque porttitor vitae. Curabitur sit amet mollis libero. Nam lorem ante, ullamcorper sit amet enim sed, tristique fringilla turpis. Fusce sed vestibulum neque, eu efficitur augue.\r\n\r\nQuisque posuere ligula non feugiat vehicula. Vestibulum commodo ex non ante auctor, vel ullamcorper erat fringilla. Integer laoreet ligula non dui mattis ultrices. Proin fringilla augue sem, id consequat ligula euismod sed. Praesent vel elementum neque. Nulla eleifend urna a purus bibendum posuere. Mauris sit amet varius nisl. Ut posuere ex eu felis efficitur, eget sodales risus lobortis. Quisque et suscipit lorem. Mauris convallis finibus orci, sit amet feugiat felis maximus vel. Suspendisse erat quam, mollis iaculis tristique in, bibendum laoreet metus. Sed fringilla sit amet neque ac sodales. Mauris congue pulvinar consequat.',	'images/6-erros-comuns-gestão-de-projetos-696x390_c1nNqIu.jpg',	'como-analisar-dados',	1,	'2020-03-14 16:22:30.668090',	'2020-03-14 16:27:21.308804',	2);

-- 2020-03-15 14:16:44
