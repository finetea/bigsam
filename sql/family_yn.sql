select x, y, count(1)
from
(
select a.cust_id, b.SIU_CUST_YN as x, a.sub_cust_id, c.SIU_CUST_YN as y
from family_data a
left join customer_data as b
on a.CUST_ID = b.cust_id
left join customer_data as c
on a.SUB_CUST_ID = c.CUST_ID
) as t
group by x, y