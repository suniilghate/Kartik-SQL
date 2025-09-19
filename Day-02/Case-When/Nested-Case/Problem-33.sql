/*
    If call_minutes > 1200:
         If monthly_bill > 1000 → 'Excessive Talker - Premium'
         Else → 'Excessive Talker - Standard'
    Else If call_minutes BETWEEN 800 AND 1200 → 'Frequent Caller'
    Else → 'Normal Caller
*/
select customer_id, customer_name, call_minutes, monthly_bill,
    case
        when call_minutes > 1200 then
            case
                when monthly_bill > 1000 then "Excessive Talker - Premium"
                else "Excessive Talker - Standard"
            end
        when call_minutes BETWEEN 800 AND 1200 then "Frequent Caller"
        else "Normal Caller"
    end as status
from customerusagenew;