Use Master
go

Drop Database FootballLeagueDBMS
go

Create Database FootballLeagueDBMS
go

Use FootballLeagueDBMS
go

create table League
(
LeagueID int unique not null,
League_Name nvarchar(30) not null,
League_Country nvarchar(20) not null,
League_Sponsor nvarchar(20) not null,
primary key(LeagueID),
);
go

insert into [dbo].[League]
values
(101,'English Premier League','England','Barclays'),
(102,'LaLiga','Spain','Santander'),
(103,'Serie A','Italy','TIM'),
(104,'Bundesliga','Germany','SKY'),
(105,'Ligue 1','France','Uber Eats'),
(106,'Primeira Liga','Portugal','BWIN'),
(107,'Russian Premier League','Russia','KWAI'),
(108,'Eredivisie','Netherlands','QPR'),
(109,'Süper Lig','Turkey','Qatar Airways'),
(110,'Belgian Pro League','Belgium','BSB'),
(111,'Major League Soccer','USA','PUMA'),
(112,'Argentine Primera Division','Argentina','ADIDAS'),
(113,'Campeonato Brasileiro Serie A','Brazil','NIKE'),
(114,'Saudi Pro League','Saudi Arab','ROSHN'),
(115,'Bangladesh Premier League','Bangladesh','Ispahani Limited')
go

create table ClubTeam
(
TeamID int unique not null,
LeagueID int not null,
Team_Name nvarchar(30) not null,
Team_Venue nvarchar(30) not null,
Team_Sponsor nvarchar(20) not null,
primary key(TeamID),
foreign key(LeagueID) references League(LeagueID),
);
go

insert into [dbo].[ClubTeam]
values
(1001,101,'Manchester United','Old Trafford','TeamViewer'),
(1002,101,'Manchester City','Etihad','Etihad Airways'),
(1003,101,'Arsenal','Emirates Stadium','Emirates'),
(1004,101,'Liverpool','Anfield','Standard Chartered'),
(1005,101,'Chelsea','Stamford Bridge','Three'),
(1006,101,'Tottenham Hotspur','Wembly','AIA'),
(1007,102,'FC Barcelona','Camp Nue','Spotify'),
(1008,102,'Real Madrid CF','Santiago Bernabeu','Fly Emirates'),
(1009,102,'Atletico Madrid','Metropolitano Stadium','Plus 500'),
(1010,102,'Sevilla FC','Sanchez Stadium','NAGA'),
(1011,103,'Juventus','Allianz Stadium','eBay'),
(1012,103,'Inter Milan','San Siro Stadium','IRELLI'),
(1013,103,'AC Milan','San Siro','Fly Emirates'),
(1014,103,'Napoli','Maradona Stadium','Lete'),
(1015,103,'Roma','Stadio Olimpico','Qatar Airways'),
(1016,104,'FC Bayern Munich','Allianz Arena','T'),
(1017,104,'Borussia Dortmund','Signal Iduna Park','1&1'),
(1018,105,'Paris Saint-Germain','Le Parc des Princes','AII'),
(1019,105,'Monaco','Louis II Stadium','FEDCOM'),
(1020,106,'Sporting CP','José Alvalade Stadium','Betano'),
(1021,106,'FC Porto','Estádio do Dragão','MEO'),
(1022,107,'FC Zenit','Gazprom Arena','TRAILHEAD'),
(1023,108,'FC AJAX','Johan Cruijff Arena','Ziggo'),
(1024,109,'Galatasaray S.K.','Ali Sami Stadyumu','SIXT'),
(1025,109,'Beşiktaş J.K.','Vodafone Stadium','BEKO'),
(1026,110,'GENK FC','Cegeka Arena','BeBank'),
(1027,111,'Inter Miami CF','DRV PNK Stadium','XBTO'),
(1028,112,'CA Boca Juniors','Estadio Alberto J. Armando','Qatar Airways'),
(1029,112,'River Plate FC','Estadio Mâs Monumental','Turkish Airlines'),
(1030,113,'Santos FC','Urbano Caldeira Stadium','PixBet'),
(1031,114,'Al-Nassr','Al-Awwal Park','Shurfah'),
(1032,114,'Al-Ittihad','King Sport City Stadium','Noon'),
(1033,115,'Bashundhara Kings','Comilla Stadium','Bashundhara'),
(1034,115,'Abahani','Bangabandhu Stadium','Akij'),
(1035,115,'Mohammedan','Kolabagan Stadium','UAP')
go

create table NationalTeam
(
CountryID int unique not null,
CountryName nvarchar(20) not null,
primary key(CountryID),
);
go

insert into [dbo].[NationalTeam]
values
(1101,'Argentina'),
(1102,'Brazil'),
(1103,'Bangladesh'),
(1104,'Spain'),
(1105,'Germany'),
(1106,'Portugal'),
(1107,'Belgium'),
(1108,'Morocco'),
(1109,'Egypt'),
(1110,'Senegal'),
(1111,'Nigeria'),
(1112,'Palestine'),
(1113,'Turkey'),
(1114,'Korea'),
(1115,'Japan'),
(1116,'Saudi Arab'),
(1117,'France'),
(1118,'Uruguay'),
(1119,'Italy'),
(1120,'England'),
(1121,'Denmark'),
(1122,'Norway'),
(1123,'Canada'),
(1124,'Mexico'),
(1125,'Poland'),
(1126,'USA'),
(1127,'Ghana'),
(1128,'Costa Rica'),
(1129,'Switzerlad'),
(1130,'Sweden'),
(1131,'Netherland'),
(1132,'Croatia'),
(1133,'Cemeroon'),
(1134,'Serbia'),
(1135,'Wales'),
(1136,'Tunisia'),
(1137,'Qatar'),
(1138,'Ecuador'),
(1139,'Australia'),
(1140,'New Zealand')
go

