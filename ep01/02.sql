-- Ex2: Quantos produtos tem mais de 5 litros?
select count(*),
    count(distinct product_id)
    
from tb_products
--(product_length_cm * product_height_cm * product_width_cm) / 1000 as product_volume 
--criei acima uma nova coluna com base nas existentes
--aqui no where eu poderia usar o nome da coluna q criei,
--porem usando o calculo fica mais generico e assim
--qq banco de dados aceita
where (product_length_cm * product_height_cm * product_width_cm) / 1000 > 5