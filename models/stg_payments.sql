 
 
select 
    id as payment_id,
    orderid as order_id,
    amount / 100 as amount, -- changing to dollars from cents
    status
from raw.stripe.payment

