select customernumber, sum(amount) as total_pembayaran from classicmodels.payments group by customernumber order by sum(amount) desc;
