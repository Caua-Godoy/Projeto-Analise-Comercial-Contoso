SELECT
    dc.CustomerKey AS ChaveCliente,
    dc.FirstName AS PrimeiroNome,
    dc.Gender AS Genero,
    dc.BirthDate AS DataNascimento,
    dg.CityName AS Cidade,
    dg.RegionCountryName AS Pais,
    SUM(fos.SalesAmount) AS TotalGasto,
    COUNT(fos.SalesOrderNumber) AS NumeroDeCompras
FROM FactOnlineSales fos
JOIN DimCustomer dc ON dc.CustomerKey  = fos.CustomerKey
JOIN DimGeography dg ON dg.GeographyKey = dc.GeographyKey
GROUP BY
    dc.CustomerKey,
    dc.FirstName,
    dc.Gender,
    dc.BirthDate,
    dg.CityName,
    dg.RegionCountryName