
CREATE TABLE [dbo].[FactSales](
	[SaleID] [int] NOT NULL,
	[CustomerID] [nchar](5) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[SaleDate] [date] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ShipperID] [int] NOT NULL,
	[SaleShippedDate] [datetime] NOT NULL,
	[SaleShipFreight] [money] NOT NULL,
	[SaleDetailUnitPrice] [money] NOT NULL,
	[SaleDetailQuantity] [smallint] NOT NULL,
	[SaleDetailDiscount] [real] NOT NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[SaleID] ASC,
	[CustomerID] ASC,
	[EmployeeID] ASC,
	[SaleDate] ASC,
	[ProductID] ASC,
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactSales] ADD  CONSTRAINT [DF_FactSales_Freight]  DEFAULT ((0)) FOR [SaleShipFreight]
GO

ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimCustomers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[DimCustomers] ([CustomerID])
GO

ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimCustomers]
GO

ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimEmployees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[DimEmployees] ([EmployeeID])
GO

ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimEmployees]
GO

ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimeTime] FOREIGN KEY([SaleDate])
REFERENCES [dbo].[DimTime] ([Date])
GO

ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimeTime]
GO

ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimProducts] FOREIGN KEY([ProductID])
REFERENCES [dbo].[DimProducts] ([ProductID])
GO

ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimProducts]
GO

ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimShippers] FOREIGN KEY([ShipperID])
REFERENCES [dbo].[DimShippers] ([ShipperID])
GO

ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimShippers]
GO


