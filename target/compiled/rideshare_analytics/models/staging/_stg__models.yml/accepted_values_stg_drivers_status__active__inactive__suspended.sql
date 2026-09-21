
    
    

with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from `rideshare-analytics-497407`.`staging`.`stg_drivers`
    group by status

)

select *
from all_values
where value_field not in (
    'active','inactive','suspended'
)


