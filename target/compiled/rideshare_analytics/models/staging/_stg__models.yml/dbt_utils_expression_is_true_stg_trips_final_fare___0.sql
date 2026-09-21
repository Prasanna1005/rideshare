



select
    *
from `rideshare-analytics-497407`.`staging`.`stg_trips`

where not(final_fare >= 0)

