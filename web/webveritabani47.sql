-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 12 May 2019, 10:05:48
-- Sunucu sürümü: 5.7.24
-- PHP Sürümü: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `webveritabani47`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dersler`
--

DROP TABLE IF EXISTS `dersler`;
CREATE TABLE IF NOT EXISTS `dersler` (
  `ders_id` int(47) NOT NULL AUTO_INCREMENT,
  `ders_adi` varchar(47) COLLATE ucs2_turkish_ci NOT NULL,
  `ders_sinifi` varchar(47) COLLATE ucs2_turkish_ci NOT NULL,
  `ders_gunu` varchar(47) COLLATE ucs2_turkish_ci NOT NULL,
  `ders_saati` varchar(47) COLLATE ucs2_turkish_ci NOT NULL,
  PRIMARY KEY (`ders_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=ucs2 COLLATE=ucs2_turkish_ci;

--
-- Tablo döküm verisi `dersler`
--

INSERT INTO `dersler` (`ders_id`, `ders_adi`, `ders_sinifi`, `ders_gunu`, `ders_saati`) VALUES
(1, 'Ağ programlama', 'D1', 'Monday', '18'),
(2, 'Web programlama', 'D8', 'Wednesday', '13'),
(3, 'İşletim sistemleri', 'D2', 'Thursday', '15'),
(4, 'Sayısal tasarım', 'D9', 'Monday', '17'),
(5, 'Windows programlama', 'D4', 'Friday', '10'),
(6, 'Bilgisayar Mimarisi', 'D1', 'Tuesday', '00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `etkinlikler`
--

DROP TABLE IF EXISTS `etkinlikler`;
CREATE TABLE IF NOT EXISTS `etkinlikler` (
  `etkinlik_id` int(47) NOT NULL AUTO_INCREMENT,
  `etkinlik_adi` varchar(47) COLLATE ucs2_turkish_ci NOT NULL,
  `etkinlik_yeri` varchar(47) COLLATE ucs2_turkish_ci NOT NULL,
  `etkinlik_gunu` varchar(47) COLLATE ucs2_turkish_ci NOT NULL,
  `etkinlik_saati` varchar(47) COLLATE ucs2_turkish_ci NOT NULL,
  PRIMARY KEY (`etkinlik_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=ucs2 COLLATE=ucs2_turkish_ci;

--
-- Tablo döküm verisi `etkinlikler`
--

INSERT INTO `etkinlikler` (`etkinlik_id`, `etkinlik_adi`, `etkinlik_yeri`, `etkinlik_gunu`, `etkinlik_saati`) VALUES
(1, 'Kodla', 'Osman Turan', 'Monday', '10'),
(2, 'Kariyer Günleri', 'Stad', 'Wednesday', '13'),
(3, 'Bilgisayar Olimpiyatları', 'Grafik Lab', 'Friday', '15');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kayanyazi`
--

DROP TABLE IF EXISTS `kayanyazi`;
CREATE TABLE IF NOT EXISTS `kayanyazi` (
  `ky_id` int(47) NOT NULL AUTO_INCREMENT,
  `ky_metin` varchar(100) COLLATE ucs2_turkish_ci NOT NULL,
  `ky_gunu` varchar(47) COLLATE ucs2_turkish_ci NOT NULL,
  `ky_saati` varchar(47) COLLATE ucs2_turkish_ci NOT NULL,
  PRIMARY KEY (`ky_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=ucs2 COLLATE=ucs2_turkish_ci;

--
-- Tablo döküm verisi `kayanyazi`
--

INSERT INTO `kayanyazi` (`ky_id`, `ky_metin`, `ky_gunu`, `ky_saati`) VALUES
(5, 'Bu aksamki ag ve veri guvenligi dersi yapilmayacaktir.', 'Saturday', '01'),
(2, 'Bu akşamki web dersi yapılmayacaktır.', 'Monday', '18'),
(3, 'Halis Duman amfisindeki seminer saat 10 da başlayacaktır.', 'Thursday', '13'),
(4, 'Örnek kayan yazı', 'Sunday', '13'),
(6, 'Bu aksamki bilgisayar aglari dersi yapilmayacaktir.', 'Saturday', '02'),
(7, 'Bugun yapılacak olan voleybol maçı iptal edilmistir ', 'sunday', '13');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sinavlar`
--

DROP TABLE IF EXISTS `sinavlar`;
CREATE TABLE IF NOT EXISTS `sinavlar` (
  `sinav_id` int(50) NOT NULL AUTO_INCREMENT,
  `sinav_adi` varchar(50) COLLATE ucs2_turkish_ci NOT NULL,
  `sinav_sinifi` varchar(50) COLLATE ucs2_turkish_ci NOT NULL,
  `sinav_gunu` varchar(50) COLLATE ucs2_turkish_ci NOT NULL,
  `sinav_saati` varchar(50) COLLATE ucs2_turkish_ci NOT NULL,
  PRIMARY KEY (`sinav_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=ucs2 COLLATE=ucs2_turkish_ci;

--
-- Tablo döküm verisi `sinavlar`
--

INSERT INTO `sinavlar` (`sinav_id`, `sinav_adi`, `sinav_sinifi`, `sinav_gunu`, `sinav_saati`) VALUES
(1, 'Web Programlama', 'D4', 'Tuesday', '00'),
(2, 'Sayisal tasarim', 'D2', 'Tuesday', '01');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(47) NOT NULL AUTO_INCREMENT,
  `user_adi` varchar(47) COLLATE ucs2_turkish_ci NOT NULL,
  `user_password` varchar(47) COLLATE ucs2_turkish_ci NOT NULL,
  `user_statu` varchar(47) COLLATE ucs2_turkish_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=ucs2 COLLATE=ucs2_turkish_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`user_id`, `user_adi`, `user_password`, `user_statu`) VALUES
(1, 'Onur', '38', 'admin'),
(2, 'Hasan', '41', 'kullanıcı'),
(3, 'Mustafa', '47', 'kullanıcı');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
