
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `rideshare-analytics-497407`.`dbt_test_failures`.`relationships_stg_trips_rider_id__rider_id__ref_stg_riders_`
    
      
    ) dbt_internal_test