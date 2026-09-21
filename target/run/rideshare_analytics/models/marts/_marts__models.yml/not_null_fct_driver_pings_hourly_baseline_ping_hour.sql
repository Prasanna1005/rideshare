
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `rideshare-analytics-497407`.`dbt_test_failures`.`not_null_fct_driver_pings_hourly_baseline_ping_hour`
    
      
    ) dbt_internal_test