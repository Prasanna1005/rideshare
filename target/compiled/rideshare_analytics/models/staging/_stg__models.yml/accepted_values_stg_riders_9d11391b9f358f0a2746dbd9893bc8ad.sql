
    
    

with all_values as (

    select
        rider_tier as value_field,
        count(*) as n_records

    from `rideshare-analytics-497407`.`staging`.`stg_riders`
    group by rider_tier

)

select *
from all_values
where value_field not in (
    'bronze','silver','gold','platinum'
)


