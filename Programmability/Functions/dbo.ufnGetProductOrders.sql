SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE FUNCTION [dbo].[ufnGetProductOrders] (@ProductID INT)
RETURNS TABLE
AS
  RETURN
  (
  SELECT
    sod.SalesOrderID
   ,sod.ProductID
   ,sod.OrderQty
   ,soh.OrderDate
  FROM Sales.SalesOrderDetail sod
  INNER JOIN Sales.SalesOrderHeader soh
    ON sod.SalesOrderID = soh.SalesOrderID
  WHERE sod.ProductID = @ProductID
  );
GO