
select product_category_name,
        avg(product_name_lenght) as tam_med_nome,
        max(product_name_lenght) as tam_max_nome,
        min(product_name_lenght) as tam_min_nome


from tb_products

where product_description_lenght > 100 

group by product_category_name

having avg(product_description_lenght) > 500