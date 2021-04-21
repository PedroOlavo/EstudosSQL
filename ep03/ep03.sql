----lista de categorias por ordem alfabetica

select 
    distinct case when product_category_name is null then 'outros'

                when product_category_name = 'alimentos' 
                    or product_category_name = 'alimentos_bebidas' then 'alimentos'
                
                when product_category_name in ('artes', 'artes_e_artesanato') then 'artes'
                
                when product_category_name like '%artigos%' then 'artigos'
                --o like olha se a coluna tem o objeto em questão,
                --neste caso a palavra artigo
                else product_category_name 
            
            end as categoria_fillna

from tb_products

order by 1

