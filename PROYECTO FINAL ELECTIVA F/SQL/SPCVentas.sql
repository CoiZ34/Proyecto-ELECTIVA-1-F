CREATE OR ALTER PROCEDURE dw.sp_CargarFactVentas
AS
BEGIN
    TRUNCATE TABLE dw.FactVentas;

    INSERT INTO dw.FactVentas
    (
        ClienteKey,
        ProductoKey,
        FechaKey,
        Cantidad,
        Precio,
        Total
    )
    SELECT  
        f.IdCliente,
        v.IdProducto,
        df.FechaKey,
        v.Cantidad,
        v.Precio,
        v.Total
    FROM Ventas v
    INNER JOIN Facturas f 
        ON v.IdFactura = f.IdFactura
    INNER JOIN dw.DimFecha df
        ON df.Fecha = f.Fecha;
END;
GO
