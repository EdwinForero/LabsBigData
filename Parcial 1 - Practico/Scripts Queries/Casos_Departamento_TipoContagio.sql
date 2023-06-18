/****** Consulta Casos de Covid por Departamento agrupado por Tipo de Contagio******/
SELECT MAX(u.NombreDepartamento) AS [Nombre Departamento], COUNT(u.CodDepartamento) AS [Número de casos], MAX(y.Tipo_Contagio) AS [Tipo de Contagio]
FROM TabHechos AS y
JOIN DimUbicacion AS u
ON y.CodMunicipio = u.CodMunicipio
GROUP BY u.CodDepartamento, y.Tipo_Contagio
/*ORDER BY [Número de casos] DESC*/