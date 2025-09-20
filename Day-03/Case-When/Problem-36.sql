/*
    Detect mismatched usage patterns:
        If plan_type = 'Postpaid' AND monthly_bill < 500 → 'Underutilized Postpaid'
        If plan_type = 'Prepaid' AND monthly_bill > 900 → 'Overpaying Prepaid'
        Else → 'Plan Matches Usage
*/
select customer_id, customer_name, plan_type, monthly_bill,
    case
        when plan_type = "Postpaid" then
            case
                when monthly_bill < 500 then "Underutilized Postpaid"
                else "Plan Matches Usage"
            end
        when plan_type = "Prepaid" then
            case
                when monthly_bill > 900 then "Overpaying Prepaid"
                else "Plan Matches Usage"
            end
        else "Plan Matches Usage"
    end as status
from customerusagenew;