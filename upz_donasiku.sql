-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2022 pada 14.37
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upz_donasiku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_type_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `village` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_fund` double DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_media` smallint(6) NOT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `campaigns`
--

INSERT INTO `campaigns` (`id`, `campaign_type_id`, `user_id`, `title`, `slug`, `description`, `province`, `district`, `sub_district`, `village`, `address`, `target_fund`, `deadline`, `status`, `featured_media`, `featured_image`, `featured_video`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 4, 3, 'Libero alias a assumenda.', 'libero-alias-a-assumenda', 'Architecto incidunt neque amet omnis nihil ut quia dignissimos. Et neque ea reiciendis magni necessitatibus. Dolorem similique cumque cum reprehenderit similique. Qui dolor illo nihil eos voluptatem ut tenetur.', 'JAWA TIMUR', 'SIDOARJO', 'SUKODONO', 'SARIROGO', '3103 Fadel Plains Apt. 552\r\nSwaniawskiview, MN 86319', 56221121, '1981-10-15', 'active', 1, 'http://127.0.0.1:8000/storage/featured_image/SlOcnJ.jpg', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:33:21'),
(2, 6, 7, 'Quia molestiae rerum at unde voluptatem sunt.', 'quia-molestiae-rerum-at-unde-voluptatem-sunt', 'Tempore veniam nulla in delectus. Sequi distinctio voluptatum autem hic consequatur. Distinctio debitis voluptatem maiores et ut sint. Nemo quasi numquam est reiciendis nihil.', 'JAWA TIMUR', 'SIDOARJO', 'SIDOARJO', 'BLURU', '38926 Kovacek Meadows\r\nNew Bret, SD 36938-7963', 13451185, '2009-05-23', 'active', 1, 'http://127.0.0.1:8000/storage/featured_image/xXlaHv.jpg', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:33:34'),
(3, 2, 21, 'Et et commodi eligendi nihil quam ullam adipisci.', 'et-et-commodi-eligendi-nihil-quam-ullam-adipisci', 'Quam ratione molestias praesentium. Explicabo autem ipsam ut porro tenetur. Soluta aliquam similique ea aliquid nesciunt.', 'JAWA TIMUR', 'SIDOARJO', 'SIDOARJO', 'BUDURAN', '897 Cecelia Parkways\r\nStantonport, HI 67022-7893', 85353040, '2000-11-13', 'active', 1, 'http://127.0.0.1:8000/storage/featured_image/fmWBOn.jpg', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:33:50'),
(4, 2, 7, 'Quia nulla quo aliquam minus eaque aut nobis illum sit.', 'quia-nulla-quo-aliquam-minus-eaque-aut-nobis-illum-sit', 'Dolore qui cumque saepe. Et porro et assumenda et deserunt.', 'JAWA TIMUR', 'SIDOARJO', 'SUKODONO', 'SARIROGO', '810 Melvin Squares\r\nLarsonland, TX 14838', 86904977, '2005-09-02', 'active', 1, 'http://127.0.0.1:8000/storage/featured_image/2WYUYr.jpg', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:34:04'),
(5, 3, 15, 'Sed soluta voluptas porro quas autem blanditiis.', 'sed-soluta-voluptas-porro-quas-autem-blanditiis', 'Iste tempore consequuntur doloremque. Qui ducimus enim nostrum quo qui voluptatem non.', 'JAWA TIMUR', 'SIDOARJO', 'SIDOARJO', 'BUDURAN', '5679 Will Points Apt. 561\nO\'Connerton, TN 15578-2839', 71861101, '2013-02-25', 'active', 1, 'https://source.unsplash.com/collection/795811/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(6, 5, 3, 'Repudiandae quod voluptates reprehenderit dolor.', 'repudiandae-quod-voluptates-reprehenderit-dolor', 'Dolores ad ipsam sequi ea. Aspernatur quia cumque cupiditate. Est et voluptatem possimus hic totam sed. Assumenda qui odio dolore molestiae.', 'JAWA TIMUR', 'SIDOARJO', 'SUKODONO', 'SUKODONO', '749 Hattie Ville Suite 869\nNorth Elmermouth, NM 62051', 77276650, '2001-05-23', 'active', 1, 'https://source.unsplash.com/collection/270622/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(7, 2, 15, 'Neque dolor est beatae est ea libero.', 'neque-dolor-est-beatae-est-ea-libero', 'Quaerat velit distinctio saepe autem quia. Incidunt unde tenetur quam odit quos id. Perspiciatis quasi velit et.', 'JAWA TIMUR', 'SIDOARJO', 'SUKODONO', 'SARIROGO', '819 Tillman Squares Apt. 659\nSouth Rettaville, DE 73020-0662', 16769477, '1983-04-19', 'active', 1, 'https://source.unsplash.com/collection/878175/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(8, 1, 9, 'Qui aut quo assumenda qui error dolorem voluptatem recusandae.', 'qui-aut-quo-assumenda-qui-error-dolorem-voluptatem-recusandae', 'Quia culpa temporibus et aut autem nobis. In autem quia et at ducimus sed. Incidunt qui nulla itaque omnis et suscipit. Sequi libero et eveniet voluptatibus quam esse est.', 'JAWA TIMUR', 'SIDOARJO', 'SUKODONO', 'SARIROGO', '402 Kozey Extensions\nLake Kamron, AR 69788', 48706981, '1999-04-09', 'active', 1, 'https://source.unsplash.com/collection/313970/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(9, 2, 6, 'Commodi cumque enim aut sed quia ullam quaerat.', 'commodi-cumque-enim-aut-sed-quia-ullam-quaerat', 'Consectetur doloribus ducimus atque perferendis eos ad harum. Cupiditate sint aut accusamus dolorem nam architecto vitae eaque. Rerum corrupti ad et quia ut fugiat dicta.', 'JAWA TIMUR', 'SIDOARJO', 'SUKODONO', 'SUKODONO', '999 Jack Alley\nLorimouth, NH 71368-7928', 84895722, '1977-05-29', 'active', 1, 'https://source.unsplash.com/collection/654346/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(10, 4, 2, 'Eius quisquam omnis laboriosam.', 'eius-quisquam-omnis-laboriosam', 'Minus nisi doloremque veritatis molestiae quo ipsam ut. Ad quia quia perferendis nemo id. Totam neque velit sit qui.', 'JAWA TIMUR', 'SIDOARJO', 'SUKODONO', 'SUKODONO', '59759 Gutmann Pine\nNorth Laurynberg, GA 36504-3416', 58764860, '2019-07-13', 'active', 1, 'https://source.unsplash.com/collection/164624/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(11, 4, 6, 'Ut vitae et culpa facere facere laboriosam.', 'ut-vitae-et-culpa-facere-facere-laboriosam', 'Quia voluptatum voluptas quas quia. Nam quis dolore quis magni iusto consectetur beatae. Illo explicabo ducimus qui optio minus.', 'JAWA TIMUR', 'SIDOARJO', 'SIDOARJO', 'BUDURAN', '65761 Jovan Landing\nNew Cesar, MI 30596-7333', 85819465, '2000-03-26', 'active', 1, 'https://source.unsplash.com/collection/573755/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(12, 6, 4, 'Atque sequi perspiciatis non hic.', 'atque-sequi-perspiciatis-non-hic', 'Velit dolor quia est sint. Nam necessitatibus at quidem voluptates rem earum hic.', 'JAWA TIMUR', 'SIDOARJO', 'SIDOARJO', 'BLURU', '36958 Emery Extensions\nWest Rosashire, IL 63700-8052', 67312177, '1985-10-06', 'active', 1, 'https://source.unsplash.com/collection/116944/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(13, 1, 9, 'Non at ut nihil excepturi commodi expedita.', 'non-at-ut-nihil-excepturi-commodi-expedita', 'Esse alias consequatur assumenda dolorem quisquam molestias mollitia. Asperiores architecto in quia rerum quia velit minus.', 'JAWA TIMUR', 'SIDOARJO', 'SUKODONO', 'SARIROGO', '721 Angus Ports Apt. 860\nNew Annetta, OK 91251', 89427842, '2018-12-07', 'active', 1, 'https://source.unsplash.com/collection/421721/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(14, 5, 18, 'Quo aut fuga voluptates voluptate earum ratione ratione iste labore.', 'quo-aut-fuga-voluptates-voluptate-earum-ratione-ratione-iste-labore', 'Ea voluptatum porro occaecati non quaerat vero alias. Optio delectus facere officia repellat sint nihil aut. Repellat in neque officia minima adipisci beatae est. Cupiditate nisi voluptas similique vero laudantium corrupti.', 'JAWA TIMUR', 'SIDOARJO', 'SUKODONO', 'SARIROGO', '4229 Kennith Falls\nPort Elijah, DC 46932-5346', 32494149, '1997-11-22', 'active', 1, 'https://source.unsplash.com/collection/873315/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(15, 1, 17, 'Esse sunt id doloremque.', 'esse-sunt-id-doloremque', 'Non aut nesciunt est voluptatibus. Aliquam eius quia rerum magni ipsa consequatur.', 'JAWA TIMUR', 'SIDOARJO', 'SIDOARJO', 'BLURU', '92523 Friesen Lakes\nLake Ova, NY 88774-4875', 84752965, '2002-06-01', 'active', 1, 'https://source.unsplash.com/collection/285303/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(16, 2, 10, 'Voluptas perspiciatis corrupti aut tempore sequi fugiat placeat sit aut.', 'voluptas-perspiciatis-corrupti-aut-tempore-sequi-fugiat-placeat-sit-aut', 'Aliquid id qui enim expedita enim deleniti. Quia molestiae qui enim deserunt aliquam quia. Inventore ratione veritatis totam voluptatibus qui aspernatur doloremque.', 'JAWA TIMUR', 'SIDOARJO', 'SUKODONO', 'SARIROGO', '577 Lueilwitz Union\nNadiamouth, MN 05774', 6885681, '1987-08-29', 'active', 1, 'https://source.unsplash.com/collection/222916/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(17, 2, 6, 'Qui rerum est eveniet rerum et ratione amet.', 'qui-rerum-est-eveniet-rerum-et-ratione-amet', 'Fuga dolor exercitationem doloremque eos. Cupiditate et id illum. Voluptates dolores nobis labore officia et.', 'JAWA TIMUR', 'SIDOARJO', 'SUKODONO', 'SARIROGO', '367 Shanny Trafficway Suite 842\nWunschtown, CT 62610-4427', 11285608, '1976-12-26', 'active', 1, 'https://source.unsplash.com/collection/113647/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(18, 1, 2, 'Quidem officia minus dolorem est in sint.', 'quidem-officia-minus-dolorem-est-in-sint', 'Et facilis eos quis non quo qui. Quis nihil pariatur possimus voluptate repudiandae ex. Nemo minus suscipit cum et.', 'JAWA TIMUR', 'SIDOARJO', 'SIDOARJO', 'BLURU', '688 Marisol Walk\nEast Deltachester, SD 72925-4314', 51779157, '1991-09-17', 'active', 1, 'https://source.unsplash.com/collection/174987/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(19, 6, 2, 'Non deserunt consequuntur nihil ex voluptatem a temporibus.', 'non-deserunt-consequuntur-nihil-ex-voluptatem-a-temporibus', 'Vitae quis neque vel unde. Aut error accusamus fugiat dolores pariatur autem. Consequatur sint asperiores corporis ea eaque quia.', 'JAWA TIMUR', 'SIDOARJO', 'SIDOARJO', 'BLURU', '20093 Vidal Ways Suite 835\nJoanniestad, AR 48828-5412', 8729273, '2019-08-31', 'active', 1, 'https://source.unsplash.com/collection/873198/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(20, 2, 15, 'Ea veritatis sed ad aliquam illo qui non.', 'ea-veritatis-sed-ad-aliquam-illo-qui-non', 'Non quia aspernatur quae corrupti itaque. Inventore labore quo omnis est sunt quam.', 'JAWA TIMUR', 'SIDOARJO', 'SUKODONO', 'SARIROGO', '87316 Effertz Key\nElinoreborough, AZ 37515', 46640968, '1989-05-10', 'active', 1, 'https://source.unsplash.com/collection/807507/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(21, 5, 9, 'Quam officia qui voluptatem nulla ut.', 'quam-officia-qui-voluptatem-nulla-ut', 'Distinctio dolore omnis inventore ut doloribus vel. Repudiandae in maiores sint autem sed.', 'JAWA TIMUR', 'SIDOARJO', 'SUKODONO', 'SARIROGO', '24769 Dooley Shores\nGrahambury, NY 24490', 90802355, '2012-09-15', 'active', 1, 'https://source.unsplash.com/collection/996010/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(22, 1, 16, 'Veritatis sapiente totam doloremque eius ipsam sed maxime nulla.', 'veritatis-sapiente-totam-doloremque-eius-ipsam-sed-maxime-nulla', 'Aut reprehenderit non nobis id praesentium quos. Ipsam aliquid libero recusandae similique tempore. Deleniti quo accusantium aliquid. Temporibus error voluptas harum perferendis similique.', 'JAWA TIMUR', 'SIDOARJO', 'SUKODONO', 'SARIROGO', '322 Keegan Parks\nLuciousfurt, AZ 38215-9276', 73522698, '1975-08-31', 'active', 1, 'https://source.unsplash.com/collection/394038/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(23, 5, 6, 'Fuga officiis cum voluptas quis doloribus itaque ut voluptas.', 'fuga-officiis-cum-voluptas-quis-doloribus-itaque-ut-voluptas', 'Corporis odio natus perspiciatis odio deleniti assumenda. Commodi iste vel at neque assumenda odit facere.', 'JAWA TIMUR', 'SIDOARJO', 'SIDOARJO', 'BUDURAN', '7263 Willis Gateway\nLake Kevonburgh, AK 63940', 97607638, '1981-04-26', 'active', 1, 'https://source.unsplash.com/collection/781979/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(24, 1, 13, 'Ratione perferendis fuga aut aut voluptatem temporibus.', 'ratione-perferendis-fuga-aut-aut-voluptatem-temporibus', 'Et deserunt dolorem ipsum. Quam qui quis ut corrupti id esse qui. Sunt autem ab reiciendis assumenda occaecati ducimus iste.', 'JAWA TIMUR', 'SIDOARJO', 'SUKODONO', 'SARIROGO', '86437 Emmett Knoll Suite 989\nEast Gregg, OH 10327-6485', 35101924, '1976-04-10', 'active', 1, 'https://source.unsplash.com/collection/688236/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(25, 1, 3, 'Temporibus quis dicta explicabo non et placeat fugit dolor.', 'temporibus-quis-dicta-explicabo-non-et-placeat-fugit-dolor', 'Rerum qui laudantium inventore aut nobis. Nesciunt fugit laborum quidem in. Aut nostrum aut adipisci voluptatem optio sint doloribus.', 'JAWA TIMUR', 'SIDOARJO', 'SIDOARJO', 'BLURU', '19019 Corwin Heights\nSporerfort, AR 24404', 99608991, '2018-09-29', 'active', 1, 'https://source.unsplash.com/collection/983172/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(26, 1, 16, 'Fugiat animi adipisci ut.', 'fugiat-animi-adipisci-ut', 'Harum qui consequuntur odit ut autem alias commodi. Voluptatem dolor repellendus voluptate dolores. Ipsam nostrum necessitatibus rem dolor.', 'JAWA TIMUR', 'SIDOARJO', 'SUKODONO', 'SARIROGO', '305 Herzog Plain Suite 953\nPort Austinville, FL 09129-3892', 74181749, '1976-04-10', 'active', 1, 'https://source.unsplash.com/collection/773484/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(27, 3, 6, 'Numquam officiis ipsa consequatur praesentium ut et animi officiis laborum.', 'numquam-officiis-ipsa-consequatur-praesentium-ut-et-animi-officiis-laborum', 'Ut aperiam rem doloribus officia. Nesciunt aut eligendi atque itaque enim vel beatae.', 'JAWA TIMUR', 'SIDOARJO', 'SIDOARJO', 'BUDURAN', '750 Moen Fort Apt. 924\nNorth Clinthaven, OH 81437-1370', 20007087, '1970-07-11', 'active', 1, 'https://source.unsplash.com/collection/429876/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(28, 1, 3, 'Atque sapiente alias nam qui aut rerum voluptas.', 'atque-sapiente-alias-nam-qui-aut-rerum-voluptas', 'Cumque sed sint eius molestiae et fuga repudiandae. Qui provident accusamus voluptas quo recusandae.', 'JAWA TIMUR', 'SIDOARJO', 'SIDOARJO', 'BLURU', '955 Luisa Spurs Suite 956\nWest Turner, AZ 69692', 58688217, '2004-06-10', 'active', 1, 'https://source.unsplash.com/collection/662961/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(29, 6, 15, 'Sed doloremque nam vero harum occaecati deleniti ex.', 'sed-doloremque-nam-vero-harum-occaecati-deleniti-ex', 'Deleniti et eaque repellendus cumque. Eius consequatur mollitia dolor aut illum et molestias. Molestiae quis rerum iusto error et.', 'JAWA TIMUR', 'SIDOARJO', 'SUKODONO', 'SUKODONO', '292 Leffler Wells\nWhitneyview, KS 25891', 8505649, '2001-05-09', 'active', 1, 'https://source.unsplash.com/collection/769743/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(30, 5, 4, 'Minus ut et sint facere dolor sed omnis qui eaque et.', 'minus-ut-et-sint-facere-dolor-sed-omnis-qui-eaque-et', 'Repudiandae dolor recusandae error consectetur. Culpa vel dolorem nisi totam quo id. Voluptatum veniam necessitatibus cumque id rerum omnis blanditiis debitis.', 'JAWA TIMUR', 'SIDOARJO', 'SUKODONO', 'SARIROGO', '67338 Dare Turnpike\nWest Leoneborough, NC 47097-7669', 33211299, '1981-02-07', 'active', 1, 'https://source.unsplash.com/collection/280394/800x600', NULL, 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `campaign_details`
--

CREATE TABLE `campaign_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `campaign_details`
--

INSERT INTO `campaign_details` (`id`, `campaign_id`, `type`, `no`, `content`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 'text', 1, 'Qui neque qui voluptatem reprehenderit ab necessitatibus. Minus iste aut non omnis nisi nihil aliquid vitae. Accusantium rerum consequatur sit. Commodi quibusdam maxime cupiditate ut. Provident doloribus explicabo nemo adipisci. Quos quos aliquam libero aut error. Omnis asperiores ut excepturi dignissimos. Consectetur ea facere id eos nemo. Dolore blanditiis omnis fuga impedit quidem molestias ipsum. Quasi non autem recusandae sed. Cumque voluptas molestiae qui exercitationem ipsum consectetur. Suscipit hic aut cum sit tenetur dignissimos. Aliquid veniam mollitia molestias. Culpa excepturi non rerum.', 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(2, 1, 'text', 2, 'Suscipit magni id eaque quae itaque voluptatem nesciunt. Sapiente ut sapiente rerum accusantium. Sint quis quibusdam qui rerum suscipit. Atque recusandae et a molestiae eligendi consequuntur reiciendis.', 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(3, 1, 'image', 3, 'https://source.unsplash.com/collection/733165/800x600', 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(4, 1, 'image', 4, 'https://source.unsplash.com/collection/441628/800x600', 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(5, 1, 'text', 5, 'Nulla consequatur omnis natus. Sapiente ut consequatur sequi sunt vel maiores dolor. Aut quo quisquam delectus aut. Ut voluptate omnis voluptatem iusto nostrum. Ipsum aliquam omnis voluptate et esse repudiandae. Vel sit in dolor quo sunt. Facere et magnam debitis.', 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(6, 1, 'image', 6, 'https://source.unsplash.com/collection/783038/800x600', 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(7, 2, 'image', 7, 'https://source.unsplash.com/collection/200603/800x600', 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(8, 2, 'text', 8, 'Repellat aut vitae numquam ea dolorum. Laboriosam est esse non nobis et quam. Et dolorem nemo et enim sit. Earum voluptas id sint praesentium perspiciatis adipisci qui eos. Laborum vel voluptas non. Excepturi blanditiis nemo eum velit numquam rerum sed omnis. Dolores delectus ipsa pariatur doloribus. Quasi quod minima laboriosam consequuntur ut deleniti.', 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(9, 2, 'text', 9, 'Odit minima quis fugiat non. Nihil dolor ut atque nihil molestiae sunt deserunt. Odio quia quo quos voluptate eum. Officia ex qui voluptatem nulla quia. Ut quia velit eius est quo quia illo. Ad pariatur consequuntur ducimus omnis quaerat veritatis accusantium. Eaque pariatur nesciunt consequatur consequuntur nesciunt ut. Consequatur voluptatem optio quaerat et ad veniam. Officiis tempore quae praesentium dolorem fugiat porro quia. Debitis eos quos sit quos ducimus expedita est. Optio quia eaque magnam voluptatem et officiis. In quia qui similique culpa. In non eius vel labore et dolore vero. Maiores non labore possimus rerum animi autem. Eaque sed est provident esse alias non quia.', 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(10, 2, 'text', 10, 'Porro sit voluptates velit numquam exercitationem dolores recusandae. Consectetur reiciendis odit atque tenetur voluptates quis. Explicabo ratione nemo non nam earum et nam dolores. Et odit vel et quasi alias nisi.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(11, 2, 'image', 11, 'https://source.unsplash.com/collection/969986/800x600', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(12, 2, 'text', 12, 'Nemo error illum accusantium excepturi molestiae a. Praesentium sint dolorum dolorem illum quis architecto. Voluptatem facere molestiae eius ipsam doloribus. Similique eos quisquam nihil maiores officia facilis et. Aut sunt nemo tenetur sunt. Quam atque enim laboriosam aut qui laudantium quaerat. Et minima nesciunt magnam et neque. Voluptate eum velit impedit qui. Aperiam repellat nulla repellendus ut aut repudiandae itaque. Quas esse doloremque aut aut alias reiciendis. Consequatur recusandae id corrupti laborum impedit molestias nam. Rem ducimus labore blanditiis voluptatem totam non cumque.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(13, 2, 'image', 13, 'https://source.unsplash.com/collection/809230/800x600', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(14, 3, 'text', 14, 'Repudiandae officiis omnis ab omnis ad ducimus cupiditate. Quam eaque commodi perspiciatis dolor incidunt. Nemo voluptatem architecto error blanditiis dolores. Voluptatem beatae ut recusandae consequatur aut. Quia quam eligendi corporis amet voluptatem quia. Et illo harum vel omnis officiis eum voluptas. Fuga voluptatem tempora culpa quia et et nisi. Veritatis quas et voluptas et vero quasi consequuntur. Provident est harum sed quisquam dolorem eum quidem quas. Rerum eos reprehenderit soluta in nesciunt hic. Fugit expedita quaerat ducimus placeat optio libero. Animi corporis sed voluptas et nulla nobis. Voluptatibus et consectetur aliquam consequuntur quo.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(15, 3, 'text', 15, 'Molestiae ut incidunt explicabo accusamus similique sequi. Consequatur est in blanditiis quo ut libero veniam.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(16, 3, 'image', 16, 'https://source.unsplash.com/collection/511829/800x600', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(17, 3, 'text', 17, 'Est magni at voluptas quia fuga commodi recusandae. Ipsa modi ut eos dolor modi sed. Aut voluptas atque occaecati. Illum velit voluptatem dolorem recusandae veritatis. Aut odit velit fuga aut vero. Laborum necessitatibus magni tempora accusamus. Quos qui laborum molestiae distinctio. Sed quaerat sint dolore doloremque id aut dolores. Beatae placeat deleniti earum et neque iusto est. Distinctio expedita doloremque quia quia maiores dolores. Eveniet dignissimos accusamus adipisci quia quas excepturi saepe est. Sunt occaecati voluptatum placeat optio quis dignissimos.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(18, 3, 'text', 18, 'Sed velit eos accusantium cumque laboriosam ut veritatis ab. Necessitatibus ut debitis dolor. Sed ipsum tempore earum nulla. Eos sunt fugiat modi ex. Qui id dolores tenetur saepe dolorem. Quibusdam nostrum a neque est ut fugiat.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(19, 3, 'image', 19, 'https://source.unsplash.com/collection/658681/800x600', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(20, 3, 'image', 20, 'https://source.unsplash.com/collection/995376/800x600', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(21, 3, 'image', 21, 'https://source.unsplash.com/collection/743152/800x600', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(22, 4, 'image', 22, 'https://source.unsplash.com/collection/488153/800x600', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(23, 4, 'text', 23, 'In laborum facere dolores quia tempore cupiditate esse et. In quia nemo magni. Dolorem aspernatur dolorem magni qui quia occaecati. Nisi debitis eum non itaque non ut et. Quidem corrupti quam repellendus corrupti autem sunt qui. Ut officia soluta sequi sed. Perferendis voluptatibus maxime ea non mollitia nulla.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(24, 4, 'image', 24, 'https://source.unsplash.com/collection/120680/800x600', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(25, 4, 'text', 25, 'Totam ducimus laboriosam consectetur aut molestiae excepturi cumque. Praesentium quia distinctio nobis consequuntur consectetur harum. Nulla quam id nesciunt in velit eius sit. Nisi aperiam libero enim quia doloribus perferendis numquam sunt. Autem consectetur fugit eos in ullam. Sit ut quo non quis incidunt aut. Expedita ratione incidunt ipsum dolore accusamus. Nostrum repellat aspernatur minus ipsam. Quia quod est dolore aliquam et aperiam et assumenda. Voluptatem ex deleniti maiores qui quae. Et illum ea numquam sed. Facilis deleniti suscipit labore ea. Ab iste consequatur laborum enim eos. Omnis explicabo et quas vero aspernatur quas rerum. Ipsam repellendus esse aut dolorem. Ratione natus nam id possimus nobis. Dicta reprehenderit reprehenderit rem rerum omnis minus. Eligendi commodi ut vitae dolorem qui aut et. Quam quasi officia culpa consequuntur aliquam vitae ratione. Eaque quis modi illum ipsa quaerat. Doloribus ratione ea ut ab. Magni sint cumque fugiat nesciunt.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(26, 4, 'image', 26, 'https://source.unsplash.com/collection/996897/800x600', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(27, 4, 'text', 27, 'Aut odio ut ea omnis. Rem atque temporibus voluptas. Pariatur dolorem dolor quam ducimus nostrum aut. Nihil aperiam voluptates impedit rerum. Ullam et consequuntur aliquam a eaque. Sunt dolores provident blanditiis et recusandae aut. Iure ut explicabo et autem quia sed recusandae. Qui commodi est iusto. Ex delectus atque repellat aut quis aut ut. Voluptatem ipsa quibusdam aut deleniti voluptates. Culpa sunt soluta sed excepturi dolores error ipsum ut. Eaque illum sit ratione. Laborum ab magnam nisi tempore aut. Ut rerum est blanditiis itaque blanditiis. Voluptas voluptates mollitia non. Iure odio voluptate reprehenderit magni.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(28, 4, 'image', 28, 'https://source.unsplash.com/collection/944265/800x600', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(29, 4, 'text', 29, 'Corporis occaecati error ullam culpa. Voluptatem quia tempora dolore nihil recusandae modi blanditiis consequuntur. Laboriosam tempora harum dolore non eaque.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(30, 4, 'text', 30, 'Fugit fugit sunt minima unde. Eligendi natus quia molestiae esse dolorem. Blanditiis voluptatibus corrupti hic expedita. Exercitationem et natus vel rerum.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(31, 5, 'image', 31, 'https://source.unsplash.com/collection/965867/800x600', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(32, 5, 'image', 32, 'https://source.unsplash.com/collection/864788/800x600', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(33, 5, 'image', 33, 'https://source.unsplash.com/collection/226408/800x600', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(34, 5, 'text', 34, 'Nesciunt neque qui autem qui qui minima iusto. Reiciendis voluptas fuga incidunt magni. Est omnis quidem sit quis sit at officia. Et nihil nesciunt cumque aut quis impedit cumque deleniti. Ut ut aut voluptatem laboriosam error. Assumenda harum consequatur provident deleniti ut non sit. Quisquam corporis doloremque quam est cumque velit. Possimus dicta amet sed sed fugit. Et nobis tempore molestiae natus quia asperiores aut. Molestiae vel unde quia. Quia quos molestiae consequuntur sit. Voluptatem sit consequatur aut temporibus. Quod dolorem qui assumenda. Quia quia vero quia doloremque minima molestiae. Ipsa consequatur error iure assumenda. Molestiae modi voluptatem veniam et iste nam qui. Nihil qui rem cupiditate omnis. Maxime saepe voluptatem qui vero quis eius corporis. Natus inventore et fugit vel rem ullam. Consectetur facilis beatae tempore veritatis. Ut voluptates dolor voluptas in. Voluptate quos voluptatum voluptatum non cum repudiandae. Asperiores et eum sunt reprehenderit. Error accusamus enim inventore temporibus maxime.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(35, 5, 'image', 35, 'https://source.unsplash.com/collection/384194/800x600', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(36, 6, 'text', 36, 'Eos modi dolorem iste et ab numquam aliquam quidem. Ad placeat nemo quod ea. Ea nobis reprehenderit tenetur est recusandae. Tenetur omnis quasi sunt et laborum deserunt libero reprehenderit.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(37, 6, 'text', 37, 'Sit sed commodi aliquam veniam. Qui nihil dolores iure ut. Debitis quam dolorem est architecto. Eaque et tempore possimus ea ea. Rerum illum excepturi accusantium ut quo. Esse id aut tempore distinctio quasi quae eum.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(38, 6, 'text', 38, 'Ad officiis dolores qui. Commodi voluptate qui dolorem voluptatem dolores dolore. Quo aliquam facere voluptates et. Vel sequi quidem odio consequatur sint. Magni magni quia id non.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(39, 6, 'text', 39, 'Aut molestiae aperiam aut id neque vel enim. Beatae voluptas ut et laudantium voluptate commodi. Rerum quia maxime quo aut modi. Omnis error odio omnis atque. Nesciunt ea doloribus eaque sed libero. Enim sapiente voluptatem ut et odio deleniti. Dolores id sit nam sit rerum quis porro. Sed sit doloremque ut. Recusandae omnis qui commodi consequatur. Quia aut est dolor et laboriosam minus. Pariatur quos illum porro occaecati voluptate magnam inventore. Sit nihil incidunt hic unde quis. Est vel dicta ullam culpa nostrum sed atque. Accusamus ea rerum sit praesentium. Nam totam officia sint. Aut asperiores qui itaque. Minus et non ut perferendis. Quia commodi ratione ut ratione reiciendis totam.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(40, 6, 'image', 40, 'https://source.unsplash.com/collection/714670/800x600', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(41, 6, 'text', 41, 'Et laudantium placeat quia quo. Quis voluptatem animi quia unde. Voluptas mollitia et quo ipsa officia vitae maiores. Quis ex quo est ducimus minima assumenda. Saepe maxime ducimus sint. Porro consectetur amet cumque nulla saepe voluptatum facilis. Doloribus voluptatibus et itaque aut sunt rem quam voluptatem. Quis ex amet deleniti nisi iusto. Asperiores in consequuntur porro beatae. Ipsa est in minus hic et sed rerum itaque. Quod quo eaque et saepe illum adipisci temporibus. At numquam rerum et maxime.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(42, 6, 'image', 42, 'https://source.unsplash.com/collection/682810/800x600', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(43, 6, 'image', 43, 'https://source.unsplash.com/collection/933243/800x600', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(44, 6, 'image', 44, 'https://source.unsplash.com/collection/239314/800x600', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(45, 6, 'image', 45, 'https://source.unsplash.com/collection/217816/800x600', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(46, 7, 'image', 46, 'https://source.unsplash.com/collection/460648/800x600', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(47, 7, 'text', 47, 'Non repellendus magni odit dolores officiis provident aliquid sequi. Quia placeat quae qui aut natus tempora odit. Voluptatem est provident quis. Animi et quis velit perferendis sit autem. Rem molestiae suscipit ea tenetur. Ipsum doloremque rerum nihil ut molestias eveniet. Et possimus alias libero veniam sint fugiat laborum. Reprehenderit voluptatem vitae dignissimos illum autem veniam dolor placeat. Corrupti dolorem illo vel ipsam minima illum. Reiciendis ipsam eius et dolores sed nisi. Dolor labore eius harum. Ut cum ipsam perspiciatis dolor fuga est. Assumenda aut quo mollitia et. Quis unde vel maxime aut error cumque et. Consequuntur voluptatem voluptatem sapiente architecto debitis unde. Consequatur repellendus eos iste perferendis autem illo sint. Quia ratione architecto distinctio. Et aut non deleniti similique iste voluptate provident occaecati. Quibusdam iusto veniam laboriosam quia modi numquam. Veritatis officiis error repellendus minima animi. Nesciunt quasi numquam sed quod reiciendis expedita quaerat. Sint quaerat illum est minus rem. Ut harum quaerat eaque ea sunt enim. Harum ea architecto maxime debitis corrupti ducimus. Culpa qui dolorum occaecati sint autem officia voluptatum iure. Quae tempora eos quia maxime tempore aut. Nam rerum qui laborum consectetur quasi. Officia sapiente excepturi libero voluptatem voluptatibus nemo.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(48, 7, 'image', 48, 'https://source.unsplash.com/collection/292929/800x600', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(49, 7, 'text', 49, 'Amet hic recusandae eos. Quia aut quis iste atque doloribus. Est similique asperiores facilis quidem. Aspernatur ut eos eveniet voluptatibus eos delectus. Cupiditate minus sunt vel aut suscipit id ea eaque. Rerum sequi voluptas id quia ab ad. Eveniet sit adipisci rem molestiae fuga. Perspiciatis dicta explicabo maxime sit. Fugit qui quidem distinctio harum corporis ut ut in. Velit esse suscipit numquam ut placeat praesentium fuga. Explicabo mollitia deleniti at. Ad nostrum at et reprehenderit. Et quo ab et totam beatae. Incidunt soluta placeat ut architecto. Fugiat labore aperiam minus. Officia itaque voluptatem et dolor quod. Ut facere voluptatem et asperiores et nulla. Est maiores voluptatem voluptatibus accusantium ex et quae dicta. Vel est voluptatem iusto quae. Et reprehenderit voluptas est inventore. Quae sunt occaecati quam mollitia omnis illo qui.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(50, 7, 'image', 50, 'https://source.unsplash.com/collection/306339/800x600', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(51, 7, 'image', 51, 'https://source.unsplash.com/collection/434178/800x600', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(52, 7, 'image', 52, 'https://source.unsplash.com/collection/615305/800x600', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(53, 8, 'text', 53, 'Quae sit non illum distinctio dolor accusantium nam aliquam. Et tempora esse vel assumenda. Et quam voluptates animi eligendi cum id. Autem iure quam cupiditate. Laboriosam distinctio et quia et iusto dolore. Voluptates odio in praesentium doloribus et ad. Velit et animi nesciunt porro. Quas id consequatur suscipit rerum quis est. Assumenda libero magnam voluptatibus cupiditate exercitationem facilis. Blanditiis earum voluptate voluptas autem beatae. Ut adipisci cum officiis maiores iusto sed omnis enim.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(54, 8, 'image', 54, 'https://source.unsplash.com/collection/522258/800x600', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(55, 8, 'text', 55, 'Culpa dicta rerum porro esse fugiat. Amet maiores et accusamus. Itaque dicta dolore adipisci soluta neque est. Recusandae omnis delectus maxime beatae. Id autem rerum maiores repellendus totam. Voluptatem expedita est dolore maxime sed. Praesentium eligendi nobis ab eos fugiat amet ratione. Non cupiditate dolore iste dicta quae inventore. In vitae quae sit eaque culpa in. Sed nihil nam incidunt praesentium. Eaque omnis et inventore ea. Quis magnam incidunt ut mollitia laborum id quidem quo. Qui explicabo nesciunt dicta alias mollitia optio distinctio. Aliquam culpa et dignissimos hic reiciendis ipsa minus porro. Ut quo velit aspernatur quia possimus iste id.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(56, 8, 'text', 56, 'Facilis porro cum dolor aut molestiae. Eius rerum voluptate eius deserunt sed qui sed magni. Ipsum velit est dolor dolore. Deserunt inventore quia harum possimus aut. Quia dolorem porro et quo dolorum blanditiis nostrum.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(57, 8, 'image', 57, 'https://source.unsplash.com/collection/616792/800x600', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(58, 8, 'text', 58, 'Quia excepturi qui dolores accusamus. Voluptatibus eligendi mollitia fugit ullam provident qui iure. Aliquid reprehenderit aut qui dolorem non sapiente praesentium quis. Reprehenderit id voluptatem asperiores quia ea. Totam magni occaecati iusto adipisci voluptates voluptatem ea. Facilis voluptates voluptas inventore quibusdam. Et aut et alias velit quas ipsa id. Sint accusamus nostrum qui animi. Adipisci nostrum ut consequuntur dolor asperiores quibusdam. Tempora est quisquam accusamus magnam. Beatae eveniet necessitatibus eius. Et voluptas deleniti nemo molestias natus minus praesentium. Itaque corporis reiciendis quidem ex aut dolore dolore. Assumenda sapiente ut fugit aperiam. Dolorem occaecati voluptatem velit. In officiis sit eos in qui excepturi. Sunt fugit porro quis dolorem. Fuga non reprehenderit quaerat eveniet. Omnis sapiente non eaque eum explicabo perspiciatis sit.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(59, 9, 'text', 59, 'Ut sequi quibusdam amet eos sit ut dolor. Quo ratione molestiae sed nesciunt nihil et et excepturi. Velit quis et aperiam magnam qui. Aut nostrum et consectetur illo dolore. Quod quas ut eum sunt eum ut. Non quo corporis soluta voluptatem. Nulla adipisci illo repudiandae nesciunt facilis. Nihil vitae quas unde veritatis ad consectetur. Aut cupiditate similique vero et magni explicabo expedita. Vel consequuntur et cupiditate est. Veritatis voluptas ducimus earum sunt. Et et veniam ducimus voluptatem aut explicabo. Pariatur ullam est repellendus voluptatem sit tempore sit officia. Dolor doloremque ut nobis eveniet. Odit ratione et quis repudiandae.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(60, 9, 'image', 60, 'https://source.unsplash.com/collection/944277/800x600', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(61, 9, 'text', 61, 'Eum ex architecto aliquid illum. Vel sint officia sequi est cum ab. Vel omnis quas totam sunt quo distinctio autem. Et molestiae sed totam dignissimos enim fugit quia. Libero nihil est quaerat. Quod omnis est qui in. Et et architecto autem illum et aliquid. Aut dolorem quo accusamus totam. Minima sit quisquam eaque facere commodi ipsum. Et in et cumque non mollitia alias aut quas.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(62, 9, 'image', 62, 'https://source.unsplash.com/collection/652487/800x600', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(63, 9, 'image', 63, 'https://source.unsplash.com/collection/696382/800x600', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(64, 9, 'text', 64, 'Asperiores amet voluptates dolorem blanditiis consequuntur reiciendis omnis. Consequuntur quae nobis distinctio blanditiis dolores nobis. Labore molestiae alias ratione dolores.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(65, 9, 'image', 65, 'https://source.unsplash.com/collection/768437/800x600', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(66, 10, 'image', 66, 'https://source.unsplash.com/collection/658151/800x600', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(67, 10, 'text', 67, 'Mollitia incidunt numquam commodi laboriosam culpa voluptatem exercitationem. Repudiandae fugit corrupti nesciunt iusto ut. Debitis eveniet magni amet atque facere est. Odit vero error et. Ut rerum ipsa alias possimus distinctio. Et voluptatem in sed officia et et aut. Possimus sunt modi nisi et sapiente. Perferendis aut alias minima ipsum officia velit. Ad incidunt excepturi voluptates iusto.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(68, 10, 'text', 68, 'Est non et illum eos ea fugiat. Iusto ipsa et aliquid dolorum neque. Dolores omnis deleniti non inventore. Repudiandae aliquid vel quasi porro. Dolor ea et odio debitis esse autem. Ducimus maxime repellendus et dolores voluptatem. In rerum maiores asperiores provident nemo fuga aut. Dolor perspiciatis hic libero nihil. Quos eum saepe nostrum et molestiae. Ad dolor dolores dignissimos pariatur deleniti ea. Dolor nostrum delectus inventore provident molestias mollitia quidem fuga. Omnis temporibus et beatae repellendus ea in. Totam ipsam repudiandae eligendi laborum sunt.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(69, 10, 'image', 69, 'https://source.unsplash.com/collection/969617/800x600', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(70, 10, 'image', 70, 'https://source.unsplash.com/collection/857276/800x600', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(71, 11, 'image', 71, 'https://source.unsplash.com/collection/455216/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(72, 11, 'image', 72, 'https://source.unsplash.com/collection/427394/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(73, 11, 'text', 73, 'Consequatur nobis sit quas aperiam quia enim. Numquam non reprehenderit vitae exercitationem neque. Qui delectus molestiae aut. Sed quae fugiat sit non atque iusto pariatur. Pariatur provident vel repellendus eveniet libero. Laudantium iusto qui laborum quos voluptatibus ut. Ut perspiciatis ab fugiat qui alias sed soluta. Laborum ducimus vel saepe dolore facilis tempora quo velit. Quos ut sunt eligendi cum ipsum quaerat illum. Nostrum repellat in consequatur. Vero porro vero cum magnam corrupti. Amet eum optio consequuntur consequatur neque omnis.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(74, 11, 'text', 74, 'Aliquid quo quisquam qui repudiandae voluptate blanditiis consectetur. Sit accusantium ratione sit porro quae ea. Illo quis id odio ipsa reiciendis aut. Est voluptatibus praesentium cupiditate placeat laborum temporibus aut. Qui quia architecto quia vel. Quibusdam sequi provident rerum omnis. Nesciunt voluptatem laudantium inventore nisi. Voluptates quia non provident rem. Accusantium unde consequuntur qui quis deleniti. Voluptatem expedita dolor tenetur reiciendis neque. Rerum ducimus cum eius vero. Voluptatem ut ut ullam ut. Et quas ea recusandae quas ipsa aliquid. Consectetur enim et explicabo tempore. Magnam deleniti placeat est consequuntur eos est magni. Minima incidunt ut atque vero illum. Odio ea expedita enim voluptate. Cumque quo eos voluptatem esse dolorem velit voluptate. Veniam eos earum ipsam id. Id ullam reiciendis aut eveniet.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(75, 11, 'image', 75, 'https://source.unsplash.com/collection/296290/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(76, 11, 'text', 76, 'Dolor ipsa nemo ut sapiente quidem. Atque voluptatibus omnis natus est delectus. Sapiente aut temporibus ut est. Aliquid ab qui maxime modi enim error. Tempora fugit est aut impedit libero quaerat sit. Voluptatem exercitationem beatae dolorum ex voluptas. Dolores voluptatem possimus et ea. Et qui amet non iusto quos itaque corrupti. Nihil repellat quos dolorem illum voluptas odio error dolorem.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(77, 11, 'text', 77, 'Alias perspiciatis qui aut rem itaque. Non in qui consequatur vel quis. Quisquam ratione ipsam dolorum pariatur eligendi et est. Est velit exercitationem quidem molestias ad laboriosam laborum. Sint natus nulla voluptas magnam cumque magnam dignissimos. Quis molestiae soluta quo aperiam aspernatur optio. Voluptas voluptas voluptatem doloremque adipisci provident quia. Non quos voluptas voluptatibus deleniti. Ut facere minima delectus ducimus eligendi. Sunt sint dolores earum necessitatibus sapiente. Accusamus laborum id enim et. Error dolores enim voluptatem rem. Pariatur ipsa et est qui doloribus. Quisquam ut minima sapiente et. Voluptatum ut sed nihil sit voluptas aut omnis. Dolorum optio necessitatibus consequatur quidem porro consectetur assumenda aut. Rem alias ut magnam et. Numquam reprehenderit nihil aliquid nobis incidunt. Deserunt rerum dignissimos quia voluptatem occaecati est. Dolor error aspernatur eos harum. Non in quia aut ad laudantium animi.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(78, 11, 'text', 78, 'Doloribus voluptatem dolor numquam voluptatem eum voluptatum voluptatem dolores. Et et maiores quidem voluptates. Excepturi consectetur asperiores expedita molestias fuga est quo quaerat. Atque modi repellat facere id qui. Quas consequatur quisquam consequatur fuga sapiente. Nulla neque magnam eos nobis fugiat culpa. Rerum nesciunt accusamus aut aut vel voluptas nihil. Minima vel recusandae fugit accusantium quasi. Cumque praesentium omnis ratione quae. Quidem sint porro qui voluptate non. Sed velit eius quaerat non aliquid pariatur. Optio illo error aspernatur sint. Quia harum accusamus consequatur. Ut maiores illum minus. Eum quidem eum neque et minus sint. Eos aut tempora et excepturi asperiores voluptatibus fugiat in. Nisi pariatur asperiores et maiores ex a. Ut similique quia quos minima atque asperiores. Dolor ab perferendis maiores. Aliquid et assumenda delectus ut doloremque.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(79, 12, 'text', 79, 'Blanditiis distinctio aut maiores eius aut molestias delectus. Dolores magni et sint quis voluptatum sit. Quis possimus eum iure sit aut. Magnam consectetur quos est cumque. Veniam expedita quas et tempora nobis placeat. Ut et ea consequatur facilis magni maxime autem. Quia aut saepe aut rerum modi tempora animi. Aliquid consectetur et qui iste. Libero nihil impedit rem aut commodi consequatur possimus est. Rerum reiciendis quam aspernatur autem voluptas dignissimos. Totam aliquam aperiam quod eligendi sit. Libero itaque inventore sapiente et. Molestiae culpa et dolores sit harum aut.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(80, 12, 'text', 80, 'In accusantium est cum. Adipisci nulla quia quia porro fugit consectetur. Commodi est vel quo assumenda molestiae dolore. Ipsum molestiae aspernatur voluptatem suscipit sit. Cupiditate dolores inventore aut similique autem. Nihil sapiente eveniet similique illum. Ut corrupti qui consequatur. Ut quidem consectetur quia et et.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(81, 12, 'text', 81, 'Magni itaque sed possimus amet. Occaecati quibusdam necessitatibus odit culpa. Ut assumenda esse fuga. Nihil ut nihil rerum eos tempora reiciendis. Reprehenderit laborum ipsa quia sapiente suscipit ex. Veniam aut qui ut minima aut. Et aut temporibus et voluptatem. Harum ipsa reiciendis nam optio. Sit consectetur deleniti unde accusamus minima. Et labore eos eligendi.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(82, 12, 'text', 82, 'Facere aspernatur quis doloremque et. Dolorum voluptas dolore modi delectus delectus. Aut ex numquam quis temporibus omnis unde quidem maiores. Saepe sed dolor fugiat laudantium molestiae odio et assumenda. Iure debitis id consequatur ut. Consequatur voluptatem sint est non optio. Voluptas voluptas voluptatem ad nihil. A ut porro corporis aut illo at.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(83, 12, 'text', 83, 'Aut ut unde dolor et aliquid animi ullam. Blanditiis dolorem autem quam necessitatibus error aut vitae. Earum aut qui modi ab voluptatem odio aut debitis. Non et qui voluptates aut molestiae non. Necessitatibus corporis voluptas laborum qui dolores sequi. Debitis totam explicabo eum accusantium ut incidunt. Sit earum esse qui eveniet. Sit quod cumque perspiciatis blanditiis et sequi perferendis. Expedita voluptate consequuntur debitis et quisquam. Impedit molestias perferendis distinctio sunt dolores vel reiciendis. Provident voluptatem nulla nulla recusandae. Laboriosam aut eius ab sit quia beatae debitis. Earum sequi id at qui illo nostrum ut.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(84, 12, 'image', 84, 'https://source.unsplash.com/collection/481414/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(85, 12, 'text', 85, 'Similique quasi aut eligendi veritatis ipsam magnam fugiat. Assumenda tenetur ipsam sed cupiditate et corrupti nihil. Qui dicta eum non qui et. Beatae rem reiciendis modi sint eius placeat. Tempora sed eum consequatur libero quidem qui. Velit quo totam consequatur et. Rerum corporis et perspiciatis autem adipisci iste commodi. Illum tempora minima et quasi dignissimos optio omnis perferendis. Quo rem ut doloribus omnis aut modi amet. Culpa sit omnis aliquid et omnis aut. Sint qui inventore consectetur. Rem et id quidem non illum voluptatem. Autem in et porro eveniet. Dolore ex molestiae debitis placeat velit. Eveniet eos eos consectetur quia distinctio provident consectetur. Aut facilis distinctio voluptatem tempora dolores deleniti. Vero cumque atque id assumenda quod. Iste nulla ratione non est aut autem corrupti. Hic maxime dolore tempore. Quibusdam maxime molestiae consequatur et. Sit eos ut illo velit incidunt cupiditate.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(86, 13, 'text', 86, 'Maxime iure voluptatem aliquid quia consectetur facere eligendi. Ut molestiae et asperiores ut suscipit. Cupiditate sunt ratione ducimus quia similique ut aliquid. Vitae dignissimos voluptatem animi qui suscipit praesentium. Sit pariatur ipsa laborum. Excepturi fuga sunt et deserunt tenetur. Libero voluptates occaecati pariatur ut aperiam aspernatur eligendi. Quos aut impedit porro. Sit molestiae nesciunt voluptas dignissimos numquam. Doloribus assumenda quis vero soluta quod iure quibusdam voluptatem. Voluptatem autem magnam ut. Ducimus dicta ipsa culpa sed. Pariatur voluptates amet exercitationem qui. Eos facilis quibusdam voluptatem beatae magni. Qui ex ducimus provident blanditiis.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(87, 13, 'text', 87, 'Qui excepturi illo quibusdam aliquam magnam et. Facere culpa rem praesentium dolorem. Tenetur est pariatur corrupti omnis corporis quis. Labore aut est cupiditate autem ducimus sunt. Ea non veritatis eum sed eius facere commodi. Tenetur iure fuga et similique pariatur. Veritatis architecto culpa at fugit odit aut ut explicabo. Non doloremque amet in iure quaerat. Labore occaecati sed sit ut non sint repudiandae. Laborum in tempore ex. Enim quidem ut non saepe aut unde dolores est.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(88, 13, 'image', 88, 'https://source.unsplash.com/collection/155523/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(89, 13, 'image', 89, 'https://source.unsplash.com/collection/534374/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(90, 13, 'image', 90, 'https://source.unsplash.com/collection/288546/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(91, 13, 'text', 91, 'Aperiam quia similique illum. Eos et laboriosam praesentium dolor ea corrupti eum veniam. Est totam facilis labore eaque fugit saepe incidunt. Reiciendis consectetur sed quas consectetur iusto minima perspiciatis. Dolorem atque sunt quis modi atque adipisci. Ut nihil molestiae libero eveniet minima. Quas illum commodi ut. Qui ducimus libero sapiente quibusdam aliquam. Sit aut temporibus expedita atque sint qui. Quis explicabo modi rem facilis. Dolor expedita amet sed alias modi qui a.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(92, 14, 'text', 92, 'Aperiam sed velit est unde dolorum. Assumenda corporis voluptatem asperiores velit sequi cumque et doloribus. Cupiditate ipsam omnis porro eos. Natus non non totam ut aperiam amet. Earum nesciunt ad est ipsa ad eius voluptatem. Non eos cumque cum cum dolore consequatur amet tempora. Optio in ut quia iure excepturi odio magnam. Consequatur et deserunt ut quaerat neque neque. Nesciunt fugiat voluptas rem autem perspiciatis praesentium in commodi. Vel aspernatur in optio qui ipsum. Molestiae necessitatibus recusandae eos accusantium voluptatibus voluptas praesentium.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(93, 14, 'text', 93, 'Veniam molestias omnis vel qui unde consectetur magnam iusto. Corrupti aut doloremque occaecati est. Recusandae consequatur maiores reiciendis at. Molestiae qui eos reiciendis dolor aut possimus. Possimus at et et expedita voluptatem voluptates voluptatibus. Quod aut autem quod id. Eum qui esse expedita fuga. At quod corporis delectus. Aut et dolor natus dolore. Et accusantium repudiandae excepturi corporis. Temporibus quod mollitia ea tempore dolore doloribus. Nam quo vel perferendis ullam. Nam est blanditiis nobis ipsam perferendis.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(94, 14, 'image', 94, 'https://source.unsplash.com/collection/212384/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(95, 14, 'image', 95, 'https://source.unsplash.com/collection/878576/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(96, 14, 'image', 96, 'https://source.unsplash.com/collection/527598/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(97, 14, 'image', 97, 'https://source.unsplash.com/collection/871342/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(98, 14, 'text', 98, 'Sunt et doloribus accusamus corporis rem unde. Quasi vitae saepe ab ullam consequatur maxime animi. Cupiditate itaque nihil nisi aperiam omnis beatae quia. Fugit soluta inventore dolores eius earum. Autem doloribus iure distinctio accusantium. Numquam deserunt qui et laborum deserunt in. Recusandae dolorem modi reprehenderit. Distinctio voluptas in sit voluptatem. Sit voluptatibus et officia libero ut consequatur. Nobis ea assumenda officiis et odio.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(99, 14, 'text', 99, 'Tempora consectetur aut sed. Dolor optio maiores qui tempora inventore nostrum rem. Earum et soluta quos voluptas ipsa perferendis ipsum. Qui iste dolor non cumque repellat reiciendis. Explicabo placeat incidunt impedit ut vel architecto. Eius distinctio dignissimos quod laudantium rerum. Nostrum dolores minima molestiae non minus ratione. Quae quis doloribus voluptas hic. Deleniti eum quia aliquam asperiores quia officiis amet laborum. Veritatis non corporis provident. Voluptate ut est odit optio sint veniam. Voluptas et ipsum fugit. Nisi ea accusantium et magnam quis dolor. A non a dolorem. Non et accusamus dolor nemo sed. Fuga officia et aut hic ut sed libero. Suscipit tenetur voluptates nihil. Quibusdam iste tenetur minima dolorem vel. Esse ea quaerat quia alias earum quod pariatur. Distinctio nostrum voluptas explicabo. Neque voluptatibus sapiente et officiis eos officiis voluptates. Minus eum et autem libero est. Nulla itaque et deleniti. Sint perferendis et cupiditate porro sint ad nihil natus. Qui inventore quos voluptatum autem est aut. Et tempora qui cupiditate.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(100, 14, 'text', 100, 'Explicabo vel ea nihil voluptatem sequi eveniet eos. Modi commodi sit voluptatem id quia similique tenetur. Cumque at in voluptates deleniti quod et. Doloribus debitis accusantium dolorum earum est. Quas debitis et dolorum veniam. Iure dolorem mollitia rerum ea doloribus. Placeat esse est eos dolorum a nesciunt sequi.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(101, 15, 'image', 101, 'https://source.unsplash.com/collection/579639/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(102, 15, 'image', 102, 'https://source.unsplash.com/collection/497935/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(103, 15, 'image', 103, 'https://source.unsplash.com/collection/263818/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(104, 15, 'image', 104, 'https://source.unsplash.com/collection/804771/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(105, 15, 'image', 105, 'https://source.unsplash.com/collection/840761/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(106, 15, 'image', 106, 'https://source.unsplash.com/collection/983540/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(107, 15, 'text', 107, 'Voluptatem magnam nesciunt error. Sed voluptas at distinctio nam vero. Veritatis dolor doloribus voluptatem libero ducimus. Ipsa non odit numquam ipsam animi qui. Sapiente et aut quo a quo expedita qui. Nihil similique sequi est ut magni. Nihil laboriosam nihil repudiandae qui repellat aliquid. Aspernatur vel ea necessitatibus facilis. Repellat velit doloribus consequatur et minima sit atque. Id nulla repudiandae numquam. Autem dolorem est eligendi autem est minus. Error sit excepturi ad perspiciatis fugiat natus. Et eum magni hic.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(108, 16, 'text', 108, 'Qui saepe et qui sed. Iusto ratione illum modi ut ut atque. Ab est at deserunt non voluptate non. Perferendis aliquam ad itaque ipsam aliquid dolores. Dolor fugiat soluta et nulla. Saepe excepturi laborum qui.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(109, 16, 'text', 109, 'Reiciendis quidem eaque aut. Ipsa tenetur quod reiciendis qui eligendi et. Accusantium veritatis suscipit rerum minus rerum. Eligendi et reprehenderit non in mollitia. At quae veritatis aliquid porro fugiat et dolore. Praesentium eaque similique hic minima ut unde. Occaecati pariatur itaque nostrum quaerat culpa est. Cupiditate veritatis repellendus velit nam error. Iste veniam qui consequatur magni impedit. Autem placeat velit ea exercitationem quidem labore eaque. Eius est alias ut. Iusto sint nesciunt sunt ab rerum. Temporibus voluptatum modi dolor labore est vel porro. Ut sed fugiat corporis modi. Voluptas ut sint vel est incidunt.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(110, 16, 'text', 110, 'Eius nam aut nobis excepturi. Aperiam nihil et et facilis. Est reiciendis dolores ut similique. Doloremque molestiae maxime voluptas.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(111, 16, 'text', 111, 'Officia consequuntur voluptatem quis quis corrupti ipsa. Rerum perspiciatis dolores itaque rem eum. Fugit consequatur nisi atque harum ullam natus et. Ea ad officiis et numquam fugit. In rerum voluptas ipsa laboriosam aliquid perspiciatis praesentium. Praesentium fugit rerum amet sed. Minus unde enim nobis qui et. Harum asperiores eligendi mollitia sunt.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(112, 16, 'text', 112, 'Est quisquam fuga odit vitae a ipsum. Amet molestiae laborum aperiam labore. Saepe deleniti nesciunt sunt eveniet voluptatem. Autem sapiente quia culpa aut laboriosam consequatur. Consequatur voluptatem non ut molestiae debitis. Quaerat quisquam eaque qui labore vel ut. Sed ut quos non eligendi. Doloribus aut vero inventore voluptas et.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(113, 16, 'text', 113, 'Tempora eum cumque dolores et. Saepe ut aliquam velit ducimus adipisci debitis. Eaque quibusdam corrupti velit voluptates. Esse qui magnam numquam id facere sed dolores aut. Voluptatem aliquam et illo ut. Officia dolorem tempore ut. Eum magni magni iure voluptas impedit sunt veniam. Facere ea quibusdam exercitationem quo. Non et quam vel quaerat dolorem non. Saepe tempora vero deserunt rerum est velit.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(114, 16, 'image', 114, 'https://source.unsplash.com/collection/792945/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(115, 17, 'image', 115, 'https://source.unsplash.com/collection/763174/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(116, 17, 'text', 116, 'Laboriosam unde accusantium vel assumenda quam. Velit reiciendis aperiam asperiores maxime. Voluptatem temporibus facere vitae et molestiae voluptatem reiciendis. Consectetur velit non vero omnis temporibus mollitia rerum. Cumque recusandae perferendis voluptas. Maxime cum nulla iusto hic maxime rerum.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(117, 17, 'image', 117, 'https://source.unsplash.com/collection/751949/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(118, 17, 'text', 118, 'Dolores officia enim quod labore aliquam. Perferendis et dolores quia qui officiis tenetur. Ullam quos sapiente et et aspernatur. Unde corrupti ut doloremque officiis officiis. Ducimus magnam unde laborum sit accusamus. Alias vel eum voluptas dolorem. Et et officia unde est ducimus minus. Officia qui aspernatur molestias consequatur deserunt incidunt quo. Blanditiis vero numquam quia molestiae. Ut adipisci ipsam earum soluta. Magni et velit velit. Modi sit voluptas corrupti fuga veritatis quaerat. Quod vel numquam eveniet doloribus et facere dolorem et. Dicta fugit debitis et vel assumenda. Voluptatem in esse quia dicta dolores. A officia nulla quis quis. Non iure omnis ipsum quis vel est.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(119, 17, 'image', 119, 'https://source.unsplash.com/collection/851540/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(120, 17, 'text', 120, 'Voluptas aut ducimus et non. Excepturi quae et itaque ipsa nesciunt sit. Aliquam voluptatibus molestiae nesciunt corrupti accusantium ut unde. Beatae nobis et voluptate et. Vel ut quos quo fugit. Et voluptatum aspernatur velit sed dolore earum aliquam est. Blanditiis rem ullam minus sed vel. Vel officia ratione impedit. Voluptate eum numquam itaque possimus. Expedita voluptatem aliquam quo minima culpa voluptatibus. Optio quasi et adipisci natus voluptatem at. Autem architecto vel beatae error sed autem ullam qui. Qui sint iste et quis dicta autem animi. Quo ea voluptatum fugit enim est.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(121, 17, 'text', 121, 'Aspernatur quis dolores porro nesciunt dolore. Qui illum ullam itaque. Omnis animi possimus quidem autem distinctio iusto. Nihil quasi fugiat cupiditate mollitia. Iure tempore id sed quis in sunt culpa exercitationem. Autem maiores sed sunt et quibusdam eos itaque voluptas. Incidunt quidem ratione quam labore qui repudiandae. Asperiores hic aliquam magnam. Tempora aspernatur eligendi nemo qui consequatur et. Vel explicabo necessitatibus quos pariatur ea repudiandae consectetur harum. Occaecati debitis officia mollitia natus itaque quaerat earum. Occaecati quo praesentium et distinctio totam suscipit et. Beatae blanditiis delectus voluptatum rerum et blanditiis. Laborum enim consectetur maxime officiis labore quis dolor. Magnam et necessitatibus minima qui laboriosam pariatur. Voluptatem quod magni ut quam veritatis. Culpa delectus exercitationem dolorum quibusdam quia.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(122, 17, 'text', 122, 'Sapiente tempore ut sunt. Praesentium rem iure sequi sint alias tenetur tenetur. Error iusto nulla dolorem at nihil et. Vel sapiente ipsa accusantium voluptas autem. Itaque praesentium cum deserunt sed alias rerum. Minus in fugiat quam possimus tempore repellat et quidem. Praesentium qui minus ducimus vel similique. Fugiat explicabo qui quia numquam est nisi. Similique nulla maiores alias commodi quo ratione occaecati. Minima voluptas debitis et odit quaerat. Distinctio qui commodi id aliquam nisi rerum modi. Labore velit et error. Ut ipsum voluptas sint sint. Consectetur ipsum ullam quos sint voluptas consequatur laudantium excepturi. Provident perspiciatis et quisquam. Necessitatibus deleniti error voluptas facere soluta voluptatum voluptatem. Minima nulla aut reprehenderit unde qui iste. Velit non officiis fugiat ea ipsa laboriosam et debitis.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(123, 17, 'image', 123, 'https://source.unsplash.com/collection/570052/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(124, 18, 'text', 124, 'Est quia eaque voluptas omnis voluptatem tempore occaecati odit. Quis eum dolorem aliquid dolores nostrum. Sit qui eaque veniam provident qui sint laboriosam. Esse eligendi dolores est enim. Accusantium veniam perspiciatis porro excepturi. Voluptatum mollitia et delectus iure est. Velit ipsa aut quos nihil qui dolorem. Ut eos qui ratione aut adipisci. Est perspiciatis est modi eum aut. Eum sint neque excepturi reprehenderit veniam. Deleniti perferendis incidunt quidem atque quibusdam eveniet ut. Magni eveniet ea quia numquam. Sapiente commodi dolorum molestias assumenda cupiditate atque quia. Tempore nemo dolorum necessitatibus fuga praesentium magnam sed. Ex cum deserunt aut voluptate. Itaque maxime expedita ut labore maiores.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(125, 18, 'image', 125, 'https://source.unsplash.com/collection/791708/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(126, 18, 'text', 126, 'Excepturi autem aut deserunt non quod et. Ab fugiat suscipit voluptatem voluptas a dolore est. Esse pariatur dolor perspiciatis dolor error id repellendus. Labore autem ex sunt et consequuntur. Est quasi molestiae porro hic qui. Magnam id voluptatem id officiis aut. Veniam quia ad et laboriosam sed molestiae vero. Vel fugiat nemo sit cum nobis. Eaque voluptatibus commodi impedit qui quia ad aut. Soluta fugiat inventore iusto placeat commodi impedit. Quod in corporis aperiam voluptas aut porro consequatur in.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(127, 18, 'image', 127, 'https://source.unsplash.com/collection/857556/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(128, 18, 'image', 128, 'https://source.unsplash.com/collection/372301/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(129, 19, 'image', 129, 'https://source.unsplash.com/collection/788011/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(130, 19, 'text', 130, 'Soluta velit eligendi exercitationem iusto et rerum recusandae. Et porro sequi aliquid quos. Repellat rem quis itaque aperiam. Recusandae labore velit ea consectetur atque accusamus. Similique nisi sint natus sed vel sed. Dolores a quo consectetur laboriosam. Illo itaque est blanditiis eius reprehenderit. Magni est laboriosam quia aut maiores.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(131, 19, 'image', 131, 'https://source.unsplash.com/collection/187615/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(132, 19, 'image', 132, 'https://source.unsplash.com/collection/616839/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(133, 19, 'image', 133, 'https://source.unsplash.com/collection/261750/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(134, 19, 'text', 134, 'Dolor fuga rerum consectetur deserunt et dolorem tempora. Reprehenderit et voluptatem sequi quisquam. Expedita voluptatem impedit velit natus assumenda nobis. Temporibus ad minima ducimus sit. Cum iste magni ipsa exercitationem exercitationem unde. Amet autem beatae perferendis velit consequuntur quia. Et rerum sint fugit vitae voluptatibus ut illum. Omnis repudiandae mollitia recusandae id optio facilis non voluptas. Illo beatae voluptas numquam recusandae beatae cupiditate.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(135, 19, 'text', 135, 'Reiciendis quos veniam vel deserunt aliquam. Exercitationem sit libero ad maiores. Et ullam assumenda explicabo incidunt. Ipsam similique aut ducimus doloremque. Deserunt nisi voluptatem sed maxime cupiditate libero temporibus.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(136, 19, 'image', 136, 'https://source.unsplash.com/collection/833322/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(137, 20, 'image', 137, 'https://source.unsplash.com/collection/207433/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11');
INSERT INTO `campaign_details` (`id`, `campaign_id`, `type`, `no`, `content`, `is_deleted`, `created_at`, `updated_at`) VALUES
(138, 20, 'image', 138, 'https://source.unsplash.com/collection/670722/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(139, 20, 'text', 139, 'Voluptas facilis sequi sit dolore error delectus veritatis. Error et necessitatibus qui necessitatibus eos. Adipisci expedita doloremque dolore deleniti qui. Dolorem voluptatem voluptatem dolores ipsum impedit hic. Incidunt iure eum et qui illum id. Facere quae dolores id rerum consequatur enim. Quae vel iste culpa qui nobis aut animi. Ut animi et nobis quo non et. Voluptatum doloribus tempore et ut neque eaque. Sint perspiciatis numquam dolorem quis et minus. Placeat rerum dolorum iusto labore omnis possimus. Quas corporis doloremque non vel quia eum neque.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(140, 20, 'image', 140, 'https://source.unsplash.com/collection/155859/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(141, 20, 'text', 141, 'Aut quis similique laudantium id et eveniet. Voluptate consequatur totam cum quos eaque. Nihil fugiat molestias vitae velit. At nostrum facere ratione omnis necessitatibus minus nemo. Ipsum alias et provident accusantium nihil sunt nisi. Recusandae quis deleniti quam sunt aut. Doloremque quia corporis asperiores voluptatem omnis eligendi praesentium. Saepe quo quia ut et. Enim quo repellat incidunt ab illum qui. Ipsum qui sunt nam recusandae rerum temporibus et. Et eligendi ducimus fugiat consequatur. Dolorem rerum non voluptates nostrum perferendis quis est facilis. Ut libero perferendis accusantium repellendus cupiditate voluptas. Illum quia dolore debitis ut nihil incidunt quis. Rerum voluptatibus ratione alias delectus et enim. Fugit fugit explicabo provident provident sunt soluta est. Porro mollitia quia sint aut. Natus modi laudantium voluptatem corporis eum. Voluptatem neque vel non sint assumenda. Est quasi natus aut qui. Molestiae et placeat earum magni impedit. Qui mollitia tenetur quibusdam ad. Ut quia eum quo hic nam omnis eveniet.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(142, 20, 'image', 142, 'https://source.unsplash.com/collection/459788/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(143, 20, 'image', 143, 'https://source.unsplash.com/collection/734746/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(144, 20, 'text', 144, 'Fuga dolorum et et ratione. Culpa aliquam nesciunt et architecto hic et excepturi sed. Laboriosam libero ullam magnam corporis sunt dolores non. Enim laudantium dolor dolor dolore. Porro corporis ipsa non impedit ipsa autem veritatis rerum. Dolorum voluptatibus voluptates error molestiae et eligendi vel. Voluptates consequatur enim beatae nisi non sunt officiis. Dolores autem quo alias facilis harum et voluptatem. Magnam enim neque hic eaque. Ipsa qui voluptatum assumenda ipsam praesentium dolorum. Facilis fuga odio eum ullam.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(145, 21, 'text', 145, 'Tempore vitae cum doloremque voluptatem deleniti suscipit sit. Quos qui numquam saepe sint inventore esse. Sunt quas deserunt debitis id quia sapiente ullam. Est nobis ipsa ut ut sit tenetur laboriosam. Cupiditate fugit itaque error asperiores voluptas aliquam omnis. Fuga eum magnam praesentium doloribus. Minima quae qui minima magnam quis. Aspernatur nostrum aut sunt magnam est nihil dicta laborum. Minima repellat ut asperiores illo inventore qui aut. Quis placeat facilis voluptatem ex ex corrupti.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(146, 21, 'text', 146, 'Est dolores iusto iste doloribus. Odit optio non et illum. Aut sed reprehenderit ipsum quod sed magni consequatur maxime. Accusamus commodi est aut dolor consectetur aliquam. Hic quibusdam ad veniam soluta qui. Est quis laboriosam quis et. Laudantium quasi dolorem ut magni quis ea nobis. Quis quis sed in vel maxime laborum. Est omnis voluptatem occaecati molestias quae fugit rerum ea. Non fuga totam mollitia autem. Repellendus distinctio a ad corrupti nulla. Repudiandae sint impedit laboriosam eveniet quia dignissimos et. Ipsa sint qui quam. Quo corrupti eaque consequatur doloremque consequatur non. Illo enim officiis omnis qui. Asperiores facere sint et sequi harum.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(147, 21, 'image', 147, 'https://source.unsplash.com/collection/718138/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(148, 21, 'text', 148, 'Illo culpa consequatur amet labore rerum. Sapiente sunt hic quo nesciunt aliquid. Sit debitis velit possimus qui inventore aliquid. Iusto cupiditate quibusdam voluptates aut. Est labore modi rem explicabo expedita dolor voluptatum exercitationem. Unde quaerat accusamus natus. Esse provident sit numquam fuga blanditiis. Quia reiciendis beatae quia nostrum et omnis minus ut. Iure dolorum porro quo consequatur sit.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(149, 21, 'text', 149, 'Ea possimus fuga quo quod repellendus et. Non iusto placeat voluptas id neque dignissimos aliquam. Vel labore dolore praesentium. Autem placeat iure harum nostrum. Odit maiores non ab voluptas. Molestiae sint vitae minus et. Quaerat dolorem aspernatur qui voluptate. Dolor soluta a quidem perferendis tempora molestiae. Maxime quaerat sit sed corrupti recusandae ea numquam incidunt. Sequi numquam delectus enim blanditiis quas. Mollitia ex dolorem ad et officiis incidunt. Excepturi repellat ex consequatur libero dolore. Culpa quo assumenda ipsa consequatur quod modi. Ut aut aliquid facilis exercitationem dolorum est. Eum est deleniti nemo veritatis quis voluptas. Sit molestiae recusandae voluptate quia accusantium nam aut. Repellat ut tempore quae velit. Ipsam dolores voluptate nostrum dolorem possimus ut. Voluptates ad sunt dolores id rerum architecto aspernatur sunt. Eum dicta modi quod. Quia est laudantium accusamus rerum architecto repellendus. Mollitia ducimus delectus voluptatibus atque deleniti ex sint. Eaque enim sunt autem totam inventore architecto ipsam. Ea autem facere velit sed maxime non.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(150, 21, 'image', 150, 'https://source.unsplash.com/collection/881520/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(151, 21, 'text', 151, 'Eaque aspernatur minima exercitationem unde consectetur aut tempora. Vitae est error natus dolor ut et atque. Cumque quia ipsum consectetur nam. Ea ad et illum dolorum voluptas quis facilis. Aut commodi sed vitae. Exercitationem quas assumenda minima culpa ut omnis sint ea. Tempore ullam repellat illo consequatur maxime dolore totam. Ut enim laborum harum. Nobis fugit nesciunt veniam laudantium. Delectus explicabo suscipit sint sed omnis odio ullam. Et natus non qui voluptate eligendi placeat. Ut architecto sed sint nulla. Dolores tempore in incidunt.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(152, 22, 'text', 152, 'Laboriosam nesciunt laudantium voluptate laudantium eius. Labore iure quo inventore est quod aliquid. Sunt cupiditate asperiores distinctio voluptatem molestias qui possimus. Repudiandae quaerat a rerum. Doloremque velit animi illum et voluptatem.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(153, 22, 'image', 153, 'https://source.unsplash.com/collection/257189/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(154, 22, 'text', 154, 'Accusantium nisi consectetur quos. Porro et eveniet saepe ex. Nobis aut rem omnis nostrum assumenda dolores. Eum aut sunt iusto labore eius soluta blanditiis. Molestiae omnis amet accusamus aut. Molestiae aut sint qui enim sit. Fugiat ipsum inventore cupiditate aliquid laudantium voluptatem tempora officia. At necessitatibus odit ut et nostrum a vero. Consequatur itaque est iusto rem ut et soluta. Ut rerum velit consequatur est quisquam alias. Cumque et dolorum aut delectus nesciunt et ut. Soluta facere cum voluptatum beatae quaerat. Magnam dolor consequatur et enim quaerat vel.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(155, 22, 'image', 155, 'https://source.unsplash.com/collection/411478/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(156, 22, 'image', 156, 'https://source.unsplash.com/collection/191645/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(157, 22, 'image', 157, 'https://source.unsplash.com/collection/868919/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(158, 22, 'image', 158, 'https://source.unsplash.com/collection/715979/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(159, 23, 'image', 159, 'https://source.unsplash.com/collection/777741/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(160, 23, 'image', 160, 'https://source.unsplash.com/collection/392966/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(161, 23, 'text', 161, 'Ullam et hic dolores aut. Deserunt molestiae enim eum aut vel porro ipsa. Distinctio in cumque quia. Laborum ut est adipisci non.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(162, 23, 'text', 162, 'Consectetur pariatur quia sint. Sed nemo qui officiis non. Quasi voluptatibus sit animi aut. Nihil quia sint est incidunt.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(163, 23, 'image', 163, 'https://source.unsplash.com/collection/158414/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(164, 23, 'text', 164, 'Voluptate sint qui adipisci unde natus sunt. Adipisci aliquid nemo laudantium architecto eaque reiciendis et. Consequuntur minima sed qui sit qui non. Laudantium laborum accusantium quae fuga rem. Nemo a minima modi cum id qui quam ea. Qui assumenda quasi nulla voluptas voluptatem sunt ut. Nisi corporis id sint itaque explicabo doloremque maiores. Porro voluptate omnis alias eveniet quam aut. Aut numquam velit voluptas qui officiis eum. Et cumque autem blanditiis fugiat. Vel facere harum ut temporibus quo. Quia mollitia ut beatae iure sapiente velit.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(165, 23, 'text', 165, 'Natus harum occaecati nemo est. Ad voluptas distinctio ab ad. Enim non consectetur molestiae quidem molestiae. Consectetur voluptas rerum officiis qui. Porro non harum excepturi ut. Maxime voluptates qui soluta.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(166, 23, 'text', 166, 'Consectetur ea excepturi provident aut reprehenderit quam. Ipsam aliquid est dolores omnis. Reprehenderit enim excepturi vero quasi possimus. Natus et dolores quod iure animi quisquam. Architecto possimus excepturi amet debitis eveniet. Aut laudantium magnam vel. Quae enim vitae provident aut. Qui dolorem perspiciatis qui neque ipsa suscipit. Aut est nesciunt quaerat amet incidunt. Corporis ratione perspiciatis natus vitae suscipit itaque. Aliquid amet amet omnis vel perspiciatis est. Quos quae a aliquid excepturi expedita. A quae aut eaque quia. Nostrum magni minima odio qui quae doloribus repellat. Consequuntur veniam similique sequi consequatur nesciunt omnis illo quibusdam. Voluptas consectetur ea qui non voluptas qui eius ipsa. Quod voluptatem dicta voluptatem tenetur quae doloremque. Impedit omnis voluptates dolor in. Dolores molestias maiores sapiente. Eum in ipsum occaecati facere eum.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(167, 23, 'image', 167, 'https://source.unsplash.com/collection/856933/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(168, 23, 'text', 168, 'Magni qui veritatis est dolores labore. Ab tempora voluptatibus illo impedit nam rem. Et quidem est omnis. Fugiat maiores numquam cum fugit quos.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(169, 24, 'image', 169, 'https://source.unsplash.com/collection/136941/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(170, 24, 'text', 170, 'Amet porro aut reprehenderit iure. Accusamus voluptatum quos qui autem et autem. Error pariatur ab eos eligendi reiciendis quam. Ipsam molestias architecto repellat sequi rerum quidem. Vel distinctio consequatur non id in. In quae ratione et qui qui voluptatum. Eos et aut autem similique aut. Quidem autem et eum asperiores adipisci voluptatem esse. Et sunt fugiat alias. Corrupti porro et odio cumque. Maiores dolor unde quos cum aut voluptatem hic cupiditate. Explicabo voluptatem numquam ab. Ratione facere quidem et fugiat dolores est facilis. Porro excepturi rerum nihil aut laboriosam.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(171, 24, 'image', 171, 'https://source.unsplash.com/collection/982226/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(172, 24, 'image', 172, 'https://source.unsplash.com/collection/235459/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(173, 24, 'image', 173, 'https://source.unsplash.com/collection/780466/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(174, 24, 'text', 174, 'Voluptas corporis explicabo ea velit eos aspernatur enim debitis. Est voluptates recusandae omnis omnis. Quam harum voluptatum dolor blanditiis qui. Vero expedita blanditiis qui eos sit voluptas ut. Repellat vitae provident iste molestias maiores omnis. Mollitia eligendi quis est adipisci numquam. Pariatur et dignissimos quo deserunt odio. Esse ducimus commodi ad adipisci. Aut molestiae facilis enim et omnis sunt. Deleniti molestiae officia vero sit dolores ipsa in voluptas. Fugit molestiae hic consectetur et.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(175, 24, 'text', 175, 'Tempore quas doloribus deleniti totam sit a accusamus. Consequuntur sit ut et. Est dolores velit aut iure quia praesentium. Repellendus blanditiis facere autem nostrum qui aliquam repudiandae. Ex doloribus tempore id non. Ut aut ea voluptatem. Dolor sapiente suscipit perspiciatis possimus delectus reprehenderit reprehenderit.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(176, 25, 'image', 176, 'https://source.unsplash.com/collection/347015/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(177, 25, 'image', 177, 'https://source.unsplash.com/collection/308293/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(178, 25, 'image', 178, 'https://source.unsplash.com/collection/302949/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(179, 25, 'image', 179, 'https://source.unsplash.com/collection/444467/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(180, 25, 'text', 180, 'Ut voluptas et autem aperiam incidunt deleniti ut. Vel exercitationem iste quisquam ipsum. Nobis rerum id eligendi et nesciunt. Incidunt illum eligendi dolorum illo. Odio ullam tempora atque neque ullam. Ducimus rerum amet tempore a inventore. Qui cupiditate laboriosam ea dicta non et qui. Ut voluptatem unde voluptatibus qui saepe.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(181, 25, 'image', 181, 'https://source.unsplash.com/collection/776122/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(182, 25, 'text', 182, 'Iure modi hic perspiciatis minima nulla ut. Consequatur voluptas sint modi quo non qui consequatur. Voluptas saepe quia repellendus sapiente. Ipsam repellat aliquam occaecati sapiente corrupti tenetur et. Perspiciatis consequatur totam et nemo. Voluptatum voluptas cupiditate voluptatem eaque vitae nihil molestias. Quas dolorum enim quas vero eligendi similique et. Eum commodi iste culpa possimus eligendi omnis sint ea. Sapiente doloribus necessitatibus magnam id porro velit eius. Quia qui fugit sunt laboriosam cumque ipsam exercitationem autem.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(183, 25, 'text', 183, 'Doloremque doloremque enim natus repellat. Veniam similique illo suscipit et ut voluptates. Et illo porro maxime vel explicabo. Ipsam dolor laboriosam sed sit sed et. Sit et ut rem. Hic veritatis quibusdam beatae nihil accusantium optio minus est. Culpa distinctio debitis voluptatibus at non aspernatur. Commodi et accusantium at voluptate ut quo. Vitae quod rem voluptatum pariatur.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(184, 25, 'image', 184, 'https://source.unsplash.com/collection/130956/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(185, 26, 'image', 185, 'https://source.unsplash.com/collection/642813/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(186, 26, 'image', 186, 'https://source.unsplash.com/collection/402356/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(187, 26, 'image', 187, 'https://source.unsplash.com/collection/605024/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(188, 26, 'text', 188, 'Fugit dolorum error ipsum modi. Eveniet saepe excepturi omnis eos et facilis eum. Provident et quo dolores aperiam distinctio est dolorum. Doloribus voluptas voluptatem fugiat quis voluptatem unde ut. Consequuntur impedit qui magni dolores facere. Saepe iste saepe reprehenderit omnis totam. Quo natus eligendi sit suscipit. Rerum sit aut nihil et rerum consequatur. Dolor in sequi tempora rerum qui est maiores. Aliquam explicabo perferendis et non adipisci fugiat itaque. Ipsam aut sapiente ut asperiores sed explicabo quo. Illum numquam reiciendis veritatis.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(189, 26, 'text', 189, 'Porro vel omnis enim. Iste soluta totam ut quidem. Illum deserunt incidunt nisi voluptas perferendis. Odio quo rerum recusandae voluptatem. Unde incidunt et odit natus numquam similique. Eos fuga minus dolorem ipsa dignissimos maxime amet. Voluptatibus qui sapiente iste est aut ducimus. Magnam quam distinctio voluptatibus quia est voluptas molestiae. Sit et et nobis id vitae necessitatibus rem. Aliquid et illum et est nisi eos. Dolorem voluptates odio ullam. Maxime ut quaerat voluptatem quia. Eum ut quo autem aspernatur voluptatem distinctio reprehenderit. Nostrum molestias explicabo ducimus quae doloribus. Debitis fuga iure et nihil. Rem vel vero veritatis natus voluptas. Molestiae possimus saepe voluptatum quam. Excepturi a repellat repellat inventore. Sed exercitationem ratione omnis et aut. Voluptatum enim vel laborum reprehenderit explicabo ea quo inventore.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(190, 26, 'text', 190, 'Sint et sunt molestias magnam non odit est sunt. Dolorem numquam necessitatibus fuga aut amet placeat asperiores dolorem. Fugiat ex explicabo fugiat alias esse. Qui nam dicta laudantium ab ad consequatur. Quia ducimus ut eos necessitatibus. Soluta in non perspiciatis culpa magni iste. Molestiae esse sunt dolorum magnam eum vero. Et explicabo et ducimus id illo dicta quia. Aut nihil nihil consequatur in. Accusamus dolor qui rerum consectetur id. Molestias ad at beatae libero et dolorem. Enim nulla omnis qui consequatur quia eius.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(191, 26, 'image', 191, 'https://source.unsplash.com/collection/219680/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(192, 26, 'image', 192, 'https://source.unsplash.com/collection/292712/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(193, 27, 'text', 193, 'Odit illo voluptates sequi et eos et sequi. Est dolorum nesciunt voluptatem voluptatem ea. Molestiae maiores excepturi sit est illo nam recusandae. Delectus similique voluptatem et in nam.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(194, 27, 'image', 194, 'https://source.unsplash.com/collection/140997/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(195, 27, 'image', 195, 'https://source.unsplash.com/collection/621304/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(196, 27, 'text', 196, 'Adipisci repellendus id rerum distinctio quam possimus quo repellendus. Repellat corrupti ipsa quam explicabo consequatur rem et voluptatem. Sit possimus deserunt sed. Earum similique molestias dolore soluta perferendis qui. Dolores et voluptas deleniti sit id voluptatibus aut. Non optio ipsum quia eaque optio aliquam pariatur. Velit commodi eos nesciunt fugit molestiae. Et aliquam et soluta ad. Maiores aperiam odio nihil provident. Distinctio at minus ullam consequatur alias hic voluptatem. Quia laboriosam minima corporis eos delectus. Hic nisi sit itaque odio cupiditate ut. Sunt aut praesentium quasi alias iusto. Aliquam cum excepturi nesciunt eum enim eius. Expedita corrupti non dolorem non. Consequatur corporis quod optio similique quam dolores voluptas. Dolores tempora alias aut. Optio aperiam voluptates qui tenetur a.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(197, 27, 'image', 197, 'https://source.unsplash.com/collection/886966/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(198, 28, 'text', 198, 'Iure ab nemo eaque. Dolores officiis et ad enim vitae nam. Harum nihil impedit sed accusamus expedita sapiente. Enim quas eius recusandae molestias expedita nam praesentium. Dolores architecto ipsum numquam dolore et fugiat tempora quia. Maiores saepe qui aut quas. Quam voluptas id qui rerum rem itaque maiores. Quisquam omnis velit magnam provident. Sunt quis fugiat nemo alias. Sit optio necessitatibus rerum eligendi qui tempore. Sequi esse dolore quia voluptas. Quasi vitae sit autem architecto voluptas quo enim. Ducimus et iusto quis est voluptas enim. Non dicta esse rerum in quisquam qui provident. Beatae sit cumque reiciendis. Perspiciatis natus repellendus ipsam debitis.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(199, 28, 'image', 199, 'https://source.unsplash.com/collection/348472/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(200, 28, 'image', 200, 'https://source.unsplash.com/collection/992095/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(201, 28, 'image', 201, 'https://source.unsplash.com/collection/174632/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(202, 28, 'image', 202, 'https://source.unsplash.com/collection/166853/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(203, 28, 'text', 203, 'Tenetur aut natus iusto et sed. Omnis voluptas est iste deserunt. Rerum corporis numquam laborum voluptas quidem. Eaque laboriosam ut dolore perferendis asperiores. Incidunt soluta sed ullam saepe. Animi consectetur quo ut deleniti. Cum voluptatem fugiat sed voluptatum voluptate quis. Ea optio nesciunt nihil. Numquam aut eum ut asperiores repellendus quis. Non inventore quia nobis excepturi impedit minus. Et unde optio nobis aut sapiente. Excepturi enim dolor aliquam doloribus ut. Atque aut beatae nobis ut dolor. Ut id sed cum non vitae id culpa.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(204, 29, 'image', 204, 'https://source.unsplash.com/collection/149265/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(205, 29, 'image', 205, 'https://source.unsplash.com/collection/388603/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(206, 29, 'image', 206, 'https://source.unsplash.com/collection/996134/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(207, 29, 'image', 207, 'https://source.unsplash.com/collection/895335/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(208, 29, 'text', 208, 'Id eum fugiat eos voluptas temporibus qui quia. Dolor architecto in distinctio. Quos eius provident ut vel quaerat. Et distinctio provident autem. Ducimus molestiae dolorum ut est. Et in neque quis et cupiditate ipsa. Pariatur itaque in praesentium tempore explicabo repudiandae nam. Accusantium rerum qui ut fugit hic et dolores. Eum rerum corporis placeat ipsam mollitia. Rerum possimus rerum et labore corporis harum. Atque culpa blanditiis odit deserunt vitae delectus molestias. Saepe maiores quos atque quo voluptas cumque tempore. Molestias optio quaerat sint vel sit. Ut quia excepturi qui quis non velit. Maxime maiores minima odit dicta. Architecto quo nemo qui minima iure perferendis dolores. Modi consequatur quis autem aut dolorem cupiditate aut ipsam. Sint aut accusantium qui vel sapiente odit. Velit ipsa eum molestiae deleniti. Vitae voluptates sunt sunt occaecati et quasi. Vel rerum vitae in. Excepturi et nostrum nobis ratione. Quod rerum officiis incidunt. Qui perspiciatis earum voluptatem.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(209, 29, 'text', 209, 'Eum rerum non laborum aut enim. Culpa explicabo minus a ipsam. Praesentium magnam iste nihil. Reprehenderit culpa ipsa consequatur nostrum non asperiores. Reiciendis consequuntur cumque magni neque omnis est cumque. Cupiditate sunt velit eos sit qui magni. Debitis veritatis recusandae unde aut aut in fugit. Aut est reprehenderit dolorem optio error nihil. Quia eum velit quam voluptas cum. Beatae porro illum repellat sed quas eaque rerum animi. Consequatur debitis repellendus magni asperiores sunt labore. Reprehenderit iste fugiat non officia. Quidem officia quasi est quis ratione id. Aspernatur tenetur impedit recusandae iusto. Sit sit ut sunt est ipsam tempora. Voluptas quam ducimus voluptatem alias. Officiis et voluptas totam aut sed iure. Unde in deleniti id quas porro rerum quo est. Inventore enim molestiae quam sit.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(210, 29, 'text', 210, 'Et rem voluptatem vel sint laboriosam perspiciatis. In eum voluptatem et quas est qui rerum soluta. Ducimus et inventore eveniet eligendi corporis natus non. Beatae nulla amet at sunt. Quod voluptas id neque vitae harum qui necessitatibus. Sunt aut magni voluptate dolores perferendis molestias animi. Rerum fuga repellendus repellat voluptas necessitatibus ducimus. Ea labore sunt optio. Iure est voluptatibus ea doloremque neque quia qui. Nobis occaecati qui cumque ullam. Velit ullam ut quae optio maiores consequuntur autem. Laudantium deserunt iure velit. Officiis quia voluptatem corporis qui hic quas rerum.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(211, 29, 'text', 211, 'Officiis expedita maiores qui aut officia eos excepturi. Reprehenderit nobis nulla ut nihil suscipit vitae laborum. Dolores fuga est consequuntur. Voluptates in repellat nisi delectus. Ipsam sunt itaque odit sint illo ullam velit. Porro distinctio quia et ut itaque qui. Ut veritatis neque laudantium possimus dolorem ut vel aperiam. Ea omnis tenetur aut et. Fugit itaque itaque est earum aspernatur harum cumque.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(212, 29, 'text', 212, 'Rem necessitatibus et aut velit veniam quia consequuntur. Reprehenderit est ipsa maiores omnis nesciunt. Repellat sequi blanditiis enim velit et cum autem.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(213, 30, 'text', 213, 'Ut aut omnis suscipit sunt. Vero labore voluptas est repudiandae sint deserunt quae cumque. Optio magni ad et sit delectus id. Nisi omnis perspiciatis eveniet corporis tempore.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(214, 30, 'text', 214, 'Illo rem eum voluptatem aut est maiores in. Saepe autem et fugit explicabo sint. Suscipit numquam corrupti voluptas dolores qui consequuntur. Commodi aspernatur fugiat non porro perspiciatis et. Tempore cum doloremque animi sequi. Corporis error consectetur voluptatibus officiis non exercitationem. Enim repellendus ratione natus quibusdam quis inventore error porro. Distinctio et quia est sit aut. Blanditiis dolorem laborum ut labore velit ut ducimus sapiente. Ipsa omnis maiores molestiae itaque et. Dolorem officia enim est quia quod. Hic illo totam nobis velit. Iusto iure quibusdam amet vel.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(215, 30, 'text', 215, 'Voluptatum molestias velit a eius quis. Quo accusamus id quia voluptatem dolorem dolorem. Ut ab eveniet tenetur laboriosam dolorum ea. Ea temporibus repellendus temporibus. Rerum accusamus at praesentium. Repellendus dolore voluptates accusantium cupiditate fuga. Fuga officiis consectetur totam. Mollitia adipisci odio laboriosam omnis dolores molestiae velit. Nulla enim sunt dolor sapiente atque. Consequatur debitis et deserunt deserunt rerum at dolores.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(216, 30, 'image', 216, 'https://source.unsplash.com/collection/276419/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(217, 30, 'image', 217, 'https://source.unsplash.com/collection/634869/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(218, 30, 'text', 218, 'Nostrum quas architecto aut laboriosam soluta. Et perferendis dolores minus occaecati. Earum alias impedit debitis eum in delectus. Ut deserunt laborum dolorem nihil dolore. Dignissimos illo enim incidunt alias rem quia. Qui eum velit non itaque deleniti at saepe. Quidem qui odit consequatur praesentium. Ducimus esse est natus corporis ut nostrum officiis. Et tempore autem inventore reiciendis.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(219, 30, 'text', 219, 'Incidunt voluptas error mollitia fugit. Expedita rerum voluptatum sit. Ut laboriosam ad aut quisquam deserunt tempore provident. Ullam sit id ipsa eligendi dolore. Totam atque ipsam nam quibusdam. Assumenda harum a aut corporis repellendus perferendis numquam. Architecto unde sint officia voluptates est dolorem. Consequatur odio sit perspiciatis cupiditate consequatur eos aliquid voluptatem. Maxime quia voluptatem vel dolores possimus et ullam. Perferendis enim voluptates nesciunt dolores consequatur debitis aspernatur quia. Nemo qui ut fugiat voluptates sit. Nostrum quia nulla quod repudiandae nemo minus.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(220, 30, 'text', 220, 'Velit doloremque perferendis itaque sed distinctio. Enim perspiciatis voluptatibus qui nihil pariatur dignissimos optio. Qui ut quis consequatur non molestiae.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(221, 30, 'image', 221, 'https://source.unsplash.com/collection/426290/800x600', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(222, 30, 'text', 222, 'Pariatur aliquid nesciunt et hic quos ipsa. Atque odio alias repellat. Accusamus vel voluptates labore rerum repellat laudantium. Alias quia est quia officia blanditiis ut. Possimus aut minus repellendus facere quia et accusamus blanditiis.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `campaign_discussions`
--

CREATE TABLE `campaign_discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `campaign_faqs`
--

CREATE TABLE `campaign_faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `campaign_faqs`
--

INSERT INTO `campaign_faqs` (`id`, `campaign_id`, `question`, `answer`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 'Facere reprehenderit dolor vel officiis.', 'Qui blanditiis accusantium nostrum amet non.', 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(2, 1, 'Consectetur enim eveniet consequatur libero cumque qui.', 'Perferendis unde et voluptatum debitis.', 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(3, 1, 'Odio ut nobis eum.', 'Voluptatem aut ut tempore nesciunt fugit soluta.', 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(4, 1, 'Dolorem dolor omnis necessitatibus sed molestias ab et.', 'Aperiam laboriosam rerum nesciunt.', 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(5, 1, 'Dolores modi a voluptatem distinctio velit.', 'Est rerum rerum velit nihil quaerat minima nam.', 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(6, 1, 'Assumenda quos ut aut id nihil.', 'Repudiandae in asperiores molestiae autem eveniet a eum cupiditate cupiditate veritatis.', 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(7, 1, 'Necessitatibus error sed aut est beatae repellendus qui eos.', 'Beatae aliquid autem nobis provident expedita est debitis exercitationem.', 0, '2022-01-04 13:23:08', '2022-01-04 13:23:08'),
(8, 2, 'Natus ut necessitatibus.', 'Ipsa veritatis eum.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(9, 2, 'Ut non voluptates.', 'Et repellat et consequatur fuga numquam earum.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(10, 2, 'Quia dolor dicta in velit.', 'Similique eligendi ut illum officia.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(11, 2, 'Enim ipsa alias dolorem odio ut veniam qui perferendis et.', 'Aperiam ea iure eius ducimus.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(12, 2, 'Iusto itaque assumenda molestiae facilis.', 'Optio tempore eum minus.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(13, 2, 'Molestiae ut assumenda.', 'Cum beatae non consequatur quia perspiciatis et.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(14, 2, 'Rerum vel et at iste minima nesciunt quos qui.', 'Corporis a delectus sit vitae.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(15, 2, 'Vero ipsam ducimus nihil vero.', 'Qui aut.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(16, 3, 'Labore et et quasi.', 'Corrupti ratione aliquid sit nihil.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(17, 3, 'Cum officia consequatur rerum.', 'Maxime et quia aperiam recusandae voluptate.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(18, 3, 'Dolores quidem cum quo.', 'Aut harum omnis a aut aperiam nemo unde.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(19, 3, 'Laudantium facilis non assumenda quos omnis vel molestiae autem.', 'Mollitia quia blanditiis itaque nihil fuga.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(20, 3, 'Voluptas facere dignissimos dicta non et id unde doloribus aperiam.', 'Nisi voluptatem at sit qui quaerat rerum.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(21, 3, 'Qui omnis culpa recusandae quidem vitae.', 'Aut et soluta culpa nihil nihil.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(22, 3, 'Minus adipisci sunt atque animi.', 'Et dolorem reprehenderit corporis impedit sapiente sed non occaecati ut est.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(23, 4, 'Et enim commodi quis ut consequatur.', 'Ad repellat quo in laboriosam distinctio.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(24, 4, 'Consequatur quo laborum impedit accusantium.', 'Iste rerum est illo.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(25, 4, 'Quos adipisci sit nemo.', 'Ut perferendis eveniet qui aut nulla debitis.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(26, 4, 'Sapiente unde quasi cupiditate.', 'Tempora omnis recusandae vel temporibus.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(27, 4, 'Nobis harum recusandae harum maiores.', 'Aspernatur et debitis qui consectetur mollitia nisi qui.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(28, 4, 'Natus delectus non voluptate optio consequatur.', 'Consequuntur harum consequatur velit assumenda natus sit doloribus ullam.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(29, 4, 'Doloribus quos praesentium fugit veniam totam aut rerum.', 'Similique aut praesentium facere.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(30, 4, 'Et quia error nesciunt.', 'Minus suscipit similique quia velit.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(31, 5, 'Facere dolorem consequuntur aliquid repudiandae ipsum deleniti.', 'Nemo eos non nesciunt beatae.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(32, 5, 'Dolor optio porro iure aliquam.', 'Ducimus rerum repellendus et quia ut quos.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(33, 5, 'Delectus ab quaerat inventore vero.', 'Provident odit.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(34, 5, 'Architecto officia quis voluptas sed amet sed non.', 'Odit voluptatum nam error dolor velit quae aut blanditiis.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(35, 5, 'Fugit fugit et eaque velit.', 'Eligendi rerum facere ullam modi quidem dolor quos facere.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(36, 5, 'Vero dolores iure laborum.', 'Iste delectus rem dignissimos.', 0, '2022-01-04 13:23:09', '2022-01-04 13:23:09'),
(37, 5, 'Nam voluptatem eaque est maxime voluptatem.', 'Et quos mollitia doloribus voluptatem qui excepturi ut quia voluptatibus.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(38, 5, 'Quaerat aut autem hic.', 'Harum odit distinctio iusto suscipit alias voluptas et odio dolor.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(39, 5, 'Blanditiis magnam eum vel modi dolorem voluptatem eum dolor.', 'Architecto excepturi tenetur illum vero quod dicta totam id omnis consectetur.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(40, 5, 'Quos id eos nihil error.', 'Non ut sint doloremque quam dolor totam fugit voluptatem.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(41, 6, 'Et dolorem aut cumque numquam.', 'Occaecati qui.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(42, 6, 'Officia soluta.', 'Sit quia molestiae dicta rerum.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(43, 6, 'Dolor et fugiat.', 'Necessitatibus sapiente ea quisquam fugit rerum sequi voluptatem.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(44, 6, 'Laudantium expedita aut doloremque enim.', 'Voluptas a adipisci dicta aperiam quos quasi veritatis consequatur aliquid.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(45, 6, 'Et nihil sequi sed voluptates veritatis.', 'Officia aut maxime non modi.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(46, 6, 'Fuga quisquam et.', 'Et ut voluptas commodi nam.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(47, 6, 'Quas officiis temporibus.', 'Expedita voluptatem commodi quis vel voluptatem aut alias nemo voluptatum.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(48, 6, 'Sunt voluptatibus placeat dolore aut.', 'Eveniet officiis vel in et voluptatem.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(49, 6, 'Dolorum similique qui earum qui exercitationem.', 'Occaecati nulla saepe incidunt.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(50, 6, 'Et aliquid sed.', 'Voluptas similique nisi eaque cum repellat occaecati minima reiciendis ducimus.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(51, 7, 'Non autem quis adipisci inventore officiis illo recusandae velit.', 'Ut totam tempore suscipit voluptatum voluptates asperiores.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(52, 7, 'Tempora laboriosam dolor.', 'Animi praesentium esse.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(53, 7, 'Sed ut non ut harum ipsum.', 'Blanditiis nulla voluptatibus saepe voluptatibus nostrum.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(54, 7, 'Perspiciatis amet delectus vel et.', 'Reiciendis voluptas illum est alias est perferendis explicabo eaque.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(55, 7, 'Qui animi deserunt assumenda.', 'Dolorum voluptatem ratione corporis voluptas dolorem tenetur.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(56, 7, 'Et accusantium est et quidem perferendis.', 'Tempore perspiciatis neque harum.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(57, 7, 'Ut vel velit et.', 'Et aut et et porro et.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(58, 7, 'Exercitationem facere sunt ipsa.', 'Hic illo totam sunt.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(59, 7, 'Distinctio aut odit eos totam non blanditiis dolore sit iste ratione.', 'Ut cumque magnam aut laudantium harum accusantium.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(60, 8, 'Possimus labore quos officia odio sed.', 'Qui et voluptas laudantium.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(61, 8, 'Sed non iure consequuntur cum est illo reprehenderit.', 'Libero alias et et tenetur qui quia.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(62, 8, 'Et quaerat consequatur enim sint et qui.', 'Et dolore libero aut.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(63, 8, 'Ea dolores dolorem.', 'Aut facere quisquam veritatis voluptate.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(64, 8, 'Cum sequi ut asperiores odit est magnam corporis.', 'Odit aut voluptas beatae libero enim.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(65, 9, 'Eos et eos veritatis voluptatem dolores deserunt tenetur.', 'Id voluptate natus quis.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(66, 9, 'Ut minima ut sed sit id sit nulla.', 'Sequi autem perferendis ut iusto sed amet dolores et incidunt.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(67, 9, 'Eos ducimus atque suscipit.', 'Aut eius ipsa nam dolore nesciunt minima.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(68, 9, 'Illum distinctio blanditiis et sint molestiae et.', 'Repellendus voluptate doloremque vitae.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(69, 9, 'Rerum aut aliquid eos voluptas libero et repellendus possimus.', 'Error unde consequatur dolore et illo et et id ducimus.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(70, 9, 'Sit labore pariatur itaque harum sunt omnis soluta.', 'Ipsam laborum vel fuga animi.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(71, 9, 'Fugit ducimus eos velit deserunt.', 'Numquam tempore molestiae aliquam eos tenetur cumque.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(72, 9, 'Molestiae nostrum qui maxime quasi dolores atque.', 'Repellendus placeat maiores cumque et.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(73, 10, 'Fugit quo id temporibus.', 'Autem consequatur est odio.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(74, 10, 'Id aut tempore aut ut.', 'Ut omnis numquam ipsa dolor similique rerum aut ex.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(75, 10, 'Non tenetur sit doloremque ipsam totam consequatur asperiores.', 'Dignissimos quis at asperiores quod eius.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(76, 10, 'Rerum fuga est porro harum.', 'Ducimus aut voluptatem aperiam inventore cupiditate.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(77, 10, 'Et est excepturi maxime quaerat quia occaecati.', 'Dicta qui enim nam molestiae iusto.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(78, 10, 'Quia quos reiciendis excepturi atque ipsa.', 'Delectus nobis facilis nobis modi nobis ipsum sit consequuntur.', 0, '2022-01-04 13:23:10', '2022-01-04 13:23:10'),
(79, 10, 'Optio consequuntur ab eos.', 'Sint ut ut qui incidunt ipsum quae.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(80, 10, 'Ducimus voluptas sed.', 'Cupiditate magnam fugiat inventore error ab.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(81, 11, 'Fuga et necessitatibus.', 'Quaerat occaecati voluptas harum sit ad rerum quia ut omnis et.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(82, 11, 'Consequatur aspernatur reprehenderit.', 'Animi sit nulla dolores qui voluptas.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(83, 11, 'Voluptatem porro esse id quam sed reiciendis dolores quis labore qui.', 'Non ut quidem neque adipisci.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(84, 11, 'Iste ipsa ducimus sunt.', 'Similique esse qui consequatur.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(85, 11, 'Ut ut velit ex.', 'Sunt hic et dolore voluptas quia et.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(86, 11, 'Omnis id a asperiores assumenda quisquam ut.', 'Provident tenetur optio omnis ut sapiente aspernatur.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(87, 11, 'Deserunt ab voluptatum consectetur.', 'Nihil omnis suscipit ratione voluptate non.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(88, 11, 'Quidem voluptates impedit id consequatur quo natus corporis similique.', 'Consequatur delectus neque et inventore quia nemo voluptatibus quas.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(89, 11, 'Blanditiis ut sequi nesciunt.', 'Nemo consequatur ut libero omnis culpa dolores est.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(90, 11, 'Omnis consequuntur hic eius officia.', 'Facilis voluptatem velit quae et vel.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(91, 12, 'Animi dolores eius consectetur omnis facere.', 'Cumque soluta error impedit corrupti incidunt.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(92, 12, 'Ex rerum voluptas explicabo iusto.', 'Sit quidem distinctio provident tempora et consequatur.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(93, 12, 'Quos molestiae ipsam sit asperiores enim non non nesciunt.', 'Harum a qui consequatur illo quo iste et.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(94, 12, 'Autem praesentium qui alias aut ea assumenda libero molestiae.', 'Ipsa recusandae tenetur eius omnis ut.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(95, 12, 'Sed non quibusdam omnis consequatur porro quia.', 'Est possimus eius quis qui quasi doloremque quisquam.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(96, 12, 'Corrupti animi explicabo tempora autem magnam.', 'Expedita dolor velit ea ullam earum.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(97, 12, 'Maxime laborum sapiente libero tempore quam.', 'Praesentium quidem vero aut totam blanditiis id voluptas voluptas quia repellendus.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(98, 13, 'Consequatur rerum odio voluptatem.', 'Dicta illum eligendi.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(99, 13, 'Recusandae expedita autem fugiat et fugit ab.', 'Rem cupiditate occaecati facere aut possimus laborum.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(100, 13, 'Libero iure alias tempora veniam architecto et sequi.', 'Porro et error et maiores quaerat.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(101, 13, 'Hic at id consequuntur.', 'Dolore suscipit error iusto sequi iusto.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(102, 13, 'Consequatur modi commodi.', 'Accusamus earum est amet impedit magni perspiciatis voluptatem dolor est.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(103, 13, 'In aperiam possimus.', 'Quis est architecto accusamus.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(104, 13, 'Commodi est porro voluptatem deleniti et illo quia eveniet officia.', 'Ipsum officia ea quae quia.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(105, 14, 'Optio nostrum dolor ipsa et quis autem minima ex praesentium.', 'Dignissimos et voluptas qui consequatur facere qui nulla qui.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(106, 14, 'Enim illum ipsam autem dignissimos distinctio nemo.', 'Nisi provident ea vel.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(107, 14, 'Minus et mollitia.', 'Eligendi animi autem dolorem molestiae.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(108, 14, 'Et dolores voluptatem enim consequatur.', 'Ipsa culpa omnis maiores ea a nobis qui.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(109, 14, 'Est id sit aliquid.', 'Molestiae doloribus aspernatur voluptates non eum ex aut.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(110, 14, 'Et consequatur esse sint.', 'A voluptatem veritatis ut voluptates.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(111, 14, 'Culpa consectetur quia sunt est error quia exercitationem quibusdam consequuntur.', 'Non dolores et culpa qui alias quia.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(112, 15, 'Excepturi quisquam quia.', 'Quia nemo.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(113, 15, 'Mollitia ipsam dolores expedita.', 'Quibusdam rem omnis consequatur.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(114, 15, 'Ducimus aut laboriosam quidem quos.', 'Voluptatibus et dolorem non.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(115, 15, 'Necessitatibus quo dolorum.', 'Officia deserunt voluptas.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(116, 15, 'Tempore et neque libero inventore.', 'At vel deserunt iusto quos assumenda.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(117, 15, 'Beatae nihil et magnam.', 'Ut aut non temporibus quia non commodi optio temporibus voluptatem quia.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(118, 15, 'Distinctio nihil et distinctio itaque.', 'Voluptates aut vel nemo dolor et quis qui voluptate.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(119, 15, 'Omnis voluptates ab porro sapiente.', 'Exercitationem sunt nihil aperiam.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(120, 16, 'Voluptatem perspiciatis vel maxime in a.', 'Quia magnam quam deserunt et doloribus.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(121, 16, 'Non saepe dolores eum.', 'Vel dolor fugit exercitationem.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(122, 16, 'Est nulla deserunt omnis quasi corporis illum quis est voluptatem.', 'Est quibusdam qui.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(123, 16, 'Culpa voluptatem deserunt repudiandae.', 'Omnis quia et odit suscipit et dolore non.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(124, 16, 'Libero id.', 'Aut minima voluptates.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(125, 17, 'Ducimus ullam natus illum adipisci aut non cupiditate.', 'Quam et illum cumque quasi consequatur adipisci autem enim.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(126, 17, 'Libero debitis accusantium ipsam ducimus quaerat eum.', 'Laudantium sit et harum quibusdam ipsam.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(127, 17, 'Ea repellat non eaque.', 'Quae ea aut nulla odit ratione ut eligendi quo quam.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(128, 17, 'Nulla et eum earum temporibus rerum consequatur aut sit natus veritatis.', 'Voluptatibus sit nulla ea.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(129, 17, 'Exercitationem accusantium officiis quasi est deleniti.', 'Itaque et aut qui dolorem maiores.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(130, 17, 'Facere ut dicta iure dolor.', 'Itaque quidem accusamus at cumque temporibus expedita dolores.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(131, 17, 'Quo sit molestiae illum laboriosam.', 'Eos dolorem aut dolor qui corrupti accusamus nam quia.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(132, 17, 'Rerum nobis eius et commodi non sunt deleniti magni ut.', 'Deserunt quibusdam sint nostrum quia labore omnis aliquid autem.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(133, 17, 'Itaque eos ad sed.', 'Voluptas in dolorem iste.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(134, 17, 'Ipsum incidunt maiores ipsam.', 'Temporibus odio laborum ipsum voluptatem non.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(135, 18, 'Similique eius ut necessitatibus.', 'Dolorem quam illo at fuga quis quia.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(136, 18, 'Aut qui qui ut aliquam qui natus.', 'Aperiam nostrum nulla est odio ea provident minus velit.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(137, 18, 'Perferendis unde tenetur et rerum repellat.', 'Suscipit est velit cum inventore error rem deserunt numquam dolorem.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(138, 18, 'Aut praesentium minima rerum.', 'Esse ut neque sint eum.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(139, 18, 'Magnam reiciendis dolores qui consequatur.', 'Sit sint possimus nemo perspiciatis architecto est nisi.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(140, 18, 'Id aut officia illum.', 'Voluptatibus et velit.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(141, 18, 'Natus odit reprehenderit laboriosam beatae dicta unde quia consequatur.', 'Earum saepe possimus amet cupiditate laudantium.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(142, 19, 'Rerum excepturi eligendi expedita.', 'Sunt dignissimos laudantium.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(143, 19, 'Asperiores eveniet sit vitae.', 'Tempora placeat aspernatur amet possimus natus rerum.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(144, 19, 'Deserunt voluptatem minus facere eos deleniti ut odit delectus.', 'At cupiditate est deleniti.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(145, 19, 'Dolores unde vel fugit.', 'Fuga est culpa non ipsam velit.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(146, 19, 'Quia tempore pariatur voluptatibus.', 'Voluptatibus sit ut voluptas autem exercitationem corrupti nostrum doloribus in.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(147, 19, 'Molestiae incidunt eos est ut fugiat et iste.', 'Aut tenetur rerum laboriosam dolor.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(148, 19, 'Est illo est in earum quam optio doloribus consequatur.', 'Sed sed dolorem et voluptatem consequatur quis aliquid consequatur corporis.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(149, 19, 'Tenetur et harum iusto ut maxime similique dolorem.', 'Ullam unde optio necessitatibus sed quia.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(150, 19, 'Impedit expedita asperiores modi.', 'Maiores consectetur et eius facere consequuntur.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(151, 19, 'Architecto quisquam delectus unde voluptatem eveniet rerum nam.', 'Similique culpa ut.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(152, 20, 'Dicta esse aliquid eum quam quia nihil.', 'Aut dolorum repudiandae ex error vero ad natus eius perspiciatis perferendis et.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(153, 20, 'Velit saepe et dolorem.', 'Eum voluptatibus blanditiis fugit possimus.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(154, 20, 'Eveniet qui aut corporis reiciendis et quos ipsam soluta adipisci.', 'Aspernatur dignissimos assumenda sit.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(155, 20, 'Hic in quis dolore doloribus nobis.', 'Aut et officiis nihil rerum quis occaecati.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(156, 20, 'Rem sapiente quod et blanditiis dolorem.', 'Quia fuga delectus illum sit natus explicabo.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(157, 20, 'Explicabo velit a dignissimos.', 'Et alias dolorem numquam porro accusamus.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(158, 20, 'Libero ut nisi excepturi dignissimos laboriosam.', 'Eaque velit quis.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(159, 21, 'Sunt fuga vel et corporis beatae et est vel soluta.', 'Dolorem perferendis facilis magni.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(160, 21, 'Sed inventore occaecati facere delectus mollitia.', 'Eligendi quis et maxime ratione aut consequatur velit et libero.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(161, 21, 'Sed molestias ea exercitationem corrupti blanditiis et omnis tempora ad.', 'Hic impedit praesentium neque recusandae exercitationem distinctio voluptas.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(162, 21, 'Et voluptates autem optio commodi dolores laborum.', 'Deleniti alias neque quis rerum culpa non cumque.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(163, 21, 'Eum nulla at quia et autem.', 'Blanditiis est in laboriosam vero nesciunt.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(164, 21, 'Dignissimos officiis maiores.', 'Sit non quia.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(165, 21, 'Maxime unde suscipit aut commodi qui quo.', 'Nihil eos aut sint.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(166, 21, 'Corrupti omnis amet libero.', 'Nihil consequatur est.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(167, 21, 'Totam incidunt aspernatur nihil.', 'Occaecati odio consequatur et sed.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(168, 21, 'Omnis quisquam nam et earum at asperiores qui et nulla.', 'Consectetur quia et consectetur asperiores debitis.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(169, 22, 'Aliquid repellat cumque aspernatur veritatis.', 'Sit ut occaecati fuga quis.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(170, 22, 'Aut blanditiis atque voluptatem.', 'Aut sunt quisquam ut.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(171, 22, 'Placeat ipsa aut molestias molestias dicta cumque consequatur assumenda cumque aut.', 'Quis quo ullam voluptatem.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(172, 22, 'Necessitatibus ut quisquam quia rerum ut fugit necessitatibus.', 'Qui sed voluptas cum quis autem.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(173, 22, 'Nesciunt occaecati in distinctio repellendus.', 'Nobis facilis et et qui.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(174, 22, 'Autem accusantium placeat vel eveniet.', 'Omnis praesentium iste fuga sit et molestiae omnis sequi.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(175, 22, 'Praesentium sed rerum.', 'Odio et eos tempora.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(176, 22, 'Ratione occaecati architecto enim quasi doloribus cum.', 'Quia consequatur voluptatem.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(177, 22, 'Hic ea culpa hic.', 'Ea sit perspiciatis quia illo necessitatibus amet beatae.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(178, 23, 'Occaecati necessitatibus sed et dolores aliquid facilis assumenda.', 'Libero enim error reiciendis ut consequatur modi.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(179, 23, 'Qui enim doloribus magni.', 'Ut illo cumque maiores.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(180, 23, 'Aliquam temporibus ut id et.', 'Unde sit nostrum laborum.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(181, 23, 'Et libero blanditiis voluptates sed.', 'Veniam blanditiis recusandae consequatur sed voluptatem tempore.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(182, 23, 'Quo deserunt quaerat deserunt.', 'Aspernatur ut commodi saepe aperiam iusto nostrum velit illum voluptas non.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(183, 23, 'Debitis consequatur qui repellendus commodi dicta recusandae.', 'Mollitia perspiciatis enim repellat.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(184, 24, 'Et et occaecati aspernatur dolorum.', 'Nihil eaque et non nam amet nemo aut.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(185, 24, 'Rerum aliquid sunt maiores esse aut.', 'Facilis rerum labore distinctio.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(186, 24, 'Ut omnis rem.', 'Doloribus excepturi rerum est possimus.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(187, 24, 'Eum vitae est sed velit consectetur ducimus repellendus ut dicta.', 'Vero vero commodi in assumenda consectetur debitis.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(188, 24, 'Molestiae enim fugit excepturi quis.', 'Corporis qui recusandae ullam sapiente.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(189, 24, 'Quia corporis repellat aliquid.', 'Saepe perspiciatis ut vitae perspiciatis reiciendis et cupiditate.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(190, 24, 'Dolorem et non neque nihil at deserunt inventore.', 'Sequi aut dolorem.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(191, 24, 'Qui minus optio eaque cupiditate eius.', 'Fuga nemo ducimus cumque.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(192, 24, 'Est nisi dolorum eligendi.', 'Iure in mollitia sit.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(193, 25, 'Harum deserunt ad aut.', 'Velit molestias ut esse dolor ipsum culpa et.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(194, 25, 'Eveniet voluptatibus sit velit ipsa.', 'Totam ducimus vitae dolor nisi est praesentium sit in.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(195, 25, 'Beatae distinctio perferendis asperiores animi.', 'Impedit reprehenderit officiis.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(196, 25, 'Cupiditate iure voluptatem atque aut qui et similique perspiciatis eius facere.', 'Qui accusamus reprehenderit quia nihil ut dolore tempore.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(197, 25, 'Sint impedit adipisci et eius accusantium est voluptatibus.', 'Dolorem et sint et dolorem autem.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(198, 25, 'In id beatae aut pariatur aut provident aut.', 'Recusandae deserunt fugit sed.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(199, 25, 'Molestiae qui adipisci laboriosam officia rerum.', 'Sunt consequuntur facilis aliquam earum voluptatum.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(200, 25, 'Quo et odio aperiam.', 'Et occaecati rem.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(201, 25, 'Amet qui dolorem ipsa quo.', 'Ut a nostrum fuga.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(202, 26, 'Repellat necessitatibus sequi consequuntur assumenda.', 'Aut ratione consequatur nemo mollitia porro in velit.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(203, 26, 'Corporis est sunt.', 'Accusantium aut dolores similique.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(204, 26, 'Explicabo necessitatibus sunt unde et officiis mollitia.', 'Maxime et aliquid iure nemo neque.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(205, 26, 'Consequatur tempore incidunt aut deleniti eaque.', 'Et accusantium ea.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(206, 26, 'Sed possimus quod error a reiciendis.', 'Id ducimus voluptatem qui repellendus explicabo ea architecto quia.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(207, 26, 'Accusamus autem facilis quae voluptatem quod.', 'Suscipit eaque dolor iste eum.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(208, 26, 'Possimus nisi alias quo et adipisci ad.', 'Quasi sunt voluptatum recusandae et.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(209, 26, 'Repellat ipsam pariatur aliquid debitis ad maiores.', 'Facere nihil quas exercitationem.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(210, 26, 'Ut accusamus rerum beatae qui aspernatur omnis.', 'Soluta adipisci dicta occaecati sunt ut expedita.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(211, 26, 'Sint fugit aut porro iure odit voluptatem labore ullam.', 'Ut quia hic placeat ratione et eum rerum aut dolorum.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(212, 27, 'Tempora magni natus et culpa veniam nihil adipisci.', 'Qui dicta possimus sit quia ut id.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(213, 27, 'Facilis dignissimos aspernatur reprehenderit.', 'Corrupti et culpa vel.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(214, 27, 'Iste quia odio dignissimos omnis.', 'Aut a alias ratione nihil natus quia numquam ipsam.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(215, 27, 'Quos nostrum aut.', 'Quas doloremque possimus iste consequatur.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(216, 27, 'Et eius sint.', 'Excepturi dolores est doloremque.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(217, 28, 'Dolorem dicta et sint.', 'Ut consequatur qui.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(218, 28, 'Et aut tenetur reiciendis quam rerum autem.', 'Et nemo sunt et nisi.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(219, 28, 'Sunt dolorem facere mollitia in.', 'Aut ipsam autem id dolorem eaque est voluptatem vitae.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(220, 28, 'Culpa praesentium autem nobis aut possimus in.', 'Dignissimos est cumque.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(221, 28, 'Minus beatae alias quo.', 'Nam nesciunt enim ipsam accusantium numquam.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(222, 28, 'Veniam quos possimus.', 'Repellat corporis ipsum tempore adipisci consectetur eos ullam neque.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(223, 28, 'Natus eum neque quam.', 'Aut earum molestiae eos nam.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(224, 29, 'Et consequatur omnis labore eveniet aperiam minus id et necessitatibus.', 'Vitae eos.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(225, 29, 'Quisquam qui blanditiis aut perferendis eum ut veritatis sint.', 'Perspiciatis reiciendis a deserunt aut omnis nulla sequi.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(226, 29, 'Libero sint asperiores accusamus.', 'Ex et ducimus suscipit debitis quidem est.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(227, 29, 'Quo autem vero expedita molestiae ipsa dolore vero architecto.', 'Omnis similique illum.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(228, 29, 'Incidunt nisi ut libero ex repellat.', 'Ut possimus animi ipsum eius ratione.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(229, 29, 'Praesentium laudantium dolor unde sit dolores dicta.', 'Et blanditiis officiis.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(230, 29, 'Ut placeat ut minima cum consectetur sint rerum et incidunt ratione.', 'Quo error iste recusandae.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(231, 29, 'Est error molestiae non dolor alias.', 'Aut molestias illo autem ut laborum.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(232, 29, 'Beatae debitis at quia voluptatem totam harum dolorum.', 'Est doloribus sed facilis reiciendis iusto reiciendis porro.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(233, 29, 'Ut voluptatibus architecto consequuntur voluptatem quos.', 'Qui quia adipisci velit.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(234, 30, 'Perspiciatis qui quasi aut ex eum tempora.', 'Qui atque et est possimus sed.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(235, 30, 'Harum ea vero.', 'Omnis quis placeat occaecati dolor ipsa eius et assumenda fugit quaerat.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(236, 30, 'Sequi exercitationem itaque amet itaque aut.', 'Est quis et nam perspiciatis consectetur earum.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(237, 30, 'Omnis ut voluptatem laboriosam numquam.', 'Et magnam est aliquid.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(238, 30, 'Eos accusamus natus id in doloribus aut omnis natus reprehenderit temporibus.', 'Nulla eos tenetur animi est magnam.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(239, 30, 'Quis minus dolorem blanditiis minus.', 'Et sit accusantium et et voluptatem.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(240, 30, 'Optio nam molestias.', 'Autem voluptas ut.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11'),
(241, 30, 'Est nisi accusantium omnis animi saepe eos ut debitis.', 'Debitis et amet dolores perferendis sed et.', 0, '2022-01-04 13:23:11', '2022-01-04 13:23:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `campaign_types`
--

CREATE TABLE `campaign_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `campaign_types`
--

INSERT INTO `campaign_types` (`id`, `name`, `description`, `icon`, `slug`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Kuliner', 'Lorem ipsum sir dolor amet', 'https://source.unsplash.com/random/800x600', 'kuliner', 0, NULL, NULL),
(2, 'Jasa', 'Lorem ipsum sir dolor amet', 'https://source.unsplash.com/random/800x600', 'jasa', 0, NULL, NULL),
(3, 'Cenderamata', 'Lorem ipsum sir dolor amet', 'https://source.unsplash.com/random/800x600', 'cenderamata', 0, NULL, NULL),
(4, 'Seniman', 'Lorem ipsum sir dolor amet', 'https://source.unsplash.com/random/800x600', 'seniman', 0, NULL, NULL),
(5, 'Teknologi', 'Lorem ipsum sir dolor amet', 'https://source.unsplash.com/random/800x600', 'teknologi', 0, NULL, NULL),
(6, 'Edukasi', 'Lorem ipsum sir dolor amet', 'https://source.unsplash.com/random/800x600', 'edukasi', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `campaign_updates`
--

CREATE TABLE `campaign_updates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `featured_media` smallint(6) DEFAULT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `campaign_update_comments`
--

CREATE TABLE `campaign_update_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_update_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `donations`
--

CREATE TABLE `donations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `donation` double NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `donation_payments`
--

CREATE TABLE `donation_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `donation_id` bigint(20) UNSIGNED NOT NULL,
  `payment_type_id` bigint(20) UNSIGNED NOT NULL,
  `unique_code` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_08_19_000000_create_user_logs_table', 1),
(4, '2020_04_19_073944_create_campaign_types_table', 1),
(5, '2020_04_19_073952_create_campaigns_table', 1),
(6, '2020_04_19_081057_create_campaign_details_table', 1),
(7, '2020_04_19_081416_create_campaign_faqs_table', 1),
(8, '2020_04_19_081545_create_campaign_updates_table', 1),
(9, '2020_04_19_081809_create_campaign_update_comments_table', 1),
(10, '2020_04_19_082112_create_campaign_discussions_table', 1),
(11, '2020_04_19_082311_create_donations_table', 1),
(12, '2020_04_19_082525_create_payment_types_table', 1),
(13, '2020_04_19_082559_create_donation_payments_table', 1),
(14, '2020_04_30_003451_update_user_table_additional_information', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment_types`
--

CREATE TABLE `payment_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `payment_types`
--

INSERT INTO `payment_types` (`id`, `name`, `description`, `icon`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'BCA', 'Lorem ipsum sir dolor amet', NULL, 0, NULL, NULL),
(2, 'BNI', 'Lorem ipsum sir dolor amet', NULL, 0, NULL, NULL),
(3, 'OVO', 'Lorem ipsum sir dolor amet', NULL, 0, NULL, NULL),
(4, 'Gopay', 'Lorem ipsum sir dolor amet', NULL, 0, NULL, NULL),
(5, 'Dana', 'Lorem ipsum sir dolor amet', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` smallint(6) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `user_level`, `is_deleted`, `image`, `remember_token`, `created_at`, `updated_at`, `phone`, `city`, `address`) VALUES
(1, 'Administrator', 'superadmin@gmail.com', NULL, '$2y$10$TMMwszpZBQoIgVi6W9bBguONLWV1MlGNZu6KMo5tN9uhq1IddMfyC', 'superadmin', 0, NULL, NULL, '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(2, 'Henry Doyle DDS', 'sgulgowski@example.org', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', 'KwBjMVKeMN', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(3, 'Mattie Donnelly DDS', 'katrine58@example.org', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', 'hzYEVJdIEZ', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(4, 'Prof. Bennie Schiller PhD', 'shields.clementina@example.com', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', 'y45LZq709r', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(5, 'Prof. Okey Keeling', 'julia78@example.com', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', 'yOzftANRpv', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(6, 'Jessy Kozey', 'leta.douglas@example.net', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', '0Ij7B1PFBB', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(7, 'Meagan Gerlach', 'feest.johnathan@example.net', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', 'CdUgRbZTsP', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(8, 'Richmond Sporer', 'ernest74@example.org', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', 'UynUunY5mo', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(9, 'Miss Damaris Rohan', 'adan.boyle@example.com', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', 'kuxrJqGIXc', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(10, 'Wyman Kassulke', 'ebergstrom@example.org', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', '36x7iXeywX', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(11, 'Sim Fadel', 'emayer@example.org', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', 'f0AES5m4bv', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(12, 'Mr. Camren Kautzer IV', 'skertzmann@example.net', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', 'LjMfqSJrK4', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(13, 'Hudson Padberg MD', 'heller.myrna@example.com', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', '6KrSZkoCCk', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(14, 'Lilla Medhurst', 'schamberger.zoie@example.com', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', 'e9EawCAeRA', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(15, 'Kristopher McClure', 'tgulgowski@example.org', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', 'HZWmcadlCg', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(16, 'Enos Brekke', 'oswaldo10@example.org', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', 'cgpz1PEEbb', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(17, 'Ozella Morar', 'rice.greta@example.org', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', 'ZjaWdUWWAl', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(18, 'Araceli Lubowitz', 'will.ashlynn@example.com', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', '4a4jfWu0OD', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(19, 'Zakary Hagenes', 'kieran.wiegand@example.com', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', 'bu3P8v8zju', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(20, 'Kassandra Schinner III', 'heller.rex@example.com', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', 'LfSzz1If1u', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(21, 'Dr. Duncan Cormier II', 'wolf.haleigh@example.net', '2022-01-04 13:23:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 0, 'https://source.unsplash.com/random/800x600', 'SQE1qc82mI', '2022-01-04 13:23:07', '2022-01-04 13:23:07', NULL, NULL, NULL),
(22, 'aji bramasta', 'ajiko35@gmail.com', NULL, '$2y$10$TMMwszpZBQoIgVi6W9bBguONLWV1MlGNZu6KMo5tN9uhq1IddMfyC', 'user', 0, NULL, NULL, '2022-01-04 13:25:40', '2022-01-04 13:25:40', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_logs`
--

CREATE TABLE `user_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci,
  `request_data` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaigns_campaign_type_id_foreign` (`campaign_type_id`),
  ADD KEY `campaigns_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `campaign_details`
--
ALTER TABLE `campaign_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_details_campaign_id_foreign` (`campaign_id`);

--
-- Indeks untuk tabel `campaign_discussions`
--
ALTER TABLE `campaign_discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_discussions_campaign_id_foreign` (`campaign_id`),
  ADD KEY `campaign_discussions_parent_id_foreign` (`parent_id`),
  ADD KEY `campaign_discussions_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `campaign_faqs`
--
ALTER TABLE `campaign_faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_faqs_campaign_id_foreign` (`campaign_id`);

--
-- Indeks untuk tabel `campaign_types`
--
ALTER TABLE `campaign_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `campaign_updates`
--
ALTER TABLE `campaign_updates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_updates_campaign_id_foreign` (`campaign_id`);

--
-- Indeks untuk tabel `campaign_update_comments`
--
ALTER TABLE `campaign_update_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_update_comments_campaign_update_id_foreign` (`campaign_update_id`),
  ADD KEY `campaign_update_comments_parent_id_foreign` (`parent_id`),
  ADD KEY `campaign_update_comments_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donations_campaign_id_foreign` (`campaign_id`),
  ADD KEY `donations_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `donation_payments`
--
ALTER TABLE `donation_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donation_payments_donation_id_foreign` (`donation_id`),
  ADD KEY `donation_payments_payment_type_id_foreign` (`payment_type_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_logs_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `campaign_details`
--
ALTER TABLE `campaign_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT untuk tabel `campaign_discussions`
--
ALTER TABLE `campaign_discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `campaign_faqs`
--
ALTER TABLE `campaign_faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT untuk tabel `campaign_types`
--
ALTER TABLE `campaign_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `campaign_updates`
--
ALTER TABLE `campaign_updates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `campaign_update_comments`
--
ALTER TABLE `campaign_update_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `donations`
--
ALTER TABLE `donations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `donation_payments`
--
ALTER TABLE `donation_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `campaigns`
--
ALTER TABLE `campaigns`
  ADD CONSTRAINT `campaigns_campaign_type_id_foreign` FOREIGN KEY (`campaign_type_id`) REFERENCES `campaign_types` (`id`),
  ADD CONSTRAINT `campaigns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `campaign_details`
--
ALTER TABLE `campaign_details`
  ADD CONSTRAINT `campaign_details_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`);

--
-- Ketidakleluasaan untuk tabel `campaign_discussions`
--
ALTER TABLE `campaign_discussions`
  ADD CONSTRAINT `campaign_discussions_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`),
  ADD CONSTRAINT `campaign_discussions_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `campaign_update_comments` (`id`),
  ADD CONSTRAINT `campaign_discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `campaign_faqs`
--
ALTER TABLE `campaign_faqs`
  ADD CONSTRAINT `campaign_faqs_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`);

--
-- Ketidakleluasaan untuk tabel `campaign_updates`
--
ALTER TABLE `campaign_updates`
  ADD CONSTRAINT `campaign_updates_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`);

--
-- Ketidakleluasaan untuk tabel `campaign_update_comments`
--
ALTER TABLE `campaign_update_comments`
  ADD CONSTRAINT `campaign_update_comments_campaign_update_id_foreign` FOREIGN KEY (`campaign_update_id`) REFERENCES `campaign_updates` (`id`),
  ADD CONSTRAINT `campaign_update_comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `campaign_update_comments` (`id`),
  ADD CONSTRAINT `campaign_update_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `donations`
--
ALTER TABLE `donations`
  ADD CONSTRAINT `donations_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`),
  ADD CONSTRAINT `donations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `donation_payments`
--
ALTER TABLE `donation_payments`
  ADD CONSTRAINT `donation_payments_donation_id_foreign` FOREIGN KEY (`donation_id`) REFERENCES `donations` (`id`),
  ADD CONSTRAINT `donation_payments_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_logs`
--
ALTER TABLE `user_logs`
  ADD CONSTRAINT `user_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
