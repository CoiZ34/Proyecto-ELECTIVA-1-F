CREATE TABLE dw.FactVentas (
    FactKey INT IDENTITY(1,1) PRIMARY KEY,
    ClienteKey INT,
    ProductoKey INT,
    FechaKey INT,
    Cantidad INT,
    Precio DECIMAL(10,2),
    Total DECIMAL(10,2)
);
GO