create table Players
(
PlayerID int unique not null,
TeamID int not null,
LeagueID int not null,
Player_Name nvarchar(20) not null,
Player_Age int not null,
Player_Position nvarchar(20) not null,
Player_Number int not null,
NationalityID int not null,
primary key(PlayerID),
foreign key(TeamID) references ClubTeam(TeamID),
foreign key(LeagueID) references League(LeagueID),
foreign key(NationalityID) references NationalTeam(CountryID),
);
go

insert into [dbo].[Players]
values
(9901,1001,101,'De Gea',30,'GK',1,1104),
(9902,1001,101,'L. Martinez',23,'CB',17,1101),
(9903,1001,101,'B. Fernandez',25,'AMF',10,1106),
(9904,1001,101,'M. Rashford',24,'CF',7,1120),
(9905,1001,101,'H. Maguire',26,'CB',4,1120),
(9906,1002,101,'S. Aguero',33,'CF',19,1101),
(9907,1002,101,'K. De Bruine',27,'AMF',10,1107),
(9908,1002,101,'F. Foden',20,'CMF',11,1120),
(9909,1002,101,'J. Cancelo',25,'LB',2,1106),
(9910,1002,101,'E. Haaland',20,'CF',9,1122),
(9911,1003,101,'A. Ramsdale',24,'GK',1,1120),
(9912,1003,101,'W. Saliba',21,'CB',12,1117),
(9913,1003,101,'M. Odegaar',24,'AMF',8,1122),
(9914,1003,101,'B. Saka',21,'RMF',7,1120),
(9915,1003,101,'G. Jesus',25,'CF',9,1102),
(9916,1004,101,'Alisson B.',30,'GK',1,1102),
(9917,1004,101,'V. Van Dijk',31,'CB',4,1131),
(9918,1004,101,'Fabinho',29,'DMF',3,1102),
(9919,1004,101,'M. Salah',30,'RWF',11,1109),
(9920,1004,101,'R. Firmino',31,'CF',9,1102),
(9921,1005,101,'Kepa A.',28,'GK',1,1104),
(9922,1005,101,'T. Silva',38,'CB',6,1102),
(9923,1005,101,'E. Farnandez',21,'CMF',5,1101),
(9924,1005,101,'H. Ziyech',29,'AMF',22,1108),
(9925,1005,101,'J. Felix',23,'SS',11,1106),
(9926,1006,101,'H. Lloris',36,'GK',1,1117),
(9927,1006,101,'C. Romero',24,'CB',13,1101),
(9928,1006,101,'Richarlison',25,'RWF',9,1102),
(9929,1006,101,'H. Kane',29,'CF',10,1120),
(9930,1006,101,'Son Heung-Min',30,'LWF',7,1114),
(9931,1007,102,'M. Ter Stegen',30,'GK',1,1105),
(9932,1007,102,'J. Alba',33,'LB',18,1104),
(9933,1007,102,'F. De Jong',25,'CMF',21,1131),
(9934,1007,102,'O. Dembele',25,'RWF',7,1117),
(9935,1007,102,'R. Lewandowski',34,'CF',9,1125),
(9936,1008,102,'T. Courtois',30,'GK',1,1107),
(9937,1008,102,'Eder Militao',24,'CB',3,1102),
(9938,1008,102,'T. Kroos',32,'CMF',8,1105),
(9939,1008,102,'Vinicius Jr.',22,'LWF',20,1102),
(9940,1008,102,'K. Benzema',35,'CF',9,1117),
(9941,1009,102,'J. Oblak',29,'GK',1,1140),
(9942,1009,102,'J. Gimenez',27,'CB',2,1118),
(9943,1009,102,'R. De Paul',28,'CMF',5,1101),
(9944,1009,102,'A. Grizmann',31,'SS',8,1117),
(9945,1009,102,'M. Depay',28,'CF',9,1131),
(9946,1010,102,'Y. Bounou',31,'GK',13,1108),
(9947,1010,102,'M. Acuna',31,'LB',19,1101),
(9948,1010,102,'I. Rakitic',34,'CMF',10,1132),
(9949,1010,102,'Suso',29,'RWF',7,1104),
(9950,1010,102,'Y. En-Nesyri',25,'CF',15,1108),
(9951,1011,103,'W. Szczesny',32,'GK',1,1125),
(9952,1011,103,'L. Bonucci',35,'CB',19,1119),
(9953,1011,103,'P. Pogba',29,'CMF',10,1117),
(9954,1011,103,'F. Kostic',30,'LMF',17,1134),
(9955,1011,103,'F. Chiesa',25,'RWF',7,1119),
(9956,1012,103,'S. Handanovic',38,'GK',1,1140),
(9957,1012,103,'S. de Vrij',30,'CB',6,1131),
(9958,1012,103,'N. Barella',25,'GK',23,1119),
(9959,1012,103,'L. Martinez',25,'CF',10,1101),
(9960,1012,103,'R. Lukaku',29,'CF',90,1107),
(9961,1013,103,'M. Maignan',27,'GK',16,1117),
(9962,1013,103,'T. Hernandez',25,'LB',19,1117),
(9963,1013,103,'S. Tonali',22,'DMF',8,1119),
(9964,1013,103,'Rafael Leao',23,'LWF',17,1106),
(9965,1013,103,'Z. Ibrahimovic',41,'CF',11,1130),
(9966,1014,103,'A. Meret',25,'GK',1,1119),
(9967,1014,103,'K. Koulibaly',31,'CB',26,1110),
(9968,1014,103,'T. Ndombele',26,'CMF',91,1117),
(9969,1014,103,'H. Lozano',27,'RWF',11,1124),
(9970,1014,103,'V. Osimhen',24,'CF',9,1111),
(9971,1015,103,'Rui Patricio',34,'GK',1,1106),
(9972,1015,103,'G. Mancini',26,'GK',23,1119),
(9973,1015,103,'G. Wijnaldum',32,'CMF',25,1131),
(9974,1015,103,'P. Dybala',29,'SS',21,1101),
(9975,1015,103,'T. Abraham',25,'CF',9,1120),
(9976,1016,104,'M. Neuer',36,'GK',1,1105),
(9977,1016,104,'M. de Ligt',23,'CB',4,1131),
(9978,1016,104,'J. Kimmich',27,'DMF',6,1105),
(9979,1016,104,'T. Muller',33,'GK',25,1105),
(9980,1016,104,'S. Mane',30,'LWF',17,1105),
(9981,1017,104,'G. Kobel',25,'GK',1,1129),
(9982,1017,104,'M. Hummels',34,'CB',15,1105),
(9983,1017,104,'J. Bellingham',19,'CMF',22,1120),
(9984,1017,104,'J. Brandt',26,'AMF',19,1105),
(9985,1017,104,'D. Malen',23,'CF',21,1131),
(9986,1018,105,'G. Donnarumma',23,'GK',99,1119),
(9987,1018,105,'S. Ramos',36,'CB',4,1104),
(9988,1018,105,'Neymar Jr.',30,'LWF',10,1102),
(9989,1018,105,'K. Mbappe',24,'CF',7,1117),
(9990,1018,105,'L. Messi',35,'RWF',30,1101),
(9991,1019,105,'A. Nubel',26,'GK',16,1105),
(9992,1019,105,'A. Disasi',24,'CB',6,1117),
(9993,1019,105,'Y. Fofana',23,'CMF',19,1117),
(9994,1019,105,'T. Minamino',27,'LWF',18,1115),
(9995,1019,105,'W. Ben Yedder',32,'CF',10,1117),
(9996,1031,114,'C. Ronaldo',38,'CF',7,1106),
(9997,1008,102,'L. Modric',36,'CMF',10,1132),
(9998,1014,103,'C. Immobile',31,'CF',7,1119),
(9999,1007,102,'L. Suarez',35,'CMF',99,1118),
(99991,1003,101,'Jorginho',30,'CMF',5,1119)
go

