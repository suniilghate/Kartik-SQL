/*
    Identify accounts with overdraft: if overdraft_used = 'Yes', then check overdraft_amount >
5,000 for 'High Overdraft' else 'Low Overdraft'
*/
select customer_id, customer_name, overdraft_amount, overdraft_used,
    case
        when overdraft_used = "Yes" then
            case
                when overdraft_amount > 5000 then "High Overdraft"
                else "Low Overdraft"
            end
        else "No Overdraft"
    end as status
from finance_customers;