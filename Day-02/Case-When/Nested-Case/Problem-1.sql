select customer_id, customer_name, balance, account_age,
	case
		when balance > 100000 then
			case
				when account_age > 7 then "Loyal Premium"
                else "New Premium"
			end
		else "Not Premium"
	end as status
from finance_customers;