create table IndividualStats
(
StatID int unique not null,
PlayerID int not null,
Matches_Played int not null,
Goals_Scored int not null,
Assists_Provided int not null,
Red_Card int not null,
Yellow_Card int not null,
Rating float(10) not null,
primary key(StatID),
foreign key(PlayerID) references Players(PlayerID),
);
go

insert into [dbo].[IndividualStats]
values
(2199901,9901,330,0,5,1,19,7.7),
(2199902,9902,224,10,11,1,40,7.2),
(2199903,9903,479,149,121,2,99,7.4),
(2199904,9904,368,127,68,1,31,7.3),
(2199905,9905,508,28,24,5,107,6.2),
(2199906,9906,685,385,119,5,70,7.6),
(2199907,9907,578,142,232,2,55,7.8),
(2199908,9908,251,80,53,1,8,7.1),
(2199909,9909,377,18,63,7,80,7.2),
(2199910,9910,228,186,44,0,22,8.7),
(2199911,9911,199,0,0,0,3,6.7),
(2199912,9912,154,4,1,1,20,6.9),
(2199913,9913,317,54,57,0,25,7.1),
(2199914,9914,228,59,57,0,23,7.2),
(2199915,9915,317,126,59,1,45,7.4),
(2199916,9916,350,1,3,1,8,7.6),
(2199917,9917,484,49,23,5,46,7.8),
(2199918,9918,479,44,32,0,108,7.4),
(2199919,9919,552,262,127,1,20,8.1),
(2199920,9920,551,166,115,0,47,7.3),
(2199921,9921,323,0,0,1,21,6.8),
(2199922,9922,627,37,16,0,61,8.2),
(2199923,9923,133,18,21,1,22,7.6),
(2199924,9924,449,125,135,0,52,7.7),
(2199925,9925,234,70,35,1,35,7.8),
(2199926,9926,728,0,0,3,9,7.5),
(2199927,9927,188,7,9,6,65,7.7),
(2199928,9928,294,81,34,3,44,7.4),
(2199929,9929,510,302,80,1,46,8.1),
(2199930,9930,566,210,93,4,27,7.9),
(2199931,9931,571,0,0,0,18,7.7),
(2199932,9932,602,37,107,4,134,7.8),
(2199933,9933,345,35,45,2,25,7.6),
(2199934,9934,259,62,68,1,30,7.4),
(2199935,9935,717,538,142,3,71,8.6),
(2199936,9936,575,0,0,3,19,7.9),
(2199937,9937,220,19,9,3,34,7.6),
(2199938,9938,697,72,155,2,91,8.6),
(2199939,9939,273,72,68,1,43,8.1),
(2199940,9940,790,418,192,0,17,8.9),
(2199941,9941,503,0,0,2,17,7.6),
(2199942,9942,297,12,10,1,74,7.5),
(2199943,9943,382,50,55,5,61,7.9),
(2199944,9944,640,242,107,2,81,8.2),
(2199945,9945,428,163,96,1,33,7.8),
(2199946,9946,314,1,0,0,20,7.6),
(2199947,9947,379,34,62,9,97,7.7),
(2199948,9948,805,120,131,5,89,7.9),
(2199949,9949,386,52,71,6,38,7.2),
(2199950,9950,243,72,9,2,24,7.4),
(2199951,9951,507,0,0,2,20,7.3),
(2199952,9952,661,45,12,4,113,7.4),
(2199953,9953,441,76,98,4,72,7.4),
(2199954,9954,479,78,113,3,59,7.2),
(2199955,9955,280,65,47,3,45,7.3),
(2199956,9956,716,0,0,5,39,7.2),
(2199957,9957,470,25,15,3,52,7.4),
(2199958,9958,348,30,50,7,90,7.6),
(2199959,9959,291,124,39,2,52,7.7),
(2199960,9960,591,283,92,2,45,7.9),
(2199961,9961,248,0,0,1,9,7.5),
(2199962,9962,260,28,38,7,62,7.6),
(2199963,9963,266,25,30,1,56,7.4),
(2199964,9964,212,63,41,1,21,7.6),
(2199965,9965,819,493,201,15,126,8.1),
(2199966,9966,225,0,0,1,3,7.1),
(2199967,9967,486,20,14,8,122,7.8),
(2199968,9968,277,19,35,1,29,7.2),
(2199969,9969,382,113,71,8,51,7.6),
(2199970,9970,186,93,24,2,24,7.9),
(2199971,9971,693,0,0,3,37,7.3),
(2199972,9972,303,19,8,7,94,6.8),
(2199973,9973,622,121,60,0,28,7.8),
(2199974,9974,439,161,72,1,36,7.9),
(2199975,9975,365,161,44,0,23,7.5),
(2199976,9976,747,0,0,0,22,8.3),
(2199977,9977,335,32,12,1,41,7.8),
(2199978,9978,457,51,110,2,70,8.1),
(2199979,9979,750,276,260,2,41,8.3),
(2199980,9980,489,204,100,7,71,8.2),
(2199981,9981,240,0,0,0,1,7.0),
(2199982,9982,657,55,31,3,84,7.9),
(2199983,9983,175,25,27,1,40,7.7),
(2199984,9984,448,107,108,0,8,7.8),
(2199985,9985,268,105,48,0,19,7.6),
(2199986,9986,328,0,0,3,29,7.9),
(2199987,9987,769,109,41,28,246,8.3),
(2199988,9988,493,293,188,9,141,9.3),
(2199989,9989,320,238,115,3,40,9.1),
(2199990,9990,1023,805,356,2,86,9.5),
(2199991,9991,206,0,0,2,5,6.8),
(2199992,9992,218,17,4,2,20,7.1),
(2199993,9993,176,7,11,4,22,7.3),
(2199994,9994,371,98,59,2,24,7.4),
(2199995,9995,476,237,76,1,27,7.9),
(2199996,9996,1163,835,236,11,121,9.4),
(2199997,9997,713,76,123,2,95,8.4),
(2199998,9998,545,316,71,4,77,7.9),
(2199999,9999,733,453,248,2,157,8.7),
(21999991,99991,515,47,30,2,84,7.8)
go

