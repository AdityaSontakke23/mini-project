-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 07, 2025 at 02:40 PM
-- Server version: 8.0.40
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `14032025_1`
--
CREATE DATABASE IF NOT EXISTS `14032025_1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `14032025_1`;

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`username`, `password`) VALUES
('', ''),
('Hello', 'Hello'),
('Hiiii', 'Hiiiiiiiiii');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `salary` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `gender`, `salary`) VALUES
(1, 'Mickey Mouse', 'Male', 1200000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);
--
-- Database: `16032025_1`
--
CREATE DATABASE IF NOT EXISTS `16032025_1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `16032025_1`;

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`name`, `username`, `password`, `email`) VALUES
('', '', '', ''),
('mickey', 'mickeyyyyy', 'mic', 'mic@gmialc,om'),
('mickey', 'mickey', 'mickey@disney.com', 'mickey@disney.com'),
('', '', '', ''),
('sdb', 'bdsf', 'jbkfs', '`kjbd'),
('', '', '', ''),
('Hello', 'Hello', 'Hello', 'Hello@gmail.com'),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', '');
--
-- Database: `ClimateSync`
--
CREATE DATABASE IF NOT EXISTS `ClimateSync` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `ClimateSync`;

-- --------------------------------------------------------

--
-- Table structure for table `sustainable_practices`
--

