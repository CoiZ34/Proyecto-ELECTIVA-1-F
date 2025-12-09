CREATE TABLE dw.DimProducto (
    ProductoKey INT IDENTITY(1,1) PRIMARY KEY,
    IdProducto INT UNIQUE NOT NULL,
    Nombre VARCHAR(150),
    Categoria VARCHAR(100),
    Precio DECIMAL(18,2)
);