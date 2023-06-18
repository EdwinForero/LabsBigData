/****** Consulta Casos de Covid Por Municipio ******/
SELECT MAX(u.NombreDepartamento) AS [Nombre Departamento], MAX(u.NombreMunicipio) AS [Nombre Municipio], COUNT(u.CodMunicipio) AS [N�mero de casos]
FROM TabHechos AS y
JOIN DimUbicacion AS u
ON y.CodMunicipio = u.CodMunicipio
GROUP BY y.CodMunicipio
/*ORDER BY [N�mero de casos] DESC*/
