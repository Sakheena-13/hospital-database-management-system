-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2026 at 07:07 PM
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
-- Database: `hms`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `male_patient_count_cursor` ()   BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE g VARCHAR(10);
    DECLARE male_count INT DEFAULT 0;

    DECLARE cur CURSOR FOR
    SELECT gender FROM patient;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO g;

        IF done THEN
            LEAVE read_loop;
        END IF;

        IF g = 'Male' THEN
            SET male_count = male_count + 1;
        END IF;
    END LOOP;

    CLOSE cur;

    SELECT male_count AS total_male_patients;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `patient_log_cursor` ()   BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE pname VARCHAR(100);

    DECLARE cur CURSOR FOR
    SELECT patient_name FROM patient;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO pname;

        IF done THEN
            LEAVE read_loop;
        END IF;

        INSERT INTO patient_names_log(patient_name)
        VALUES (pname);
    END LOOP;

    CLOSE cur;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `total_age_cursor` ()   BEGIN
DECLARE done INT DEFAULT FALSE;
DECLARE page INT;
DECLARE total_age INT DEFAULT 0;

DECLARE cur CURSOR FOR SELECT age FROM patient;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

OPEN cur;

read_loop: LOOP
FETCH cur INTO page;
IF done THEN LEAVE read_loop; END IF;
SET total_age = total_age + page;
END LOOP;

CLOSE cur;

SELECT total_age;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `admin_username`, `admin_password`) VALUES
(1, 'admin1', 'p1'),
(2, 'admin2', 'p2'),
(3, 'admin3', 'p3'),
(4, 'admin4', 'p4'),
(5, 'admin5', 'p5'),
(6, 'admin6', 'p6'),
(7, 'admin7', 'p7'),
(8, 'admin8', 'p8'),
(9, 'admin9', 'p9'),
(10, 'admin10', 'p10');

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `cashier_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `cashier_fname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`cashier_id`, `staff_id`, `cashier_fname`) VALUES
(1, 1, 'Ravi'),
(2, 2, 'Anita'),
(3, 3, 'Suresh'),
(4, 4, 'Deepa'),
(5, 5, 'Manoj'),
(6, 6, 'Kiran'),
(7, 7, 'Sunil'),
(8, 8, 'Rekha'),
(9, 9, 'Ajay'),
(10, 10, 'Latha');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `doctor_mobile` varchar(15) NOT NULL,
  `appointed_by_admin` int(11) NOT NULL,
  `registered_by_staff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_name`, `specialization`, `doctor_mobile`, `appointed_by_admin`, `registered_by_staff`) VALUES
(1, 'Dr A', 'Cardiology', '7001', 1, 1),
(2, 'Dr B', 'Neurology', '7002', 2, 2),
(3, 'Dr C', 'Orthopedic', '7003', 3, 3),
(4, 'Dr D', 'ENT', '7004', 4, 4),
(5, 'Dr E', 'Pediatric', '7005', 5, 5),
(6, 'Dr F', 'Dermatology', '7006', 6, 6),
(7, 'Dr G', 'Oncology', '7007', 7, 7),
(8, 'Dr H', 'Psychiatry', '7008', 8, 8),
(9, 'Dr I', 'General', '7009', 9, 9),
(10, 'Dr J', 'Urology', '7010', 10, 10);

-- --------------------------------------------------------

