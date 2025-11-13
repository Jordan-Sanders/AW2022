CREATE SERVICE [DbDdlEventService]
ON QUEUE [dbo].[DbDdlEventQueue] (
  [http://schemas.microsoft.com/SQL/Notifications/PostEventNotification]
)
GO