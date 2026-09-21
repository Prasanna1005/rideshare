

  create or replace view `rideshare-analytics-497407`.`staging`.`stg_location_pings`
  OPTIONS(
      description=""""""
    )
  as 

select
    ping_id,
    driver_id,
    CAST(ping_timestamp AS TIMESTAMP) as ping_timestamp,
    lat,
    lng,
    speed_kmph,
    heading,
    is_on_trip,
    battery_pct,
    CURRENT_TIMESTAMP() as _loaded_at
from `rideshare-analytics-497407`.`raw`.`raw_location_pings`;

