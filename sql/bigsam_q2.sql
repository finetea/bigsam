select divided_set, siu_cust_yn, count(1) as cnt from customer_data group by divided_set, siu_cust_yn;