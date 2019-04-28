-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2019 at 01:41 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `testname` varchar(100) NOT NULL,
  `sno` int(50) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `Name` varchar(25) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `query` varchar(299) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`Name`, `email`, `contact`, `query`) VALUES
('Abhinav', 'ASasSA@GMAIL.COM', '9808156144', 'lkjknlk'),
('huhrur', 'gy2tgutiyi@tfry', '2135146', ''),
('nishant kumar', 'KNISHANT182@GMAIL.COM', '9874563210', 'HEllo \r\n'),
('op', 'op@ddf', '1111111', 'hh'),
('ram', 'ram1432@gmail.com', '7893214560', 'dfghjkl'),
('sapan', 'sadasd@gmail.com', '9808156144', 'asda'),
('sohan', 'sohan2345678@gmail.com', '9874563210', ''),
('sohan', 'srdtfyk@fh', '1855555555', ''),
('zxcvbnm', 'zxcvbn123@xscdvb', '784515369', '');

-- --------------------------------------------------------

--
-- Table structure for table `questionpaper`
--

CREATE TABLE `questionpaper` (
  `sno` int(100) NOT NULL,
  `question` varchar(500) NOT NULL,
  `choice1` varchar(200) NOT NULL,
  `choice2` varchar(200) NOT NULL,
  `choice3` varchar(200) NOT NULL,
  `choice4` varchar(200) NOT NULL,
  `answer` varchar(200) NOT NULL,
  `test` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionpaper`
--

INSERT INTO `questionpaper` (`sno`, `question`, `choice1`, `choice2`, `choice3`, `choice4`, `answer`, `test`) VALUES
(1, 'A man grows into a giant such that his\r\nlinear dimensions increase by a factor\r\nof 9. Assuming that his density remains\r\nsame, the stress in the leg will change by a\r\nfactor of :', '9', '1/9', '81', '1/81', '9', 'ENGTEST1'),
(2, 'A time dependent force F=6t acts on a\r\nparticle of mass 1 kg. If the particle starts\r\nfrom rest, the work done by the force\r\nduring the first 1 sec. will be :', ' 4.5 J', '22 J\r\n', ' 9 J', '18 J', ' 9 J', 'ENGTEST1'),
(3, 'An external pressure P is applied on a cube\r\nat 08C so that it is equally compressed from\r\nall sides. K is the bulk modulus of the\r\nmaterial of the cube and ? is its coefficient\r\nof linear expansion. Suppose we want to\r\nbring the cube to its original size by\r\nheating. The temperature should be raised\r\nby :\r\n', 'P/3?k', 'P/?K', '3?/pk', '3PK?', 'P/3?k', 'ENGTEST1'),
(4, ' Cp and Cv are specific heats at constant pressure and constant volume respectively. It is observed that\r\nCp?Cv=a for hydrogen gas Cp?Cv=b for nitrogen gas\r\nThe correct relation between a and b is :\r\n', ' a=1/14b\r\n', ' a=b\r\n', ' a=14b\r\n', ' a=14b\r\n', ' a=14b\r\n', 'ENGTEST1'),
(5, ' A capacitance of 2 µF is required in an electrical circuit across a potential difference of 1.0 kV.  A large number of 1 µF capacitors are available which can withstand a potential difference of not more than 300 V.\r\nThe minimum number of capacitors required to achieve this is :\r\n', ' 2\r\n', ' 16\r\n', ' 24', ' 32', ' 32', 'ENGTEST1'),
(5, ' In a Young’s double slit experiment, slits are separated by 0.5 mm, and the screen is placed 150 cm away.  A beam of light consisting of two wavelengths, 650 nm and 520 nm, is used to obtain interference fringes on the screen.  The least distance from the common central maximum to the point where the bright fringes due to both the wavelengths coincide is :\r\n', '1.56 mm\r\n', '7.8 mm\r\n', '9.75 mm\r\n', '15.6 mm', '7.8 mm', 'ENGTEST1'),
(6, ' In a common emitter amplifier circuit using an n-p-n transistor, the phase difference between the input and the output voltages will be : ', ' 45', ' 90', ' 135', ' 180\r\n', '180', 'ENGTEST1'),
(7, ' pKa of a weak acid (HA) and pKb of a weak base (BOH) are 3.2 and 3.4, respectively. The pH of their salt (AB) solution is :\r\n', ' 7.0\r\n', ' 1.0\r\n', ' 7.2\r\n', ' 6.9\r\n', ' 6.9\r\n', 'ENGTEST1'),
(8, ' Both lithium and magnesium display several similar properties due to the diagonal relationship; however, the one which is incorrect, is :\r\n', ' both form nitrides ', ' nitrates of both Li and Mg yield NO2 and O2 on heating ', ' both form basic carbonates', ' both form soluble bicarbonates', ' both form basic carbonates', 'ENGTEST1'),
(9, ' Which of the following species is not paramagnetic ? ', ' O2 ', '  B2', ' NO ', ' CO\r\n', ' CO\r\n', 'ENGTEST1'),
(10, 'The most abundant elements by mass in the body of a healthy human adult are : Oxygen (61.4%); Carbon (22.9%), Hydrogen (10.0%); and Nitrogen (2.6%). The weight which a 75 kg person would gain if all 1H atoms are replaced by 2H atoms is :\r\n', ' 7.5 kg\r\n', ' 10 kg\r\n', ' 15 kg\r\n', ' 37.5 kg\r\n', ' 7.5 kg\r\n', 'ENGTEST1'),
(11, ' If S is the set of distinct values of ‘b’ for which the following system of linear equations\r\nx+y+z=1\r\nx+ay+z=1\r\nax+by+z=0\r\nhas no solution, then S is :\r\n', ' an infinite set\r\n', ' a finite set containing two or more elements\r\n', ' a singleton\r\n', ' an empty set', ' a singleton', 'ENGTEST1'),
(12, ' A man X has 7 friends, 4 of them are ladies and 3 are men.  His wife Y also has 7 friends, 3 of them are ladies and 4 are men. Assume X and Y have no common friends. Then the total number of ways in which X and Y together can throw a party inviting 3 ladies and 3 men, so that 3 friends of each of X and Y are in this party, is : ', ' 468 ', ' 469 ', ' 484 ', ' 485\r\n', ' 485\r\n', 'ENGTEST1'),
(13, ' Twenty meters of wire is available for fencing off a flower-bed in the form of a circular sector.  Then the maximum area (in sq. m) of the flower-bed, is : ', ' 10', ' 25', ' 30', ' 12.5', ' 25', 'ENGTEST1'),
(14, ' Let k be an integer such that the triangle with vertices (k, ?3k), (5, k) and (?k, 2) has area 28 sq. units.  Then the orthocentre of this triangle is at the point ', '(1,3/4)', '(1,-3/4)', '(2,1/2)', '(2,-1/2)', '(2,1/2)', 'ENGTEST1'),
(15, ' A box contains 15 green and 10 yellow balls.  If 10 balls are randomly drawn, one-by-one, with replacement, then the variance of the number of green balls drawn is :\r\n', ' 6\r\n', ' 4', ' 6/25', ' 12/5', ' 12/5', 'ENGTEST1'),
(1, ' A flat plate is moving normal to its plane through a gas under the action of a constant force F. The gas is kept at a very low pressure. The speed of the plate v is much less than the average speed u of the gas molecules. Which of the following options is/are true?', ' The pressure difference between the leading and trailing faces of the plate is proportional to uv ', ' The plate will continue to move with constant non-zero acceleration, at all times', ' At a later time external force F balances the resistive force', ' The resistive force experienced by the plate is proportional to v\r\n', ' The resistive force experienced by the plate is proportional to v\r\n', 'jeeadvtest1'),
(2, ' A stationary source emits sound of frequency 0 492Hz. f = The sound is reflected by a large car approaching the source with a speed of 1 2 ms . ? The reflected signal is received by the source and superposed with the original. What will be the beat frequency of the resulting signal in Hz? (Given that the speed of sound in air is 1 330 ms? and the car reflects the sound at the frequency it has received).\r\n', '1', '4', '6', '8', '6', 'jeeadvtest1'),
(3, ' The correct statement(s) about the oxoacids, 4 HClO and HClO, is(are) : ', ' The conjugate base of HClO4 is weaker base than 2HO', ' The central atom in both 4 HClO and HClO is 3 sp hybridized ', ' 4 HClO is more acidic than HClO because of the resonance stabilization of its anion ', ' 4 HClO is formed in the reaction between 2 Cl and  2HO', ' 4 HClO is formed in the reaction between 2 Cl and  2HO', ''),
(3, ' The correct statement(s) about the oxoacids, 4 HClO and HClO, is(are) : ', ' The conjugate base of 4 HClO is weaker base than 2HO', ' The central atom in both 4 HClO and HClO is 3 sp hybridized ', 'HClO is more acidic than HClO because of the resonance stabilization of its anion ', ' 4 HClO is formed in the reaction between 2 Cl and  2HO', ' 4 HClO is formed in the reaction between 2 Cl and  2HO', 'j'),
(4, ' Addition of excess aqueous ammonia to a pink coloured aqueous solution of 22 MCl .6H O (X) and 4 NH Cl gives an octahedral complex Y in the presence of air. In aqueous solution, complex Y behaves as 1:3 electrolyte. The reaction of X with excess HCl at room temperature results in the formation of a blue coloured complex Z. The calculated spin only magnetic moment of X and Z is 3.87 B.M., whereas it is zero for complex Y.  Among the following options, which statement(s) is(are) correct ? ', ' Z is a tetrahedral complex ', ' The hybridization of the central metal ion in Y is 23 d sp ', ' Addition of silver nitrate to Y gives only two equivalents of silver chloride ', ' When X and Z are in equilibrium at 0°C, the colour of the solution is pink', ' Z is a tetrahedral complex', 'jeeadvtest1'),
(5, ' An ideal gas is expanded from (p1, V1, T1) to (p2, V2, T2) under different conditions. The correct statement(s) among the following is (are) ', ' The work done on the gas is maximum when it is compressed irreversibly from (p2, V2) to (p1, V1) against constant pressure p1', 'The change in internal energy of the gas is (i) zero, if it is expanded reversibly with T1 = T2, and (ii) positive, if it is expanded reversibly under adiabatic conditions with T1!=T2', ' If the expansion is carried out freely, it is simultaneously both isothermal as well as adiabatic. ', 'The work done by the gas is less when it is expanded reversibly from V1 to V2 under  adiabatic conditions as compared to that when expanded reversibly from V1 to V2 under isothermal conditions', ' If the expansion is carried out freely, it is simultaneously both isothermal as well as adiabatic.', 'jeeadvtest1'),
(6, ' The colour of the X2 molecules of group 17 elements changes gradually from yellow to violet down the group. This is due to ', ' decrease in ionization energy down the group ', 'decrease in HOMO-LUMO gap down the group', ' decreases in  ?^* ??^*gap down the group', ' the physical state of X2 at room temperature changes from gas to solid down the group', ' decrease in ionization energy down the group', 'jeeadvtest1'),
(7, ' A crystalline solid of a pure substance has a face – centred cubic structure with a cell edge of 400 pm. If the density of the substance in the crystal is 8 g cm–3, then the number of atoms present in 256 g of the crystal is 24N 10^24 . The value of N is _________.\r\n', '1', '2', '9', '4', '4', 'jeeadvtest1'),
(8, ' Among 2 2 2 2 2 2 2 2 H , He , Li , Be , B , C ,N ,O +? and F2 , the number of diamagnetic species is  _________. (Atomic numbers  :H = 1, He = 2, Li = 3, Be = 4, B = 5, C = 6, N = 7, O = 8, F = 9)\r\n', '7', '3', '8', '5', '3', 'jeeadvtest1'),
(9, ' The sides of a right angled triangle are in arithmetic progression. If the triangle has area 24, then what is the length of its smallest side ?', '2', '1', '4', '6', '6', 'jeeadvtest1'),
(10, ' Words of length 10 are formed using the letters A, B, C, D, E, F, G, H, I, J. Let x be the number of such words where no letter is repeated; and let y be the number of such words where exactly one letter is repeated twice and no other letter is repeated. Then, y/9x =', '3', '1/2', '2/3', '5/4', '5/4', 'jeeadvtest1'),
(11, ' For how many values of p, the circle x^2+y^2+2x+2y-p=0 and the coordinate axes have exactly three common points ?', '6', '2', '1', '4', '2', 'jeeadvtest1'),
(12, ' If a chord, which is not a tangent of the parabola y^2=16x has the equation 2x - y = p, and midpoint (h, k), then which of the following is (are) possible value(s) of p, h and k ? ', 'p=-1,h=1,k=3', 'p=2,h=3,k=-4', 'p=-2,h=2,k=4', 'p=5,h=4,k=-3', 'p=2,h=3,k=-4', 'jeeadvtest1'),
(13, ' A circular coil with its plane vertical is released from rest. It enters a region of a\r\nuniform magneticfield B at time t=t1 and leaves the region at time t=t2The\r\nacceleration of the coil is ', ' Less than g for all values of t. ', ' Equal to g for all values of t. ', 'Equal to g before t=t1 and after t=t2 but less than g between t1 and t2 ', ' Less than g when it is entering the field and when it is leaving thefield. ', 'Equal to g for all values of t. ', 'jeeadvtest1'),
(14, ' A car of mass m moving along a circular track of radius r with a speed v which varies with time t as v=kt, k being a  constant Then, ', 'The instantaneous power delivered by the centripetal force is mk^3t^3/r ', 'The power delivered by the centripetal force is zero ', 'The instantaneous power delivered by the tangential force is mk^2t ', 'The power delivered by the tangential force is zero', 'The power delivered by the tangential force is zero', 'jeeadvtest1'),
(15, ' In a single slit diffraction experiment, the width of the slit is made double its original width. Then,  the central maximum of the diffraction pattern will become, ', 'narrower ', 'fainter', 'broader', ' brighter ', 'fainter', 'jeeadvtest1'),
(1, '. A tiny positively charged particle is moving head-on towards a heavy nucleus. The distance of  closest approach depends upon', 'The number of protons in the nucleus', ' The number of nucleons in the nucleus', ' The charge and velocity of the incident particle. ', 'The mass of the incident particle', ' The number of nucleons in the nucleus', 'pcmtest1'),
(2, ' A set of parallel rays are incident on the biconvex lens. If after two refractions and one reflection,  final image is formed at 15cm from the lens, then the value of x/18 is..........cm', '1', '3', '6', '7', '3', 'pcmtest1'),
(3, ' Which of the following is/are not an oxide ore (s)? ', 'malachite ', 'Argentite  ', 'pyrolusite', 'whitherite ', 'whitherite ', 'pcmtest1'),
(4, '. Hydrogen peroxide is detected by using acidified Tio2.An orange coloured compound (B) is formed.       The hage i oidatio state of Ti i this eatio is: \r\n ', '3', '4', '1', '5', '1', 'pcmtest1'),
(5, ' The line x+y+2 = 0 is a tangent to a parabola y2 = 4ax at point A, it intersect the directrix at B and  tangent at vertex at C, then (AC) ? (BC) = ', '4', '8', '12', '16', '8', 'pcmtest1'),
(6, '. Let H be a regular hexagon with two consecutive vertices (0, 0) and (1, 0). If Ci (i = 1 to 6) are the  circles having centres at the vertices of H and each circle touches its adjacent circles, then the  perimeter of the circle having maximum area which touches allCi s i =  to , is ', 'pie', '2pie', '3pie', '4pie', '3pie', 'pcmtest1'),
(7, 'The equations of a pair of opposite sides of a parallelogram are x2–5x+6 = 0 and y2–6y+5=0, then  the equation of the diagonal having positive slope is ', ' y = 4x+7 ', ' y = 4x-7 ', '4x+y = 13 ', '4x+y = 15 ', '4x+y = 15 ', 'pcmtest1'),
(8, '. The area of the region enclosed by the curves y = x log x and y = 2x–2x^2 is ', '5/12', '7/12', '1/12', 'not defined', '1/12', 'pcmtest1'),
(9, 'The differential equation y dx+y^2dy = x dy and y(1) = 1 represents a parabola whose ', 'Vertex is (0, 0)', ' axis is x = 1   ', 'length of lotus rectum is 4', 'length of lotus rectum is 4', 'Vertex is (0, 0)', 'pcmtest1'),
(10, ' If the tangent at A on the curve y=x^3meets the curve again at B and the gradient at B is K times  the gradient at A, then the value of K is ', '1/2', '4', '2', '1/4', '4', 'pcmtest1'),
(11, ' Which of the following compounds are formed by the oxidation of 3 – methyl butane 1, 2, 3 – triolwith Hlo4', 'CH3-CH3', 'CH3-CHO-CH3', ' HCOOH', ' HCHO ', ' HCOOH', 'pcmtest1'),
(12, '10. The angle of a prism is A and one of its refracting surfaces is silvered. Light rays falling at an angle of incidence 2A  on the first surface returns back through the same path after suffering reflection at the second (silvered) surface.  The refractive index of the material of the prism is', '2 sin A', '2 cos A ', '1/2cosA', 'tanA', '2 cos A ', 'pcmtest1'),
(13, '. Cv and CP denote the molar specific heat capacities of a gas at constant volume and constant pressure,  respectively. Then,', ' CP-CV is larger for a diatomic ideal gas than for a monatomic ideal gas.', ' CP+CV is larger for a diatomic ideal gas than for a monatomic ideal gas. ', ' CP/CV  is larger for a diatomic ideal gas than for a monatomic ideal ga', 'CP.CV is larger for a diatomic ideal gas than for a monatomic ideal gas', 'CP.CV is larger for a diatomic ideal gas than for a monatomic ideal gas', 'pcmtest1'),
(14, 'A bob of mass m attached to an inextensible string of length l is suspended from a vertical support. The bob rotates in a horizontal circle with an angular speed ? rad/s about the vertical. About the point of suspension : ', 'angular momentum changes in direction but not in magnitude', 'angular momentum changes both in direction and magnitude', 'angular momentum is conserved. ', 'angular momentum changes in magnitude but not in direction. ', 'angular momentum changes both in direction and magnitude', 'pcmtest1'),
(15, ' An open glass tube is immersed in mercury in such a way that a length of 8 cm extends above the mercury level. The open end of the tube is then closed and sealed and the tube is raised vertically up by additional 46 cm. What will be length of the air column above mercury in the tube now?  (Atmospheric pressure = 76 cm of Hg)  ', '22 cm', '16 cm', '6 cm', '38 cm', '22 cm', 'pcmtest1');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `select mock test` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`name`, `email`, `password`, `contact`, `select mock test`) VALUES
('MOHD ARIB CHOUDHARY', 'ARIBCHAUDHARY@GMAIL.COM', 'AREEB@12345', '7417383825', 'JEE-ADVANC'),
('ASDFGHJK', 'asdfg@sdfgh', '123', '7865322356', 'JEE-ADVANC'),
('awase', 'bhugff@kj9u', 'ihgvctrx', '789+652145', 'JEE-MAIN'),
('hgityy', 'fsaffyuwwq@23gmain', '', '456987', ''),
('ycyfyfyf', 'fytfuu@ghtyt', 'jiuuioo', '5989986456', '12th PCM'),
('huhrur', 'gy2tgutiyi@tfry', 'GHUHGUO5Y', '2135146', '12th PCM'),
('kunal', 'kg123@gmail.com', 'KG123@GMAIL,COM', '6454897', '12th PCM'),
('nishant kumar', 'KNISHANT182@GMAIL.COM', 'KNISHANT182@GMAIL.COM', '7894561230', '12th PCM'),
('pp', 'pp@dfg', 'DRRR', '2222', '12th PCM'),
('ROHAN', 'ROHAN143@GMAIL.COM', 'ROHAN143@GMAIL.COM', '9874563210', 'JEE-ADVANC'),
('sohan', 'srdtfyk@fh', 'GFCFGUIOP', '1855555555', '12th PCM'),
('waddwfrewfrfeefregehrdfgv', 'stret1231@wqr', 'EGT5YWH', '2528876869', '12th PCM'),
('ZSSsSQSAX', 'xaxass@asd', 'WFEDSF', '86766986', '12th PCM'),
('zxcvbnm', 'zxcvbn123@xscdvb', 'UGIHOJ', '784515369', '12th PCM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
