-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2023 at 12:40 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_barangay`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblactivity`
--

CREATE TABLE `tblactivity` (
  `id` int(11) NOT NULL,
  `dateofactivity` date NOT NULL,
  `activity` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblactivity`
--

INSERT INTO `tblactivity` (`id`, `dateofactivity`, `activity`, `description`) VALUES
(12, '2023-02-01', 'Basketball ', 'Basketball JRF Court at 6:00 PM'),
(13, '2023-02-05', 'Mass', 'Liturgical Mass Communion'),
(14, '2023-02-10', 'Meeting with CR7', 'Meeting with a Famous Person');

-- --------------------------------------------------------

--
-- Table structure for table `tblactivityphoto`
--

CREATE TABLE `tblactivityphoto` (
  `id` int(11) NOT NULL,
  `activityid` int(11) NOT NULL,
  `filename` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblactivityphoto`
--

INSERT INTO `tblactivityphoto` (`id`, `activityid`, `filename`) VALUES
(38, 11, '1485530620716user2.jpg'),
(39, 12, '1675315608899Basketball.png'),
(40, 13, '167532612673611111.jpg'),
(41, 14, '1675330416886222.png'),
(42, 14, '1675330537723Screenshot 2023-02-01 225912.png');

-- --------------------------------------------------------

--
-- Table structure for table `tblblotter`
--

CREATE TABLE `tblblotter` (
  `id` int(11) NOT NULL,
  `yearRecorded` varchar(4) NOT NULL,
  `dateRecorded` date NOT NULL,
  `complainant` text NOT NULL,
  `cage` int(11) NOT NULL,
  `caddress` text NOT NULL,
  `ccontact` int(11) NOT NULL,
  `personToComplain` text NOT NULL,
  `page` int(11) NOT NULL,
  `paddress` text NOT NULL,
  `pcontact` int(11) NOT NULL,
  `complaint` text NOT NULL,
  `actionTaken` varchar(50) NOT NULL,
  `sStatus` varchar(50) NOT NULL,
  `locationOfIncidence` text NOT NULL,
  `recordedby` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblblotter`
--

INSERT INTO `tblblotter` (`id`, `yearRecorded`, `dateRecorded`, `complainant`, `cage`, `caddress`, `ccontact`, `personToComplain`, `page`, `paddress`, `pcontact`, `complaint`, `actionTaken`, `sStatus`, `locationOfIncidence`, `recordedby`) VALUES
(4, '2023', '2023-02-02', 'De Leon, Raina Soriano', 21, 'This is an Address', 2147483647, '17', 21, 'This is an Address', 2147483647, 'Theft', '2nd Option', 'Solved', 'Gym', 'Katarungan');

-- --------------------------------------------------------

--
-- Table structure for table `tblclearance`
--

CREATE TABLE `tblclearance` (
  `id` int(11) NOT NULL,
  `clearanceNo` int(11) NOT NULL,
  `residentid` int(11) NOT NULL,
  `findings` text NOT NULL,
  `purpose` text NOT NULL,
  `orNo` int(11) NOT NULL,
  `samount` int(11) NOT NULL,
  `dateRecorded` date NOT NULL,
  `recordedBy` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclearance`
--

INSERT INTO `tblclearance` (`id`, `clearanceNo`, `residentid`, `findings`, `purpose`, `orNo`, `samount`, `dateRecorded`, `recordedBy`, `status`) VALUES
(11, 1, 18, 'Good System', 'Visitor Pass Request', 5, 15000, '2023-02-02', 'Raina', 'Approved'),
(12, 2, 17, 'Cleared for Partying', 'Party Holding Request', 6, 5000, '2023-02-02', 'John Michael', 'Approved'),
(13, 0, 18, 'Too Many People', 'Party Holding Request', 0, 0, '2023-02-02', 'Raina', 'Disapproved');

-- --------------------------------------------------------

--
-- Table structure for table `tblhousehold`
--

CREATE TABLE `tblhousehold` (
  `id` int(11) NOT NULL,
  `householdno` int(11) NOT NULL,
  `zone` varchar(11) NOT NULL,
  `totalhouseholdmembers` int(2) NOT NULL,
  `headoffamily` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblhousehold`
--

INSERT INTO `tblhousehold` (`id`, `householdno`, `zone`, `totalhouseholdmembers`, `headoffamily`) VALUES
(4, 5, '2', 0, '17'),
(6, 2, '2', 0, '18'),
(7, 9, '2', 0, '19');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogs`
--

CREATE TABLE `tbllogs` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `logdate` datetime NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbllogs`
--

INSERT INTO `tbllogs` (`id`, `user`, `logdate`, `action`) VALUES
(32, 'Administrator', '2017-02-06 09:04:25', 'Added Household Number 2'),
(33, 'Administrator', '2023-02-01 21:17:49', 'Update Official named Dignadice, John Michael'),
(34, 'Administrator', '2023-02-01 21:19:34', 'Update Official named Billo, Harold S.'),
(35, 'Administrator', '2023-02-01 21:20:59', 'Update Official named Domondon, Philip T.'),
(36, 'Administrator', '2023-02-01 21:23:10', 'Update Official named Bernabe, Carlos'),
(37, 'Administrator', '2023-02-01 21:23:27', 'Update Official named Domondon, Philip T.'),
(38, 'Administrator', '2023-02-01 21:25:00', 'Update Official named Feria, Steve Vincent C.'),
(39, 'Administrator', '2023-02-01 21:25:13', 'Update Official named Dignadice, John Michael'),
(40, 'Administrator', '2023-02-01 21:25:24', 'Update Official named Billo, Harold S.'),
(41, 'Administrator', '2023-02-01 21:26:48', 'Added Activity Basketball '),
(42, 'Administrator', '2023-02-01 21:30:38', 'Update Staff with name of Staff'),
(43, 'Administrator', '2023-02-01 23:02:40', 'Added Resident named Dignadice, John Michael Pasia'),
(44, 'Administrator', '2023-02-01 23:20:49', 'Update Official named Labrado, Joshua Quineri'),
(45, 'Administrator', '2023-02-01 23:31:15', 'Update Official named Patdu, Jovella'),
(46, 'Administrator', '2023-02-01 23:53:18', 'Update Official named Cosico, Faith Keithrynne'),
(47, 'Administrator', '2023-02-01 23:53:43', 'Added Staff with name of Alfonso, Major'),
(48, 'Administrator', '2023-02-01 23:54:06', 'Update Staff with name of Austria, Russ'),
(49, 'Administrator', '2023-02-01 23:54:41', 'Added Staff with name of Bilbao, Darrel'),
(50, 'Administrator', '2023-02-01 23:55:13', 'Added Staff with name of Oira, Arianna'),
(51, 'Administrator', '2023-02-01 23:55:45', 'Added Staff with name of Corpuz, Nina'),
(52, 'Administrator', '2023-02-01 23:56:29', 'Added Zone number 1'),
(53, 'Administrator', '2023-02-01 23:56:45', 'Added Zone number 2'),
(54, 'Administrator', '2023-02-01 23:56:52', 'Added Zone number 2'),
(55, 'Administrator', '2023-02-01 23:57:06', 'Added Zone number 2'),
(56, 'Administrator', '2023-02-02 00:00:44', 'Added Resident named De Leon, Raina Soriano'),
(57, 'Administrator', '2023-02-02 00:00:59', 'Added Zone number 2'),
(58, 'Administrator', '2023-02-02 00:01:36', 'Update Zone number '),
(59, 'Administrator', '2023-02-02 00:01:49', 'Update Zone number '),
(60, 'Administrator', '2023-02-02 00:02:30', 'Update Resident named De Leon, Raina Soriano'),
(61, 'Administrator', '2023-02-02 00:02:56', 'Update Resident named Dignadice, John Michael Pasia'),
(62, 'Administrator', '2023-02-02 00:03:30', 'Added Zone number '),
(63, 'Administrator', '2023-02-02 00:04:28', 'Added Zone number '),
(64, 'Administrator', '2023-02-02 00:05:12', 'Added Zone number '),
(65, 'Administrator', '2023-02-02 00:07:05', 'Added Zone number 2'),
(66, 'Administrator', '2023-02-02 00:12:12', 'Added Zone number 2'),
(67, 'Administrator', '2023-02-02 00:22:06', 'Added Activity Mass'),
(68, 'Administrator', '2023-02-02 00:22:09', 'Update Activity Mass'),
(69, 'Administrator', '2023-02-02 00:24:14', 'Added Household Number 5'),
(70, 'Administrator', '2023-02-02 00:37:15', 'Update Resident named Dignadice, John Michael Pasia'),
(71, 'Administrator', '2023-02-02 00:37:42', 'Update Resident named Dignadice, John Michael Pasia'),
(72, 'Administrator', '2023-02-02 00:37:56', 'Update Resident named Dignadice, John Michael Pasia'),
(73, 'Administrator', '2023-02-02 00:38:21', 'Update Resident named Dignadice, John Michael Pasia'),
(74, 'Administrator', '2023-02-02 00:40:24', 'Added Household Number 2'),
(75, 'Administrator', '2023-02-02 00:40:30', 'Update Household Number 2'),
(76, 'Administrator', '2023-02-02 00:40:38', 'Added Household Number 2'),
(77, 'Administrator', '2023-02-02 01:27:36', 'Update Official named Dela, Juan'),
(78, 'Administrator', '2023-02-02 01:28:36', 'Added Staff with name of Juanita, Dela Pena'),
(79, 'Administrator', '2023-02-02 01:28:48', 'Update Zone number '),
(80, 'Administrator', '2023-02-02 01:32:00', 'Added Resident named Dela Cruz, Juanito Fili'),
(81, 'Administrator', '2023-02-02 01:32:34', 'Added Household Number 9'),
(82, 'Administrator', '2023-02-02 01:33:36', 'Added Activity Meeting with CR7'),
(83, 'Administrator', '2023-02-02 01:49:49', 'Added Blotter Request by De Leon, Raina Soriano');

-- --------------------------------------------------------

--
-- Table structure for table `tblofficial`
--

CREATE TABLE `tblofficial` (
  `id` int(11) NOT NULL,
  `sPosition` varchar(50) NOT NULL,
  `completeName` text NOT NULL,
  `pcontact` varchar(20) NOT NULL,
  `paddress` text NOT NULL,
  `termStart` date NOT NULL,
  `termEnd` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblofficial`
--

INSERT INTO `tblofficial` (`id`, `sPosition`, `completeName`, `pcontact`, `paddress`, `termStart`, `termEnd`, `status`) VALUES
(4, 'Captain', 'Dela, Juan', '09497826387', '1234 Maginhawa St, Quezon City, Metro Manila, Philippines', '2020-08-14', '2023-08-14', 'Ongoing Term'),
(5, 'Kagawad(Ordinance)', 'Billo, Harold S.', '09123456789', '5678 Bacoor Ave. Brgy. San Dionisio Parañaque City 1711 Philippines', '2020-08-14', '2023-08-14', 'Ongoing Term'),
(6, 'Kagawad(Public Safety)', 'Domondon, Philip T.', '09876543210', '9102 Magsaysay Blvd. Brgy. San Roque Quezon City 1112 Philippines', '2020-08-14', '2023-08-14', 'Ongoing Term'),
(7, 'Kagawad(Tourism)', 'Bernabe, Carlos', '09151234567', '7221 Zapote Rd. Brgy. San Nicolas Manila 1012 Philippines', '2020-08-14', '2023-08-14', 'Ongoing Term'),
(8, 'Kagawad(Budget & Finance)', 'Feria, Steve Vincent C.', '09187654321', '6654 Taft Ave. Brgy. San Antonio Pasay City 1300 Philippines', '2020-08-14', '2023-08-14', 'Ongoing Term'),
(9, 'Kagawad(Agriculture)', 'Labrado, Joshua Quineri', '09171234567', '4764 Narra St., Brgy. San Isidro, Makati City, Philippines 1234', '2020-08-14', '2023-08-14', 'Ongoing Term'),
(10, 'Kagawad(Education)', 'Patdu, Jovella', '09171234567', '1621 Mabolo St, Brgy Poblacion, Makati City, Philippines 1210', '2020-08-14', '2023-08-14', 'Ongoing Term'),
(11, 'Kagawad(Infrastracture)', 'Cosico, Faith Keithrynne', '09161234567', '4962 Estrella Ave, Brgy. San Antonio, Pasig City, Philippines 1605', '2020-08-14', '2023-08-14', 'Ongoing Term');

-- --------------------------------------------------------

--
-- Table structure for table `tblpermit`
--

CREATE TABLE `tblpermit` (
  `id` int(11) NOT NULL,
  `residentid` int(11) NOT NULL,
  `businessName` text NOT NULL,
  `businessAddress` text NOT NULL,
  `typeOfBusiness` varchar(50) NOT NULL,
  `orNo` int(11) NOT NULL,
  `samount` int(11) NOT NULL,
  `dateRecorded` date NOT NULL,
  `recordedBy` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpermit`
--

INSERT INTO `tblpermit` (`id`, `residentid`, `businessName`, `businessAddress`, `typeOfBusiness`, `orNo`, `samount`, `dateRecorded`, `recordedBy`, `status`) VALUES
(9, 18, 'iBEST', 'Unit 7B, Sterling Place Condominium, Ayala Avenue, Makati City, Metro Manila', 'Option 1', 15, 10000, '2023-02-02', 'Lemonada', 'Approved'),
(10, 17, 'Premiumly', 'Blk 89 L6A G.Araneta Katarungan Village, Brgy. Poblacion', 'Option 2', 20, 15000, '2023-02-02', 'jmpdignadice', 'Approved'),
(11, 19, 'France Shop', 'BLK 123 L2A F. JUANITO KATARUNGAN VILLAGE BRGY. POBLACION MUNTINLUPA CITY', 'Option 1', 9, 1500, '2023-02-02', 'A1', 'Approved'),
(12, 19, 'iWorst', 'Blk 29 L6A G.Araneta Katarungan Village, Brgy. Poblacion', 'Option 2', 0, 0, '2023-02-02', 'A1', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `tblresident`
--

CREATE TABLE `tblresident` (
  `id` int(11) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `bdate` varchar(20) NOT NULL,
  `bplace` text NOT NULL,
  `age` int(11) NOT NULL,
  `barangay` varchar(120) NOT NULL,
  `zone` varchar(5) NOT NULL,
  `totalhousehold` int(5) NOT NULL,
  `differentlyabledperson` varchar(100) NOT NULL,
  `relationtohead` varchar(50) NOT NULL,
  `maritalstatus` varchar(50) NOT NULL,
  `bloodtype` varchar(10) NOT NULL,
  `civilstatus` varchar(20) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `monthlyincome` int(12) NOT NULL,
  `householdnum` int(11) NOT NULL,
  `lengthofstay` int(11) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `skills` text NOT NULL,
  `igpitID` int(11) NOT NULL,
  `philhealthNo` int(12) NOT NULL,
  `highestEducationalAttainment` varchar(50) NOT NULL,
  `houseOwnershipStatus` varchar(50) NOT NULL,
  `landOwnershipStatus` varchar(20) NOT NULL,
  `dwellingtype` varchar(20) NOT NULL,
  `waterUsage` varchar(20) NOT NULL,
  `lightningFacilities` varchar(20) NOT NULL,
  `sanitaryToilet` varchar(20) NOT NULL,
  `formerAddress` text NOT NULL,
  `remarks` text NOT NULL,
  `image` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblresident`
--

INSERT INTO `tblresident` (`id`, `lname`, `fname`, `mname`, `bdate`, `bplace`, `age`, `barangay`, `zone`, `totalhousehold`, `differentlyabledperson`, `relationtohead`, `maritalstatus`, `bloodtype`, `civilstatus`, `occupation`, `monthlyincome`, `householdnum`, `lengthofstay`, `religion`, `nationality`, `gender`, `skills`, `igpitID`, `philhealthNo`, `highestEducationalAttainment`, `houseOwnershipStatus`, `landOwnershipStatus`, `dwellingtype`, `waterUsage`, `lightningFacilities`, `sanitaryToilet`, `formerAddress`, `remarks`, `image`, `username`, `password`) VALUES
(17, 'Dignadice', 'John Michael', 'Pasia', '2001-08-14', 'Manila', 21, 'Poblacion', '', 5, '', 'Proprietor', 'Single', 'Type O', 'Single', 'Student', 15000, 5, 15, 'Catholic', 'Filipino', 'Male', '099999111', 1111, 99999111, 'Master’s degree', 'Own Home', 'Care Taker', '3rd Option', '', 'Solar', '', 'Cavite City', 'Undergoing Process', '1675321360285_Screenshot 2023-02-01 225912.png', 'jmpdignadice', 'cutie'),
(18, 'De Leon', 'Raina', 'Soriano', '2001-08-14', 'Manila', 21, 'Poblacion', '2', 5, '', 'Proprietor', 'Single', 'Type O', 'Single', 'Student', 50000, 2, 36, 'Catholic', 'Filipino', 'Female', '1111111', 5, 1111111, 'Vocational', 'Own Home', 'Tenant', '1st Option', 'Maynilad', '1111111', 'Village Compliant', 'Pasig City', 'Good Person', '1675324844679_Screenshot 2023-02-02 000013.png', 'Lemonada', '1234'),
(19, 'Dela Cruz', 'Juanito', 'Fili', '2009-08-10', 'Manila', 13, 'Poblacion', '1', 7, '', 'Proprietor', 'Single', 'Type O', 'Single', 'Student', 50000, 9, 5, 'Catholic', 'Filipino', 'Male', '22222', 7, 111111, 'High school, undergrad', 'Rent', 'Landless', '3rd Option', 'Maynilad', 'Electric', 'Village Compliant', 'Pasay City', 'Good Person', '1675330320633_Cutie.png', 'A1', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`id`, `name`, `username`, `password`) VALUES
(1, 'Austria, Russ', 'JamalTheNinja', '1234'),
(2, 'Alfonso, Major', 'PrinceMU', '1234'),
(3, 'Bilbao, Darrel', 'Scarlet', '1234'),
(4, 'Oira, Arianna', 'Ari', '1234'),
(5, 'Corpuz, Nina', 'Rynne', '1234'),
(6, 'Juanita, Dela Pena', 'PrincessMU', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `username`, `password`, `type`) VALUES
(1, 'Katarungan', 'Katarungan', 'administrator'),
(2, 'zone', '1234', 'zoneleader');

-- --------------------------------------------------------

--
-- Table structure for table `tblzone`
--

CREATE TABLE `tblzone` (
  `id` int(5) NOT NULL,
  `zone` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblzone`
--

INSERT INTO `tblzone` (`id`, `zone`, `username`, `password`) VALUES
(0, '1', 'Detroit', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblactivity`
--
ALTER TABLE `tblactivity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblactivityphoto`
--
ALTER TABLE `tblactivityphoto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblotter`
--
ALTER TABLE `tblblotter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclearance`
--
ALTER TABLE `tblclearance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhousehold`
--
ALTER TABLE `tblhousehold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbllogs`
--
ALTER TABLE `tbllogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblofficial`
--
ALTER TABLE `tblofficial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpermit`
--
ALTER TABLE `tblpermit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresident`
--
ALTER TABLE `tblresident`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblzone`
--
ALTER TABLE `tblzone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblactivity`
--
ALTER TABLE `tblactivity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblactivityphoto`
--
ALTER TABLE `tblactivityphoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tblblotter`
--
ALTER TABLE `tblblotter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblclearance`
--
ALTER TABLE `tblclearance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblhousehold`
--
ALTER TABLE `tblhousehold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbllogs`
--
ALTER TABLE `tbllogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `tblofficial`
--
ALTER TABLE `tblofficial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblpermit`
--
ALTER TABLE `tblpermit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblresident`
--
ALTER TABLE `tblresident`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
