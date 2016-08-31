
# y rate and n rate per each fp
select y_cnt, n_cnt, fp, y_cnt / (y_cnt+n_cnt+1) as y_rate, n_cnt / (y_cnt+n_cnt+1) as n_rate from fp_yn where y_cnt / (y_cnt+n_cnt+1) > 0.8;

# y rate per each fp
select *, ((y_cnt) / (y_cnt+n_cnt+1)) as y_rate from fp_yn where ((y_cnt) / (y_cnt+n_cnt+1)) >= 0.96

# the siu statistics of suspicious FPs
select siu_cust_yn, count(1) as cnt
from allin a 
where a.CLLT_FP_PRNO in (select fp from fp_yn where y_cnt / (y_cnt+n_cnt+1) >= 0.94) 
group by siu_cust_yn;

# the siu / family_siu statistics of suspicious FPs
select siu_cust_yn, a.FMLY_SIU_CUST_YN, count(1) as cnt
from allin a 
where a.CLLT_FP_PRNO in (select fp from fp_yn where y_cnt / (y_cnt+n_cnt+1) >= 0.96) 
group by siu_cust_yn, a.FMLY_SIU_CUST_YN;

# check the rate of missing FP
select a.SIU_CUST_YN, count(1) as cnt from allin a 
where a.CLLT_FP_PRNO IS NULL group by a.SIU_CUST_YN


