--Faça uma query que apresente tamanho médio, máximo e mínimo por categoria

select product_category_name,
        avg(product_name_lenght) as tam_med_nome,
        max(product_name_lenght) as tam_max_nome,
        min(product_name_lenght) as tam_min_nome
       
from tb_products
group by product_category_name