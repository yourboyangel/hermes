-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2024 at 09:36 PM
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
-- Database: `agencydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `ClientID` int(11) NOT NULL,
  `ClientName` varchar(50) DEFAULT NULL,
  `ClientSurname` varchar(50) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Gender` enum('Male','Female','Other') DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Reviews` text DEFAULT NULL,
  `ProfileImage` varchar(255) DEFAULT NULL,
  `Spending` int(11) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`ClientID`, `ClientName`, `ClientSurname`, `Username`, `Email`, `Gender`, `Phone`, `Password`, `Type`, `Reviews`, `ProfileImage`, `Spending`, `Rating`) VALUES
(1, 'John', 'Doe', 'johndoe', 'johndoe@example.com', 'Male', '1234567890', 'password123', 'Client', 'Great service!', 'person.jpg', 1500, 3),
(2, 'Jane', 'Smith', 'janesmith', 'janesmith@example.com', 'Female', '0987654321', 'password456', 'admin', 'Loved it!', 'person.jpg', 2000, 3),
(3, 'Bob', 'Johnson', 'bobjohnson', 'bobjohnson@example.com', 'Male', '1112223333', 'password789', 'Staff', 'Had a good time.', 'person.jpg', 1000, 4),
(5, 'Albert', 'Doe', 'john', 'johndoe@example.com', 'Male', '1234567890', 'password123', 'Client', 'good!', 'person.jpg', 1500, 3),
(6, 'Engjell', 'Abazaj', 'engjell123', 'engjell.abazaj007@gmail.com', 'Male', '0692407540', '$2y$10$RL.o32WGxK6u6rRQuVmHoeQC6YATXps5kj9MI4uhF4xi4pm8WOXYi', 'admin', NULL, '664761e9d12df.jpg', NULL, 3),
(7, 'joel', 'birti', 'joel123', 'engjell.abazaj007@gmail.com', 'Male', '0692407540', '$2y$10$MiLGF6npUQ2xBNqLMS/J1Od3ylnfIwdo3l1YD4GVksUO7PV9U3NES', 'Client', 'I love it man!', '66476777e4ffd.jpg', 2574, 4),
(8, 'kris', 'samara', 'samara123', 'engjell.abazaj007@gmail.com', 'Male', '0692407540', '$2y$10$WCM7rJTE.So4rn6FfUsqIO0mExR2h6q5qOiY.18RGvXMF2BNnswIK', 'Client', 'VERY NICE', '66477832ab886.png', NULL, 4),
(9, 'Ermin', 'Erminaj', 'eri123', 'engjell.abazaj007@gmail.com', 'Other', '0692407540', '$2y$10$WkNqWni0Y9GszFszkdOZUOKgVVzId45vbin4U4XJa0cIwAcmfCR7i', 'employee', NULL, NULL, NULL, NULL),
(10, 'Indrit ', 'Fero', 'indrit123', 'engjell.abazaj007@gmail.com', 'Male', '0692407540', '$2y$10$DlX/NPgremBRgpC4ctq/K.fJCrJ9q.pd0ygR1i0QRi9reFrZrG4pS', 'manager', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `CountryID` int(11) NOT NULL,
  `CountryName` varchar(100) DEFAULT NULL,
  `CountryInfo` text DEFAULT NULL,
  `CountryImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`CountryID`, `CountryName`, `CountryInfo`, `CountryImage`) VALUES
(5, 'Albania', 'Nestled in the heart of Southeast Europe, Albania is a captivating blend of stunning landscapes, rich history, and vibrant culture. From the pristine beaches of the Ionian and Adriatic coasts to the ancient ruins of Butrint and the lively streets of Tirana, Albania offers a unique and unforgettable travel experience. Whether you are an adventurer, a history buff, or a beach lover, Albania has something special to offer.', '667317c15b817.png'),
(6, 'Kosovo', 'Located in the Balkans, Kosovo is a land of breathtaking landscapes, rich cultural heritage, and warm hospitality. Explore the historic streets of Pristina, the capital city, or visit the stunning Rugova Canyon. With its ancient monasteries, vibrant markets, and beautiful natural parks, Kosovo offers an authentic and enriching travel experience for every visitor.', '667317fcea80c.png'),
(9, 'Greece', 'Greece, known as the cradle of Western civilization, beckons with its rich history, stunning landscapes, and vibrant culture. Explore the iconic Acropolis in Athens, where ancient ruins stand against a backdrop of modern city life, or relax on the beautiful beaches of Santorini, with its whitewashed buildings and breathtaking sunsets. Indulge in delicious Mediterranean cuisine, wander through charming villages, and immerse yourself in the mythology and history that permeates every corner of this enchanting country.', '6673188e2895a.png');

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `DestinationID` int(11) NOT NULL,
  `DestinationName` varchar(100) DEFAULT NULL,
  `DestinationInfo` text DEFAULT NULL,
  `DestinationImage` varchar(255) DEFAULT NULL,
  `DestinationPrice` decimal(10,2) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Type` enum('Adventure','Relaxation','Historical','Cultural','Other') DEFAULT NULL,
  `Revenue` decimal(10,2) DEFAULT NULL,
  `CountryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`DestinationID`, `DestinationName`, `DestinationInfo`, `DestinationImage`, `DestinationPrice`, `StartDate`, `EndDate`, `Type`, `Revenue`, `CountryID`) VALUES
