/*
drop TABLE Ability;
drop TABLE AffiliTAB;
drop TABLE CanDo;
drop TABLE FightResult;
drop TABLE HasEarnedMedal;
drop TABLE Hero;
drop TABLE HeroRank;
drop TABLE Hero_schedule;
drop TABLE MedalHonors;
drop TABLE PowerStats;
drop TABLE Sche;
drop TABLE users;
drop TABLE FightSchedule;
drop TABLE HeroDobAge;
*/

DROP DATABASE Hero_Database;

create database if not exists Hero_Database;


use Hero_Database;

drop TABLE if exists Ability;
drop TABLE if exists AffiliTAB;
drop TABLE if exists CanDo;
drop TABLE if exists FightResult;
drop TABLE if exists HasEarnedMedal;
drop TABLE if exists Hero;
drop TABLE if exists HeroRank;
drop TABLE if exists Hero_schedule;
drop TABLE if exists MedalHonors;
drop TABLE if exists PowerStats;
drop TABLE if exists Sche;
drop TABLE if exists users;
drop TABLE if exists FightSchedule;
drop TABLE if exists HeroDobAge;

CREATE TABLE Ability (
  ability_ID integer PRIMARY KEY,
  abilityName varchar(50) DEFAULT NULL
);


 INSERT INTO Ability (ability_ID, abilityName) VALUES (0, 'Immeasurable Physical Prowess');
 INSERT INTO Ability (ability_ID, abilityName) VALUES (1, 'Supernatural Reflexes and Senses');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(2, 'Enhanced Fighting Skill');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(3, 'Full Cyborg Weaponry');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(4, 'Extreme Luck');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(5, 'Psychokinesis');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(6, 'Superhuman Physical Prowess');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(7, 'Invulnerability');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(8, 'Indomitable Will');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(9, 'Master Combatant');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(10, 'Highly Skilled and Strategist Combatant');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(11, 'Water Stream Rock Smashing Fist');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(12, 'Mastered Swordsmanship');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(13, 'Backpack');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(14, 'Remote Robot');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(15, 'Master Gamer');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(16, 'Regeneration');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(17, 'Inhuman Digestive System');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(18, 'Superhuman Speed and Agility');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(19, 'Fighting Spirit');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(20, 'Immense Strength');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(21, 'Immense Speed');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(22, 'Puri-Puri prisoner Angel');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(23, 'Immense Speed and Reflexes');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(24, 'Mental Resistance');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(25, 'Immense Endurance');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(26, 'Enhanced Senses');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(27, 'Spear Techniques');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(28, 'Enhanced Speed');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(29, 'Enhanced Agility');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(30, 'Enhanced Strength');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(31, 'Lighting Kick');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(32, 'Round House Kick');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(33, 'Superhuman Speed');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(34, 'Sharpshooting');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(35, 'Swordmanship');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(36, 'Enhanced Durability');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(37, 'Pain Supression');
 INSERT INTO Ability (ability_ID, abilityName) VALUES(38, 'Impressive Voice');


CREATE TABLE AffiliTAB (
  Aff_ID varchar(30) PRIMARY KEY,
  Affliliation varchar(30) NOT NULL
);


 INSERT INTO AffiliTAB (Aff_ID, Affliliation) VALUES ('Blizzard Group', 'Blizzard Group');
 INSERT INTO AffiliTAB (Aff_ID, Affliliation) VALUES ('Council of Swordmasters', 'Council of Swordmasters');
 INSERT INTO AffiliTAB (Aff_ID, Affliliation) VALUES ('Hero Association', 'Hero Association');
 INSERT INTO AffiliTAB (Aff_ID, Affliliation) VALUES ('House of Evolution', 'House of Evolution');
 INSERT INTO AffiliTAB (Aff_ID, Affliliation) VALUES ('Saitama Group', 'Saitama Group');
 INSERT INTO AffiliTAB (Aff_ID, Affliliation) VALUES ('Tank Topper Army', 'tank Topper Army');


