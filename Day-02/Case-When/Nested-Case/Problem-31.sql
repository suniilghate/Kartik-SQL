/*
Evaluate potential for plan upgrade:
    If plan_type = 'Prepaid':
         If monthly_bill > 400 OR call_minutes > 550 → 'Suggest Postpaid Upgrade'
         Else → 'No Upgrade'
    If plan_type = 'Postpaid':
         If data_used_gb > 25 → 'Suggest Premium Plan'
         Else → 'Satisfactory Usage'

*/
select customer_id, customer_name, plan_type, data_used_gb, call_minutes, monthly_bill,
    case
        when plan_type = "Prepaid" then
            case
                when monthly_bill > 400 OR call_minutes > 550 then "Suggest Postpaid Upgrade"
                else "No Upgrade"
            end
        when plan_type = "Postpaid" then
            case
                when data_used_gb > 25 then "Suggest Premium Plan"
                else "Satisfactory Usage"
            end
    end as status
from customerusagenew;