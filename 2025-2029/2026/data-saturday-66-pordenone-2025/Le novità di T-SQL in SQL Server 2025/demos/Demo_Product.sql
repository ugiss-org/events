USE [AdventureWorks2025];
GO

SELECT PRODUCT(UnitPrice) AS ProductOfPrices
FROM Purchasing.PurchaseOrderDetail
WHERE ModifiedDate <= '2023-05-24'
GROUP BY ProductId;

SELECT finInstrument,
       PRODUCT(1 + rateOfReturn) OVER (PARTITION BY finInstrument) AS CompoundedReturn
FROM (VALUES (0.1626, 'instrumentA'),
             (0.0483, 'instrumentB'),
             (0.2689, 'instrumentC'),
             (-0.1944, 'instrumentA'),
             (0.2423, 'instrumentA')
) AS MyTable(rateOfReturn, finInstrument);