-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 12-Jul-2023 às 20:00
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `acervo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `album`
--

DROP TABLE IF EXISTS `album`;
CREATE TABLE IF NOT EXISTS `album` (
  `ALBID` int(11) NOT NULL AUTO_INCREMENT,
  `ALBNAME` varchar(150) NOT NULL,
  `ALBARTIST` int(11) DEFAULT NULL,
  `ALBBAND` int(11) DEFAULT NULL,
  `ALBFEAT` int(11) DEFAULT NULL,
  `ALBDTRELEASE` date NOT NULL,
  `ALBMINPIC` text NOT NULL,
  `ALBLARPIC` text NOT NULL,
  PRIMARY KEY (`ALBID`),
  KEY `ALBBAND` (`ALBBAND`),
  KEY `ALBARTIST` (`ALBARTIST`),
  KEY `ALBFEAT` (`ALBFEAT`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `album`
--

INSERT INTO `album` (`ALBID`, `ALBNAME`, `ALBARTIST`, `ALBBAND`, `ALBFEAT`, `ALBDTRELEASE`, `ALBMINPIC`, `ALBLARPIC`) VALUES
(1, '30', 18, NULL, NULL, '2021-11-19', 'https://media.discordapp.net/attachments/754785971572048042/1114572643358748802/30Mini.png', 'https://media.discordapp.net/attachments/754785971572048042/1114572611800801432/30Grande.png'),
(2, 'All Eyez on Me', 6, NULL, NULL, '1996-02-13', 'https://media.discordapp.net/attachments/754785971572048042/1114572695158411354/AllMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1114572664535781396/AllGrande.png'),
(3, 'Bad', 4, NULL, NULL, '1987-08-31', 'https://media.discordapp.net/attachments/754785971572048042/1114572732886163476/BadMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1114572711285506118/BadGrande.png'),
(4, 'Twelve Carat Toothache', 3, NULL, NULL, '2022-06-03', 'https://media.discordapp.net/attachments/754785971572048042/1114572763454251172/CaratMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1114572745594896435/CaratGrande.png'),
(5, 'Doggystyle', 12, NULL, NULL, '1993-11-03', 'https://media.discordapp.net/attachments/754785971572048042/1114572788833980527/DogMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1114572778381778944/DogGrande.png'),
(6, '.5: The Gray Chapter', NULL, 5, NULL, '2013-10-15', 'https://media.discordapp.net/attachments/754785971572048042/1114572834207965185/GrayMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1114572806911447090/GrayGrande.png'),
(7, 'Imunidade Musical', NULL, 7, NULL, '2005-01-01', 'https://media.discordapp.net/attachments/754785971572048042/1114572996112306206/ImunidadeMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1114572972578066513/ImunidadeGrande.png'),
(8, 'In Utero', NULL, 3, NULL, '1993-09-13', 'https://media.discordapp.net/attachments/754785971572048042/1114573026961391666/InUteroMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1114573012226805881/InUteroGrande.png'),
(9, 'Master of Puppets', NULL, 6, NULL, '1968-03-03', 'https://media.discordapp.net/attachments/754785971572048042/1114573058653564979/MasterMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1114573042320936980/MasterGrande.png'),
(10, 'Meteora', NULL, 2, NULL, '2003-03-25', 'https://media.discordapp.net/attachments/754785971572048042/1114573148990488716/MeteoraMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1114573130380353587/MeoraGrande.png'),
(11, 'A Night at the Opera', NULL, 4, NULL, '1975-11-21', 'https://media.discordapp.net/attachments/754785971572048042/1114573208092426262/OperaMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1114573194075050065/OperaGrande.png'),
(12, 'The Predator', 13, NULL, NULL, '1992-11-17', 'https://media.discordapp.net/attachments/754785971572048042/1114573246545801348/PretatorMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1114573229147816068/PretatorGrande.png'),
(13, 'Rap É Compromisso!', 17, NULL, NULL, '2000-01-01', 'https://media.discordapp.net/attachments/754785971572048042/1114573279240400916/RapMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1114573262609981491/RapGrande.png'),
(14, 'O Rei do Cu', 10, NULL, NULL, '2019-05-17', 'https://media.discordapp.net/attachments/754785971572048042/1114573315542106112/ReiMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1114573297397530694/ReiGrande.png'),
(15, 'The Eminem Show', 15, NULL, NULL, '2002-05-26', 'https://media.discordapp.net/attachments/754785971572048042/1114573350145106080/ShowMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1114573331815989318/ShowGrande.png'),
(16, 'That´s the Spirit', NULL, 1, NULL, '2015-09-11', 'https://media.discordapp.net/attachments/754785971572048042/1114573386979487814/ThatMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1114573367748612167/ThatGrande.png'),
(17, 'What a Wonderful World', 6, NULL, NULL, '1997-01-01', 'https://media.discordapp.net/attachments/754785971572048042/1114573425583861770/WhatMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1114573410094305281/WhatGrande.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `artist`
--

DROP TABLE IF EXISTS `artist`;
CREATE TABLE IF NOT EXISTS `artist` (
  `ARTID` int(11) NOT NULL AUTO_INCREMENT,
  `ARTNAME` varchar(150) NOT NULL,
  `ARTALTEREGO` varchar(150) NOT NULL,
  `ARTDTBIRTH` date NOT NULL,
  `ARTDTDEATH` date DEFAULT NULL,
  `ARTDTSTAR` date NOT NULL,
  `ARTDTEND` date DEFAULT NULL,
  `ARTMINPIC` text NOT NULL,
  `ARTLARPIC` text NOT NULL,
  PRIMARY KEY (`ARTID`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `artist`
--

INSERT INTO `artist` (`ARTID`, `ARTNAME`, `ARTALTEREGO`, `ARTDTBIRTH`, `ARTDTDEATH`, `ARTDTSTAR`, `ARTDTEND`, `ARTMINPIC`, `ARTLARPIC`) VALUES
(1, 'Kurt Donald Cobain', 'Kurt Kobain', '1967-02-20', '1994-04-05', '1982-01-01', '1994-04-05', 'https://media.discordapp.net/attachments/754785971572048042/1109461213454282813/KurtCobainMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109461341565100115/KurtCobainGrande.png'),
(2, 'Chester Charles Bennington', 'Chester Bennington', '1976-03-20', '2017-02-20', '1992-01-01', '2017-02-20', 'https://media.discordapp.net/attachments/754785971572048042/1109462569799925801/ChesteMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109462539986796584/ChesterGrande.png'),
(3, 'Austin Richard Post', 'Post malone ', '1995-07-04', NULL, '2016-05-12', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109465485055098910/PostMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109465484727947284/PostGrande.png'),
(4, 'Michael Joseph Jackson', 'Michael Jackson', '1958-08-29', '2009-06-25', '1964-01-01', '2009-06-24', 'https://media.discordapp.net/attachments/754785971572048042/1109464805791768716/JacksonMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109464782064594974/JacksonGrande.png'),
(5, 'Farrokh Bulsara', 'Freddie Mercury', '1946-09-05', '1991-11-24', '1970-04-01', '1991-11-24', 'https://media.discordapp.net/attachments/754785971572048042/1109466302982144061/FreddieMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109466322473070672/FreddieGrande.png'),
(6, 'Sebastião Rodrigues Maia', 'Tim Maia', '1942-09-28', '1998-03-15', '1970-01-01', '1998-03-15', 'https://media.discordapp.net/attachments/754785971572048042/1109468671723720754/TimMaiaMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109468652664799353/TimMaiaGrande.png'),
(7, 'Alexandre Magno Abrão', 'Chorão', '1970-04-09', '2013-03-06', '1992-01-01', '2013-03-06', 'https://media.discordapp.net/attachments/754785971572048042/1109470018070138890/ChoraoMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109470034599878666/ChoraoGrande.png'),
(8, 'James Alan Hetfield', 'James Hetfield', '1963-08-03', NULL, '1978-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109471571816480900/HetfieldMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109471531958018169/HetfieldGrande.png'),
(9, 'Sir Lars Ulrich', 'Lars Ulrich', '1963-12-26', NULL, '1980-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109472648414638100/LarsMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109472627401179156/LarsGrande.png'),
(10, 'Rogério Tolomei Teixeira', 'Rogério Skylab', '1956-09-02', NULL, '1992-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109475163856195584/SkylabMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109475185020641321/SkylabGrande.png'),
(11, 'Ivete Maria Dias de Sangalo', 'Ivete Sangalo', '1972-05-27', NULL, '1993-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109476366551892068/IveteMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109476389683462144/IveteGrande.png'),
(12, 'Calvin Cordozar Broadus', 'Snoop Dogg', '1971-10-02', NULL, '1992-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109478345319665685/SnoopMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109478372809121853/SnoopGrande.png'),
(13, 'O´Shea Jackson Sr', 'Ice Cube', '1969-06-15', NULL, '1984-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109479567858597898/IceCubeMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109479592152010822/IceCubeGrande.png'),
(14, 'Corey Todd Taylor', 'Corey Taylor', '1973-12-08', NULL, '1990-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109480690963185664/CoreyMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109480709204230265/CoreyGrande.png'),
(15, 'Marshall Bruce Mathers III', 'Eminem', '1972-10-17', NULL, '1988-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109482160668295239/EminemMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109482188199690240/EminemGrande.png'),
(16, 'Tupac Amaru Shakur', 'Tupac', '1971-06-16', '1996-09-13', '1987-01-01', '1996-09-13', 'https://media.discordapp.net/attachments/754785971572048042/1109483136049500253/TupacMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109483153162252428/TupacGrande.png'),
(17, 'Mauro Mateus dos Santos', 'Sabotage', '1973-04-03', '2003-01-24', '1988-01-01', '2003-01-24', 'https://media.discordapp.net/attachments/754785971572048042/1109488137555693678/SabotageMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109488154811060364/SabotageGrande.png'),
(18, 'Adele Laurie Blue Adkins MBE', 'Adele', '1988-05-05', NULL, '2006-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109489693067837440/AdeleMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109489713544437800/AdeleGrande.png'),
(19, 'Michael Kenji Shinoda', 'Mike Shinoda', '1977-02-11', NULL, '1996-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109490981373489222/ShinodaMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109490998821789789/ShinodaGrande.png'),
(20, 'Joseph Hahn', 'Joe Hahn', '1977-03-15', NULL, '2005-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109492250544705626/JoeHanMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109492273164599296/JoeHanGrande.png'),
(21, 'David Eric Grohl', 'Dave Grohl', '1969-01-14', NULL, '1980-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109504647980388372/DaveMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109504665705517117/DaveGrande.png'),
(22, 'Bradford Phillip Kaplan Delson', 'Brad Delson', '1977-12-11', NULL, '1992-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109505683646324826/BradMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109505833055830086/BradGrande.png'),
(23, 'Robert Gregory Bourdon', 'Rob Bourdon', '1979-01-20', NULL, '1996-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109506765692870768/RobMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109506810932646028/RobGrande.png'),
(24, 'David Michael Farrell', 'Dave Farrell', '1977-02-08', NULL, '1992-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109508462980911235/FarrellMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109508572443836466/FarrellGrande.png'),
(25, 'Kirk Lee Hammett', 'Kirk Hammett', '1962-12-18', NULL, '1979-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109509379268554752/KirkiMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109509400084889640/KirkiGrande.png'),
(26, 'Robert Trujillo', 'Robert Trujillo', '1964-10-23', NULL, '1978-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109510854845673582/RobertMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109510875007688745/RobertGrande.png'),
(27, 'Ron McGovney', 'Ron McGovney', '1962-11-02', NULL, '1981-01-01', '2013-01-01', 'https://media.discordapp.net/attachments/754785971572048042/1109511678086889502/RonMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109511700467699822/RonGrande.png'),
(28, 'David Scott Mustaine', 'Dave Mustaine', '1961-09-19', NULL, '1978-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109517218192048148/MustaineMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109517253227057222/MustaineGrande.png'),
(29, 'Clifford Lee Burton', 'Cliff Burton', '1962-02-10', NULL, '1980-01-01', '1986-09-27', 'https://media.discordapp.net/attachments/754785971572048042/1109515931257950338/CliffMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109515951902298182/CliffGrande.png'),
(30, 'Jason Curtis Newsted', 'Jason Newsted', '1963-03-04', NULL, '1981-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109517915402805410/JasonMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109517940656705536/JasonGrande.png'),
(31, 'Brian Harold May', 'Brian May', '1947-07-19', NULL, '1965-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109518545500512356/BrianMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109518564702040124/BrianGrande.png'),
(32, 'John Richard Deacon', 'John Deacon', '1951-08-19', NULL, '1965-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109520259863547904/DeaconMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109520278318493716/DeaconGrande.png'),
(33, 'Roger Meddows-Taylor', 'Roger Taylor', '1949-07-26', NULL, '1968-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109519539357622363/TaylorMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109519557737070696/TaylorGrande.png'),
(34, 'Luiz Carlos Leão Duarte Júnior', 'Champignon ', '1978-06-16', '2013-09-09', '1984-01-01', '2013-09-09', 'https://media.discordapp.net/attachments/754785971572048042/1109521034035601458/ChampMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109521049319645194/ChampGrande.png'),
(35, 'Heitor Vilela Gomes', 'Heitor Gomes', '1981-08-04', NULL, '2005-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109521730621423646/HeitorMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109521747688030228/HeitorGrande.png'),
(36, 'Marco Antônio Valentim Britto Júnior', 'Marcão Britto', '1970-01-10', NULL, '1982-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109523134471741550/MarcaoMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109523152729559122/MarcaoGrande.png'),
(37, 'Thiago Raphael Castanho', 'Thiago Castanho', '1975-02-08', NULL, '1988-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109524236952936509/ThiagoMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109524254208311296/ThiagoGrande.png'),
(38, 'Mickael Gordon Thomson', 'Mick Thomson', '1973-11-03', NULL, '1996-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109526012380856411/MickMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109526031020335185/MickGrande.png'),
(39, 'Michael Shawn Crahan', 'Shawn Crahan', '1969-09-24', NULL, '1995-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109526941129768960/ShawnMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109526956300566712/ShawnGrande.png'),
(40, 'Craig Michael Jones', 'Craig Jones', '1972-02-11', NULL, '1992-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109528058068729856/CraigMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109528080311144478/CraigGrande.png'),
(41, 'Sidney George Wilson III', 'Sid Wilson', '1977-01-20', NULL, '1994-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109528843884179586/SidMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109528862490112090/SidGrande.png'),
(42, 'James Donald Root', 'James Root', '1971-10-02', NULL, '1991-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109529609638264973/RootMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109529626537107557/RootGrande.png'),
(43, 'Jay Weinberg', 'Jay Weinberg', '1990-09-08', NULL, '1974-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109530823360790538/JayMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109530845947101226/JayGrandes.png'),
(44, 'Alessandro Venturella', 'Alessandro Venturella', '1984-04-12', NULL, '2014-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109531738637602936/VenturellaMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109531755255439483/VenturellaGrande.png'),
(45, 'Oliver ScottSykes', 'Oliver Sykes', '1986-11-20', NULL, '2004-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109532496061792316/OliverMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109532539980370102/OliverGrande.png'),
(46, 'Lee Malia', 'Lee Malia', '1984-06-04', NULL, '2003-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109533817947029524/LeeMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109533835760246815/LeeGrande.png'),
(47, 'Matt Kean', 'Matt Kean', '1986-06-02', NULL, '2004-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109534820981289050/KeanMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109534849242505236/KeanGrande.png'),
(48, 'Matt Nicholls', 'Matt Nicholls', '1986-03-22', NULL, '2004-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1109535700514246674/NichollsMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1109535774967333046/NichollsGrande.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `band`
--

DROP TABLE IF EXISTS `band`;
CREATE TABLE IF NOT EXISTS `band` (
  `BANID` int(11) NOT NULL AUTO_INCREMENT,
  `BANNAME` varchar(150) NOT NULL,
  `BANDTSTART` date NOT NULL,
  `BANDTEND` date DEFAULT NULL,
  `BANMINPIC` text NOT NULL,
  `BANLARPIC` text NOT NULL,
  PRIMARY KEY (`BANID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `band`
