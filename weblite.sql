-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2022 at 01:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weblite`
--

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` varchar(300) NOT NULL,
  `html` text NOT NULL,
  `css` text NOT NULL,
  `js` text NOT NULL,
  `name` varchar(300) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `sno` int(11) NOT NULL,
  `type` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `html`, `css`, `js`, `name`, `created`, `sno`, `type`) VALUES
('RG9scGg=', '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n  <meta charset=\"UTF-8\">\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n  <title>Document</title>\n</head>\n<body>\n  \n  <h2>How To Create A Loader</h2>\n\n<div class=\"loader\"></div>\n\n<h1>Hey there, this is a Spinner by Dolph, (Sources - W3Schools)</h1>\n  \n</body>\n</html>', '/* Prefix your selectors with #output for safer results */\n\n.loader {\n  border: 16px solid #f3f3f3;\n  border-radius: 50%;\n  border-top: 16px solid red;\n  width: 120px;\n  height: 120px;\n  -webkit-animation: spin 2s linear infinite; /* Safari */\n  animation: spin 2s linear infinite;\n}\n\n/* Safari */\n@-webkit-keyframes spin {\n  0% { -webkit-transform: rotate(0deg); }\n  100% { -webkit-transform: rotate(360deg); }\n}\n\n@keyframes spin {\n  0% { transform: rotate(0deg); }\n  100% { transform: rotate(360deg); }\n}', '', 'dolph proj 2', '2022-06-26 19:51:04', 1, 'public'),
('RG9scGg=', '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n  <meta charset=\"UTF-8\">\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n  <title>Document</title>\n</head>\n<body>\n  \n  <h2>How To Create A Loader</h2>\n\n<div class=\"loader\"></div>\n\n<h1>Hey there, this is a Spinner by Dolph, (Sources - W3Schools)</h1>\n  \n</body>\n</html>', '/* Prefix your selectors with #output for safer results */\n\n.loader {\n  border: 16px solid #f3f3f3;\n  border-radius: 50%;\n  border-top: 16px solid red;\n  width: 120px;\n  height: 120px;\n  -webkit-animation: spin 2s linear infinite; /* Safari */\n  animation: spin 2s linear infinite;\n}\n\n/* Safari */\n@-webkit-keyframes spin {\n  0% { -webkit-transform: rotate(0deg); }\n  100% { -webkit-transform: rotate(360deg); }\n}\n\n@keyframes spin {\n  0% { transform: rotate(0deg); }\n  100% { transform: rotate(360deg); }\n}', '', 'dolph first proj', '2022-06-26 19:57:51', 2, 'public'),
('RG9scGg=', '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n  <meta charset=\"UTF-8\">\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n  <title>Document</title>\n</head>\n<body>\n  \n  <h2>How To Create A Loader</h2>\n\n<div class=\"loader\"></div>\n\n<h1>Hey there, this is a Spinner by Dolph, (Sources - W3Schools)</h1>\n  \n</body>\n</html>', '/* Prefix your selectors with #output for safer results */\n\n.loader {\n  border: 16px solid #f3f3f3;\n  border-radius: 50%;\n  border-top: 16px solid red;\n  width: 120px;\n  height: 120px;\n  -webkit-animation: spin 2s linear infinite; /* Safari */\n  animation: spin 2s linear infinite;\n}\n\n/* Safari */\n@-webkit-keyframes spin {\n  0% { -webkit-transform: rotate(0deg); }\n  100% { -webkit-transform: rotate(360deg); }\n}\n\n@keyframes spin {\n  0% { transform: rotate(0deg); }\n  100% { transform: rotate(360deg); }\n}', '', 'spinner by dolph', '2022-06-26 20:15:44', 3, 'public'),
('RG9scGg=', '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n  <meta charset=\"UTF-8\">\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n  <title>Document</title>\n</head>\n<body>\n  \n  <h2>How To Create A Loader</h2>\n\n<div class=\"loader\"></div>\n\n<h1>Hey there, this is a Spinner by Dolph, (Sources - W3Schools)</h1>\n  \n</body>\n</html>', '/* Prefix your selectors with #output for safer results */\n\n.loader {\n  border: 16px solid #f3f3f3;\n  border-radius: 50%;\n  border-top: 16px solid red;\n  width: 120px;\n  height: 120px;\n  -webkit-animation: spin 2s linear infinite; /* Safari */\n  animation: spin 2s linear infinite;\n}\n\n/* Safari */\n@-webkit-keyframes spin {\n  0% { -webkit-transform: rotate(0deg); }\n  100% { -webkit-transform: rotate(360deg); }\n}\n\n@keyframes spin {\n  0% { transform: rotate(0deg); }\n  100% { transform: rotate(360deg); }\n}', '', 'dolph-slider-proj', '2022-06-26 20:18:29', 4, 'public'),
('RGV2YWNj', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n  <meta charset=\"UTF-8\">\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title>Document</title>\r\n</head>\r\n<body>\r\n  \r\n  <h1>Hello there</h1>\r\n\r\n  \r\n</body>\r\n</html>', '/* Prefix your selectors with #output for safer results */', '', 'devproj', '2022-06-27 07:25:26', 5, 'public'),
('RGV2YWNj', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n  <meta charset=\"UTF-8\">\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title>Document</title>\r\n</head>\r\n<body>\r\n  \r\n  <h1>Hello there</h1>\r\n\r\n  \r\n</body>\r\n</html>', '/* Prefix your selectors with #output for safer results */', 'document.querySelector(\"h1\").style.background = \"#665e4f\"', 'dev-proj-2', '2022-06-27 07:27:52', 6, 'public'),
('RGV2YWNj', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n  <meta charset=\"UTF-8\">\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title>Document</title>\r\n</head>\r\n<body>\r\n  \r\n  <h1>Hello there</h1>\r\n\r\n  \r\n</body>\r\n</html>', '/* Prefix your selectors with #output for safer results */\r\n\r\nh1{\r\ncolor: red;\r\n}', 'document.querySelector(\"h1\").style.background = \"#665e4f\"', 'dev-proj-3', '2022-06-27 07:29:04', 7, 'public'),
('RG9scGg=', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n  <meta charset=\"UTF-8\">\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title>Document</title>\r\n</head>\r\n<body>\r\n  \r\n  <h1>Hello there</h1>\r\n\r\n  \r\n</body>\r\n</html>', '/* Prefix your selectors with #output for safer results */', '', 'dolph-priv', '2022-07-04 21:56:20', 8, 'private'),
('SmFtZXM=', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n  <meta charset=\"UTF-8\">\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title>Document</title>\r\n</head>\r\n<body>\r\n  \r\n  <h1>Hello there</h1>\r\n\r\n  \r\n</body>\r\n</html>', '/* Prefix your selectors with #output for safer results */', '', 'james-private-proj', '2022-07-04 21:57:01', 9, 'private'),
('SmFtZXM=', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n  <meta charset=\"UTF-8\">\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title>Document</title>\r\n</head>\r\n<body>\r\n  \r\n  <h1>Hello there</h1>\r\n\r\n  \r\n</body>\r\n</html>', '/* Prefix your selectors with #output for safer results */', '', 'james-private-proj-2', '2022-07-04 22:00:09', 10, 'private'),
('SmFtZXM=', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n  <meta charset=\"UTF-8\">\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title>Document</title>\r\n</head>\r\n<body>\r\n  \r\n  <h1>This is a test</h1>\r\n\r\n  \r\n</body>\r\n</html>', '/* Prefix your selectors with #output for safer results */', '', 'james-public-proj', '2022-07-04 22:02:00', 11, 'public'),
('SmFtZXM=', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n  <meta charset=\"UTF-8\">\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title>Document</title>\r\n</head>\r\n<body>\r\n  \r\n  <h1>Hello there</h1>\r\n\r\n  \r\n</body>\r\n</html>', '/* Prefix your selectors with #output for safer results */', '', 'james-private-proj-4', '2022-07-04 22:09:12', 12, 'private'),
('SmFtZXM=', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n  <meta charset=\"UTF-8\">\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title>Document</title>\r\n</head>\r\n<body>\r\n  \r\n  <h1>Hello there James\'s sdf</h1>\r\n\r\n  \r\n</body>\r\n</html>', '/* Prefix your selectors with #output for safer results */', '', 'james-del', '2022-07-04 22:09:53', 13, 'public'),
('SmFtZXM=', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n  <meta charset=\"UTF-8\">\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title>Document</title>\r\n</head>\r\n<body>\r\n  \r\n <div>\r\n  <div class=\"carousel\">\r\n    <ul class=\"slides\">\r\n      <input type=\"radio\" name=\"radio-buttons\" id=\"img-1\" checked />\r\n      <li class=\"slide-container\">\r\n        <div class=\"slide-image\">\r\n          <img src=\"https://upload.wikimedia.org/wikipedia/commons/9/9e/Timisoara_-_Regional_Business_Centre.jpg\">\r\n        </div>\r\n        <div class=\"carousel-controls\">\r\n          <label for=\"img-3\" class=\"prev-slide\">\r\n            <span>&lsaquo;</span>\r\n          </label>\r\n          <label for=\"img-2\" class=\"next-slide\">\r\n            <span>&rsaquo;</span>\r\n          </label>\r\n        </div>\r\n      </li>\r\n      <input type=\"radio\" name=\"radio-buttons\" id=\"img-2\" />\r\n      <li class=\"slide-container\">\r\n        <div class=\"slide-image\">\r\n          <img src=\"https://content.r9cdn.net/rimg/dimg/db/02/06b291e8-city-14912-171317ad83a.jpg?width=1750&height=1000&xhint=3040&yhint=2553&crop=true\">\r\n        </div>\r\n        <div class=\"carousel-controls\">\r\n          <label for=\"img-1\" class=\"prev-slide\">\r\n            <span>&lsaquo;</span>\r\n          </label>\r\n          <label for=\"img-3\" class=\"next-slide\">\r\n            <span>&rsaquo;</span>\r\n          </label>\r\n        </div>\r\n      </li>\r\n      <input type=\"radio\" name=\"radio-buttons\" id=\"img-3\" />\r\n      <li class=\"slide-container\">\r\n        <div class=\"slide-image\">\r\n          <img src=\"https://speakzeasy.files.wordpress.com/2015/05/twa_blogpic_timisoara-4415.jpg\">\r\n        </div>\r\n        <div class=\"carousel-controls\">\r\n          <label for=\"img-2\" class=\"prev-slide\">\r\n            <span>&lsaquo;</span>\r\n          </label>\r\n          <label for=\"img-1\" class=\"next-slide\">\r\n            <span>&rsaquo;</span>\r\n          </label>\r\n        </div>\r\n      </li>\r\n      <div class=\"carousel-dots\">\r\n        <label for=\"img-1\" class=\"carousel-dot\" id=\"img-dot-1\"></label>\r\n        <label for=\"img-2\" class=\"carousel-dot\" id=\"img-dot-2\"></label>\r\n        <label for=\"img-3\" class=\"carousel-dot\" id=\"img-dot-3\"></label>\r\n      </div>\r\n    </ul>\r\n  </div>\r\n</div>\r\n\r\n  \r\n</body>\r\n</html>', '/* Prefix your selectors with #output for safer results */\r\n\r\n.carousel {\r\n    margin-left: 15%;\r\n    margin-right: 15%;\r\n}\r\n\r\nul.slides {\r\n    display: block;\r\n    position: relative;\r\n    height: 600px;\r\n    margin: 0;\r\n    padding: 0;\r\n    overflow: hidden;\r\n    list-style: none;\r\n}\r\n\r\n.slides * {\r\n    user-select: none;\r\n    -ms-user-select: none;\r\n    -moz-user-select: none;\r\n    -khtml-user-select: none;\r\n    -webkit-user-select: none;\r\n    -webkit-touch-callout: none;\r\n}\r\n\r\nul.slides input {\r\n    display: none; \r\n}\r\n\r\n\r\n.slide-container { \r\n    display: block; \r\n}\r\n\r\n.slide-image {\r\n    display: block;\r\n    position: absolute;\r\n    width: 100%;\r\n    height: 100%;\r\n    top: 0;\r\n    opacity: 0;\r\n    transition: all .7s ease-in-out;\r\n}   \r\n\r\n.slide-image img {\r\n    width: auto;\r\n    min-width: 100%;\r\n    height: 100%;\r\n}\r\n\r\n.carousel-controls {\r\n    position: absolute;\r\n    top: 0;\r\n    left: 0;\r\n    right: 0;\r\n    z-index: 999;\r\n    font-size: 100px;\r\n    line-height: 600px;\r\n    color: #fff;\r\n}\r\n\r\n.carousel-controls label {\r\n    display: none;\r\n    position: absolute;\r\n    padding: 0 20px;\r\n    opacity: 0;\r\n    transition: opacity .2s;\r\n    cursor: pointer;\r\n}\r\n\r\n.slide-image:hover + .carousel-controls label{\r\n    opacity: 0.5;\r\n}\r\n\r\n.carousel-controls label:hover {\r\n    opacity: 1;\r\n}\r\n\r\n.carousel-controls .prev-slide {\r\n    width: 49%;\r\n    text-align: left;\r\n    left: 0;\r\n}\r\n\r\n.carousel-controls .next-slide {\r\n    width: 49%;\r\n    text-align: right;\r\n    right: 0;\r\n}\r\n\r\n.carousel-dots {\r\n    position: absolute;\r\n    left: 0;\r\n    right: 0;\r\n    bottom: 20px;\r\n    z-index: 999;\r\n    text-align: center;\r\n}\r\n\r\n.carousel-dots .carousel-dot {\r\n    display: inline-block;\r\n    width: 30px;\r\n    height: 30px;\r\n    border-radius: 50%;\r\n    background-color: #fff;\r\n    opacity: 0.5;\r\n    margin: 10px;\r\n}\r\n\r\ninput:checked + .slide-container .slide-image {\r\n    opacity: 1;\r\n    transform: scale(1);\r\n    transition: opacity 1s ease-in-out;\r\n}\r\n\r\ninput:checked + .slide-container .carousel-controls label {\r\n     display: block; \r\n}\r\n\r\ninput#img-1:checked ~ .carousel-dots label#img-dot-1,\r\ninput#img-2:checked ~ .carousel-dots label#img-dot-2,\r\ninput#img-3:checked ~ .carousel-dots label#img-dot-3,\r\ninput#img-4:checked ~ .carousel-dots label#img-dot-4,\r\ninput#img-5:checked ~ .carousel-dots label#img-dot-5,\r\ninput#img-6:checked ~ .carousel-dots label#img-dot-6 {\r\n	opacity: 1;\r\n}\r\n\r\n\r\ninput:checked + .slide-container .nav label { display: block; }\r\n', '', 'James-Carousel', '2022-07-05 10:27:56', 14, 'private');

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `user_id` varchar(300) NOT NULL,
  `follower_id` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`user_id`, `follower_id`) VALUES
('RGV2YWNj', 'SmFtZXM='),
('RG9scGg=', 'SmFtZXM='),
('amFrZQ==', 'SmFtZXM='),
('RG9scGg=', 'RGV2YWNj'),
('RG9scGg=', 'R2lhbm5pcw=='),
('amFrZQ==', 'RG9scGg='),
('RGV2YWNj', 'RG9scGg='),
('RG9scGg=', 'SmFzb24='),
('RGV2YWNj', 'SmFzb24=');

-- --------------------------------------------------------

--
-- Table structure for table `tester`
--

CREATE TABLE `tester` (
  `id` varchar(300) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tester`
--

INSERT INTO `tester` (`id`, `time`) VALUES
('logged--out', '2022-07-05 10:50:29'),
('logged-James-out', '2022-07-05 10:50:59'),
('!-404-f-SmFtZXM=', '2022-07-05 10:56:36'),
('!-404-f-SmFtZXM=', '2022-07-05 11:08:35'),
('!-404-f-SmFtZXM=', '2022-07-05 11:15:52'),
('!-404-f-SmFtZXM=', '2022-07-05 11:16:44'),
('!-404-f-SmFtZXM=', '2022-07-05 11:17:01'),
('!-404-f-RGV2YWNj', '2022-07-05 11:17:44'),
('!-404-f-R2lhbm5pcw==', '2022-07-05 11:18:23'),
('!-404-f-RG9scGg=', '2022-07-05 11:21:18'),
('!-404-f-RG9scGg=', '2022-07-05 12:11:47'),
('!-404-uf-RG9scGg=', '2022-07-05 15:40:07'),
('!-404-f-RG9scGg=', '2022-07-05 15:40:16'),
('!-404-f-SmFzb24=', '2022-07-06 08:03:04'),
('!-404-f-SmFzb24=', '2022-07-06 08:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `usermeta`
--

CREATE TABLE `usermeta` (
  `id` varchar(300) NOT NULL,
  `followers` int(11) NOT NULL DEFAULT 0,
  `following` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usermeta`
--

INSERT INTO `usermeta` (`id`, `followers`, `following`) VALUES
('amFrZQ==', 2, 0),
('R2lhbm5pcw==', 0, 1),
('RG9scGg=', 4, 2),
('RGV2YWNj', 3, 1),
('SmFtZXM=', 0, 3),
('SmFzb24=', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(150) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `authtoken` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `date`, `authtoken`) VALUES
('2', 'Jack', 'jack@gmail.com', '$2a$12$rUp.sCnEHwpHgf.HH3Y5BOYAM2mkk0WBA4L1jF9Wi0BzGAo1seKAC\r\n', '2022-06-22 19:57:27', ''),
('amFrZQ==', 'jake', 'jake@gmail.com', '$2y$10$QUnPREy0/I3CA.9VOv1ZMe9e6b6sxbMSHHdehpo5wrndrDSPUszBy', '2022-06-22 20:42:32', ''),
('R2lhbm5pcw==', 'Giannis', 'giannis@gmail.com', '$2y$10$IvaQbOOtHgAIxl9CsAdO4ez1gUuiOqq5V1JrhTtUlV6P1Zcc5YkYi', '2022-07-05 02:04:18', 'f5073mps4tq5pqo31t58skdvud'),
('RG9scGg=', 'Dolph', 'dolph@gmail.com', '$2y$10$xF.9cGbTxGb.HgzFyc2cCuwQ/6mV7EWkUoFMPmAzAeD3mbzpdMmDW', '2022-06-24 12:08:02', 'none'),
('RGV2YWNj', 'Devacc', 'devacc@gmail.com', '$2y$10$Ok2AajyIFnA9z5cdwRI29eXDkrTxay8zm81hfVCmHjRYOwIiJfAz6', '2022-06-24 11:38:14', 'none'),
('SmFtZXM=', 'James', 'james@email.com', '$2y$10$ETqbPGgbqUULs0GafqzTEuCOS3SLvIW8uvI2odA4hPuXB44QUDYOe', '2022-06-24 11:50:05', 'none'),
('SmFzb24=', 'Jason', 'jason@gmail.com', '$2y$10$retcH5DNPnCgg7h3szwEpOKYk7EkzSv8/ysP7BvY8jJ4yKMj2fUFy', '2022-07-06 08:02:42', 'el3qahujotpli0ku7k7mp6etep');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `usermeta`
--
ALTER TABLE `usermeta`
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
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
