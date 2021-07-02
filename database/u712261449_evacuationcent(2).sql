-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2019 at 11:43 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u712261449_evacuationcent`
--

-- --------------------------------------------------------

--
-- Table structure for table `brgy`
--

CREATE TABLE `brgy` (
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `status_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brgy`
--

INSERT INTO `brgy` (`r_id`, `p_id`, `c_id`, `b_id`, `barangay`, `status_id`) VALUES
(1, 1, 1, 1, 'barangka', 1),
(1, 1, 1, 2, 'Kalumpang', 1),
(1, 1, 1, 3, 'Concepcion I', 1),
(1, 1, 1, 4, 'Concepcion II', 1),
(1, 1, 1, 5, 'Fortune', 1),
(1, 1, 1, 6, 'Industrial Valley Complex', 1),
(1, 1, 1, 7, 'Jesus Dela PeÃ±a', 1),
(1, 1, 1, 8, 'Malanday', 1),
(1, 1, 1, 9, 'Marikina Heights', 1),
(1, 1, 1, 10, 'Nangka', 1),
(1, 1, 1, 11, 'Parang', 1),
(1, 1, 1, 12, 'San Roque', 1),
(1, 1, 1, 13, 'Santa Elena', 1),
(1, 1, 1, 14, 'Santo NiÃ±o', 1),
(1, 1, 1, 15, 'TaÃ±ong', 1),
(1, 1, 1, 16, 'Tumana', 1),
(2, 2, 2, 17, 'Tinago', 1),
(3, 3, 3, 18, 'Adams', 1),
(3, 3, 3, 19, 'Bugnay', 1),
(4, 4, 4, 20, 'San Joaquin', 1),
(5, 6, 5, 21, 'Bagumbayan', 1),
(5, 18, 17, 22, 'B1', 1),
(5, 18, 17, 23, 'B2', 1),
(5, 18, 17, 24, 'B3', 1),
(5, 18, 17, 25, 'B4', 1),
(5, 18, 17, 26, 'B5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL,
  `cities` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`r_id`, `p_id`, `c_id`, `cities`) VALUES
(1, 1, 1, 'marikina'),
(2, 2, 2, 'Ligao City'),
(3, 3, 3, 'Batac'),
(4, 4, 4, 'Basco'),
(5, 6, 5, 'Balanga'),
(6, 7, 6, 'Alitagtag'),
(7, 8, 7, 'Iloilo City'),
(8, 9, 8, 'Danao'),
(9, 10, 9, 'Tacloban City'),
(10, 11, 10, 'Isabela City'),
(11, 12, 11, 'Cagayan De Oro'),
(12, 13, 12, 'Davao City'),
(13, 14, 13, 'General Santos City'),
(14, 15, 14, 'Bayugan'),
(15, 16, 15, 'Baganga'),
(16, 17, 16, 'Akbar'),
(5, 18, 17, 'Baguio City');

-- --------------------------------------------------------

--
-- Table structure for table `constituents`
--

CREATE TABLE `constituents` (
  `cons_id` int(100) NOT NULL,
  `cons_name` varchar(255) NOT NULL,
  `cons_midname` varchar(255) NOT NULL,
  `cons_lname` varchar(255) NOT NULL,
  `cons_age` int(100) NOT NULL,
  `cons_gender` varchar(255) NOT NULL,
  `cons_add` varchar(255) NOT NULL,
  `b_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `r_id` int(100) NOT NULL,
  `cons_stat` int(100) NOT NULL,
  `cons_fid` int(100) NOT NULL,
  `volunteer_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `constituents`
--

INSERT INTO `constituents` (`cons_id`, `cons_name`, `cons_midname`, `cons_lname`, `cons_age`, `cons_gender`, `cons_add`, `b_id`, `c_id`, `p_id`, `r_id`, `cons_stat`, `cons_fid`, `volunteer_id`) VALUES
(1, 'ZDNmYjg4MjIzN2JiNWYyYg==/ww9K7prWEXFpE5ggxcreQ==', 'NTdjNTFjZWIxOTJmMWRjNg==mytGdRUn4k8FPZoFeu9AIQ==', 'NTYxMjE0ZjhmMjAxYWEyYQ==V1z8rfZ3xA6SFegh9oOtQg==', 61, 'Male', 'M2QzYjk1OThjYzQ1YjY4OA==nI3HjQNvXJIL5Ro85arwrqGdrWfLnrpMgYXZR7iBdI4=', 18, 3, 3, 3, 2, 1, 25),
(2, 'MjQ5ODQyM2ZmZjExMmFhOA==2OrH00y/KokG7XbmEtq7bw==', 'NWU0NWU0ODY2ZGNiYzRjOA==/D7C5W5PfOj05cubwrVayg==', 'NmQ1OTZiYWU1ZmY1Y2VjZg==wmeJ5QyI8fxHrnLYS/oQwA==', 10, 'Male', 'M2QzYjk1OThjYzQ1YjY4OA==nI3HjQNvXJIL5Ro85arwrqGdrWfLnrpMgYXZR7iBdI4=', 18, 3, 3, 3, 2, 1, 0),
(3, 'NzYzZDViMjExMWI0NWE3Mg==Hjj/Q4q0u0iVWm8reeK2Cw==', 'YWJhNmMwM2MxMjI1NTVhZA==gc5NuVnSFwXzzzQrhout0A==', 'N2Y0NTJiZjhiZTMzYTRkOQ==QVWu1dFqefgEQBNga2TBhQ==', 7, 'Male', 'M2QzYjk1OThjYzQ1YjY4OA==nI3HjQNvXJIL5Ro85arwrqGdrWfLnrpMgYXZR7iBdI4=', 18, 3, 3, 3, 2, 1, 0),
(4, 'MTMyNzQ3MzZiZDEwMjdkZg==pApDqPLKT0t1oG6UON4O2w==', 'MGU5N2U0YjMyNTdmNDk2Yw==p2WtpVteSEKcvvQ/JSwckQ==', 'NWFlNTEyZWJhNzc4NzEzMA==LIdTxN3Rhb3YNIAcBuFfNw==', 18, 'Female', 'M2QzYjk1OThjYzQ1YjY4OA==nI3HjQNvXJIL5Ro85arwrqGdrWfLnrpMgYXZR7iBdI4=', 18, 3, 3, 3, 2, 1, 0),
(5, 'MDMxY2NkYTIyYjg0YWQyNg==pk2OZSEyYW7kCz2/oo+BKA==', 'NGVkNzIxOTkzYTk2NTA3Mw==xfV+MOQGbb2/HeS/pmo9bw==', 'MTE2YWUwZWYyZWQyYjdjNg==j5SCIm3FXdjT6aKvAfDodA==', 65, 'Male', 'NGU4NzU3MDhjNjY3YjdmYg==nyd8ojoxH99Nk+twW3jMyA==', 18, 3, 3, 3, 2, 5, 25),
(6, 'NmM1MmI2MGVlNmI3NWQzMg==D8sa7xkC/DchSxrj2oaDVw==', 'NzgzNGMxNTc2MjdjNjkzMA==YnRGYhGoZ+WQ7rP8e7W+PQ==', 'NzZhY2U0MTliY2ZiYjk4Nw==NgB+m5yiyDQsxnFPfZ9OVA==', 21, 'Male', 'NGU4NzU3MDhjNjY3YjdmYg==nyd8ojoxH99Nk+twW3jMyA==', 18, 3, 3, 3, 2, 5, 0),
(7, 'YjcyZjBiODYwMTdjYjJhOA==Spzu9FTagYOQ32nm4TkgsA==', 'YzUwMDUyOTUxZmZkZWE0Ng==4pfZ60Tr57T0YurI8n1xuw==', 'ZjI3ZmQxMmIyODFiMTJmZQ==bKhF/PrQsDyIBGqTWmstnA==', 25, 'Female', 'NGU4NzU3MDhjNjY3YjdmYg==nyd8ojoxH99Nk+twW3jMyA==', 18, 3, 3, 3, 2, 5, 0),
(8, 'MDU1NjIzN2Q5MmI1ZTEzZQ==lq2vEF9EjtmFi5g1l5nAdQ==', 'MWI4MmM1NzJiZjA2OTVlZg==Y0h8ap2b2R0jKDtgSlZhMA==', 'MWVmMGY2M2EwNDFkMTQ1Ng==B4BHWXbBjwrq71C2a9f0JQ==', 30, 'Male', 'NGU4NzU3MDhjNjY3YjdmYg==nyd8ojoxH99Nk+twW3jMyA==', 18, 3, 3, 3, 2, 5, 0),
(9, 'Y2I3ZjdlZDEyZjllNGM5Mg==zPLXiBGTatTqCyfsInwQAQ==', 'MWI0MDM5ZjdkNWI2MjY0MA==ni6TNi/pGoER08o95s/gKw==', 'MjhhYTQyOTFjMDQ5MDM0Ng==mPCHIfhrUuBRrbv/PrPJBA==', 51, 'Female', 'M2M2MjNjMjdmN2U5MWUyYw==6RM18xO4HgEgl4SpOLu12A==', 18, 3, 3, 3, 0, 9, 25),
(10, 'ZjkxNjhkMjEzZDFmZTVmZA==Cskgn+NJmJBnnSJb//44Eg==', 'OGI3MjUyNWZkMmE2NzdjMQ==jSUZE7LrxsSPJ/PpbU1bWg==', 'NzRjNjY3OWQwODU4YzMzZg==z3lUcdEYcD9VztajNERJfA==', 18, 'Male', 'M2M2MjNjMjdmN2U5MWUyYw==6RM18xO4HgEgl4SpOLu12A==', 18, 3, 3, 3, 0, 9, 0),
(11, 'MTBmMDgxNTdiOTY1Mzk5MA==KY9DNtcWz9dnxGu1DCb57w==', 'ZGE2ZTljODZiYWQxNTczOQ==0ImMczKc6/HQkTo3tZIMAw==', 'YWJkZmEwODVhZTQ4Y2M5MA==EXE2bA30OetvMRLrvBw6Dw==', 29, 'Female', 'M2M2MjNjMjdmN2U5MWUyYw==6RM18xO4HgEgl4SpOLu12A==', 18, 3, 3, 3, 0, 9, 0),
(12, 'OWY5NzJiYWVlNzZmZjdiNg==jYYoYV/ouch4XkN6ugm6RQ==', 'NjQ3MWM3ZGU0ZWFkNTIyZA==dZxQzflzxFPRM81CTddWOQ==', 'MWFkMTBiNjQ4Zjk1ZGQ4OQ==sJTJeoFCwnKiTbixljP8+Q==', 63, 'Female', 'M2M2MjNjMjdmN2U5MWUyYw==6RM18xO4HgEgl4SpOLu12A==', 18, 3, 3, 3, 0, 9, 0),
(13, 'NmVkNzFjOTkzMTJiNWRmYQ==oSoGuv4nXyPYiPTBd03tuQ==', 'YWNmZWNlZjZiZDAwNzEwMA==KXAt9xeKm7fiKt5NtPOsng==', 'YzBjYjE1NjY1OWQyYjIyZg==HiNaUZZFMSKJbMKAwGQvVw==', 21, 'Female', 'MWZiNDJlNWNmZjE3OTYwNw==7mf4dcaY3H35vnXppVWDOg==', 18, 3, 3, 3, 2, 0, 0),
(14, 'OWZlZTMyMDhkYWZmNjI2Nw==Yqq9hpycFlJJWhd6EHI8PQ==', 'MTEyYmVkOThlNmRmOGM5MQ==JXJWlJQVVayLrO/pKI+U4w==', 'Yzg4Nzc3OWU2YjhlZjIzNg==Iw4A9pUky8bXMW62Vqh1jA==', 51, 'Male', 'Y2Q3NDhhZWRlZjA3ODIyMw==lStfckdGjyuM/8WYAIloPg==', 18, 3, 3, 3, 2, 0, 0),
(15, 'ZmRjNGQ2YTBjZDAzYTc1NQ==HuSH3Cs9EuC7beq8soYzCw==', 'MDIxZDNkN2MzZjFhYzcxZQ==/Z6w/ear3495YUqPKUn4gg==', 'YmU4OWY2NjY1MjY1ZGZkNA==77tBSpspoNPJ/3rnR6JjGg==', 18, 'Male', 'MTgyN2U2MThkMDc3OWMwZQ==XYyQF98qBHNFwyqGaG2OrA==', 18, 3, 3, 3, 2, 0, 0),
(16, 'ZmM0MjJhMTA2MmYxM2U5Mg==C9u7oQgBEytBw8z2GfOyGw==', 'OWM5Mzc3MGY2MWM1NjZkMg==9J7whStutRBtTY7ItoE35Q==', 'NTY4YWJlMDg5ZDVhNGU1Nw==7L2sQG4k2JEFzXtILQXROA==', 5, 'Male', 'MTU4MDUxZmQzMDhiMDY5Zg==EO3GSKDv7hVtqNJTp9Nu5w==', 18, 3, 3, 3, 2, 0, 0),
(17, 'ZDZkZWI0MDcwNDYxMWM0OA==vaOQ52J6qZWEId1fUIMyGg==', 'MmIxZGZkZmQwNTAzNGVhYg==40HaTBc/QT/HiCwLXKD/4w==', 'MTU5OTQxZGY3Mjk4NDQwOQ==WQMzu/NWPMbzSfdoLo4GCg==', 30, 'Male', 'ZWU3ZWIwNmRiZTIxMjZmMQ==otM57qqWWs66CZy1u+T65Q==', 18, 3, 3, 3, 2, 0, 0),
(18, 'NTJjNTg2ZjA5ZDhjZGNjNQ==EtBUhiCMSt+UZ01Yo9B8Vg==', 'ZTZhN2IxYjk3NjI3NGY4ZA==odo5MOrHPmHq6WSIm4Y5mg==', 'ODRhY2I2ZjdiM2Y0MjczZQ==P04P340svHADDvjanPo23A==', 59, 'Male', 'NzgyZDg4OGM3YmIxMTg0Yg==fozlnoKETtrUxrijueRaoA==', 18, 3, 3, 3, 2, 0, 0),
(19, 'YzVhMmMzZTIwOTg1NjE2OQ==k1NdEJYi1vUl6kCLOx3tVQ==', 'MjlhMDg0NmQ4YThlNTJlZA==Hx5KO0Q4Yb2fHs7XeHp7KA==', 'NWM2OTY2ODM1ZjQzNTc2Yg==WTHpn75kLmmFWmslJ9fSzA==', 24, 'Female', 'ZGM2ZGEyNjA2ZmI1MDUwZQ==T7d9a9nkBRMdYfeCU01s8A==', 18, 3, 3, 3, 2, 0, 0),
(20, 'NmU4MDExMzRmMmJjYjUzYQ==Dadsv5h1rOgIxhjRd3v/nQ==', 'MDRkYjlkZGY0YTZhYTMyYw==2GajY87wZpm6tLj7iM7ukQ==', 'NzM0YmI2NTEyMDExZGJlNA==DPwUJwnBdsDvtzYK7QeM1w==', 29, 'Male', 'ODZhY2ZjNzY2MjUzNDk0Nw==xD6F4dIu0qmBvxQeC8+o7A==', 18, 3, 3, 3, 2, 0, 0),
(21, 'MmFkN2M5Y2E0YWU5ODZjNQ==+sDJEjO1vzMeKwKntkaWjQ==', 'NTVmNmQ5NGRkNTU5NTRmNw==DRQQM2WD/QyEIRptxG9nQA==', 'NWU2YjE0OGE0YTc3MjA2MQ==DnS7gTxBczmJfOpZ1ZD3nw==', 2, 'Female', 'OTFkYjViYzU2MjI2NWFkYg==w4b62nyD7KqH2b/A1sLTKQ==', 18, 3, 3, 3, 2, 0, 0),
(22, 'ZjI0ZjBkYzk1NGIyZTk4OA==VfNj7Eelwdg3tPMGCoLwPQ==', 'ZmU0ZjhkMWI4ZTA0NmIwZg==uNnW4PKr1hX4hf02C9+EiA==', 'N2QzNzVmMDE3N2Y1MTNjZg==Bl3oiRA4Jwq9p6z3hU+XOA==', 3, 'Male', 'ZTgyNjQ3OTE0MTk5NjNmMQ==/Rn+B46IaYl+FqDHFmfW4A==', 18, 3, 3, 3, 2, 0, 0),
(23, 'MTM2NTE0MGQ5OWE1OTUxZA==AmNEIc+L3sWL+75lcRL/DQ==', 'OTQ3MmJlYmQ0MGZhMWYwNw==OkWOcj0JC6UWltPYjmRo1Q==', 'OTNmN2E5NDM0MmI5NzFhYQ==y7gUJz/diJH+Umkn8Qx0SA==', 65, 'Male', 'MWE5MGRlMTJjNjg0OGNmNg==sGDoDskG3RRRPwU/phJ91JckFwLhe0NKWYG1vwqVEsQ=', 21, 5, 6, 5, 0, 23, 28),
(24, 'MGU3NTc0NThhMDcxYzRmMw==WWi3C9FM3E5Z9LTxz09hwQ==', 'YWY5YmY0YjAwYmY0ZGVkYw==4jh6ogW8SGIEONxyblkh8w==', 'YTkzMDgyZGVkOGNkNDNjNQ==O0MOWZMtoahohjKdBrumLQ==', 33, 'Female', 'MWE5MGRlMTJjNjg0OGNmNg==sGDoDskG3RRRPwU/phJ91JckFwLhe0NKWYG1vwqVEsQ=', 21, 5, 6, 5, 0, 23, 0),
(25, 'ZGQ2NTI0NzcxZjZhMzg5OA==xlBaeXjesv/LMvg5A9WrJA==', 'NTIwNGJjMjZlZDdjYmM5Mg==AwKVqYn1pT8c+lIufJU3eQ==', 'NWE5ZTVlZjBkZTAwZmIwNQ==Mp9nZmSUjwjp7yZxZesBpA==', 23, 'Female', 'MWE5MGRlMTJjNjg0OGNmNg==sGDoDskG3RRRPwU/phJ91JckFwLhe0NKWYG1vwqVEsQ=', 21, 5, 6, 5, 0, 23, 0),
(26, 'YjI4ZWRlMDExOWMxNTlhYQ==WI6pDfijnBBP1g+m34pZIg==', 'YTczNDM4Yjg0YmQwMDI2OA==VYwl4Nm75kU770jv1lePRA==', 'MWQ4OGMyNzVmN2QxMTdlNA==X7qO8r6b/j5FL2f1tAIjRg==', 37, 'Female', 'MWE5MGRlMTJjNjg0OGNmNg==sGDoDskG3RRRPwU/phJ91JckFwLhe0NKWYG1vwqVEsQ=', 21, 5, 6, 5, 0, 23, 0),
(27, 'NmM2Y2FkNmM0NDY3M2VjZA==728AeVGrexbCkFtraEjigA==', 'MDUwNWQzNDI0YWQwM2ZmYw==QZBcZ+XB9MfFp4srUv/+4Q==', 'NjNiZmVmYzI5YjZhYzE0Mw==nddiEeYhIc86vrk+meOi7w==', 60, 'Female', 'ZDU1NTNhYTgwYTNhNzUxOA==dVNuxMf3RVWYvxKpQmXBYDkV5iAziCprGTmAKr7QT7s=', 21, 5, 6, 5, 0, 27, 28),
(28, 'OWJlZmJiMTBlOWU0ZWY5Ng==tKLN2c5fpEm9YvZMEh9a1Q==', 'OGUwMDA5NzlhNWIzYmQzNA==Nt7dT3XMpXXMZRhgXAE9ZQ==', 'Y2I0Y2MyN2Q2OTVlMzAxZA==P+lMcPlMWuc9zVkh4yf9sQ==', 29, 'Female', 'ZDU1NTNhYTgwYTNhNzUxOA==dVNuxMf3RVWYvxKpQmXBYDkV5iAziCprGTmAKr7QT7s=', 21, 5, 6, 5, 0, 27, 0),
(29, 'ZDM2N2Q5NWJjOWQwMDMzOQ==jqxb1JallXTEaiCR4ftaRQ==', 'MjcwNTg2ZDcxZmJhMWU0Nw==OaNr80smKvzbRrwc5wgtVg==', 'MmE2NGU1MDg0NTM3MjA2Mw==WfOtIXam4kH4ypDm1Tg0jA==', 25, 'Male', 'ZDU1NTNhYTgwYTNhNzUxOA==dVNuxMf3RVWYvxKpQmXBYDkV5iAziCprGTmAKr7QT7s=', 21, 5, 6, 5, 0, 27, 0),
(30, 'MDk4ZTQ0NWY0MzBhNzIyMw==kl+dlo8hEIgZcyJetZjGsg==', 'NjMwYjE4ZjA4OGIyNWFjMQ==gN3Kq0IxK2T9X1/VehRhpg==', 'N2U5MmRmNDZmY2ZiNjU5Yg==i2n8fqgqSeqodtHwcOliOw==', 20, 'Male', 'ZDU1NTNhYTgwYTNhNzUxOA==dVNuxMf3RVWYvxKpQmXBYDkV5iAziCprGTmAKr7QT7s=', 21, 5, 6, 5, 0, 27, 0),
(31, 'ZjQ0NzdlY2U4YzkzZjJlMA==WjSLEaACarGnh3sod1LGoA==', 'MjA0Yjc0NjJiMzBlMjk5ZQ==q55WumxzfuCwMMi9ysVdFQ==', 'MTVkYjU1ZDFmYjJmNWU2Ng==tXYx/upMUWORgvPN5oBrJw==', 31, 'Male', 'MmY1YTBhMTVkNWNmNDk4MQ==P649HFraUsDRz8AHmO+nbqcQKlNY870pC2wVhc11Oj4=', 21, 5, 6, 5, 2, 31, 28),
(32, 'ODdhZjFlYjFiYjM2ZjQzMw==gEsq4mlWxsrj1wQFG4YIdw==', 'ZmVmZDUwNWE2MmE3YmQ1OA==t2dTfBgkm+LIzXDxo0SkEg==', 'ZmJmMDEyMTEwZDc2ODBlNA==ibfw7BHdrx9VhLGGfzSemQ==', 26, 'Male', 'MmY1YTBhMTVkNWNmNDk4MQ==P649HFraUsDRz8AHmO+nbqcQKlNY870pC2wVhc11Oj4=', 21, 5, 6, 5, 2, 31, 0),
(33, 'YzA4NjliOTBiZDkwOWQyZg==Wf2iiQuw08l/NtB5okeISg==', 'OWY0MWUwYmMxM2Y4MzhlMA==f4JicjuVYtbgmKdLZDhq0Q==', 'YTIwYjQzYjhjZDg1OTRiNA==Uo8MnXRfutlvgmJHFUfpVQ==', 18, 'Female', 'MmY1YTBhMTVkNWNmNDk4MQ==P649HFraUsDRz8AHmO+nbqcQKlNY870pC2wVhc11Oj4=', 21, 5, 6, 5, 2, 31, 0),
(34, 'NTQzYjM4NzBmMDdkMzk5NA==JzGRRXJH11TlctXD00+S2g==', 'OTM0M2QyZjYwZTMwNzQ4Mg==j0w/B/cX03yxsR4N2OKgZQ==', 'YmJhYTFjZGE4NDM2MGE2Mw==OSmomay3uaXEBab+XJPZ9Q==', 61, 'Male', 'MmY1YTBhMTVkNWNmNDk4MQ==P649HFraUsDRz8AHmO+nbqcQKlNY870pC2wVhc11Oj4=', 21, 5, 6, 5, 2, 31, 0),
(35, 'Zjk1MTM2NmU4Nzk0NjJmNA==BdSwqkA4fiEU54hJfvt5WA==', 'ZGVlYmFjYmY0MGQ1NWMzNw==hI4T76sj6o8ZSFUMTTiC7g==', 'YmY1Yzg5ZDM0NDlhOGM5OA==p3PrDUJSK8Xu91Mw7A7gkw==', 23, 'Male', 'Yjg1M2FkYjIxZjEzZjgzNA==UHyPJmRfxeE0TDws/bnz6XpeI4OcKdnWZ5SQ7BA53Gs=', 21, 5, 6, 5, 2, 0, 0),
(36, 'YTM2ZWI1NGY5NTkyNWQzNQ==VO/7STj0rba4zsk1wLHBdg==', 'NThkZmE2ZDM5MmVjM2I4MA==hbBy6mOcnQ+AyU5cVLhu9g==', 'NWUzOWI5N2EwYjViMWIxMw==TBiVCQy2nYrjSghTAnDmEg==', 25, 'Male', 'MzM5OTVmZWIxYzgxNzA2MQ==PE50AZkTseAXCAneBSQTiGhSHj1tD/JzMYdRoIIlHuk=', 21, 5, 6, 5, 2, 0, 0),
(37, 'ZmMyNGRkMmQ0MWNhYWM3MQ==tYTM2FKtXNGyLkk2Gtl2RA==', 'NmQyNmYzNDgzMzNjZjEzYQ==hraT/eI4MYySm3BFmGS1Fw==', 'MWU5YmE3MDQ3ZDkzNWNjNA==skaNIqOlPXubCfGrjlvKRQ==', 28, 'Female', 'OGM0NzRkNjk3YjM1NzM4Yw==32trk+G5ytdjF1Jn1oLWcEmdEMerkJzTYzS33y2C43M=', 21, 5, 6, 5, 2, 0, 0),
(38, 'ZTQ3Y2YyOTE0NjM5OTY4YQ==8FT2tCd2fZaafcT2bPavzQ==', 'OWIxNWM4NDRhZmQzZmFjMw==qytEH3Kpqz1Ei7Yof7gntA==', 'OTc0Mzg3NjQxNzI3YTBiMg==vFKVV0XjKknasWSwEvZzKg==', 29, 'Male', 'YmE4YjQ1YWQ3ZjliNzZhNQ==9uW1tOrQ3Dh3CYcG3V9XGtA7W3klEHTaZIFC48vOkJU=', 21, 5, 6, 5, 2, 0, 0),
(39, 'MWNmMjVkMzRmNTdhMDZhMg==bEyHr8hjxgyhXdGCrFvkEQ==', 'M2Y4Yzk5NTc1M2E5YzE5Zg==6svHfdq1MxPzvj0//PqLUA==', 'YTE5MTE0NjgzMThmMDJjMA==EpwUl2aeBcXlso6LYD5tyw==', 27, 'Male', 'NDBkMmU3Mjg2NzMxNjA2NQ==+3pZgGMYVRBgotmM++8xxF/wYXT0xL6k8DhDAQT7gvE=', 21, 5, 6, 5, 2, 0, 0),
(40, 'NWU3MWM1ZmU5NmQ4NjEwMw==DMLmx2s19QcTGayFYN8t2g==', 'MWZjM2MwMWIzZjU0ZWEzMw==Xf+zYSVSQUENmugYAa3iaw==', 'ZDFkMTcxOWM3OGRmNzA5Mg==MZyVeVrddwRPs3yrMGUJwg==', 29, 'Female', 'NzRlNTJiMmE3NmFiNWJhOA==F29pM7cPTtlIhDssqfCLD/XUevTMf2ga8ppt5eZ7s/c=', 21, 5, 6, 5, 2, 0, 0),
(41, 'MmQ4ZWJkZGZlMjFjNjcxNQ==DgSyheA2p/FwFL+YA8NFfA==', 'NmJhOTI2NWM0NmVjNjIyYw==6fV9bggsu/7xYkzyxarFWw==', 'OTJmMDdkM2I0YzBkYTQ4Yw==H3nab8mYtd9DzTpR94Vyxw==', 23, 'Female', 'YjI2OTZiMGM0NDBiYWFmYw==ilBebAMnsW1CBCYqx3dnpN1vl1x1C7yPtb0ywoUIdWI=', 21, 5, 6, 5, 2, 0, 0),
(42, 'MWZiNThlZDJlZDU0MmE2Ng==yhKhfF/MkdQFIQw5IR6LsA==', 'MmM0NjdmMTc5OWM3Yjg3Nw==CnFgaLYKtJhlpuLNuwb7Eg==', 'ZmI2YmJmZTY1OTM4NWFjOQ==k05OUybBiX7MW7yF0XXZOw==', 35, 'Male', 'ZmU4NTM5OWI4ZWMxNGQ1ZQ==wC1+hQxGZMA6A12+YupOktTtD96877gwDUNU1AE27xw=', 21, 5, 6, 5, 2, 0, 0),
(43, 'OTVjOGNiM2IzNGUyYzE5NA==+OQ50Z//2NicIng5bVk+kw==', 'MjE2MDE3OWViN2NjNTMyMQ==ZwP6kbUptRNRmdY6ef1Ocg==', 'MTFkNDc0MjBkNTk0YjkxYg==eGo6XLxrDFv06XIuBAf+Bg==', 29, 'Male', 'MmViMTEwMzU4MGQ2MjA3Mg==KAm0GHi9BfCg9N2bBoysfKpACgAN1DZdUQDfWJQT/m0=', 21, 5, 6, 5, 2, 0, 0),
(44, 'NjUxMGMxZmIxMDIzYmZmYg==TarlA7CwCsf7TngA+6foUQ==', 'OTcyNmQ2MGJjZjY1YmJjMw==10WF+Ec+Ld+2luAqi6GQWg==', 'YWNmZmIyYzQ1NTY3NDU0Mg==RH0sVCztEa1bo2omy4brZg==', 27, 'Male', 'MjVkMDBjMWQzNjU0NmViNw==b99IPFPidsR772Kl7fJQLlu/RV+Ht7GDF6kfPQVnWKY=', 21, 5, 6, 5, 2, 0, 0),
(45, 'YTFmODJjMDQ4ZjZlYWJkMQ==eOod9EI/ZfHVfab0/I+TFw==', 'YWMzNmZiNTlhNjczNjIzOQ==ZvuiHxGwxIn1RzjCFAy5RQ==', 'MjU5YjNlMTI3Yzc5YTVkYg==8klPqTMGMV0im6af8DD3fA==', 32, 'Male', 'YmUzZTQxNWQzYjZkOWFhOQ==dOonhoqsj545x5nQ5Cj2bq+oheBsrA1u8pznzLcxkdc=', 20, 4, 4, 4, 2, 45, 26),
(46, 'MGI0YTA4OTQzNWJlOTNiYg==2wV2gOVDMjmI5KWc7xhdQg==', 'ODM2MDYwNzNkNzM3NmNmNQ==5opF24ItgvCzTPEclFTOIA==', 'N2RlNTY4ZmIzY2Q4NDI3OA==mltZCFs5licA2ibeB5KdRQ==', 23, 'Male', 'YmUzZTQxNWQzYjZkOWFhOQ==dOonhoqsj545x5nQ5Cj2bq+oheBsrA1u8pznzLcxkdc=', 20, 4, 4, 4, 2, 45, 0),
(47, 'OTljNTk0NWNlOTljMTcxMA==CR2FLf7llg99icHMGtCl9g==', 'MWU4OTc1OGY3ODQwNWU1MQ==MWu49LlCcGAgi2k9d7peTQ==', 'ODA1NjZiNjEyN2Y3MjYwNA==PxjDANmT2BzXn/7MzSiKuw==', 36, 'Male', 'YmUzZTQxNWQzYjZkOWFhOQ==dOonhoqsj545x5nQ5Cj2bq+oheBsrA1u8pznzLcxkdc=', 20, 4, 4, 4, 2, 45, 0),
(48, 'YzNlMGNjZDEyM2U0MmM3Zg==blLe3KX9/WCGtMmwspM3mQ==', 'OWM5MzVhMjBmM2Q3MGQ2YQ==sASNihcwNb99Qwp9y+bzDg==', 'N2JkNTY3YjZjYjdjNjAzZA==aeMSC2AmKk9SoHZRVdgJCA==', 23, 'Male', 'YmUzZTQxNWQzYjZkOWFhOQ==dOonhoqsj545x5nQ5Cj2bq+oheBsrA1u8pznzLcxkdc=', 20, 4, 4, 4, 2, 45, 0),
(49, 'YjNhYjE3ZmJhOTNiYTk0MQ==fpNpDfDkY4NireVYM516zA==', 'MmY0YzAyZjU5YTRhM2EyNA==D2p1cnTFV78J8q8AgQWSlQ==', 'ZDg5ZGJmYThiMDgzZWI3Mg==ogoCrC4sUDcQajVtAz7fgA==', 36, 'Male', 'YmUzZTQxNWQzYjZkOWFhOQ==dOonhoqsj545x5nQ5Cj2bq+oheBsrA1u8pznzLcxkdc=', 20, 4, 4, 4, 2, 45, 0),
(50, 'YjgwNTc4MDhiNTNmYmZlYQ==I4jiy9nCxkHlS31eRVDWMw==', 'Y2FhM2QzNTVmZjRhNTA4NQ==7shzZf/TqoqVTae7nl5jWQ==', 'ZDlkYzk1YzU0ZTJiYzVlNQ==5J03a9EEBi2GVwCwB0UAmw==', 23, 'Male', 'YmUzZTQxNWQzYjZkOWFhOQ==dOonhoqsj545x5nQ5Cj2bq+oheBsrA1u8pznzLcxkdc=', 20, 4, 4, 4, 2, 45, 0),
(51, 'N2FkM2MxOWViNjdlNzIyMA==aXo+AGag0bEELphWGBCSqA==', 'Zjg0NWIyYTM2YmRmNDA2ZA==OgefFZtKFfS3kybTmxYqxA==', 'NmYxMWJmNDgxYjliZjc5MA==SeN9Ba6ftNC1y8dVwkz08w==', 36, 'Male', 'YmUzZTQxNWQzYjZkOWFhOQ==dOonhoqsj545x5nQ5Cj2bq+oheBsrA1u8pznzLcxkdc=', 20, 4, 4, 4, 2, 45, 0),
(52, 'NjE4ODRlNTMyMDllYTExNg==pnNIVeido34tcDIo7IoVqQ==', 'NDI2MjMxMjViMzg3NjcyNw==pyj7cDWzpiNDPytu9XTseA==', 'MWUxMmQ3NmQ5MWU3Nzk1NQ==IsBL6QTG/hDVHfvvwctHAA==', 23, 'Male', 'YmUzZTQxNWQzYjZkOWFhOQ==dOonhoqsj545x5nQ5Cj2bq+oheBsrA1u8pznzLcxkdc=', 20, 4, 4, 4, 2, 45, 0),
(53, 'MmJhMjcxMTg4ZDI2NTQxOA==nwt2UpHtcyu3I1FI5xYU7A==', 'NDcxYjRhYWRhNzEyZjI4Mg==NaBaOFtZdn8r6hPZYYUuOA==', 'MThjMTM1NDczYTBkNGY2Mg==F3hVVokOiJppz1S2Gpg4cA==', 36, 'Male', 'YmUzZTQxNWQzYjZkOWFhOQ==dOonhoqsj545x5nQ5Cj2bq+oheBsrA1u8pznzLcxkdc=', 20, 4, 4, 4, 2, 45, 0),
(54, 'ZjQwMTg3ODNmMmI4NjZlNg==WoKaEYklVpymXaSe6e3Qzg==', 'YmZmOWY0YWMwYTY4YWZhZA==APONLwIGwjaOgBjT7gozeQ==', 'Yzg1MmE4YzNjNDdkY2FjNA==YE8NaUrqPqBB/ZkCKLgJRA==', 23, 'Male', 'YmUzZTQxNWQzYjZkOWFhOQ==dOonhoqsj545x5nQ5Cj2bq+oheBsrA1u8pznzLcxkdc=', 20, 4, 4, 4, 2, 45, 0),
(55, 'MDAzZmJiZWUxNDc2YTY0OA==IRUxjtrriyZqGS1cHpO5+g==', 'MDAyZWU1N2Y0NDlkNDNlNQ==Eoybj/Q73qpyLoH7reqyIA==', 'MjliMjUwNjNhMzhjNDc1OQ==ttRwDIVEqKyLdnpoAaadcw==', 36, 'Male', 'YmUzZTQxNWQzYjZkOWFhOQ==dOonhoqsj545x5nQ5Cj2bq+oheBsrA1u8pznzLcxkdc=', 20, 4, 4, 4, 2, 45, 0),
(56, 'NjEyNjljMDM5Y2M4ZTJmZQ==jzDg3e9UM++xlKJo4KRW7Q==', 'ZTczZGE4ZjlmMDQwZTY0Ng==wtUUJ5UMCRQPbL+wJIMsvQ==', 'ZTQ4YjU2YWFmMzgyODhmMg==cQ0EIjVaGhAcpCE0oNAQfw==', 43, 'Male', 'YTdmYjRjNmIxMDlhYWJiYw==BCOU9ngZvYseijhxX5JQF/iA+7B8G0Gto5GvOzVFk6A=', 20, 4, 4, 4, 2, 56, 26),
(57, 'MmFkNWMwMzMxMjVlYzg0Mg==Ar5ryyvliZWIR7j8PAP/bg==', 'ZGFmMjJmMjkxN2ZhOWJkZQ==ksSmTWNwDQV6tHSqSBQZEQ==', 'NjE4ZTRiYTJiN2FiMzExYw==CD2Tpg79d2pc3CcYFOaPYw==', 43, 'Male', 'YmJmNzU2Yzk3ZTBlNTM2Zg==30FrxsoEAj5Pc0aavUK4KUAdkoP7jVtD9nRKSVvBM7U=', 20, 4, 4, 4, 0, 57, 26),
(58, 'MWEyY2FhYTBhMDdlNjFlYQ==uPfj6Ck+GgeufYweBRuDqg==', 'NDIyYTcxOTYwODFlYzUzMA==GbL67tMe366YNT4VwcVdog==', 'MzkwZTQ4Y2ZmMzk3YzZmOQ==PqYy4ucOU1U60oGoKo4p6w==', 34, 'Male', 'YTdmYjRjNmIxMDlhYWJiYw==BCOU9ngZvYseijhxX5JQF/iA+7B8G0Gto5GvOzVFk6A=', 20, 4, 4, 4, 2, 56, 0),
(59, 'YWU0NzlhZjY5NDBmOTFkMA==I5DdODkNbV5aNTP3ub+rRA==', 'YWI3MjMyMjg0ZGNkN2I3Mg==P5gyD/mRqVoDZ0L1OE6ALQ==', 'ZjAxNmRhZmYzOTUxODZkYg==fiTC6r+FijfTtHVrqD3aCg==', 60, 'Male', 'YjdmY2U5MmVjMTEwNzdmYQ==fgVMVGc8zyf8VUC1tuNaGWOD9h8Yg+tI06quc8FkFkM=', 20, 4, 4, 4, 2, 59, 26),
(60, 'NDcyYThhNTU0OGNiOGNlMA==4yFc+6v7xxpQlfx89yvkig==', 'MDllOTU5YjU5MmZmMzcwZA==ahTUl62cKDaHgBvz198pPQ==', 'ZmI0OGQzZmNkZjcyZTczOA==0aWHxigmgBwisz72ZBVKvw==', 34, 'Male', 'YjdmY2U5MmVjMTEwNzdmYQ==fgVMVGc8zyf8VUC1tuNaGWOD9h8Yg+tI06quc8FkFkM=', 20, 4, 4, 4, 2, 59, 0),
(61, 'Zjc3ODVmNDA3NTY1NjZjOQ==gir5RdT3o09rY7yZmwBwcg==', 'ODViZmJmMzM1NDE1MTg1Nw==/vlilM8TlkNK1Ee65Zq0KA==', 'OTU3M2E1NmVlYTBmMmNlYw==fdEzV1MU7WPnvt5fpWdO/g==', 36, 'Male', 'YjdmY2U5MmVjMTEwNzdmYQ==fgVMVGc8zyf8VUC1tuNaGWOD9h8Yg+tI06quc8FkFkM=', 20, 4, 4, 4, 2, 59, 0),
(62, 'NzA3OGRjNTY2Mzk4YWQ1Ng==UF91D2TpytwT4wOrhKow/g==', 'MmExZDhmZWNlNzdkNDNhMQ==05fk1blXRtkVIID8f7282A==', 'NGFjMDg1OTg1NThhMTAzOA==RJotXwS/iF8782bPWqlZJw==', 43, 'Male', 'ZDIxNzQzNjAxZGM4MWJkMA==hJwA04WkfCc3oRXGu91liJQ+7DItw69G0TjawsMjdWE=', 20, 4, 4, 4, 2, 0, 0),
(63, 'NmVjNTk2ODkyMjBjNzAzNg==6BNMo3drxp+tFSZ6IqG6kA==', 'NzJlNzAzODgzZGE1Yzg2OA==9+P2yd85ESdfiNZ9F83WIA==', 'ZTQyZjhhYWUzOGM0NWQyMw==HlpXSgyeTuCj30PN4WYAUw==', 28, 'Male', 'MGFkZGEyMjQzOTUwMTUzYg==oSXljHOvCLHPhLtB2F6z/DIe6KSYwK27pMmRHx53SU0=', 20, 4, 4, 4, 2, 0, 0),
(64, 'OTNlOTMyODVjOGRkMmFlNg==ZPjYtHzZZ832mslANcWokA==', 'MjNmZWQ3ODU5YWM5MTZlOQ==GLUPhFyHNx8V81oP4tTVHA==', 'NGQ3MzlhYTk3YjMzYjc1YQ==TCZ63fOzF+nIARbX9RVrkQ==', 34, 'Male', 'ZTZjNTczYTZkYjNhMmZiYw==KM7QnSucF1hbNoPezxG/nS1ZwYr5PVbnNr5PWQCpBso=', 20, 4, 4, 4, 2, 0, 0),
(65, 'OTcwZDVlZTBhNDA0OTE4ZQ==lXdFBf3Z/DbzEFkNZ2s14w==', 'YTYzODIyYTJkNWNhODc3NA==YtwZhQjZC2dMew96uem4VQ==', 'YThjZTExMzYwZDNhMTEwZQ==qsALhhNxbFqfh19BBmagLg==', 34, 'Male', 'YzQ1YWMzYjNkMzBiNDE4OA==G5UuW9BzcMyUB1C1KbA0XbtYHyovAZlW5vgtHeAbGKA=', 20, 4, 4, 4, 2, 0, 0),
(66, 'ZmE5ZTdlNDhmYWE5ZWMxYQ==FZjZvdZiC2qiZoOy8dnozw==', 'YjdiOWU5NDFmNWE1MjRkZQ==8ZzVfApnkB5msJjsOsFjYg==', 'OWM1YTAwNDQ3MmQ1YTk2Mg==eTZgn/TgGAD0+GXpXyeSCw==', 56, 'Male', 'ZmYxZTNjOGM4ZGQ4NTU3ZQ==hrTuzXizMkwMzEOXZY4OeLTPgj4v3f7y6B7iOjYLpBc=', 20, 4, 4, 4, 2, 0, 0),
(67, 'ODM3NTM0YTIwN2EzNjAxMg==/V1QtCSZ6bGcw2WP+mSPdg==', 'ZDAxYjliMDcyM2UxZDhhNw==qicp67WdXYp2KehnuPDQvg==', 'NTliOTFiNmY4MTI4NDk0Yw==BqyulwPXwSptwhGqBaM66g==', 56, 'Female', 'MmIzOWM4ZmI4NDk3MmNiYQ==f7bGWH9JjHpYF6BFykFOI5xFpXGtfwDWZYHx2z9a69c=', 3, 1, 1, 1, 2, 67, 7),
(68, 'NzJmNGNkN2U5MGJjZjY1YQ==257rLNjbwb5psE3zLs8SmA==', 'MjI3N2VmYTgxY2I0MTJkYw==mmakqJAussFblLC39DZMNQ==', 'MmQ2OGFlMGU1ZWJkN2JlNg==GsZgimM7UJ/SvUWWO9/ykw==', 56, 'Female', 'YjVjMjU0OWYyNWY1YjZjYw==lVzYEgHt5uJH0XkbN9vV+XsoXWROz2MRkOTxVVVehKI=', 3, 1, 1, 1, 0, 68, 7),
(69, 'ZGRmYWVkNDk0MzE3MmUyZA==DoJ/WVsGjc36HngR5cCq5g==', 'ZWI5YzgxNWFkNDQ2M2Y0Yw==Dt8qleX50YyS65oq83Pkeg==', 'YTYyY2IzYTVmOTE5NmJmOQ==zTA3UCLf4fS/1kkHmWArIQ==', 34, 'Female', 'MmIzOWM4ZmI4NDk3MmNiYQ==f7bGWH9JjHpYF6BFykFOI5xFpXGtfwDWZYHx2z9a69c=', 3, 1, 1, 1, 2, 67, 0),
(70, 'YWMzY2U1ODE5NmMzZDcwNw==6BcQ98cgDgYTtE1PdAXHig==', 'MTNkZjBhZGZjNjkzMDY5Ng==Alq4LJxFO35odk7HMcSNDQ==', 'OTMxNTllMzc4M2Q5ZTZlMA==RtHh+MJnskVhwxlnhsGUVw==', 54, 'Female', 'MTAwZWVkNDY3ZTliYTg4MQ==DjVeVwrz4OnZqe/AyjAKUZ5CDyqlStP298fsh5AGV1Y=', 3, 1, 1, 1, 2, 70, 7),
(71, 'MzI3YWNkMzFkZWVjYzBhZA==lP/LLpJkI0Qi2fBTLUFtPg==', 'NzgyZWVmNGVjOTJmZTk5OQ==AzWRA2AG/I2RnZTCbD7DZw==', 'MjQ0OWU1N2MxODA3MjNiMg==vEscce/S9W8VZk26VdJGOg==', 34, 'Female', 'MTAwZWVkNDY3ZTliYTg4MQ==DjVeVwrz4OnZqe/AyjAKUZ5CDyqlStP298fsh5AGV1Y=', 3, 1, 1, 1, 2, 70, 0),
(72, 'MmQyNzM3MzkwYjU3NjNjMA==htQTweb7CjpHQhCWiDAcTw==', 'MDEzNTZhNGZmNGE0ZWFmYw==zoLnh+aOTlwViAn1QDKpBw==', 'NDk2MzE4YjBmNGY2NDNlNA==4SjtPgMdrop4FBJlROtL7w==', 13, 'Female', 'MTAwZWVkNDY3ZTliYTg4MQ==DjVeVwrz4OnZqe/AyjAKUZ5CDyqlStP298fsh5AGV1Y=', 3, 1, 1, 1, 2, 70, 0),
(73, 'Y2Y5N2NlZjcxODZkNmY3Ng==1F4CkH9MIPx3o/6F5cuz3g==', 'YzExM2QyMzhlYTY1N2I4Yg==g6P119SxUckjXCdVkk2u4Q==', 'YjM1ZDg5OGUxZThmMTE5Mg==xMzOO3JVE6tmMkOviH7ZdQ==', 32, 'Male', 'YzRlYzM3YTEzZjU0YTgzOQ==ug4YRY44GovFm2/2i5Q8pB8TNyk76U0UXypmCj6vm/w=', 3, 1, 1, 1, 2, 0, 0),
(74, 'YWM0ZWYzNjAyMzc1MGU3Ng==KYt0qz5x2mDxTZeW/jLGCA==', 'MzMzOTk5MmRmM2RmOTMyZg==DCElQPbtrYolYZV1R5MKpw==', 'YTdiNjg1MzI4ZDBjMzNkMg==Bw/0wIxZiqrUXYtK7z3KFQ==', 45, 'Female', 'YmQzYzlkMWUxYmQ1NWIwYQ==0YFEKnrKYyo/vFtEs5zJEDXrpWsGvHkSyPpYycBbp1I=', 3, 1, 1, 1, 2, 0, 0),
(75, 'NTI0ZGZjNWU1YjkwYzhlNA==iHhbNCBA4tc1Ai94OsVrUw==', 'ZmUwYmMwNDI4OWY3OThiNQ==ZOKyeM0BbUyMl4icvdn8uQ==', 'YzM5NjVlZTc2MGNlNGJjZg==Gzw37D/3QUr7BZQpv5RlHA==', 34, 'Female', 'MTY0NmYzOTUyZjMxMzEyZg==cVHWUD4jQ2nC4+eYnLhwS+TNKphGvU+IDokoX7PpClc=', 3, 1, 1, 1, 2, 0, 0),
(76, 'YjU2YzY1NDE2ZGQ5M2E1NQ==SEqsK1d0LefqewAjgQKoTQ==', 'MDkxMjEwZDU5NjUzZjkxNQ==9s2183M5rjLAP0Ni41iazQ==', 'MzBhMjUzMTAwY2NhN2Q1OA==u9yqM32ayjzHyMvuIaRQFw==', 56, 'Male', 'YjFiMTViZjc5MTQyZWQ5NA==KxrCn/EFcyHd5oc/9Dok7nACdtgzlzFJ3ek20xrgP7o=', 3, 1, 1, 1, 2, 0, 0),
(77, 'NjFiOTQyMDdhYjRhMTZjNA==wijPxDxJgj7pHd3eDg36bQ==', 'MDZjZjQwODhkOWJiY2MyMQ==0D3txvtSpjOHxpyqO1vikg==', 'ZjdmZTVhNmVmM2ZhMzkxZg==oDEevXlsVpE9+1TJ8NTMhw==', 34, 'Female', 'YWQxYjI2NjQ4ZjcyYjY4Zg==9PqZGMgjkSsNTOtneBd48QUcPRqRsspMQYxh1L4hneM=', 3, 1, 1, 1, 2, 0, 0),
(78, 'NGVhNDkwYmY2ZTU0MGYwZQ==738KLaBCgp/QV7wwygt2Ww==', 'ZGE0OTZjZTZmOTA5ZDU3YQ==6TSRIgUkvJcT2c+i86mTxQ==', 'ZTM0YzUwN2IwZDgzZWVmYw==m/iLaL9sttlzG0clrti5Rw==', 19, 'Male', 'MjgzODBmMDhkMGRmNTlhYQ==sshMq5U2/vpBKRVGqLZtSYf5vKuZN5fQDsY+QSt6RUE=', 3, 1, 1, 1, 2, 0, 0),
(79, 'OTRjZTM4MDRiMWE1YzliMQ==ennVEGQGoLmZI2JSl+g1Mg==', 'Mjk4NjdmY2FkNjczMmY1OQ==2P5wpSGOeWx4pyaF9ylIug==', 'MjI3ZTY4YjkwMmNiZGQ4MQ==08rUjv458JKFTenI+J9ckw==', 32, 'Female', 'ZThlYWZkZGIzODE3MjI3NA==boUgRidFE1G304yDfAJT3XHLiJncPB3azjRPq1IsOPo=', 3, 1, 1, 1, 2, 0, 0),
(80, 'NjZhZTg0YjkyOGEwMWIzZQ==XU7CGWJK9Ogfdd3+mMsOow==', 'ZjcyMmVhODQwOWZkZDZmYg==Lt4CXVqfCVFP59v196lIuw==', 'MGUxOTFhOTc1ODFlMTUxYw==oVrSUmXdx50oGAQCskT+zQ==', 34, 'Female', 'MWVkYzQ1Zjg3Y2I2MDdiMw==4mhiZqdqI2IK5p9G62AKTI4ABxUOXCl71XLo98SC2J4=', 3, 1, 1, 1, 2, 0, 0),
(81, 'NjJjYWUwZGI0YmQ0OWM3Yw==PrAkezk9pV5uoQ77eDfE0A==', 'YTY3NWYyYWVlNWVjNTZkOA==HPR3BQsioNxBBsi3YrNVFQ==', 'OTE4OGRjNjRmNGU5MmJjMw==a3H/OoqeTJxHkRpq7e13VQ==', 24, 'Female', 'MWVhMzM5Nzg0Mjg3MGQ0NQ==mMDoGHg9+OoCuYtYcAToY0HKZkXJAe62LQnid4EgzVI=', 3, 1, 1, 1, 2, 0, 0),
(82, 'YWYxYTk2OWIxYjU3OTlhNw==IiffPRwFAQhyvCJZL64U9Q==', 'MjMyMTA3YmEwZGViNzMzYQ==B3wq7isC1cEgBnhq8Gkiig==', 'MDhlYjg5OTM2MTI0NDBkYw==UZgNaLo1rnI5qEPZf+b8nw==', 34, 'Female', 'OTI2NzkzODljZGQxMTM3Ng==B+49EIchd2W4PaD18Y0Ocf/cYGpJppwo75VhC8yMWPE=', 3, 1, 1, 1, 2, 0, 0),
(83, 'NThmMTQxY2IzNzM1YjY3Yw==Gx5G3bIMzKw62tpP1kXWeQ==', 'MGE3ZmQ1ZDU3Yzg2MTQyNg==Dwc+XIoh2KFr9QZh51/FNg==', 'OTI2MmU0NDY3NmFmZTRmMg==Ilim63qJICccwTRia/oO5w==', 45, 'Male', 'N2EyMGE0YjJkOWQwZjI2MA==K4SQsxqBU9TgGs9Vm028jxJJ1ZniyhfRye60lvuzQ2I=', 4, 1, 1, 1, 0, 83, 9),
(84, 'NjI5MzUzYjA4ZWJlNzk1Yg==RMMsc+pfPwEttIM5m2gN1A==', 'NzQ0MWYyNTVmMDQ4M2YwYQ==Ghn4DCNf5wyvaotJy/Un7g==', 'ZjZkODZlZjg1NzUwYWE4MQ==st5XuS0H35c5zVujrcrh5Q==', 32, 'Female', 'N2EyMGE0YjJkOWQwZjI2MA==K4SQsxqBU9TgGs9Vm028jxJJ1ZniyhfRye60lvuzQ2I=', 4, 1, 1, 1, 0, 83, 0),
(85, 'ZGMxZTZiZDk0NjI4NDlkMA==uw95lPXeS2kgqpQjCVEZQw==', 'MTk2YzVhZTg5NGRkODdhMg==0vjWtlsJXuo38bhJcsdYbA==', 'ZGJlN2FlN2FhNWFlMWQ3ZA==YdCngWjD2xMDuvVF34pO5Q==', 21, 'Male', 'N2EyMGE0YjJkOWQwZjI2MA==K4SQsxqBU9TgGs9Vm028jxJJ1ZniyhfRye60lvuzQ2I=', 4, 1, 1, 1, 0, 83, 0),
(86, 'ODg5YWM0YzcxNWZlOTE2YQ==ozREApHsUkyRd7ilGaiZVw==', 'NWViMjliZjExZjIzZWVkYw==tEwK9VUKQvAJmXI64TTguQ==', 'ODg5ZTMzYzI3NjFlNmU5ZA==1Ban3C3oQuB+CTEDKk/XYQ==', 23, 'Female', 'MWZlYjk1ZTQ0ZTNlOGE2Mw==CYFJlZtNbR9RTubYzItGv8QlvDsUeE/0noNT8R+XHJk=', 4, 1, 1, 1, 0, 86, 9),
(87, 'Y2UxZmI3ZjI3Y2E1MmQwOQ==W6WNlT0/ybzxoS+uy4F0kg==', 'ZTFiNjlmNzZkMjVmODFkYw==bk2m09IwPte/1R2zmlaEXA==', 'MzMwN2E4MjJiZjcyMmU0Mw==ZbH0QJhhNZkaeBAj3HdUVw==', 23, 'Male', 'MWZlYjk1ZTQ0ZTNlOGE2Mw==CYFJlZtNbR9RTubYzItGv8QlvDsUeE/0noNT8R+XHJk=', 4, 1, 1, 1, 0, 86, 0),
(88, 'Y2YyMDgzZjViMDZiNGY5ZA==a7xZTVciL0oxkhJjgFr5Ow==', 'YzdhYzIyN2MxODk4MjZiYw==hZAjTD2wsLuSdPGpGHsSxA==', 'MmM2MmNlNWUyZGM3NzBhMg==F6Ypj5fOc1VfHhQy/ixACw==', 25, 'Female', 'MWZlYjk1ZTQ0ZTNlOGE2Mw==CYFJlZtNbR9RTubYzItGv8QlvDsUeE/0noNT8R+XHJk=', 4, 1, 1, 1, 0, 86, 0),
(89, 'ZTJlYTZkYjc4YzA5NTU1MQ==TWz0F9/+ZeXweMbXEdR9Tg==', 'YmIzZmRlYWNlOWQ5MmIwZA==Vm2wzTVe+hLmqh3hvoWznQ==', 'YmJkYzIxNThlNTk0MmQ3OA==VawIRwdMFvwWW4KqRI6IGA==', 32, 'Female', 'MzA5OGU1NzIzMDFlMDAxMg==tmtImktigYfkilJR8llEX9eKIJ73tJhpkHjl85Ukep8=', 4, 1, 1, 1, 0, 89, 9),
(90, 'OWVkMTU3MDUyNTYwZmFiOQ==bKdZJ4CsgEPH0Yln8z55QA==', 'Njg5ZmI2ZTIxOWU5ZTMyZg==xpMitAY11CYEIf+vTg1DaA==', 'ZGEzZmU2NTQ3ZjEzN2YxMA==Dw743IV60UTH9EhvL7dTaA==', 23, 'Male', 'MzA5OGU1NzIzMDFlMDAxMg==tmtImktigYfkilJR8llEX9eKIJ73tJhpkHjl85Ukep8=', 4, 1, 1, 1, 0, 89, 0),
(91, 'MzA5NjljMjJlMGQyZjg4Ng==w1D44AFOO3MyBNCOz32vkA==', 'MGQxYTU3MWY1MGI3YzQ3Ng==MZPoDK5ywN9Nbt07RkDq/Q==', 'YWRkZWYxOTRiZjYxMzM3OQ==D4QNZBF/ou85xiEt20HQ7A==', 12, 'Female', 'MzA5OGU1NzIzMDFlMDAxMg==tmtImktigYfkilJR8llEX9eKIJ73tJhpkHjl85Ukep8=', 4, 1, 1, 1, 0, 89, 0),
(92, 'NmUwNmM0NzM0NDY4NGEzNg==f5CUxKwaWHBGK4B3jWYN2g==', 'YjlmMTBjN2JjNzU1Y2MzNQ==SdMQyF5X2J0E1GGHm21JhQ==', 'NDJiZGJjOTg2YmU5MzExZQ==bFBP0lEF44NWm8KpUd0Ing==', 34, 'Male', 'ZWNhNzI2ZmRjNDJmOWM2MQ==DWC56i3gUn+SDeMaqUJpW7Yj/YbUyEM2jNgdvxANIHs=', 4, 1, 1, 1, 2, 0, 0),
(93, 'ZjdmZDk3ZTU5MDI4YjA4MA==vfp7lA6PAxoPdL58si9pzQ==', 'YmUwODliNTZiZWU4MDM1Yw==wK5hGXGh7ZEgvmLU2idhEg==', 'YjQ1NzU4YTUxMGNmMmIwYw==x97r9DZ3D839jB+KbEz7tw==', 23, 'Male', 'NjE1YTQ3NTc5MTQ3Yzg1NQ==taxFJYVqjDdaYifNOnboSjJjAcHgj6r0x0ZhsWMCWOQ=', 4, 1, 1, 1, 2, 0, 0),
(94, 'ZTcxOWNiMGQ5ZmI5Y2UwZg==quYa1AdHZl1WV7OuOYiV4g==', 'ZTIzZDM2ZGVjNWQzYTYzZQ==3qtEgFG6+Xdc2o+WmlUqJg==', 'NmNlNTM1MzkxZmExNDYxZA==KCYSltJ22PxIt4T8wQ5xRw==', 23, 'Male', 'MjJmODVjMTg3M2ExMGExYQ==BkkK1GPUxd1D9af7Sok2f/7BNqUxQEg36mNASWy1f9I=', 4, 1, 1, 1, 2, 0, 0),
(95, 'ZDg2YjdiMGJlODc2MjZiOQ==U2UiDI35pLQJmSO+HiUTaw==', 'NWFlNGVjZjE3OWRmMzc2MA==CEBLk4yWR2oNL9U9Br4SFA==', 'YjE2MmQ3NTZhMjExOWM4NA==M5WO38UxPq+YyxPMbvvkNA==', 46, 'Male', 'NDE0Y2Y3NDYzZGM0MWI3Mg==7vIq3Kz7qhkrWOoGQ+rHmdrxvnxDsNvyqIyvrmUiJAY=', 4, 1, 1, 1, 2, 0, 0),
(96, 'ODRlMzFiZTM3ODJkYTdmMA==ZOwrM3H9E09JoiUUOK4uag==', 'MWFhMDE3MjkzMDUxZDA5Ng==oFOnQDrsBnaKefzbfCGSqA==', 'OGY4MTNlMzMxZDJlMzBkOQ==g7fK4xn3amAxLSH4xT6UZg==', 35, 'Male', 'OTE5ZDA2ZTVmZjVlYzhmMQ==3oXU5uC/koaXHzLhtS1IvKA+siytNjOCbucyX6V4MQw=', 4, 1, 1, 1, 2, 0, 0),
(97, 'YmM2ZmVkYmYzZjNmN2IxOQ==fUTA8lXITsrtgnEBfGAfRg==', 'ZjI0ZDQwZTAwYTZjZGJlMw==7E0pweQGlSTqBkp3qVVo1g==', 'NWE5NDAyZDIxNTFkOGJiMQ==3Wa5rds/BaF2SWxW5bhdgw==', 34, 'Female', 'NDRlODZkZTc3ODRjOTkxZA==eD0rTLIGVCNU8YyRdtY88AZp/fDYWeaoswV4u/4838s=', 4, 1, 1, 1, 2, 0, 0),
(98, 'MDAyOWJmMzk5ZDM5ZTY1Mw==jaVVUFou+bSHgnZ8C+x/6Q==', 'MjI0YjAzZDA4MjI0MWYwZg==5k70d0vduEMLQN3jmPYUrw==', 'YzY3YTgzY2I1MTE0NjFjZQ==Jk1wQLtjn1n3U8E+hcED6A==', 34, 'Male', 'N2FiZDA0YzExZThlODM5MA==WSTbespWVsZoNvkLCamwl36j1N90dKkRzWOmL5ZgbFE=', 4, 1, 1, 1, 2, 0, 0),
(99, 'ZWUwNWQ2ZGNlNmU0ODNmMA==gYjkRGC/omY8KKNOk9Pl0Q==', 'ZWJhMTg0MWJkNGU4ZWU5ZQ==p7W9V8f9az13PHNMQpC6Uw==', 'MDgyOTg3MDc1NTUxZjQzMw==bJ15eNYk6pMQ+uG5FMc/Uw==', 26, 'Male', 'ZDM5ZDU2NGNjZTM4MDRkOQ==2NLGXQtpYZxQ980b5lB/g6QQS8uZdoPzuYqrvz6ltM4=', 4, 1, 1, 1, 2, 0, 0),
(100, 'Nzg5NGFiNmZjNTViZDkwZQ==yK0IRAHfofJ+qbrt51ZcwA==', 'MmMyYzViY2RkOGViN2UzZQ==Z72jq6XcewlC9ry34Tvb3w==', 'N2NhMGRjYzlhNDUwYWNlNQ==+dTocTZP3H9ufmf4+68CnQ==', 45, 'Female', 'OTY5MmRhZjJmMTY4OGNmYw==FO/Vbgls6YDuubR7BTuql8Mja3M1b1hJxWGgYc7f0SU=', 4, 1, 1, 1, 2, 0, 0),
(101, 'YTlmYWIwODg1ZGU1MDlkNA==EkqUDYnEQvyonUHAuVk1BA==', 'NGNlYzJmYjY5ZTdhMTMzZg==NsHuAYIzlNawrT49HwXS9g==', 'ZGMyZjkzM2QxZTFkNWM2OA==6dpg7Zw3QfiCPDC0FHXiUg==', 36, 'Male', 'Y2ZjYTM4MGMzYTM3ODI0ZA==c8xMv5nmF2h/NyP9+11ucU/yn+XBeykq5qoyRbcrhio=', 4, 1, 1, 1, 2, 0, 0),
(102, 'YTMwM2Y1NGRlMDE3NmEzZg==bKXbZOkAMkAOkidpdBy/bw==', 'YTdjNjNjOTZhYTQ2YTk2NQ==nYQocs2eEsxayiPW8TPQ5A==', 'OTQ4NjdjZmNlMGFmZmM4Nw==JsZv8QRqL5P8GXzmI0jKyg==', 46, 'Male', 'N2U4OWZhNWFkYzQyM2ViZQ==ZpibrjY9gXH6vzw5krmj8Q==', 3, 1, 1, 1, 0, 102, 8),
(103, 'MzdhMTQ2NTgyY2NiMjZiMQ==rMwD+V3GLNiCrP/vo/hHJg==', 'ODgwNTAxYWRmNWUxZmEzMw==w0oUyvMN2jAIrhHify6Eag==', 'MmI0NTg5Nzk1MmZiNzcxNQ==RInuqhNvZFpI4RGhrEP5aA==', 28, 'Male', 'N2U4OWZhNWFkYzQyM2ViZQ==ZpibrjY9gXH6vzw5krmj8Q==', 3, 1, 1, 1, 0, 102, 0),
(104, 'MjhhOGM1ZDE0Yzg4OTIwZg==Pawfd6960Q/WsFqm5K/VvQ==', 'NDgwZmJiMzhhYjYwOTU5ZQ==O1+rvfQNPqmlwvpnUlhAPg==', 'ODZmYmFhMzVkNDdmY2FiZQ==RzvXX6pu3HK8dgVJdYQvLg==', 21, 'Male', 'N2U4OWZhNWFkYzQyM2ViZQ==ZpibrjY9gXH6vzw5krmj8Q==', 3, 1, 1, 1, 0, 102, 0),
(105, 'ZTVlY2VmMGE4NTViZDI3MQ==FjCT34I14qLdOV0BuNZwlQ==', 'NWQ1NzMyOGI0NTRiYjJmMw==He6ZworsClGyWgT0XgNb5w==', 'N2UwNDNjNTY0ZTNjNGM0Ng==nfAhnQmJ8EZG7JORVhtNZg==', 37, 'Male', 'Y2IwMDdmNTJiMTgzY2FiMw==7Qpn6uRZ/asHSexuKHgu6A==', 3, 1, 1, 1, 0, 105, 8),
(106, 'NDQzZDViZTA1NGM5NDkyMw==JLcfaZWE9v6g5RFGwuPobg==', 'NTYxOTlkNDU1MjY1ZTE5ZA==krWqUir8PzoeijLJnz+s/Q==', 'NzRjZDhmMTVjNGUxZjJkZA==aRF47macZVkQqnV8QuV1fQ==', 35, 'Male', 'Y2IwMDdmNTJiMTgzY2FiMw==7Qpn6uRZ/asHSexuKHgu6A==', 3, 1, 1, 1, 0, 105, 0),
(107, 'ZTkyN2NhMzVhNDYyZTA1YQ==mDU8otNzDdN1Rqr1X8daiw==', 'OTMyYTA1ZjIyYWZiMmUyMA==su5VPvsSXvL9Hehp8BCvNw==', 'OWI4MmM5YjYzZWI0YTgzYw==crRVlHUsHfEPMLWF5aqu1w==', 32, 'Male', 'Y2IwMDdmNTJiMTgzY2FiMw==7Qpn6uRZ/asHSexuKHgu6A==', 3, 1, 1, 1, 0, 105, 0),
(108, 'NTRjM2FiNjFjNTgxMjI1ZA==KtUP3oz2vSvaOrBzB8V+Rw==', 'N2M1M2VjNjA1NGUxNzIwMw==JyI5QWdCfWQXDpRNluLIzw==', 'NTU3YzBmYWFiMWNjYjExMw==J8dREdfQXOFg2OTI5atxfg==', 29, 'Male', 'MGIzOGViZGRhMzM3OTNmMw==nV+YcgetqCQ+ajWdh9PFGQ==', 3, 1, 1, 1, 2, 0, 0),
(109, 'MTM4ZjNmYzdmY2IxNDNhMQ==Zmvfcvta6+THeKzq831tKQ==', 'NWY1N2EwYWRhOTczYTFhNA==HUNUEboOFsZJAior5lmc3g==', 'NGM3M2I3NmM3MzgzN2IwZg==FOMjVQphBXUmn4Fk8UeSkA==', 19, 'Female', 'ZTAyNDQ5OTRhYmZlMDZjMw==RdiscXmLP+OzFn7LKx5VfQ==', 3, 1, 1, 1, 2, 0, 0),
(110, 'MWExYmIyMDBmMzBhZDIxYQ==OCQ9NGXuLqVtgD7VWYKbHg==', 'Y2I4ZDdlMjMyZWMyMTkxNA==4sO1Du9l+MII9iC7cOK5Sw==', 'NzZlMjUxZDBkMmQ4MDY2MA==lYeuNI6ymRUSldLrcmb57w==', 35, 'Male', 'YzgwNzEzZTMyYjU5MDZmNQ==nZ3O4aboerKeVOsc3TfXcw==', 3, 1, 1, 1, 2, 0, 0),
(111, 'YjI0MTRhNDQ2OWE5ODY3ZA==bSG0lAIBkHEDfY8S7X08CA==', 'MzVlMGQyMjY2MjUwOGRlZA==CQjVztZSaiuv+8OOWkanhw==', 'MzA1MDY0OGMyNTZiZjM4Yg==Ayfsgb/LChx7OowsVt5gIw==', 32, 'Male', 'NjMyNzFmZjEzMWM1MDcyMg==iSKKbSzgaEpgw9vTZCK3iw==', 3, 1, 1, 1, 2, 0, 0),
(112, 'MzdlYTA1OTc1NmZlZWMwNw==4KQoPqQ2h87u9745oXExkQ==', 'Y2VhOGUyMjg4Mjg4MzU5YQ==4vuPgWNBrU2gReKtakUiiA==', 'MzAzYWE2MDk3MzliYmU1Yg==FTx0fG7kMKIi+XKVS6Nrew==', 54, 'Male', 'YmVlN2U0MWYyNGFmMGJjMw==FEpymlbWmK2kErHqAbbXqg==', 3, 1, 1, 1, 2, 0, 0),
(113, 'MWNkYThjN2IwYTY2N2M4ZQ==C0J9WmaFmcGQbv/PYRwX/g==', 'YzZiZjg2YzlkZDk1YjZjYQ==O8WxDTCMa/xmM7CXxsNzgg==', 'MGI4NTE3NDk0NzFlYTM5Zg==afnm8B5fIQOt+jqrDlu9gg==', 21, 'Male', 'NGYyYzgwYzJkYjRiZmIzNw==ksb0lGl/47Ui1evUwiSM6g==', 3, 1, 1, 1, 2, 0, 0),
(114, 'MDMxOTQ4ZmUzOWNhYjkwZQ==jygCDbuO6nQaJTbCkRhQCw==', 'MzA4ODdiYTRiNjhiOThlYQ==j+mBRIg/vqsVlSzj0kcrVw==', 'ZjIzYjIyOWUwODk0ZjUyNw==Xja6iGHUZSRuVgTvpsnZHA==', 45, 'Male', 'Mjk0Yjk0MDcwYmQ3OWU3MQ==grZ/9p7vmaagLi40gvqLUw==', 3, 1, 1, 1, 2, 0, 0),
(115, 'ZTI5MGVmMzJmNTIzZmUwYQ==0dr9S1D7whLjvG3Pg4S5Hw==', 'ZDU5ZDc5ZGRlMGY4NjhiZQ==EAyoqgyMmWpeo71ZU20Q0w==', 'NWU4Mjk3NDc2NTFhOTZiMA==itmQiFUI0f2N2kyQ5KhPaw==', 51, 'Female', 'NDhkZGYzZDRkMDNkMmFkNA==kJzxpKz9JXP28UyZ+Z7/vA==', 3, 1, 1, 1, 2, 0, 0),
(116, 'ZWE5OWRkOTFmNWRiYzRkYQ==x9aFlxbRFbcyNhlOcd0dLg==', 'NjAwMTVlMzc5YjA1YzFiZA==E8v0hYvCFl6xongZiMsXiw==', 'OTJjODE1N2Q3NjJhZWE3MQ==t70M3wa7CuRhAqe187wk+w==', 43, 'Female', 'OWZmODIxN2M4MzNlOWY1YQ==5yw3uJjd1n4UW66Lk+NB4A==', 3, 1, 1, 1, 2, 0, 0),
(117, 'YTdkMjVhYzliOTBiMjI1MQ==XT0H0lwTeO4VCD9BJSrPQg==', 'YjI1MDQxNTJmYTM4MTViZA==DKK5q9skeRjf/Rxx1REdgg==', 'YmU2OGExNWJiZTAzNjQ2OQ==V8//cWdID8z3aSZ9MJHN2w==', 45, 'Male', 'MTRiNzdkOGU1NzZmZTlkMw==TF//UPFol1IaSSjKr1fQ+Q==', 3, 1, 1, 1, 2, 0, 0),
(118, 'NWFlMjUyZDE4YmY5YjNkMQ==erms+zyipyntlPdLunzpdA==', 'OWY1MGM5ZWEzZGNkNmZkMw==g5JBJj4JJIPx5zzfj0lVMg==', 'NzJiNDIyMDA4ZTI1YTNlNA==eCIm/PsabeTlDHYPwM/Fhw==', 28, 'Male', 'MzI1OTRmNGU0MTk2ZmZhNQ==8FpUJ6pJWnunrfopRTot9Edf41MKgBm+tXCu+l3qNnw=', 5, 1, 1, 1, 2, 118, 10),
(119, 'MDdjNzYxZDM4OGQxZGEyYQ==akT693ibjSA8xpOx3k8jpQ==', 'YzUyMDMxYzFhOGM0MTE5Ng==EhmsGnIiTEcA+A3/y+3qQQ==', 'OTZlZDFkZTQxZDU4MzI1OQ==1+Osb8/76J9GwQlVRp5YQw==', 29, 'Male', 'MzI1OTRmNGU0MTk2ZmZhNQ==8FpUJ6pJWnunrfopRTot9Edf41MKgBm+tXCu+l3qNnw=', 5, 1, 1, 1, 2, 118, 0),
(120, 'YTAwYmQzYmIwYTEwMGZlOQ==A1rtoXpbErvqFkX79EHdcw==', 'ZjVkMTA4MWFhZDRmZjYwYg==J2ytmsxjAbyFzV9AoaPqNA==', 'MDBiMThiNDYxNDM3MzM2NA==ziLiEt4LjG7o0PdlKYB4Tw==', 21, 'Male', 'MzI1OTRmNGU0MTk2ZmZhNQ==8FpUJ6pJWnunrfopRTot9Edf41MKgBm+tXCu+l3qNnw=', 5, 1, 1, 1, 2, 118, 0),
(121, 'YzU3Mzc3MjcxMGUwZjQ2Yg==vZU5pr7ykpNYX+d4aD7/9A==', 'NGExOWMyNDc5MDg4MzY2Yw==7NzV781diriFaTWobWeTpQ==', 'MzhmMmE0MWIyYzZjNzdjNA==WoTjW7F7SX9V5yV+SvDItw==', 43, 'Female', 'NjdmMjkzMGQ4ZjE0ODBjYw==3GKKL8JreHVCc2H9btRxYVFNfK12QmCiytrF3ZOEc9Q=', 5, 1, 1, 1, 2, 121, 10),
(122, 'ZDkwYTQyODJhZmJlMWE1Yw==KTYYBlGvHWari8bgZNHfUg==', 'ZmIzYTJkYmYzOWIwNWRhOA==RCIDoLV2zGILFduPCEQTIw==', 'MzAxOGM2ODBiYTJlYTVhMw==WSL6H7IwQ8BJurKMtdwmHA==', 43, 'Male', 'NjdmMjkzMGQ4ZjE0ODBjYw==3GKKL8JreHVCc2H9btRxYVFNfK12QmCiytrF3ZOEc9Q=', 5, 1, 1, 1, 2, 121, 0),
(123, 'ZWM4ZThjODIxYzk1ZDE4OA==R0KaFj/M0u3MNtF71Vfv4g==', 'YzhiYTMxNzVlMmY1MzUwNQ==ecKfF4cW4pdLWtt8IHvJTw==', 'ZjNjYmQwMTAyODQzODllMQ==1hAd5CwXNezLY5/H9ji5Sw==', 43, 'Male', 'NjdmMjkzMGQ4ZjE0ODBjYw==3GKKL8JreHVCc2H9btRxYVFNfK12QmCiytrF3ZOEc9Q=', 5, 1, 1, 1, 2, 121, 0),
(124, 'MjE4OTMwMjI2YWY3MDZjNQ==52Z8rzf8LrRxLSvGZl39+w==', 'M2MzYjQwNDNmOTcyMWI0NQ==ASAzLrGBp+eE2+NSw8fpsQ==', 'ZTg3NzAyODdkODY5MTA4OQ==XwXdGVhAIg10spGqVrGIwQ==', 43, 'Female', 'YWNmNWJlZGM3N2RkN2Q2MQ==l/QbnyJoHSDcT+fM0KoFXoXCSiCtCfZLcWKzDg8ypjI=', 5, 1, 1, 1, 0, 124, 10),
(125, 'OGZhNWU3NDllM2QxMDgyZg==JKEwHRYzYpqbqvM6BS8bTg==', 'ZmY4MzgzZWIwNWQyMTMzNw==OaLQ6A70C7OPO02NX8ruaQ==', 'NDYxMGQ4MmMwNjg0MmY2Yg==oS9785JfCEjCbRnNjB+QrA==', 31, 'Female', 'YzMxYjQ5ZDI0ZGNlYjAxMw==mfrWLU52b9CvN+dBDLQkyJqBiuy4VBZRhSUVUO9tNIQ=', 5, 1, 1, 1, 2, 125, 10),
(126, 'MThjMzIwOTc2MGE4MmMzYQ==kB2Mow0zvOJcQUBteimDWw==', 'MjhhM2U3Y2QxYmFhMzk2ZQ==dCq1QqAxWHvVLqNIqdoDEw==', 'NzgyMzc4NzlhNTA3NzEwZg==APgHOyDZQlK6bKYw5uBS1g==', 32, 'Female', 'YWNmNWJlZGM3N2RkN2Q2MQ==l/QbnyJoHSDcT+fM0KoFXoXCSiCtCfZLcWKzDg8ypjI=', 5, 1, 1, 1, 0, 124, 0),
(127, 'MWY2NDgxY2E1MWFiMzY2YQ==fQtXCnrJMWip4k+kOXMWAA==', 'NGVmOTQxMzc4YzIyYmFlOA==lEl2WnLZZoVKNVx6bkuNZw==', 'MWUyOGY1ZWM0MmNlMTI1Mw==nb+y+MgahBBar6n5V3cfbQ==', 21, 'Female', 'YWNmNWJlZGM3N2RkN2Q2MQ==l/QbnyJoHSDcT+fM0KoFXoXCSiCtCfZLcWKzDg8ypjI=', 5, 1, 1, 1, 0, 124, 0),
(128, 'NDgxNmYzMzU4NjZmNDBiMQ==p2Lq/Ugvcj3MF6l9zN0FNg==', 'OGQ5OWM3NjgyMmRiOTJlMg==EtAg6W2p+qakI1BHvv2uqQ==', 'Mzg0ZDI5OGYzOTYzN2VkYw==8tZRuG0I4xgs7AVQA+m2ow==', 52, 'Male', 'NmJhMjQ2MjIyMjE3OWY1Mg==oTsOn8h5b84K+U2prQUD2b8UYEMCO7c9HeYWfRYr+MM=', 5, 1, 1, 1, 2, 0, 0),
(129, 'OTJjNTZlZDgxOTg2OGVkOA==ZzMSPuTZ4OvQl3qwvftUUA==', 'NWUyNTdmZjM0NTk1YmMzMA==h5q7Bijs7vQa9AoNx6BLrA==', 'ZDFlMzBhNmMzZDcxOWY0MA==8SLW/uYbXpJPUwgA8YOdmA==', 47, 'Male', 'YjVlYTM3NTA5NGE1M2E1OA==GiVgrksAw36GHQ1BxSsVSjDhrz1kAmrpPiMXNN9KW2Q=', 5, 1, 1, 1, 2, 0, 0),
(130, 'ZjQzYmQ3NjU4YjEzNTc5Yw==fMlVqvpBXUCH5qArdQ0WGQ==', 'MmM1ZWYyNjNmMDIwMzE1MA==u63OYivmrcFTLAOqtrOHWA==', 'MDk2MmNkY2U5YzViODVkMw==/2+JYW7fxnMHecbSDjlJtQ==', 56, 'Male', 'MDgwZWYzMDczNTUwYzRmMA==w5rbSlktXp2dBLZ6HytOZQ==', 5, 1, 1, 1, 2, 0, 0),
(131, 'YTIxMjUxZTIwZTYzYTkxYQ==ElPXvfdqsz1LzvABZENYSQ==', 'ZjMwOTk5NzYyZmVhMzIyZQ==sW/usKLHyVcFKqHsv7tpOw==', 'ZDMyODI2YTFhNzI4MDI0MQ==O6GumHV8RgE6bjjJIrDKtA==', 45, 'Female', 'MzBiNjg2ZDA4ZTUyNjQ5Mw==o6r6Jv9Jcbpjo3M1X2LxuceLZDs/ztyE0Jz/Bi/6ib4=', 5, 1, 1, 1, 2, 0, 0),
(132, 'MDMxYmM3ZDk3ZGQxZDYzZA==5mdOtJOLsVElr/UwTiDeCg==', 'NWE3ZjY0ZDhkMGY2YTIwYQ==sjFMRVAoU5E6IFqcfq9DYg==', 'OTVkYzQ3NzFkNTJmODMyMQ==PtYRsGnh18ydXO2gaUmlUA==', 23, 'Male', 'ZmUxNjc5NTlhZWNhNjY2OQ==V2Z591BKi+7xMF/Z3t6t5s+pUjD73X0+pHRF5D3f54U=', 3, 1, 1, 1, 0, 132, 8),
(133, 'MTA1N2IxYzYzNjE3MzMzYg==mSAYVa5q7mGzpQf9loOAkQ==', 'YzExM2MwNDFjNjBiYmZlYw==xoggLuuPNLNLpm/GehJT/g==', 'MTJmZDZmYTkyYmNlOGI1Yw==/m5qxVM+KqLBVoT8WwhTDw==', 23, 'Female', 'ZmUxNjc5NTlhZWNhNjY2OQ==V2Z591BKi+7xMF/Z3t6t5s+pUjD73X0+pHRF5D3f54U=', 3, 1, 1, 1, 0, 132, 0),
(134, 'M2NlMmZmZDFiNGQ0NDBmMw==VlpQ2Cq/hANrOfxqynI4OQ==', 'MzZhODA5YTM2ZTJmNDU2NA==/dBk3ZbXYIQsZ6tvaFXgcg==', 'MWE1YTE0MWEyMTE2ZjdlNg==1z6IgKAgx2hugtW8poVUfQ==', 11, 'Female', 'ZmUxNjc5NTlhZWNhNjY2OQ==V2Z591BKi+7xMF/Z3t6t5s+pUjD73X0+pHRF5D3f54U=', 3, 1, 1, 1, 0, 132, 0),
(135, 'NzBiYTBiNmRiNDdkNGZmNw==OquUNDHJe8QdspJinERWiw==', 'ZDhhZTM3OWY3ZTBiY2MxNg==Z1nEzqfxoFI0DzuxdM3GUA==', 'OTE3OWM5YWFjNjM1YmU0ZQ==X1jumgvjvwVKmv6Gn/laCA==', 23, 'Male', 'YWZhNjI3OGJmY2M2ZGY4YQ==6/dY0zQaoDfwpjwcHH7j1g==', 22, 17, 18, 5, 2, 135, 42),
(136, 'NWNhNTM0OGM2MTlkOWYzNQ==SAw3OTznG+FHfNEorvDQ+g==', 'YTA0ZmU0MzczMzlhZDA3MQ==Ib1K4Ek1Ph8eF1UGMKvdvw==', 'YzE5YzY5MGU5MjQwYWM1ZA==edUchn7u9BB6GQyGZhUCwg==', 21, 'Female', 'YWZhNjI3OGJmY2M2ZGY4YQ==6/dY0zQaoDfwpjwcHH7j1g==', 22, 17, 18, 5, 2, 135, 0),
(137, 'NjQ4ZTlmNzlkYzA4NzhmMA==BBd1QHiUf3du1ckDVJty/w==', 'YTA1NDhjNjE3YTViZDljZA==HSLChrY6c5Tox+/Hfu/GdA==', 'ZTVjNGFkNzUxNWNlNWVmZg==snRa2KILwv4ztILEkRpNvw==', 23, 'Male', 'YWZhNjI3OGJmY2M2ZGY4YQ==6/dY0zQaoDfwpjwcHH7j1g==', 22, 17, 18, 5, 2, 135, 0),
(138, 'ODdhNDU2YzA3NDRmNzE1Mg==35E1zWtM/7Gd0jI+4v/t5A==', 'NjJlMjA3YWYzZDgzMTZhZQ==YI650pH1dUgi+ZFRbe9ZGg==', 'ZGVhZGY1ZjIwNjg3M2Q5NQ==eMcpHYWds38v/dHqHXT2Dg==', 21, 'Male', 'YWZhNjI3OGJmY2M2ZGY4YQ==6/dY0zQaoDfwpjwcHH7j1g==', 22, 17, 18, 5, 2, 135, 0),
(139, 'ZWFmOWJjZjEzNzQ0ODM2OQ==i94sOMgNqLPeZNKqGDtIfw==', 'NGE0NGY4MWYzZTAyZjY5Zg==Vf/m6WHltqze2pxUKl1aVg==', 'YWY3NjMyNjhmZTk3OWQwOA==kDz2RpDe/g/ZMBKIxY8RLQ==', 45, 'Female', 'YWZhNjI3OGJmY2M2ZGY4YQ==6/dY0zQaoDfwpjwcHH7j1g==', 22, 17, 18, 5, 2, 135, 0),
(140, 'MzZiNDBmZjIzMzQ2NGIxYQ==qgtFdpcDrIAULBQh+2YCVg==', 'MTExZmVmYzlmODY0YjllNg==DK65LpMosnbb1NZWyAvffQ==', 'MjBlY2I2N2JlYjAwMDAxYw==MpDB+rsr2ahYR0p3WotHKg==', 45, 'Female', 'ZTMxYjhhMGIwZjU3ODNlYg==/YMYXZVbZtJR0WO3VOncDQ==', 22, 17, 18, 5, 2, 140, 43),
(141, 'MzIxMmRjODgyZTQ5YmEzMA==fqnToiIQpai8AwDLA29/TA==', 'MDkwMzZmMTM1NGZiNmJiNw==wSJeZsjxupwXAa5tNXR88A==', 'ZmU4ZTBmZGFmMTIyMzU5Mw==mP1KW3ZlXwA6TfWIxzwR8Q==', 34, 'Female', 'ZTMxYjhhMGIwZjU3ODNlYg==/YMYXZVbZtJR0WO3VOncDQ==', 22, 17, 18, 5, 2, 140, 0),
(142, 'OGNkMzUxYjU5MDBmMDIzNA==2HbWHRuAc5yPGtEKvGy7dw==', 'OWVjZTFjNTA3NjNiYTkzZg==7vtSAWVRIu+Ro4hkNCpT/Q==', 'YjBkOTc3MTUxMzA4ZDlhZQ==5qw8SghhaalEOipDls12wQ==', 45, 'Female', 'ZTMxYjhhMGIwZjU3ODNlYg==/YMYXZVbZtJR0WO3VOncDQ==', 22, 17, 18, 5, 2, 140, 0),
(143, 'YjFhOGFlMTg2MjlkOWU5ZQ==Cn5fDszPdP4K4z7WRd59tg==', 'NjQyNmNhNmY1YjA2MTE2MA==VmIis+qXA9zExcTvHyQGVA==', 'ZDYzYjg2NDMzMTgzYjU1Mg==0LP7Y6sCH2cyhxCXpeRSOg==', 23, 'Male', 'ZTMxYjhhMGIwZjU3ODNlYg==/YMYXZVbZtJR0WO3VOncDQ==', 22, 17, 18, 5, 2, 140, 0),
(144, 'YTVjODdiZmVjZGMzYjQ1ZA==0HGjMlFRFSbi6nIIGcak+w==', 'MTBjOGE1ZGI5MDk5N2E4ZA==yRR3yqop2hq9ijIS+UEa3w==', 'YWZmNmY0OTJmMjg2NDQxMQ==p81AOJ7Q6/sPSGS01zqkew==', 34, 'Male', 'ZTMxYjhhMGIwZjU3ODNlYg==/YMYXZVbZtJR0WO3VOncDQ==', 22, 17, 18, 5, 2, 140, 0),
(145, 'MmJjOWIxOTZkNjNhNzcyNw==qJKX2OXbvtRC+7Jfc2CsLQ==', 'ODJlMTQ5NmEwNDQyYWU4NA==SbKq5Atgie/lW+9iDd6KUg==', 'NDA2NjE3ODM5MGNjYTJlOQ==Bzd29UT4gRgTmAvTUJoAVQ==', 45, 'Male', 'OTA3OTRlMDM2MjUzYTk1OA==ToXnNsxBH4s+cfWphWlGug==', 23, 17, 18, 5, 2, 145, 44),
(146, 'MWJmODYxYTc4ZGY1MTYyMw==B7550xEwuWPfhaXHXFJm/A==', 'Yjc0NWQ3MzQ1M2ExYmVhNg==CYF1UE4Y0rSz8JjOdmTOFw==', 'NWY0YzQ2Y2QwOWNjOGQ1Ng==iNxnIb2JzIKGA8p+fYqMCQ==', 45, 'Male', 'OTA3OTRlMDM2MjUzYTk1OA==ToXnNsxBH4s+cfWphWlGug==', 23, 17, 18, 5, 2, 145, 0),
(147, 'Y2YyMmRmNmNkNDM4OGZiOA==hoOzJn95FM5h/fwZHtAh4w==', 'Njk2MWI3ZWMwNTkwYTMyNA==0SfnQNRewl4hlNt+PEtF2g==', 'ZTVjY2Y3YTE0NGYwNzkzMg==MzYOKHGXOyijK6np3qzuVA==', 23, 'Female', 'OTA3OTRlMDM2MjUzYTk1OA==ToXnNsxBH4s+cfWphWlGug==', 23, 17, 18, 5, 2, 145, 0),
(148, 'NGY5NDhlYjg4MTA2M2ZkYQ==21gD+TGlv8m/TDcLl4R2BQ==', 'NzM5NDQ5MDljZGIzNmIxYQ==rwtp+WqjTz/uwiMwhYZQcg==', 'Y2YzYWE4MmQ1OTdjZTgxNw==YewQ4qe3GNRPnLbZMkBvQQ==', 5, 'Female', 'OTA3OTRlMDM2MjUzYTk1OA==ToXnNsxBH4s+cfWphWlGug==', 23, 17, 18, 5, 2, 145, 0),
(149, 'MDU2ZDkzYzg1NzljNzlkNg==x/0PJ0KsJtDN3GhW14rBuQ==', 'YmI2MDZjMGZkMGZkNGQxOA==7gapudO6Wl/P3yGrIETN8A==', 'NDRlMWFmMWFjNGMxOTZhYQ==UMTEes5E27StfajmY6kM9Q==', 18, 'Female', 'OTA3OTRlMDM2MjUzYTk1OA==ToXnNsxBH4s+cfWphWlGug==', 23, 17, 18, 5, 2, 145, 0),
(150, 'YmJmYzdlMDAyNGZiNGVmZQ==ckt2dK/NTLrqkLVTROOjHg==', 'MGU5ZDAxOTA1MTI4OTljYg==dJgYQvtdo1zEaXyVmwfhlA==', 'MzUzNmMwMmJiYWIyY2E4NA==tD0nI1F2tPJlYfR2EzLjTA==', 45, 'Male', 'YTRiYjU4MjY3NTA5NWM1NA==LuRcMw5oAi4GLKvcIdte1A==', 23, 17, 18, 5, 2, 150, 45),
(151, 'YzllMzNjOTE1NTZiMzc5Nw==zMLkxM8ED8TGoAUwKBHo7A==', 'ZmVmODgwNTgzZjIxM2ZkYQ==NVkG5Hniy6zc5o1BWLvWWw==', 'OTdkODZmNWNkYzZkZTYyNQ==JFvGMBzG/zQGRGkppd1OJw==', 13, 'Male', 'YTRiYjU4MjY3NTA5NWM1NA==LuRcMw5oAi4GLKvcIdte1A==', 23, 17, 18, 5, 2, 150, 0),
(152, 'NGEwYjA1NDhjODNlMmJlNw==ybi5QK9ZwKKJKoP/6gEjvg==', 'MjUzNDc2YzBkNGUxNWRkYg==GRzEyBQLIh0EUunAVVdokg==', 'ZGQ1ZmM4NDdiYzljYjViNw==DuJMbn+gS0yTBiulMpv9uA==', 21, 'Male', 'YTRiYjU4MjY3NTA5NWM1NA==LuRcMw5oAi4GLKvcIdte1A==', 23, 17, 18, 5, 2, 150, 0),
(153, 'NjhmNDU5NmFkMjIwZmE0Ng==D8QEuscdCpuAioRdYDXnJA==', 'Zjk2YjhhNjllMGFlOWZiYg==kkpcpvcjAETOfw7+KsrAHw==', 'OGRiNTFkMDNmMzM2NTk0MA==v7OeY9WdyeFEcGPl+83v7Q==', 45, 'Female', 'YTRiYjU4MjY3NTA5NWM1NA==LuRcMw5oAi4GLKvcIdte1A==', 23, 17, 18, 5, 2, 150, 0),
(154, 'ZWMwYjBlNzc2NDY0NWQ3Yg==RqALB48wpjWGcQ7F2FrZIw==', 'MGE0MWM3ZTllMDY4ODVjNQ==u44z7BrSh26vCyDuqQnRtA==', 'MDYwZGZlYTRjMTE2ODE2ZQ==tte8cArL7S54AjjMWJY9Wg==', 33, 'Female', 'YTRiYjU4MjY3NTA5NWM1NA==LuRcMw5oAi4GLKvcIdte1A==', 23, 17, 18, 5, 2, 150, 0),
(155, 'Y2FmYjlhMDFmNTM0YjIyZg==+oPewABiGR7yXGgYBq8dRQ==', 'ZTRiODc4ZTQyZDBkOGI4Ng==uI3b27xTxYlazYExlmuAng==', 'ZmIzZDFmMWJjYWJlMjNlNA==BpRKCfBnO57GGR54mtPbZQ==', 33, 'Male', 'MmRhNmU5YTQ2YmZjOTgyNg==Ve7E2Thallh8rXQrh+rlKw==', 24, 17, 18, 5, 2, 155, 46),
(156, 'MDE2ZTI2YWYyNGUxMGY4Nw==5w/Ix2AIvM6dRCxMbtVqdg==', 'NGU4YzVhZDEwYjA4N2ZkYw==f1hgcRWFDz7p8frhpUs02w==', 'NzY5NTZiZDQxMTQ2N2NmNA==O1q/+ewuucFjKaimkVvqeg==', 22, 'Female', 'MmRhNmU5YTQ2YmZjOTgyNg==Ve7E2Thallh8rXQrh+rlKw==', 24, 17, 18, 5, 2, 155, 0),
(157, 'NDU0YzMyODk2NjQyOGMzMw==bYoza76G4QeEDKuwRh4H/A==', 'MDZmNzRiYzc0MTYzM2JmOA==wNUjZ5cJqMUE8q0Q5z/fMQ==', 'N2FlMTcwOGNlZDgwYTQxMA==Zvu6AQ4XX1FQld6uls1M0g==', 18, 'Female', 'MmRhNmU5YTQ2YmZjOTgyNg==Ve7E2Thallh8rXQrh+rlKw==', 24, 17, 18, 5, 2, 155, 0),
(158, 'NjBkZjc5ZGYyNDUzNDc0Yg==viR9SUmbjdc62F9r3hwGqg==', 'ZGI0YjBlMGE4OTcxODBjZA==SCLRczN25Ixg5SbVZngLwA==', 'NWIyZTNiZTdhOTkzODQ3YQ==1J4SGd/HAt69+cQo/QQYkw==', 32, 'Female', 'MmRhNmU5YTQ2YmZjOTgyNg==Ve7E2Thallh8rXQrh+rlKw==', 24, 17, 18, 5, 2, 155, 0),
(159, 'ZjMxNzkzMWRhZmJkZjI1MA==5+KYOGhQKpb0+qo546lrHw==', 'ZDhmZGViYTZlZjNkZjczMw==REIkvh5Jcq8OL3PmzgpB4w==', 'ZmEzM2M4MWUwZmZjN2EzZg==A8h106qydarlaMW7iHWfDA==', 37, 'Male', 'MmRhNmU5YTQ2YmZjOTgyNg==Ve7E2Thallh8rXQrh+rlKw==', 24, 17, 18, 5, 2, 155, 0),
(160, 'YjM0NDA3MmI2ZTFlOWM4OA==1WZs18oerpAH4BC0tqB7AQ==', 'MmZkMjhhMTc1MzUzMmY3YQ==eoieMk2+Nf2PzL7y7GOKmw==', 'NmVhMGY1ZDdhYWRiY2JjYw==T8obJHaGRQLVjQjZXj5aeA==', 32, 'Female', 'YjA3NGVjZDQ1ZDY2NGViOQ==UQcdV7kux7UbzR8mmH+x+w==', 24, 17, 18, 5, 2, 160, 47),
(161, 'YmUwNTI0YTU1MDQ5OWI2OA==vwJ5N64b2R3CeXaQC6g3Ow==', 'M2U0ZDdlNDFkMzI4MDM0NQ==oh9Mala0BP3BNAo8/s5kWg==', 'YmUyY2IwMzhlMDg3NjhmMg==l/8P4UtKJpR5uFst/FqQxA==', 23, 'Male', 'YjA3NGVjZDQ1ZDY2NGViOQ==UQcdV7kux7UbzR8mmH+x+w==', 24, 17, 18, 5, 2, 160, 0),
(162, 'MWE5M2QxZGZiMGRhYzc1Mg==1r9X+RsLtlIEUd1/4ZdBQg==', 'MjU2YzA5ZGQzMzdiZTUwMg==z3kqIzXyHMAY2DH7TCS0lQ==', 'NTg2MjI4MzIzMjg2MTM3Zg==SD/6PxVOSRgKELo4F9ypDA==', 33, 'Male', 'YjA3NGVjZDQ1ZDY2NGViOQ==UQcdV7kux7UbzR8mmH+x+w==', 24, 17, 18, 5, 2, 160, 0),
(163, 'YzY3YTAwYzMzMzI5ZWY0NA==BTpv8xQPhamYOqRaaPkcUA==', 'ZjVlYWRkYzRiM2VhMTYxYw==LZZKVAVt1QNfZjohIYU8KA==', 'ODcyZjQyOGJiMTg1YWYxMQ==uZi1BPGvN0RcUII4eduvaQ==', 21, 'Female', 'YjA3NGVjZDQ1ZDY2NGViOQ==UQcdV7kux7UbzR8mmH+x+w==', 24, 17, 18, 5, 2, 160, 0),
(164, 'MzIyMjY1ZjhiZjA3MDUyOA==mQSfSQ9ZnPseDHVW3eEzQw==', 'MWRiM2I3ODJiMDA3M2FiNg==Xgu7SjVg1uiI0qGCkDn7Hg==', 'NzRmYTUwZDMyOGI1ZDIxNg==Cwd5GHHVrNtEiTeiWJTKxw==', 8, 'Male', 'YjA3NGVjZDQ1ZDY2NGViOQ==UQcdV7kux7UbzR8mmH+x+w==', 24, 17, 18, 5, 2, 160, 0),
(165, 'OWI3NjUyMzU5ZjJlNGUyMg==A6E25/f/76DWWZFrn/A0Hg==', 'NWI3OGE3MjJiNTNkZDgyYg==NPCN1M6Dgx2d3Wc9B4sLRw==', 'YmNiMDdlNTM1OGFiNDUxNQ==fgvLbyU0AbrlQGGwlFpWWg==', 47, 'Male', 'NWQ5ZTM2NjdhYjE5ZjUyMw==16B2Eee7TfBe+WiRJsp3uQ==', 25, 17, 18, 5, 2, 165, 48),
(166, 'YjE3ZTJjYTUyMGViODNjMg==3jxPNikTH3QsLtloLSZqyg==', 'ZDVhNTg4M2U1ZDU2MDBkMA==YYVhI1yWKjp82Mflu74wwQ==', 'NmZlZGQxYjJjNmYxYWRiZg==qSEQ+0FRkuWNR+S8b6jIoA==', 6, 'Female', 'NWQ5ZTM2NjdhYjE5ZjUyMw==16B2Eee7TfBe+WiRJsp3uQ==', 25, 17, 18, 5, 2, 165, 0),
(167, 'NGNkN2M1NTRmYmI3MzdiYg==Y/DfGiUIlvf4X+Efxc8YmQ==', 'ODdkZGU3ZDU0NzlmMTVlYQ==7zFy2jR1h7HjglmdfKVGlw==', 'YzBmNWFlNGEwY2Y0YTY2MA==PexFbaUXUZzd1K8ug6E9Sg==', 18, 'Male', 'NWQ5ZTM2NjdhYjE5ZjUyMw==16B2Eee7TfBe+WiRJsp3uQ==', 25, 17, 18, 5, 2, 165, 0),
(168, 'N2M5NjE3ZmQ0NWUyZmRiYg==tRA93avHSy0lbof8k2s7VA==', 'MzcxYzc0NWEwNzgxMTc4MA==h88GS6vs6uTSzPxk67Q5Cg==', 'Nzc3M2U0ZDcwZjRmODMyMw==ROEfeGRovpJa5lzSDoH14w==', 47, 'Male', 'Y2NhODFjNGRmMmIwNTQ5MQ==Ytnv04Vl2Xlf9Jtjdf65+w==', 25, 17, 18, 5, 2, 0, 0),
(169, 'YzgxYTk4OWM5YmZiYTY4Zg==JtZGO3QkUwmFFjizRICdXw==', 'M2U0NGY4Y2JmOGIwNDEyMw==sz6ub+JHuSxMiLUVeL3wIg==', 'YTAwMzg0OGM3OTQyNmQzYg==ridAWL5ydJMCT/RT0davuw==', 18, 'Female', 'MjU1OTJkYWI2YTE5NjQxZg==G7g+Zv2dQsz39adhu25DSQ==', 25, 17, 18, 5, 2, 0, 0),
(170, 'NDljMDJhYTA1ZGNmNzNhMQ==NTtqjdjYA1KOwOGML5tYww==', 'NWMxYWUyMDY0NDE0YTM3Yw==FLpSzx9ggX6TYf322x2ZPg==', 'MjM2YmZkZjk3NWE1NzFkZQ==nBYntqZLyxWohRJ5YI/Ofw==', 28, 'Male', 'MzczZmVmYzI2NjVhODQ4OA==o+hmUTf4WA1aKqUTkx9nwA==', 25, 17, 18, 5, 2, 170, 49),
(171, 'MTAxZGJiMWIzNjVkMjA0YQ==KtXpsLZ6/D98ICS3qildYg==', 'YzZlMmMxNDk0OTExMDA5MQ==UCz+cFS3tMF7X+DwnQO1uw==', 'Yjc3ZjhkZGE4NzNkYTJjMQ==ZdBli+p+VjxxPIgAg5JSfg==', 15, 'Male', 'MzczZmVmYzI2NjVhODQ4OA==o+hmUTf4WA1aKqUTkx9nwA==', 25, 17, 18, 5, 2, 170, 0),
(172, 'ZTM1NzQ3NjQzYWQ5ZDg2ZQ==UwigOzoIsFX/WvQBBY28UQ==', 'NGZjYTA5OWQ4ZWJjZWFlZA==THuSwrrlGbd0UgrTogzAtw==', 'MzI1ODRiYTA2MjQ1NjBlMQ==COZQrnQP+KYnoyPzd79wkw==', 16, 'Male', 'MzczZmVmYzI2NjVhODQ4OA==o+hmUTf4WA1aKqUTkx9nwA==', 25, 17, 18, 5, 2, 170, 0),
(173, 'MjRiMGQ0MDFiZWQ2NWFmNA==AIwVNn6lk0Hv27zBAmHhCQ==', 'YzE2N2Q0ZjkzODhhZWU5OA==HKwALN/pMbcw4GKQ179Xcw==', 'NmNmMTVmNTNmMWMzZDEyNQ==xJXZIyBkDuOkDqcObCoITQ==', 12, 'Male', 'MzczZmVmYzI2NjVhODQ4OA==o+hmUTf4WA1aKqUTkx9nwA==', 25, 17, 18, 5, 2, 170, 0),
(174, 'OThlZDJlNWQ4NGEzNWFmZg==h7Y5NAxK44MOLCAmIfBcBg==', 'YTQyMTM5NTBkMjcwYjRlMw==PEH0ZajauTKfTSo7qKaJgw==', 'OTYzNGM2MjJhYTViZTExMg==LQbPcxQUPIcNJwjQqU5LEw==', 16, 'Male', 'MzczZmVmYzI2NjVhODQ4OA==o+hmUTf4WA1aKqUTkx9nwA==', 25, 17, 18, 5, 2, 170, 0),
(175, 'ZDg0NzVlYTY2MjY5MTAzMg==7K5qRmMAnmNSXROea4zWIQ==', 'ZDdjMTQyNDQ5ZWE5ODdmYQ==mMpaYVj7476H2NBWCb9SJA==', 'NTQ4NWZmZWUxMzMzZTBjOA==VGSlvAbJP6XO/pfr0Eo1xA==', 45, 'Male', 'ODhkMDQzYTYxMTExMzhjMw==T7hN95ygePx071ea7GmWYQ==', 26, 17, 18, 5, 2, 175, 50),
(176, 'MjM2MzkwNWRkMWRhN2IwNw==EDog9R81Wmhz8qBofx6v8g==', 'ZDIwYTI0ZjE5ODBjMTViYQ==DyVrwqsZoYxjGemT4yMKcg==', 'ZjJkNmE5ZjA3ZGJiMmIxYg==ArFUBg0RbM1DnCSIY9NpPA==', 24, 'Male', 'ODhkMDQzYTYxMTExMzhjMw==T7hN95ygePx071ea7GmWYQ==', 26, 17, 18, 5, 2, 175, 0),
(177, 'MjYxODRkMTc2YjNjYWIwNA==9m92N/gUgllhUgobD/veXg==', 'MGNlMGFmZjk2Y2E2YzQ5OA==9JT8EGCsyjT/7/uhbYp/lw==', 'ZjZmNmU1OTQwOTZhNzU1OQ==Uyv1GJGpMGbC6MkedyIK4g==', 56, 'Female', 'ODhkMDQzYTYxMTExMzhjMw==T7hN95ygePx071ea7GmWYQ==', 26, 17, 18, 5, 2, 175, 0),
(178, 'Yzc3ZGIxZmQ1OTU5ZTE4Mg==+K86k+LOIJYX1V5X0gLX+A==', 'YzZhYzdmNjMyMzkyMWI0MA==z8BaQR/vYZOpXv3N4/fvhQ==', 'YzJlMzIxYmFjMmY4MDM0ZQ==mruzpG0CVChMgxxJz/A/4Q==', 33, 'Male', 'ODhkMDQzYTYxMTExMzhjMw==T7hN95ygePx071ea7GmWYQ==', 26, 17, 18, 5, 2, 175, 0),
(179, 'MmI0Mjc2Y2NiNWExYzE3OA==dNRzANfhCjBWajawltE7Gw==', 'Mzk4M2YzYzE4MDM3NjJiZQ==fAPtIvUi9AjKIVo19GxE1Q==', 'NzNhNzFiMmE5NmNhOGY1Yw==+Sj9wP0BYZi9XmtpZhhZgw==', 23, 'Male', 'ODhkMDQzYTYxMTExMzhjMw==T7hN95ygePx071ea7GmWYQ==', 26, 17, 18, 5, 2, 175, 0),
(180, 'ZmQ5NGEzYzg4ZTlmMDU4Mw==nKg/HCxe+zAL/4hf9u4tTQ==', 'YzViYTg3MzUyNmVjNmMxOQ==b/iQpJIGH0ElVaWBqHXtFg==', 'ZDA2ODU0NTU5MjIzMDI4MA==jMkh07RblQwGc9QqWzMr4Q==', 43, 'Male', 'YWYxNzQ4NjVlOGM5MTdhMg==qR1rwv98mkuqLfxQqr63zg==', 26, 17, 18, 5, 2, 180, 51),
(181, 'NjdmZDViYTdiYmQ2NDlmYw==sGx6Qm8OjMGW1p1Wv/j1lA==', 'NmM5YzcwYWY5N2M3MTRlMg==6JKujUxosHQMVvg1sdp+ng==', 'OTYzZTIzYmI5OWNjY2YzMw==ODJ+o642TSVUIAbrHxC7cg==', 23, 'Male', 'YWYxNzQ4NjVlOGM5MTdhMg==qR1rwv98mkuqLfxQqr63zg==', 26, 17, 18, 5, 2, 180, 0),
(182, 'YjA0MjQ5ZDQ4ZjRlNmIzNg==AIrHrvTbAkRQt+NtQP31Aw==', 'ZjM3MDhlOTg1MWViOGUyZQ==KKXvxZzYEIQEAkVyuB/JYw==', 'NjBmYmNkOTcwZGYxYjkxYw==eVUUtLGTW/VF+EGT95IeXQ==', 32, 'Female', 'YWYxNzQ4NjVlOGM5MTdhMg==qR1rwv98mkuqLfxQqr63zg==', 26, 17, 18, 5, 2, 180, 0),
(183, 'MjkxMjNkZDA2YTJhYjdmYw==ZQDyd4fV7KPzp/qmgw+rdg==', 'M2U3MmE3YzBlYzQwZTZkZg==49uE3wXSD56hQhP0dZ5qPA==', 'MTQ5N2Q0ZDQ0NmMyMTM3ZA==9CmeF7BPbN11KkyB9gibAw==', 43, 'Female', 'YWYxNzQ4NjVlOGM5MTdhMg==qR1rwv98mkuqLfxQqr63zg==', 26, 17, 18, 5, 2, 180, 0),
(184, 'ZDRkNmQyYWY2ZDMyOGIzOA==s4Jv/VVv2mUZloHdTOIPhA==', 'Y2RiZGVjZWMxMWI2YWVlMw==yWmyvi1lMPdg7pGFbTmh+Q==', 'NDRhNzc0YmMyNzU5MjAyYQ==mtrqzUIOfHP+cldjMTn2fA==', 32, 'Male', 'YWYxNzQ4NjVlOGM5MTdhMg==qR1rwv98mkuqLfxQqr63zg==', 26, 17, 18, 5, 2, 180, 0),
(185, 'OWQ5Mzc3ZDZjMTZiYzRiMw==giH1dycHX6WgwX84Ho44CQ==', 'NWNjNzc4ZmU5MzY0YjQ4Mg==aGHkBMDrNsCL/90zr5urkA==', 'ZWM1NmE0ZmI4Y2Q2ZTdlMg==qjNEvoWnpnE5c0Tze4kaAA==', 35, 'Female', 'ODM2YzUyZDQyYjAyMzJmOQ==y1BahM2F7dsgB4rFvIojcQ==', 23, 17, 18, 5, 2, 185, 45),
(186, 'YTQ5OTdkYWI3Nzk0ODNhZA==qCIrmMyzN8m80fM/Zrx79w==', 'MWIxYWU3ODU1YjFiZTQ2OA==eEJFoKnUdOVz8979q1ifxw==', 'NGFiZWVmNGQ2YWVhYWU1Yw==wpOv6ux6rDgAKhQwieoVsQ==', 45, 'Male', 'ODM2YzUyZDQyYjAyMzJmOQ==y1BahM2F7dsgB4rFvIojcQ==', 23, 17, 18, 5, 2, 185, 0),
(187, 'YTlhNjBhMDdhYzVkMGFkYw==FJhlHQscvlxkP2gV2RFTSQ==', 'ZjZkMjQxZTk2OWFlZmY3MA==riEsVwfc9KlSsX5dE2bNkQ==', 'YjAzN2NlY2U5YTg0M2NjZQ==Dmfl0CXHB/a3XmvgYC/Nkw==', 23, 'Male', 'ODM2YzUyZDQyYjAyMzJmOQ==y1BahM2F7dsgB4rFvIojcQ==', 23, 17, 18, 5, 2, 185, 0),
(188, 'YTI3N2M0ZGE4ZWE5MjUzZA==ak0Hqi4bINc/0wMmb+PYng==', 'MDRiY2Q0N2IyN2ExOTY4MA==kZNHCTdqQ47s4hbzx6FvDw==', 'YjM0ZjRmMWM1ZTlmMjhhOQ==5bSrbRMRUKLylHLlwgC24g==', 22, 'Female', 'ODM2YzUyZDQyYjAyMzJmOQ==y1BahM2F7dsgB4rFvIojcQ==', 23, 17, 18, 5, 2, 185, 0),
(189, 'MmFhNjQ1MDQxYjExZGUzMA==do+dT/cyM16/Bcw5C6SRmQ==', 'YzFmN2U1NjQxNjNhYzhhNw==4k2fk5PuJjffbDRJvj8hBg==', 'YzZmNzE5MTI3MWIyOGNmOQ==J2BfUoHwnbH0+e3cuTayVA==', 36, 'Male', 'ODM2YzUyZDQyYjAyMzJmOQ==y1BahM2F7dsgB4rFvIojcQ==', 23, 17, 18, 5, 2, 185, 0),
(190, 'MzViMGIxYjEzZDQzM2VlOQ==RsPJU/v1h8N1BOllvHAzSw==', 'OGUyZGMyNTk2ZWJmYzIxOQ==Gt7Lw90CbevZbgnGiOlpCg==', 'ZWU5OWUyY2QzYTMwNGY4YQ==RO0XEo9JwKsL9lpaxghl8Q==', 32, 'Male', 'YjUyNTBmYzM0ZDU4ZWFjZg==IjimAiDr77H3e2yaFxgS7A==', 23, 17, 18, 5, 2, 190, 45),
(191, 'MWYyOTI0MGFmZmEzODVhYQ==mhvLXnL2dt/S5CBF/xUxKg==', 'N2JkZjhmZTc5ZTAzYjUzMg==OhXx6EVMG/JPvnq5Je4Rbw==', 'MTMxODE2Njc5ZTY3ZjMzZA==LeZORAxG8k75zbST7T0SkA==', 32, 'Male', 'YjUyNTBmYzM0ZDU4ZWFjZg==IjimAiDr77H3e2yaFxgS7A==', 23, 17, 18, 5, 2, 190, 0),
(192, 'NzNmZGJhZmY0OThhNTU4NQ==vqrJsVl3AIPmONznxl2g+A==', 'NmY2NDEyOGE5YzVmMWE0OQ==dXpLSYNT+yozTP9lXFTQmg==', 'YjVkZmEwMzQwODYyNDU5Mg==ND7UQfjFT6cXOplLzQyWeg==', 32, 'Male', 'YjUyNTBmYzM0ZDU4ZWFjZg==IjimAiDr77H3e2yaFxgS7A==', 23, 17, 18, 5, 2, 190, 0);

-- --------------------------------------------------------

--
-- Table structure for table `disaster`
--

CREATE TABLE `disaster` (
  `disas_id` int(10) NOT NULL,
  `disaster_level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disaster`
--

INSERT INTO `disaster` (`disas_id`, `disaster_level`) VALUES
(1, 'Typhoon'),
(2, 'Fire'),
(3, 'Floods'),
(4, 'Earthquakes'),
(5, 'Landslide');

-- --------------------------------------------------------

--
-- Table structure for table `evacuations`
--

CREATE TABLE `evacuations` (
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `eva_id` int(100) NOT NULL,
  `evacuation_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evacuations`
--

INSERT INTO `evacuations` (`r_id`, `p_id`, `c_id`, `b_id`, `eva_id`, `evacuation_name`) VALUES
(1, 1, 1, 1, 1, 'barangka elementary school'),
(1, 1, 1, 2, 3, 'Kalumpang Elementary School'),
(1, 1, 1, 3, 4, 'Marikina High School'),
(1, 1, 1, 3, 5, 'H Bautista Elementary Schools'),
(1, 1, 1, 4, 6, 'SSS Village National High School'),
(1, 1, 1, 5, 7, 'Fortune Elementary School'),
(1, 1, 1, 6, 8, 'Industrial Valley Elementary school'),
(1, 1, 1, 7, 9, 'Jesus Dela Pena National High School'),
(1, 1, 1, 8, 10, 'Malanday National High School'),
(1, 1, 1, 9, 11, 'Marikina Heights National High School'),
(1, 1, 1, 10, 12, 'Nangka Elementary School'),
(1, 1, 1, 11, 13, 'Parang High School'),
(1, 1, 1, 12, 14, 'San Roque elementary school'),
(1, 1, 1, 13, 15, 'Marikina Elementary school'),
(1, 1, 1, 14, 16, 'Santo Nino Elementary school'),
(1, 1, 1, 15, 17, 'Tanong High School'),
(2, 2, 2, 17, 18, 'Tinago Brgy Hall'),
(3, 3, 3, 18, 19, 'San Nicolas'),
(4, 4, 4, 20, 20, 'San Joaquin Covered Court'),
(5, 6, 5, 21, 21, 'Hermosa'),
(5, 18, 17, 22, 22, 'B1E1'),
(5, 18, 17, 22, 23, 'B1E2'),
(5, 18, 17, 23, 24, 'B2E1'),
(5, 18, 17, 23, 25, 'B2E2'),
(5, 18, 17, 24, 26, 'B3E1'),
(5, 18, 17, 24, 27, 'B3E2'),
(5, 18, 17, 25, 28, 'B4E1'),
(5, 18, 17, 25, 29, 'B4E2'),
(5, 18, 17, 26, 30, 'B5E1'),
(5, 18, 17, 26, 31, 'B5E2');

-- --------------------------------------------------------

--
-- Table structure for table `evacuees`
--

CREATE TABLE `evacuees` (
  `evacuees_id` int(100) NOT NULL,
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `eva_id` int(100) NOT NULL,
  `cons_id` int(100) NOT NULL,
  `cons_fid` int(100) NOT NULL,
  `stat_id` int(10) NOT NULL,
  `eva_date` date NOT NULL,
  `disas_id` varchar(11) NOT NULL,
  `typhoon_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evacuees`
--

INSERT INTO `evacuees` (`evacuees_id`, `r_id`, `p_id`, `c_id`, `b_id`, `eva_id`, `cons_id`, `cons_fid`, `stat_id`, `eva_date`, `disas_id`, `typhoon_id`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, '2019-10-25', 'Typhoon', 'Chedeng'),
(2, 1, 1, 1, 1, 1, 2, 1, 1, '2019-10-25', 'Typhoon', 'Chedeng'),
(3, 1, 1, 1, 1, 1, 3, 1, 1, '2019-10-25', 'Typhoon', 'Chedeng'),
(4, 1, 1, 1, 1, 1, 4, 1, 1, '2019-10-25', 'Typhoon', 'Chedeng'),
(5, 1, 1, 1, 1, 1, 8, 0, 1, '2019-10-25', 'Typhoon', 'Reming'),
(6, 1, 1, 1, 1, 1, 10, 10, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(7, 1, 1, 1, 1, 1, 17, 10, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(8, 1, 1, 1, 1, 1, 18, 10, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(9, 1, 1, 1, 1, 1, 19, 19, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(10, 1, 1, 1, 1, 1, 21, 19, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(11, 1, 1, 1, 1, 1, 32, 32, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(12, 1, 1, 1, 1, 1, 33, 32, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(13, 1, 1, 1, 1, 1, 34, 32, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(14, 1, 1, 1, 1, 1, 35, 32, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(15, 1, 1, 1, 1, 1, 20, 20, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(16, 1, 1, 1, 1, 1, 22, 20, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(17, 1, 1, 1, 1, 1, 23, 20, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(18, 1, 1, 1, 1, 1, 28, 28, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(19, 1, 1, 1, 1, 1, 29, 28, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(20, 1, 1, 1, 1, 1, 30, 28, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(21, 1, 1, 1, 1, 1, 31, 28, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(22, 1, 1, 1, 1, 1, 5, 5, 1, '2019-10-26', 'Typhoon', 'Chedeng'),
(23, 1, 1, 1, 1, 1, 6, 5, 1, '2019-10-26', 'Typhoon', 'Chedeng'),
(24, 1, 1, 1, 1, 1, 24, 24, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(25, 1, 1, 1, 1, 1, 25, 24, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(26, 1, 1, 1, 1, 1, 26, 24, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(27, 1, 1, 1, 1, 1, 27, 24, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(28, 1, 1, 1, 1, 1, 14, 14, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(29, 1, 1, 1, 1, 1, 15, 14, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(30, 1, 1, 1, 1, 1, 16, 14, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(31, 1, 1, 1, 1, 1, 36, 36, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(32, 1, 1, 1, 1, 1, 37, 36, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(33, 1, 1, 1, 1, 1, 38, 36, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(34, 1, 1, 1, 1, 1, 9, 9, 1, '2019-10-26', 'Typhoon', 'Chedeng'),
(35, 1, 1, 1, 1, 1, 11, 9, 1, '2019-10-26', 'Typhoon', 'Chedeng'),
(36, 1, 1, 1, 1, 1, 12, 9, 1, '2019-10-26', 'Typhoon', 'Chedeng'),
(37, 1, 1, 1, 1, 1, 13, 9, 1, '2019-10-26', 'Typhoon', 'Chedeng'),
(38, 1, 1, 1, 1, 1, 36, 36, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(39, 1, 1, 1, 1, 1, 37, 36, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(40, 1, 1, 1, 1, 1, 38, 36, 1, '2019-10-26', 'Typhoon', 'ondoy'),
(41, 1, 1, 1, 3, 4, 71, 71, 1, '2019-10-27', 'Fire', ''),
(42, 1, 1, 1, 3, 4, 72, 71, 1, '2019-10-27', 'Fire', ''),
(43, 1, 1, 1, 3, 4, 73, 71, 1, '2019-10-27', 'Fire', ''),
(44, 1, 1, 1, 3, 4, 66, 66, 1, '2019-10-27', 'Fire', ''),
(45, 1, 1, 1, 3, 4, 67, 66, 1, '2019-10-27', 'Fire', ''),
(46, 1, 1, 1, 3, 4, 68, 66, 1, '2019-10-27', 'Fire', ''),
(47, 1, 1, 1, 3, 4, 69, 69, 1, '2019-10-27', 'Fire', ''),
(48, 1, 1, 1, 3, 4, 70, 69, 1, '2019-10-27', 'Fire', ''),
(49, 1, 1, 1, 2, 3, 43, 43, 1, '2019-10-27', 'Fire', ''),
(50, 1, 1, 1, 2, 3, 44, 43, 1, '2019-10-27', 'Fire', ''),
(51, 1, 1, 1, 2, 3, 45, 43, 1, '2019-10-27', 'Fire', ''),
(52, 1, 1, 1, 2, 3, 46, 43, 1, '2019-10-27', 'Fire', ''),
(53, 1, 1, 1, 2, 3, 63, 63, 1, '2019-10-27', 'Fire', ''),
(54, 1, 1, 1, 2, 3, 64, 63, 1, '2019-10-27', 'Fire', ''),
(55, 1, 1, 1, 2, 3, 65, 63, 1, '2019-10-27', 'Fire', ''),
(56, 1, 1, 1, 2, 3, 54, 54, 1, '2019-10-27', 'Fire', ''),
(57, 1, 1, 1, 2, 3, 55, 54, 1, '2019-10-27', 'Fire', ''),
(58, 1, 1, 1, 2, 3, 39, 39, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(59, 1, 1, 1, 2, 3, 40, 39, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(60, 1, 1, 1, 2, 3, 41, 39, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(61, 1, 1, 1, 2, 3, 42, 39, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(62, 1, 1, 1, 2, 3, 56, 56, 1, '2019-10-27', 'Typhoon', 'Chedeng'),
(63, 1, 1, 1, 2, 3, 57, 56, 1, '2019-10-27', 'Typhoon', 'Chedeng'),
(64, 1, 1, 1, 2, 3, 58, 56, 1, '2019-10-27', 'Typhoon', 'Chedeng'),
(65, 1, 1, 1, 2, 3, 59, 56, 1, '2019-10-27', 'Typhoon', 'Chedeng'),
(66, 1, 1, 1, 2, 3, 47, 47, 1, '2019-10-27', 'Fire', ''),
(67, 1, 1, 1, 2, 3, 48, 47, 1, '2019-10-27', 'Fire', ''),
(68, 1, 1, 1, 2, 3, 49, 47, 1, '2019-10-27', 'Fire', ''),
(69, 1, 1, 1, 2, 3, 50, 50, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(70, 1, 1, 1, 2, 3, 51, 50, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(71, 1, 1, 1, 2, 3, 52, 50, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(72, 1, 1, 1, 2, 3, 53, 50, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(73, 1, 1, 1, 2, 3, 60, 60, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(74, 1, 1, 1, 2, 3, 61, 60, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(75, 1, 1, 1, 2, 3, 62, 60, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(76, 1, 1, 1, 4, 6, 74, 74, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(77, 1, 1, 1, 4, 6, 75, 74, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(78, 1, 1, 1, 4, 6, 74, 74, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(79, 1, 1, 1, 4, 6, 75, 74, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(80, 1, 1, 1, 4, 6, 76, 76, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(81, 1, 1, 1, 4, 6, 77, 76, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(82, 1, 1, 1, 4, 6, 78, 76, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(83, 1, 1, 1, 4, 6, 79, 76, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(84, 1, 1, 1, 4, 6, 83, 83, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(85, 1, 1, 1, 4, 6, 84, 83, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(86, 1, 1, 1, 4, 6, 85, 83, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(87, 1, 1, 1, 4, 6, 80, 80, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(88, 1, 1, 1, 4, 6, 81, 80, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(89, 1, 1, 1, 4, 6, 82, 80, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(90, 1, 1, 1, 5, 7, 86, 86, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(91, 1, 1, 1, 5, 7, 87, 86, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(92, 1, 1, 1, 5, 7, 88, 86, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(93, 1, 1, 1, 5, 7, 92, 92, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(94, 1, 1, 1, 5, 7, 93, 92, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(95, 1, 1, 1, 5, 7, 94, 92, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(96, 1, 1, 1, 5, 7, 89, 89, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(97, 1, 1, 1, 5, 7, 90, 89, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(98, 1, 1, 1, 5, 7, 91, 89, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(99, 1, 1, 1, 5, 7, 95, 95, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(100, 1, 1, 1, 5, 7, 96, 95, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(101, 1, 1, 1, 5, 7, 97, 95, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(102, 1, 1, 1, 6, 8, 101, 101, 1, '2019-10-27', 'Fire', ''),
(103, 1, 1, 1, 6, 8, 102, 101, 1, '2019-10-27', 'Fire', ''),
(104, 1, 1, 1, 6, 8, 98, 98, 1, '2019-10-27', 'Fire', ''),
(105, 1, 1, 1, 6, 8, 99, 98, 1, '2019-10-27', 'Fire', ''),
(106, 1, 1, 1, 6, 8, 100, 98, 1, '2019-10-27', 'Fire', ''),
(107, 1, 1, 1, 6, 8, 103, 103, 1, '2019-10-27', 'Fire', ''),
(108, 1, 1, 1, 6, 8, 104, 103, 1, '2019-10-27', 'Fire', ''),
(109, 1, 1, 1, 6, 8, 105, 103, 1, '2019-10-27', 'Fire', ''),
(110, 1, 1, 1, 6, 8, 106, 103, 1, '2019-10-27', 'Fire', ''),
(111, 1, 1, 1, 7, 9, 107, 107, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(112, 1, 1, 1, 7, 9, 108, 107, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(113, 1, 1, 1, 7, 9, 109, 107, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(114, 1, 1, 1, 7, 9, 110, 107, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(115, 1, 1, 1, 8, 10, 111, 111, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(116, 1, 1, 1, 8, 10, 112, 111, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(117, 1, 1, 1, 8, 10, 113, 111, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(118, 1, 1, 1, 8, 10, 114, 111, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(119, 1, 1, 1, 8, 10, 115, 111, 1, '2019-10-27', 'Typhoon', 'ondoy'),
(269, 3, 3, 3, 18, 19, 9, 9, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(270, 3, 3, 3, 18, 19, 10, 9, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(271, 3, 3, 3, 18, 19, 11, 9, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(272, 3, 3, 3, 18, 19, 12, 9, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(273, 3, 3, 3, 18, 19, 1, 1, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(274, 3, 3, 3, 18, 19, 2, 1, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(275, 3, 3, 3, 18, 19, 3, 1, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(276, 3, 3, 3, 18, 19, 4, 1, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(277, 3, 3, 3, 18, 19, 5, 5, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(278, 3, 3, 3, 18, 19, 6, 5, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(279, 3, 3, 3, 18, 19, 7, 5, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(280, 3, 3, 3, 18, 19, 8, 5, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(281, 3, 3, 3, 18, 19, 9, 9, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(282, 3, 3, 3, 18, 19, 10, 9, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(283, 3, 3, 3, 18, 19, 11, 9, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(284, 3, 3, 3, 18, 19, 12, 9, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(285, 3, 3, 3, 18, 19, 1, 1, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(286, 3, 3, 3, 18, 19, 2, 1, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(287, 3, 3, 3, 18, 19, 3, 1, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(288, 3, 3, 3, 18, 19, 4, 1, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(289, 3, 3, 3, 18, 19, 5, 5, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(290, 3, 3, 3, 18, 19, 6, 5, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(291, 3, 3, 3, 18, 19, 7, 5, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(292, 3, 3, 3, 18, 19, 8, 5, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(293, 3, 3, 3, 18, 19, 21, 0, 1, '2019-10-29', 'Typhoon', 'Reming'),
(294, 3, 3, 3, 18, 19, 19, 0, 1, '2019-10-29', 'Typhoon', 'Reming'),
(295, 3, 3, 3, 18, 19, 13, 0, 1, '2019-10-29', 'Typhoon', 'Reming'),
(296, 3, 3, 3, 18, 19, 17, 0, 1, '2019-10-29', 'Typhoon', 'Reming'),
(297, 3, 3, 3, 18, 19, 15, 0, 1, '2019-10-29', 'Typhoon', 'Reming'),
(298, 3, 3, 3, 18, 19, 16, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(299, 3, 3, 3, 18, 19, 22, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(300, 3, 3, 3, 18, 19, 14, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(301, 3, 3, 3, 18, 19, 20, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(302, 3, 3, 3, 18, 19, 18, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(303, 3, 3, 3, 18, 19, 9, 9, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(304, 3, 3, 3, 18, 19, 10, 9, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(305, 3, 3, 3, 18, 19, 11, 9, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(306, 3, 3, 3, 18, 19, 12, 9, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(307, 3, 3, 3, 18, 19, 21, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(308, 3, 3, 3, 18, 19, 19, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(309, 3, 3, 3, 18, 19, 13, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(310, 3, 3, 3, 18, 19, 17, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(311, 3, 3, 3, 18, 19, 15, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(312, 5, 6, 5, 21, 21, 27, 27, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(313, 5, 6, 5, 21, 21, 28, 27, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(314, 5, 6, 5, 21, 21, 29, 27, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(315, 5, 6, 5, 21, 21, 30, 27, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(316, 5, 6, 5, 21, 21, 31, 31, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(317, 5, 6, 5, 21, 21, 32, 31, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(318, 5, 6, 5, 21, 21, 33, 31, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(319, 5, 6, 5, 21, 21, 34, 31, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(320, 5, 6, 5, 21, 21, 23, 23, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(321, 5, 6, 5, 21, 21, 24, 23, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(322, 5, 6, 5, 21, 21, 25, 23, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(323, 5, 6, 5, 21, 21, 26, 23, 1, '2019-10-29', 'Typhoon', 'Chedeng'),
(324, 5, 6, 5, 21, 21, 41, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(325, 5, 6, 5, 21, 21, 36, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(326, 5, 6, 5, 21, 21, 40, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(327, 5, 6, 5, 21, 21, 44, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(328, 5, 6, 5, 21, 21, 37, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(329, 5, 6, 5, 21, 21, 42, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(330, 5, 6, 5, 21, 21, 43, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(331, 5, 6, 5, 21, 21, 35, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(332, 5, 6, 5, 21, 21, 38, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(333, 5, 6, 5, 21, 21, 39, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(334, 4, 4, 4, 20, 20, 56, 56, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(335, 4, 4, 4, 20, 20, 58, 56, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(336, 4, 4, 4, 20, 20, 45, 45, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(337, 4, 4, 4, 20, 20, 46, 45, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(338, 4, 4, 4, 20, 20, 47, 45, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(339, 4, 4, 4, 20, 20, 48, 45, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(340, 4, 4, 4, 20, 20, 49, 45, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(341, 4, 4, 4, 20, 20, 50, 45, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(342, 4, 4, 4, 20, 20, 51, 45, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(343, 4, 4, 4, 20, 20, 52, 45, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(344, 4, 4, 4, 20, 20, 53, 45, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(345, 4, 4, 4, 20, 20, 54, 45, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(346, 4, 4, 4, 20, 20, 55, 45, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(347, 4, 4, 4, 20, 20, 59, 59, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(348, 4, 4, 4, 20, 20, 60, 59, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(349, 4, 4, 4, 20, 20, 61, 59, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(350, 4, 4, 4, 20, 20, 65, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(351, 4, 4, 4, 20, 20, 62, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(352, 4, 4, 4, 20, 20, 63, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(353, 4, 4, 4, 20, 20, 66, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(354, 4, 4, 4, 20, 20, 64, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(355, 1, 1, 1, 3, 4, 67, 67, 0, '2019-10-29', 'Typhoon', 'Yolanda'),
(356, 1, 1, 1, 3, 4, 69, 67, 0, '2019-10-29', 'Typhoon', 'Yolanda'),
(357, 1, 1, 1, 3, 4, 70, 70, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(358, 1, 1, 1, 3, 4, 71, 70, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(359, 1, 1, 1, 3, 4, 72, 70, 0, '2019-10-29', 'Typhoon', 'Chedeng'),
(360, 1, 1, 1, 3, 4, 81, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(361, 1, 1, 1, 3, 4, 80, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(362, 1, 1, 1, 3, 4, 77, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(363, 1, 1, 1, 3, 4, 73, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(364, 1, 1, 1, 3, 4, 74, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(365, 1, 1, 1, 3, 4, 78, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(366, 1, 1, 1, 3, 4, 79, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(367, 1, 1, 1, 3, 4, 76, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(368, 1, 1, 1, 3, 4, 82, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(369, 1, 1, 1, 3, 4, 75, 0, 0, '2019-10-29', 'Typhoon', 'Reming'),
(370, 1, 1, 1, 5, 7, 124, 124, 1, '2019-10-29', 'Typhoon', 'ondoy'),
(371, 1, 1, 1, 5, 7, 126, 124, 1, '2019-10-29', 'Typhoon', 'ondoy'),
(372, 1, 1, 1, 5, 7, 127, 124, 1, '2019-10-29', 'Typhoon', 'ondoy'),
(373, 1, 1, 1, 5, 7, 125, 125, 0, '2019-10-29', 'Typhoon', 'ondoy'),
(374, 1, 1, 1, 5, 7, 118, 118, 0, '2019-10-29', 'Typhoon', 'ondoy'),
(375, 1, 1, 1, 5, 7, 119, 118, 0, '2019-10-29', 'Typhoon', 'ondoy'),
(376, 1, 1, 1, 5, 7, 120, 118, 0, '2019-10-29', 'Typhoon', 'ondoy'),
(377, 1, 1, 1, 5, 7, 121, 121, 0, '2019-10-29', 'Typhoon', 'ondoy'),
(378, 1, 1, 1, 5, 7, 122, 121, 0, '2019-10-29', 'Typhoon', 'ondoy'),
(379, 1, 1, 1, 5, 7, 123, 121, 0, '2019-10-29', 'Typhoon', 'ondoy'),
(380, 1, 1, 1, 3, 5, 105, 105, 1, '2019-10-30', 'Typhoon', 'Chedeng'),
(381, 1, 1, 1, 3, 5, 106, 105, 1, '2019-10-30', 'Typhoon', 'Chedeng'),
(382, 1, 1, 1, 3, 5, 107, 105, 1, '2019-10-30', 'Typhoon', 'Chedeng'),
(503, 5, 18, 17, 22, 23, 140, 140, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(504, 5, 18, 17, 22, 23, 141, 140, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(505, 5, 18, 17, 22, 23, 142, 140, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(506, 5, 18, 17, 22, 23, 143, 140, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(507, 5, 18, 17, 22, 23, 144, 140, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(508, 5, 18, 17, 22, 22, 135, 135, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(509, 5, 18, 17, 22, 22, 136, 135, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(510, 5, 18, 17, 22, 22, 137, 135, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(511, 5, 18, 17, 22, 22, 138, 135, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(512, 5, 18, 17, 22, 22, 139, 135, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(513, 5, 18, 17, 23, 24, 145, 145, 0, '2019-10-30', 'Typhoon', 'Chedeng'),
(514, 5, 18, 17, 23, 24, 146, 145, 0, '2019-10-30', 'Typhoon', 'Chedeng'),
(515, 5, 18, 17, 23, 24, 147, 145, 0, '2019-10-30', 'Typhoon', 'Chedeng'),
(516, 5, 18, 17, 23, 24, 148, 145, 0, '2019-10-30', 'Typhoon', 'Chedeng'),
(517, 5, 18, 17, 23, 24, 149, 145, 0, '2019-10-30', 'Typhoon', 'Chedeng'),
(518, 5, 18, 17, 25, 28, 165, 165, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(519, 5, 18, 17, 25, 28, 166, 165, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(520, 5, 18, 17, 25, 28, 167, 165, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(521, 5, 18, 17, 25, 29, 170, 170, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(522, 5, 18, 17, 25, 29, 171, 170, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(523, 5, 18, 17, 25, 29, 172, 170, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(524, 5, 18, 17, 25, 29, 173, 170, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(525, 5, 18, 17, 25, 29, 174, 170, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(526, 5, 18, 17, 26, 30, 180, 180, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(527, 5, 18, 17, 26, 30, 181, 180, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(528, 5, 18, 17, 26, 30, 182, 180, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(529, 5, 18, 17, 26, 30, 183, 180, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(530, 5, 18, 17, 26, 30, 184, 180, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(531, 5, 18, 17, 26, 31, 175, 175, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(532, 5, 18, 17, 26, 31, 176, 175, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(533, 5, 18, 17, 26, 31, 177, 175, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(534, 5, 18, 17, 26, 31, 178, 175, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(535, 5, 18, 17, 26, 31, 179, 175, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(536, 5, 18, 17, 24, 26, 160, 160, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(537, 5, 18, 17, 24, 26, 161, 160, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(538, 5, 18, 17, 24, 26, 162, 160, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(539, 5, 18, 17, 24, 26, 163, 160, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(540, 5, 18, 17, 24, 26, 164, 160, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(541, 5, 18, 17, 24, 27, 155, 155, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(542, 5, 18, 17, 24, 27, 156, 155, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(543, 5, 18, 17, 24, 27, 157, 155, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(544, 5, 18, 17, 24, 27, 158, 155, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(545, 5, 18, 17, 24, 27, 159, 155, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(546, 5, 18, 17, 23, 25, 150, 150, 1, '2019-10-30', 'Typhoon', 'ondoy'),
(547, 5, 18, 17, 23, 25, 151, 150, 1, '2019-10-30', 'Typhoon', 'ondoy'),
(548, 5, 18, 17, 23, 25, 152, 150, 1, '2019-10-30', 'Typhoon', 'ondoy'),
(549, 5, 18, 17, 23, 25, 153, 150, 1, '2019-10-30', 'Typhoon', 'ondoy'),
(550, 5, 18, 17, 23, 25, 154, 150, 1, '2019-10-30', 'Typhoon', 'ondoy'),
(551, 5, 18, 17, 25, 28, 169, 0, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(552, 5, 18, 17, 25, 28, 168, 0, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(553, 5, 18, 17, 23, 25, 150, 150, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(554, 5, 18, 17, 23, 25, 151, 150, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(555, 5, 18, 17, 23, 25, 152, 150, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(556, 5, 18, 17, 23, 25, 153, 150, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(557, 5, 18, 17, 23, 25, 154, 150, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(558, 5, 18, 17, 23, 25, 185, 185, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(559, 5, 18, 17, 23, 25, 186, 185, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(560, 5, 18, 17, 23, 25, 187, 185, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(561, 5, 18, 17, 23, 25, 188, 185, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(562, 5, 18, 17, 23, 25, 189, 185, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(563, 5, 18, 17, 23, 25, 190, 190, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(564, 5, 18, 17, 23, 25, 191, 190, 0, '2019-10-30', 'Typhoon', 'ondoy'),
(565, 5, 18, 17, 23, 25, 192, 190, 0, '2019-10-30', 'Typhoon', 'ondoy');

-- --------------------------------------------------------

--
-- Table structure for table `missing`
--

CREATE TABLE `missing` (
  `missing_id` int(11) NOT NULL,
  `b_id` int(100) NOT NULL,
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `midname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `age` int(10) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `contact` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `statusid` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `missing`
--

