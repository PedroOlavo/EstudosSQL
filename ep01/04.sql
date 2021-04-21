--Quantos produtos de beleza ou sauda com menos de um litro
select count(*) as qtd_linhas

from tb_products

where (product_length_cm * product_height_cm * product_width_cm) / 1000  < 1
and product_category_name = 'beleza_saude'