/*
    Assign digital engagement tag:
    If data_used_gb > 25:
         If monthly_bill < 700 → 'High Efficiency User'
         Else → 'Premium Digital User'
    Else → 'Standard Engagement'

*/
select customer_id, customer_name, data_used_gb, monthly_bill,
    case
        when data_used_gb > 25 then
            case
                when monthly_bill < 700 then "High Efficiency User"
                else "Premium Digital User"
            end
        else "Standard Engagement"
     end as status
from customerusagenew;