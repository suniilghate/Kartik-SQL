/*
    Tag investments as 'Long Term' if duration > 5 years, inside that check if return_rate > 8% for
'High Return' or 'Moderate Return'
*/

select customer_id, customer_name, investment_duration, return_rate,
    case
        when investment_duration > 5 then
            case
                when return_rate > 8 then "High Returns"
                else "Moderate Returns"
            end
        else "Short Term"
    end as status
from finance_customers;