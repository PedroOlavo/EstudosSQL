--qual a receita de cada categoria de produtos? 
--e o total de vendas em quantidade e de pedidos

--select * from tb_products

select t1.order_id,
       t1.order_item_id,
       t1.product_id,
       t2.product_category_name,
       t1.price

from tb_order_items as t1

left join tb_products as t2
on t1.product_id = t2.product_id

