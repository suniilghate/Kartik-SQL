/*
    Flag customers for review: if age > 65, then check account_balance < 1,000 for 'At Risk
Senior' else 'Senior Stable
*/
select customer_id, customer_name, age, account_balance,
    case
        when age > 65 then
            case
                when account_balance < 1000 then "At Risk Senior"
                else "Senior Stable"
            end
        else "Not a Senior"
    end as status
from finance_customers;