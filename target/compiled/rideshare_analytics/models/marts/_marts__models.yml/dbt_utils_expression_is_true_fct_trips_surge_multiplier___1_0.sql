



select
    *
from `rideshare-analytics-497407`.`marts`.`fct_trips`

where not(surge_multiplier >= 1.0)

