-- Entrambi gli statements fdanno errore per superamento dell'intervallo bigint
DECLARE @datetime2 AS DATETIME2;
SET @datetime2 = '2025-11-01 01:01:01.1111111';
SELECT DATEADD(nanosecond, 9223372036854775808, @datetime2);
SELECT DATEADD(nanosecond, -9223372036854775809, @datetime2);
GO

-- rispettando i limiti, invece:
DECLARE @datetime2 AS DATETIME2;
SET @datetime2 = '2025-11-01 01:01:01.1111111';
SELECT DATEADD(nanosecond, 9223372036854775807, @datetime2);
SELECT DATEADD(nanosecond, -9223372036854775808, @datetime2);
GO

SELECT SalesOrderID,
       OrderDate,
       DATEADD(day, 2, OrderDate) AS PromisedShipDate
FROM Sales.SalesOrderHeader;
