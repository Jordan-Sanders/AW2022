CREATE SERVICE [SalesOrderProcessingService]
ON QUEUE [dbo].[SalesOrderProcessingQueue] (
  [SalesOrderProcessingContract]
)
GO