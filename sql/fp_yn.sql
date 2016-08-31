create table fp_tmp as
select cllt_fp_prno as fp, siu_cust_yn as yn, count(1) as cnt from allin 
where siu_cust_yn != '' group by cllt_fp_prno, siu_cust_yn;




create table fp_yn as
select 
distinct(a.fp), 
case when b.yn IS NULL then 0 else b.cnt end as y_cnt,
case when c.yn IS NULL then 0 else c.cnt end as n_cnt
from fp_tmp as a 
left join fp_tmp b on (a.fp = b.fp and b.yn='Y')
left join fp_tmp c on (a.fp = c.fp and c.yn='N')