create table Referee
(
RefereeID int unique not null,
LeagueID int not null,
Referee_Name nvarchar(20) not null,
Referee_Age int not null,
Total_Matches int not null,
Referee_Nationality nvarchar(20) not null,
primary key(RefereeID),
foreign key(LeagueID) references League(LeagueID),
);
go

insert into [dbo].[Referee]
values
(3331,101,'Paul String',40,35,'England'),
(3332,101,'Henry',50,55,'England'),
(3333,101,'Thomas',47,43,'England'),
(3334,102,'Pau Torres',41,29,'Spain'),
(3335,102,'Gerard Romero',49,25,'Spain'),
(3336,103,'Fabrizo',54,65,'Italy'),
(3337,103,'Romano',43,15,'Italy'),
(3338,104,'Hitler',46,31,'Germany'),
(3339,104,'Rumminigue',60,75,'Germany'),
(3340,105,'K. String',48,18,'England'),
(3341,105,'T. Henry',50,47,'England'),
(3342,106,'Dallot',47,33,'Portugal'),
(3343,106,'N. Mendes',41,19,'Portugal'),
(3344,107,'Vlademir',59,49,'Russia'),
(3345,107,'Putin',44,55,'Russia'),
(3346,108,'De jong',43,27,'Netherland'),
(3347,109,'Tayef',54,39,'Turkey'),
(3348,109,'Bilsic',50,52,'Turkey'),
(3349,110,'P. Hazard',57,79,'England'),
(3350,111,'J. Paul',50,41,'USA'),
(3351,112,'Sergio',47,33,'England'),
(3352,113,'Vini Pele',51,42,'Brazil'),
(3353,114,'S. Mansoor',49,32,'Saudi Arab'),
(3354,115,'GM. Kamal',44,25,'Bangladesh'),
(3355,115,'AK. Monir',43,15,'Bangladesh'),
(3356,115,'DK. Jahid',40,22,'Bangladesh')
go

create table Match_Schedule
(
MatchID int unique not null,
LeagueID int not null,
TeamID int not null,
Opponent_TeamID int not null,
Match_Date date not null,
Match_Venue nvarchar(30) not null,
Match_RefereeID int not null,
primary key(MatchID),
foreign key(LeagueID) references League(LeagueID),
foreign key(TeamID) references ClubTeam(TeamID),
foreign key(Opponent_TeamID) references ClubTeam(TeamID),
foreign key(Match_RefereeID) references Referee(RefereeID),
);
go

