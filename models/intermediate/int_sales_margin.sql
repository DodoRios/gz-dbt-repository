select 
product_id,
date_date,
orders_id,
revenue,
quantity,
purchase_price,
s.quantity*p.purchase_price AS purchase_cost,
s.revenue - s.quatity*p.purchase_price AS margin

from {{ ref('stg_raw__sales') }} s

left join {{ ref('stg_raw__product') }} p
using (product_id)