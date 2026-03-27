select
    cast(customer_id as integer) as customer_id,
    trim(customer_name) as customer_name,
    trim(customer_city) as customer_city
from {{ ref('customers') }}