CREATE ROLE [role_sales]
GO

EXEC sp_addrolemember N'role_sales', N'emma_user'
GO

EXEC sp_addrolemember N'role_sales', N'role_hr'
GO