INSERT INTO `missing` (`missing_id`, `b_id`, `r_id`, `p_id`, `c_id`, `name`, `midname`, `lastname`, `age`, `gender`, `image`, `contact`, `description`, `statusid`) VALUES
(1, 0, 1, 1, 1, 'YWFkMTIzMTQwNDgyMmU1MA==ZCw6wPf/7xKtYqb1SwRhFw==', 'OGFkOTkzNzQ0OWU3NmVkZA==FILaoYIIaLGLJbpm7+9q1w==', 'ZjQyY2U2MzJhNTUzNzAyNw==oOSJzPX8OcWWztpX17JGaQ==', 20, 'Female', 'D98CC1BB-6AF6-4142-8096-071CCD48FF97.jpeg', 'ZTYyZjllZmEzMDIwYTExZg==oyfzqjpwHZwmjje7iWG3JQ==', 'Black long hair, wearing gray sweater, 5’6 height', 1),
(2, 25, 5, 18, 17, 'MjQ0OTM3OTdhNmU5MTE1NQ==tQ9CAGqZqYiJ70DC6YwpSg==', 'M2M3ZjU4MTEzOTZmNmI5MA==dX6ZbAu5o5KYPHVdrvZtmQ==', 'OTBkNDAwODBjMWNhZDAyMQ==ImeYx41yO4lMqIVr+8FRHA==', 12, 'Female', '20191026_073843_mfnr.jpg', 'ZWY5YTM0NjI4NjkyMWVkYg==bZe/rDA3M3MDsviWo5TZqQ==', 'Polo white', 1);

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `province_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`r_id`, `p_id`, `province_name`) VALUES
(1, 1, 'metro manila'),
(2, 2, 'Albay'),
(3, 3, 'Ilocos Norte'),
(4, 4, 'Batanes'),
(5, 5, 'Aurora'),
(5, 6, 'Bataan'),
(6, 7, 'Batangas'),
(7, 8, 'Antique'),
(8, 9, 'Bohol'),
(9, 10, 'Leyte'),
(10, 11, 'Zamboanga Sibugay'),
(11, 12, 'Misamis Oriental'),
(12, 13, 'Davao del Sur'),
(13, 14, 'South Cotabato'),
(14, 15, 'Agusan del Norte'),
(15, 16, 'Davao Oriental'),
(16, 17, 'Basilan'),
(5, 18, 'Cordillera');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `r_id` int(100) NOT NULL,
  `region_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`r_id`, `region_name`) VALUES
