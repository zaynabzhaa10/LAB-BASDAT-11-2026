select
	c.customerName,
	SUM(od.quantityOrdered * od.priceEach) as total_transaksi,
	COUNT(distinct o_shipped.orderNumber) as total_shipped_orders,
	ROUND(SUM(od.quantityOrdered * od.priceEach) / COUNT(distinct o.orderNumber), 2) as avg_transaction_per_order
from
	customers c
join orders o on
	c.customerNumber = o.customerNumber
join orderdetails od on
	o.orderNumber = od.orderNumber
left join orders o_shipped on
	o.orderNumber = o_shipped.orderNumber
	and o_shipped.status = 'Shipped'
group by
	c.customerNumber,
	c.customerName
having
	COUNT(distinct extract(year from o.orderDate)) > 1
order by
	total_transaksi desc
limit 5
