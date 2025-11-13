SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[ufnGetFullName](@BusinessEntityID INT)
RETURNS NVARCHAR(200)
AS
BEGIN
    DECLARE @FullName NVARCHAR(200);

    SELECT @FullName = FirstName + ' ' + LastName
    FROM Person.Person
    WHERE BusinessEntityID = @BusinessEntityID;

    RETURN @FullName;
END;
GO