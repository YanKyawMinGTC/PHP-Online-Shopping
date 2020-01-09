-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2020 at 12:10 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2017-01-24 16:21:18', '08-01-2020 07:11:23 AM');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `book_id` decimal(10,0) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `book_id`, `author_name`, `email`, `phone_no`, `address`, `description`, `photo`, `created_date`, `modified_date`) VALUES
(5, '24', 'Nyi Min Nyo', 'nyiminnyo@gmail.com', 27920366, 'yangon', 'lorem oladfjalskdfjalksdfjlaksdfasdfasdf', 'nyiminnyo.jpg', '2020-01-08 10:12:52', '2020-01-08 10:12:52'),
(6, '36', 'Chit Oo Nyo', 'chitoonyo@gmail.com', 27920366, 'yangon', 'lrem lorem dldasjflkasdjflkadsf&nbsp;', 'chit-oo-nyo.jpg', '2020-01-08 10:19:30', '2020-01-08 10:19:30'),
(7, '0', 'Aung Thin', 'aungthin@gmail.com', 989898898, 'yangon', '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px;\">He was born on 17 April 1927 in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Taungdwingyi_Township\" title=\"Taungdwingyi Township\" style=\"c', 'download (3).jpg', '2020-01-08 12:58:54', '2020-01-08 12:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `bookPriceBeforeDiscount` int(11) DEFAULT NULL,
  `bookDescription` longtext DEFAULT NULL,
  `bookimg1` varchar(255) DEFAULT NULL,
  `bookimg2` varchar(255) DEFAULT NULL,
  `bookimg3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `bookAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `author_id`, `category`, `subCategory`, `name`, `price`, `bookPriceBeforeDiscount`, `bookDescription`, `bookimg1`, `bookimg2`, `bookimg3`, `shippingCharge`, `bookAvailability`, `postingDate`, `updationDate`) VALUES
