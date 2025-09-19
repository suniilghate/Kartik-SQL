/*
    Determine offer eligibility:
        If plan_type = 'Postpaid' AND data_used_gb > 25 AND call_minutes > 1000 → 'Combo Offer'
        If plan_type = 'Prepaid' AND monthly_bill > 600 → 'Recharge Cashback Offer'
        Else → 'No Offer
*/
select customer_id, customer_name, plan_type,
    case
        when plan_type = "Postpaid" AND data_used_gb > 25 AND call_minutes > 1000 then "Combo Offer"
        when plan_type = "Prepaid" AND monthly_bill > 600 then "Recharge Cashback Offer"
        else "No Offer"
    end as status
from customerusagenew;