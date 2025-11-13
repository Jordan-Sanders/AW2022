SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[ufnGetProductOrderSummary] (@ProductID INT)
RETURNS @OrderSummary TABLE (
  SalesOrderID INT
 ,OrderDate DATETIME
 ,TotalOrderQty INT
)
AS
BEGIN
  INSERT INTO @OrderSummary (SalesOrderID, OrderDate, TotalOrderQty)
    SELECT
      soh.SalesOrderID
     ,soh.OrderDate
     ,SUM(sod.OrderQty) AS TotalOrderQty
    FROM Sales.SalesOrderDetail sod
    INNER JOIN Sales.SalesOrderHeader soh
      ON sod.SalesOrderID = soh.SalesOrderID
    WHERE sod.ProductID = @ProductID
    GROUP BY soh.SalesOrderID
            ,soh.OrderDate;

  RETURN;
END;
GO