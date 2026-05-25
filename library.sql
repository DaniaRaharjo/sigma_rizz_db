-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
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
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `Author_ID` varchar(4) NOT NULL,
  `Author_Name` char(20) NOT NULL,
  `Author_Birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`Author_ID`, `Author_Name`, `Author_Birthdate`) VALUES
('1011', 'Anita Walker', '1962-11-01'),
('1012', 'Joseph Alvarez', '1965-01-05'),
('1013', 'Kimberly Brown', '1970-08-03'),
('1014', 'Christian Mason', '1954-01-18'),
('1015', 'Calvin Clark', '1984-02-05'),
('1016', 'Michael Morrison', '1988-10-25'),
('1017', 'Paula Tucker', '1981-09-14'),
('1018', 'Connie Kramer', '1971-08-14'),
('1019', 'Heather Mclean', '1955-12-31'),
('1020', 'Sheri Lewis', '1942-07-09'),
('1021', 'Stacey Blevins', '1942-08-02'),
('1022', 'Sydney Taylor', '1978-02-08'),
('1023', 'Anita Butler', '1965-09-15'),
('1024', 'Donna English', '1977-04-26'),
('1025', 'Julie Barry', '1980-05-03'),
('1026', 'Samantha Allen', '1976-08-01'),
('1027', 'Paul Martinez', '1960-02-24'),
('1028', 'Brian Brown', '1959-03-13'),
('1029', 'Jesse Smith', '1943-08-18'),
('1030', 'Michael Elliott', '1968-07-11'),
('1031', 'Kelly Clark', '1990-03-06'),
('1032', 'Darren Burns', '1946-03-23'),
('1033', 'Robert Smith', '1964-06-16'),
('1034', 'John Clark', '1966-09-24'),
('1035', 'Yvette Daniel', '1937-10-03'),
('1036', 'Ashley Moore', '1961-11-16'),
('1037', 'Barbara Jackson', '1999-03-18'),
('1038', 'Lori Johnson', '1997-09-27'),
('1039', 'Tracy Shaw', '1940-01-29'),
('1040', 'Thomas Stevens', '1934-11-21'),
('1041', 'Jennifer Curtis', '1986-09-10'),
('1042', 'Bradley Stevenson', '1994-12-24'),
('1043', 'Michael Robinson', '1986-04-26'),
('1044', 'Robert Miller', '1948-03-20'),
('1045', 'Patricia Sanchez', '1982-01-11'),
('1046', 'Steven Jackson', '1935-11-19'),
('1047', 'Robert Gray', '1942-04-30'),
('1048', 'Shannon Mitchell', '1979-05-16'),
('1049', 'Levi Wilson', '1956-07-09'),
('1050', 'Isaiah Schwartz', '1966-05-12'),
('1051', 'Joseph Joseph', '1954-01-21'),
('1052', 'Michael Walker', '1966-02-07'),
('1053', 'Patricia Raymond', '1995-06-29'),
('1054', 'Steven Robinson', '1959-01-30');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Book_ID` varchar(4) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `ISBN` varchar(50) NOT NULL,
  `Author_ID` varchar(4) DEFAULT NULL,
  `Stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Book_ID`, `Title`, `ISBN`, `Author_ID`, `Stock`) VALUES
