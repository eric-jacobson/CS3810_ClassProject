-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-11-27 22:25:22.547

-- tables
-- Table: Abilities
CREATE TABLE Abilities (
    Ability_ID int NOT NULL,
    Name varchar(20) NOT NULL,
    CONSTRAINT Abilities_pk PRIMARY KEY (Ability_ID)
);

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

-- Table: Pokemon
CREATE TABLE Pokemon (
    ID int NOT NULL,
    Height int NOT NULL,
    Weight int NOT NULL,
    Name varchar(20) NOT NULL,
    Generation_ID int NOT NULL,
    CONSTRAINT ID PRIMARY KEY (ID)
);

-- Table: Pokemon_Abilities
CREATE TABLE Pokemon_Abilities (
    Pokemon_ID int NOT NULL,
    Ability_ID int NOT NULL,
    CONSTRAINT Pokemon_Abilities_pk PRIMARY KEY (Pokemon_ID)
);

-- Table: Pokemon_Owned
CREATE TABLE Pokemon_Owned (
    Pokemon_ID int NOT NULL,
    Trainer_ID int NOT NULL,
    Nickname varchar(20) NOT NULL,
    Age int NOT NULL,
    CONSTRAINT Pokemon_Owned_pk PRIMARY KEY (Pokemon_ID,Trainer_ID,Nickname)
);

-- Table: Region
CREATE TABLE Region (
    ID int NOT NULL,
    Name varchar(20) NOT NULL,
    CONSTRAINT Region_pk PRIMARY KEY (ID)
);

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

