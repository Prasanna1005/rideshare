

with src as (
    select * from `rideshare-analytics-497407`.`staging`.`stg_location_pings`
    
)

select
    driver_id,
    TIMESTAMP_TRUNC(ping_timestamp, HOUR)      as ping_hour,
    count(*)                                   as ping_count,
    avg(speed_kmph)                            as avg_speed_kmph,
    min(ping_timestamp)                        as hour_first_ping,
    max(ping_timestamp)                        as hour_last_ping,
    CURRENT_TIMESTAMP()                        as _dbt_inserted_at
from src
group by 1, 2