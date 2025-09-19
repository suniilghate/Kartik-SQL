/*
    Classify flights: if distance > 1,500, then check flight_class = 'Business' for 'Long Haul
Business' else 'Long Haul Economy
*/

select booking_id, passenger_name, flight_class, distance_km,
    case
        when distance_km > 1500 then
            case
                when flight_class = "Business" then "Long Haul Business"
                else "Long Haul Economy"
            end
        else "Others"
    end as status
from flightbookings;