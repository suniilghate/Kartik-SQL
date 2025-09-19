/*
    Determine fee waiver eligibility: if account_type = 'Savings', then check
avg_monthly_balance > 10,000 for 'Waived' else 'Not Waived'.
*/
select customer_id, customer_name, account_type, avg_monthly_balance,
    case
        when account_type = "Savings" then
            case
                when avg_monthly_balance > 10000 then "Waived"
                else "Not Waived"
            end
        else "Checking"
    end as status
from finance_customers;