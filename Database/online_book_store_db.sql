-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 15 Tem 2023, 03:17:52
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `online_book_store_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(2500) NOT NULL,
  `email` varchar(255) NOT NULL,
  `last_aktivity_date` date NOT NULL,
  `reading_count` int(11) NOT NULL,
  `downloading_count` int(11) NOT NULL,
  `totat_aktivity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Mustafa Kemal Atatürk x'),
(2, 'George Orwell'),
(3, 'Stephen Hawking'),
(4, 'Michelle Obama'),
(5, 'Attilâ İlhan'),
(6, 'Orhan Pamuk'),
(7, 'Bram Stoker'),
(8, 'William Shakespeare'),
(9, 'Sabahattin Ali'),
(10, 'Charlotte Brontë'),
(11, 'Rachel Carson'),
(12, 'Paulo Coelho'),
(13, 'Fyodor Dostoevsky'),
(14, 'Martin Gilbert'),
(15, 'Steven Pinker'),
(16, 'Homer'),
(17, 'Khalil Gibran'),
(18, 'Friedrich Nietzsche'),
(19, 'Oğuz Atay'),
(20, 'Franz Kafka'),
(26, 'New author'),
(27, 'New author 2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `language_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `books`
--

INSERT INTO `books` (`id`, `title`, `author_id`, `description`, `category_id`, `cover`, `file`, `language_id`) VALUES
(1, 'Nutuk', 1, 'Nutuk, Atatürk\'ün Kurtuluş Savaşı dönemini birinci ağızdan aktardığı, Cumhuriyet tarihi açısından önemli bir eserdir. Atatürk, Nutuk ile geçmişi anlatıp aynı zamanda gelecekte olabilecek tehlikelerin önceden sezilebilmesi için alınacak derslerden bahsetmektedir.', 12, '64b1d628b93a95.32500023.jpg', '64b1d628b95260.43231641.pdf', 2),
(3, 'The Language Instinct x', 10, 'xxx...This book is suitable for readers interested in linguistics, cognitive science, and the nature of human communication. It provides a thought-provoking exploration of how language shapes our thoughts, perceptions, and social interactions, shedding light on one of humanity\'s most remarkable and unique faculties.', 31, '64b1ec8b078d37.14179575.jpg', '64b1ec8b07a3c5.19600876.pdf', 6),
(5, 'Ben Sana Mecburum', 5, 'Attilâ İlhan\'ın sevilen şiir kitabı Ben Sana Mecburum, aşk, ayrılık, özlem ve insan ilişkileri gibi temaları işler. İlhan\'ın derin duyguları ve sarsıcı diliyle yazılmış şiirleri, okuyuculara bir duygusal yolculuk sunar.', 22, '64866ff5ceaa83.44441777.jpg', '64866ff5cf7af1.32112381.pdf', 2),
(6, 'Beyaz Kale', 6, 'Orhan Pamuk\'un Nobel ödüllü romanı Beyaz Kale, Osmanlı İmparatorluğu döneminde geçen bir aşk hikayesini anlatır. Kitap, evrensel aşk temasını ve kaderin gücünü işlerken, Orhan Pamuk\'un etkileyici anlatımıyla okuyucuyu büyüler.', 5, '648673ab9b7b74.60616039.jpg', '648673ab9cb843.47023047.pdf', 2),
(7, 'Dracula', 7, 'Bram Stoker\'s famous novel Dracula tells the story of the legendary vampire Count Dracula. This classic piece creates an atmosphere of suspense, while immersing us in the terrifying and fascinating world of vampire mythology.', 14, '648673f9a6b8c5.43784687.jpeg', '648673f9a76293.67682820.pdf', 1),
(8, 'Hamlet', 8, 'Hamlet, one of William Shakespeare\'s most famous plays, brings a tragic story to the stage. This play, which depicts Prince Hamlet\'s quest for revenge and his inner reckoning, reflects the complexity and dramatic richness of human nature.', 7, '64867455941a70.84712653.jpg', '648674559569d2.53313880.pdf', 1),
(9, 'İçimizdeki Şeytan', 9, 'İçimizdeki Şeytan, Sabahattin Ali\'nin psikolojik romanıdır. Kitap, bir öğretmenin yaşadığı iç çatışmaları ve toplumsal baskılara karşı duruşunu anlatırken, insanın içindeki iyi ve kötü arasındaki mücadeleyi ele alır.', 10, '648674b521a520.78920843.jpg', '648674b5234285.54942867.pdf', 2),
(10, 'Jane Eyre', 10, 'Charlotte Brontë\'s masterpiece Jane Eyre tells the life story of an orphan girl. The novel challenges the social norms of the period while conveying the strong will of women, their quest for love and freedom.', 18, '64867520b85810.17338961.jpg', '64867520b90021.53113413.pdf', 1),
(11, 'Silent Spring', 11, 'Rachel Carson\'s groundbreaking book on environmental awareness and conservation, Silent Spring, deals with the effects of pesticides on nature and human health. The book played an important role in spreading environmental awareness.', 19, '6486756c1623b0.17889242.jpg', '6486756c16d217.41269617.pdf', 1),
(12, 'The Alchemist', 12, 'Paulo Coelho\'s famous novel The Alchemist tells the personal and spiritual journey of a young shepherd. The book is an inspiring work that highlights the power of following dreams and finding inner treasure.', 10, '648675a0a724c4.00869364.jpg', '648675a0a7d898.55208357.pdf', 1),
(13, 'The Brothers Karamazov', 13, 'Fyodor Dostoevsky\'s masterpiece The Brothers Karamazov is a novel that delves into moral conflicts and human nature. This work, which deals with universal themes such as relations between siblings, crime and punishment, and the concept of God, has an important place in the history of literature.', 10, '648675d7133333.42106266.jpg', '648675d7142eb0.49413273.pdf', 1),
(14, 'The Holocaust', 14, 'Martin Gilbert\'s comprehensive study of the Holocaust examines in detail the Holocaust that took place during Nazi Germany. The book allows us to understand this dark period based on historical documents.', 12, '6486761111ef27.05708004.jpg', '6486761112ad22.76276807.pdf', 1),
(15, 'The Language Instinct', 15, 'Steven Pinker\'s The Language Instinct is an examination of the evolution of language and the language capabilities of the human mind. The book explains how language evolves naturally and why people\'s language abilities are universal.', 17, '64867647bbf8c4.52617635.jpg', '64867647bccc81.16858465.pdf', 1),
(16, 'The Odyssey', 16, 'Homer\'s ancient epic The Odyssey tells the adventures of Odysseus in Greek mythology. This epic is an important example of ancient literature as it deals with themes such as heroism, journey and human existential pursuits.', 18, '64867689271292.41316939.jpg', '6486768927ca25.13780034.pdf', 1),
(17, 'The Prophet', 17, 'Khalil Gibran\'s famous work, The Prophet, consists of poems that contain people\'s reflections on life, love, marriage, freedom and many more. The book delves into inner wisdom and human existential experiences.', 22, '6486771b542474.48183552.jpg', '6486771b54c512.93221370.pdf', 1),
(18, 'Thus Spoke Zarathustra', 18, 'Friedrich Nietzsche\'s famous work Thus Spoke Zarathustra deals with philosophical issues such as nihilism, the superhuman, moral values ​​and human existential problems. The book is an impressive text that delves into Nietzsche\'s thoughts.', 21, '6486777b67cf21.17209892.jpg', '6486777b68bdb4.31144141.pdf', 1),
(19, 'Tutunamayanlar', 19, 'Oğuz Atay\'ın modern Türk edebiyatının önemli eserlerinden biri olan Tutunamayanlar, Batı etkisi altında sıkışmış bir bireyin varoluşsal sorgulamalarını anlatır. Roman, toplumun bireye yüklediği rolleri ve bireyin bu rollerle nasıl başa çıktığını ele alırken, edebi üslubu ve derin anlatımıyla okuyucuyu etkiler.', 10, '648677a7382d16.43423156.jpg', '648677a738dd79.82986159.pdf', 2),
(20, 'The Metamorphosis', 20, 'The story begins with Gregor Samsa, a traveling salesman, waking up one morning to find himself transformed into a giant insect. It explores themes of alienation, family relationships, and existential questioning. ', 5, '648679425e9ab1.39391675.jpg', '648679425f6866.52693412.pdf', 1),
(47, 'Crime and Punishment', 13, 'Crime and Punishment\" by Fyodor Dostoevsky is a gripping novel that explores the psychological and moral struggles of its protagonist, Rodion Raskolnikov. Set in 19th-century Russia, the story follows Raskolnikov, a poverty-stricken former student, who plans and commits a heinous crime: the murder of a pawnbroker', 10, '64b1ec18632ca9.43540775.jpg', '64b1ec186351b5.56809180.pdf', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(2, 'Biography/Autobiography x'),
(3, 'Business/Career'),
(4, 'Children\'s Books'),
(5, 'Classic Literature'),
(6, 'Cookbooks'),
(7, 'Drama and Theatre'),
(8, 'Education and Teaching'),
(9, 'Fashion and Style'),
(10, 'Fiction'),
(11, 'Health and Fitness'),
(12, 'History'),
(13, 'Hobbies and Crafts'),
(14, 'Horror and Thriller'),
(15, 'Innovation and Technology'),
(16, 'Language and Linguistics'),
(17, 'Language and Linguistics'),
(18, 'Literature '),
(19, 'Nature and Environment'),
(20, 'Pets and Supernatural Events'),
(21, 'Philosophy'),
(22, 'Poetry'),
(23, 'Politics and Social Sciences'),
(24, 'Psychology'),
(25, 'Religion and Mythology'),
(26, 'Sports and Recreation'),
(27, 'Travel'),
(28, 'Young Adult Books'),
(29, 'Humor'),
(30, 'Programming'),
(31, 'Science'),
(32, 'Science Fiction and Fantasy'),
(33, 'Sports and Recreation'),
(34, 'Travel'),
(35, 'Young Adult Books');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `languages`
--

INSERT INTO `languages` (`id`, `name`) VALUES
(1, 'English'),
(2, 'Turkish'),
(6, 'Português'),
(7, 'Español'),
(8, 'Français'),
(18, 'German');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rank` tinyint(4) NOT NULL,
  `resetCode` int(11) NOT NULL,
  `last_login` datetime NOT NULL DEFAULT current_timestamp(),
  `reading_count` int(11) NOT NULL,
  `downloading_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `rank`, `resetCode`, `last_login`, `reading_count`, `downloading_count`) VALUES
(1, 'İbrahim Halil Alpa', 'ibrahimhalilalpa21@gmail.com', '$2y$10$fx6VywmTCBTqRZ7fPWfHlujNARgyjVXAQiKoz8mOAwbnyA8zrhPWe', 1, 123456, '2023-07-15 02:41:49', 5, 10),
(2, 'Nisa Doğaner', 'nisad@hotmail.com', '$2y$10$pg6L7Ogb4GhQ9wOn3RIu1uAGDvKnPOMigs2IeBBXe805UD7Jsdsv6', 0, 13380, '2023-07-13 05:20:50', 23, 7),
(3, 'Deniz Gençtürk', 'denizgencturk@gmail.com', '$2y$10$/O7McYg8eXGIUNOXs2h//.J7C0di4zq/caiqhGHKzBZmOIaFmeVMa', 0, 80822, '2023-07-14 20:24:53', 4, 4),
(4, 'Burak Bilgin', 'burakbilgin2207@gmail.com', '$2y$10$GbsWMSZTPcXy3n1crs3YmuDDRFDwf/XhHPLQTOX/tLRYA2Jy2IDc2', 0, 62132, '2023-07-14 16:27:56', 0, 7),
(9, 'Mehmet Alpa', 'mehmet@hotmail.com', '$2y$10$UyctxETcXZAGyqL1lJ6coeajsPY4oRawQQL29dgDctbqWbtcztyz.', 0, 36819, '2023-07-14 20:45:56', 0, 0),
(10, 'Yeliz Kurt', 'yeliz2020@hotmail.com', '$2y$10$b/IM5zW/smtY5OLsojsYb.6FZkCD66yfI3QRb7jLWT48mEB.vjzLu', 0, 83449, '2023-07-14 20:48:09', 0, 0),
(11, 'Mehmet Çelik', 'mehmetcelik@hotmail.com', '$2y$10$Hh3YSABYtsnhpjl4QMfTxOiiH3j6.7CpgLuUqgCivEzQXY0HSEUdi', 0, 94935, '2023-07-14 20:52:03', 0, 0),
(13, 'Merve Doğan', 'merve1@gmail.com', '$2y$10$dK7DP0EX8NKA6ZXY1B92auryyoO.Gi8jbEzO89iifBvgTnWj9klte', 0, 90964, '2023-07-14 20:55:30', 0, 0),
(14, 'Yusuf Öksüz', 'yusuf@hotmail.com', '$2y$10$NXxeLwqZSkivZsZSvYAilu0GxmKz.0nquCGZVbFzpBgRfES7WUi6u', 0, 10675, '2023-07-14 21:05:40', 0, 0),
(15, 'Müslüm Bulut', 'bulut@hotmail.com', '$2y$10$31cHq0MVNbc/eSufFC6XQ.sCxP/9xw1at1wl5cQU3/SO3z5VOgPRu', 0, 24244, '2023-07-14 20:46:47', 0, 0),
(16, 'Özlem Kurt', 'kurtozlem@hotmail.com', '$2y$10$t4JW8l6Vr7m6fgqyTIUo4OEjVvdVpStP988RBuW.47Gw7dKkKAhAO', 0, 47584, '2023-07-14 21:52:28', 0, 0),
(17, 'Murat Delipalta', 'muratd@hotmail.com', '$2y$10$Id/K2.BIDBuEYxQmXuqVd.S5ukoXwAfbhk9TJbb8Tm.hB4oVNlNQG', 0, 45875, '2023-07-14 20:56:27', 0, 0),
(19, 'Maryam Eskandari', 'maryam@hotmail.com', '$2y$10$wX0OjVxzVw0uPabrDgvh5.3niqzq0XRo3JjJL74nZ0Yi/SpuL6N1q', 0, 123456, '2023-07-14 21:06:41', 0, 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Tablo için AUTO_INCREMENT değeri `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Tablo için AUTO_INCREMENT değeri `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