insert into [dbo].[Match_Schedule]
values
(9101111,101,1001,1002,'2022-07-01','Etihad',3331),
(9101112,101,1003,1004,'2022-07-03','Anfield',3332),
(9101113,101,1005,1006,'2022-07-05','Wembly',3333),
(9101114,101,1001,1003,'2022-07-07','Old Trafford',3331),
(9101115,101,1002,1005,'2022-07-09','Stamford Bridge',3332),
(9102111,102,1007,1008,'2022-07-01','Camp Nue',3334),
(9102112,102,1009,1010,'2022-07-03','Metropolitano Stadium',3335),
(9102113,102,1007,1010,'2022-07-05','Sanchez Stadium',3334),
(9102114,102,1008,1009,'2022-07-07','Santiago Bernabeu',3335),
(9102115,102,1007,1009,'2022-07-09','Camp Nue',3334),
(9103111,103,1011,1014,'2022-07-11','Allianz Stadium',3336),
(9103112,103,1014,1013,'2022-07-13','Maradona Stadium',3337),
(9103113,103,1012,1013,'2022-07-15','San Siro',3336),
(9103114,103,1011,1015,'2022-07-17','Stadio Olimpico',3337),
(9103115,103,1015,1012,'2022-07-19','San Siro Stadium',3336),
(9104111,104,1016,1017,'2022-07-21','Allianz Areana',3338),
(9104112,104,1017,1016,'2022-07-25','Signal Iduna Park',3339),
(9105111,105,1018,1019,'2022-07-23','Le Parc des Princes',3341),
(9105112,105,1019,1018,'2022-07-27','Louis II Stadium',3340),
(9106111,106,1020,1021,'2022-07-23','José Alvalade Stadium',3343),
(9106112,106,1021,1020,'2022-07-25','Estádio do Dragão',3342),
(9109111,109,1024,1025,'2022-07-29','Ali Sami Stadyumu',3347),
(9109112,109,1025,1024,'2022-07-31','Vodafone Stadium',3348),
(9112111,112,1028,1029,'2022-07-29','Estadio Alberto J. Armando',3351),
(9112112,112,1029,1028,'2022-07-31','Estadio Mâs Monumental',3351),
(9114111,114,1031,1032,'2022-08-02','Al-Awwal Park',3353),
(9114112,114,1032,1031,'2022-08-04','King Sport City Stadium',3353),
(9115111,115,1033,1034,'2022-08-06','Comilla Stadium',3356),
(9115112,115,1034,1035,'2022-08-08','Bangabandhu Stadium',3355),
(9115113,115,1035,1033,'2022-08-10','Kolabagan Stadium',3354)
go

create table TransferMarket
(
TransferID int unique not null,
PlayerID int not null,
TransferValue int not null,
primary key(TransferID),
foreign key(PlayerID) references Players(PlayerID),
);
go

insert into [dbo].[TransferMarket]
values
(199901,9901,'10'),
(199902,9902,'80'),
(199903,9903,'70'),
(199904,9904,'100'),
(199905,9905,'50'),
(199906,9906,'20'),
(199907,9907,'60'),
(199908,9908,'80'),
(199909,9909,'45'),
(199910,9910,'180'),
(199911,9911,'15'),
(199912,9912,'10'),
(199913,9913,'80'),
(199914,9914,'90'),
(199915,9915,'40'),
(199916,9916,'50'),
(199917,9917,'90'),
(199918,9918,'50'),
(199919,9919,'90'),
(199920,9920,'20'),
(199921,9921,'15'),
(199922,9922,'5'),
(199923,9923,'120'),
(199924,9924,'90'),
(199925,9925,'80'),
(199926,9926,'10'),
(199927,9927,'70'),
(199928,9928,'20'),
(199929,9929,'70'),
(199930,9930,'80'),
(199931,9931,'40'),
(199932,9932,'5'),
(199933,9933,'70'),
(199934,9934,'60'),
(199935,9935,'50'),
(199936,9936,'45'),
(199937,9937,'55'),
(199938,9938,'10'),
(199939,9939,'120'),
(199940,9940,'40'),
(199941,9941,'45'),
(199942,9942,'30'),
(199943,9943,'50'),
(199944,9944,'45'),
(199945,9945,'25'),
(199946,9946,'65'),
(199947,9947,'20'),
(199948,9948,'25'),
(199949,9949,'10'),
(199950,9950,'20'),
(199951,9951,'15'),
(199952,9952,'5'),
(199953,9953,'35'),
(199954,9954,'15'),
(199955,9955,'75'),
(199956,9956,'5'),
(199957,9957,'35'),
(199958,9958,'25'),
(199959,9959,'55'),
(199960,9960,'35'),
(199961,9961,'10'),
(199962,9962,'30'),
(199963,9963,'15'),
(199964,9964,'60'),
(199965,9965,'5'),
(199966,9966,'20'),
(199967,9967,'30'),
(199968,9968,'15'),
(199969,9969,'25'),
(199970,9970,'90'),
(199971,9971,'10'),
(199972,9972,'15'),
(199973,9973,'25'),
(199974,9974,'45'),
(199975,9975,'40'),
(199976,9976,'20'),
(199977,9977,'50'),
(199978,9978,'30'),
(199979,9979,'20'),
(199980,9980,'60'),
(199981,9981,'10'),
(199982,9982,'15'),
(199983,9983,'110'),
(199984,9984,'15'),
(199985,9985,'20'),
(199986,9986,'40'),
(199987,9987,'10'),
(199988,9988,'70'),
(199989,9989,'190'),
(199990,9990,'60'),
(199991,9991,'15'),
(199992,9992,'15'),
(199993,9993,'10'),
(199994,9994,'30'),
(199995,9995,'15'),
(199996,9996,'10'),
(199997,9997,'15'),
(199998,9998,'25'),
(199999,9999,'5'),
(1999991,99991,'35')
go

create table Coach
(
CoachID int unique not null,
TeamID int not null,
Coach_Name nvarchar(20) not null,
Coach_Age int not null,
Coach_Nationality nvarchar(20) not null,
primary key(CoachID),
foreign key(TeamID) references ClubTeam(TeamID),
);
go

