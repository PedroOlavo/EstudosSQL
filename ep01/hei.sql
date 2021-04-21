-- comentario é com --

select product_id,
       product_category_name,
       product_photos_qty

from tb_products as t1

where (t1.product_category_name = 'bebes'
    and t1.product_photos_qty > 1) 
or (t1.product_category_name = 'perfumaria'
    and t1.product_photos_qty > 3) 