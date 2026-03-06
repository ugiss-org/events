USE [AdventureWorks2025];
GO

SELECT *
FROM [Person].[Person]
WHERE REGEXP_LIKE ([FirstName], '^A.*Y$', 'i');