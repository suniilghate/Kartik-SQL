/*
    Label credit cards: if card_type = 'Platinum', then check usage_frequency > 20 for 'Heavy
User Platinum' else 'Light User Platinum'
*/
select customer_id, customer_name, card_type, usage_frequency,
    case
        when card_type = "Platinum" then
            case
                when usage_frequency > 20 then "Heavy User Platinum"
                else "Light User Platinum"
            end
        else "Non Platinum"
    end as status
from finance_customers;