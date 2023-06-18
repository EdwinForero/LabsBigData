/****** Object:  Table [dbo].[DimUbicacion]    Script Date: 6/6/2022 11:02:58 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimUbicacion](
	[CodMunicipio] [int] NOT NULL,
	[NombreMunicipio] [nvarchar](50) NULL,
 CONSTRAINT [PK_DimUbicacion] PRIMARY KEY CLUSTERED 
(
	[CodMunicipio] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

