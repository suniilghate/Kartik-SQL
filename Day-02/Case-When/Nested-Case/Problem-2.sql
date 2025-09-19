/*
Label accounts as 'Active' if last_transaction < 30 days, then within that check if balance >
50,000 for 'High Active' or 'Low Active'
*/
select customer_id, customer_name, last_transaction_days, balance,
case
    when last_transaction_days < 30 then
        case
            when balance > 50000 then "High Active"
            else "Low Active"
        end
    else "Not Active"
end as status
from finance_customers;