CREATE TABLE Sche (
  schedule_ID integer Primary KEY,
  sDate date NOT NULL
);

 INSERT INTO Sche (schedule_ID, sDate) VALUES (0, '2013-09-04');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (1, '2016-04-23');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (2, '2011-01-05');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (3, '2013-07-08');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (4, '2013-09-04');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (5, '2000-12-12');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (6, '2011-04-06');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (7, '2019-01-31');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (8, '2018-08-04');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (9, '2018-07-06');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (10, '2005-04-30');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (11, '2006-09-29');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (12, '2009-04-08');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (13, '2008-04-15');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (14, '2010-10-10');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (15, '2011-11-07');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (16, '2012-12-09');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (17, '2013-06-08');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (18, '2019-06-06');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (19, '2015-05-22');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (20, '2016-09-03');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (21, '2013-09-08');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (22, '2017-10-07');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (23, '2014-12-09');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (24, '2013-10-09');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (25, '2011-11-23');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (26, '2009-05-08');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (27, '2008-09-03');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (28, '2008-04-07');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (29, '2007-06-27');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (30, '2000-05-03');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (31, '2012-07-08');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (32, '2011-12-14');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (33, '2019-06-25');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (34, '2019-07-22');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (35, '2019-07-06');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (36, '2019-06-21');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (37, '2019-07-10');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (38, '2019-07-29');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (39, '2019-07-21');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (40, '2019-06-22');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (41, '2019-07-15');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (42, '2019-07-20');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (43, '2019-07-16');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (44, '2019-06-27');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (45, '2019-06-23');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (46, '2019-07-27');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (47, '2019-07-18');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (48, '2019-07-13');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (49, '2019-06-19');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (50, '2019-06-24');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (51, '2019-07-28');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (52, '2019-07-07');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (53, '2019-07-19');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (54, '2019-07-23');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (55, '2019-06-28');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (56, '2019-07-02');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (57, '2019-06-29');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (58, '2019-07-09');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (59, '2019-07-17');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (60, '2019-06-17');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (61, '2019-07-25');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (62, '2019-07-08');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (63, '2019-06-18');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (64, '2019-07-26');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (65, '2019-07-05');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (66, '2019-07-04');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (67, '2019-07-03');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (68, '2019-07-01');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (69, '2019-06-30');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (70, '2019-06-20');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (71, '2019-07-11');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (72, '2019-07-24');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (73, '2019-06-26');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (74, '2019-07-12');
 INSERT INTO Sche (schedule_ID, sDate) VALUES (75, '2019-07-14');


CREATE TABLE MedalHonors (
  medal_ID integer primary key,
  title char(60) DEFAULT NULL
);



 INSERT INTO MedalHonors (medal_ID, title) VALUES (0, 'Worked on This Database lol');
 INSERT INTO MedalHonors (medal_ID, title) VALUES (2, 'Amazing Physical Feats');
 INSERT INTO MedalHonors (medal_ID, title) VALUES (10, 'Achieving Top 20 in Hero Rankings');
 INSERT INTO MedalHonors (medal_ID, title) VALUES (21, 'Extreme Luck');
 INSERT INTO MedalHonors (medal_ID, title) VALUES (22, 'Master Gamer');
 INSERT INTO MedalHonors (medal_ID, title) VALUES (23, 'Teacher of the Year 2000');
 INSERT INTO MedalHonors (medal_ID, title) VALUES (24, 'Model Citizen');
 INSERT INTO MedalHonors (medal_ID, title) VALUES (25, 'Bottomless Monster');
 INSERT INTO MedalHonors (medal_ID, title) VALUES (26, 'Slap Champion');
 INSERT INTO MedalHonors (medal_ID, title) VALUES (27, 'Fastest Man Alive 2000');
 INSERT INTO MedalHonors (medal_ID, title) VALUES (28, 'Miss Z City');
 INSERT INTO MedalHonors (medal_ID, title) VALUES (29, 'Z City Voice');
 INSERT INTO MedalHonors (medal_ID, title) VALUES (30, 'Mister Z City');
 INSERT INTO MedalHonors (medal_ID, title) VALUES (31, 'Star Hero');
 INSERT INTO MedalHonors (medal_ID, title) VALUES (156, 'Winner of Annual Hero Competition');
 INSERT INTO MedalHonors (medal_ID, title) VALUES (878, 'Achieving Top 5 in Hero Rankings');
 INSERT INTO MedalHonors (medal_ID, title) VALUES (921, 'Defeating Villains');
 
