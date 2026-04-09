SELECT 
	ProductName AS Produto,
	ProductCategoryName AS Categoria,
	ProductSubcategoryName AS Subcategoria,
	BrandName AS Marca,
	fs.UnitPrice AS PrecoUnitario,
	fs.UnitCost AS CustoUnitario,
	SUM(SalesQuantity) As QuantidadeVendida,
	SUM(fs.SalesQuantity * fs.UnitPrice) AS Receita,
	SUM(fs.SalesQuantity * fs.UnitPrice) - SUM(fs.SalesQuantity * fs.UnitCost) AS LucroBruto
FROM FactSales fs
JOIN DimProduct dp ON fs.ProductKey = dp.ProductKey
JOIN DimProductSubcategory ps ON ps.ProductSubcategoryKey = dp.ProductSubcategoryKey
JOIN DimProductCategory pc ON pc.ProductCategoryKey = ps.ProductCategoryKey
GROUP BY 
	ProductName,
	ProductCategoryName,
	ProductSubcategoryName,
	BrandName,
	fs.UnitPrice,
	fs.UnitCost
