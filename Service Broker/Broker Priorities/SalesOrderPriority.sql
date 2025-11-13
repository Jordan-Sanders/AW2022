CREATE BROKER PRIORITY [SalesOrderPriority]
FOR CONVERSATION
SET (
     CONTRACT_NAME = [SalesOrderProcessingContract],
     LOCAL_SERVICE_NAME = [SalesOrderProcessingService],
     REMOTE_SERVICE_NAME = 'SalesOrderRemoteService'
);
GO