CREATE TABLE HeroDobAge (
  DOB date primary KEY,
  age integer DEFAULT NULL
);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1938-01-05', 81);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1938-04-21', 81);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1972-08-03', 47);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1982-06-03', 37);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1982-06-04', 37);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1982-12-07', 37);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1984-11-09', 35);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1985-04-06', 34);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1986-10-08', 33);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1987-01-01', 32);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1990-03-08', 29);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1990-05-04', 29);
INSERT INTO HeroDobAge (DOB, age) VALUES ('1991-05-09', 28);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1991-06-30', 28);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1991-07-01', 28);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1991-11-07', 28);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1992-05-06', 27);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1992-07-08', 27);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1992-07-12', 27);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1993-02-08', 26);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1993-04-07', 26);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1993-05-07', 26);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1993-07-04', 26);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1993-08-09', 26);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1994-01-14', 25);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1994-04-09', 25);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1994-07-03', 25);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1994-07-05', 25);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1994-08-03', 25);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1994-09-06', 25);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1995-03-06', 24);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1995-07-03', 24);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1995-07-07', 24);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1995-07-13', 24);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1995-08-03', 24);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1996-04-16', 23);
INSERT INTO HeroDobAge (DOB, age) VALUES ('1996-08-02', 23);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1996-08-03', 23);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1998-02-06', 21);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1999-04-07', 20);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('1999-12-07', 20);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('2000-04-07', 19);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('2000-05-07', 19);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('2000-11-09', 19);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('2000-12-07', 19);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('2001-09-03', 18);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('2002-07-03', 17);
 INSERT INTO HeroDobAge (DOB, age) VALUES ('2009-04-06', 10);
INSERT INTO HeroDobAge (DOB, age) VALUES ('1990-07-03', 29);
 

