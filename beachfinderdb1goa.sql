-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 03, 2024 at 07:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beachfinderdb1`
--

-- --------------------------------------------------------

--
-- Table structure for table `Activities`
--

CREATE TABLE `Activities` (
  `Id` int(11) UNSIGNED NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Activities`
--

INSERT INTO `Activities` (`Id`, `Name`) VALUES
(1, 'Snorkeling'),
(2, 'Surfing'),
(3, 'Beach Volleyball'),
(4, 'Banana Boat Rides'),
(5, 'Kayaking'),
(6, 'Jet Skiing'),
(7, 'Parasailing'),
(8, 'Windsurfing and Kite Surfing'),
(9, 'Parasailing');

-- --------------------------------------------------------

--
-- Table structure for table `Beaches`
--

CREATE TABLE `Beaches` (
  `Id` int(11) UNSIGNED NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Ratings` decimal(3,1) UNSIGNED NOT NULL,
  `Image url` varchar(2083) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Beaches`
--

INSERT INTO `Beaches` (`Id`, `Name`, `Location`, `Description`, `Ratings`, `Image url`) VALUES
(1, 'Calangute Beach', 'Coordinates: 15.5439° N, 73.7553° E\r\nLocation: North Goa', 'Known as the \"Queen of Beaches,\" Calangute offers golden sands, lively shacks, and vibrant nightlife. Popular for water sports.', 4.5, 'https://media1.thrillophilia.com/filestore/b8iqw6n62s37df5vqj13dpxr17cg_shutterstock_1850377780.jpg?w=400&dpr=2'),
(2, 'Baga Beach', 'Coordinates: 15.5569° N, 73.7517° E\r\nLocation: North Goa\r\n', 'Famous for its nightlife, Tito\'s Lane, and water sports like parasailing.', 4.6, 'https://s7ap1.scene7.com/is/image/incredibleindia/baga-beach-goa-goa-baga-beach-2-attr-hero?qlt=82&ts=1726735686677'),
(3, 'Anjuna Beach', 'Coordinates: 15.5737° N, 73.7444° E\r\nLocation: North Goa\r\n', 'A hub for hippie culture, known for its flea market and full-moon parties.', 4.4, 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Anjuna_Beach%2C_Goa%2C_India%2C_Legendary_Curlies_beach_shack.jpg'),
(4, 'Vagator Beach', 'Coordinates: 15.6020° N, 73.7408° E\r\nLocation: North Goa\r\n', 'Offers stunning views of cliffs and the Chapora Fort. Known for its serene vibe.', 4.3, 'https://www.tourmyindia.com/states/goa/image/vagator-beach-banner.webp'),
(5, 'Palolem Beach', 'Coordinates: 15.0101° N, 74.0234° E\r\nLocation: South Goa\r\n', 'A tranquil crescent-shaped beach with clear waters, ideal for relaxation and dolphin-watching. ', 4.8, 'https://i0.wp.com/trot.world/wp-content/uploads/2020/07/DSC_0665-scaled.jpg?resize=1170%2C550&ssl=1'),
(6, 'Colva Beach', 'Coordinates: 15.2790° N, 73.9220° E\r\nLocation: South Goa\r\n', 'A popular family-friendly beach with white sands and a lively atmosphere.', 4.2, 'https://blog.hireavilla.in/wp-content/uploads/2024/07/pexels-umaraffan499-88212-scaled.jpg'),
(7, 'Arambol Beach', 'Coordinates: 15.6860° N, 73.7045° E\r\nLocation: North Goa\r\n', 'Known for its bohemian vibe, yoga retreats, and live music.', 4.7, 'https://goa-tourism.org.in/images/places-to-visit/headers/arambol-beach-goa-entry-fee-timings-holidays-reviews-header.jpg'),
(8, 'Morjim Beach', 'Coordinates: 15.6361° N, 73.7345° E\r\nLocation: North Goa', 'A peaceful nesting site for Olive Ridley turtles. Preferred by Russian tourists.', 4.5, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/27/06/b7/view.jpg?w=1200&h=-1&s=1'),
(9, 'Candolim Beach', 'Coordinates: 15.5107° N, 73.7679° E\r\nLocation: North Goa\r\n', 'Known for its quiet ambiance and proximity to the Aguada Fort.\r\n', 4.4, 'https://xplro.com/wp-content/uploads/2024/09/Candolim-goa-jpg.webp'),
(10, 'Sinquerim Beach', 'Coordinates: 15.4913° N, 73.7755° E\r\nLocation: North Goa\r\n', 'Ideal for snorkeling and close to Fort Aguada, with luxurious resorts.\r\n', 4.3, 'https://goa-tourism.org.in/images/places-to-visit/headers/sinquerim-beach-goa-timings-entry-fee-goa-tourism-header-cr-hrishikesh-sharma.jpg'),
(11, 'Agonda Beach', 'Coordinates: 15.0393° N, 74.0224° E\r\nLocation: South Goa\r\n', 'A pristine, quiet beach perfect for meditation and turtle nesting.', 4.7, 'https://www.seawatersports.com/images/places/agonda-beach.jpg'),
(12, 'Dona Paula Beach\r\n', 'Coordinates: 15.4660° N, 73.8253° E\r\nLocation: Panaji, Goa\r\n', 'A romantic beach with stunning views, ideal for water sports.', 4.1, 'https://www.gingerhotels.com/resourcefiles/blogsmallimages/dona-paula-cape.jpg'),
(13, 'Mandrem Beach', 'Coordinates: 15.6615° N, 73.7034° E\r\nLocation: North Goa\r\n', 'A tranquil beach known for its yoga and meditation retreats.\r\n', 4.6, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/538751217.jpg?k=fc186e2428063afc33ef3ac6cd1382806a39796ee58238afbf44415b49d17201&o=&hp=1'),
(14, 'Ashwem Beach', 'Coordinates: 15.6518° N, 73.7226° E\r\nLocation: North Goa', 'A serene beach with gentle waves, preferred by couples and families.\r\n', 4.4, 'https://hippie-inheels.com/wp-content/uploads/2021/03/AshwemBeach01-1024x768.jpg'),
(15, 'Betalbatim Beach', 'Coordinates: 15.2956° N, 73.9144° E\r\nLocation: South Goa', 'A quiet beach known for its golden sands and peaceful vibe.', 4.3, 'https://img.onmanorama.com/content/dam/mm/en/travel/outside-kerala/images/2021/5/6/betalbatim-beach.jpg/photos/1x1/photo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Beach_Activities`
--

CREATE TABLE `Beach_Activities` (
  `beach_id` int(11) UNSIGNED NOT NULL,
  `beach_activities` int(11) UNSIGNED NOT NULL,
  `activity_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Beach_Activities`
--

INSERT INTO `Beach_Activities` (`beach_id`, `beach_activities`, `activity_id`) VALUES
(1, 4, NULL),
(1, 6, NULL),
(1, 3, NULL),
(1, 7, NULL),
(2, 7, NULL),
(2, 6, NULL),
(2, 5, NULL),
(2, 3, NULL),
(3, 8, NULL),
(3, 3, NULL),
(3, 4, NULL),
(4, 3, NULL),
(4, 5, NULL),
(4, 9, NULL),
(5, 4, NULL),
(5, 5, NULL),
(5, 3, NULL),
(6, 8, NULL),
(6, 3, NULL),
(6, 4, NULL),
(6, 8, NULL),
(7, 3, NULL),
(7, 5, NULL),
(7, 8, NULL),
(8, 3, NULL),
(8, 8, NULL),
(9, 9, NULL),
(9, 4, NULL),
(9, 6, NULL),
(10, 7, NULL),
(10, 6, NULL),
(10, 8, NULL),
(11, 5, NULL),
(11, 3, NULL),
(12, 4, NULL),
(12, 6, NULL),
(12, 7, NULL),
(13, 8, NULL),
(13, 3, NULL),
(14, 8, NULL),
(14, 3, NULL),
(15, 3, NULL),
(15, 5, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Activities`
--
ALTER TABLE `Activities`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Beaches`
--
ALTER TABLE `Beaches`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Beach_Activities`
--
ALTER TABLE `Beach_Activities`
  ADD KEY `beach_id` (`beach_id`),
  ADD KEY `beach_activities` (`beach_activities`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Activities`
--
ALTER TABLE `Activities`
  MODIFY `Id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Beaches`
--
ALTER TABLE `Beaches`
  MODIFY `Id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Beach_Activities`
--
ALTER TABLE `Beach_Activities`
  ADD CONSTRAINT `beach_activities_ibfk_1` FOREIGN KEY (`beach_id`) REFERENCES `Beaches` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `beach_activities_ibfk_2` FOREIGN KEY (`beach_activities`) REFERENCES `Activities` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
