select siu_cust_yn, count(1) as cnt
from allin
where siu_cust_yn != ''
group by siu_cust_yn, cllt_fp_prno