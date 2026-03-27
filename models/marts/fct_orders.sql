select
    o.order_id,
    o.order_date,
    o.customer_id,
    c.customer_name,
    c.customer_city,
    o.product_id,
    p.product_name,
    p.category,
    o.quantity,
    o.total_amount,
    pay.payment_method,
    pay.payment_status
from {{ ref('stg_orders') }} o
left join {{ ref('stg_customers') }} c
    on o.customer_id = c.customer_id
left join {{ ref('stg_products') }} p
    on o.product_id = p.product_id
left join {{ ref('stg_payments') }} pay
    on o.order_id = pay.order_id