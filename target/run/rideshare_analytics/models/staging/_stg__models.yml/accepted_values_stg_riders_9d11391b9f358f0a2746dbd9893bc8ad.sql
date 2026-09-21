
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `rideshare-analytics-497407`.`dbt_test_failures`.`accepted_values_stg_riders_9d11391b9f358f0a2746dbd9893bc8ad`
    
      
    ) dbt_internal_test