('1234', 'Hello.', '978-3-16-148410-0', '1011', 5),
('1266', 'Political staff evidence.', '978-0-354-98173-6', '1049', 1),
('1288', 'Table alone million.', '978-1-83845-728-0', '1040', 2),
('1334', 'Well exist program.', '978-0-85345-249-2', '1033', 2),
('2175', 'Pretty left same.', '978-1-945759-77-2', '1053', 1),
('2183', 'Cold.', '978-1-84047-420-6', '1046', 2),
('2331', 'Outside modern use.', '978-0-15-754791-7', '1023', 1),
('2413', 'Say interest.', '978-1-114-86545-7', '1034', 1),
('2685', 'Company in body.', '978-1-183-14266-4', '1052', 2),
('2808', 'Walk professor people box.', '978-0-9525031-5-6', '1035', 1),
('3042', 'Time movement.', '978-0-250-01681-5', '1030', 1),
('3115', 'Particularly charge nearly.', '978-1-4223-8315-5', '1011', 3),
('3270', 'Goal ability him.', '978-1-235-83555-1', '1012', 2),
('3334', 'Bad.', '978-0-408-81057-9', '1017', 3),
('3431', 'Someone form force.', '978-0-7700-2762-9', '1048', 1),
('3570', 'Foot dog entire.', '978-0-258-03453-8', '1027', 3),
('3862', 'Board.', '978-0-483-52991-5', '1013', 2),
('4169', 'Ability.', '978-1-944374-73-0', '1037', 1),
('4812', 'Perform.', '978-1-9801-1623-3', '1025', 2),
('5011', 'Dinner ahead but.', '978-1-298-44863-7', '1016', 3),
('5157', 'Remain begin.', '978-1-924983-22-8', '1014', 4),
('5330', 'Clear.', '978-1-56785-254-7', '1050', 1),
('5623', 'Particularly.', '978-1-168-24894-7', '1021', 1),
('5731', 'Before ever.', '978-1-78984-967-7', '1024', 3),
('5752', 'Sense someone.', '978-1-03-470209-2', '1039', 2),
('5864', 'Send.', '978-1-72214-130-1', '1047', 2),
('6354', 'Mean check Democrat.', '978-0-396-67157-2', '1031', 2),
('6528', 'Hard should create national.', '978-1-880365-41-0', '1043', 3),
('6607', 'Catch form kitchen.', '978-0-01-444353-6', '1015', 3),
('6645', 'Dream explain.', '978-1-02-607484-8', '1018', 1),
('6746', 'They religious.', '978-1-5110-0451-0', '1028', 2),
('6786', 'Other eat on.', '978-1-61381-603-5', '1054', 1),
('7053', 'Tend step.', '978-0-8483-8373-2', '1019', 1),
('7614', 'Take in thus.', '978-1-06-770480-3', '1022', 2),
('7715', 'Type interest Republican.', '978-1-71960-800-8', '1038', 1),
('7852', 'Enjoy by.', '978-1-5255-1844-7', '1026', 2),
('8007', 'Bill share remember.', '978-0-09-321991-6', '1041', 3),
('8363', 'Study account record.', '978-0-262-45228-1', '1045', 1),
('8589', 'Yeah participant real.', '978-0-443-48638-8', '1042', 1),
('8656', 'House son summer.', '978-1-4523-0402-1', '1029', 2),
('9008', 'Skill able kind well.', '978-1-63103-594-4', '1044', 1),
('9075', 'Hand make.', '978-1-184-31230-1', '1020', 1),
('9129', 'Bar day.', '978-1-272-94173-4', '1032', 1),
('9153', 'Land down security military.', '978-0-8032-1386-9', '1051', 1),
('9287', 'Despite.', '978-0-502-49606-8', '1036', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `Loan_ID` varchar(4) NOT NULL,
  `Book_ID` varchar(4) NOT NULL,
  `User_ID` varchar(4) NOT NULL,
  `Loan_Date` date NOT NULL,
  `Return_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`Loan_ID`, `Book_ID`, `User_ID`, `Loan_Date`, `Return_Date`) VALUES
('2011', '3115', '8425', '2024-04-09', '2024-08-21'),
('2012', '3270', '9366', '2024-02-14', '2024-08-05'),
('2013', '3862', '4425', '2024-05-01', '2024-07-31'),
('2014', '5157', '8425', '2024-02-03', '2024-07-17'),
('2015', '6607', '6304', '2024-04-15', '2024-08-31'),
('2016', '5011', '8425', '2024-08-23', '2024-09-08'),
('2018', '6645', '1865', '2024-09-14', '2024-09-21'),
('2019', '7053', '9830', '2024-04-07', '2024-08-11'),
('2020', '9075', '2617', '2024-03-21', '2024-04-01'),
('2021', '5623', '9830', '2024-01-19', '2024-02-29'),
('2022', '7614', '1865', '2024-01-04', '2024-03-07'),
('2023', '2331', '4395', '2024-01-15', '2024-06-17'),
('2024', '5731', '8425', '2024-06-20', '2024-07-31'),
('2025', '5011', '3773', '2024-09-04', '2024-09-17'),
('2026', '5011', '2617', '2024-07-07', '2024-08-11'),
('2027', '4812', '8125', '2024-09-16', '2024-09-16'),
('2028', '7852', '4289', '2024-06-29', '2024-07-11'),
('2029', '3570', '4854', '2024-04-15', '2024-09-18'),
('2030', '7614', '9404', '2024-03-28', '2024-09-03'),
('2031', '6746', '7697', '2024-07-11', '2024-08-16'),
('2032', '3570', '6304', '2024-07-21', '2024-08-04'),
('2033', '8656', '585', '2024-06-29', '2024-08-16'),
('2034', '3042', '8125', '2024-04-25', '2024-06-09'),
('2035', '6354', '2471', '2024-01-21', '2024-07-17'),
('2036', '9129', '8425', '2024-04-11', '2024-05-03'),
('2037', '1334', '4395', '2024-05-18', '2024-07-03'),
('2038', '2413', '585', '2024-05-19', '2024-06-18'),
('2039', '3334', '9366', '2024-04-02', '2024-12-23'),
('2040', '2808', '9404', '2024-01-23', '2024-04-08'),
('2041', '9287', '4289', '2024-09-05', '2024-09-18'),
('2042', '4169', '2617', '2024-05-04', '2024-05-04'),
('2043', '7715', '7697', '2024-02-06', '2024-03-02'),
('2044', '3570', '8125', '2024-09-03', '2024-09-22'),
('2045', '7053', '3773', '2024-09-20', '2024-09-22'),
('2046', '5157', '6304', '2024-03-09', '2024-06-25'),
('2047', '6607', '6304', '2024-02-17', '2024-05-06'),
('2048', '5752', '4289', '2024-04-27', '2024-08-07'),
('2049', '8656', '7697', '2024-07-20', '2024-08-09'),
('2050', '1288', '7697', '2024-05-28', '2024-07-09'),
('2051', '8007', '2617', '2024-01-09', '2024-07-19'),
('2052', '7614', '9830', '2024-08-18', '2024-08-18'),
('2053', '5011', '9366', '2024-01-18', '2024-09-01'),
('2054', '7715', '6326', '2024-04-15', '2024-08-31'),
('2055', '8589', '9366', '2024-04-13', '2024-09-16'),
('2056', '5731', '4854', '2024-04-27', '2024-07-23'),
('2057', '6645', '4395', '2024-06-05', '2024-08-23'),
('2058', '6528', '585', '2024-07-03', '2024-09-22'),
('2059', '3115', '6304', '2024-05-10', '2024-07-25'),
('2060', '7852', '2471', '2024-02-03', '2024-03-31'),
('2061', '3042', '2617', '2024-01-26', '2024-03-04'),
('2062', '1334', '6326', '2024-03-09', '2024-05-31'),
('2063', '9008', '2471', '2024-04-17', '2024-08-19'),
('2064', '6645', '4395', '2024-01-04', '2024-05-22'),
('2065', '8656', '2471', '2024-09-03', '2024-09-14'),
('2066', '3862', '4425', '2024-01-19', '2024-06-13'),
('2067', '5157', '8428', '2024-07-13', '2024-08-08'),
('2068', '3334', '8428', '2024-03-25', '2024-12-23'),
('2069', '8363', '8425', '2024-05-14', '2024-09-13'),
('2070', '8007', '8125', '2024-03-18', '2024-04-23'),
('2071', '5623', '4854', '2024-04-18', '2024-04-22'),
('2072', '6746', '4854', '2024-02-08', '2024-04-15'),
('2073', '2183', '3773', '2024-02-11', '2024-02-11'),
('2074', '5864', '2471', '2024-06-27', '2024-09-15'),
('2075', '4812', '4854', '2024-07-03', '2024-09-11'),
('2076', '6607', '4854', '2024-03-11', '2024-07-18'),
('2077', '3431', '9830', '2024-07-07', '2024-08-26'),
('2078', '2183', '8428', '2024-05-01', '2024-07-22'),
('2079', '7852', '6326', '2024-06-18', '2024-07-31'),
('2080', '1266', '7697', '2024-04-28', '2024-07-12'),
('2081', '5330', '4395', '2024-02-13', '2024-02-18'),
('2082', '3270', '8125', '2024-08-10', '2024-09-08'),
('2083', '9153', '1865', '2024-08-27', '2024-08-28'),
('2084', '2685', '9404', '2024-03-17', '2024-04-16'),
('2085', '7852', '8425', '2024-03-14', '2024-04-13'),
('2086', '6746', '4395', '2024-04-27', '2024-09-06'),
('2087', '5864', '9366', '2024-07-12', '2024-08-31'),
('2088', '5157', '7697', '2024-06-04', '2024-06-08'),
('2089', '2808', '4395', '2024-06-19', '2024-08-02'),
('2090', '2175', '6326', '2024-08-14', '2024-08-23'),
('2091', '6786', '9830', '2024-08-17', '2024-09-19'),
('2092', '3270', '2617', '2024-03-18', '2024-05-25'),
('2093', '2685', '6304', '2024-08-09', '2024-08-17'),
('2094', '5731', '4289', '2024-05-30', '2024-08-24'),
('2095', '6528', '6326', '2024-05-23', '2024-09-03'),
('2096', '6528', '585', '2024-03-16', '2024-06-04'),
('2097', '1288', '8425', '2024-04-27', '2024-06-29'),
('2098', '2685', '2471', '2024-02-08', '2024-04-01'),
('2099', '5752', '1865', '2024-02-28', '2024-08-13'),
('2100', '2183', '8428', '2024-02-09', '2024-03-21'),
('2101', '8656', '2617', '2024-04-28', '2024-05-21'),
('2102', '4812', '8425', '2024-09-03', '2024-09-04'),
('2103', '6786', '585', '2024-01-27', '2024-01-31'),
('2104', '3115', '6326', '2024-08-16', '2024-08-19'),
('2105', '1266', '4289', '2024-07-13', '2024-08-28'),
('2106', '2685', '7697', '2024-08-06', '2024-08-28'),
('2107', '2685', '2471', '2024-09-11', '2024-09-18'),
('2108', '8007', '8428', '2024-03-04', '2024-08-08'),
('2109', '4169', '3773', '2024-04-26', '2024-05-02'),
('2110', '6354', '2617', '2024-04-19', '2024-06-26'),
('2111', '4169', '585', '2024-12-22', '2024-12-23'),
('2112', '2413', '2471', '2024-12-22', '2024-12-23');

--
-- Triggers `loan`
--
DELIMITER $$
CREATE TRIGGER `AfterLoanUpdate` AFTER INSERT ON `loan` FOR EACH ROW UPDATE book
    SET Stock = Stock - 1
    WHERE Book_ID = NEW.Book_ID
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `AfterReturnUpdate` AFTER UPDATE ON `loan` FOR EACH ROW UPDATE book
SET Stock = Stock + 1
WHERE Book_ID = NEW.Book_ID AND NEW.Return_Date IS NOT NULL
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `Reserve_ID` varchar(4) NOT NULL,
  `Book_ID` varchar(4) NOT NULL,
  `User_ID` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`Reserve_ID`, `Book_ID`, `User_ID`) VALUES
('3011', '2413', '9366');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` varchar(4) NOT NULL,
  `User_Name` char(20) NOT NULL,
  `User_Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `User_Name`, `User_Address`) VALUES
('1865', 'Benjamin Caldwell', '9932 Allison Pines, East Michelle, PW 44534'),
('2471', 'Linda Alvarez', '12510 Snyder Estates Apt. 237, Lake Robertport, OK 07853'),
('2617', 'Robert Martinez', '311 Larry Cliff, North Jeffstad, KS 03432'),
('3773', 'Jill Fry', '87619 Matthew Garden, Abigailfurt, TX 28957'),
('4289', 'Michael Downs', 'USNV Guerrero, FPO AE 08325'),
('4395', 'Kyle Stanley', '9164 Nicholas Inlet Apt. 554, Brightshire, MT 61686'),
('4425', 'Daniel Harrison DDS', '95457 Christopher Manor Suite 485, Port Samantha, MT 79549'),
('4854', 'Angela Baker', '89681 Cody Ridges, East Angela, WV 20093'),
('585', 'Jesse Schmidt', '755 Lisa Greens, Williamport, SD 12754'),
('6304', 'Erica Davidson', '51540 Barbara Brook, Andrewmouth, DC 89545'),
('6326', 'Elizabeth Bennett', '94365 Young Crescent Apt. 502, Richardsonville, AS 23996'),
('7697', 'Robert Barber', '121 Paul Lane Apt. 891, North Andrewberg, NC 06281'),
('8125', 'Ronald Ramos', '13580 Holly Corner Suite 739, New Paul, FL 69782'),
('8425', 'Tracey Kelly', 'PSC 6481, Box 1952, APO AA 89825'),
('8428', 'Sara Rogers', 'PSC 7341, Box 0118, APO AP 39516'),
('9366', 'Brittany Kim DVM', '80826 Miller Plaza, Shariton, PR 87489'),
('9404', 'Anthony Gomez', '81866 Ross Islands, New Rhondaland, GA 44652'),
('9830', 'Crystal Santos', '6780 Sierra Union, South Jenniferton, CA 08418');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`Author_ID`),
  ADD KEY `idx_author_name` (`Author_Name`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`Book_ID`),
  ADD KEY `Author_ID` (`Author_ID`),
  ADD KEY `idx_title` (`Title`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`Loan_ID`),
  ADD KEY `idx_loan_user` (`User_ID`),
  ADD KEY `idx_loan_book` (`Book_ID`),
  ADD KEY `idx_loan_return` (`Return_Date`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`Reserve_ID`),
  ADD KEY `idx_reserve_user` (`User_ID`),
  ADD KEY `idx_reserve_book` (`Book_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`Author_ID`) REFERENCES `author` (`Author_ID`);

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`Book_ID`) REFERENCES `book` (`Book_ID`),
  ADD CONSTRAINT `loan_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `reserve`
--
ALTER TABLE `reserve`
  ADD CONSTRAINT `reserve_ibfk_1` FOREIGN KEY (`Book_ID`) REFERENCES `book` (`Book_ID`),
  ADD CONSTRAINT `reserve_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
