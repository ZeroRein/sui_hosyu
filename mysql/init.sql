CREATE TABLE `users` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` TEXT NOT NULL,
  `email` TEXT NOT NULL,
  `password` TEXT NOT NULL,
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `icon_filename` TEXT DEFAULT NULL,
  `introduction` TEXT DEFAULT NULL,
  `cover_filename` TEXT DEFAULT NULL,
  `birthday` DATE DEFAULT NULL
);
CREATE TABLE `bbs_entries` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `user_id` INT UNSIGNED NOT NULL,
  `body` TEXT NOT NULL,
  `image_filename` TEXT DEFAULT NULL,
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE `user_relationships` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `followee_user_id` INT UNSIGNED NOT NULL,
  `follower_user_id` INT UNSIGNED NOT NULL,
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users (name, email, password, icon_filename,introduction,cover_filename,birthday) VALUES 
('1', '1@1.com', 'password', NULL,NULL,NULL,NULL),
('2', '2@2.com', 'password', NULL,NULL,NULL,NULL);

INSERT INTO bbs_entries (user_id, body) VALUES 
(1, 'ユーザー1の投稿です。'),
(2, 'ユーザー2の投稿です。'),
(1, 'ユーザー1の投稿です。'),
(2, 'ユーザー2の投稿です。'),
(1, 'ユーザー1の投稿です。'),
(2, 'ユーザー2の投稿です。'),
(1, 'ユーザー1の投稿です。'),
(2, 'ユーザー2の投稿です。'),
(1, 'ユーザー1の投稿です。'),
(2, 'ユーザー2の投稿です。'),
(1, 'ユーザー1の投稿です。'),
(2, 'ユーザー2の投稿です。');

INSERT INTO user_relationships (follower_user_id, followee_user_id) VALUES (1, 2);
