CREATE TABLE dw.DimCliente (
    ClienteKey INT IDENTITY(1,1) PRIMARY KEY,
    IdCliente INT UNIQUE NOT NULL,
    Nombre VARCHAR(150),
    Email VARCHAR(150),
    Telefono VARCHAR(50)
);