-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2021 at 03:21 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payments`
--

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(128) NOT NULL,
  `ProviderKey` varchar(128) NOT NULL,
  `ProviderDisplayName` longtext DEFAULT NULL,
  `UserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(255) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('03ca58e6-4d8d-43f7-9182-da8a92a850f0', 'fikri', 'FIKRI', 'fikri.habibie.fh@gmail.com', 'FIKRI.HABIBIE.FH@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEJNe1zt6+40QmpWSv4D1gZd0u1p1v4vXN1vZLzUrwrdJW9GbSt/Z9OTEe9habhczXg==', '5TX3PEN7SZFVTOFOXIR64RZSKXM2DQ5O', 'a96d4668-7a8a-4b11-91f4-4f0a9a46123a', NULL, 0, 0, NULL, 1, 0),
('16fffeae-d6c4-4fc8-8fba-333276f2a5d8', 'coba', 'COBA', 'coba@gmail.com', 'COBA@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEJERjqk2sGS3PxvROlgRpGjT3FZrPllKWPOnT4/qOgjzHNC2yWsXy3DdxKDPXYcsyg==', 'MH6VHRFJAKGXYTW3WL5XGUF575A344D6', '0f3c9e52-91fc-4588-a207-3dd25ecc32b4', NULL, 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(128) NOT NULL,
  `Name` varchar(128) NOT NULL,
  `Value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `PaymentDetailId` int(11) NOT NULL,
  `CardOwnerName` longtext DEFAULT NULL,
  `CardNumber` longtext DEFAULT NULL,
  `ExpirationDate` longtext DEFAULT NULL,
  `SecurityCode` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`PaymentDetailId`, `CardOwnerName`, `CardNumber`, `ExpirationDate`, `SecurityCode`) VALUES
(1, 'Fikri Habibie', '12345', '2021/07/21', '54321'),
(3, 'Rudi Santoso', '67890', '2021/03/15', '09876'),
(4, 'Shelly', '74289', '2024-09-12', '83274'),
(5, 'Tono', '13579', '2020/11/08', '97531'),
(6, 'Budi', '24680', '2021/03/19', '08642');

-- --------------------------------------------------------

--
-- Table structure for table `refreshtokens`
--

CREATE TABLE `refreshtokens` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) DEFAULT NULL,
  `Token` longtext DEFAULT NULL,
  `JwtId` longtext DEFAULT NULL,
  `IsUsed` tinyint(1) NOT NULL,
  `IsRevoked` tinyint(1) NOT NULL,
  `AddedDate` datetime(6) NOT NULL,
  `ExpiryDate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `refreshtokens`
--

INSERT INTO `refreshtokens` (`Id`, `UserId`, `Token`, `JwtId`, `IsUsed`, `IsRevoked`, `AddedDate`, `ExpiryDate`) VALUES
(1, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', 'WXC4D783PU2NAX7ACKP3MT2S6RELQSX75YW8f248d6e-b0a0-4580-8f94-b38edf0a0e01', 'de3da3e0-c64e-4bb1-9e9e-318a5a4cd7eb', 1, 0, '2021-10-21 01:19:28.051445', '2022-04-21 01:19:28.051477'),
(2, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', 'O8AVPNU4961V52UNDIFQYFQKQXL2KDDKO956507734e-3e8a-4fe6-94e2-030fd9e92495', '6682515c-b62e-4bd2-acd1-948a5b2d0d47', 0, 0, '2021-10-21 01:20:03.924061', '2022-04-21 01:20:03.924061'),
(3, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', 'GTTF6UW8ROTKOYZTJTW1LYX3MYIL3VGZDMR2af7a807-0be4-4d07-bbff-0a23a0d63d65', '91daa10d-8083-467c-ae78-3b15dbbf79db', 0, 0, '2021-10-21 01:23:40.087171', '2022-04-21 01:23:40.087199'),
(4, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', 'W3OSDCWPCIE9TJM6F0C7GT75NG3I5GV4K7Sbb2d1293-31f5-4f2c-86c0-ded0995b84b1', '4674a8aa-798b-457a-abe1-b135e99abfbe', 0, 0, '2021-10-21 01:27:37.503851', '2022-04-21 01:27:37.503881'),
(5, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', 'FCI94O7I0G7Y8O4I8PH5OE284TQGYNPAMR6ffdb86c3-b9cb-4404-a75d-564c0a195526', '5f27ed01-2c78-4583-ac20-9ce0183f38ca', 0, 0, '2021-10-21 22:49:08.970169', '2022-04-21 22:49:08.970198'),
(6, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', '9TF15ANT9MFRWESHOHTMG323L5MEG07B5KB2bc5c800-bba0-4eca-b52a-f02ae06a1786', '828d71d1-b6a8-430e-97fe-a82a0a0ea5d4', 1, 0, '2021-10-21 22:50:35.958485', '2022-04-21 22:50:35.958514'),
(7, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', 'K22AEEI0PKM84C4KWNIJ9YAPOYD8ZAVQSZE3332b1f9-b051-46c4-8b6a-1f9e4fc55901', '8d01b041-6533-4e4c-9d7f-6052a530e719', 0, 0, '2021-10-21 22:50:59.897948', '2022-04-21 22:50:59.897949'),
(8, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', 'IW4DH4MDBZW146BJW3HELBM9DDH018LEY9M7420df94-ac27-48b8-b62b-c99ae2f01745', '68038e5f-aeff-4df6-ab64-6fb94513b088', 1, 0, '2021-10-21 22:56:28.677311', '2022-04-21 22:56:28.677339'),
(9, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', 'J3EZWVE8WQ2U5LH5S480BJ2GNB40BU7ZT7Xba87560b-cc6e-4166-a1a1-7931ec2bc2d1', '03a7c6cb-ff1e-4960-929c-cb0ced30fb48', 0, 0, '2021-10-21 22:56:49.713261', '2022-04-21 22:56:49.713262'),
(10, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', 'DST94ERCWWM4G671WVSNXHWCPI1NBN9N73Xd058d69a-ac53-4750-a14b-6e4006425cd5', '866d7947-fc43-4762-8087-da2e97eacc00', 1, 0, '2021-10-21 22:58:51.011636', '2022-04-21 22:58:51.011636'),
(11, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', 'IVOT9UW5573YVD0O9VUFY8RVDPVA17LZID36ee25812-5837-4272-a119-808d4278fe38', '4e96e4a5-4c37-42bf-8aaf-6b47a6d89796', 0, 0, '2021-10-21 22:59:19.270169', '2022-04-21 22:59:19.270169'),
(12, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', 'P0CSKTAAQJQ96JH2S5G7MZFIHRQSUNR5BH273cadfcb-37c2-404f-b7c4-215b3ac75163', '6a60f414-4b70-4eaf-b509-c2502b82909d', 1, 0, '2021-10-21 23:11:48.885292', '2022-04-21 23:11:48.885321'),
(13, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', '1TL5SN1V2UQOLF4FVUQAH3L10VBL7G9FGF02682c23a-9800-48fc-8168-bc3914d17193', '6259d44c-e266-493d-a224-78948f3943d2', 1, 0, '2021-10-21 23:15:54.982552', '2022-04-21 23:15:54.982580'),
(14, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', '9N00BDKLZX877Q9NS8BGTBEF39UFN8UEDJM23c220fa-0cfc-4b3a-899e-3bc21d114314', '8ec40b36-801c-4fcf-976f-61662cae5860', 0, 0, '2021-10-21 23:33:00.195307', '2022-04-21 23:33:00.195339'),
(15, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', 'WU0VITD51S1Z0BKGRX2DH5YA46V03U8B13Y70f43abd-4f0d-410c-a868-cc8b1f3e55a0', '7f9b8299-778d-4f76-b499-c13f9e1b953e', 1, 0, '2021-10-21 23:34:03.159501', '2022-04-21 23:34:03.159528'),
(16, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', '14887629NHGSAW990PB9VBFUFINUGFSAB0E78795a8d-1cd6-4ab8-982c-346aafc525fa', '4dfd6caf-1856-4384-b51b-40b5c58609b5', 1, 0, '2021-10-21 23:45:14.864518', '2022-04-21 23:45:14.864546'),
(17, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', 'OXLEXKZQWMZEILTBNUPZ30Q90BHA98QGX3Q16e68d3f-67be-4ec3-9989-e456f03eb866', 'e4f6f2f9-f856-428d-9668-96d5e63c6aca', 0, 0, '2021-10-21 23:50:38.535134', '2022-04-21 23:50:38.535163'),
(18, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', '0TK87YV1G98LOQ0CHSPWKB5SPZ3QLZAHTOZ216e6a40-3bc2-4f67-a8ed-07b757a73a75', '6d4ff094-4250-4843-9a40-b96fb0dbcbf4', 0, 0, '2021-10-21 23:54:06.181301', '2022-04-21 23:54:06.181328'),
(19, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', 'QER73FQYY5HNU6Z8E1KNSIE97ZE0NLEPH3T4b8c990a-71e3-424e-b300-1381a5dc6c50', 'afefdfdc-d4de-4105-94a1-08dcfcb0171b', 0, 0, '2021-10-21 23:57:45.659576', '2022-04-21 23:57:45.659605'),
(20, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', 'LAG699PQ8STD6665K4JDAQJ3KX609AYWDW78c8a93af-3bc2-4a23-ab44-6485ec041e98', 'e8928eac-f473-4170-b2aa-38cceb9740ed', 0, 0, '2021-10-22 00:08:35.679531', '2022-04-22 00:08:35.679558'),
(21, '03ca58e6-4d8d-43f7-9182-da8a92a850f0', '8CEI0452HU5VA19OW2B0LXC0FUYAYUF8X913070ce53-1c1e-4189-89ea-d39fcdff0150', '26fc4f84-4f4e-489c-ad2c-5a86f7c1eca4', 0, 0, '2021-10-22 00:11:31.429529', '2022-04-22 00:11:31.429558'),
(22, '16fffeae-d6c4-4fc8-8fba-333276f2a5d8', 'K3E18YF086HWVVUZ33M6PEG5EJE0H0D1RBYe092535f-dd3b-43ea-950c-18f231fa312a', '772f3d31-d0cd-4339-ac6c-82fd0dc1d124', 0, 0, '2021-10-22 00:31:28.523748', '2022-04-22 00:31:28.523807'),
(23, '16fffeae-d6c4-4fc8-8fba-333276f2a5d8', '1SIB06YG4AYHX2PUJM9N8ZPH7D0IGPORCZ71aa8481a-6e37-4c71-8a81-e1f3abba23ba', '44bac3bd-adf0-4d00-96fe-c29f8285503f', 0, 0, '2021-10-22 01:00:47.483398', '2022-04-22 01:00:47.483476'),
(24, '16fffeae-d6c4-4fc8-8fba-333276f2a5d8', 'CYNGU8AN7M49H6WUWY6MM1JRCEBU6V3E8L1519608ce-c243-4cab-84a2-33002272472c', 'a186aa2d-b273-4046-bd42-4ff2056c4667', 0, 0, '2021-10-22 01:04:59.533952', '2022-04-22 01:04:59.534033');

-- --------------------------------------------------------

--
-- Table structure for table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20211020225531_Initial Migration', '5.0.11'),
('20211021003955_Adding authentication to our Api', '5.0.11'),
('20211021011817_Added refresh tokens table', '5.0.11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indexes for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indexes for table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indexes for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indexes for table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`PaymentDetailId`);

--
-- Indexes for table `refreshtokens`
--
ALTER TABLE `refreshtokens`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_RefreshTokens_UserId` (`UserId`);

--
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `PaymentDetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `refreshtokens`
--
ALTER TABLE `refreshtokens`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `refreshtokens`
--
ALTER TABLE `refreshtokens`
  ADD CONSTRAINT `FK_RefreshTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
