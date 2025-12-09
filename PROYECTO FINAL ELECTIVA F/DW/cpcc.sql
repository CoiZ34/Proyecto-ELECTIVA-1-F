CREATE OR ALTER PROCEDURE dw.sp_CargarDimCliente
AS
BEGIN
    TRUNCATE TABLE dw.DimCliente;

    INSERT INTO dw.DimCliente (IdCliente, Nombre, Email, Telefono)
    SELECT IdCliente, Nombre, Email, Telefono
    FROM Clientes;
END;