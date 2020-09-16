with payments as (
    select * from {{ ref('stg_payments') }}
),
orders as (
    select * from {{ ref('stg_orders') }}
),
final as (
    select
    payments.order_id,
    orders.customer_id,
    orders.order_date,
    payments.amount,
    payments.status
from payments
left join orders on payments.order_id = orders.order_id
where payments.status = 'success'
)
select * from final
