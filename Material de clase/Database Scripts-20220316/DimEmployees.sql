
CREATE TABLE [dbo].[DimEmployees](
	[EmployeeID] [int] NOT NULL,
	[EmployeeLastName] [nvarchar](20) NOT NULL,
	[EmployeeFirstName] [nvarchar](10) NOT NULL,
	[EmployeeTitle] [nvarchar](30) NULL,
	[EmployeeBirthDate] [datetime] NULL,
	[EmployeeHireDate] [datetime] NULL,
	[EmployeeAddress] [nvarchar](60) NULL,
	[EmployeeCity] [nvarchar](15) NULL,
	[EmployeePostalCode] [nvarchar](10) NULL,
	[EmployeeCountry] [nvarchar](15) NULL,
	[EmployeePhone] [nvarchar](24) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


