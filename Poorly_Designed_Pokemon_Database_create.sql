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

