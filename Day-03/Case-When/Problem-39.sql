/*
    Suggest billing discounts:
        If monthly_bill > 1000:
             If plan_type = 'Prepaid' → 'Offer Switch + Discount'
             If plan_type = 'Postpaid' → 'Offer Loyalty Discount'
        Else → 'No Discount'
*/
select customer_id, customer_name, plan_type, monthly_bill,
    case
        when monthly_bill > 1000 then
            case
                when plan_type = 'Prepaid' then "Offer Switch + Discount"
                when plan_type = "Postpaid" then "Offer Loyalty Discount"
            end
        else "No Discount"
    end as status
from customerusagenew;