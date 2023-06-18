/****** Object:  Table [dbo].[TablaHechos]    Script Date: 6/6/2022 11:17:35 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TablaHechos](
	[ID_Caso] [int] NOT NULL,
	[ID_Sexo] [nchar](1) NOT NULL,
	[CodMunicipio] [int] NOT NULL,
	[Edad] [tinyint] NOT NULL,
	[FechaRepWeb] [date] NOT NULL,
	[FechaDiagnostico] [date] NULL,
	[Estado] [nvarchar](15) NULL,
	[Tipo_Contagio] [nvarchar](15) NULL,
	[Condicion] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_TablaHechos] PRIMARY KEY CLUSTERED 
(
	[ID_Caso] ASC,
	[ID_Sexo] ASC,
	[CodMunicipio] ASC,
	[Edad] ASC,
	[FechaRepWeb] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TablaHechos]  WITH CHECK ADD  CONSTRAINT [FK_TablaHechos_DimEdad] FOREIGN KEY([Edad])
REFERENCES [dbo].[DimEdad] ([Edad])
GO

ALTER TABLE [dbo].[TablaHechos] CHECK CONSTRAINT [FK_TablaHechos_DimEdad]
GO

ALTER TABLE [dbo].[TablaHechos]  WITH CHECK ADD  CONSTRAINT [FK_TablaHechos_DimFecha] FOREIGN KEY([FechaRepWeb])
REFERENCES [dbo].[DimTiempo] ([Fecha])
GO

ALTER TABLE [dbo].[TablaHechos] CHECK CONSTRAINT [FK_TablaHechos_DimFecha]
GO

ALTER TABLE [dbo].[TablaHechos]  WITH CHECK ADD  CONSTRAINT [FK_TablaHechos_DimSexo] FOREIGN KEY([ID_Sexo])
REFERENCES [dbo].[DimSexo] ([ID_Sexo])
GO

ALTER TABLE [dbo].[TablaHechos] CHECK CONSTRAINT [FK_TablaHechos_DimSexo]
GO

ALTER TABLE [dbo].[TablaHechos]  WITH CHECK ADD  CONSTRAINT [FK_TablaHechos_DimUbicacion] FOREIGN KEY([CodMunicipio])
REFERENCES [dbo].[DimUbicacion] ([CodMunicipio])
GO

ALTER TABLE [dbo].[TablaHechos] CHECK CONSTRAINT [FK_TablaHechos_DimUbicacion]
GO

