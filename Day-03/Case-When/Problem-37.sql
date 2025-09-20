/*
    Identify heavy all-round users:

    If data_used_gb > 25 AND call_minutes > 1000:
     If monthly_bill > 1200 → 'Super User'
     Else → 'High Usage Customer'
    Else → 'Standard User
*/
select customer_id, customer_name, data_used_gb, call_minutes, monthly_bill,
    case
        when data_used_gb > 25 AND call_minutes > 1000 then
            case
                when  monthly_bill > 1200 then "Super User"
                else "High Usage Customer"
            end
        else "Standard User"
    end as status
from customerusagenew;