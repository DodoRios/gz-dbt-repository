select 
pdt_id,
date_date,
orders_id,
revenue,
quantity,
purchase_price,
s.quantity*p.purchase_price AS purchase_cost,
ROUND(s.revenue - s.quantity*p.purchase_price,2) AS margin

from {{ ref('stg_raw__sales') }} s

 join {{ ref('stg_raw__product') }} p
using (pdt_id)