(1, 'ncr'),
(2, 'Region V'),
(3, 'Region I'),
(4, 'REGION II'),
(5, 'Region III'),
(6, 'Region IV'),
(7, 'Region VI'),
(8, 'Region VII'),
(9, 'Region VIII'),
(10, 'Region IX'),
(11, 'Region X'),
(12, 'Region XI'),
(13, 'Region XII'),
(14, 'Region XIII'),
(15, 'Region XIV'),
(16, 'Region XV');

-- --------------------------------------------------------

--
-- Table structure for table `rescued`
--

CREATE TABLE `rescued` (
  `rescued_id` int(11) NOT NULL,
  `b_id` int(100) NOT NULL,
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `midname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `age` int(10) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `statusid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rescued`
--

INSERT INTO `rescued` (`rescued_id`, `b_id`, `r_id`, `p_id`, `c_id`, `name`, `midname`, `lastname`, `age`, `gender`, `description`, `image`, `statusid`) VALUES
(1, 0, 1, 1, 1, 'Nzc5MzcyMDAxMjg0MTk2Nw==eIGgXmA6DkHckfPFcwEDAw==', 'MDY3Y2IwNDE1MTYyMzg2NQ==zhBwdjNSKdxOC98bG63Zqg==', 'NmU5OWM4MmU0ZGM2NTJjYQ==UBVXatF2URXFG9cVpXw+Gg==', 12, 'Male', 'Curly black hair, wearing gray sweater.', 'F73EE683-804E-4746-8C10-4666E0455F10.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `typhoon_name`
--

CREATE TABLE `typhoon_name` (
  `typhoon_id` int(11) NOT NULL,
  `disas_id` varchar(100) NOT NULL,
  `typ_name` varchar(255) NOT NULL,
  `stat_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `typhoon_name`
--

INSERT INTO `typhoon_name` (`typhoon_id`, `disas_id`, `typ_name`, `stat_id`) VALUES
(1, 'Typhoon', 'ondoy', 0),
(2, 'Typhoon', 'Reming', 0),
(5, 'Typhoon', 'Yolanda', 0),
(6, 'Typhoon', 'Chedeng', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `r_id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  `b_id` int(100) NOT NULL,
  `eva_id` int(100) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(10) NOT NULL,
  `stat_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `r_id`, `p_id`, `c_id`, `b_id`, `eva_id`, `fname`, `mname`, `lname`, `contact`, `email`, `username`, `password`, `role`, `stat_id`) VALUES
(1, 0, 0, 0, 0, 0, '', '', '', '', '', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 0),
(2, 1, 1, 1, 0, 0, 'Marcelino', 'Reyes', 'Teodoro', '09285937878', 'josesibugan@gmail.com', 'Marcelino6261063', '2da5ad4fae9a1a59bed5a7a041c6b7a5', 2, 0),
(3, 1, 1, 1, 1, 1, 'jose rodny', 'sumanting', 'sibugan', '09285937878', 'josesibugan@gmail.com', 'joserodny2723808', '7fe8bbec7a509c2cdc6cdb0befa794f5', 4, 0),
(5, 1, 1, 1, 1, 1, 'Lorena', '', 'Cruz', '09477779270', 'delosreyesmarc23@gmail.com', 'Lorena8262946', 'f20afbbd70265009820f53e294d5a942', 4, 0),
(6, 1, 1, 1, 2, 3, 'Rommel', 'Santos', 'Pinol', '09477779270', 'delosreyesmarc23@gmail.com', 'Rommel5434913', '97c8deb05130c6720a7acd5157dbf116', 4, 0),
(7, 1, 1, 1, 3, 4, 'Edgar', '', 'Munoz', '09477779270', 'delosreyesmarc23@gmail.com', 'Edgar352745', 'faf7b4ce83d34a9e53d73716d1278b79', 4, 0),
(8, 1, 1, 1, 3, 5, 'Gabriel', '', 'Dizon', '09477779270', 'delosreyesmarc23@gmail.com', 'Gabriel9203314', '74b92b1e414f966b078d629f5f86c1c7', 4, 0),
(9, 1, 1, 1, 4, 6, 'Manuel', '', 'Serreno', '09477779270', 'delosreyesmarc23@gmail.com', 'Manuel3951565', '2befe4e003653de408d650a888b68229', 4, 0),
(10, 1, 1, 1, 5, 7, 'Angela', '', 'Misamis', '09477779270', 'delosreyesmarc23@gmail.com', 'Angela715614', '8aa31669eb44bfaef68f704c8cc8fb49', 4, 0),
(11, 1, 1, 1, 6, 8, 'Michael', '', 'Nunez', '09477779270', 'delosreyesmarc23@gmail.com', 'Michael980058', 'baf8fb98bd6c05cd52d063ff5b5afbdd', 4, 0),
(12, 1, 1, 1, 7, 9, 'Eric', '', 'Marquez', '09477779270', 'delosreyesmarc23@gmail.com', 'Eric7124274', 'b886fe90aafaa1a20e985ca68e2d2cea', 4, 0),
(13, 1, 1, 1, 8, 10, 'Arlene', '', 'Macabenta', '09477779270', 'delosreyesmarc23@gmail.com', 'Arlene8908285', '18650fdbbba155e1b13e466e4bfdcab4', 4, 0),
(14, 1, 1, 1, 9, 11, 'Elvin', '', 'Sacabon', '09477779270', 'delosreyesmarc23@gmail.com', 'Elvin7823919', '23f1f7397a3053ca0c643721fabfea8c', 4, 0),
(15, 1, 1, 1, 10, 12, 'Joseph', '', 'Baretto', '09477779270', 'delosreyesmarc23@gmail.com', 'Joseph7154629', '453b038000cd2bd37534d644befb4a75', 4, 0),
(16, 1, 1, 1, 11, 13, 'Marjorie', '', 'Pined', '09477779270', 'delosreyesmarc23@gmail.com', 'Marjorie7970286', '12c900b9140ef36f09c644457bef70db', 4, 0),
(17, 1, 1, 1, 12, 14, 'Jeffrey', '', 'Ruiz', '09477779270', 'delosreyesmarc23@gmail.com', 'Jeffrey8720503', 'c4c5ce22e0144c2b9aaed0ba97aff4fb', 4, 0),
(18, 1, 1, 1, 13, 15, 'Normie', '', 'Daez', '09477779270', 'delosreyesmarc23@gmail.com', 'Normie7672438', '9093f977ad8b4f33fd5a25fec7240fa5', 4, 0),
(19, 1, 1, 1, 14, 16, 'Shiela', '', 'Gumba', '09477779270', 'delosreyesmarc23@gmail.com', 'Shiela7226767', 'cade8ac5077e79b493d569db8df58115', 4, 0),
(20, 1, 1, 1, 15, 17, 'Letty', '', 'Ferrer', '09477779270', 'delosreyesmarc23@gmail.com', 'Letty8890361', '428784a3a22f466bb03ac6ae1d0a068a', 4, 0),
(21, 2, 2, 2, 0, 0, 'Andoy', 'Remo', 'Go', '09477779270', 'delosreyesmarc23@gmail.com', 'Andoy434098', '3f9785971812c3c4dd58215cd82895b4', 2, 0),
(22, 2, 2, 2, 17, 18, 'Kent', '', 'Tupas', '09477779270', 'delosreyesmarc23@gmail.com', 'Kent5408510', 'e0551370f0a06f9f6a8428526adc8193', 4, 0),
(23, 3, 3, 3, 0, 0, 'eric', '', 'jasp', '09455716306', 'salcedoedith3@gmail.com', 'eric7217635', 'a9345c87f43cb8e8f60f8f15c41ce61e', 2, 0),
(24, 4, 4, 4, 0, 0, 'Denden', '', 'Matignas', '09455716306', 'salcedoedith3@gmail.com', 'Denden1712434', '9c5ca9c599ec9086e7af1cf4a97165ab', 2, 0),
(25, 3, 3, 3, 18, 19, 'kevon', '', 'hernandez', '09455716306', 'salcedoedith3@gmail.com', 'kevon1151686', '66a6a2c4e787854a0d12c9ce7c5511b2', 4, 0),
(26, 4, 4, 4, 20, 20, 'Anthony', '', 'Graham', '09455716306', 'salcedoedith3@gmail.com', 'Anthony9059928', 'c41e62ebbaf1a3aefe875a12905456d2', 4, 0),
(27, 5, 6, 5, 0, 0, 'Andrei', '', 'Land', '09455716306', 'salcedoedith3@gmail.com', 'Andrei1123131', 'b9422921ee05447dbb9d7fe3923754aa', 2, 0),
(28, 5, 6, 5, 21, 21, 'Jessie', '', 'Mendiola', '09455716306', 'salcedoedith3@gmail.com', 'Jessie9209476', 'c1847d2e541cfb59762cb372f9dc1b31', 4, 0),
(29, 6, 7, 6, 0, 0, 'johnny', '', 'Sins', '09559316288', 'salcedoedith3@gmail.com', 'johnny695727', 'fc5c0441543294374e28877dbf1b0fd7', 2, 0),
(30, 7, 8, 7, 0, 0, 'king', '', 'John', '09559316288', 'salcedoedith3@gmail.com', 'king7848292', '8d6a8d6e5b2fe5fb2b0736e619a849b7', 2, 0),
(31, 8, 9, 8, 0, 0, 'Nadine', '', 'Lustre', '09559316288', 'salcedoedith3@gmail.com', 'Nadine5960120', '88638035bfeef4929f881d586160f58d', 2, 0),
(32, 9, 10, 9, 0, 0, 'vhong', '', 'Navarro', '09559316288', 'salcedoedith3@gmail.com', 'vhong2746675', '261defc84f9c2984f4cc8d1f351c32a7', 2, 0),
(33, 10, 11, 10, 0, 0, 'billy', '', 'crawford', '09559316288', 'salcedoedith3@gmail.com', 'billy7077071', '122a87155a18bfe07828306647fcb252', 2, 0),
(34, 11, 12, 11, 0, 0, 'kenneth', 'H', 'evia', '09559316288', 'salcedoedith3@gmail.com', 'kenneth8961595', '3f5a53c503d28a959a5aa0a60fe7468f', 2, 0),
(35, 12, 13, 12, 0, 0, 'keith', '', 'castro', '09559316288', 'salcedoedith3@gmail.com', 'keith2920190', '68fc43f86755fd0ac2a2b9488c5d3971', 2, 0),
(36, 13, 14, 13, 0, 0, 'aljohn', '', 'santos', '09559316288', 'salcedoedith3@gmail.com', 'aljohn2022803', 'f64810e313c4c9942d6d2bc4b9ac76c1', 2, 0),
(37, 14, 15, 14, 0, 0, 'miko', '', 'see', '09559316288', 'salcedoedith3@gmail.com', 'miko1798488', '2499cc96b113cf534cd53f715cfd94b0', 2, 0),
(38, 15, 16, 15, 0, 0, 'kobe', '', 'bryant', '09559316288', 'salcedoedith3@gmail.com', 'kobe8104066', '2270d2cd085d551cf82e59888cdd5631', 2, 0),
(39, 16, 17, 16, 0, 0, 'jake', '', 'cuenca', '09559316288', 'salcedoedith3@gmail.com', 'jake3205874', 'f1e50424c93681a0a9af0e5319f6e7db', 2, 0),
(41, 5, 18, 17, 0, 0, 'Jhay', '', 'Manago', '09285937878', 'delosreyes50@gmail.com', 'Jhay4458056', 'fd623639209208930892403b4be3907f', 2, 0),
(42, 5, 18, 17, 22, 22, 'BV', '', 'GIO', '09285937878', 'delosreyes50@gmail.com', 'BV9540933', 'e4225ff677d60322805608e78d0037cf', 4, 0),
(43, 5, 18, 17, 22, 23, 'BV', '', 'Lake', '09285937878', 'delosreyes50@gmail.com', 'BV7049170', '6ede0b4f21ca31cbb377afb465f8afd5', 4, 0),
(44, 5, 18, 17, 23, 24, 'BV', '', 'One', '09165670283', 'delosreyes50@gmail.com', 'BV1049459', 'f0dd1296b3078c181efa1b2283408488', 4, 0),
(45, 5, 18, 17, 23, 25, 'BV', '', 'two', '09285937878', 'delosreyes50@gmail.com', 'BV5686235', 'e1ced330c4fea911666fdcf26f3863e0', 4, 0),
(46, 5, 18, 17, 24, 26, 'BV', '', 'three', '09285937878', 'delosreyes50@gmail.com', 'BV4778848', '9e1fa2cfd223bf6dce027b758577c5dc', 4, 0),
(47, 5, 18, 17, 24, 27, 'BV', '', 'Harry', '09285937878', 'delosreyes50@gmail.com', 'BV5445340', '2260a107ead8f78957d3f36be493edad', 4, 0),
(48, 5, 18, 17, 25, 28, 'BV', '', 'Four', '09285937878', 'delosreyes50@gmail.com', 'BV5879205', 'c9d4b27bc5dc6c3e31de43ee094fe863', 4, 0),
(49, 5, 18, 17, 25, 29, 'BV', '', 'five', '09285937878', 'delosreyes50@gmail.com', 'BV2698585', '9b9fe49937e900bbbb7296a27e7974ca', 4, 0),
(50, 5, 18, 17, 26, 30, 'BV', '', 'Six', '09285937878', 'delosreyes50@gmail.com', 'BV6898997', 'c46f7f7c96ae41d58d41ae057e63bc60', 4, 0),
(51, 5, 18, 17, 26, 31, 'BV', '', 'seven', '09285937878', 'delosreyes50@gmail.com', 'BV1719082', '77a05449732d24657fe88fe315f497b5', 4, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brgy`
--
ALTER TABLE `brgy`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `constituents`
--
ALTER TABLE `constituents`
  ADD PRIMARY KEY (`cons_id`);

--
-- Indexes for table `disaster`
--
ALTER TABLE `disaster`
  ADD PRIMARY KEY (`disas_id`);

--
-- Indexes for table `evacuations`
--
ALTER TABLE `evacuations`
  ADD PRIMARY KEY (`eva_id`);

--
-- Indexes for table `evacuees`
--
ALTER TABLE `evacuees`
  ADD PRIMARY KEY (`evacuees_id`);

--
-- Indexes for table `missing`
--
ALTER TABLE `missing`
  ADD PRIMARY KEY (`missing_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `rescued`
--
ALTER TABLE `rescued`
  ADD PRIMARY KEY (`rescued_id`);

--
-- Indexes for table `typhoon_name`
--
ALTER TABLE `typhoon_name`
  ADD PRIMARY KEY (`typhoon_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brgy`
--
ALTER TABLE `brgy`
  MODIFY `b_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `c_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `constituents`
--
ALTER TABLE `constituents`
  MODIFY `cons_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `disaster`
--
ALTER TABLE `disaster`
  MODIFY `disas_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `evacuations`
--
ALTER TABLE `evacuations`
  MODIFY `eva_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `evacuees`
--
ALTER TABLE `evacuees`
  MODIFY `evacuees_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=566;

--
-- AUTO_INCREMENT for table `missing`
--
ALTER TABLE `missing`
  MODIFY `missing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `p_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `r_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rescued`
--
ALTER TABLE `rescued`
  MODIFY `rescued_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `typhoon_name`
--
ALTER TABLE `typhoon_name`
  MODIFY `typhoon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
