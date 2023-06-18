
CREATE TABLE [dbo].[DimCustomers](
	[CustomerID] [nchar](5) NOT NULL,
	[CustomerName] [nvarchar](40) NOT NULL,
	[CustomerAddress] [nvarchar](60) NULL,
	[CustomerCity] [nvarchar](15) NULL,
	[CustomerCountry] [nvarchar](15) NULL,
	[CustomerPhone] [nvarchar](24) NULL,
	[CustomerFax] [nvarchar](24) NULL,
	[CustomerPostalCode] [nvarchar](10) NULL,
	[CustomerContactName] [nvarchar](30) NULL,
	[CustomerContactTitle] [nvarchar](30) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


