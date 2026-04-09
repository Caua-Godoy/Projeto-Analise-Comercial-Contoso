SELECT 
	CAST(fs.DateKey AS date) AS DataVenda,
	fs.SalesQuantity * fs.UnitPrice AS ReceitaBruta,
	fs.SalesQuantity * fs.UnitCost AS Custo,
	fs.SalesQuantity * fs.UnitPrice - fs.SalesQuantity * fs.UnitCost AS LucroBruto,
	SalesQuantity AS QuantidadeVendida,
	ChannelName AS Canal,
	StoreName AS Loja,
	RegionCountryName AS Regiao
FROM FactSales fs
JOIN DimChannel dc ON dc.ChannelKey = fs.channelKey
JOIN DimStore ds ON ds.StoreKey = fs.StoreKey
JOIN DimGeography dg ON dg.GeographyKey = ds.GeographyKey