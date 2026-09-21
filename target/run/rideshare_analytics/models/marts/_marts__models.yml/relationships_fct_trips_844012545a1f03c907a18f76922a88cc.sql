
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `rideshare-analytics-497407`.`dbt_test_failures`.`relationships_fct_trips_844012545a1f03c907a18f76922a88cc`
    
      
    ) dbt_internal_test