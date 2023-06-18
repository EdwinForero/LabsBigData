/****** Consulta Casos de Covid por Departamento agrupado por sexo******/
SELECT MAX(u.NombreDepartamento) AS [Nombre Departamento], COUNT(u.CodDepartamento) AS [Número de casos], MAX(y.ID_Sexo) AS Sexo
FROM TabHechos AS y
JOIN DimUbicacion AS u
ON y.CodMunicipio = u.CodMunicipio
GROUP BY y.ID_Sexo, u.CodDepartamento
/*ORDER BY [Número de casos] DESC*/