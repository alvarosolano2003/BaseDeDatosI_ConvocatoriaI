use master;
GO

use AdventureWorks2019;
GO

CREATE PROCEDURE usp_FindSalesByDate(@StarDate DATE, @EndDate DATE)
AS
	IF(@StarDate = NULL AND @EndDate = NULL)
	SELECT ProductID, [Name], ReorderPoint, StandardCost FROM Production.Product WHERE Product.SellEndDate = CONVERT(DATE, GETDATE())
	ELSE
	SELECT ProductID, [Name], ReorderPoint, StandardCost FROM Production.Product WHERE Production.Product.SellStartDate = @StarDate AND Production.Product.SellEndDate = @EndDate

	RETURN;
GO

CREATE FUNCTION uf_FindEmployeeByDate(@StarDate DATE, @EndDate DATE) RETURNS TABLE AS 
RETURN(
	SELECT Id, 
		)

BEGIN
	DECLARE @EmployeeSales AS TABLE
	(Id INT, Nombre VARCHAR(50), CantidadVendida SMALLINT, MontoDeVenta MONEY)

	INNER JOINE @EmployeeSales(Id, )

	RETURN @EmployeeSales;
END;