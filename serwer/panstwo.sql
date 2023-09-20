-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Wrz 2023, 10:22
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kraje`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `panstwo`
--

CREATE TABLE `panstwo` (
  `ID` int(11) NOT NULL,
  `nazwa` text NOT NULL,
  `populacja` int(11) NOT NULL,
  `kontynent` text NOT NULL,
  `stolica` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `panstwo`
--

INSERT INTO `panstwo` (`ID`, `nazwa`, `populacja`, `kontynent`, `stolica`) VALUES
(1, 'Kuwait', 4270563, 'Asia', 'Kuwait City'),
(2, 'Guinea', 13132792, 'Africa', 'Conakry'),
(3, 'Tokelau', 1411, 'Oceania', 'Fakaofo'),
(4, 'Afghanistan', 40218234, 'Asia', 'Kabul'),
(5, 'British Virgin Islands', 30237, 'Americas', 'Road Town'),
(6, 'Canada', 38005238, 'Americas', 'Ottawa'),
(7, 'Micronesia', 115021, 'Oceania', 'Palikir'),
(8, 'Panama', 4314768, 'Americas', 'Panama City'),
(9, 'Namibia', 2540916, 'Africa', 'Windhoek'),
(10, 'Curaçao', 155014, 'Americas', 'Willemstad'),
(11, 'Burundi', 11890781, 'Africa', 'Gitega'),
(12, 'Bulgaria', 6927288, 'Europe', 'Sofia'),
(13, 'Costa Rica', 5094114, 'Americas', 'San José'),
(14, 'Cocos (Keeling) Islands', 544, 'Oceania', 'West Island'),
(15, 'Ethiopia', 114963583, 'Africa', 'Addis Ababa'),
(16, 'Jordan', 10203140, 'Asia', 'Amman'),
(17, 'Solomon Islands', 686878, 'Oceania', 'Honiara'),
(18, 'Tanzania', 59734213, 'Africa', 'Dodoma'),
(19, 'Papua New Guinea', 8947027, 'Oceania', 'Port Moresby'),
(20, 'Latvia', 1901548, 'Europe', 'Riga'),
(21, 'Saint Lucia', 183629, 'Americas', 'Castries'),
(22, 'Norway', 5379475, 'Europe', 'Oslo'),
(23, 'Algeria', 44700000, 'Africa', 'Algiers'),
(24, 'Hong Kong', 7500700, 'Asia', 'City of Victoria'),
(25, 'Malta', 525285, 'Europe', 'Valletta'),
(26, 'Botswana', 2351625, 'Africa', 'Gaborone'),
(27, 'Cayman Islands', 65720, 'Americas', 'George Town'),
(28, 'Pitcairn Islands', 56, 'Oceania', 'Adamstown'),
(29, 'Iran', 83992953, 'Asia', 'Tehran'),
(30, 'Eswatini', 1160164, 'Africa', 'Mbabane'),
(31, 'Bangladesh', 164689383, 'Asia', 'Dhaka'),
(32, 'Gabon', 2225728, 'Africa', 'Libreville'),
(33, 'Nigeria', 206139587, 'Africa', 'Abuja'),
(34, 'Bosnia and Herzegovina', 3280815, 'Europe', 'Sarajevo'),
(35, 'Guernsey', 62999, 'Europe', 'St. Peter Port'),
(36, 'Kyrgyzstan', 6591600, 'Asia', 'Bishkek'),
(37, 'DR Congo', 108407721, 'Africa', 'Kinshasa'),
(38, 'Kosovo', 1775378, 'Europe', 'Pristina'),
(39, 'Philippines', 109581085, 'Asia', 'Manila'),
(40, 'Greece', 10715549, 'Europe', 'Athens'),
(41, 'Ghana', 31072945, 'Africa', 'Accra'),
(42, 'Netherlands', 16655799, 'Europe', 'Amsterdam'),
(43, 'Djibouti', 988002, 'Africa', 'Djibouti'),
(44, 'Lithuania', 2794700, 'Europe', 'Vilnius'),
(45, 'Indonesia', 273523621, 'Asia', 'Jakarta'),
(46, 'Togo', 8278737, 'Africa', 'Lomé'),
(47, 'Malawi', 19129955, 'Africa', 'Lilongwe'),
(48, 'Bolivia', 11673029, 'Americas', 'Sucre'),
(49, 'Denmark', 5831404, 'Europe', 'Copenhagen'),
(50, 'Kazakhstan', 18754440, 'Asia', 'Nur-Sultan'),
(51, 'Honduras', 9904608, 'Americas', 'Tegucigalpa'),
(52, 'Nicaragua', 6624554, 'Americas', 'Managua'),
(53, 'Caribbean Netherlands', 25987, 'Americas', 'Kralendijk'),
(54, 'Zimbabwe', 14862927, 'Africa', 'Harare'),
(55, 'Argentina', 45376763, 'Americas', 'Buenos Aires'),
(56, 'Saint Vincent and the Grenadines', 110947, 'Americas', 'Kingstown'),
(57, 'Gambia', 2416664, 'Africa', 'Banjul'),
(58, 'Sudan', 43849269, 'Africa', 'Khartoum'),
(59, 'Antigua and Barbuda', 97928, 'Americas', 'Saint John\'s'),
(60, 'Myanmar', 54409794, 'Asia', 'Naypyidaw'),
(61, 'Finland', 5530719, 'Europe', 'Helsinki'),
(62, 'Saint Martin', 38659, 'Americas', 'Marigot'),
(63, 'Chile', 19116209, 'Americas', 'Santiago'),
(64, 'Russia', 144104080, 'Europe', 'Moscow'),
(65, 'Timor-Leste', 1318442, 'Asia', 'Dili'),
(66, 'Fiji', 896444, 'Oceania', 'Suva'),
(67, 'Cambodia', 16718971, 'Asia', 'Phnom Penh'),
(68, 'Venezuela', 28435943, 'Americas', 'Caracas'),
(69, 'United Arab Emirates', 9890400, 'Asia', 'Abu Dhabi'),
(70, 'Switzerland', 8654622, 'Europe', 'Bern'),
(71, 'Puerto Rico', 3194034, 'Americas', 'San Juan'),
(72, 'France', 67391582, 'Europe', 'Paris'),
(73, 'Saint Kitts and Nevis', 53192, 'Americas', 'Basseterre'),
(74, 'Cyprus', 1207361, 'Europe', 'Nicosia'),
(75, 'Austria', 8917205, 'Europe', 'Vienna'),
(76, 'El Salvador', 6486201, 'Americas', 'San Salvador'),
(77, 'Syria', 17500657, 'Asia', 'Damascus'),
(78, 'Croatia', 4047200, 'Europe', 'Zagreb'),
(79, 'Guadeloupe', 400132, 'Americas', 'Basse-Terre'),
(80, 'Kenya', 53771300, 'Africa', 'Nairobi'),
(81, 'Kiribati', 119446, 'Oceania', 'South Tarawa'),
(82, 'Martinique', 378243, 'Americas', 'Fort-de-France'),
(83, 'Saint Pierre and Miquelon', 6069, 'Americas', 'Saint-Pierre'),
(84, 'Slovakia', 5458827, 'Europe', 'Bratislava'),
(85, 'Saint Barthélemy', 4255, 'Americas', 'Gustavia'),
(86, 'Estonia', 1331057, 'Europe', 'Tallinn'),
(87, 'Guyana', 786559, 'Americas', 'Georgetown'),
(88, 'Rwanda', 12952209, 'Africa', 'Kigali'),
(89, 'Burkina Faso', 20903278, 'Africa', 'Ouagadougou'),
(90, 'Italy', 59554023, 'Europe', 'Rome'),
(91, 'Cook Islands', 18100, 'Oceania', 'Avarua'),
(92, 'United Kingdom', 67215293, 'Europe', 'London'),
(93, 'American Samoa', 55197, 'Oceania', 'Pago Pago'),
(94, 'Uruguay', 3473727, 'Americas', 'Montevideo'),
(95, 'Eritrea', 5352000, 'Africa', 'Asmara'),
(96, 'Madagascar', 27691019, 'Africa', 'Antananarivo'),
(97, 'Suriname', 586634, 'Americas', 'Paramaribo'),
(98, 'Equatorial Guinea', 1402985, 'Africa', 'Malabo'),
(99, 'Greenland', 56367, 'Americas', 'Nuuk'),
(100, 'Jamaica', 2961161, 'Americas', 'Kingston'),
(101, 'Svalbard and Jan Mayen', 2562, 'Europe', 'Longyearbyen'),
(102, 'Tunisia', 11818618, 'Africa', 'Tunis'),
(103, 'Bermuda', 63903, 'Americas', 'Hamilton'),
(104, 'Ecuador', 17643060, 'Americas', 'Quito'),
(105, 'Somalia', 15893219, 'Africa', 'Mogadishu'),
(106, 'Bahrain', 1701583, 'Asia', 'Manama'),
(107, 'Vietnam', 97338583, 'Asia', 'Hanoi'),
(108, 'Gibraltar', 33691, 'Europe', 'Gibraltar'),
(109, 'Guam', 168783, 'Oceania', 'Hagåtña'),
(110, 'Libya', 6871287, 'Africa', 'Tripoli'),
(111, 'Chad', 16425859, 'Africa', 'N\'Djamena'),
(112, 'South Korea', 51780579, 'Asia', 'Seoul'),
(113, 'Northern Mariana Islands', 57557, 'Oceania', 'Saipan'),
(114, 'Palau', 18092, 'Oceania', 'Ngerulmud'),
(115, 'Liechtenstein', 38137, 'Europe', 'Vaduz'),
(116, 'French Southern and Antarctic Lands', 400, 'Antarctic', 'Port-aux-Français'),
(117, 'Mexico', 128932753, 'Americas', 'Mexico City'),
(118, 'Australia', 25687041, 'Oceania', 'Canberra'),
(119, 'Czechia', 10698896, 'Europe', 'Prague'),
(120, 'Samoa', 198410, 'Oceania', 'Apia'),
(121, 'Guinea-Bissau', 1967998, 'Africa', 'Bissau'),
(122, 'Turkey', 84339067, 'Asia', 'Ankara'),
(123, 'Zambia', 18383956, 'Africa', 'Lusaka'),
(124, 'Azerbaijan', 10110116, 'Asia', 'Baku'),
(125, 'South Georgia', 30, 'Antarctic', 'King Edward Point'),
(126, 'Wallis and Futuna', 11750, 'Oceania', 'Mata-Utu'),
(127, 'Iraq', 40222503, 'Asia', 'Baghdad'),
(128, 'Sri Lanka', 21919000, 'Asia', 'Sri Jayawardenepura Kotte'),
(129, 'Maldives', 540542, 'Asia', 'Malé'),
(130, 'Seychelles', 98462, 'Africa', 'Victoria'),
(131, 'Niger', 24206636, 'Africa', 'Niamey'),
(132, 'United States Minor Outlying Islands', 300, 'Americas', 'Washington DC'),
(133, 'Grenada', 112519, 'Americas', 'St. George\'s'),
(134, 'Tajikistan', 9537642, 'Asia', 'Dushanbe'),
(135, 'Lesotho', 2142252, 'Africa', 'Maseru'),
(136, 'Montserrat', 4922, 'Americas', 'Plymouth'),
(137, 'Western Sahara', 510713, 'Africa', 'El Aaiún'),
(138, 'Moldova', 2617820, 'Europe', 'Chișinău'),
(139, 'Paraguay', 7132530, 'Americas', 'Asunción'),
(140, 'Barbados', 287371, 'Americas', 'Bridgetown'),
(141, 'Guatemala', 16858333, 'Americas', 'Guatemala City'),
(142, 'Benin', 12123198, 'Africa', 'Porto-Novo'),
(143, 'Trinidad and Tobago', 1399491, 'Americas', 'Port of Spain'),
(144, 'Japan', 125836021, 'Asia', 'Tokyo'),
(145, 'Egypt', 102334403, 'Africa', 'Cairo'),
(146, 'Armenia', 2963234, 'Asia', 'Yerevan'),
(147, 'Peru', 32971846, 'Americas', 'Lima'),
(148, 'Ireland', 4994724, 'Europe', 'Dublin'),
(149, 'Tuvalu', 11792, 'Oceania', 'Funafuti'),
(150, 'Belarus', 9398861, 'Europe', 'Minsk'),
(151, 'Uzbekistan', 34232050, 'Asia', 'Tashkent'),
(152, 'Pakistan', 220892331, 'Asia', 'Islamabad'),
(153, 'Christmas Island', 2072, 'Oceania', 'Flying Fish Cove'),
(154, 'Portugal', 10305564, 'Europe', 'Lisbon'),
(155, 'Nepal', 29136808, 'Asia', 'Kathmandu'),
(156, 'Ivory Coast', 26378275, 'Africa', 'Yamoussoukro'),
(157, 'India', 1380004385, 'Asia', 'New Delhi'),
(158, 'Morocco', 36910558, 'Africa', 'Rabat'),
(159, 'Poland', 37950802, 'Europe', 'Warsaw'),
(160, 'Angola', 32866268, 'Africa', 'Luanda'),
(161, 'Belize', 397621, 'Americas', 'Belmopan'),
(162, 'Saint Helena, Ascension and Tristan da Cunha', 53192, 'Africa', 'Jamestown'),
(163, 'Germany', 83240525, 'Europe', 'Berlin'),
(164, 'Uganda', 45741000, 'Africa', 'Kampala'),
(165, 'Qatar', 2881060, 'Asia', 'Doha'),
(166, 'Sint Maarten', 40812, 'Americas', 'Philipsburg'),
(167, 'South Sudan', 11193729, 'Africa', 'Juba'),
(168, 'Falkland Islands', 2563, 'Americas', 'Stanley'),
(169, 'Yemen', 29825968, 'Asia', 'Sana\'a'),
(170, 'Israel', 9216900, 'Asia', 'Jerusalem'),
(171, 'Brazil', 212559409, 'Americas', 'Brasília'),
(172, 'Liberia', 5057677, 'Africa', 'Monrovia'),
(173, 'Cape Verde', 555988, 'Africa', 'Praia'),
(174, 'Norfolk Island', 2302, 'Oceania', 'Kingston'),
(175, 'Mozambique', 31255435, 'Africa', 'Maputo'),
(176, 'Slovenia', 2100126, 'Europe', 'Ljubljana'),
(177, 'Nauru', 10834, 'Oceania', 'Yaren'),
(178, 'Ukraine', 44134693, 'Europe', 'Kyiv'),
(179, 'Republic of the Congo', 5657000, 'Africa', 'Brazzaville'),
(180, 'Laos', 7275556, 'Asia', 'Vientiane'),
(181, 'Sweden', 10353442, 'Europe', 'Stockholm'),
(182, 'Aruba', 106766, 'Americas', 'Oranjestad'),
(183, 'Senegal', 16743930, 'Africa', 'Dakar'),
(184, 'Oman', 5106622, 'Asia', 'Muscat'),
(185, 'Mauritius', 1265740, 'Africa', 'Port Louis'),
(186, 'Dominica', 71991, 'Americas', 'Roseau'),
(187, 'Niue', 1470, 'Oceania', 'Alofi'),
(188, 'Mongolia', 3278292, 'Asia', 'Ulan Bator'),
(189, 'Hungary', 9749763, 'Europe', 'Budapest'),
(190, 'San Marino', 33938, 'Europe', 'City of San Marino'),
(191, 'Haiti', 11402533, 'Americas', 'Port-au-Prince'),
(192, 'Bhutan', 771612, 'Asia', 'Thimphu'),
(193, 'Lebanon', 6825442, 'Asia', 'Beirut'),
(194, 'Brunei', 437483, 'Asia', 'Bandar Seri Begawan'),
(195, 'French Polynesia', 280904, 'Oceania', 'Papeetē'),
(196, 'Cuba', 11326616, 'Americas', 'Havana'),
(197, 'United States', 329484123, 'Americas', 'Washington, D.C.'),
(198, 'French Guiana', 254541, 'Americas', 'Cayenne'),
(199, 'Mauritania', 4649660, 'Africa', 'Nouakchott'),
(200, 'Turkmenistan', 6031187, 'Asia', 'Ashgabat'),
(201, 'Dominican Republic', 10847904, 'Americas', 'Santo Domingo'),
(202, 'Isle of Man', 85032, 'Europe', 'Douglas'),
(203, 'Tonga', 105697, 'Oceania', 'Nuku\'alofa'),
(204, 'Comoros', 869595, 'Africa', 'Moroni'),
(205, 'Saudi Arabia', 34813867, 'Asia', 'Riyadh'),
(206, 'New Caledonia', 271960, 'Oceania', 'Nouméa'),
(207, 'Spain', 47351567, 'Europe', 'Madrid'),
(208, 'Vatican City', 451, 'Europe', 'Vatican City'),
(209, 'Marshall Islands', 59194, 'Oceania', 'Majuro'),
(210, 'Georgia', 3714000, 'Asia', 'Tbilisi'),
(211, 'Malaysia', 32365998, 'Asia', 'Kuala Lumpur'),
(212, 'Cameroon', 26545864, 'Africa', 'Yaoundé'),
(213, 'Serbia', 6908224, 'Europe', 'Belgrade'),
(214, 'Taiwan', 23503349, 'Asia', 'Taipei'),
(215, 'Turks and Caicos Islands', 38718, 'Americas', 'Cockburn Town'),
(216, 'Réunion', 840974, 'Africa', 'Saint-Denis'),
(217, 'Albania', 2837743, 'Europe', 'Tirana'),
(218, 'Singapore', 5685807, 'Asia', 'Singapore'),
(219, 'North Korea', 25778815, 'Asia', 'Pyongyang'),
(220, 'Andorra', 77265, 'Europe', 'Andorra la Vella'),
(221, 'Monaco', 39244, 'Europe', 'Monaco'),
(222, 'Faroe Islands', 48865, 'Europe', 'Tórshavn'),
(223, 'Montenegro', 621718, 'Europe', 'Podgorica'),
(224, 'Thailand', 69799978, 'Asia', 'Bangkok'),
(225, 'Mali', 20250834, 'Africa', 'Bamako'),
(226, 'Mayotte', 226915, 'Africa', 'Mamoudzou'),
(227, 'Belgium', 11555997, 'Europe', 'Brussels'),
(228, 'Bahamas', 393248, 'Americas', 'Nassau'),
(229, 'Iceland', 366425, 'Europe', 'Reykjavik'),
(230, 'Colombia', 50882884, 'Americas', 'Bogotá'),
(231, 'Sierra Leone', 7976985, 'Africa', 'Freetown'),
(232, 'British Indian Ocean Territory', 3000, 'Africa', 'Diego Garcia'),
(233, 'Central African Republic', 4829764, 'Africa', 'Bangui'),
(234, 'Vanuatu', 307150, 'Oceania', 'Port Vila'),
(235, 'Anguilla', 13452, 'Americas', 'The Valley'),
(236, 'Romania', 19286123, 'Europe', 'Bucharest'),
(237, 'United States Virgin Islands', 106290, 'Americas', 'Charlotte Amalie'),
(238, 'Luxembourg', 632275, 'Europe', 'Luxembourg'),
(239, 'China', 1402112000, 'Asia', 'Beijing'),
(240, 'Åland Islands', 29458, 'Europe', 'Mariehamn'),
(241, 'Jersey', 100800, 'Europe', 'Saint Helier'),
(242, 'New Zealand', 5084300, 'Oceania', 'Wellington'),
(243, 'São Tomé and Príncipe', 219161, 'Africa', 'São Tomé'),
(245, 'North Macedonia', 2077132, 'Europe', 'Skopje');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `panstwo`
--
ALTER TABLE `panstwo`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `panstwo`
--
ALTER TABLE `panstwo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
