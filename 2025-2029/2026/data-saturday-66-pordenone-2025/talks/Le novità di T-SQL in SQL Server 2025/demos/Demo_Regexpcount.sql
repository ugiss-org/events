USE AdventureWorks2025;
GO

--Count how many times the letter a appears in each product name
SELECT NAME,
       REGEXP_COUNT(NAME, 'a') AS A_COUNT
FROM[Production].[Product] ;

-- Count how many products have a name that contains three consecutive consonants, ignoring case.
SELECT COUNT(*)
FROM [Production].[Product]
WHERE REGEXP_COUNT(NAME, '[^aeiou]{3}', 1, 'i') > 0;