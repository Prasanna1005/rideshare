

select
    city_id,
    initcap(city_name)        as city_name,
    state,
    upper(country_code)       as country_code,
    timezone,
    population,
    is_active,
    CURRENT_TIMESTAMP() as _loaded_at
from `rideshare-analytics-497407`.`raw`.`raw_cities`