TRUNCATE TABLE dw.DimCliente;
TRUNCATE TABLE dw.DimProducto;
TRUNCATE TABLE dw.DimFecha;

INSERT INTO dw.DimCliente (IdCliente, Nombre, Email, Telefono)
SELECT IdCliente, Nombre, Email, Telefono
FROM Clientes;

INSERT INTO dw.DimProducto (IdProducto, Nombre, Precio, Categoria)
SELECT IdProducto, Nombre, Precio, Category
FROM Products;

INSERT INTO dw.DimFecha (Fecha)
SELECT DISTINCT Fecha
FROM Facturas;