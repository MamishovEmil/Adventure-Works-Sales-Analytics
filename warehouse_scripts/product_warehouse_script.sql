select	p.ProductID,
		p.Name as ProductName,
		ps.Name SubcategoryName,
		c.Name as CategoryName
from [Production].[Product] p
left join [Production].ProductSubcategory ps on p.ProductSubcategoryID = ps.ProductSubcategoryID
left join [Production].ProductCategory c on ps.ProductCategoryID = c.ProductCategoryID

