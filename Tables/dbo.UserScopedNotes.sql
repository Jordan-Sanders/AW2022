CREATE TABLE [dbo].[UserScopedNotes] (
  [Id] [int] IDENTITY,
  [UserName] [sysname] NOT NULL,
  [Payload] [nvarchar](100) NULL,
  PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO