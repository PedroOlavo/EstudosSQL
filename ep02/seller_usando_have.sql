
select 
    seller_state,
    count(*) as qntd_seller_esta

from tb_sellers

--where seller_state in ('SP', 'RJ', 'PR')
--USANDO IN FICA MELHOR Q USAR UM MONTE DE OR
--filtro pré agregação(agg)
--where seller_state in ('SP', 'RJ', 'PR', 'MG')

--agregação
group by seller_state


--filtro pós agregação(agg)
having count(*) > 10