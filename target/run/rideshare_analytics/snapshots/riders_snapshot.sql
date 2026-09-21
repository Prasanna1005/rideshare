
      
  
    

    create or replace table `rideshare-analytics-497407`.`snapshots`.`riders_snapshot`
      
    
    

    
    OPTIONS()
    as (
      
    

    select *,
        to_hex(md5(concat(coalesce(cast(rider_id as string), ''), '|',coalesce(cast(updated_at as string), '')))) as dbt_scd_id,
        updated_at as dbt_updated_at,
        updated_at as dbt_valid_from,
        
  
  coalesce(nullif(updated_at, updated_at), null)
  as dbt_valid_to
from (
        
    
    select
        rider_id, first_name, last_name, email, home_city_id,
        rider_tier, is_active, updated_at
    from `rideshare-analytics-497407`.`staging`.`stg_riders`
    ) sbq



    );
  
  