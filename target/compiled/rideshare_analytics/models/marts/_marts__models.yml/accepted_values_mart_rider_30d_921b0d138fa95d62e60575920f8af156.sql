
    
    

with all_values as (

    select
        activity_band as value_field,
        count(*) as n_records

    from `rideshare-analytics-497407`.`marts`.`mart_rider_30day_churn`
    group by activity_band

)

select *
from all_values
where value_field not in (
    'never_rode','active','recent','lapsing','churned'
)


