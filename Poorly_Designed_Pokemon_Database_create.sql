-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-11-27 22:25:22.547

-- tables
-- Table: Abilities
CREATE TABLE Abilities (
    Ability_ID int NOT NULL,
    Name varchar(20) NOT NULL,
    CONSTRAINT Abilities_pk PRIMARY KEY (Ability_ID)
);
INSERT INTO Abilities(Name, Ability_ID ) VALUES
("stench",89),
("drizzle",86),
("speed-boost",61),
("battle-armor",58),
("sturdy",75),
("damp",46),
("limber",53),
("sand-veil",27),
("static",25),
("volt-absorb",7),
("water-absorb",60),
("oblivious",79),
("cloud-nine",54),
("compound-eyes",12),
("insomnia",96),
("color-change",73),
("immunity",100),
("flash-fire",37),
("shield-dust",10),
("own-tempo",79),
("suction-cups",69),
("intimidate",23),
("shadow-tag",3),
("rough-skin",18),
("wonder-guard",20),
("levitate",94),
("effect-spore",45),
("synchronize",63);

-- Table: Badges
CREATE TABLE Badges (
    ID int NOT NULL,
    name varchar(20) NOT NULL,
    gym varchar(20) NOT NULL,
    Trainer_ID int NOT NULL,
    CONSTRAINT Badges_pk PRIMARY KEY (ID)
);

INSERT INTO Badges(ID, name, gym, Trainer_ID)
VALUES 
    (101,"Boulder","Pewter",1001),
    (102,"Cascade","Cerulean",1003),
    (103,"Thunder","Vermilion",1034),
    (104,"Rainbow","Celadon",1012),
    (105,"Soul","Fuchsia",1037),
    (106,"Marsh","Saffron",1049),
    (107,"Volcano","Cinnabar",1011),
    (108,"Earth","Viridian",1020);

-- Table: Generation
CREATE TABLE Generation (
    ID int NOT NULL,
    Region_ID int NOT NULL,
    CONSTRAINT Generation_pk PRIMARY KEY (ID)
);
INSERT INTO Generation(ID,Region_ID)
VALUES
("G1",303),
("G2",301),
("G3",300),
("G4",304),
("G5",305),
("G6",302),
("G7",306);

-- Table: Pokemon
CREATE TABLE Pokemon (
    ID int NOT NULL,
    Height int NOT NULL,
    Weight int NOT NULL,
    Name varchar(20) NOT NULL,
    Generation_ID int NOT NULL,
    CONSTRAINT ID PRIMARY KEY (ID)
);
INSERT INTO Pokemon(ID,Name,Height,Weight,Generation_ID)
VALUES
(1,"bulbasaur",7,69,300),
(2,"ivysaur",10,130,300),
(3,"venusaur",20,1000,300),
(4,"charmander",6,85,300),
(5,"charmeleon",11,190,300),
(6,"charizard",17,905,300),
(7,"squirtle",5,90,300),
(8,"wartortle",10,225,300),
(9,"blastoise",16,855,300),
(10,"caterpie",3,29,300),
(11,"metapod",7,99,300),
(12,"butterfree",11,320,300),
(13,"weedle",3,32,306),
(14,"kakuna",6,100,306),
(15,"beedrill",10,295,306),
(16,"pidgey",3,18,306),
(17,"pidgeotto",11,300,306),
(18,"pidgeot",15,395,306),
(19,"rattata",3,35,306),
(20,"raticate",7,185,306),
(21,"spearow",3,20,306),
(22,"fearow",12,380,306),
(23,"ekans",20,69,306),
(24,"arbok",35,650,306),
(25,"pikachu",4,60,306),
(26,"raichu",8,300,306),
(27,"sandshrew",6,120,306),
(28,"sandslash",10,295,306),
(29,"nidoran",4,70,301),
(30,"nidorina",8,200,301),
(31,"nidoqueen",13,600,301),
(32,"nidoran",5,90,301),
(33,"nidorino",9,195,301),
(34,"nidoking",14,620,301),
(35,"clefairy",6,75,301),
(36,"clefable",13,400,301),
(37,"vulpix",6,99,302),
(38,"ninetales",11,199,302),
(39,"jigglypuff",5,55,302),
(40,"wigglytuff",10,120,302),
(41,"zubat",8,75,302),
(42,"golbat",16,550,302),
(43,"oddish",5,54,302),
(44,"gloom",8,86,302),
(45,"vileplume",12,186,302),
(46,"paras",3,54,306),
(47,"parasect",10,295,306),
(48,"venonat",10,300,306),
(49,"venomoth",15,125,306),
(50,"diglett",2,8,306),
(51,"dugtrio",7,333,306),
(52,"meowth",4,42,306),
(53,"persian",10,320,303),
(54,"psyduck",8,196,303),
(55,"golduck",17,766,303),
(56,"mankey",5,280,303),
(57,"primeape",10,320,303),
(58,"growlithe",7,190,303),
(59,"arcanine",19,1550,303),
(60,"poliwag",6,124,303),
(61,"poliwhirl",10,200,303),
(62,"poliwrath",13,540,303),
(63,"abra",9,195,303),
(64,"kadabra",13,565,303),
(65,"alakazam",15,480,303),
(66,"machop",8,195,303),
(67,"machoke",15,705,303),
(68,"machamp",16,1300,303),
(69,"bellsprout",7,40,303),
(70,"weepinbell",10,64,304),
(71,"victreebel",17,155,304),
(72,"tentacool",9,455,304),
(73,"tentacruel",16,550,304),
(74,"geodude",4,200,304),
(75,"graveler",10,1050,304),
(76,"golem",14,3000,304),
(77,"ponyta",10,300,304),
(78,"rapidash",17,950,304),
(79,"slowpoke",12,360,304),
(80,"slowbro",16,785,304),
(81,"magnemite",3,60,304),
(82,"magneton",10,600,304),
(83,"farfetchd",8,150,304),
(84,"doduo",14,392,304),
(85,"dodrio",18,852,304),
(86,"seel",11,900,304),
(87,"dewgong",17,1200,304),
(88,"grimer",9,300,305),
(89,"muk",12,300,305),
(90,"shellder",3,40,305),
(91,"cloyster",15,1325,305),
(92,"gastly",13,1,305),
(93,"haunter",16,1,305),
(94,"gengar",15,405,305),
(95,"onix",88,2100,305),
(96,"drowzee",10,324,305),
(97,"hypno",16,756,305),
(98,"krabby",4,65,305),
(99,"kingler",13,600,305),
(100,"voltorb",5,104,305);


