
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `rideshare-analytics-497407`.`dbt_test_failures`.`relationships_fct_payments_trip_id__trip_id__ref_fct_trips_`
    
      
    ) dbt_internal_test