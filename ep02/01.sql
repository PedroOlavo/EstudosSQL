-- Faça uma query que apresente o tamanho médio, máximo e mínimo da descrição do produto

select product_category_name,
       avg(product_description_lenght) as tam_medio,
       max(product_description_lenght) as tam_max,
       min(product_description_lenght) as tam_min

from tb_products

group by product_category_name

