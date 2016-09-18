update customer a set a.OCCP_GRP1=substr(a.OCCP_GRP1, 1,1);


select distinct(a.MATE_OCCP_GRP1) from customer a;


update customer a set a.OCCP_GRP2=1 where a.OCCP_GRP2='사무직';
update customer a set a.OCCP_GRP2=2 where a.OCCP_GRP2='2차산업 종사자';
update customer a set a.OCCP_GRP2=3 where a.OCCP_GRP2='3차산업 종사자';
update customer a set a.OCCP_GRP2=4 where a.OCCP_GRP2='고위 공무원';
update customer a set a.OCCP_GRP2=5 where a.OCCP_GRP2='자영업';
update customer a set a.OCCP_GRP2=6 where a.OCCP_GRP2='공무원';
update customer a set a.OCCP_GRP2=7 where a.OCCP_GRP2='대학교수/강사';
update customer a set a.OCCP_GRP2=8 where a.OCCP_GRP2='운전직';
update customer a set a.OCCP_GRP2=9 where a.OCCP_GRP2='주부';
update customer a set a.OCCP_GRP2=10 where a.OCCP_GRP2='단순 노무직';
update customer a set a.OCCP_GRP2=11 where a.OCCP_GRP2='1차산업 종사자';
update customer a set a.OCCP_GRP2=12 where a.OCCP_GRP2='기타';
update customer a set a.OCCP_GRP2=13 where a.OCCP_GRP2='교육관련직';
update customer a set a.OCCP_GRP2=14 where a.OCCP_GRP2='교사';
update customer a set a.OCCP_GRP2=15 where a.OCCP_GRP2='전문직';
update customer a set a.OCCP_GRP2=16 where a.OCCP_GRP2='의료직 종사자';
update customer a set a.OCCP_GRP2=17 where a.OCCP_GRP2='예체능계 종사자';
update customer a set a.OCCP_GRP2=18 where a.OCCP_GRP2='학생';
update customer a set a.OCCP_GRP2=19 where a.OCCP_GRP2='고소득 전문직';
update customer a set a.OCCP_GRP2=20 where a.OCCP_GRP2='단순 사무직';
update customer a set a.OCCP_GRP2=21 where a.OCCP_GRP2='기업/단체 임원';
update customer a set a.OCCP_GRP2=22 where a.OCCP_GRP2='학자/연구직';
update customer a set a.OCCP_GRP2=23 where a.OCCP_GRP2='고소득의료직';
update customer a set a.OCCP_GRP2=24 where a.OCCP_GRP2='종교인/역술인';
update customer a set a.OCCP_GRP2=25 where a.OCCP_GRP2='법무직 종사자';

update customer a set a.FP_CAREER=1 where a.FP_CAREER='Y';
update customer a set a.FP_CAREER=0 where a.FP_CAREER='N';


update customer a set a.WEDD_YN=999 where a.WEDD_YN='';
update customer a set a.WEDD_YN=1 where a.WEDD_YN='Y';
update customer a set a.WEDD_YN=0 where a.WEDD_YN='N';


update customer a set a.RESI_TYPE_CODE = 0 where a.RESI_TYPE_CODE =''


update customer a set a.CUST_RGST = 190001 where a.CUST_RGST =''


update customer a set a.CTPR = 0 where a.CTPR =''

update customer a set a.MAX_PAYM_YM = 0 where a.MAX_PAYM_YM =''


update customer a set a.OCCP_GRP2 = 0 where a.OCCP_GRP2 =''


update customer a set a.MINCRDT = 0 where a.MINCRDT ='';
update customer a set a.MAXCRDT = 0 where a.MAXCRDT ='';


select distinct(a.MATE_OCCP_GRP2) from customer a;