-- Table: Pokemon_Abilities
CREATE TABLE Pokemon_Abilities (
    Pokemon_ID int NOT NULL,
    Ability_ID int NOT NULL,
    CONSTRAINT Pokemon_Abilities_pk PRIMARY KEY (Pokemon_ID)
);

INSERT INTO Pokemon_Abilities(Pokemon_ID, Ability_ID)
VALUES
    (1,500),
    (2,501),
    (3,502),
    (4,503),
    (5,504),
    (6,505),
    (7,506),
    (8,507),
    (9,508),
    (10,509),
    (11,510),
    (12,511),
    (13,512),
    (14,513),
    (15,514),
    (16,515),
    (17,516),
    (18,517),
    (19,518),
    (20,519),
    (21,520),
    (22,521),
    (23,522),
    (24,523),
    (25,524),
    (26,525),
    (27,526),
    (28,527),
    (29,500),
    (30,501),
    (31,502),
    (32,503),
    (33,504),
    (34,505),
    (35,506),
    (36,507),
    (37,508),
    (38,509),
    (39,510),
    (40,511),
    (41,512),
    (42,513),
    (43,514),
    (44,515),
    (45,516),
    (46,517),
    (47,518),
    (48,519),
    (49,520),
    (50,521),
    (51,522),
    (52,523),
    (53,524),
    (54,525),
    (55,526),
    (56,527),
    (57,500),
    (58,501),
    (59,502),
    (60,503),
    (61,504),
    (62,505),
    (63,506),
    (64,507),
    (65,508),
    (66,509),
    (67,510),
    (68,511),
    (69,512),
    (70,513),
    (71,514),
    (72,515),
    (73,516),
    (74,517),
    (75,518),
    (76,519),
    (77,520),
    (78,521),
    (79,522),
    (80,523),
    (81,524),
    (82,525),
    (83,526),
    (84,527),
    (85,500),
    (86,501),
    (87,502),
    (88,503),
    (89,504),
    (90,505),
    (91,506),
    (92,507),
    (93,508),
    (94,509),
    (95,510),
    (96,511),
    (97,512),
    (98,513),
    (99,514),
    (100,515);

-- Table: Pokemon_Owned
CREATE TABLE Pokemon_Owned (
    Pokemon_ID int NOT NULL,
    Trainer_ID int NOT NULL,
    Nickname varchar(20) NOT NULL,
    CONSTRAINT Pokemon_Owned_pk PRIMARY KEY (Pokemon_ID,Trainer_ID,Nickname)
);

INSERT INTO Pokemon_Owned(Pokemon_ID, Trainer_ID, Nickname)
VALUES
    (1,1001,"Phillis"),
    (5,1001,"Jennell"),
    (27,1001,"Ana"),
    (43,1001,"Rosemary"),
    (62,1001,"Sade"),
    (78,1001,"Jenell"),
    (5,1005,"Desiree"),
    (42,1005,"Gladis"),
    (60,1005,"Pam"),
    (1,1024,"Vena"),
    (4,1024,"Leonarda"),
    (20,1024,"Julene"),
    (32,1024,"Lorrine"),
    (100,1024,"Cherrie"),
    (3,1035,"Janette"),
    (17,1035,"Laurice"),
    (50,1035,"Shelba"),
    (28,1040,"Jamel"),
    (37,1040,"Franklyn"),
    (39,1040,"Wei"),
    (45,1040,"Billye"),
    (72,1040,"Cherilyn"),
    (7,1048,"Meaghan"),
    (18,1048,"Lise"),
    (84,1048,"Kellee");

