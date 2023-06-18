/****** Object:  Table [dbo].[TabHechos]    Script Date: 4/3/2022 9:55:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabHechos](
	[ID_Caso] [int] NOT NULL,
	[ID_Sexo] [nchar](1) NOT NULL,
	[CodMunicipio] [int] NOT NULL,
	[Fecha_RepWeb] [date] NOT NULL,
	[Edad] [tinyint] NULL,
	[Estado] [nvarchar](10) NULL,
	[Tipo_Contagio] [nvarchar](12) NULL,
	[Fecha_Notificacion] [date] NULL,
 CONSTRAINT [PK_TabHechos] PRIMARY KEY CLUSTERED 
(
	[ID_Caso] ASC,
	[ID_Sexo] ASC,
	[CodMunicipio] ASC,
	[Fecha_RepWeb] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TabHechos]  WITH CHECK ADD  CONSTRAINT [FK_TabHechos_DimSexo] FOREIGN KEY([ID_Sexo])
REFERENCES [dbo].[DimSexo] ([ID_Sexo])
GO

ALTER TABLE [dbo].[TabHechos] CHECK CONSTRAINT [FK_TabHechos_DimSexo]
GO

ALTER TABLE [dbo].[TabHechos]  WITH CHECK ADD  CONSTRAINT [FK_TabHechos_DimTiempo] FOREIGN KEY([Fecha_RepWeb])
REFERENCES [dbo].[DimTiempo] ([Fecha])
GO

ALTER TABLE [dbo].[TabHechos] CHECK CONSTRAINT [FK_TabHechos_DimTiempo]
GO

ALTER TABLE [dbo].[TabHechos]  WITH CHECK ADD  CONSTRAINT [FK_TabHechos_DimUbicacion] FOREIGN KEY([CodMunicipio])
REFERENCES [dbo].[DimUbicacion] ([CodMunicipio])
GO

ALTER TABLE [dbo].[TabHechos] CHECK CONSTRAINT [FK_TabHechos_DimUbicacion]
GO

