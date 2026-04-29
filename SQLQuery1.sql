CREATE TABLE Item (
    ItemID INT PRIMARY KEY IDENTITY,
    ItemName NVARCHAR(100),
    Size NVARCHAR(50)
)

CREATE TABLE Agent (
    AgentID INT PRIMARY KEY IDENTITY,
    AgentName NVARCHAR(100),
    Address NVARCHAR(200)
)

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY,
    OrderDate DATETIME,
    AgentID INT FOREIGN KEY REFERENCES Agent(AgentID)
)

CREATE TABLE OrderDetail (
    ID INT PRIMARY KEY IDENTITY,
    OrderID INT FOREIGN KEY REFERENCES Orders(OrderID),
    ItemID INT FOREIGN KEY REFERENCES Item(ItemID),
    Quantity INT,
    UnitAmount FLOAT
)

CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY,
    UserName NVARCHAR(100),
    Email NVARCHAR(100),
    Password NVARCHAR(100)
)



INSERT INTO Users VALUES ('admin','admin@gmail.com','123')

INSERT INTO Item VALUES (N'Áo', N'L')
INSERT INTO Item VALUES (N'Quần', N'M')

INSERT INTO Agent VALUES (N'Agent A', N'HCM')
INSERT INTO Agent VALUES (N'Agent B', N'Hà Nội')

