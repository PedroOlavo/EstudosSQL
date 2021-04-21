--evitar de usar subquerry
select *
from (
select 
    seller_state,
    count(*) as qntd_seller_esta

from tb_sellers

--where seller_state in ('SP', 'RJ', 'PR')
--USANDO IN FICA MELHOR Q USAR UM MONTE DE OR


group by seller_state

)

where qntd_seller_esta > 10