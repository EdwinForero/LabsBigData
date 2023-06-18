/****** Consulta Casos de Covid Por Departamento ******/
SELECT MAX(u.NombreDepartamento) AS [Nombre Departamento], COUNT(u.CodDepartamento) AS [N�mero de casos]
FROM TabHechos AS y
JOIN DimUbicacion AS u
ON y.CodMunicipio = u.CodMunicipio
GROUP BY u.CodDepartamento
/*ORDER BY [N�mero de casos] DESC*/

