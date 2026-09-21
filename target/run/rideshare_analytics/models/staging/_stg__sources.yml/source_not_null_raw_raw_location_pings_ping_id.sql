
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `rideshare-analytics-497407`.`dbt_test_failures`.`source_not_null_raw_raw_location_pings_ping_id`
    
      
    ) dbt_internal_test