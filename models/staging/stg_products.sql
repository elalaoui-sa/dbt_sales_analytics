select
    cast(product_id as integer) as product_id,
    trim(product_name) as product_name,
    trim(category) as category,
    cast(price as double) as price
from {{ ref('products') }}