CREATE TABLE Hero (
   Hero_ID integer PRIMARY KEY,
   heroName varchar(30) NOT NULL,
   weight Real DEFAULT NULL,
   height Real DEFAULT NULL,
   affiliation varchar(30) DEFAULT NULL,
   location varchar(6) DEFAULT NULL,
   biologicalRace varchar(7) DEFAULT NULL,
   DOB date DEFAULT NULL,
   heroStatus varchar(7) DEFAULT NULL,
   heroRank_ID integer NOT NULL,
   powerStat_ID integer NOT NULL,
   FOREIGN KEY (affiliation) REFERENCES AffiliTAB (Aff_ID) ON DELETE CASCADE ON UPDATE CASCADE,
   FOREIGN KEY (DOB) REFERENCES HeroDobAge (DOB) 
 );


  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (0, 'Saitama', 70, 175, 'Saitama Group', 'Z-City', 'Human', '1994-01-14', 'Alive', 75, 0);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (1, 'Genos', NULL, 178, 'Saitama Group', 'Z-City', 'Cyborg', '2000-05-07', 'Injured', 14, 1);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (2, 'King', 50, 187, 'Saitama Group', 'M-City', 'Human', '1990-03-08', 'Alive', 2, 2);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (3, 'Fubuki', NULL, NULL, 'Blizzard Group', 'A-City', 'Human', '1996-04-16', 'Alive', 18, 3);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (4, 'Bang', 55, 165, 'Hero Association', 'Z-City', 'Human', '1938-04-21', 'Alive', 3, 4);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (12, 'Tornado of Terror', NULL, 160, 'Hero Association', 'X-CITY', 'Esper', '1991-06-30', 'alive', 4, 13);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (13, 'Alex', 55, 165, 'Saitama Group', 'Z-CITY', 'Human', '1938-01-05', 'alive', 5, 10);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (14, 'Atomic Samurai', 71.3, 177, 'Council of Swordmasters', 'Z-CITY', 'Human', '1982-12-07', 'alive', 6, 15);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (15, 'Child Emperor', 35, 135, 'Hero Association', 'X-CITY', 'Human', '2009-04-06', 'alive', 7, 11);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (16, 'Medal Knight', 250, 210, 'Hero Association', 'W-CITY', 'Human', '1992-05-06', 'injured', 8, 12);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (17, 'Lian', 68, 187, 'Saitama Group', 'X-CITY', 'Human', '1990-05-04', 'alive', 9, 10);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (18, 'Zombieman', 65, 174, 'House of Evolution', 'A-CITY', 'Mutant', '1995-07-07', 'alive', 10, 11);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (19, 'Drive Knight', 1254, 182, 'Hero Association', 'A-CITY', 'Cyborg', '1992-07-08', 'unknown', 11, 14);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (21, 'Sweet Mask', 78, 181, 'Hero Association', 'M-CITY', 'Human', '1993-04-07', 'injured', 12, 14);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (22, 'Laian', 63, 178, 'Hero Association', 'M-CITY', 'Human', '1992-07-12', 'alive', 13, 10);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (23, 'Okamaitachi', 78, 182, 'Hero Association', 'Z-CITY', 'Human', '1993-07-04', 'alive', 114, 10);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (24, 'Bushidrill', 68, 167, 'Hero Association', 'E-CITY', 'Human', '1994-04-09', 'alive', 15, 11);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (25, 'Heavy Tank Loincloth', 122, NULL, 'Hero Association', 'E-CITY', 'Human', '2000-12-07', 'alive', 16, 12);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (26, 'Blue Fire', 59, 178, 'Hero Association', 'X-CITY', 'Human', '2002-07-03', 'injured', 17, 11);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (27, 'Magic Trick Man', 40, 159, 'Hero Association', 'Z-CITY', 'Human', '2000-11-09', 'alive', 118, 10);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (39, 'Tanktop Vegetarian', 122, 215, 'Hero Association', 'E-CITY', 'Human', '1986-10-08', 'alive', 19, 10);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (41, 'Shahbano', 67, 167, 'Hero Association', 'E-CITY', 'Human', '1995-07-13', 'alive', 20, 10);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (44, 'Shabab', 70, 175, 'Saitama Group', 'Z-CITY', 'Human', '1996-08-03', 'injured', 21, 11);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (51, 'Mumen Rider', 66, 170, 'Hero Association', 'Z-CITY', 'Human', '1993-02-08', 'alive', 22, 11);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (110, 'Pig God', 2133, 240, 'Hero Association', 'Z-CITY', 'Human', '1982-06-04', 'alive', 23, 11);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (111, 'Superalloy Darkshine', 250, 235, 'Hero Association', 'Z-CITY', 'Human', '1984-11-09', 'alive', 24, 10);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (112, 'Watchdog man', 55, 175, 'Hero Association', 'E-CITY', 'Human', '2000-04-07', 'alive', 25, 11);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (113, 'Flashy Flash', 65, 172, 'Hero Association', 'M-CITY', 'Human', '1987-01-01', 'alive', 26, 14);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (114, 'Demon Cyborg', 75, 178, 'Saitama Group', 'Z-CITY', 'Cyborg', '1993-08-09', 'injured', 27, 10);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (115, 'Metal Bat', 67, 168, 'Hero Association', 'M-CITY', 'Human', '1995-07-03', 'alive', 28, 11);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (116, 'Tanktop Master', 157, 230, 'Tank Topper Army', 'A-CITY', 'Human', '1995-03-06', 'alive', 29, 11);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (117, 'Puri-Puri Prisoner', 100, 220, 'Hero Association', 'A-CITY', 'Human', '1998-02-06', 'alive', 30, 11);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (310, 'Stinger', 61, 184, 'Hero Association', 'M-CITY', 'Human', '1991-05-09', 'alive', 31, 11);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (317, 'Lighting Genji', 54, 165, 'Hero Association', 'A-CITY', 'Human', '1972-08-03', 'alive', 32, 11);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (319, 'Lighting Max', 60, 178, 'Hero Association', 'M-CITY', 'Human', '1982-06-03', 'injured', 33, 10);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (326, 'Golden Ball', 87, 195, 'Hero Association', 'E-CITY', 'Human', '1990-07-03', 'alive', 34, 10);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (328, 'Spring Mustachio', 63, 178, 'Council of Swordmasters', 'A-CITY', 'Human', '1996-08-02', 'alive', 35, 13);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (334, 'Heavy Kong', 98, 198, 'Hero Association', 'A-CITY', 'Human', '1994-09-06', 'alive', 36, 13);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (337, 'Biting Snake Fist', 64, 179, 'Hero Association', 'E-CITY', 'Human', '1993-05-07', 'injured', 37, 12);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (450, 'Jet Nice Guy', 54, 178, 'Hero Association', 'Z-CITY', 'Cyborg', '1999-12-07', 'alive', 38, 11);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (456, 'Darkness Blade', 73, 180, 'Hero Association', 'E-CITY', 'Human', '1991-11-07', 'alive', 39, 10);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (481, 'Tanktop Black Hole', 121, 213, 'Tank Topper Army', 'M-CITY', 'Human', '1994-07-05', 'alive', 40, 10);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (513, 'Tanktop Tiger', 126, 220, 'Tank Topper Army', 'M-CITY', 'Human', '1994-08-03', 'alive', 41, 10);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (522, 'D-Pad', 45, 176, 'Hero Association', 'A-CITY', 'Human', '1985-04-06', 'injured', 42, 10);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (540, 'Funeral Suspenders', 63, 175, 'Hero Association', 'A-CITY', 'Human', '1994-07-03', 'alive', 43, 10);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (589, 'Red Muffler', 56, 168, 'Hero Association', 'M-CITY', 'Human', '1999-04-07', 'alive', 44, 10);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (5331, 'Bunbunman', 61, 175, 'Hero Association', 'M-CITY', 'Human', '2001-09-03', 'injured', 45, 10);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (5385, 'Red Nose', 74, 172, 'Hero Association', 'Z-CITY', 'Human', '1995-08-03', 'alive', 46, 10);
  INSERT INTO Hero (Hero_ID, heroName, weight, height, affiliation, location, biologicalRace, DOB, heroStatus, heroRank_ID, powerStat_ID) VALUES (9999, 'Blast', 55, 185, 'Hero Association', 'A-CITY', 'Human', '1991-07-01', 'alive', 0, 10);





