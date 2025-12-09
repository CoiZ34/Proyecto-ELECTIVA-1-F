
USE SistemaVentasPF1;
GO


CREATE TABLE dbo.Customers(
  CustomerID INT           NOT NULL PRIMARY KEY,
  FirstName  VARCHAR(100)  NOT NULL,
  LastName   VARCHAR(100)  NOT NULL,
  Email      VARCHAR(200)  NULL,
  City       VARCHAR(100)  NULL,
  Country    VARCHAR(100)  NULL
);


CREATE TABLE dbo.Products(
  ProductID   INT           NOT NULL PRIMARY KEY,
  ProductName VARCHAR(200)  NOT NULL,
  Category    VARCHAR(100)  NULL,
  Price       DECIMAL(18,2) NOT NULL CHECK (Price >= 0)
);


CREATE TABLE dbo.Orders(
  OrderID    INT          NOT NULL PRIMARY KEY,
  CustomerID INT          NOT NULL
    FOREIGN KEY REFERENCES dbo.Customers(CustomerID),
  OrderDate  DATE         NOT NULL,
  Status     VARCHAR(50)  NULL
);


CREATE TABLE dbo.OrderDetails(
  OrderID    INT NOT NULL
    FOREIGN KEY REFERENCES dbo.Orders(OrderID),
  ProductID  INT NOT NULL
    FOREIGN KEY REFERENCES dbo.Products(ProductID),
  Quantity   INT NOT NULL CHECK (Quantity > 0),
  UnitPrice  DECIMAL(18,2) NOT NULL CHECK (UnitPrice >= 0),
  TotalPrice DECIMAL(18,2) NOT NULL CHECK (TotalPrice >= 0),
  CONSTRAINT PK_OrderDetails PRIMARY KEY (OrderID, ProductID)
);
