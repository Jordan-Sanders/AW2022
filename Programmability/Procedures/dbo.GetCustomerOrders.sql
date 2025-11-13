SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[GetCustomerOrders]
  @CustomerID INT
AS
BEGIN
   SET NOCOUNT ON;

   SELECT OrderID, OrderDate, OrderStatus, TotalAmount
   FROM Orders
   WHERE CustomerID = @CustomerID
   OPTION (RECOMPILE); -- optional, to handle parameter sniffing
END;
GO