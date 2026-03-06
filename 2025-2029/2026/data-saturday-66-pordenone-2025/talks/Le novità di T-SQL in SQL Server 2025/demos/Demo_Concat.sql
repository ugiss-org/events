SELECT (LastName || ',' + SPACE(1) || SUBSTRING(FirstName, 1, 1) || '.') AS Name, e.JobTitle
FROM Person.Person AS p
    JOIN HumanResources.Employee AS e
    ON p.BusinessEntityID = e.BusinessEntityID
WHERE e.JobTitle LIKE 'Vice%'
ORDER BY LastName ASC;
GO

SELECT 
(LastName || ',' + SPACE(1) || [MiddleName] || ',' + SPACE(1) || SUBSTRING(FirstName, 1, 1) || '.') AS Name
FROM Person.Person AS p

ORDER BY LastName ASC;
GO