CREATE TABLE FightSchedule (
  fight_ID integer,
  Schedule_ID integer,
  Location varchar(6),
  primary key (Schedule_ID, Location),
  FOREIGN KEY (Schedule_ID) REFERENCES Sche (schedule_ID) ON DELETE CASCADE ON UPDATE CASCADE
);


 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (0, 0, 'X-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (1, 1, 'Z-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (2, 2, 'Z-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (3, 3, 'X-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (4, 4, 'W-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (5, 5, 'X-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (6, 6, 'A-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (7, 7, 'A-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (8, 8, 'Z-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (9, 9, 'Z-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (10, 10, 'E-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (11, 11, 'M-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (12, 12, 'Z-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (13, 13, 'M-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (14, 14, 'A-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (15, 15, 'A-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (16, 16, 'M-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (17, 17, 'M-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (18, 18, 'Z-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (19, 19, 'E-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (20, 20, 'E-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (21, 21, 'X-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (22, 22, 'Z-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (23, 23, 'E-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (24, 24, 'M-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (25, 25, 'A-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (26, 26, 'M-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (27, 27, 'E-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (28, 28, 'A-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (29, 29, 'E-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (30, 30, 'A-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (31, 31, 'E-CITY');
 INSERT INTO FightSchedule (fight_ID, Schedule_ID, Location) VALUES (32, 32, 'Z-CITY');

CREATE TABLE users (
  id integer primary KEY,
  username varchar(50) NOT NULL,
  password varchar(50) DEFAULT NULL,
  Hero_ID integer DEFAULT NULL,
  is_admin tinyint(1) NOT NULL DEFAULT '0',
  FOREIGN KEY (Hero_ID) REFERENCES Hero (Hero_ID) ON DELETE SET NULL
);

 INSERT INTO users (id, username, password, Hero_ID, is_admin) VALUES (2, 'admin', NULL, NULL, 1);
 INSERT INTO users (id, username, password, Hero_ID, is_admin) VALUES (3, 'saitama', 'password123', 0, 0);
 INSERT INTO users (id, username, password, Hero_ID, is_admin) VALUES (4, 'genos', 'genos', 1, 0);
 INSERT INTO users (id, username, password, Hero_ID, is_admin) VALUES (5, 'king', 'dokidoki', 2, 0);
 INSERT INTO users (id, username, password, Hero_ID, is_admin) VALUES (6, 'fubuki', 'blizzard', 3, 0);
 INSERT INTO users (id, username, password, Hero_ID, is_admin) VALUES (7, 'bang', 'mypassword', 4, 0);
 INSERT INTO users (id, username, password, Hero_ID, is_admin) VALUES (8, 'coolguy23', 'coolpassword23', NULL, 0);
 INSERT INTO users (id, username, password, Hero_ID, is_admin) VALUES (9, 'lazy', NULL, NULL, 0);
 INSERT INTO users (id, username, password, Hero_ID, is_admin) VALUES (10, 'sdg', 'sfdgdfg', NULL, 0);


CREATE TABLE PowerStats (
  powerStatsID integer NOT NULL,
  Hero_ID integer NOT NULL,
  dex integer DEFAULT NULL,
  durability integer DEFAULT NULL,
  luck integer DEFAULT NULL,
  strength integer DEFAULT NULL,
  intelligence integer DEFAULT NULL,
  primary KEY (powerStatsID, Hero_ID),
  FOREIGN KEY (Hero_ID) REFERENCES Hero (Hero_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (0, 0, 0, 10, 10, 15, 1);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (1, 1, 11, 7, 8, 8, 10);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (2, 2, 1, 1, 15, 2, 4);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (3, 3, 5, 4, 4, 5, 7);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (4, 4, 9, 5, 1, 6, 15);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 13, 9, 6, 7, 9, 10);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 17, 10, 10, 10, 10, 10);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 21, 8, 7, 8, 7, 8);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 25, 6, 6, 7, 7, 5);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 39, 6, 3, 5, 6, 6);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 51, 4, 4, 10, 3, 3);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 111, 10, 5, 6, 9, 8);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 112, 9, 5, 7, 8, 7);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 116, 9, 5, 7, 8, 8);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 117, 8, 4, 6, 8, 7);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 334, 5, 6, 7, 5, 6);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 337, 6, 6, 6, 6, 6);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 481, 5, 3, 4, 5, 4);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 513, 4, 3, 3, 3, 4);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 522, 3, 3, 4, 4, 2);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 540, 3, 4, 4, 4, 3);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 589, 2, 4, 3, 3, 3);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 5331, 3, 3, 5, 3, 2);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 5385, 2, 3, 3, 2, 2);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (10, 9999, 10, 10, 10, 10, 10);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (11, 15, 4, 10, 8, 9, 6);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (11, 18, 10, 6, 6, 9, 6);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (11, 22, 7, 5, 7, 8, 7);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (11, 23, 7, 5, 7, 8, 7);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (11, 24, 7, 5, 7, 8, 7);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (11, 26, 5, 6, 7, 7, 6);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (11, 113, 8, 6, 5, 9, 10);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (11, 115, 8, 3, 7, 9, 9);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (11, 310, 6, 5, 7, 7, 7);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (11, 317, 5, 5, 6, 7, 7);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (11, 319, 6, 5, 6, 6, 7);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (11, 326, 6, 5, 6, 6, 6);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (11, 328, 5, 6, 7, 6, 7);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (11, 456, 5, 2, 5, 5, 4);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (12, 16, 4, 10, 5, 10, 9);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (12, 114, 9, 7, 7, 9, 8);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (12, 450, 4, 4, 5, 5, 5);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (13, 12, 5, 7, 7, 10, 9);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (13, 41, 5, 7, 5, 7, 6);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (13, 44, 15, 4, 15, 15, 15);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (14, 19, 9, 8, 4, 6, 9);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (14, 27, 5, 6, 7, 7, 6);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (14, 110, 5, 5, 8, 4, 5);
 INSERT INTO PowerStats (powerStatsID, Hero_ID, dex, durability, luck, strength, intelligence) VALUES (15, 14, 9, 4, 6, 9, 10);


