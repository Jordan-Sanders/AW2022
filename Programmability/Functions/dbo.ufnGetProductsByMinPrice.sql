SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[ufnGetProductsByMinPrice](@MinListPrice money)
RETURNS TABLE
AS
RETURN
(
    SELECT ProductID, Name, ProductNumber, ListPrice
    FROM Production.Product
    WHERE ListPrice >= @MinListPrice
);

GO