insert into [dbo].[Coach]
values
(9001,1001,'E. Ten Hag',53,'Netherland'),
(9002,1002,'Pep Gurdiola',52,'Spain'),
(9003,1003,'M. Arteta',41,'Spain'),
(9004,1004,'J. Kloop',55,'Germany'),
(9005,1005,'F. Lampard',44,'England'),
(9006,1006,'A. Conte',53,'Italy'),
(9007,1007,'Xavi',43,'Spain'),
(9008,1008,'C. Ancelotti',63,'Italy'),
(9009,1009,'D. Simeone',53,'Argentina'),
(9010,1010,'J, Lopetegui',56,'Spain'),
(9011,1011,'M. Allegri',55,'Italy'),
(9012,1012,'S. Inzaghi',47,'Italy'),
(9013,1013,'S. Pioli',57,'Italy'),
(9014,1014,'L. Spalletti',64,'Italy'),
(9015,1015,'J. Mourinho',60,'Portugal'),
(9016,1016,'T. Tuchel',49,'Germany'),
(9017,1017,'E. Terzic',40,'Germany'),
(9018,1018,'C. Galtier',56,'France'),
(9019,1019,'P. Clement',49,'Belgium'),
(9020,1020,'R. Amorim',38,'Portugal'),
(9021,1021,'S. Conceicao',48,'Portugal'),
(9022,1022,'S. Semak',47,'Russia'),
(9023,1023,'J. Heitinga',39,'Netherland'),
(9024,1024,'O. Buruk',49,'Turkey'),
(9025,1020,'S. Gunes',70,'Turkey'),
(9026,1026,'W. Vrancken',44,'Belgium'),
(9027,1027,'P. Neville',46,'England'),
(9028,1028,'J. Almiron',51,'Argentina'),
(9029,1029,'M. Demichelis',42,'Argentina'),
(9030,1030,'O. Hellmann',46,'Brazil'),
(9031,1031,'R. Gercia',59,'France'),
(9032,1032,'Nuno',49,'Portugal'),
(9033,1033,'O. Bruzon',45,'Spain'),
(9034,1034,'M. Lemos',36,'Portugal'),
(9035,1035,'Alfaz Ahmed',49,'Bangladesh')
go

create table IndividualAward
(
AwardID int not null,
PlayerID int not null,
Award_Name nvarchar(20) not null,
Awarded_Year int not null,
primary key(AwardID,Awarded_Year),
foreign key(PlayerID) references Players(PlayerID),
);
go

insert into [dbo].[IndividualAward]
values
(7911,9996,'Ballon D Or',2008),
(7911,9990,'Ballon D Or',2009),
(7911,9990,'Ballon D Or',2010),
(7911,9990,'Ballon D Or',2011),
(7911,9990,'Ballon D Or',2012),
(7911,9996,'Ballon D Or',2013),
(7911,9996,'Ballon D Or',2014),
(7911,9990,'Ballon D Or',2015),
(7911,9996,'Ballon D Or',2016),
(7911,9996,'Ballon D Or',2017),
(7911,9997,'Ballon D Or',2018),
(7911,9990,'Ballon D Or',2019),
(7911,9935,'Ballon D Or',2020),
(7911,9990,'Ballon D Or',2021),
(7911,9940,'Ballon D Or',2022),
(7912,9996,'FIFA The Best',2016),
(7912,9996,'FIFA The Best',2017),
(7912,9997,'FIFA The Best',2018),
(7912,9990,'FIFA The Best',2019),
(7912,9935,'FIFA The Best',2020),
(7912,9935,'FIFA The Best',2021),
(7912,9990,'FIFA The Best',2022),
(7913,9996,'Golden Shoe',2007),
(7913,9996,'Golden Shoe',2008),
(7913,9990,'Golden Shoe',2009),
(7913,9996,'Golden Shoe',2010),
(7913,9990,'Golden Shoe',2011),
(7913,9990,'Golden Shoe',2012),
(7913,9999,'Golden Shoe',2013),
(7913,9996,'Golden Shoe',2014),
(7913,9999,'Golden Shoe',2015),
(7913,9990,'Golden Shoe',2016),
(7913,9990,'Golden Shoe',2017),
(7913,9990,'Golden Shoe',2018),
(7913,9990,'Golden Shoe',2019),
(7913,9998,'Golden Shoe',2020),
(7913,9935,'Golden Shoe',2021),
(7913,9935,'Golden Shoe',2022),
(7913,9910,'Golden Shoe',2023),
(7914,9990,'FIFA Golden Ball',2014),
(7914,9997,'FIFA Golden Ball',2018),
(7914,9990,'FIFA Golden Ball',2022),
(7915,9990,'UEFA Best Player',2011),
(7915,9996,'UEFA Best Player',2014),
(7915,9990,'UEFA Best Player',2015),
(7915,9996,'UEFA Best Player',2016),
(7915,9996,'UEFA Best Player',2017),
(7915,9997,'UEFA Best Player',2018),
(7915,9917,'UEFA Best Player',2019),
(7915,9935,'UEFA Best Player',2020),
(7915,99991,'UEFA Best Player',2021),
(7915,9940,'UEFA Best Player',2022)
go

create table ClubAchievement
(
TrophyID int not null,
TeamID int not null,
Trophy_Name nvarchar(30) not null,
Season_Year int not null,
primary key(TrophyID,Season_Year),
foreign key(TeamID) references ClubTeam(TeamID),
);
go

insert into [dbo].[ClubAchievement]
values
(37911,1002,'EPL Champions',2022),
(37911,1002,'EPL Champions',2021),
(37911,1004,'EPL Champions',2020),
(37911,1002,'EPL Champions',2019),
(37911,1002,'EPL Champions',2018),
(37912,1008,'LaLiga Champions',2022),
(37912,1009,'LaLiga Champions',2021),
(37912,1008,'LaLiga Champions',2020),
(37912,1007,'LaLiga Champions',2019),
(37912,1007,'LaLiga Champions',2018),
(37913,1013,'Serie A Champions',2022),
(37913,1012,'Serie A Champions',2021),
(37913,1011,'Serie A Champions',2020),
(37913,1011,'Serie A Champions',2019),
(37913,1011,'Serie A Champions',2018),
(37914,1016,'Bundesliga Champions',2022),
(37914,1016,'Bundesliga Champions',2021),
(37914,1016,'Bundesliga Champions',2020),
(37914,1016,'Bundesliga Champions',2019),
(37914,1016,'Bundesliga Champions',2018),
(37915,1018,'Ligue 1 Champions',2022),
(37915,1019,'Ligue 1 Champions',2021),
(37915,1018,'Ligue 1 Champions',2020),
(37915,1018,'Ligue 1 Champions',2019),
(37915,1018,'Ligue 1 Champions',2018),
(37916,1008,'UEFA Champions League Winner',2022),
(37916,1005,'UEFA Champions League Winner',2021),
(37916,1016,'UEFA Champions League Winner',2020),
(37916,1004,'UEFA Champions League Winner',2019),
(37916,1008,'UEFA Champions League Winner',2018)
go