(21, 5, 7, 21, 'how to date for first time!', 3500, 5000, 'This book is great.', 'download.jpg', 'images.png', 'download.png', 200, 'In Stock', '2020-01-07 03:58:54', NULL),
(22, 6, 7, 21, 'How to know  relationship!', 3000, 5000, 'This book is great.', 'download.png', 'sql joins guide and syntax.jpg', 'type.PNG', 300, 'Out of Stock', '2020-01-07 04:01:19', NULL),
(23, 0, 9, 27, 'Disappearing Earth', 3500, 5000, '<span style=\"color: rgb(51, 51, 51); font-family: nyt-imperial, georgia, &quot;times new roman&quot;, times, serif; font-size: 20px;\"><i><b>In the first chapter of this assured debut novel, two young girls vanish, sending shock waves through a town perched on the edge of the remote, brooding Kamchatka Peninsula. What follows is a novel of overlapping short stories about the various women who have been affected by their disappearance. Each richly textured tale pushes the narrative forward another month and exposes the ways in which the women of Kamchatka have been shattered â€” personally, culturally and emotionally â€” by the crime.</b></i></span><br>', 'best-books-2019-superJumbo.jpg', 'column-shortcodes-select.png', '', 300, 'In Stock', '2020-01-07 04:41:48', NULL),
(24, 0, 7, 15, 'The Topeka School', 5500, 6000, '<i><span style=\"color: rgb(51, 51, 51); font-family: nyt-imperial, georgia, &quot;times new roman&quot;, times, serif; font-size: 20px;\">Lernerâ€™s exhilarating third novel, after â€œLeaving the Atocha Stationâ€ and â€œ10:04,â€</span><span class=\"css-8l6xbc evw5hdy0\" style=\"margin: 0px; padding: 0px; border: 0px; text-size-adjust: 100%; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 20px; line-height: inherit; font-family: nyt-imperial, georgia, &quot;times new roman&quot;, times, serif; vertical-align: baseline; white-space: pre-wrap; color: rgb(51, 51, 51);\">  </span><span style=\"color: rgb(51, 51, 51); font-family: nyt-imperial, georgia, &quot;times new roman&quot;, times, serif; font-size: 20px;\">rocks an emphatically American amplitude, ranging freely from parenthood to childhood, from toxic masculinity to the niceties of cunnilingus, from Freudâ€™s Oedipus complex to Tupacâ€™s â€œAll Eyez on Me.â€ Adam Gordon returns as the protagonist, but this time as a high school debate star, and mostly in the third person. Equal portions of the book are given over to the voices of his psychologist parents, and to a former classmate whose cognitive deficits are the inverse of Adamâ€™s gifts. The earlier novelsâ€™ questions about art and authenticity persist; but Adamâ€™s faithlessness is now stretched into a symptom of a national crisis of belief. Lernerâ€™s own arsenal has always included a composerâ€™s feel for orchestration, a ventriloquistâ€™s vocal range and a fine ethnographic attunement. Never before, though, has the latter been so joyously indulged, or the bubblicious texture of late Clintonism been so lovingly evoked.</span></i><br>', 'best-books-2019-09-superJumbo.jpg', 'download.jpg', '', 300, 'In Stock', '2020-01-07 05:11:13', NULL),
(25, 0, 8, 25, 'Exhalation', 4000, 5000, '<span style=\"color: rgb(51, 51, 51); font-family: nyt-imperial, georgia, &quot;times new roman&quot;, times, serif; font-size: 20px;\">Many of the nine deeply beautiful stories in this collection explore the material consequences of time travel. Reading them feels like sitting at dinner with a friend who explains scientific theory to you without an ounce of condescension. Each thoughtful, elegantly crafted story poses a philosophical question; Chiang curates all nine into a conversation that comes full circle, after having traversed remarkable terrain.</span><br>', 'best-books-2019-02-superJumbo.jpg', 'download (1).jpg', '', 300, 'In Stock', '2020-01-07 06:05:53', NULL),
(26, 0, 7, 26, 'Lost Children Archive', 3500, 5000, '<span style=\"color: rgb(51, 51, 51); font-family: nyt-imperial, georgia, &quot;times new roman&quot;, times, serif; font-size: 20px;\"><i>The Mexican authorâ€™s third novel â€” her first to be written in English â€” unfolds against a backdrop of crisis: of children crossing borders, facing death, being detained, being deported unaccompanied by their guardians. The novel centers on a couple and their two children (all unnamed), who are taking a road trip from New York City to the Mexican border; the coupleâ€™s marriage is on the brink of collapse as they pursue independent ethnographic research projects and the woman tries to help a Mexican immigrant find her daughters, whoâ€™ve gone missing in their attempt to cross the border behind her.&nbsp;</i></span><br>', 'best-books-2019-03-superJumbo.jpg', 'download (2).jpg', '', 300, 'Out of Stock', '2020-01-07 06:13:28', NULL),
(27, 0, 9, 27, 'Night Boat to Tangier', 8000, 10000, '<span style=\"color: rgb(51, 51, 51); font-family: nyt-imperial, georgia, &quot;times new roman&quot;, times, serif; font-size: 20px;\">A desolate ferry terminal on the Spanish coast isnâ€™t a place where youâ€™d expect to encounter sharp-edged lyricism or rueful philosophy, but thanks to the two Irish gangster antiheroes of Barryâ€™s novel, thereâ€™s plenty of both on display, along with scabrously amusing tale-telling and much summoning of painful memories. Their lives have become so intertwined that the young woman whose arrival they await can qualify as family for either man. Will she show? How much do they care? Their banter is a shield against the dark, a witty new take on â€œWaiting for Godot.â€</span><br>', 'best-books-2019-05-superJumbo.jpg', 'best-books-2019-09-superJumbo.jpg', '', 300, 'Out of Stock', '2020-01-07 06:19:00', NULL),
(29, 0, 10, 28, 'The Water cure', 5500, 6000, '<em style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: Georgia, helvetica, sans-serif; font-size: 16px;\">The Water Cure</em><span style=\"color: rgb(51, 51, 51); font-family: Georgia, helvetica, sans-serif; font-size: 16px;\">&nbsp;has drawn instant comparisons to&nbsp;</span><em style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: Georgia, helvetica, sans-serif; font-size: 16px;\"><a href=\"https://www.glamour.com/story/the-handmaids-tale-max-minghella-on-his-character-nick\" style=\"box-sizing: border-box; background-color: transparent; cursor: pointer; color: rgb(235, 0, 40); transition-property: color, background, text-shadow; transition-duration: 0.2s; transition-timing-function: ease-in-out; text-decoration-line: underline;\">The Handmaidâ€™s Tale</a>,</em><span style=\"color: rgb(51, 51, 51); font-family: Georgia, helvetica, sans-serif; font-size: 16px;\">&nbsp;and not just because author Margaret Atwood called it â€œa gripping, sinister fable.â€ The book centers on Grace, Lia, and Sky, three sisters who live on an isolated island with their mother and their father, whom they call King.</span><br>', '81SBy9jbbHL.jpg', 'best-books-2019-05-superJumbo.jpg', '', 1000, 'In Stock', '2020-01-07 08:36:32', NULL),
(30, 0, 10, 30, 'An Anoumous Girl', 3500, 5000, '<span style=\"color: rgb(51, 51, 51); font-family: Georgia, helvetica, sans-serif; font-size: 16px;\">The <u>newest suspense </u>novel from the authors behind&nbsp;</span><em style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: Georgia, helvetica, sans-serif; font-size: 16px;\">The Wife Between Us</em><span style=\"color: rgb(51, 51, 51); font-family: Georgia, helvetica, sans-serif; font-size: 16px;\">&nbsp;introduces us to Jessica Ferris. Jess just wants to make a little extra cash when she decides to participate in a study on ethics with the mysterious Dr. Lydia Shields.</span><br>', 'an anormous.jpg', 'download.jpg', '', 300, 'In Stock', '2020-01-07 08:41:37', NULL),
(36, 0, 7, 15, 'Step by Step PHP', 3500, 5000, '<span style=\"color: rgb(51, 51, 51); font-family: Georgia, helvetica, sans-serif; font-size: 16px;\">Roupenian broke the Internet when&nbsp;</span><em style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: Georgia, helvetica, sans-serif; font-size: 16px;\">The New Yorker</em><span style=\"color: rgb(51, 51, 51); font-family: Georgia, helvetica, sans-serif; font-size: 16px;\">&nbsp;published her viral short story&nbsp;</span><a href=\"https://www.newyorker.com/magazine/2017/12/11/cat-person\" style=\"box-sizing: border-box; cursor: pointer; color: rgb(235, 0, 40); transition-property: color, background, text-shadow; transition-duration: 0.2s; transition-timing-function: ease-in-out; text-decoration-line: underline; font-family: Georgia, helvetica, sans-serif; font-size: 16px;\">â€œCat Personâ€</a><span style=\"color: rgb(51, 51, 51); font-family: Georgia, helvetica, sans-serif; font-size: 16px;\">&nbsp;in 2017. Quick refresher: It was about a college-age girl who sleeps with an older man because she feels like she â€œowesâ€ it to him, not quite because she&nbsp;</span><em style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: Georgia, helvetica, sans-serif; font-size: 16px;\">wants</em><span style=\"color: rgb(51, 51, 51); font-family: Georgia, helvetica, sans-serif; font-size: 16px;\">&nbsp;to.</span><br>', 'book10.jpg', 'book10.jpg', '', 300, 'In Stock', '2020-01-07 09:45:28', NULL),
(41, 7, 0, 27, 'to the fall', 10000, 12000, 'asdfasdfadsdfa', 'photo-1476275466078-4007374efbbe.jpg', 'images (1).jpg', '', 2000, 'In Stock', '2020-01-08 10:19:06', NULL),
(42, 7, 0, 26, 'success', 2000, 12000, 'asdfasdf asddfa asdfasdf&nbsp;', 'se.jpg', 'download (1).jpg', 'fall.jpg', 2000, 'In Stock', '2020-01-08 10:22:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Best Seller', 'Thsi page is best seller for this week.', '2020-01-07 03:11:52', NULL),
(8, 'Recommend', 'This page is recommend book.', '2020-01-07 03:13:24', NULL),
(9, 'New Arrivals', 'This page is new arrivals books. ', '2020-01-07 04:16:33', NULL),
(10, 'Editors Choice!', 'This section is editors choice!', '2020-01-07 08:30:48', NULL),
(11, 'Author', 'Author section!', '2020-01-08 01:48:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_many`
--

CREATE TABLE `category_many` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_many`
--

INSERT INTO `category_many` (`id`, `name`, `summary`, `remark`, `created_date`, `modified_date`) VALUES
(1, 'kids', 'This section is for kids.', 'aaa', '2020-01-07 16:51:17', '0000-00-00 00:00:00'),
(3, 'True story', 'this section is for true story.', 'aaa', '2020-01-07 16:52:36', '0000-00-00 00:00:00'),
(4, 'Teen', 'This section is for teen.', 'aaa', '2020-01-07 16:52:36', '0000-00-00 00:00:00'),
(7, 'crime', 'This section is for crime.', 'aaa', '2020-01-07 17:02:14', '0000-00-00 00:00:00'),
(9, 'love', 'This section is for love book.', 'aaa', '2020-01-07 17:03:59', '0000-00-00 00:00:00'),
(11, 'sport', 'This section is for sport.', 'aaa', '2020-01-07 17:14:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(10, 1, '15', 2, '2020-01-07 02:20:01', 'Debit / Credit card', 'Delivered'),
(11, 5, '16', 1, '2020-01-07 02:22:27', 'COD', NULL),
(12, 1, '1', 1, '2020-01-06 02:27:51', 'COD', NULL),
(13, 1, '18', 1, '2020-01-06 02:27:51', 'COD', NULL),
(14, 5, '22', 2, '2020-01-07 04:04:50', 'COD', NULL),
(15, 5, '22', 2, '2020-01-07 04:04:57', 'COD', NULL),
(16, 5, '21', 3, '2020-01-08 08:24:37', 'Internet Banking', NULL),
(17, 5, '23', 3, '2020-01-08 08:24:38', 'Internet Banking', NULL),
(18, 5, '21', 3, '2020-01-08 08:32:47', 'Internet Banking', NULL),
(19, 5, '23', 4, '2020-01-08 08:32:47', 'Internet Banking', NULL),
(20, 5, '21', 1, '2020-01-08 09:07:58', 'Debit / Credit card', NULL),
(21, 5, '30', 1, '2020-01-08 09:07:58', 'Debit / Credit card', NULL),
(22, 5, '23', 1, '2020-01-08 09:09:03', 'COD', NULL),
(23, 5, '36', 1, '2020-01-08 09:09:03', 'COD', NULL),
(24, 5, '24', 1, '2020-01-08 09:29:33', 'COD', NULL),
(25, 5, '36', 1, '2020-01-08 09:31:49', 'Debit / Credit card', NULL),
(26, 8, '36', 1, '2020-01-08 09:44:49', 'COD', NULL),
(27, 8, '23', 1, '2020-01-08 09:45:39', 'COD', NULL),
(28, 8, '23', 1, '2020-01-08 09:47:15', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 7, 'in Process', 'this book id 7 is process.', '2020-01-07 02:08:23'),
(6, 7, 'Delivered', 'has delievered.\r\n', '2020-01-07 02:12:58'),
(7, 8, 'Delivered', 'has delieved\r\n', '2020-01-07 02:13:26'),
(8, 10, 'Delivered', 'has delevered\r\n', '2020-01-06 02:26:06');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19'),
(5, 15, 1, 1, 1, 'Yan Kyaw Min', 'aaa', 'this is review.....', '2020-01-07 01:59:24'),
(6, 21, 5, 5, 5, 'Yan Kyaw Min', 'review for gulp', 'this is review for gulp ....OK!', '2020-01-07 07:59:13'),
(7, 21, 0, 0, 0, 'khaing', 'Expensive', 'this book is expensive', '2020-01-07 08:00:41'),
(8, 21, 0, 0, 0, 'khaing', 'Expensive', 'this book is expensive', '2020-01-07 08:01:22'),
(9, 21, 0, 0, 0, 'khaing', 'Expensive', 'this book is expensive', '2020-01-07 08:15:35'),
(10, 24, 0, 3, 3, 'Yan Kyaw Min', 'Expensive', 'dadsfasdfasdf', '2020-01-08 07:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(15, 7, 'Language', '2020-01-07 03:51:36', NULL),
(25, 8, 'Short-Story', '2020-01-07 04:07:02', NULL),
(26, 7, 'Romance', '2020-01-07 04:07:32', NULL),
(27, 9, 'History', '2020-01-07 04:40:27', NULL),
(28, 10, 'To Success', '2020-01-07 08:31:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-07 02:01:16', '07-01-2020 07:50:57 AM', 1),
(25, 'user02@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-07 02:22:00', '06-01-2020 08:14:17 AM', 1),
(26, 'user01@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-07 04:03:09', NULL, 0),
(27, 'user01@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-07 04:03:22', NULL, 0),
(28, 'user01@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-07 04:04:02', NULL, 0),
(29, 'user02@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-07 04:04:17', NULL, 0),
(30, 'user02@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-07 04:04:35', NULL, 1),
(31, 'user02@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-07 06:54:32', NULL, 0),
(32, 'user02@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-07 06:54:43', NULL, 1),
(33, 'user01@gmail.com', 0x3132372e302e302e3100000000000000, '2020-01-08 08:21:26', NULL, 0),
(34, 'user02@gmail.com', 0x3132372e302e302e3100000000000000, '2020-01-08 08:21:39', '08-01-2020 02:38:24 PM', 1),
(35, 'user02@gmail.com', 0x3132372e302e302e3100000000000000, '2020-01-08 09:08:32', '08-01-2020 02:43:20 PM', 1),
(36, 'user02@gmail.com', 0x3132372e302e302e3100000000000000, '2020-01-08 09:29:25', '08-01-2020 03:03:19 PM', 1),
(37, 'user@gmail.com', 0x3132372e302e302e3100000000000000, '2020-01-08 09:41:23', NULL, 0),
(38, 'user03@gmail.com', 0x3132372e302e302e3100000000000000, '2020-01-08 09:44:38', '08-01-2020 03:15:08 PM', 1),
(39, 'user03@gmail.com', 0x3132372e302e302e3100000000000000, '2020-01-08 09:45:17', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 19:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'user01', 'user@gmail.com', 879203669, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-07 02:01:10', NULL),
(5, 'user02', 'user02@gmail.com', 979203669, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-07 02:21:32', NULL),
(7, 'user02', 'yan@gmail.com', 2452345, 'b59c67bf196a4758191e42f76670ceba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-08 09:18:30', NULL),
(8, 'user03', 'user03@gmail.com', 93945298349, 'e10adc3949ba59abbe56e057f20f883e', 'asdfasfdasdfasdf', 'sdfdf', 'sadfasdfzxcv', 4352, 'asvzxczcvcvzxcvzcxvzxcvzxxzcv', 'zxcvzxcvv', 'zxcvzxcvzxcv', 1244, '2020-01-08 09:44:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_many`
--
ALTER TABLE `category_many`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category_many`
--
ALTER TABLE `category_many`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
