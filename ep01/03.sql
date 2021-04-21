--Criar uma coluna com o volume em m^3
--ctrl+d acha a ocorrência do próximo objeto q foi selecionado
select  
    product_id,
    product_category_name,
    product_name_lenght,
    product_description_lenght,
    product_photos_qty,
    product_weight_g,
    product_length_cm,
    product_height_cm,
    product_width_cm,
    (product_length_cm * product_height_cm * product_width_cm / (1000000)) as product_volume_m3

from tb_products