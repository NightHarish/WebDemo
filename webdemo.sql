-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2021 at 07:21 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `examres`
--

CREATE TABLE `examres` (
  `PK` int(11) NOT NULL,
  `EXAM` text DEFAULT NULL,
  `TEXTBOOK` text NOT NULL,
  `COACHING` text NOT NULL,
  `DATES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examres`
--

INSERT INTO `examres` (`PK`, `EXAM`, `TEXTBOOK`, `COACHING`, `DATES`) VALUES
(0, 'JEE MAINS', 'JEE MAINS TB', 'FIITJEE', 0),
(1, 'NEET', 'NEET TB', 'AKAASH', 0),
(2, 'JEE ADVANCED', 'JEE ADV TB', 'RESONATE', 0),
(3, 'CLAT', 'CLAT TB', 'CLAT TOPPER', 0);

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `PK` int(11) NOT NULL,
  `Name` text NOT NULL,
  `About` text NOT NULL,
  `Source` text NOT NULL,
  `Rating` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`PK`, `Name`, `About`, `Source`, `Rating`) VALUES
(1, 'Valorant', 'Valorant is a free-to-play hero shooter developed and published by Riot Games, for Microsoft Windows. First teased under the codename Project A in October 2019, the game began a closed beta period with limited access on April 7, 2020, followed by an official release on June 2, 2020', 'https://playvalorant.com', '4.0/5.0'),
(2, 'CS:GO', 'Counter-Strike: Global Offensive is a multiplayer first-person shooter developed by Valve and Hidden Path Entertainment. It is the fourth game in the Counter-Strike series. Developed for over two years, Global Offensive was released for Windows, macOS, Xbox 360, and PlayStation 3 in August 2012, and for Linux in 2014.', 'https://store.steampowered.com/app/730/CounterStrike_Global_Offensive/', '4.4/5.0');

-- --------------------------------------------------------

--
-- Table structure for table `intro`
--

CREATE TABLE `intro` (
  `PK` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `department` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intro`
--

INSERT INTO `intro` (`PK`, `name`, `address`, `department`) VALUES
(1, 'Harish Mogalipuvvu', 'Chennai', 'B.Tech CSE');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `PK` int(11) NOT NULL,
  `Subjects` text NOT NULL,
  `Resource_2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`PK`, `Subjects`, `Resource_2`) VALUES
(1, 'Computer Science', 'https://www.openaccessgovernment.org/wp-content/uploads/2020/08/dreamstime_l_124110584.jpg'),
(2, 'Physics', 'https://images.theconversation.com/files/191827/original/file-20171025-25516-g7rtyl.jpg?ixlib=rb-1.1.0&rect=0%2C70%2C7875%2C5667&q=45&auto=format&w=926&fit=clip'),
(3, 'Math', 'https://miro.medium.com/max/875/1*L76A5gL6176UbMgn7q4Ybg.jpeg'),
(4, 'Chemistry ', 'https://res.cloudinary.com/grand-canyon-university/image/fetch/w_750,h_564,c_fill,g_faces,q_auto,f_auto/https://www.gcu.edu/sites/default/files/media/images/Blog/engineering-and-technology/chemistry-materials.jpg'),
(5, 'Geography', 'https://mk0kaleelao979sb1ktf.kinstacdn.com/wp-content/uploads/2019/08/Geography-Terms-In-Arabic-Language.jpg'),
(6, 'History', 'https://i0.wp.com/wsap.academy/wp-content/uploads/2015/03/1123676.jpg?zoom=1.25&resize=700%2C466');

-- --------------------------------------------------------

--
-- Table structure for table `movieres`
--

CREATE TABLE `movieres` (
  `PK` int(11) NOT NULL,
  `Movie name` text NOT NULL,
  `About` text NOT NULL,
  `Rating` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movieres`
--

INSERT INTO `movieres` (`PK`, `Movie name`, `About`, `Rating`) VALUES
(0, 'Godzilla vs Kong', 'Kong and his protectors undertake a perilous journey to find his true home. Along for the ride is Jia, an orphaned girl who has a unique and powerful bond with the mighty beast. However, they soon find themselves in the path of an enraged Godzilla as he cuts a swath of destruction across the globe. The initial confrontation between the two titans -- instigated by unseen forces -- is only the beginning of the mystery that lies deep within the core of the planet.', '8.7/10'),
(1, 'Tom and Jerry', 'A legendary rivalry reemerges when Jerry moves into New York City\'s finest hotel on the eve of the wedding of the century, forcing the desperate event planner to hire Tom to get rid of him. As mayhem ensues, the escalating cat-and-mouse battle soon threatens to destroy her career, the wedding, and possibly the hotel itself.', '5.2/10'),
(2, 'Monster Hunter', 'Behind our world, there is another -- a world of dangerous and powerful monsters that rule their domain with deadly ferocity. When Lt. Artemis and her loyal soldiers are transported from our world to the new one, the unflappable lieutenant receives the shock of her life. In a desperate battle for survival against enormous enemies with incredible powers and unstoppable, terrifying attacks, Artemis teams up with a mysterious hunter who has found a way to fight back.', '5.3/10'),
(3, 'Chaos Walking', 'In Prentisstown, Todd has been brought up to believe that the Spackle released a germ that killed all the women and unleashed Noise on the remaining men. After discovering a patch of silence out in the swamp, his surrogate parents immediately tell him that he has to run, leaving him with only a map of New World, a message, and many unanswered questions. He soon discovers the source of the silence: a girl, named Viola.', '5.7/10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `examres`
--
ALTER TABLE `examres`
  ADD PRIMARY KEY (`PK`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`PK`);

--
-- Indexes for table `intro`
--
ALTER TABLE `intro`
  ADD PRIMARY KEY (`PK`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`PK`);

--
-- Indexes for table `movieres`
--
ALTER TABLE `movieres`
  ADD PRIMARY KEY (`PK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `PK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `intro`
--
ALTER TABLE `intro`
  MODIFY `PK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `PK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
