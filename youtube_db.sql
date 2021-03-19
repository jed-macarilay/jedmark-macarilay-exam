-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2021 at 10:38 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channels`
--

CREATE TABLE `youtube_channels` (
  `id` int(11) NOT NULL,
  `profile_picture` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `descirption` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `youtube_channels`
--

INSERT INTO `youtube_channels` (`id`, `profile_picture`, `name`, `descirption`, `created_at`) VALUES
(1, 'https://yt3.ggpht.com/ytc/AAUvwnikAJaYGPJv3u5fKPTGeC86PqzWT4b1APmJt6frng=s800-c-k-c0x00ffffff-no-rj', 'NBA', 'The official YouTube Page of the NBA\n\nDon’t miss a minute of the action with Full Game Highlights, Top Performances and more from your favorite teams and players!\n\n', '2021-03-20 02:58:42');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channel_videos`
--

CREATE TABLE `youtube_channel_videos` (
  `id` int(11) NOT NULL,
  `video_link` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descirption` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `youtube_channel_videos`
--

INSERT INTO `youtube_channel_videos` (`id`, `video_link`, `title`, `descirption`, `thumbnail`, `created_at`) VALUES
(1, 'https://www.youtube.com/watch?v=5JrwWDME2DE', 'HORNETS at LAKERS | FULL GAME HIGHLIGHTS | March 18, 2021', 'HORNETS at LAKERS | FULL GAME HIGHLIGHTS | March 18, 2021 The Lakers defeated the Hornets, 116-105. LeBron James dropped 37 PTS, 8 REB and 6 ...', 'https://i.ytimg.com/vi/5JrwWDME2DE/hqdefault.jpg', '2021-03-20 05:37:10'),
(2, 'https://www.youtube.com/watch?v=iUaBglbdj0U', 'NBA Top 5 Plays Of The Night | March 18, 2021', 'Check out the top 5 plays of the night from March 18, featuring Trae Young, Aaron Gordon and MORE! Subscribe to the NBA: https://on.nba.com/2JX5gSN Full ...', 'https://i.ytimg.com/vi/iUaBglbdj0U/hqdefault.jpg', '2021-03-20 05:37:10'),
(3, 'https://www.youtube.com/watch?v=PuBrDpUPBaM', 'JAZZ at WIZARDS | FULL GAME HIGHLIGHTS | March 18, 2021', 'JAZZ at WIZARDS | FULL GAME HIGHLIGHTS | March 18, 2021 Russell Westbrook (35 PTS, 15 REB, 13 AST) and Bradley Beal (43 PTS) combined for 78 PTS ...', 'https://i.ytimg.com/vi/PuBrDpUPBaM/hqdefault.jpg', '2021-03-20 05:37:10'),
(4, 'https://www.youtube.com/watch?v=VN5A7DxmDE4', 'TIMBERWOLVES at SUNS | FULL GAME HIGHLIGHTS | March 18, 2021', 'TIMBERWOLVES at SUNS | FULL GAME HIGHLIGHTS | March 18, 2021 Anthony Edwards (Career-high 42 PTS) and Karl-Anthony Towns (41 PTS, 10 REB, ...', 'https://i.ytimg.com/vi/VN5A7DxmDE4/hqdefault.jpg', '2021-03-20 05:37:10'),
(5, 'https://www.youtube.com/watch?v=ie9zWB4ilNM', 'PELICANS at BLAZERS | FULL GAME HIGHLIGHTS | March 18, 2021', 'PELICANS at BLAZERS | FULL GAME HIGHLIGHTS | March 18, 2021 The Trail Blazers defeated the Pelicans, 101-93. Damian Lillard (36 PTS) led the way in ...', 'https://i.ytimg.com/vi/ie9zWB4ilNM/hqdefault.jpg', '2021-03-20 05:37:10'),
(6, 'https://www.youtube.com/watch?v=m2RqV2rWxMo', 'Bradley Beal 43 Pts Taunts Jazz! Westbrook Triple Double! 2020-21 NBA Season', 'New Splash Crewneck/Shirt Available! https://shop.chrissmoove.com/ Splash the like button for more NBA videos! Follow Me on Twitter!', 'https://i.ytimg.com/vi/m2RqV2rWxMo/hqdefault.jpg', '2021-03-20 05:37:10'),
(7, 'https://www.youtube.com/watch?v=aI0Cy8qusgM', 'Los Angeles Lakers vs Charlotte Hornets Full Game Highlights | 2020-21 NBA Season', 'PC Upgrade Donation - https://www.paypal.com/paypalme/1storm I hope for your help, thanks   #nba #nbahighlights #lakersvshornets.', 'https://i.ytimg.com/vi/aI0Cy8qusgM/hqdefault.jpg', '2021-03-20 05:37:10'),
(8, 'https://www.youtube.com/watch?v=YIPGWDvx8Rc', 'LaMelo Ball vs LeBron James 1st Meeting! 2020-21 NBA Season', 'New Splash Crewneck/Shirt Available! https://shop.chrissmoove.com/ Splash the like button for more NBA videos! Follow Me on Twitter!', 'https://i.ytimg.com/vi/YIPGWDvx8Rc/hqdefault.jpg', '2021-03-20 05:37:10'),
(9, 'https://www.youtube.com/watch?v=2emzhMCfxRA', 'MAGIC at KNICKS | FULL GAME HIGHLIGHTS | March 18, 2021', 'MAGIC at KNICKS | FULL GAME HIGHLIGHTS | March 18, 2021 The Knicks defeated the Magic, 94-93. Julius Randle recorded 18 PTS, 10 REB and a ...', 'https://i.ytimg.com/vi/2emzhMCfxRA/hqdefault.jpg', '2021-03-20 05:37:10'),
(10, 'https://www.youtube.com/watch?v=9eSZ5pdn7C0', 'Edwards GOES OFF For Career-High 42 PTS! 💥', 'Minnesota Timberwolves rookie, Anthony Edwards, tallied a career-high 42 PTS against the Phoenix Suns as he led MIN to a road victory! Subscribe to the NBA: ...', 'https://i.ytimg.com/vi/9eSZ5pdn7C0/hqdefault.jpg', '2021-03-20 05:37:10'),
(11, 'https://www.youtube.com/watch?v=tbuxRZMdcoY', 'RODADA NBA 18/03 - LAMELO X LEBRON, DERROTA DO LÍDER, TOP 5 E MAIS!', 'Westbrook com mais um triplo-duplo, Lillard marcando mais de 30 pontos, a dupla Anthony Edwards e Karl-Anthony Towns decidindo o jogo para o Minnesota ...', 'https://i.ytimg.com/vi/tbuxRZMdcoY/hqdefault.jpg', '2021-03-20 05:37:10'),
(12, 'https://www.youtube.com/watch?v=s_U2L78ANWc', 'Phoenix Suns vs Minnesota Timberwolves Full Game Highlights | 2020-21 NBA Season', 'PC Upgrade Donation - https://www.paypal.com/paypalme/1storm I hope for your help, thanks   #nba #nbahighlights #sunsvstimberwolves.', 'https://i.ytimg.com/vi/s_U2L78ANWc/hqdefault.jpg', '2021-03-20 05:37:10'),
(13, 'https://www.youtube.com/watch?v=OLTNm0ICBN8', 'Charlotte Hornets vs Denver Nuggets Full Game Highlights | 2020-21 NBA Season', '#nba #nbahighlights #hornetsvsnuggets.', 'https://i.ytimg.com/vi/OLTNm0ICBN8/hqdefault.jpg', '2021-03-20 05:37:10'),
(14, 'https://www.youtube.com/watch?v=RAULF_ke8dw', 'NBA Top 10 Plays Of The Night | March 17, 2021', 'Check out the top 10 plays of the night from March 17, featuring Ja Morant, Zach LaVine, Luka Doncic and MORE! Subscribe to the NBA: ...', 'https://i.ytimg.com/vi/RAULF_ke8dw/hqdefault.jpg', '2021-03-20 05:37:10'),
(15, 'https://www.youtube.com/watch?v=x-QeOv-jByM', 'Utah Jazz vs Washington Wizards Full Game Highlights | 2020-21 NBA Season', 'PC Upgrade Donation - https://www.paypal.com/paypalme/1storm I hope for your help, thanks   #nba #nbahighlights #jazzvswizards.', 'https://i.ytimg.com/vi/x-QeOv-jByM/hqdefault.jpg', '2021-03-20 05:37:10'),
(16, 'https://www.youtube.com/watch?v=sMXMS6yZi-c', 'LA Clippers vs Dallas Mavericks Full Game Highlights | 2020-21 NBA Season', '#nba #nbahighlights #mavericksvsclippers.', 'https://i.ytimg.com/vi/sMXMS6yZi-c/hqdefault.jpg', '2021-03-20 05:37:11'),
(17, 'https://www.youtube.com/watch?v=4vcACh6XsJk', 'WARRIORS at ROCKETS | FULL GAME HIGHLIGHTS | March 17, 2021', 'WARRIORS at ROCKETS | FULL GAME HIGHLIGHTS | March 17, 2021 The Golden State Warriors defeated the Houston Rockets, 108-94. Draymond Green ...', 'https://i.ytimg.com/vi/4vcACh6XsJk/hqdefault.jpg', '2021-03-20 05:37:11'),
(18, 'https://www.youtube.com/watch?v=ww-i9bztHdI', 'NETS at PACERS | FULL GAME HIGHLIGHTS | March 17, 2021', 'NETS at PACERS | FULL GAME HIGHLIGHTS | March 17, 2021 James Harden recorded 40 PTS, 10 REB and 15 AST for the Brooklyn Nets as they defeated the ...', 'https://i.ytimg.com/vi/ww-i9bztHdI/hqdefault.jpg', '2021-03-20 05:37:11'),
(19, 'https://www.youtube.com/watch?v=e5B3n_h5sI8', 'Analyzing the 2021 NBA trade season | The Jump', 'Rachel Nichols delivers her daily monologue about the NBA trade season and how that has impacted the Milwaukee Bucks and the Philadelphia 76ers in their ...', 'https://i.ytimg.com/vi/e5B3n_h5sI8/hqdefault.jpg', '2021-03-20 05:37:11'),
(20, 'https://www.youtube.com/watch?v=uq4tmHHj-Qs', '2021 NBA Slam Dunk Contest - Full Highlights | NBA All-Star Weekend', '2021 Slam Dunk Contest #nba #nbahighlights #nbaallstar.', 'https://i.ytimg.com/vi/uq4tmHHj-Qs/hqdefault.jpg', '2021-03-20 05:37:11'),
(21, 'https://www.youtube.com/watch?v=iOJY12DL5V0', 'PACERS at LAKERS | FULL GAME HIGHLIGHTS | March 12, 2021', 'PACERS at LAKERS | FULL GAME HIGHLIGHTS | March 12, 2021 The Los Angeles Lakers defeated the Indiana Pacers, 105-100. Kyle Kuzma led the Lakers ...', 'https://i.ytimg.com/vi/iOJY12DL5V0/hqdefault.jpg', '2021-03-20 05:37:11'),
(22, 'https://www.youtube.com/watch?v=n8etBbsGOow', 'CLIPPERS at PELICANS | FULL GAME HIGHLIGHTS | March 14, 2021', 'CLIPPERS at PELICANS | FULL GAME HIGHLIGHTS | March 14, 2021 The New Orleans Pelicans defeated the LA Clippers, 135-115. Zion Williamson (27 PTS, ...', 'https://i.ytimg.com/vi/n8etBbsGOow/hqdefault.jpg', '2021-03-20 05:37:11'),
(23, 'https://www.youtube.com/watch?v=6I5Naa4DS2k', 'KINGS at HORNETS | FULL GAME HIGHLIGHTS | March 15, 2021', 'KINGS at HORNETS | FULL GAME HIGHLIGHTS | March 15, 2021 The Charlotte Hornets defeated the Sacaramento Kings, 122-116. Terry Rozier (26 PTS, ...', 'https://i.ytimg.com/vi/6I5Naa4DS2k/hqdefault.jpg', '2021-03-20 05:37:11'),
(24, 'https://www.youtube.com/watch?v=we7EEIUrjus', '#MtnDew3PT​ Contest Full Highlights | 2021 #NBAAllStar', 'Check out the best of the 2021 #MtnDew3PT​ Contest! Subscribe to the NBA: https://on.nba.com/2JX5gSN Full Game Highlights Playlist: ...', 'https://i.ytimg.com/vi/we7EEIUrjus/hqdefault.jpg', '2021-03-20 05:37:11'),
(25, 'https://www.youtube.com/watch?v=PDswNb56b8s', 'PISTONS at NETS | FULL GAME HIGHLIGHTS | March 13, 2021', 'PISTONS at NETS | FULL GAME HIGHLIGHTS | March 13, 2021 The Brooklyn Nets defeated the Detroit Pistons, 100-95. James Harden led the way for the Nets ...', 'https://i.ytimg.com/vi/PDswNb56b8s/hqdefault.jpg', '2021-03-20 05:37:11'),
(26, 'https://www.youtube.com/watch?v=MSkIx-yAxG4', 'Golden State Warriors vs Houston Rockets Full Game Highlights | 2020-21 NBA Season', '#nba #nbahighlights #warriorsvsrockets.', 'https://i.ytimg.com/vi/MSkIx-yAxG4/hqdefault.jpg', '2021-03-20 05:37:11'),
(27, 'https://www.youtube.com/watch?v=5ZobOpRvJFc', 'WARRIORS at LAKERS | FULL GAME HIGHLIGHTS | February 28, 2021', 'WARRIORS at LAKERS | FULL GAME HIGHLIGHTS | February 28, 2021 The Los Angeles Lakers defeated the Golden State Warriors, 117-91. LeBron James ...', 'https://i.ytimg.com/vi/5ZobOpRvJFc/hqdefault.jpg', '2021-03-20 05:37:11'),
(28, 'https://www.youtube.com/watch?v=aPJzos-OAbA', 'Utah Jazz vs Boston Celtics Full Game Highlights | 2020-21 NBA Season', 'nba #nbahighlights #celticsvsjazz.', 'https://i.ytimg.com/vi/aPJzos-OAbA/hqdefault.jpg', '2021-03-20 05:37:12'),
(29, 'https://www.youtube.com/watch?v=le0InML6Qh8', 'CLIPPERS at MAVERICKS | FULL GAME HIGHLIGHTS | March 15, 2021', 'CLIPPERS at MAVERICKS | FULL GAME HIGHLIGHTS | March 15, 2021 The LA Clippers defeated the Dallas Mavericks, 109-99. Kawhi Leonard tallied 22 PTS, ...', 'https://i.ytimg.com/vi/le0InML6Qh8/hqdefault.jpg', '2021-03-20 05:37:12'),
(30, 'https://www.youtube.com/watch?v=h1v8PwuBI5A', '#TeamLeBron vs. #TeamDurant | FULL GAME HIGHLIGHTS | 2021 #NBAAllStar', 'TeamLeBron vs. #TeamDurant | FULL GAME HIGHLIGHTS | March 7, 2021 Team LeBron defeated Team Durant, 170-150. Giannis Antetokounmpo recorded 35 ...', 'https://i.ytimg.com/vi/h1v8PwuBI5A/hqdefault.jpg', '2021-03-20 05:37:12'),
(31, 'https://www.youtube.com/watch?v=bXWzqE_aTp4', 'Milwaukee Bucks vs Philadelphia 76ers Full Game Highlights | 2020-21 NBA Season', '#nba #nbahighlights #bucksvs76ers.', 'https://i.ytimg.com/vi/bXWzqE_aTp4/hqdefault.jpg', '2021-03-20 05:37:12'),
(32, 'https://www.youtube.com/watch?v=M0Czgjaa8iY', 'Los Angeles Lakers vs Minnesota Timberwolves Full Game Highlights | 2020-21 NBA Season', '#nba #nbahighlights #lakerstimberwolves.', 'https://i.ytimg.com/vi/M0Czgjaa8iY/hqdefault.jpg', '2021-03-20 05:37:12'),
(33, 'https://www.youtube.com/watch?v=nM55Emslx7s', 'NBA🏀東區戰力被迫升級？P.J.Tucker到公鹿，Trevor Ariza到熱火！(Johnny聊nba)', '我們來看交易的部份，先來看雷霆隊，前幾天雷霆把拿過灌籃大賽冠軍的Hamidou Diallo送到活塞隊，拿回Sviatoslav Mykhailiuk跟一個未來的次輪籤，本季雷霆後場 ...', 'https://i.ytimg.com/vi/nM55Emslx7s/hqdefault.jpg', '2021-03-20 05:37:12'),
(34, 'https://www.youtube.com/watch?v=ucQk7hESziM', '#TeamLeBron &amp; #TeamDurant Draft | 2021 #NBAAllStar', 'Watch LeBron James and Kevin Durant make their selections for the 2021 #NBAAllStar game! All of All-Star in One Night on March 7! 5 PM ET: NBA Tip-Off ...', 'https://i.ytimg.com/vi/ucQk7hESziM/hqdefault.jpg', '2021-03-20 05:37:12'),
(35, 'https://www.youtube.com/watch?v=7v-yajCem2o', 'HEAT at LAKERS | FULL GAME HIGHLIGHTS | February 20, 2021', 'HEAT at LAKERS | FULL GAME HIGHLIGHTS | February 20, 2021 Jimmy Butler (24 PTS, 8 REB, 5 AST) knocked down two free throws late to secure the 96-94 ...', 'https://i.ytimg.com/vi/7v-yajCem2o/hqdefault.jpg', '2021-03-20 05:37:12'),
(36, 'https://www.youtube.com/watch?v=bZpzEeuZHqI', 'CLIPPERS at NETS | FULL GAME HIGHLIGHTS | February 2, 2021', 'CLIPPERS at NETS | FULL GAME HIGHLIGHTS | February 2, 2021 Kyrie Irving recorded a season-high 39 PTS for the Brooklyn Nets as they defeated the LA ...', 'https://i.ytimg.com/vi/bZpzEeuZHqI/hqdefault.jpg', '2021-03-20 05:37:12'),
(37, 'https://www.youtube.com/watch?v=6Xo7iFeumEs', 'LAKERS at JAZZ | FULL GAME HIGHLIGHTS | February 24, 2021', 'LAKERS at JAZZ | FULL GAME HIGHLIGHTS | February 24, 2021 The Utah Jazz defeated the Los Angeles Lakers, 114-89. Donovan Mitchell (13 PTS, 10 REB, ...', 'https://i.ytimg.com/vi/6Xo7iFeumEs/hqdefault.jpg', '2021-03-20 05:37:12'),
(38, 'https://www.youtube.com/watch?v=rifMTBkS06s', 'SPURS at MAVERICKS | FULL GAME HIGHLIGHTS | March 10, 2021', 'SPURS at MAVERICKS | FULL GAME HIGHLIGHTS | March 10, 2021 The Dallas Mavericks defeated the San Antonio Spurs, 115-104. Kristaps Porzingis (28 ...', 'https://i.ytimg.com/vi/rifMTBkS06s/hqdefault.jpg', '2021-03-20 05:37:12'),
(39, 'https://www.youtube.com/watch?v=n9igLJVDGhQ', 'NETS at SPURS | FULL GAME HIGHLIGHTS | March 1, 2021', 'NETS at SPURS | FULL GAME HIGHLIGHTS | March 1, 2021 James Harden recorded 30 PTS (20 in the 4th quarter + OT), 14 REB and 15 AST for the Nets as ...', 'https://i.ytimg.com/vi/n9igLJVDGhQ/hqdefault.jpg', '2021-03-20 05:37:12'),
(40, 'https://www.youtube.com/watch?v=YPCCqkcSfpI', 'Top PLAYS Of The Week | Week 12', 'Relive the top PLAYS from Week 12 in the NBA! Drop your favorite play in the comments ⤵ Subscribe to the NBA: https://on.nba.com/2JX5gSN Full Game ...', 'https://i.ytimg.com/vi/YPCCqkcSfpI/hqdefault.jpg', '2021-03-20 05:37:12'),
(41, 'https://www.youtube.com/watch?v=zqeUpgCpAdE', 'NBA &quot;Crossovers and Ankle Breakers of 2021&quot; MOMENTS', 'NBA video clips used in this video are licensed through partnership with NBA Playmakers. Music provided by Epidemic Sound This video features players like: ...', 'https://i.ytimg.com/vi/zqeUpgCpAdE/hqdefault.jpg', '2021-03-20 05:37:12'),
(42, 'https://www.youtube.com/watch?v=85RsKETXOSE', 'NETS at ROCKETS | FULL GAME HIGHLIGHTS | March 3, 2021', 'NETS at ROCKETS | FULL GAME HIGHLIGHTS | March 3, 2021 In his return to Houston, James Harden recorded 29 PTS, 10 REB and 14 AST for the Brooklyn ...', 'https://i.ytimg.com/vi/85RsKETXOSE/hqdefault.jpg', '2021-03-20 05:37:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
