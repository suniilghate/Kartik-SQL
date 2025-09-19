/*
    Mark loan status: if repayment_status = 'Delayed', then check delay_days > 30 for 'Long
Delay' else 'Short Delay'
*/

select customer_id, customer_name, repayment_status, delay_days,
    case
        when repayment_status = "Delayed" then
            case
                when delay_days > 30 then "Long Delay"
                else "Short Delay"
            end
        else "On Time"
    end as status
from finance_customers;