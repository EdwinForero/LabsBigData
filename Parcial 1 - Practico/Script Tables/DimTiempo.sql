/****** Object:  Table [dbo].[DimTiempo]    Script Date: 4/3/2022 9:18:44 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimTiempo](
	[Fecha] [date] NOT NULL,
	[Dia] [tinyint] NULL,
	[Mes] [tinyint] NULL,
	[Anho] [smallint] NULL,
	[Semana] [tinyint] NULL,
	[Trimestre] [tinyint] NULL,
	[Dia_Semana] [tinyint] NULL,
 CONSTRAINT [PK_DimTiempo] PRIMARY KEY CLUSTERED 
(
	[Fecha] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

