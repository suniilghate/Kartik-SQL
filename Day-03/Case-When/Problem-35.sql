/*
    Reward program allocation:
        If data_used_gb > 25:
             If call_minutes > 1000 → 'Gold Tier'
             Else → 'Silver Tier'
        Else:
             If call_minutes > 800 → 'Bronze Tier'
             Else → 'Basic Tier'
*/
select customer_id, customer_name, data_used_gb, call_minutes,
    case
        when data_used_gb > 25 then
            case
                when call_minutes > 1000 then "Gold Tier"
                else "Silver Tier"
            end
        else
            case
                when call_minutes > 800 then "Bronze Tier"
                else "Basic Tier"
            end
    end as status
from customerusagenew;