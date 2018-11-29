-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-11-27 22:25:22.547

-- Table: Generation
CREATE TABLE Generation (
    ID varchar(20) NOT NULL,
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
    Name varchar(20) NOT NULL,
    Height int NOT NULL,
    Weight int NOT NULL,
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


-- foreign keys
-- Reference: Badges_Trainer (table: Badges)
--ALTER TABLE Badges ADD CONSTRAINT Badges_Trainer FOREIGN KEY Badges_Trainer (Trainer_ID)
--    REFERENCES Trainer (ID);

-- Reference: Generations_Region (table: Generation)
ALTER TABLE Generation ADD CONSTRAINT Generations_Region FOREIGN KEY Generations_Region (Region_ID)
    REFERENCES Region (ID);

-- Reference: Pokemon_Abilities_Abilities (table: Pokemon_Abilities)
--ALTER TABLE Pokemon_Abilities ADD CONSTRAINT Pokemon_Abilities_Abilities FOREIGN KEY Pokemon_Abilities_Abilities (Ability_ID)
 --   REFERENCES Abilities (Ability_ID);

-- Reference: Pokemon_Abilities_Pokemon (table: Pokemon_Abilities)
--ALTER TABLE Pokemon_Abilities ADD CONSTRAINT Pokemon_Abilities_Pokemon FOREIGN KEY Pokemon_Abilities_Pokemon (Pokemon_ID)
 --   REFERENCES Pokemon (ID);

-- Reference: Pokemon_Generation (table: Pokemon)
ALTER TABLE Pokemon ADD CONSTRAINT Pokemon_Generation FOREIGN KEY Pokemon_Generation (Generation_ID)
    REFERENCES Generation (ID);

-- Reference: Pokemon_Owned_Pokemon (table: Pokemon_Owned)
--ALTER TABLE Pokemon_Owned ADD CONSTRAINT Pokemon_Owned_Pokemon FOREIGN KEY Pokemon_Owned_Pokemon (Pokemon_ID)
 --   REFERENCES Pokemon (ID);

-- Reference: Pokemon_Owned_Trainer (table: Pokemon_Owned)
--ALTER TABLE Pokemon_Owned ADD CONSTRAINT Pokemon_Owned_Trainer FOREIGN KEY Pokemon_Owned_Trainer (Trainer_ID)
--    REFERENCES Trainer (ID);

-- End of file.

