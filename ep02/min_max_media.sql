
select 
       product_category_name,
       count(*) as qntd_produto,
       max(product_weight_g) as maior_peso,
       min(product_weight_g) as menor_peso,
       avg(product_weight_g) as media_peso

from tb_products
-- != e <> tbm indicam diferente de 
where product_category_name is not null

group by product_category_name