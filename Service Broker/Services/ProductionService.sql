CREATE SERVICE [ProductionService]
ON QUEUE [dbo].[ProductionQueue] (
  [ProductionContract]
)
GO