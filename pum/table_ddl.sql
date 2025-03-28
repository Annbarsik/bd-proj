CREATE TABLE Museum (
    ID_Museum SERIAL PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    Opening_hours TIMESTAMP NOT NULL
);

CREATE TABLE Pavilion (
    ID_Pavilion SERIAL PRIMARY KEY,
    ID_Museum INTEGER,
    Floor INTEGER NOT NULL,
    Number INTEGER NOT NULL,
    FOREIGN KEY (ID_Museum) REFERENCES Museum(ID_Museum)
);

CREATE TABLE Exhibit (
    ID_Exhibit SERIAL PRIMARY KEY,
    ID_Pavilion INTEGER,
    Country VARCHAR(100) NOT NULL,
    Title VARCHAR(100) NOT NULL,
    FOREIGN KEY (ID_Pavilion) REFERENCES Pavilion(ID_Pavilion)
);

CREATE TABLE Visitor (
    ID_Visitor SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Phone INTEGER NOT NULL,
    Category VARCHAR(100) NOT NULL
);

CREATE TABLE Ticket (
    ID_Ticket SERIAL PRIMARY KEY,
    ID_Pavilion INTEGER,
    ID_Visitor INTEGER,
    price INTEGER CHECK (price > 0),
    FOREIGN KEY (ID_Pavilion) REFERENCES Pavilion(ID_Pavilion),
    FOREIGN KEY (ID_Visitor) REFERENCES Visitor(ID_Visitor)
);

CREATE TABLE Guided_tours (
    ID_Guided_tours SERIAL PRIMARY KEY,
    ID_Pavilion INTEGER,
    Name VARCHAR(100) NOT NULL,
    Middle_name VARCHAR(100) NOT NULL,
    FOREIGN KEY (ID_Pavilion) REFERENCES Pavilion(ID_Pavilion)
);

CREATE TABLE Visitor_history (
    ID_history SERIAL PRIMARY KEY,
    ID_Visitor INTEGER,
    Phone INTEGER NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Date DATE NOT NULL,
    FOREIGN KEY (ID_Visitor) REFERENCES Visitor(ID_Visitor)
);
