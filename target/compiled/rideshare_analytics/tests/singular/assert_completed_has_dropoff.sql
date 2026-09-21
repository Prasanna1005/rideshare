-- Every completed trip must have a dropoff timestamp
select trip_id, trip_status, dropoff_timestamp
  from `rideshare-analytics-497407`.`marts`.`fct_trips`
 where trip_status = 'completed' and dropoff_timestamp is null