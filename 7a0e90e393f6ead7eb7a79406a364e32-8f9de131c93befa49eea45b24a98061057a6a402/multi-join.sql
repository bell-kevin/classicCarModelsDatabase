SELECT
    p.productName,
    pl.productLine,
    c.customerName
FROM
    productlines AS pl
INNER JOIN products AS p
ON
    pl.productLine = p.productLine
INNER JOIN orderdetails AS od USING(productCode)
INNER JOIN orders AS o USING(orderNumber)
INNER JOIN customers AS c USING(customerNumber)
INNER JOIN employees AS e
ON
    c.salesRepEmployeeNumber = e.employeeNumber
INNER JOIN offices AS off USING(officeCode)
WHERE
    pl.productLine = 'Planes' AND off.city = 'Sydney';
