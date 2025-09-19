/*
    Classify transactions: if amount > 10,000, then check transaction_type = 'Transfer' for 'Large
Transfer' else 'Large Other'.
*/
select customer_id, customer_name, transaction_amount, transaction_type,
    case
        when transaction_amount > 10000 then
            case
                when transaction_type = "Transfer" then "Large Transfer"
                else "Large Other"
            end
        else "Low Other"
    end as status
from finance_customers;