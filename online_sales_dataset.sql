CREATE TABLE online_sales (
    InvoiceNo INT,
    InvoiceDate DATETIME,
    Quantity INT,
    UnitPrice FLOAT
);


SELECT
    YEAR(InvoiceDate) AS order_year,
    MONTH(InvoiceDate) AS order_month,
    SUM(Quantity * UnitPrice) AS revenue,
    COUNT(DISTINCT InvoiceNo) AS order_volume
FROM online_sales
GROUP BY order_year, order_month
ORDER BY order_year, order_month;
