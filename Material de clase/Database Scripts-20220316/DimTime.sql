
CREATE TABLE [dbo].[DimTime](
	[Date] [date] NOT NULL,
	[Day] [int] NULL,
	[Month] [int] NULL,
	[Year] [int] NULL,
	[Week] [int] NULL,
	[Quarter] [int] NULL,
	[Weekday] [int] NULL,
 CONSTRAINT [PK__DimeTime__77387D06BEDE80F4] PRIMARY KEY CLUSTERED 
(
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


