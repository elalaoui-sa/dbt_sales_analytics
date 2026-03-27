select
    date_trunc('month', order_date) as revenue_month,
    sum(total_amount) as total_revenue,
    count(distinct order_id) as total_orders
from {{ ref('fct_orders') }}
where payment_status = 'paid'
group by 1
order by 1