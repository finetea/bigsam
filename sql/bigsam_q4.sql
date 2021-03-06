create table allin as
select 
ct.CUST_ID, ct.POLY_NO, cu.DIVIDED_SET, cu.SIU_CUST_YN, cu.SEX, cu.AGE, cu.RESI_COST, cu.RESI_TYPE_CODE, cu.FP_CAREER, cu.CUST_RGST, cu.CTPR, 
cu.OCCP_GRP1, cu.OCCP_GRP2, cu.TOTALPREM, cu.MINCRDT, cu.MAXCRDT, cu.WEDD_YN, cu.MATE_OCCP_GRP1, cu.MATE_OCCP_GRP2, cu.CHLD_CNT, 
cu.LTBN_CHLD_AGE, cu.MAX_PAYM_YM, cu.MAX_PRM, cu.CUST_INCM, cu.RCBASE_HSHD_INCM, cu.JPBASE_HSHD_INCM, 
CUST_ROLE, IRKD_CODE_DTAL, IRKD_CODE_ITEM, GOOD_CLSF_CDNM, CNTT_YM, fp.CLLT_FP_PRNO, REAL_PAYM_TERM, 
SALE_CHNL_CODE, CNTT_STAT_CODE, EXPR_YM, EXTN_YM, LAPS_YM, PAYM_CYCL_CODE, MAIN_INSR_AMT, 
SUM_ORIG_PREM, RECP_PUBL, CNTT_RECP, MNTH_INCM_AMT, DISTANCE, ACCI_OCCP_GRP1, ACCI_OCCP_GRP2, 
CHANG_FP_YN, CNTT_RECP_SQNO, RECP_DATE, ORIG_RESN_DATE, RESN_DATE, CRNT_PROG_DVSN, ACCI_DVSN, 
CAUS_CODE, CAUS_CODE_DTAL, DSAS_NAME, DMND_RESN_CODE, DMND_RSCD_SQNO, HOSP_OTPA_STDT, HOSP_OTPA_ENDT, 
RESL_CD1, RESL_NM1, VLID_HOSP_OTDA, HOUSE_HOSP_DIST, HOSP_CODE, ACCI_HOSP_ADDR, HOSP_SPEC_DVSN, CHME_LICE_NO, 
PAYM_DATE, DMND_AMT, PAYM_AMT, PMMI_DLNG_YN, SELF_CHAM, NON_PAY, TAMT_SFCA, PATT_CHRG_TOTA, DSCT_AMT, 
COUNT_TRMT_ITEM, NON_PAY_RATIO, HEED_HOSP_YN, INCB_DVSN, ETRS_YM, FIRE_YM, BEFO_JOB, EDGB, BRCH_CODE, 
fm.SUB_CUST_ID as FMLY_CUST_ID, fm.FMLY_RELN_CODE, 
CASE	WHEN cu2.SIU_CUST_YN = 'Y' THEN 'Y'
		WHEN cu2.SIU_CUST_YN = 'N' THEN 'N'
		WHEN cu2.SIU_CUST_YN = '' THEN ''
		ELSE NULL
END AS FMLY_SIU_CUST_YN

-- select cu.siu_cust_yn
-- select ct.*, cu.*, fp.*, cm.*
-- select ct.CUST_ID, cu.CUST_ID, cu.SIU_CUST_YN, ct.POLY_NO, cm.CUST_ID, cm.POLY_NO, cm.CNTT_RECP_SQNO
from contract_data as ct 
left join customer_data as cu 
	on (ct.CUST_ID = cu.CUST_ID) 
left join fpinfo_data as fp 
	on (ct.CLLT_FP_PRNO = fp.CLLT_FP_PRNO)
left outer join claim_data as cm
	on (ct.CUST_ID = cm.CUST_ID and ct.POLY_NO = cm.POLY_NO)
left join family_data as fm
	on (ct.CUST_ID = fm.CUST_ID)
left join customer_data as cu2
	on (fm.SUB_CUST_ID = cu2.CUST_ID)