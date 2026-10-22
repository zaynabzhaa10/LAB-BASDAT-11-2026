select  o.officecode, o.city,
count (distinct c.customernumber) as jumlah_pelanggan
from offices as o
left join employees as e
on o.officecode = e.officecode
left join customers as c
on e.employeenumber =c.salesRepemployeenumber
group by  o.officecode, o.city
order by jumlah_pelanggan desc;

    