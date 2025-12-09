CREATE OR ALTER PROCEDURE dw.sp_CargarDimProducto
AS
BEGIN
    TRUNCATE TABLE dw.DimProducto;

    INSERT INTO dw.DimProducto (IdProducto, Nombre, Categoria, Precio)
    SELECT IdProducto, Nombre, Categoria, Precio
    FROM Productos;
END;