--

INSERT INTO `band` (`BANID`, `BANNAME`, `BANDTSTART`, `BANDTEND`, `BANMINPIC`, `BANLARPIC`) VALUES
(1, 'Bring Me the Horizon', '2004-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1112026546480357447/BringMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1112026567292502096/BringGrande.png'),
(2, 'Linkin Park', '1996-01-01', '2017-07-20', 'https://media.discordapp.net/attachments/754785971572048042/1112026584019382404/LinkinParkMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1112026604676329502/LinkinParkGrande.png'),
(3, 'Nirvana', '1987-01-01', '1994-01-01', 'https://media.discordapp.net/attachments/754785971572048042/1112026645805670450/NirvanaMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1112026623106093076/NirvanaGrande.png'),
(4, 'Queen', '1970-01-01', '1991-01-01', 'https://media.discordapp.net/attachments/754785971572048042/1112026684963692645/QueenMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1112026666135453727/QueenGramde.png'),
(5, 'Slipknot', '1995-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1112026715590496297/SliknotMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1112026702424584323/SliknotGrande.png'),
(6, 'Metálica', '1981-01-01', NULL, 'https://media.discordapp.net/attachments/754785971572048042/1113209323322081340/MetalicaMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1113209302161817651/MetalicaGrande.png'),
(7, 'Charlie Brown Jr.', '1992-01-01', '2019-01-01', 'https://media.discordapp.net/attachments/754785971572048042/1113210262913294336/CharlieMini.png', 'https://media.discordapp.net/attachments/754785971572048042/1113210240687681656/CharlieGrande.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `favorite`
--

DROP TABLE IF EXISTS `favorite`;
CREATE TABLE IF NOT EXISTS `favorite` (
  `FAVUSER` int(11) NOT NULL,
  `FAVARTIST` int(11) DEFAULT NULL,
  `FAVBAND` int(11) DEFAULT NULL,
  `FAVALBUM` int(11) DEFAULT NULL,
  `FAVMUSIC` int(11) DEFAULT NULL,
  KEY `FAVALBUM` (`FAVALBUM`),
  KEY `FAVARTIST` (`FAVARTIST`),
  KEY `FAVBAND` (`FAVBAND`),
  KEY `FAVMUSIC` (`FAVMUSIC`),
  KEY `FAVUSER` (`FAVUSER`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `favorite`
--

INSERT INTO `favorite` (`FAVUSER`, `FAVARTIST`, `FAVBAND`, `FAVALBUM`, `FAVMUSIC`) VALUES
(1, 1, NULL, NULL, NULL),
(1, NULL, 1, NULL, NULL),
(1, NULL, 2, NULL, NULL),
(4, 3, NULL, NULL, NULL),
(1, NULL, 5, NULL, NULL),
(1, 2, NULL, NULL, NULL),
(1, NULL, 3, NULL, NULL),
(1, NULL, 7, NULL, NULL),
(1, NULL, 6, NULL, NULL),
(1, 2, NULL, NULL, NULL),
(1, NULL, NULL, 4, NULL),
(1, NULL, NULL, 4, NULL),
(1, NULL, NULL, 7, NULL),
(2, NULL, NULL, 7, NULL),
(2, NULL, NULL, 4, NULL),
(2, NULL, NULL, 6, NULL),
(2, NULL, NULL, 2, NULL),
(2, NULL, NULL, 3, NULL),
(2, NULL, NULL, 3, NULL),
(4, NULL, NULL, 3, NULL),
(4, NULL, NULL, 2, NULL),
(1, NULL, NULL, NULL, 4),
(1, NULL, NULL, NULL, 7),
(1, NULL, NULL, NULL, 50),
(1, NULL, NULL, NULL, 8),
(4, NULL, NULL, NULL, 8),
(3, NULL, NULL, NULL, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gender`
--

DROP TABLE IF EXISTS `gender`;
CREATE TABLE IF NOT EXISTS `gender` (
  `GENID` int(11) NOT NULL AUTO_INCREMENT,
  `GENNAME` varchar(150) NOT NULL,
  `GENDESC` text NOT NULL,
  PRIMARY KEY (`GENID`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `gender`
--

INSERT INTO `gender` (`GENID`, `GENNAME`, `GENDESC`) VALUES
(1, 'Rock', 'Rock é um termo abrangente que define um gênero musical de música popular que se desenvolveu durante e após a década de 1950. Suas raízes se encontram no rock and roll e no rockabilly que emergiram e se definiram nos Estados Unidos no final dos anos quarenta e início dos cinquenta e que, por sua vez, evoluíram do blues, da música country e do rhythm and blues.'),
(2, 'Rock alternativo', 'Rock alternativo é uma categoria de rock que emergiu do underground da música independente na década de 1970 e se tornou amplamente popular na década de 1990. \"Alternativo\" refere-se à distinção do gênero ao rock mainstream ou comercial e da música pop.'),
(3, 'Nu metal', 'Nu metal é um subgénero do heavy metal. É uma fusão musical que combina elementos do metal com outros géneros, como o hip-hop e a música industrial. É classificado como parte do metal alternativo.'),
(4, 'Rap rock', 'Rap rock é um gênero musical que mistura elementos do rap com vários gêneros do rock. O rap rock é frequentemente confundido com rapcore e rap metal. Os principais artistas e grupos desse gênero são Planet Hemp, Beastie Boys, Linkin Park, Red Hot Chili Peppers, Hollywood Undead, Cypress Hill. entre outros.'),
(5, 'Rap metal', 'O rap metal é um gênero musical criado no início da década de 1980 nos Estados Unidos, tendo como base artistas de rap rock.'),
(6, 'Metal alternativo', 'Metal alternativo é um gênero que combina o heavy metal com influências do rock alternativo e outros gêneros normalmente não associados ao metal.'),
(7, 'Rock eletrônico', 'Rock eletrônico é um gênero musical que envolve uma combinação de rock e música eletrônica, apresentando instrumentos tipicamente encontrados em ambos os gêneros. Originou-se no final da década de 1960, quando as bandas de rock começaram a incorporar instrumentação eletrônica em suas músicas.'),
(8, 'Grunge', 'Grunge é um subgênero do rock alternativo que surgiu no final da década de 1980 no estado americano de Washington, principalmente em Seattle, inspirado pelo hardcore punk, pelo heavy metal e pelo indie rock.'),
(9, 'Punk rock', 'Punk rock é um gênero musical que surgiu em meados da década de 1970. Enraizado no rock de garagem e proto-punk dos anos 1960, as bandas punk rejeitaram os excessos percebidos do rock mainstream dos anos 1970.'),
(10, 'Hard rock', 'Hard rock é um estilo musical, subgênero do rock que tem suas raízes do rock de garagem e psicodélico do meio da década de 1960, que se caracteriza por ser consideravelmente mais pesado do que a música rock'),
(11, 'Sludge metal', 'Sludge metal, é um sub-gênero do heavy metal que tem como principal característica a mesclagem de elementos do doom metal, do hardcore e as vezes do southern rock. Enquanto muitos creditam o início do estilo ao The Melvins de Seattle, Washington, muitos de seus pioneiros declarados foram do estado da Luisiana.'),
(12, 'Heavy metal', 'Heavy metal é um gênero do rock que se desenvolveu no final da década de 1960 e no início da década de 1970, em grande parte no Reino Unido e nos Estados Unidos.'),
(13, 'Rap', 'Rap (em inglês, também conhecido como rapped) é um discurso rítmico com rimas e poesias, que surgiu no final do século XX entre as comunidades afro-descendentes nos Estados Unidos. É um dos cinco pilares fundamentais da cultura hip hop, de modo que se chame metonimicamente (e de forma imprecisa) hip hop.'),
(14, 'Pop', 'A música pop é um gênero da música popular que se originou durante a década de 1950 nos Estados Unidos e Reino Unido. A música pop é eclética, e muitas vezes incorpora elementos de outros estilos, como o urban, dance, rock, música latina, soul e country.'),
(15, 'MPB', 'A MPB, sigla derivada da expressão Música Popular Brasileira, é um gênero musical surgido no Brasil em meados da década de 1960. A MPB surgiu a partir de 1966 na cidade do Rio de Janeiro com a segunda geração da bossa nova, mas com uma forte influência do folclore brasileiro que já vinha desde 1932.'),
(16, 'Soul', 'Soul music ou apenas soul é um gênero musical popular que se originou na comunidade afro-americana dos Estados Unidos nos anos 1950 e no início dos anos 1960. Combina elementos da música gospel, rhythm and blues e jazz.'),
(17, 'Axé', 'O axé, ou axé music, é um gênero musical que surgiu no estado da Bahia na década de 1980 durante as manifestações populares do Carnaval de Salvador, misturando o ijexá, samba-reggae, frevo, reggae, merengue, forró, samba duro, ritmos do candomblé, pop rock, bem como outros ritmos afro-brasileiros e afro-latinos.'),
(18, 'Groove metal', 'Groove metal é um subgênero do metal que iniciou seu desenvolvimento no final da década de 1980 e inícido da década de 1990. Tendo como progenitor principal o thrash metal, o groove metal caracterizava-se pelo uso de tempos deliberadamente mais lentos que o thrash, apenas ocasionalmente utilizando tempos rápidos.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `internal`
--

DROP TABLE IF EXISTS `internal`;
CREATE TABLE IF NOT EXISTS `internal` (
  `INTARTIST` int(11) NOT NULL,
  `INTBAND` int(11) NOT NULL,
  `INTDTIN` date NOT NULL,
  `INTDTOUT` date DEFAULT NULL,
  KEY `INTARTIST` (`INTARTIST`),
  KEY `INTBAND` (`INTBAND`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `internal`
--

INSERT INTO `internal` (`INTARTIST`, `INTBAND`, `INTDTIN`, `INTDTOUT`) VALUES
(46, 1, '2004-01-01', NULL),
(1, 3, '1987-01-01', '1994-04-05'),
(2, 2, '1999-01-01', '2017-07-20'),
(5, 4, '1970-01-01', '1991-11-24'),
(7, 7, '1992-01-01', '2013-03-06'),
(8, 6, '1981-01-01', NULL),
(9, 6, '1981-01-01', NULL),
(14, 5, '1997-01-01', NULL),
(19, 2, '1996-01-01', NULL),
(20, 2, '1996-01-01', NULL),
(21, 3, '1990-01-01', '1994-01-01'),
(22, 2, '1996-01-01', NULL),
(23, 2, '1996-01-01', NULL),
(25, 6, '1981-01-01', NULL),
(26, 6, '2003-01-01', NULL),
(27, 6, '1982-01-01', '1982-12-31'),
(28, 6, '1982-01-01', '1983-01-01'),
(29, 6, '1982-01-01', '1986-01-01'),
(30, 6, '1982-01-01', '1986-01-01'),
(31, 4, '1970-01-01', NULL),
(32, 4, '1971-01-01', '1977-01-01'),
(33, 4, '1970-01-01', NULL),
(34, 7, '1992-01-01', '2013-09-09'),
(35, 7, '2005-01-01', '2011-01-01'),
(36, 7, '1992-01-01', '2013-01-01'),
(37, 7, '1992-01-01', '2013-01-01'),
(38, 5, '1996-01-01', NULL),
(39, 5, '1995-01-01', NULL),
(40, 5, '1996-01-01', '2023-06-07'),
(41, 5, '1998-01-01', NULL),
(42, 5, '1999-01-01', NULL),
(43, 5, '2004-01-01', NULL),
(44, 5, '2014-01-01', NULL),
(45, 1, '2004-01-01', NULL),
(47, 1, '2004-01-01', NULL),
(48, 1, '2004-01-01', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `multigen`
--

DROP TABLE IF EXISTS `multigen`;
CREATE TABLE IF NOT EXISTS `multigen` (
  `MTGALB` int(11) DEFAULT NULL,
  `MTGART` int(11) DEFAULT NULL,
  `MTGBND` int(11) DEFAULT NULL,
  `MTGMSC` int(11) DEFAULT NULL,
  `MTGGENDER` int(11) NOT NULL,
  KEY `MTGALB` (`MTGALB`),
  KEY `MTGART` (`MTGART`),
  KEY `MTGBND` (`MTGBND`),
  KEY `MTGMSC` (`MTGMSC`),
  KEY `MTGGENDER` (`MTGGENDER`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `multigen`
--

INSERT INTO `multigen` (`MTGALB`, `MTGART`, `MTGBND`, `MTGMSC`, `MTGGENDER`) VALUES
(NULL, NULL, 1, NULL, 1),
(NULL, NULL, 1, NULL, 14),
(NULL, NULL, 2, NULL, 1),
(NULL, NULL, 2, NULL, 2),
(NULL, NULL, 2, NULL, 3),
(NULL, NULL, 2, NULL, 4),
(NULL, NULL, 2, NULL, 5),
(NULL, NULL, 2, NULL, 6),
(NULL, NULL, 2, NULL, 7),
(NULL, NULL, 3, NULL, 1),
(NULL, NULL, 3, NULL, 2),
(NULL, NULL, 3, NULL, 8),
(NULL, NULL, 3, NULL, 9),
(NULL, NULL, 3, NULL, 10),
(NULL, NULL, 3, NULL, 11),
(NULL, NULL, 4, NULL, 1),
(NULL, NULL, 5, NULL, 1),
(NULL, NULL, 5, NULL, 16),
(NULL, NULL, 5, NULL, 18),
(NULL, NULL, 6, NULL, 1),
(NULL, NULL, 6, NULL, 12),
(NULL, NULL, 7, NULL, 1),
(NULL, 3, NULL, NULL, 13),
(NULL, 4, NULL, NULL, 14),
(NULL, 6, NULL, NULL, 15),
(NULL, 10, NULL, NULL, 15),
(NULL, 10, NULL, NULL, 16),
(NULL, 11, NULL, NULL, 17),
(NULL, 12, NULL, NULL, 13),
(NULL, 13, NULL, NULL, 13),
(NULL, 15, NULL, NULL, 13),
(NULL, 16, NULL, NULL, 13),
(NULL, 17, NULL, NULL, 13),
(NULL, 18, NULL, NULL, 16);

-- --------------------------------------------------------

--
-- Estrutura da tabela `music`
--

DROP TABLE IF EXISTS `music`;
CREATE TABLE IF NOT EXISTS `music` (
  `MSCID` int(11) NOT NULL AUTO_INCREMENT,
  `MSCNAME` varchar(150) NOT NULL,
  `MSCBND` int(11) DEFAULT NULL,
  `MSCART` int(11) DEFAULT NULL,
  `MSCFEATBND` int(11) DEFAULT NULL,
  `MSCFEATART` int(11) DEFAULT NULL,
  PRIMARY KEY (`MSCID`),
  KEY `MSCBND` (`MSCBND`),
  KEY `MSCART` (`MSCART`),
  KEY `MSCFEATBND` (`MSCFEATBND`),
  KEY `MSCFEATART` (`MSCFEATART`)
) ENGINE=MyISAM AUTO_INCREMENT=245 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `music`
--

INSERT INTO `music` (`MSCID`, `MSCNAME`, `MSCBND`, `MSCART`, `MSCFEATBND`, `MSCFEATART`) VALUES
(1, 'Faint', 2, NULL, NULL, NULL),
(2, 'Numb', 2, NULL, NULL, NULL),
(3, 'Breaking the Habit', 2, NULL, NULL, NULL),
(4, 'Easier to Run', 2, NULL, NULL, NULL),
(5, 'Somewhere I Belong', 2, NULL, NULL, NULL),
(6, 'From the Inside', 2, NULL, NULL, NULL),
(7, 'Figure.09', 2, NULL, NULL, NULL),
(8, 'Don´t Stay', 2, NULL, NULL, NULL),
(9, 'Foreword', 2, NULL, NULL, NULL),
(10, 'Nobody´s Listening', 2, NULL, NULL, NULL),
(11, 'Hit the Floor', 2, NULL, NULL, NULL),
(12, 'Session', 2, NULL, NULL, NULL),
(13, 'Lying from You', 2, NULL, NULL, NULL),
(14, 'Blasphemy', 1, NULL, NULL, NULL),
(15, 'Follow You', 1, NULL, NULL, NULL),
(16, 'Throne', 1, NULL, NULL, NULL),
(17, 'True Friends', 1, NULL, NULL, NULL),
(18, 'Happy Song', 1, NULL, NULL, NULL),
(19, 'Oh No', 1, NULL, NULL, NULL),
(20, 'What You Need', 1, NULL, NULL, NULL),
(21, 'Avalanche', 1, NULL, NULL, NULL),
(22, 'Run', 1, NULL, NULL, NULL),
(23, 'Doomed', 1, NULL, NULL, NULL),
(24, 'Drown', 1, NULL, NULL, NULL),
(25, 'Very Ape', 3, NULL, NULL, NULL),
(26, 'All Apologies', 3, NULL, NULL, NULL),
(27, 'Rape Me', 3, NULL, NULL, NULL),
(28, 'Serve the Servants', 3, NULL, NULL, NULL),
(29, 'Heart-Shaped Box', 3, NULL, NULL, NULL),
(30, 'Pennyroyal Tean', 3, NULL, NULL, NULL),
(31, 'Frances Farmer Will Have Her Revenge On Seattle', 3, NULL, NULL, NULL),
(32, 'Milk It', 3, NULL, NULL, NULL),
(33, 'Scentless Apprentice', 3, NULL, NULL, NULL),
(34, 'Tourette´s', 3, NULL, NULL, NULL),
(35, 'Dumb', 3, NULL, NULL, NULL),
(36, 'Radio Friendly Unit Shifter', 3, NULL, NULL, NULL),
(37, 'Bohemian Rhapsody', 4, NULL, NULL, NULL),
(38, '´39', 4, NULL, NULL, NULL),
(39, 'The Prophet´s Song', 4, NULL, NULL, NULL),
(40, 'God Save The Queen', 4, NULL, NULL, NULL),
(41, 'Sweet Lady', 4, NULL, NULL, NULL),
(42, 'Love Of My Life', 4, NULL, NULL, NULL),
(43, 'Seaside Rendezvous', 4, NULL, NULL, NULL),
(44, 'I´m In Love With My Car', 4, NULL, NULL, NULL),
(45, 'Good Company', 4, NULL, NULL, NULL),
(46, 'You´re My Best Friend', 4, NULL, NULL, NULL),
(47, 'Lazing On A Sunday Afternoon', 4, NULL, NULL, NULL),
(48, 'Death On Two Legs', 4, NULL, NULL, NULL),
(49, 'Killpop', 5, NULL, NULL, NULL),
(50, 'Goodbye', 5, NULL, NULL, NULL),
(51, 'Nomadic', 5, NULL, NULL, NULL),
(52, 'The Devil in I', 5, NULL, NULL, NULL),
(53, 'Sarcastrophe', 5, NULL, NULL, NULL),
(54, 'Override', 5, NULL, NULL, NULL),
(55, 'AOV', 5, NULL, NULL, NULL),
(56, 'Lech', 5, NULL, NULL, NULL),
(57, 'XIX', 5, NULL, NULL, NULL),
(58, 'Custer', 5, NULL, NULL, NULL),
(59, 'The Negative One', 5, NULL, NULL, NULL),
(60, 'Be Prepared for Hell', 5, NULL, NULL, NULL),
(61, 'If Rain is What You Want', 5, NULL, NULL, NULL),
(62, 'Skeptic', 5, NULL, NULL, NULL),
(63, 'The One That Kills the Least', 5, NULL, NULL, NULL),
(64, 'Disposable Heroes', 6, NULL, NULL, NULL),
(65, 'The Thing That Should Not Be', 6, NULL, NULL, NULL),
(66, 'Orion', 6, NULL, NULL, NULL),
(67, 'Leper Messiah', 6, NULL, NULL, NULL),
(68, 'Welcome Home (Sanitarium)', 6, NULL, NULL, NULL),
(69, 'Damage, Inc.', 6, NULL, NULL, NULL),
(70, 'Master of Puppets', 6, NULL, NULL, NULL),
(71, 'Battery', 6, NULL, NULL, NULL),
(72, 'Aquela Paz', 7, NULL, NULL, NULL),
(73, 'Pra não dizer que não falei das flores', 7, NULL, NULL, NULL),
(74, 'É Quente', 7, NULL, NULL, NULL),
(75, 'Skate Vibration', 7, NULL, NULL, NULL),
(76, 'Criando Anticorpos', 7, NULL, NULL, NULL),
(77, 'Na palma da mão - o ragga da baixada', 7, NULL, NULL, NULL),
(78, 'Green Goes', 7, NULL, NULL, NULL),
(79, 'Onde não existe a paz não existe o amor', 7, NULL, NULL, NULL),
(80, 'Senhor Do Tempo', 7, NULL, NULL, NULL),
(81, 'I Feel So Good Today', 7, NULL, NULL, NULL),
(82, 'Lutar Pelo Que E Meu', 7, NULL, NULL, NULL),
(83, 'O futuro é um labirinto pra quem não sabe o que quer', 7, NULL, NULL, NULL),
(84, 'Abrir Seus Olhos', 7, NULL, NULL, NULL),
(85, 'Too Fast Live Too Young Too Die', 7, NULL, NULL, NULL),
(86, 'O Nosso Blues', 7, NULL, NULL, NULL),
(87, 'O Mundo Explodiu La Fora', 7, NULL, NULL, NULL),
(88, 'Liberdade Acima De Tudo', 7, NULL, NULL, NULL),
(89, 'Peso da batida do errado que deu certo', 7, NULL, NULL, NULL),
(90, 'Dias De Luta, Dias De Gloria', 7, NULL, NULL, NULL),
(91, 'Ela vai voltar (todos os defeitos de uma mulher perfeita)', 7, NULL, NULL, NULL),
(92, 'Onde esta o mundo bom? (living l.a.)', 7, NULL, NULL, NULL),
(93, 'No Passo A Passo', 7, NULL, NULL, NULL),
(94, 'I Cannot Be (A Sadder Song)', NULL, 3, NULL, NULL),
(95, 'I Like You (A Happier Song)', NULL, 3, NULL, NULL),
(96, 'Cooped Up', NULL, 3, NULL, NULL),
(97, 'Wrapped Around Your Finger', NULL, 3, NULL, NULL),
(98, 'Reputation', NULL, 3, NULL, NULL),
(99, 'New Recording 12, Jan 3, 2020', NULL, 3, NULL, NULL),
(100, 'Waiting for a Miracle', NULL, 3, NULL, NULL),
(101, 'Love/Hate Letter to Alcohol', NULL, 3, NULL, NULL),
(102, 'Wasting Angels', NULL, 3, NULL, NULL),
(103, 'One Right Now', NULL, 3, NULL, NULL),
(104, 'Lemon Tree', NULL, 3, NULL, NULL),
(105, 'Euthanasia', NULL, 3, NULL, NULL),
(106, 'Insane', NULL, 3, NULL, NULL),
(107, 'When I´m Alone', NULL, 3, NULL, NULL),
(108, 'I Just Can´t Stop Loving You', NULL, 4, NULL, NULL),
(109, 'Smooth Criminal', NULL, 4, NULL, NULL),
(110, 'Dirty Diana', NULL, 4, NULL, NULL),
(111, 'Leave Me Alone', NULL, 4, NULL, NULL),
(112, 'Another Part of Me', NULL, 4, NULL, NULL),
(113, 'Just Good Friends', NULL, 4, NULL, NULL),
(114, 'The Way You Make Me Feel', NULL, 4, NULL, NULL),
(115, 'Speed Demon', NULL, 4, NULL, NULL),
(116, 'Man in the Mirror', NULL, 4, NULL, NULL),
(117, 'Liberian Girl', NULL, 4, NULL, NULL),
(118, 'Bad', NULL, 4, NULL, NULL),
(119, 'What a Wonderful World', NULL, 6, NULL, NULL),
(120, 'Earth Angel', NULL, 6, NULL, NULL),
(121, 'Diamonds and Pearls', NULL, 6, NULL, NULL),
(122, 'When We Get Married', NULL, 6, NULL, NULL),
(123, 'On Broadway', NULL, 6, NULL, NULL),
(124, 'Daddy´s Home', NULL, 6, NULL, NULL),
(125, 'Hey There Lonely Girl', NULL, 6, NULL, NULL),
(126, 'Save the Last Dance for Me', NULL, 6, NULL, NULL),
(127, 'Chain Gang', NULL, 6, NULL, NULL),
(128, 'Since I Don´t Have You', NULL, 6, NULL, NULL),
(129, 'Tears on My Pillow', NULL, 6, NULL, NULL),
(130, 'What´s Your Name', NULL, 6, NULL, NULL),
(131, 'O Eco da Queda', NULL, 10, NULL, NULL),
(132, 'Cara de Cu', NULL, 10, NULL, NULL),
(133, 'O Grande Fim', NULL, 10, NULL, NULL),
(134, 'O Rei do Cu', NULL, 10, NULL, NULL),
(135, 'Dedo No Cu e Gritaria', NULL, 10, NULL, NULL),
(136, 'Meu Signo', NULL, 10, NULL, NULL),
(137, 'O Impossível', NULL, 10, NULL, NULL),
(138, 'Jeneci, Kassin, Tulipa', NULL, 10, NULL, NULL),
(139, 'Eu Durmo Pouco Pra Ficar Com Sono', NULL, 10, NULL, NULL),
(140, 'Antes Que o Dia Amanheça', NULL, 10, NULL, NULL),
(141, 'Maré Cheia', NULL, 10, NULL, NULL),
(142, 'O Preto do Brizola', NULL, 10, NULL, NULL),
(143, 'Murder was the case ', NULL, 12, NULL, NULL),
(144, 'Ain´t No Fun', NULL, 12, NULL, NULL),
(145, 'Lodi Dodi', NULL, 12, NULL, NULL),
(146, 'Doggy Dogg World', NULL, 12, NULL, NULL),
(147, 'Checkin´', NULL, 12, NULL, NULL),
(148, 'Bathtub', NULL, 12, NULL, NULL),
(149, 'Gz and Hustlas', NULL, 12, NULL, NULL),
(150, 'Gin and Juice', NULL, 12, NULL, NULL),
(151, 'G Funk (intro)', NULL, 12, NULL, NULL),
(152, 'Serial Killa', NULL, 12, NULL, NULL),
(153, 'Pump Pump', NULL, 12, NULL, NULL),
(154, 'For All My Niggaz & Bitches', NULL, 12, NULL, NULL),
(155, 'W Balls', NULL, 12, NULL, NULL),
(156, 'Class Room (intro)', NULL, 12, NULL, NULL),
(157, 'Tha Shiznit', NULL, 12, NULL, NULL),
(158, 'who am I (whats my name?)', NULL, 12, NULL, NULL),
(159, 'Lodi Dodi (intro)', NULL, 12, NULL, NULL),
(160, 'Chronic Relief (intro)', NULL, 12, NULL, NULL),
(161, 'Check Yo Self', NULL, 13, NULL, NULL),
(162, 'Who Got the Camera', NULL, 13, NULL, NULL),
(163, 'Now I Gotta Wet´cha', NULL, 13, NULL, NULL),
(164, 'We had to tear this mothafucka up', NULL, 13, NULL, NULL),
(165, 'Fuck ’em', NULL, 13, NULL, NULL),
(166, 'Gangsta’s Fairytale 2', NULL, 13, NULL, NULL),
(167, 'Don’t Trust ’em', NULL, 13, NULL, NULL),
(168, 'It Was a Good Day', NULL, 13, NULL, NULL),
(169, 'Wicked', NULL, 13, NULL, NULL),
(170, 'Integration', NULL, 13, NULL, NULL),
(171, 'Say Hi to the Bad Guy', NULL, 13, NULL, NULL),
(172, 'The First Day of School', NULL, 13, NULL, NULL),
(173, 'Dirty Mack', NULL, 13, NULL, NULL),
(174, 'When Will They Shoot?', NULL, 13, NULL, NULL),
(175, 'I’m Scared', NULL, 13, NULL, NULL),
(176, 'The Predator', NULL, 13, NULL, NULL),
(177, 'Say What You Say', NULL, 15, NULL, NULL),
(178, 'Superman', NULL, 15, NULL, NULL),
(179, 'White America', NULL, 15, NULL, NULL),
(180, 'Cleanin’ Out My Closet', NULL, 15, NULL, NULL),
(181, 'Hailie’s Song', NULL, 15, NULL, NULL),
(182, 'Business', NULL, 15, NULL, NULL),
(183, 'The Kiss (Skit)', NULL, 15, NULL, NULL),
(184, 'When the Music Stops', NULL, 15, NULL, NULL),
(185, 'Paul Rosenberg (Skit)', NULL, 15, NULL, NULL),
(186, 'Sing for the Moment', NULL, 15, NULL, NULL),
(187, '´Till I Collapse ', NULL, 15, NULL, NULL),
(188, 'My Dad’s Gone Crazy', NULL, 15, NULL, NULL),
(189, 'Say Goodbye Hollywood', NULL, 15, NULL, NULL),
(190, 'Steve Berman (Skit)', NULL, 15, NULL, NULL),
(191, 'Curtains Up (Skit)', NULL, 15, NULL, NULL),
(192, 'Curtains Close', NULL, 15, NULL, NULL),
(193, 'Square Dance', NULL, 15, NULL, NULL),
(194, 'Soldier', NULL, 15, NULL, NULL),
(195, 'Without Me', NULL, 15, NULL, NULL),
(196, 'Thug Passion', NULL, 16, NULL, NULL),
(197, 'What´z Ya Phone #', NULL, 16, NULL, NULL),
(198, 'Ratha Be Ya Nigga', NULL, 16, NULL, NULL),
(199, 'All Eyez on Me', NULL, 16, NULL, NULL),
(200, 'Can´t C Me', NULL, 16, NULL, NULL),
(201, 'Ain´t Hard 2 Find', NULL, 16, NULL, NULL),
(202, 'Picture Me Rollin´', NULL, 16, NULL, NULL),
(203, 'Life Goes On', NULL, 16, NULL, NULL),
(204, 'California Love', NULL, 16, NULL, NULL),
(205, 'Life Goes On', NULL, 16, NULL, NULL),
(206, 'Heaven Ain´t Hard 2 Find', NULL, 16, NULL, NULL),
(207, 'When We Ride', NULL, 16, NULL, NULL),
(208, 'No More Pain', NULL, 16, NULL, NULL),
(209, 'Wonda Why They Call U Bitch', NULL, 16, NULL, NULL),
(210, 'Tradin´ War Stories', NULL, 16, NULL, NULL),
(211, 'How Do U Want It', NULL, 16, NULL, NULL),
(212, '2 of Americaz Most Wanted', NULL, 16, NULL, 12),
(213, 'Run tha Streetz', NULL, 16, NULL, NULL),
(214, 'Check Out Time', NULL, 16, NULL, NULL),
(215, 'I Ain´t Mad at Cha', NULL, 16, NULL, NULL),
(216, 'Only God Can Judge Me', NULL, 16, NULL, NULL),
(217, 'Got My Mind Made Up', NULL, 16, NULL, NULL),
(218, 'Heartz of Men', NULL, 16, NULL, NULL),
(219, 'Holla at Me', NULL, 16, NULL, NULL),
(220, 'Ambitionz Az a Ridah', NULL, 16, NULL, NULL),
(221, 'Shorty Wanna Be a Thug', NULL, 16, NULL, NULL),
(222, 'A cultura', NULL, 17, NULL, NULL),
(223, 'Cantando pro santo', NULL, 17, NULL, 7),
(224, 'No Brooklin', NULL, 17, NULL, NULL),
(225, 'Rap é compromisso', NULL, 17, NULL, NULL),
(226, 'País da fome', NULL, 17, NULL, NULL),
(227, 'Incentivando o som', NULL, 17, NULL, NULL),
(228, 'Respeito é pra quem tem', NULL, 17, NULL, NULL),
(229, 'Cocaína', NULL, 17, NULL, NULL),
(230, 'Um Bom Lugar', NULL, 17, NULL, NULL),
(231, 'Na Zona Sul', NULL, 17, NULL, NULL),
(232, 'Introdução', NULL, 17, NULL, NULL),
(233, 'All Night Parking', NULL, 18, NULL, NULL),
(234, 'Can I Get It', NULL, 18, NULL, NULL),
(235, 'Easy on Me', NULL, 18, NULL, NULL),
(236, 'Strangers by Nature', NULL, 18, NULL, NULL),
(237, 'Oh My God', NULL, 18, NULL, NULL),
(238, 'I Drink Wine', NULL, 18, NULL, NULL),
(239, 'Hold On', NULL, 18, NULL, NULL),
(240, 'Woman Like Me', NULL, 18, NULL, NULL),
(241, 'My Little Love', NULL, 18, NULL, NULL),
(242, 'Cry Your Heart Out', NULL, 18, NULL, NULL),
(243, 'Love Is a Game', NULL, 18, NULL, NULL),
(244, 'To Be Loved', NULL, 18, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `track`
--

DROP TABLE IF EXISTS `track`;
CREATE TABLE IF NOT EXISTS `track` (
  `RNGALBUM` int(11) NOT NULL,
  `RNGMUSIC` int(11) NOT NULL,
  `RNGNUMBER` int(11) NOT NULL,
  KEY `RNGALBUM` (`RNGALBUM`),
  KEY `RNGMUSIC` (`RNGMUSIC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `track`
--

INSERT INTO `track` (`RNGALBUM`, `RNGMUSIC`, `RNGNUMBER`) VALUES
(10, 1, 7),
(10, 2, 13),
(10, 3, 9),
(10, 4, 6),
(10, 5, 3),
(10, 6, 10),
(10, 7, 8),
(10, 8, 2),
(10, 9, 1),
(10, 10, 11),
(10, 11, 5),
(10, 12, 12),
(10, 13, 4),
(1, 245, 12),
(1, 243, 11),
(1, 242, 10),
(1, 241, 9),
(1, 240, 8),
(1, 239, 7),
(1, 238, 6),
(1, 237, 5),
(1, 236, 4),
(1, 235, 3),
(1, 234, 2),
(1, 233, 1),
(2, 119, 1),
(2, 120, 2),
(2, 121, 3),
(2, 122, 4),
(2, 123, 5),
(2, 124, 6),
(2, 125, 7),
(2, 126, 8),
(2, 127, 9),
(2, 128, 10),
(2, 129, 11),
(2, 130, 12),
(3, 108, 1),
(3, 109, 2),
(3, 110, 3),
(3, 111, 4),
(3, 112, 5),
(3, 113, 6),
(3, 114, 7),
(3, 115, 8),
(3, 118, 9),
(3, 119, 10),
(3, 120, 11),
(4, 94, 1),
(4, 95, 2),
(4, 96, 3),
(4, 97, 4),
(4, 98, 5),
(4, 99, 6),
(4, 100, 7),
(4, 101, 8),
(4, 102, 9),
(4, 103, 10),
(4, 104, 11),
(4, 105, 12),
(4, 106, 13),
(4, 107, 14),
(5, 143, 1),
(5, 144, 2),
(5, 145, 3),
(5, 146, 4),
(5, 147, 5),
(5, 148, 6),
(5, 149, 7),
(5, 150, 8),
(5, 151, 9),
(5, 152, 10),
(5, 153, 11),
(5, 154, 12),
(5, 155, 13),
(5, 156, 14),
(5, 157, 15),
(6, 49, 1),
(6, 50, 2),
(6, 51, 3),
(6, 52, 4),
(6, 53, 5),
(6, 54, 6),
(6, 55, 7),
(6, 56, 8),
(6, 57, 9),
(6, 58, 10),
(6, 59, 11),
(6, 60, 12),
(6, 70, 13),
(6, 71, 14),
(6, 72, 15),
(7, 72, 1),
(7, 73, 2),
(7, 74, 3),
(7, 75, 4),
(7, 76, 5),
(7, 77, 6),
(7, 78, 7),
(7, 79, 8),
(7, 80, 9),
(7, 81, 10),
(7, 82, 11),
(7, 83, 12),
(7, 84, 13),
(7, 85, 14),
(7, 86, 15),
(7, 87, 16),
(7, 88, 17),
(7, 89, 18),
(7, 90, 19),
(7, 91, 20),
(7, 92, 21),
(7, 93, 22),
(8, 25, 1),
(8, 26, 2),
(8, 27, 3),
(8, 28, 4),
(8, 29, 5),
(8, 30, 6),
(8, 31, 7),
(8, 32, 8),
(8, 33, 9),
(8, 34, 10),
(8, 35, 11),
(8, 36, 12),
(9, 64, 1),
(9, 65, 2),
(9, 66, 3),
(9, 67, 4),
(9, 68, 5),
(9, 69, 6),
(9, 70, 7),
(9, 71, 8),
(11, 37, 1),
(11, 38, 2),
(11, 39, 3),
(11, 40, 4),
(11, 41, 5),
(11, 42, 6),
(11, 43, 7),
(11, 44, 8),
(11, 45, 9),
(11, 46, 10),
(11, 47, 11),
(11, 48, 12),
(12, 161, 1),
(12, 162, 2),
(12, 163, 3),
(12, 164, 4),
(12, 165, 5),
(12, 166, 6),
(12, 167, 7),
(12, 168, 8),
(12, 169, 9),
(12, 170, 10),
(12, 171, 11),
(12, 172, 12),
(12, 173, 13),
(12, 174, 14),
(12, 175, 15),
(12, 176, 16),
(13, 222, 2),
(13, 223, 3),
(13, 224, 4),
(13, 225, 5),
(13, 226, 6),
(13, 227, 7),
(13, 228, 8),
(13, 229, 9),
(13, 230, 10),
(13, 231, 11),
(13, 232, 1),
(14, 131, 1),
(14, 132, 2),
(14, 133, 3),
(14, 134, 4),
(14, 135, 5),
(14, 136, 6),
(14, 137, 7),
(14, 138, 8),
(14, 139, 9),
(14, 140, 10),
(14, 141, 11),
(14, 142, 12),
(15, 177, 1),
(15, 178, 2),
(15, 179, 3),
(15, 180, 4),
(15, 181, 5),
(15, 182, 6),
(15, 183, 7),
(15, 184, 8),
(15, 185, 9),
(15, 186, 10),
(15, 187, 11),
(15, 188, 12),
(15, 189, 13),
(15, 190, 14),
(15, 191, 15),
(15, 192, 16),
(15, 193, 17),
(15, 194, 18),
(15, 195, 19),
(16, 14, 1),
(16, 15, 2),
(16, 16, 3),
(16, 17, 4),
(16, 18, 5),
(16, 19, 6),
(16, 20, 7),
(16, 21, 8),
(16, 22, 9),
(16, 23, 10),
(16, 24, 11),
(17, 119, 1),
(17, 120, 2),
(17, 121, 3),
(17, 122, 4),
(17, 123, 5),
(17, 124, 6),
(17, 125, 7),
(17, 126, 8),
(17, 127, 9),
(17, 128, 10),
(17, 129, 11),
(17, 130, 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `USRID` int(11) NOT NULL AUTO_INCREMENT,
  `USRNAME` varchar(150) NOT NULL,
  `URSDESC` text,
  `USREMAIL` varchar(256) NOT NULL,
  `USRPASSWORD` varchar(50) NOT NULL,
  `USRDTBIRTH` date DEFAULT NULL,
  `USRPHONE` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`USRID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`USRID`, `USRNAME`, `URSDESC`, `USREMAIL`, `USRPASSWORD`, `USRDTBIRTH`, `USRPHONE`) VALUES
(1, 'Gustavo', NULL, 'teste@email.com', '24062004Gu#', NULL, NULL),
(2, 'undefined', NULL, 'undefined', 'undefined', NULL, NULL),
(3, 'undefined', NULL, 'undefined', 'undefined', NULL, NULL),
(4, 'Luis', NULL, 'exemplo2@email.com', '123456', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
