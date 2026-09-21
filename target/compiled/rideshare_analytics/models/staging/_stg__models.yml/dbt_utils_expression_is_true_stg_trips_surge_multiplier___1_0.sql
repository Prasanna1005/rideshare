



select
    *
from `rideshare-analytics-497407`.`staging`.`stg_trips`

where not(surge_multiplier >= 1.0)

