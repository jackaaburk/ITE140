DROP TABLE IF EXISTS Celtics25.Stats CASCADE;
DROP TABLE IF EXISTS Celtics25.Contracts CASCADE;
DROP TABLE IF EXISTS Celtics25.Accolades CASCADE;  
DROP TABLE IF EXISTS Celtics25.FormerTeams CASCADE; 
DROP TABLE IF EXISTS Celtics25.Teams CASCADE;
DROP TABLE IF EXISTS Celtics25.Players CASCADE; 


CREATE TABLE Celtics25.Players (  
    PlayerID SERIAL PRIMARY KEY,  
    FirstName VARCHAR(50) NOT NULL,  
    LastName VARCHAR(50) NOT NULL,  
    Age INT,  
    DraftYear INT,  
    DraftPick INT  
);  


CREATE TABLE Celtics25.Teams (  
    TeamID SERIAL PRIMARY KEY,  
    TeamName VARCHAR(100) NOT NULL  
);  


CREATE TABLE Celtics25.FormerTeams (  
    PlayerID INT NOT NULL,  
    TeamID INT NOT NULL,  
    YearJoined INT NOT NULL,  
    FOREIGN KEY (PlayerID) REFERENCES Celtics25.Players(PlayerID) ON DELETE CASCADE,  
    FOREIGN KEY (TeamID) REFERENCES Celtics25.Teams(TeamID) ON DELETE CASCADE,  
    PRIMARY KEY (PlayerID, TeamID, YearJoined)
);  


CREATE TABLE Celtics25.Accolades (  
    PlayerID INT NOT NULL,  
    Championships INT,  
    MVPs INT,  
    ROTY BOOLEAN,  
    DPOY INT,  
    AllStars INT,  
    AllNBAs INT,  
    FOREIGN KEY (PlayerID) REFERENCES Celtics25.Players(PlayerID) ON DELETE CASCADE  
);  


CREATE TABLE Celtics25.Contracts (  
    PlayerID INT NOT NULL,  
    ContractSalary INT,  
    ContractYears INT,  
    FOREIGN KEY (PlayerID) REFERENCES Celtics25.Players(PlayerID) ON DELETE CASCADE  
);  


CREATE TABLE Celtics25.Stats (  
    PlayerID INT NOT NULL,  
    Minutes FLOAT,  
    PPG FLOAT, 
    APG FLOAT,
    RPG FLOAT,  
    SPG FLOAT,   
    BPG FLOAT,  
    FOREIGN KEY (PlayerID) REFERENCES Celtics25.Players(PlayerID) ON DELETE CASCADE  
);  


INSERT INTO Celtics25.Players (FirstName, LastName, Age, DraftYear, DraftPick) VALUES ('Jrue', 'Holiday', 34, 2009, 17), ('Derrick', 'White', 30, 2017, 29), ('Jaylen', 'Brown', 28, 2016, 3), ('Jayson', 'Tatum', 26, 2017, 3), ('Kristaps', 'Porzingis', 29, 2015, 4);




INSERT INTO Celtics25.Stats (PlayerID, Minutes, PPG, APG, RPG, SPG, BPG) VALUES  
((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Kristaps' LIMIT 1),   
 28.1, 18.7, 1.6, 7.1, 0.7, 1.4), ((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Jrue' LIMIT 1),   
 30.6, 11.6, 3.8, 4.4, 1.0, 0.4), ((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Derrick' LIMIT 1),   
 33.9, 16.1, 4.1, 4.4, 0.9, 1.2), ((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Jaylen' LIMIT 1),   
 35.6, 23.2, 4.8, 5.9, 1.3, 0.3), ((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Jayson' LIMIT 1),   
 36.5, 27.4, 5.5, 9.2, 1.3, 0.5); 




INSERT INTO Celtics25.Accolades (PlayerID, Championships, MVPs, ROTY, DPOY, AllStars, AllNBAs) VALUES ((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Jrue' LIMIT 1), 2, 0, false, 0, 2, 0), ((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Derrick' LIMIT 1), 1, 0, false, 0, 0, 0), ((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Jaylen' LIMIT 1), 1, 0, false, 0, 3, 1), ((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Jayson' LIMIT 1), 1, 0, false, 0, 5, 4), ((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Kristaps' LIMIT 1), 1, 0, false, 0, 1, 0);


INSERT INTO Celtics25.Contracts (PlayerID, ContractSalary, ContractYears) VALUES ((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Jrue'), 16000000, 2),  ((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Derrick'), 10000000, 4),  ((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Jaylen'), 30000000, 5),  ((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Jayson'), 32000000, 5),  ((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Kristaps'), 20000000, 3); 


INSERT INTO Celtics25.Teams (TeamName) VALUES   
('Atlanta Hawks'),  
('Boston Celtics'),  
('Brooklyn Nets'),  
('Charlotte Hornets'),  
('Chicago Bulls'),  
('Cleveland Cavaliers'),  
('Dallas Mavericks'),  
('Denver Nuggets'),  
('Detroit Pistons'),  
('Golden State Warriors'),  
('Houston Rockets'),  
('Indiana Pacers'),  
('Los Angeles Clippers'),  
('Los Angeles Lakers'),  
('Memphis Grizzlies'),  
('Miami Heat'),  
('Milwaukee Bucks'),  
('Minnesota Timberwolves'),  
('New Orleans Pelicans'),  
('New York Knicks'),  
('Oklahoma City Thunder'),  
('Orlando Magic'),  
('Philadelphia 76ers'),  
('Phoenix Suns'),  
('Portland Trail Blazers'),  
('Sacramento Kings'),  
('San Antonio Spurs'),  
('Toronto Raptors'),  
('Utah Jazz'),  
('Washington Wizards'); 


INSERT INTO Celtics25.FormerTeams (PlayerID, TeamID, YearJoined) VALUES  
((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Jrue'), (SELECT TeamID FROM Celtics25.Teams WHERE TeamName = 'Philadelphia 76ers'), 2009),  
((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Jrue'), (SELECT TeamID FROM Celtics25.Teams WHERE TeamName = 'New Orleans Pelicans'), 2013),  
((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Jrue'), (SELECT TeamID FROM Celtics25.Teams WHERE TeamName = 'Milwaukee Bucks'), 2020),  
((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Jrue'), (SELECT TeamID FROM Celtics25.Teams WHERE TeamName = 'Boston Celtics'), 2023),  


((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Derrick'), (SELECT TeamID FROM Celtics25.Teams WHERE TeamName = 'San Antonio Spurs'), 2017),  
((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Derrick'), (SELECT TeamID FROM Celtics25.Teams WHERE TeamName = 'Boston Celtics'), 2022),  


((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Jaylen'), (SELECT TeamID FROM Celtics25.Teams WHERE TeamName = 'Boston Celtics'), 2016),  


((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Jayson'), (SELECT TeamID FROM Celtics25.Teams WHERE TeamName = 'Boston Celtics'), 2017),  


((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Kristaps'), (SELECT TeamID FROM Celtics25.Teams WHERE TeamName = 'New York Knicks'), 2015),  
((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Kristaps'), (SELECT TeamID FROM Celtics25.Teams WHERE TeamName = 'Dallas Mavericks'), 2019),  
((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Kristaps'), (SELECT TeamID FROM Celtics25.Teams WHERE TeamName = 'Washington Wizards'), 2021),  
((SELECT PlayerID FROM Celtics25.Players WHERE FirstName = 'Kristaps'), (SELECT TeamID FROM Celtics25.Teams WHERE TeamName = 'Boston Celtics'), 2023);