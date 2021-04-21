-- Ex1: Quantos produtos temos da categoria 'artes'?
--count(*) conta quantas linhas foram retornadas
--(distinct)essa maneira é mais inteligente, pois conta os valores únicos
--já que tava id deve ser único, porém, se houvesse produto
--duplicado saberiamos
select 
    count(*) as qntd_linhas,
    count(product_id) as qntd_produtos,
    count(distinct product_id) as qtd_produtos_distintos,
    count(distinct product_category_name) as categorias_distintas

from tb_products

where product_category_name = 'artes'
