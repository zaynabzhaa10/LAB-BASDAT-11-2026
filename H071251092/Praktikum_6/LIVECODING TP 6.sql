select productcode, productName, productLine, buyPrice,
       (select avg(buyPrice)
        from products p2
        where p2.productline = p1.productline) as rata_rata
from products p1
where buyprice > 
(
    select avg(buyprice)
    from products p2
    where p2.productLine = p1.productLine
)
order by productLine asc, buyprice desc;


