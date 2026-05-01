select  c.CustomerID,
        c.AccountNumber,
        c.CustomerType,      
        p.FullName,
        c.StoreName,
        t.Name as TerritoryName
from staging.customer c
left join warehouse.persons p on c.PersonID = p.BusinessEntityID
left join Sales.SalesTerritory t  on c.TerritoryID = t.TerritoryID