(1, 'Tirana', 'Explore the bustling capital of Albania, Tirana, known for its lively atmosphere, historical sites, and vibrant cafe culture. Visit Skanderbeg Square and the National History Museum, and experience the colorful Blloku district.', '66731a035adc5.jpg', 500.00, '2024-07-10', '2024-07-15', 'Cultural', 500.00, 5),
(2, 'Berat', 'Known as the City of a Thousand Windows, Berat is a UNESCO World Heritage site famous for its well-preserved Ottoman architecture. Explore the hillside adorned with white Ottoman houses and ancient churches.', '66731a8621882.jpg', 600.00, '2024-08-01', '2024-08-05', 'Historical', 0.00, 5),
(3, 'Gjirokaster', 'Step back in time in Gjirokaster, a UNESCO World Heritage site known for its stone houses with distinctive slate roofs. Explore Gjirokaster Castle and its military museum, offering panoramic views of the city.', '66731ac5487e1.jpg', 450.00, '2024-09-10', '2024-09-13', 'Historical', 0.00, 5),
(4, 'Saranda', 'Located on the Albanian Riviera, Saranda is a coastal town known for its clear turquoise waters and Mediterranean climate. It serves as a gateway to the UNESCO World Heritage site of Butrint, an ancient city with Greek, Roman, and Byzantine ruins.', '6675d2310a7dd.jpeg', 550.00, '2024-07-20', '2024-07-25', 'Relaxation', 550.00, 5),
(5, 'Valbona Valley', 'Escape to the serene beauty of Valbona Valley in the Albanian Alps. Hike through lush green valleys, visit traditional mountain villages, and experience Albanian hospitality in family-run guesthouses.', '6675d274eb6fa.jpeg', 700.00, '2024-08-15', '2024-07-19', 'Adventure', 0.00, 5),
(6, 'Ksamil', 'Discover the pristine beaches of Ksamil, a hidden gem near Saranda. Swim in crystal-clear waters, relax on sandy beaches, and explore the nearby islands known for their untouched beauty.', '6675d2ad11639.jpg', 400.00, '2024-06-05', '2024-06-08', 'Relaxation', 0.00, 5),
(7, 'Pristina', 'Explore Pristina, the vibrant capital of Kosovo, known for its mix of modernity and tradition. Visit the Newborn Monument, the National Library, and the historic Fatih Mosque.', '6675d35a4c223.jpg', 500.00, '2024-07-05', '2024-07-10', 'Cultural', 0.00, 6),
(8, 'Prizren', 'Discover the charming city of Prizren, with its well-preserved Ottoman architecture, picturesque riverfront, and historical sites such as the Sinan Pasha Mosque and Prizren Fortress.', '6675d3a7403cd.jpg', 550.00, '2024-08-15', '2024-08-19', 'Historical', 0.00, 6),
(9, 'Peja', 'Experience the natural beauty of Peja, a gateway to the Rugova Canyon. Explore the Patriarchate of Peć, a UNESCO World Heritage site, and enjoy hiking in the surrounding mountains.', '6675d3fe5c87a.jpg', 600.00, '2024-09-01', '2024-09-01', 'Adventure', 0.00, 6),
(10, 'Athens', 'Discover Athens, the historic capital of Greece, where ancient landmarks like the Acropolis and Parthenon blend with vibrant neighborhoods like Plaka and Monastiraki. Experience a rich cultural scene with museums, theaters, and lively cafes.', '6675d4567fd11.jpg', 700.00, '2024-06-15', '2024-06-20', 'Historical', 0.00, 9),
(12, 'Crete', 'Explore Crete, the largest Greek island, with its diverse landscapes, ancient ruins, and vibrant cities. Visit the Palace of Knossos, hike the Samaria Gorge, and enjoy the beaches and cuisine of Chania and Heraklion.', '6675d4ca77436.jpg', 800.00, '2024-08-01', '2024-08-07', 'Adventure', 0.00, 9),
(13, 'Santorini', 'Visit the iconic island of Santorini, known for its stunning sunsets, whitewashed buildings, and crystal-clear waters. Explore the charming villages of Oia and Fira, relax on beautiful beaches, and enjoy local cuisine.', '6675d531e2d21.jpg', 850.00, '2024-07-05', '2024-07-09', 'Relaxation', 0.00, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ClientID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`CountryID`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`DestinationID`),
  ADD KEY `CountryID` (`CountryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `ClientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `CountryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `DestinationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `destination`
--
ALTER TABLE `destination`
  ADD CONSTRAINT `destination_ibfk_1` FOREIGN KEY (`CountryID`) REFERENCES `country` (`CountryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