create table Supporters
(
SupporterID int unique not null,
Supporter_Name nvarchar(20) not null,
Mobile int unique not null,
S_Address nvarchar(20) not null,
primary key(SupporterID),
);
go

insert into [dbo].[Supporters]
values
(5501,'Injamul Navid',01213456780,'Dhaka'),
(5502,'Zannatul Ferdous',01213456781,'Pabna'),
(5503,'Tarqib Amir',01213456782,'Dhaka'),
(5504,'Shahriar Prangon',01213456783,'Rangpur'),
(5506,'Ahsan Habib',01213456784,'Comilla'),
(5507,'Khadijatul Kobra',01213456785,'Narayanganj'),
(5508,'Shamsun Nahar',01213456786,'Comilla'),
(5510,'Anjina Islam',01213456787,'Dhaka'),
(5511,'Jubeair Hossen',01213456788,'Dhaka'),
(5512,'Samia Alam',01213456789,'Dhaka'),
(5513,'Naimur Niloy',01313456780,'Dhaka'),
(5514,'Afran Riya',01313456781,'Dhaka'),
(5515,'Redwana Momo',01313456782,'Brahmanbaria'),
(5517,'Mostasim Leon',01313456783,'Rangpur'),
(5518,'Tamzid Hasan',01313456784,'Dhaka'),
(5519,'Waliullah',01313456785,'Joypurhat'),
(5520,'Fahim Montasir',01313456786,'Joypurhat'),
(5521,'Minhaj Jim',01313456787,'Dhaka'),
(5522,'Md. Hossain',01313456788,'Barishal'),
(5523,'Raita Shikdar',01313456789,'Dhaka'),
(5526,'Shartaz Ahmed',01413456780,'Dhaka'),
(5527,'Nawrin Rahman',01413456781,'Gopalganj'),
(5528,'Rimjhim Akter',01413456782,'Bogura'),
(5529,'Nahid Hasan',01413456783,'Comilla'),
(5531,'Khandakar Mahedi',01413456784,'Pabna'),
(5532,'Ayon Ghosh',01413456785,'Narayanganj'),
(5533,'Md. Bijoy',01413456786,'Dhaka'),
(5534,'Mahfuja Akter',01413456787,'Chittagong'),
(5535,'Faisal Al Quryshe',01413456788,'Thakurga'),
(5538,'Tasrif Haque',01413456789,'Dhaka'),
(5539,'Fazle Rabbi',01513456780,'Dhaka'),
(5540,'Abu Zafar',01513456781,'Comilla'),
(5541,'Jahid Hasan',01513456782,'Comilla'),
(5542,'Sakib Hossain',01513456783,'Brahmanbaria'),
(5543,'Nafis Arafat',01513456784,'Dhaka'),
(5544,'Al Mahmud Nayeem',01513456785,'Munshiganj'),
(5545,'Basirul Hasin',01513456786,'Thakurga'),
(5546,'Nusrat Laila',01513456787,'Dhaka'),
(5569,'Tasnim Jahin',01513456788,'Dhaka')
go

create table Match_Ticket
(
TicketID int unique not null,
MatchID int not null,
SupporterID int not null,
Ticket_Type nvarchar(20) not null,
primary key(TicketID),
foreign key(MatchID) references Match_Schedule(MatchID),
foreign key(SupporterID) references Supporters(SupporterID),
);
go

insert into [dbo].[Match_Ticket]
values
(8765,9101111,5501,'Category 1'),
(8766,9101112,5503,'Category 2'),
(8767,9101113,5501,'Category 1'),
(8768,9101114,5502,'Category 3'),
(8769,9101115,5506,'Category 4'),
(8770,9101111,5528,'Category 1'),
(8771,9101112,5527,'Category 2'),
(8772,9101113,5541,'Category 1'),
(8773,9101114,5542,'Category 3'),
(8774,9101115,5519,'Category 4'),
(8775,9101111,5521,'Category 1')
go


select * from [dbo].[League]
select * from [dbo].[ClubTeam]
select * from [dbo].[NationalTeam]
select * from [dbo].[Referee]
select * from [dbo].[Players]
select * from [dbo].[Coach]
select * from [dbo].[IndividualAward]
select * from [dbo].[Supporters]
select * from [dbo].[TransferMarket]
select * from [dbo].[IndividualStats]
select * from [dbo].[Match_Schedule]
select * from [dbo].[ClubAchievement]
go
go

--Find the Player names and their National Team names of all players who have been playing for FC Barcelona
select Player_Name, CountryName,Team_Name from [dbo].[Players],[dbo].[NationalTeam],[dbo].[ClubTeam]
where [dbo].[Players].NationalityID = [dbo].[NationalTeam].CountryID
and [dbo].[ClubTeam].TeamID = [dbo].[Players].TeamID 
and [dbo].[ClubTeam].Team_Name = 'FC Barcelona'

--Find the players whom and how many times they have won an individual awards
select Player_Name,count([dbo].[IndividualAward].PlayerID) from [dbo].[Players],[dbo].[IndividualAward]
where [dbo].[Players].PlayerID = [dbo].[IndividualAward].PlayerID group by (Player_Name)

