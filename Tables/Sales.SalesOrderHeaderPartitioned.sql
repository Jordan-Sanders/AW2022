CREATE TABLE [Sales].[SalesOrderHeaderPartitioned] (
  [SalesOrderID] [int] NOT NULL,
  [OrderDate] [date] NULL,
  [DueDate] [date] NULL,
  [ShipDate] [date] NULL,
  [Status] [int] NULL,
  [OnlineOrderFlag] [bit] NULL,
  [SalesOrderNumber] [varchar](25) NULL,
  [PurchaseOrderNumber] [varchar](25) NULL,
  [AccountNumber] [varchar](15) NULL,
  [CustomerID] [int] NULL,
  [SalesPersonID] [int] NULL,
  [TerritoryID] [int] NULL,
  [BillToAddressID] [int] NULL,
  [ShipToAddressID] [int] NULL,
  [ShipMethodID] [int] NULL,
  [CreditCardID] [int] NULL,
  [CreditCardApprovalCode] [varchar](15) NULL,
  [CurrencyRateID] [int] NULL,
  [SubTotal] [money] NULL,
  [TaxAmt] [money] NULL,
  [Freight] [money] NULL,
  [TotalDue] [money] NULL,
  [Comment] [varchar](128) NULL,
  [ModifiedDate] [datetime] NULL,
  PRIMARY KEY CLUSTERED ([SalesOrderID]) ON [MyPartitionScheme] ([SalesOrderID])
)
ON [MyPartitionScheme] ([SalesOrderID])
GO