-- Table: Region
CREATE TABLE Region (
    ID int NOT NULL,
    Name varchar(20) NOT NULL,
    CONSTRAINT Region_pk PRIMARY KEY (ID)
);
INSERT  INTO Region( ID, Name ) VALUES
(300,"Hoenn"),
(301,"Johto"),
(302,"Kalos"),
(303,"Kanto"),
(304,"Sinnoh"),
(305,"Unova"),
(306,"Alola"),
(307,"Almia"),
(308,"Oblivia");

-- Table: Trainer
CREATE TABLE Trainer (
    ID int NOT NULL,
    Name varchar(20) NOT NULL,
    num_badges int NOT NULL,
    badge_ID int NOT NULL,
    CONSTRAINT Trainer_pk PRIMARY KEY (ID)
);

INSERT INTO Trainer(ID, Name, num_badges, badge_ID)
VALUES 
    (1001,"Consuelo",1,101),
    (1002,"Marion",4,105),
    (1003,"Kelsey",4,102),
    (1004,"Johnie",4,106),
    (1005,"Miles",5,103),
    (1006,"Deanna",8,105),
    (1007,"Heriberto",2,101),
    (1008,"Shawn",0,106),
    (1009,"Leonard",6,103),
    (1010,"Gaylord",2,108),
    (1011,"Caitlin",7,102),
    (1012,"Kerry",0,107),
    (1013,"Johanna",2,108),
    (1014,"Micheal",0,101),
    (1015,"Rebekah",2,108),
    (1016,"Fidel",1,101),
    (1017,"Shauna",8,103),
    (1018,"Shon",0,101),
    (1019,"Rory",5,107),
    (1020,"Keven",4,102),
    (1021,"Pablo",8,108),
    (1022,"Hugo",8,107),
    (1023,"Agnes",8,103),
    (1024,"Jewel",2,108),
    (1025,"Cathy",8,106),
    (1026,"Julius",6,108),
    (1027,"Weldon",5,101),
    (1028,"Tasha",8,103),
    (1029,"Betsy",8,105),
    (1030,"Hilary",5,102),
    (1031,"Bradly",5,108),
    (1032,"Thomas",8,101),
    (1033,"Nona",7,105),
    (1034,"Murray",0,108),
    (1035,"Dena",4,108),
    (1036,"Jennie",4,103),
    (1037,"Alex",4,108),
    (1038,"Erasmo",8,106),
    (1039,"Earnestine",3,104),
    (1040,"Maximo",3,108),
    (1041,"Hunter",6,101),
    (1042,"Trinidad",7,106),
    (1043,"Todd",1,104),
    (1044,"Elden",0,102),
    (1045,"Kurt",7,104),
    (1046,"Fay",7,107),
    (1047,"Charles",4,103),
    (1048,"Alva",3,107),
    (1049,"Vincent",4,102),
    (1050,"Leigh",1,101);

-- foreign keys
-- Reference: Badges_Trainer (table: Badges)
ALTER TABLE Badges ADD CONSTRAINT Badges_Trainer FOREIGN KEY Badges_Trainer (Trainer_ID)
    REFERENCES Trainer (ID);

-- Reference: Generations_Region (table: Generation)
ALTER TABLE Generation ADD CONSTRAINT Generations_Region FOREIGN KEY Generations_Region (Region_ID)
    REFERENCES Region (ID);

-- Reference: Pokemon_Abilities_Abilities (table: Pokemon_Abilities)
ALTER TABLE Pokemon_Abilities ADD CONSTRAINT Pokemon_Abilities_Abilities FOREIGN KEY Pokemon_Abilities_Abilities (Ability_ID)
    REFERENCES Abilities (Ability_ID);

-- Reference: Pokemon_Abilities_Pokemon (table: Pokemon_Abilities)
ALTER TABLE Pokemon_Abilities ADD CONSTRAINT Pokemon_Abilities_Pokemon FOREIGN KEY Pokemon_Abilities_Pokemon (Pokemon_ID)
    REFERENCES Pokemon (ID);

-- Reference: Pokemon_Generation (table: Pokemon)
ALTER TABLE Pokemon ADD CONSTRAINT Pokemon_Generation FOREIGN KEY Pokemon_Generation (Generation_ID)
    REFERENCES Generation (ID);

-- Reference: Pokemon_Owned_Pokemon (table: Pokemon_Owned)
ALTER TABLE Pokemon_Owned ADD CONSTRAINT Pokemon_Owned_Pokemon FOREIGN KEY Pokemon_Owned_Pokemon (Pokemon_ID)
    REFERENCES Pokemon (ID);

-- Reference: Pokemon_Owned_Trainer (table: Pokemon_Owned)
ALTER TABLE Pokemon_Owned ADD CONSTRAINT Pokemon_Owned_Trainer FOREIGN KEY Pokemon_Owned_Trainer (Trainer_ID)
    REFERENCES Trainer (ID);

-- End of file.