--Find out who is the from the matches of 'FC Barcelona'
select distinct(Referee_Name) from [dbo].[Referee],[dbo].[Match_Schedule],[dbo].[ClubTeam]
where [dbo].[Referee].RefereeID = [dbo].[Match_Schedule].Match_RefereeID
and  [dbo].[ClubTeam].TeamID = [dbo].[Match_Schedule].TeamID
and [dbo].[ClubTeam].Team_Name = 'FC Barcelona'

--Find the Player's Name and Their Position who have taught by the Coach name 'Pep Gurdiola'
select Player_Name,Player_Position from [dbo].[Players],[dbo].[Coach]
where [dbo].[Coach].TeamID = [dbo].[Players].TeamID and
[dbo].[Coach].Coach_Name = 'Pep Gurdiola'

--Find the Players and how many time they have won the individual award named 'Ballon D Or' in descending order
(select Player_Name,count(AwardID) from [dbo].[Players],[dbo].[IndividualAward]
where [dbo].[Players].PlayerID = [dbo].[IndividualAward].PlayerID
and [dbo].[IndividualAward].Award_Name = 'Ballon D Or' group by
(Player_Name))order by count(AwardID) desc

--6. Find out the names and rating of Players with rating >= 9 in descending order
(select Player_Name,Rating from [dbo].[Players],[dbo].[IndividualStats] where 
[dbo].[Players].PlayerID = [dbo].[IndividualStats].PlayerID and
[dbo].[IndividualStats].Rating >= 9) order by [dbo].[IndividualStats].Rating desc


--7 Find the names and the average Transfer Values of all Club Teams whose player's average Transfer Value is greater than $50M
select [dbo].[ClubTeam].Team_Name,avg([dbo].[TransferMarket].TransferValue) as avg_TransferValue
from [dbo].[ClubTeam],[dbo].[TransferMarket],[dbo].[Players]
where [dbo].[ClubTeam].TeamID = [dbo].[Players].TeamID and
[dbo].[Players].PlayerID = [dbo].[TransferMarket].PlayerID
group by([dbo].[ClubTeam].Team_Name) having avg([dbo].[TransferMarket].TransferValue)>50

--8 Find out the maximum and minimum transfer value
select max([dbo].[TransferMarket].TransferValue) as Maximum_TranferValue from 
[dbo].[Players],[dbo].[TransferMarket]
select min([dbo].[TransferMarket].TransferValue) as Minimum_TransferValue from 
[dbo].[Players],[dbo].[TransferMarket]

--9 Find the names and their Club's Name of all Players with Transfer Value between $70 and $120 M
select [dbo].[Players].Player_Name,[dbo].[ClubTeam].Team_Name,.[TransferMarket].TransferValue
from [dbo].[TransferMarket],[dbo].[Players],[dbo].[ClubTeam]
where [dbo].[Players].PlayerID = [dbo].[TransferMarket].PlayerID
and [dbo].[ClubTeam].TeamID = [dbo].[Players].TeamID and
[dbo].[TransferMarket].TransferValue between 70 and 120

--10 Find out the names,mobile and address of supporters from 'Brahmanbaria' or 'Comilla'
select [dbo].[Supporters].Supporter_Name,[dbo].[Supporters].Mobile,[dbo].[Supporters].S_Address
from [dbo].[Supporters] where [dbo].[Supporters].S_Address = 'Brahmanbaria' or 
[dbo].[Supporters].S_Address = 'Comilla' order by ([dbo].[Supporters].SupporterID)

--11 Find out the Names,ages of Coaches and their nationality who is from 'England'
select [dbo].[Coach].Coach_Name,[dbo].[Coach].Coach_Nationality,[dbo].[Coach].Coach_Age
from [dbo].[Coach] where [dbo].[Coach].Coach_Nationality = 'England'


--12 Find the Clubs and how many time they have won the Trophy named 'EPL Champions' in descending order
(select [dbo].[ClubTeam].Team_Name,count([dbo].[ClubAchievement].TrophyID)
from [dbo].[ClubTeam],[dbo].[ClubAchievement] where [dbo].[ClubTeam].TeamID = [dbo].[ClubAchievement].TeamID
and [dbo].[ClubAchievement].Trophy_Name = 'EPL Champions' group by
([dbo].[ClubTeam].Team_Name))order by count([dbo].[ClubAchievement].TrophyID) desc

--13 Find out the Clubs and their Sponsors who are playing in 'English Premier League'
select [dbo].[ClubTeam].Team_Name,[dbo].[ClubTeam].Team_Sponsor from [dbo].[ClubTeam],[dbo].[League]
where [dbo].[ClubTeam].[LeagueID] = [dbo].[League].LeagueID and
[League].League_Name = 'English Premier League'

--14 Find the Players with 800+ goals
select [dbo].[Players].Player_Name,[dbo].[IndividualStats].Goals_Scored
from [dbo].[Players],[dbo].[IndividualStats]
where [dbo].[Players].PlayerID = [dbo].[IndividualStats].PlayerID and
[dbo].[IndividualStats].Goals_Scored > 800

--15 Find the Players with 700+ Goals and 200+ Assists and the number of matches they played and their clubs
select [dbo].[Players].Player_Name,[dbo].[ClubTeam].Team_Name,[dbo].[IndividualStats].Matches_Played,
[dbo].[IndividualStats].Goals_Scored,[dbo].[IndividualStats].Assists_Provided 
from [dbo].[Players],[dbo].[IndividualStats],[dbo].[ClubTeam]
where [dbo].[Players].PlayerID = [dbo].[IndividualStats].PlayerID and
[dbo].[ClubTeam].TeamID = [dbo].[Players].TeamID and
[dbo].[IndividualStats].Goals_Scored > 800 and [dbo].[IndividualStats].Goals_Scored > 200
