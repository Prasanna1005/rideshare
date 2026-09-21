
    
    

with dbt_test__target as (

  select driver_id as unique_field
  from `rideshare-analytics-497407`.`staging`.`stg_drivers`
  where driver_id is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


