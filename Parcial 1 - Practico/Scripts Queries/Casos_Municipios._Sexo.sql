/****** Consulta Casos de Covid por Municipio agrupado por sexo******/
SELECT MAX(u.NombreMunicipio) AS [Nombre Municipio], MAX(u.NombreDepartamento) AS [Nombre Departamento], COUNT(u.CodMunicipio) AS [N�mero de casos], y.ID_Sexo AS Sexo
FROM TabHechos AS y
JOIN DimUbicacion AS u
ON y.CodMunicipio = u.CodMunicipio
GROUP BY  y.ID_Sexo, y.CodMunicipio
/*ORDER BY [N�mero de casos] DESC*/