CREATE TABLE Hero_schedule (
  Hero_ID integer NOT NULL,
  Schedule_ID integer NOT NULL,
  Available varchar(6) NOT NULL DEFAULT 'Yes',
  primary KEY (Hero_ID,Schedule_ID),
  FOREIGN KEY (Hero_ID) REFERENCES Hero (Hero_ID) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (Schedule_ID) REFERENCES Sche (schedule_ID) ON DELETE CASCADE ON UPDATE CASCADE
);
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (12, 6, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (12, 29, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (12, 33, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (13, 16, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (13, 34, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (14, 17, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (14, 35, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (15, 7, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (15, 36, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (16, 13, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (16, 37, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (17, 3, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (17, 4, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (17, 38, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (18, 14, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (18, 25, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (18, 39, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (19, 18, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (19, 28, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (19, 40, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (21, 23, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (21, 30, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (21, 49, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (22, 11, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (22, 26, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (22, 50, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (23, 0, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (23, 4, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (23, 51, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (24, 1, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (24, 31, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (24, 52, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (25, 2, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (25, 18, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (25, 53, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (26, 54, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (27, 26, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (27, 55, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (39, 21, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (39, 56, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (41, 15, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (41, 21, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (41, 64, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (44, 15, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (44, 65, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (51, 14, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (51, 32, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (51, 69, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (110, 9, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (110, 32, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (110, 41, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (111, 0, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (111, 27, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (111, 42, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (112, 7, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (112, 8, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (112, 43, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (113, 22, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (113, 44, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (114, 1, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (114, 45, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (115, 3, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (115, 46, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (116, 8, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (116, 47, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (117, 12, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (117, 13, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (117, 48, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (310, 9, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (310, 19, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (310, 20, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (310, 57, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (317, 2, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (317, 31, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (317, 58, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (319, 24, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (319, 59, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (326, 23, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (326, 60, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (328, 28, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (328, 61, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (334, 30, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (334, 63, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (337, 22, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (337, 25, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (337, 62, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (450, 11, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (450, 16, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (450, 66, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (456, 5, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (456, 67, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (481, 10, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (481, 29, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (481, 68, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (513, 10, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (513, 17, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (513, 70, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (522, 27, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (522, 71, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (540, 19, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (540, 72, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (589, 5, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (589, 73, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (5331, 20, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (5331, 24, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (5331, 74, 'Yes');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (5385, 6, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (5385, 12, 'No');
 INSERT INTO Hero_schedule (Hero_ID, Schedule_ID, Available) VALUES (5385, 75, 'Yes');

CREATE TABLE HeroRank (
  Hero_ID integer DEFAULT NULL,
  HeroRank_ID integer primary KEY,
  salary integer DEFAULT NULL,
  FOREIGN KEY (Hero_ID) REFERENCES Hero (Hero_ID) ON DELETE CASCADE
);

  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (9999, 0, NULL);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (2, 2, 1000000);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (4, 3, 975000);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (12, 4, 1495262);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (13, 5, 995104);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (14, 6, 1263623);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (15, 7, 1203242);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (16, 8, 1478206);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (17, 9, 921416);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (18, 10, 1123804);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (19, 11, 1449105);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (110, 12, 1035656);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (111, 13, 1432687);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (1, 14, 150000);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (113, 15, 1371835);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (114, 16, 1228026);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (115, 17, 1315426);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (3, 18, 100000);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (117, 19, 1011851);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (21, 20, 668253);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (22, 21, 773561);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (23, 22, 685156);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (24, 23, 546053);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (25, 24, 508460);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (26, 25, 577524);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (27, 26, 634543);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (39, 27, 724758);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (310, 28, 745679);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (317, 29, 737503);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (319, 30, 549202);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (326, 31, 555056);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (328, 32, 686014);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (337, 33, 611138);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (334, 34, 536806);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (41, 35, 431495);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (44, 36, 490128);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (450, 37, 425475);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (456, 38, 483780);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (481, 39, 419275);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (51, 40, 191108);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (513, 41, 209639);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (522, 42, 137653);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (540, 43, 115754);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (589, 44, 147537);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (5331, 45, 240629);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (5385, 46, 113827);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (0, 75, 3500);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (112, 114, 1221618);
  INSERT INTO HeroRank (Hero_ID, HeroRank_ID, salary) VALUES (116, 118, 1238692);

CREATE TABLE HasEarnedMedal (
  Hero_ID integer NOT NULL,
  medal_ID integer NOT NULL,
  medalDate date DEFAULT NULL,
  primary KEY (Hero_ID, medal_ID),
  FOREIGN KEY (Hero_ID) REFERENCES Hero (Hero_ID) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (medal_ID) REFERENCES MedalHonors (medal_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (13, 0, NULL);
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (17, 0, NULL);
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (41, 0, NULL);
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (44, 0, NULL);
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (4, 2, '2007-05-06');
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (3, 10, '2008-02-13');
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (17, 21, '2015-04-07');
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (17, 22, '2000-01-05');
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (13, 23, '2000-05-04');
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (21, 24, '2010-09-04');
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (110, 25, '2014-08-09');
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (18, 26, '2012-04-05');
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (113, 27, '2000-04-07');
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (12, 28, '2000-07-07');
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (21, 29, '2016-09-04');
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (21, 30, '2017-08-04');
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (21, 31, '2014-08-01');
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (1, 156, '2010-01-01');
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (2, 878, '2018-09-15');
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (4, 878, '2008-03-24');
 INSERT INTO HasEarnedMedal (Hero_ID, medal_ID, medalDate) VALUES (0, 921, '2019-04-20');

CREATE TABLE FightResult (
  schedule_ID integer NOT NULL,
  Location varchar(6) NOT NULL,
  Winner integer NOT NULL,
  Loser integer NOT NULL,
  PRIMARY KEY (schedule_ID,Location),
  FOREIGN KEY (Loser) REFERENCES Hero (Hero_ID) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (schedule_ID,Location) REFERENCES FightSchedule (Schedule_ID, Location) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (Winner) REFERENCES Hero (Hero_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (0, 'X-CITY', 23, 111);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (1, 'Z-CITY', 24, 114);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (2, 'Z-CITY', 25, 317);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (3, 'X-CITY', 115, 17);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (4, 'W-CITY', 17, 23);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (5, 'X-CITY', 589, 456);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (6, 'A-CITY', 12, 5385);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (7, 'A-CITY', 112, 15);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (8, 'Z-CITY', 116, 112);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (9, 'Z-CITY', 110, 310);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (10, 'E-CITY', 513, 481);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (11, 'M-CITY', 450, 22);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (12, 'Z-CITY', 5385, 117);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (13, 'M-CITY', 117, 16);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (14, 'A-CITY', 18, 51);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (15, 'A-CITY', 41, 44);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (16, 'M-CITY', 13, 450);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (17, 'M-CITY', 14, 513);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (18, 'Z-CITY', 19, 25);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (19, 'E-CITY', 540, 540);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (20, 'E-CITY', 310, 5331);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (21, 'X-CITY', 39, 41);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (22, 'Z-CITY', 113, 337);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (23, 'E-CITY', 21, 326);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (24, 'M-CITY', 5331, 319);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (25, 'A-CITY', 337, 18);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (26, 'M-CITY', 22, 27);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (27, 'E-CITY', 111, 522);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (28, 'A-CITY', 328, 19);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (29, 'E-CITY', 481, 12);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (30, 'A-CITY', 334, 21);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (31, 'E-CITY', 317, 24);
 INSERT INTO FightResult (schedule_ID, Location, Winner, Loser) VALUES (32, 'Z-CITY', 51, 110);


CREATE TABLE CanDo (
  Hero_ID integer NOT NULL,
  ability_ID integer NOT NULL,
  PRIMARY KEY (Hero_ID,ability_ID),
   FOREIGN KEY (Hero_ID) REFERENCES Hero (Hero_ID),
   FOREIGN KEY (ability_ID) REFERENCES Ability (ability_ID) ON DELETE CASCADE
);

 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (0, 0);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 0);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (0, 1);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 1);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (0, 2);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (1, 2);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 2);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (1, 3);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 3);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (2, 4);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 4);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (3, 5);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (12, 5);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 5);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (4, 6);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (14, 6);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (110, 6);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (111, 6);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (115, 6);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (117, 6);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 6);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (0, 7);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 7);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (0, 8);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 8);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (0, 9);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 9);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (1, 10);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 10);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (4, 11);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 11);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (14, 12);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (24, 12);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 12);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (15, 13);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 13);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (16, 14);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 14);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (2, 15);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 15);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (18, 16);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 16);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (110, 17);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 17);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (113, 18);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 18);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (115, 19);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 19);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (25, 20);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (116, 20);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (334, 20);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (481, 20);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (513, 20);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 20);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (24, 21);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (116, 21);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 21);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (117, 22);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 22);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (21, 23);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (22, 23);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (23, 23);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 23);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (22, 24);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 24);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (3, 25);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (26, 25);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (27, 25);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (51, 25);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (310, 25);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (334, 25);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (337, 25);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 25);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (22, 26);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (23, 26);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (24, 26);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 26);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (310, 27);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 27);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (317, 28);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (337, 28);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (540, 28);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (589, 28);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 28);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (317, 29);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (456, 29);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (540, 29);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 29);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (51, 30);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (317, 30);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (334, 30);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (337, 30);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (450, 30);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (481, 30);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (513, 30);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 30);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (319, 31);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 31);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (319, 32);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 32);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (326, 33);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (328, 33);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (456, 33);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 33);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (326, 34);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 34);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (328, 35);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 35);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (51, 36);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (456, 36);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (589, 36);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 36);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (51, 37);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (5331, 37);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (5385, 37);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 37);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (481, 38);
 INSERT INTO CanDo (Hero_ID, ability_ID) VALUES (9999, 38);