update customer a set a.MATE_OCCP_GRP2=0 where a.MATE_OCCP_GRP2='';
update customer a set a.MATE_OCCP_GRP2=1 where a.MATE_OCCP_GRP2='사무직';
update customer a set a.MATE_OCCP_GRP2=2 where a.MATE_OCCP_GRP2='2차산업 종사자';
update customer a set a.MATE_OCCP_GRP2=3 where a.MATE_OCCP_GRP2='3차산업 종사자';
update customer a set a.MATE_OCCP_GRP2=4 where a.MATE_OCCP_GRP2='고위 공무원';
update customer a set a.MATE_OCCP_GRP2=5 where a.MATE_OCCP_GRP2='자영업';
update customer a set a.MATE_OCCP_GRP2=6 where a.MATE_OCCP_GRP2='공무원';
update customer a set a.MATE_OCCP_GRP2=7 where a.MATE_OCCP_GRP2='대학교수/강사';
update customer a set a.MATE_OCCP_GRP2=8 where a.MATE_OCCP_GRP2='운전직';
update customer a set a.MATE_OCCP_GRP2=9 where a.MATE_OCCP_GRP2='주부';
update customer a set a.MATE_OCCP_GRP2=10 where a.MATE_OCCP_GRP2='단순 노무직';
update customer a set a.MATE_OCCP_GRP2=11 where a.MATE_OCCP_GRP2='1차산업 종사자';
update customer a set a.MATE_OCCP_GRP2=12 where a.MATE_OCCP_GRP2='기타';
update customer a set a.MATE_OCCP_GRP2=13 where a.MATE_OCCP_GRP2='교육관련직';
update customer a set a.MATE_OCCP_GRP2=14 where a.MATE_OCCP_GRP2='교사';
update customer a set a.MATE_OCCP_GRP2=15 where a.MATE_OCCP_GRP2='전문직';
update customer a set a.MATE_OCCP_GRP2=16 where a.MATE_OCCP_GRP2='의료직 종사자';
update customer a set a.MATE_OCCP_GRP2=17 where a.MATE_OCCP_GRP2='예체능계 종사자';
update customer a set a.MATE_OCCP_GRP2=18 where a.MATE_OCCP_GRP2='학생';
update customer a set a.MATE_OCCP_GRP2=19 where a.MATE_OCCP_GRP2='고소득 전문직';
update customer a set a.MATE_OCCP_GRP2=20 where a.MATE_OCCP_GRP2='단순 사무직';
update customer a set a.MATE_OCCP_GRP2=21 where a.MATE_OCCP_GRP2='기업/단체 임원';
update customer a set a.MATE_OCCP_GRP2=22 where a.MATE_OCCP_GRP2='학자/연구직';
update customer a set a.MATE_OCCP_GRP2=23 where a.MATE_OCCP_GRP2='고소득의료직';
update customer a set a.MATE_OCCP_GRP2=24 where a.MATE_OCCP_GRP2='종교인/역술인';
update customer a set a.MATE_OCCP_GRP2=25 where a.MATE_OCCP_GRP2='법무직 종사자';


select distinct(a.MATE_OCCP_GRP1) from customer a;
select a.MATE_OCCP_GRP1 from customer a where a.MATE_OCCP_GRP1 IS NULL;

update customer a set a.MATE_OCCP_GRP1=0 where a.MATE_OCCP_GRP1='';
update customer a set a.MATE_OCCP_GRP1=1 where a.MATE_OCCP_GRP1='1.주부';
update customer a set a.MATE_OCCP_GRP1=2 where a.MATE_OCCP_GRP1='2.자영업';
update customer a set a.MATE_OCCP_GRP1=3 where a.MATE_OCCP_GRP1='3.사무직';
update customer a set a.MATE_OCCP_GRP1=4 where a.MATE_OCCP_GRP1='4.전문직';
update customer a set a.MATE_OCCP_GRP1=5 where a.MATE_OCCP_GRP1='5.서비스';
update customer a set a.MATE_OCCP_GRP1=6 where a.MATE_OCCP_GRP1='6.제조업';
update customer a set a.MATE_OCCP_GRP1=7 where a.MATE_OCCP_GRP1='7.1차산업';
update customer a set a.MATE_OCCP_GRP1=8 where a.MATE_OCCP_GRP1='8.기타';


SELECT `COLUMN_NAME` 
FROM `INFORMATION_SCHEMA`.`COLUMNS` 
WHERE `TABLE_SCHEMA`='bigsam' 
    AND `TABLE_NAME`='customer';
    

-- first train group    
select 
SEX,
AGE,
RESI_COST,
RESI_TYPE_CODE,
FP_CAREER,
CUST_RGST,
CTPR,
OCCP_GRP1,
OCCP_GRP2,
TOTALPREM,
MINCRDT,
MAXCRDT,
WEDD_YN,
MATE_OCCP_GRP1,
MATE_OCCP_GRP2,
CHLD_CNT,
LTBN_CHLD_AGE,
MAX_PAYM_YM,
MAX_PRM,
CUST_INCM,
RCBASE_HSHD_INCM,
JPBASE_HSHD_INCM,
SIU_CUST_YN
from customer a
where a.DIVIDED_SET = 1


-- second train group    
select 
SEX,
FP_CAREER,
OCCP_GRP1,
OCCP_GRP2,
MINCRDT,
MAXCRDT,
WEDD_YN,
SIU_CUST_YN
from customer a
where a.DIVIDED_SET = 1

-- second train group    
select 
OCCP_GRP2,
MINCRDT,
WEDD_YN,
SIU_CUST_YN
from customer a
where a.DIVIDED_SET = 1