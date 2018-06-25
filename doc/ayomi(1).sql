
CREATE DATABASE IF NOT EXISTS `ayomi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ayomi`;



CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add permission', 3, 'add_permission'),
(8, 'Can change permission', 3, 'change_permission'),
(9, 'Can delete permission', 3, 'delete_permission'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add auth group', 8, 'add_authgroup'),
(20, 'Can change auth group', 8, 'change_authgroup'),
(21, 'Can delete auth group', 8, 'delete_authgroup'),
(22, 'Can add auth group permissions', 9, 'add_authgrouppermissions'),
(23, 'Can change auth group permissions', 9, 'change_authgrouppermissions'),
(24, 'Can delete auth group permissions', 9, 'delete_authgrouppermissions'),
(25, 'Can add auth permission', 10, 'add_authpermission'),
(26, 'Can change auth permission', 10, 'change_authpermission'),
(27, 'Can delete auth permission', 10, 'delete_authpermission'),
(28, 'Can add auth user', 11, 'add_authuser'),
(29, 'Can change auth user', 11, 'change_authuser'),
(30, 'Can delete auth user', 11, 'delete_authuser'),
(31, 'Can add auth user groups', 12, 'add_authusergroups'),
(32, 'Can change auth user groups', 12, 'change_authusergroups'),
(33, 'Can delete auth user groups', 12, 'delete_authusergroups'),
(34, 'Can add auth user user permissions', 13, 'add_authuseruserpermissions'),
(35, 'Can change auth user user permissions', 13, 'change_authuseruserpermissions'),
(36, 'Can delete auth user user permissions', 13, 'delete_authuseruserpermissions'),
(37, 'Can add django admin log', 14, 'add_djangoadminlog'),
(38, 'Can change django admin log', 14, 'change_djangoadminlog'),
(39, 'Can delete django admin log', 14, 'delete_djangoadminlog'),
(40, 'Can add django content type', 15, 'add_djangocontenttype'),
(41, 'Can change django content type', 15, 'change_djangocontenttype'),
(42, 'Can delete django content type', 15, 'delete_djangocontenttype'),
(43, 'Can add django migrations', 16, 'add_djangomigrations'),
(44, 'Can change django migrations', 16, 'change_djangomigrations'),
(45, 'Can delete django migrations', 16, 'delete_djangomigrations'),
(46, 'Can add django session', 17, 'add_djangosession'),
(47, 'Can change django session', 17, 'change_djangosession'),
(48, 'Can delete django session', 17, 'delete_djangosession'),
(49, 'Can add profil', 18, 'add_profil'),
(50, 'Can change profil', 18, 'change_profil'),
(51, 'Can delete profil', 18, 'delete_profil'),
(52, 'Can add user', 7, 'add_user'),
(53, 'Can change user', 7, 'change_user'),
(54, 'Can delete user', 7, 'delete_user');


CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0',
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$CO72M3wT2hUL$MxtgPxyJXta3pn30xjX95Jmck3G9TndkccArSjHzDfY=', '2018-06-24 20:32:32.449410', 1, 'root', 'root', 'rootor', 'root@rootor.fr', 1, 1, '2018-06-22 05:23:33.000000');


CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-06-23 02:44:04.313233', '1', 'root', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]', 4, 1),
(2, '2018-06-25 06:33:18.906499', '2', 'callum.ivory', 1, '[{\"added\": {}}]', 4, 1),
(3, '2018-06-25 06:34:16.618732', '2', 'callum.ivory', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]', 4, 1),
(4, '2018-06-25 07:37:13.121507', '3', 'User object', 1, '[{\"added\": {}}]', 7, 1),
(5, '2018-06-25 07:43:45.865323', '4', '4 ', 1, '[{\"added\": {}}]', 7, 1);


CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'group'),
(3, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'ayomiapp', 'authgroup'),
(9, 'ayomiapp', 'authgrouppermissions'),
(10, 'ayomiapp', 'authpermission'),
(11, 'ayomiapp', 'authuser'),
(12, 'ayomiapp', 'authusergroups'),
(13, 'ayomiapp', 'authuseruserpermissions'),
(14, 'ayomiapp', 'djangoadminlog'),
(15, 'ayomiapp', 'djangocontenttype'),
(16, 'ayomiapp', 'djangomigrations'),
(17, 'ayomiapp', 'djangosession'),
(18, 'ayomiapp', 'profil'),
(7, 'ayomiapp', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');


CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-06-22 05:22:17.586392'),
(2, 'auth', '0001_initial', '2018-06-22 05:22:26.858711'),
(3, 'admin', '0001_initial', '2018-06-22 05:22:28.925939'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-06-22 05:22:28.984941'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-06-22 05:22:29.932543'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-06-22 05:22:30.861798'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-06-22 05:22:31.581827'),
(8, 'auth', '0004_alter_user_username_opts', '2018-06-22 05:22:31.631373'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-06-22 05:22:32.116555'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-06-22 05:22:32.202574'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-06-22 05:22:32.244536'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-06-22 05:22:33.958989'),
(13, 'sessions', '0001_initial', '2018-06-22 05:22:34.696492'),
(14, 'ayomiapp', '0001_initial', '2018-06-25 07:01:46.469400');


CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1teobjvlr16xz8g6yzwktqpi00ofhv71', 'ZmI3MjllNmQwNjc0YWQwOGVkZjdlOGYwYTcyNTA1YmJkY2QwMjhkODp7Il9hdXRoX3VzZXJfaGFzaCI6ImU5ZGYyMDJlNzhkMTE3YzI4YzJjYjE4MGI2NzA3YWQ2MGZiZTRlYjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-07-08 19:58:45.185044'),
('g9hrykix0ahhlpq8xk2twd1s2hhtwcgy', 'ZmI3MjllNmQwNjc0YWQwOGVkZjdlOGYwYTcyNTA1YmJkY2QwMjhkODp7Il9hdXRoX3VzZXJfaGFzaCI6ImU5ZGYyMDJlNzhkMTE3YzI4YzJjYjE4MGI2NzA3YWQ2MGZiZTRlYjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-07-07 02:35:21.642962'),
('gw8f3e8h88r0i04mrtvzmvex1431wiix', 'ZmI3MjllNmQwNjc0YWQwOGVkZjdlOGYwYTcyNTA1YmJkY2QwMjhkODp7Il9hdXRoX3VzZXJfaGFzaCI6ImU5ZGYyMDJlNzhkMTE3YzI4YzJjYjE4MGI2NzA3YWQ2MGZiZTRlYjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-07-08 20:32:32.526510'),
('ogvtq5mi81e3ycwwtn8rsgtul5bvudos', 'ZmI3MjllNmQwNjc0YWQwOGVkZjdlOGYwYTcyNTA1YmJkY2QwMjhkODp7Il9hdXRoX3VzZXJfaGFzaCI6ImU5ZGYyMDJlNzhkMTE3YzI4YzJjYjE4MGI2NzA3YWQ2MGZiZTRlYjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-07-06 07:35:08.730089');


CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `p_nom` varchar(70) NOT NULL,
  `p_prenom` varchar(70) NOT NULL,
  `p_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `user` (`id`, `nom`, `prenom`, `email`) VALUES
(1, 'mamadou', 'diall', 'i'),
(2, 'mamdou', 'diall', 'i2'),
(3, 'mamam', 'dd', NULL),
(5, 'marc', 'Jacobs', 'marc@jacobs.com');


ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);


ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);


ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);


ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);


ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);


ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);


ALTER TABLE `profil`
  ADD PRIMARY KEY (`p_nom`,`p_prenom`),
  ADD KEY `id` (`id`);


ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);


ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);


ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);


ALTER TABLE `profil`
  ADD CONSTRAINT `profil_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