--
-- Stand-in structure for view `inpatient_room_view`
-- (See below for the actual view)
--
CREATE TABLE `inpatient_room_view` (
`patient_id` int(11)
,`patient_name` varchar(100)
,`age` int(11)
,`room_no` int(11)
,`room_cost` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `in_patient`
--

CREATE TABLE `in_patient` (
  `admission_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `ip_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `in_patient`
--

INSERT INTO `in_patient` (`admission_id`, `patient_id`, `room_id`, `ip_date`) VALUES
(1, 1, 1, '2024-01-01'),
(2, 2, 2, '2024-01-02'),
(3, 3, 3, '2024-01-03'),
(4, 4, 4, '2024-01-04'),
(5, 5, 5, '2024-01-05'),
(6, 6, 6, '2024-01-06'),
(7, 7, 7, '2024-01-07'),
(8, 8, 8, '2024-01-08'),
(9, 9, 9, '2024-01-09'),
(10, 10, 10, '2024-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `in_patient_bill`
--

CREATE TABLE `in_patient_bill` (
  `bill_id` int(11) NOT NULL,
  `admission_id` int(11) NOT NULL,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `in_patient_bill`
--

INSERT INTO `in_patient_bill` (`bill_id`, `admission_id`, `total`) VALUES
(1, 1, 4500.00),
(2, 2, 5200.00),
(3, 3, 6100.00),
(4, 4, 4800.00),
(5, 5, 7000.00),
(6, 6, 5300.00),
(7, 7, 8200.00),
(8, 8, 7600.00),
(9, 9, 6900.00),
(10, 10, 8800.00);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medicine_id` int(11) NOT NULL,
  `medicine_name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medicine_id`, `medicine_name`, `price`) VALUES
(1, 'Paracetamol', 50.00),
(2, 'Amoxicillin', 120.00),
(3, 'Ibuprofen', 80.00),
(4, 'Cough Syrup', 60.00),
(5, 'Antibiotic', 150.00),
(6, 'Vitamin C', 40.00),
(7, 'Painkiller', 90.00),
(8, 'Insulin', 200.00),
(9, 'Antacid', 30.00),
(10, 'Aspirin', 70.00);

--
-- Triggers `medicine`
--
DELIMITER $$
CREATE TRIGGER `trg_set_medicine_price` BEFORE INSERT ON `medicine` FOR EACH ROW BEGIN
IF NEW.price IS NULL OR NEW.price < 0 THEN
SET NEW.price = 0;
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `out_patient`
--

CREATE TABLE `out_patient` (
  `patient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `out_patient`
--

INSERT INTO `out_patient` (`patient_id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

-- --------------------------------------------------------

--
-- Table structure for table `out_patient_medical`
--

CREATE TABLE `out_patient_medical` (
  `outpatient_med_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `out_patient_medical`
--

INSERT INTO `out_patient_medical` (`outpatient_med_id`, `patient_id`, `medicine_id`, `quantity`) VALUES
(1, 1, 1, 5),
(2, 2, 2, 3),
(3, 3, 3, 4),
(4, 4, 4, 6),
(5, 5, 5, 2),
(6, 6, 6, 7),
(7, 7, 7, 3),
(8, 8, 8, 5),
(9, 9, 9, 4),
(10, 10, 10, 6);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `admission_date` date DEFAULT NULL,
  `patient_mobile` varchar(15) NOT NULL,
  `registered_by_staff` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_name`, `gender`, `dob`, `admission_date`, `patient_mobile`, `registered_by_staff`, `age`) VALUES
(1, 'Rahul', 'Male', '1994-01-01', '2024-01-01', '8001', 1, 30),
(2, 'Bhavya', 'Female', '1999-02-02', '2024-01-02', '8002', 2, 25),
(3, 'Charan', 'Male', '1984-03-03', '2024-01-03', '8003', 3, 40),
(4, 'Divya', 'Female', '1989-04-04', '2024-01-04', '8004', 4, 35),
(5, 'Eshwar', 'Male', '1996-05-05', '2024-01-05', '8005', 5, 28),
(6, 'Farah', 'Female', '1992-06-06', '2024-01-06', '8006', 6, 32),
(7, 'Gopal', 'Male', '1979-07-07', '2024-01-07', '8007', 7, 45),
(8, 'Hema', 'Female', '2002-08-08', '2024-01-08', '8008', 8, 22),
(9, 'Imran', 'Male', '1986-09-09', '2024-01-09', '8009', 9, 38),
(10, 'Jyothi', 'Female', '1997-10-10', '2024-01-10', '8010', 10, 27);

--
-- Triggers `patient`
--
DELIMITER $$
CREATE TRIGGER `trg_patient_delete_log` BEFORE DELETE ON `patient` FOR EACH ROW BEGIN
INSERT INTO patient_log(patient_id, patient_name)
VALUES (OLD.patient_id, OLD.patient_name);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `patient_default_demo`
--

CREATE TABLE `patient_default_demo` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT 'Chennai'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_log`
--

CREATE TABLE `patient_log` (
  `log_id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `patient_name` varchar(50) DEFAULT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_names_log`
--

CREATE TABLE `patient_names_log` (
  `log_id` int(11) NOT NULL,
  `patient_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_names_log`
--

INSERT INTO `patient_names_log` (`log_id`, `patient_name`) VALUES
(1, 'Rahul'),
(2, 'Bhavya'),
(3, 'Charan'),
(4, 'Divya'),
(5, 'Eshwar'),
(6, 'Farah'),
(7, 'Gopal'),
(8, 'Hema'),
(9, 'Imran'),
(10, 'Jyothi');

-- --------------------------------------------------------

--
-- Table structure for table `patient_notnull_demo`
--

CREATE TABLE `patient_notnull_demo` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_pk_demo`
--

CREATE TABLE `patient_pk_demo` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `room_cost` decimal(10,2) NOT NULL
) ;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_no`, `room_cost`) VALUES
(1, 101, 2000.00),
(2, 102, 2200.00),
(3, 103, 2500.00),
(4, 104, 3000.00),
(5, 105, 3500.00),
(6, 201, 4000.00),
(7, 202, 4500.00),
(8, 203, 5000.00),
(9, 204, 5500.00),
(10, 205, 6000.00);

--
-- Triggers `room`
--
DELIMITER $$
CREATE TRIGGER `trg_check_room_cost` BEFORE INSERT ON `room` FOR EACH ROW BEGIN
IF NEW.room_cost < 0 THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Room cost cannot be negative';
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `staff_fname` varchar(50) NOT NULL,
  `staff_lname` varchar(50) NOT NULL,
  `staff_username` varchar(50) NOT NULL,
  `staff_designation` varchar(50) NOT NULL,
  `staff_mobile` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_fname`, `staff_lname`, `staff_username`, `staff_designation`, `staff_mobile`) VALUES
(1, 'Ravi', 'Kumar', 'ravi', 'Nurse', '9001'),
(2, 'Anita', 'Shah', 'anita', 'Receptionist', '9002'),
(3, 'Suresh', 'Naik', 'suresh', 'Ward Boy', '9003'),
(4, 'Deepa', 'Nair', 'deepa', 'Clerk', '9004'),
(5, 'Manoj', 'Patel', 'manoj', 'Cleaner', '9005'),
(6, 'Kiran', 'Reddy', 'kiran', 'Pharmacist', '9006'),
(7, 'Sunil', 'Verma', 'sunil', 'Security', '9007'),
(8, 'Rekha', 'Iyer', 'rekha', 'Nurse', '9008'),
(9, 'Ajay', 'Singh', 'ajay', 'Technician', '9009'),
(10, 'Latha', 'Rao', 'latha', 'Manager', '9010');

-- --------------------------------------------------------

--
-- Structure for view `inpatient_room_view`
--
DROP TABLE IF EXISTS `inpatient_room_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `inpatient_room_view`  AS SELECT `p`.`patient_id` AS `patient_id`, `p`.`patient_name` AS `patient_name`, `p`.`age` AS `age`, `r`.`room_no` AS `room_no`, `r`.`room_cost` AS `room_cost` FROM ((`patient` `p` join `in_patient` `ip` on(`p`.`patient_id` = `ip`.`patient_id`)) join `room` `r` on(`ip`.`room_id` = `r`.`room_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `admin_username` (`admin_username`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`cashier_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`),
  ADD KEY `appointed_by_admin` (`appointed_by_admin`),
  ADD KEY `registered_by_staff` (`registered_by_staff`);

--
-- Indexes for table `in_patient`
--
ALTER TABLE `in_patient`
  ADD PRIMARY KEY (`admission_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `in_patient_bill`
--
ALTER TABLE `in_patient_bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `admission_id` (`admission_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medicine_id`);

--
-- Indexes for table `out_patient`
--
ALTER TABLE `out_patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `out_patient_medical`
--
ALTER TABLE `out_patient_medical`
  ADD PRIMARY KEY (`outpatient_med_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `medicine_id` (`medicine_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`),
  ADD UNIQUE KEY `uq_mobile` (`patient_mobile`),
  ADD KEY `registered_by_staff` (`registered_by_staff`);

--
-- Indexes for table `patient_default_demo`
--
ALTER TABLE `patient_default_demo`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `patient_log`
--
ALTER TABLE `patient_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `patient_names_log`
--
ALTER TABLE `patient_names_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `patient_notnull_demo`
--
ALTER TABLE `patient_notnull_demo`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `patient_pk_demo`
--
ALTER TABLE `patient_pk_demo`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD UNIQUE KEY `room_no` (`room_no`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `staff_username` (`staff_username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cashier`
--
ALTER TABLE `cashier`
  MODIFY `cashier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `in_patient`
--
ALTER TABLE `in_patient`
  MODIFY `admission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `in_patient_bill`
--
ALTER TABLE `in_patient_bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medicine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `out_patient_medical`
--
ALTER TABLE `out_patient_medical`
  MODIFY `outpatient_med_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `patient_log`
--
ALTER TABLE `patient_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient_names_log`
--
ALTER TABLE `patient_names_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cashier`
--
ALTER TABLE `cashier`
  ADD CONSTRAINT `cashier_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`appointed_by_admin`) REFERENCES `admin` (`user_id`),
  ADD CONSTRAINT `doctor_ibfk_2` FOREIGN KEY (`registered_by_staff`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `in_patient`
--
ALTER TABLE `in_patient`
  ADD CONSTRAINT `in_patient_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  ADD CONSTRAINT `in_patient_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `in_patient_bill`
--
ALTER TABLE `in_patient_bill`
  ADD CONSTRAINT `in_patient_bill_ibfk_1` FOREIGN KEY (`admission_id`) REFERENCES `in_patient` (`admission_id`);

--
-- Constraints for table `out_patient`
--
ALTER TABLE `out_patient`
  ADD CONSTRAINT `out_patient_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`);

--
-- Constraints for table `out_patient_medical`
--
ALTER TABLE `out_patient_medical`
  ADD CONSTRAINT `out_patient_medical_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `out_patient` (`patient_id`),
  ADD CONSTRAINT `out_patient_medical_ibfk_2` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`medicine_id`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`registered_by_staff`) REFERENCES `staff` (`staff_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
