
    
    

with all_values as (

    select
        trip_status as value_field,
        count(*) as n_records

    from `rideshare-analytics-497407`.`staging`.`stg_trips`
    group by trip_status

)

select *
from all_values
where value_field not in (
    'requested','accepted','cancelled','completed'
)


