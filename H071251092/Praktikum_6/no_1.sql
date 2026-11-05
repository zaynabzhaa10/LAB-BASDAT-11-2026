select
    productcode,
    productname,
    msrp,
    quantityInStock,
    case
        when msrp < 50 and quantityInStock > 500
            then 'Ekonomis - Stok Tinggi'
        when msrp < 50 and quantityInStock <= 500
            then 'Ekonomis - Stok Rendah'
        when msrp between 50 and 100
            then 'Harga Menengah'
        when msrp > 100
            then 'Harga Premium'
    end AS kategori
from products
order by msrp desc;