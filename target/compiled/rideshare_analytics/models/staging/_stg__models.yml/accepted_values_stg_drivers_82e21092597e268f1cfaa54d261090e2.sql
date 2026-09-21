
    
    

with all_values as (

    select
        vehicle_type as value_field,
        count(*) as n_records

    from `rideshare-analytics-497407`.`staging`.`stg_drivers`
    group by vehicle_type

)

select *
from all_values
where value_field not in (
    'auto','mini','sedan','suv','electric'
)


