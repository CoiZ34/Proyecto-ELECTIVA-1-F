CREATE SCHEMA dw;
GO

CREATE TABLE dw.DimCliente (
    ClienteKey INT IDENTITY(1,1) PRIMARY KEY,
    IdCliente INT,
    Nombre VARCHAR(150),
    Email VARCHAR(150),
    Telefono VARCHAR(50)
);
GO

CREATE TABLE dw.DimProducto (
    ProductoKey INT IDENTITY(1,1) PRIMARY KEY,
    IdProducto INT,
    Nombre VARCHAR(150),
    Precio DECIMAL(10,2),
    Categoria VARCHAR(150)
);
GO

CREATE TABLE dw.DimFecha (
    FechaKey INT IDENTITY(1,1) PRIMARY KEY,
    Fecha DATE
);
GO
