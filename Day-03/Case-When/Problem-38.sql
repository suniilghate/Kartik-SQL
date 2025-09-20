/*
    Voice vs Data Preference:
    If call_minutes > data_used_gb * 30 → 'Voice Oriented User'
    If data_used_gb > call_minutes / 30 → 'Data Oriented User'
    Else → 'Balanced Usage'
*/
select customer_id, customer_name, call_minutes, data_used_gb,
    case
        when call_minutes > data_used_gb * 30 then "Voice Oriented User"
        when data_used_gb > call_minutes / 30 then "Data Oriented User"
        else "Balanced Usage"
    end as status
from customerusagenew;