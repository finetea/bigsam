''' template
select 
ct.CUST_ID, ct.POLY_NO, cu.SIU_CUST_YN, ct.CLLT_FP_PRNO
from contract_data as ct
left join customer_data as cu 
	on (ct.CUST_ID = cu.CUST_ID) 
'''

create table train as
(
# for train
select CUST_ID, POLY_NO, SIU_CUST_YN, CLLT_FP_PRNO, 'train' as class
from (
select 
ct.CUST_ID, ct.POLY_NO, cu.SIU_CUST_YN, ct.CLLT_FP_PRNO
from contract_data as ct
left join (
select cust_id, siu_cust_yn
from (
select cust_id, siu_cust_yn, rand(777) as rnd from customer_data where DIVIDED_SET=1
) a 
where rnd <= 0.8) as cu on (ct.CUST_ID = cu.CUST_ID) 
) b 
where SIU_CUST_YN IS NOT NULL

) 
union all
(

# for test
select CUST_ID, POLY_NO, SIU_CUST_YN, CLLT_FP_PRNO, 'test' as class
from (
select 
ct.CUST_ID, ct.POLY_NO, cu.SIU_CUST_YN, ct.CLLT_FP_PRNO
from contract_data as ct
left join (
select cust_id, siu_cust_yn
from (
select cust_id, siu_cust_yn, rand(777) as rnd from customer_data where DIVIDED_SET=1
) x
where rnd > 0.8) as cu on (ct.CUST_ID = cu.CUST_ID) 
) y 
where SIU_CUST_YN IS NOT NULL

) 
