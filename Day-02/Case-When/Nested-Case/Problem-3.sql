/*
Categorize loan applicants: if credit_score > 700, then check income > 75,000 for 'Approved
High Income' else 'Approved Low Income'
*/

select customer_id, customer_name, credit_score, income,
    case
        when credit_score > 700 then
            case
                when income > 75000 then "Approved High Income"
                else "Approved Low Income"
            end
        else "Not Approved"
    end as status
from finance_customers;