CREATE TABLE `sustainable_practices` (
  `id` int NOT NULL,
  `city` varchar(100) NOT NULL,
  `category` enum('urban','rural') NOT NULL,
  `practice1_title` varchar(255) NOT NULL,
  `practice1_description` text NOT NULL,
  `practice2_title` varchar(255) NOT NULL,
  `practice2_description` text NOT NULL,
  `practice3_title` varchar(255) NOT NULL,
  `practice3_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sustainable_practices`
--

INSERT INTO `sustainable_practices` (`id`, `city`, `category`, `practice1_title`, `practice1_description`, `practice2_title`, `practice2_description`, `practice3_title`, `practice3_description`) VALUES
(1, 'Mumbai', 'urban', 'Air Pollution', 'Control Air Pollution', 'Noise Pollution', 'Less Honking', 'Water Wastage', 'Efficient Water Usage'),
(2, 'Pune', 'urban', 'Waste Management', 'Promote household-level waste segregation', 'Public Transport', 'Encourage use of e-buses and bicycles', 'Green Cover', 'Increase urban tree plantations'),
(3, 'Bangalore', 'urban', 'Water Conservation', 'Implement rainwater harvesting systems', 'Traffic Emissions', 'Promote carpooling and EVs', 'Plastic Waste', 'Ban single-use plastics in public places'),
(4, 'Delhi', 'urban', 'Air Pollution', 'Introduce more green buffers and smog towers', 'Energy Usage', 'Promote rooftop solar panels', 'Noise Pollution', 'Strict time limits for construction work'),
(5, 'Rampur', 'rural', 'Water Usage', 'Use of drip irrigation techniques', 'Organic Farming', 'Avoid chemical fertilizers', 'Renewable Energy', 'Promote use of solar water pumps'),
(6, 'Baramati', 'rural', 'Soil Conservation', 'Use of contour ploughing and bunds', 'Animal Waste', 'Use of gobar gas for cooking fuel', 'Afforestation', 'Plant native trees to prevent erosion'),
(7, 'Chhindwara', 'rural', 'Water Conservation', 'Build check dams and recharge wells', 'Fuel Usage', 'Replace firewood with improved chulhas', 'Community Awareness', 'Conduct Gram Sabha workshops'),
(8, 'Kolkata', 'urban', 'Flood Management', 'Upgrade drainage and embankments', 'Urban Gardens', 'Promote rooftop and vertical gardens', 'Sustainable Transport', 'Improve pedestrian and cycle lanes'),
(9, 'Sundarpur', 'rural', 'Forest Conservation', 'Prevent illegal logging and promote community forests', 'Water Pollution', 'Prevent dumping near water bodies', 'Sustainable Livelihoods', 'Train villagers in eco-friendly crafts'),
(10, 'Ahmedabad', 'urban', 'Heat Management', 'Promote cool roofs and reflective paints', 'Water Recycling', 'Use greywater for gardening', 'Urban Forests', 'Plant trees in public areas'),
(11, 'Latur', 'rural', 'Water Scarcity', 'Promote community wells and tanks', 'Education', 'Train farmers in sustainable methods', 'Waste to Energy', 'Use agricultural waste in biogas'),
(12, 'Nagpur', 'urban', 'Smart Energy', 'Install solar panels on public buildings', 'Tree Plantation', 'Mandatory green belts near highways', 'Traffic', 'Promote e-rickshaws'),
(13, 'Thiruvananthapuram', 'urban', 'Waste Segregation', 'Door-to-door garbage segregation campaigns', 'Rainwater Harvesting', 'Enforce rules for buildings', 'Beach Cleanliness', 'Local community-led beach cleanups'),
(14, 'Rewa', 'rural', 'Solar Energy', 'Solar streetlights for villages', 'Water Management', 'Canal lining to prevent seepage', 'Crop Rotation', 'Encourage diversified cropping'),
(15, 'Varanasi', 'urban', 'River Pollution', 'Install sewage treatment near Ganga', 'Cultural Awareness', 'Clean Ganga campaigns', 'Plastic Ban', 'Ban single-use plastics in ghats'),
(16, 'Gadchiroli', 'rural', 'Wildlife Conservation', 'Protect forest habitats', 'Livelihood', 'Eco-tourism based income', 'Clean Cooking', 'Distribute LPG under Ujjwala Yojana'),
(17, 'Indore', 'urban', 'Solid Waste', 'Door-to-door collection and segregation', 'Clean Markets', 'Weekly sanitation drives', 'Air Quality', 'Restrict old diesel vehicles'),
(18, 'Palakkad', 'rural', 'Agroforestry', 'Grow trees with crops', 'Water Efficiency', 'Pond desilting and conservation', 'Soil Testing', 'Promote use of soil health cards'),
(19, 'Jaipur', 'urban', 'Water Management', 'Check illegal borewells', 'Traffic Emissions', 'Promote metro and CNG autos', 'Green Buildings', 'Energy efficient building codes'),
(20, 'Sironj', 'rural', 'Livestock Waste', 'Biogas from dung pits', 'Drinking Water', 'Fluoride filtration systems', 'Plastic Disposal', 'Awareness about waste segregation'),
(21, 'Chennai', 'urban', 'Rainwater', 'Mandatory rooftop harvesting', 'Coastal Management', 'Mangrove plantation near coast', 'Heat', 'Urban cooling strategies'),
(22, 'Almora', 'rural', 'Hill Farming', 'Terrace farming support', 'Water Harvesting', 'Rain tanks for hilly areas', 'Forest Fires', 'Community fire watch programs'),
(23, 'Lucknow', 'urban', 'Energy', 'Use solar for public lighting', 'Traffic Congestion', 'Widen roads and promote cycling', 'Awareness', 'Posters and campaigns in schools'),
(24, 'Amravati', 'rural', 'Rainfall Dependency', 'Farm ponds and water storage', 'Tree Planting', 'Organize van mahotsav', 'Renewables', 'Solar fencing for fields'),
(25, 'Surat', 'urban', 'Waste to Wealth', 'Incentivize plastic recycling units', 'Air Quality', 'Ban burning of textile waste', 'Climate Adaptation', 'Improve drainage against floods'),
(26, 'Dharwad', 'rural', 'Organic Practices', 'Vermicompost and manure usage', 'Water Sharing', 'Village-level cooperative systems', 'Traditional Knowledge', 'Promote native farming practices'),
(27, 'Hyderabad', 'urban', 'Water Use', 'Smart metering for buildings', 'Waste Management', 'Centralised waste processing plant', 'Noise', 'Silent zones near hospitals'),
(28, 'Bikaner', 'rural', 'Desert Farming', 'Use of khadin system', 'Wind Energy', 'Install micro wind turbines', 'Soil Health', 'Prevent overgrazing'),
(29, 'Bhopal', 'urban', 'Green Transport', 'Expand public bus system', 'Air Quality', 'Real-time pollution display boards', 'Urban Farming', 'Promote kitchen gardens'),
(30, 'Kalahandi', 'rural', 'Food Security', 'Promote millet cultivation', 'Water Safety', 'Check dams for safe drinking', 'Tribal Rights', 'Involve tribes in forest planning');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Aayush Hardas', 'aayush@gmail.com', '$2y$10$moDAC/c13a6Wawlq2ufYSeOCpUcl85rERuvhXj06xLubT8sJcbo5i');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sustainable_practices`
--
ALTER TABLE `sustainable_practices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sustainable_practices`
--
ALTER TABLE `sustainable_practices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `Database1`
--
CREATE DATABASE IF NOT EXISTS `Database1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `Database1`;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `username`, `password`, `email`) VALUES
(1, 'jdks', 'jkd', 'kjb'),
(2, 'askd', 'jkshf', 'jksf@jk.com'),
(3, 'jkdhf', 'kjdhf', 'kjdfh@jkrs.com'),
(4, 'ew', 'ew', 'ew@we.com'),
(5, 'hjgd', 'hjgd', 'jhds@jh.com'),
(9, 'abc', 'abc', 'abc@abc.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `emp`
--
CREATE DATABASE IF NOT EXISTS `emp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `emp`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`) VALUES
(1, 'aayush', 'aayush', 'aayush@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
--
-- Database: `Guest`
--
CREATE DATABASE IF NOT EXISTS `Guest` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `Guest`;

-- --------------------------------------------------------

--
-- Table structure for table `GuestDetails`
--

CREATE TABLE `GuestDetails` (
  `Name` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `GuestDetails`
--

INSERT INTO `GuestDetails` (`Name`, `Email`, `Password`) VALUES
('Aayush', 'aayush@gmail.com', 'Aayush'),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('Aayush', 'aayush@gmail.com', 'Aayush'),
('', '', ''),
('', '', ''),
('Aayush', 'aayush.hardas@gmail.com', 'Aayush'),
('', '', ''),
('Aayush', 'Hardas', 'aayush.hardas@somaiya.edu'),
('Aayush Hardas', 'aayush.hardas@somaiya.edu', 'Aayush');

-- --------------------------------------------------------

--
-- Table structure for table `pg_accommodations`
--

CREATE TABLE `pg_accommodations` (
  `id` int NOT NULL,
  `pgname` varchar(255) NOT NULL,
  `pgcost` int NOT NULL,
  `pglocation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pg_accommodations`
--

INSERT INTO `pg_accommodations` (`id`, `pgname`, `pgcost`, `pglocation`) VALUES
(1, 'Green Nest PG', 7500, 'Mumbai, Maharashtra'),
(2, 'Comfort Stay PG', 6800, 'Bangalore, Karnataka'),
(3, 'Elite Living PG', 8500, 'Hyderabad, Telangana'),
(4, 'Sunrise Residency', 7200, 'Chennai, Tamil Nadu'),
(5, 'City View PG', 9000, 'Delhi, Delhi'),
(6, 'Royal Residency', 9500, 'Pune, Maharashtra'),
(7, 'Lakeview PG', 7800, 'Kolkata, West Bengal'),
(8, 'Horizon PG', 8200, 'Ahmedabad, Gujarat'),
(9, 'Metro Comfort PG', 8800, 'Jaipur, Rajasthan'),
(10, 'Cozy Home PG', 7000, 'Chandigarh, Punjab');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pg_accommodations`
--
ALTER TABLE `pg_accommodations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pg_accommodations`
--
ALTER TABLE `pg_accommodations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `miniproject`
--
CREATE DATABASE IF NOT EXISTS `miniproject` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `miniproject`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Email` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `FullName` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`Email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `fk_login_signup` FOREIGN KEY (`Email`) REFERENCES `signup` (`Email`) ON DELETE CASCADE;
--
-- Database: `MyGuests`
--
CREATE DATABASE IF NOT EXISTS `MyGuests` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `MyGuests`;

-- --------------------------------------------------------

--
-- Table structure for table `MyGuests`
--

CREATE TABLE `MyGuests` (
  `id` bigint UNSIGNED NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `MyGuests`
--

INSERT INTO `MyGuests` (`id`, `firstname`, `lastname`, `email`) VALUES
(5, 'Aayush', 'Hardas', 'aayush.hardas@somaiya.edu'),
(6, 'Aayush', 'H', 'aayushh@gmail.com'),
(7, 'demo', 'user', 'demouser@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `MyGuests`
--
ALTER TABLE `MyGuests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `MyGuests`
--
ALTER TABLE `MyGuests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `student_db`
--
CREATE DATABASE IF NOT EXISTS `student_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `student_db`;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `Roll_no` bigint NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Class` varchar(1) NOT NULL,
  `course1_marks` int DEFAULT NULL,
  `course2_marks` int DEFAULT NULL,
  `course3_marks` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`Roll_no`, `Name`, `Class`, `course1_marks`, `course2_marks`, `course3_marks`) VALUES
(1, 'AA', '1', 10, 10, 10),
(76, 'aa', 'a', 87, 87, 67),
(78, 'h', 'h', 87, 87, 9),
(90, 'ab', 'a', 90, 90, 89),
(121, 'fkj1', 'A', 7, 7, 8),
(1234, 'ABCD', 'D', 100, 90, 98);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`Roll_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
