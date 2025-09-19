/*
    Classify customers based on data usage and plan type:
        If plan_type = 'Postpaid':
             If data_used_gb >= 30 → 'Heavy User - Postpaid'
             Else If data_used_gb BETWEEN 15 AND 29 → 'Moderate User - Postpaid'
             Else → 'Light User - Postpaid'
        If plan_type = 'Prepaid':
             If data_used_gb >= 20 → 'Heavy User - Prepaid'
             Else → 'Light User - Prepaid
*/
select customer_id, customer_name, plan_type, data_used_gb,
    case
        when plan_type = "Postpaid" then
            case
                when data_used_gb >= 30 then "Heavy User - Postpaid"
                when data_used_gb BETWEEN 15 AND 29 then "Moderate User - Postpaid"
                else "Light User - Postpaid"
            end
        when plan_type = "Prepaid" then
            case
                when data_used_gb >= 20 then "Heavy User - Prepaid"
                else "Light User - Prepaid"
            end
    end as status
from customerusagenew;