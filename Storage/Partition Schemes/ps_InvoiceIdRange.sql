CREATE PARTITION SCHEME [ps_InvoiceIdRange]
  AS PARTITION [pf_InvoiceIdRange] TO ([FG_Current], [FG_History_1], [FG_History_2], [FG_History_3])
GO