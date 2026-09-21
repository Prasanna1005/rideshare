
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `rideshare-analytics-497407`.`dbt_test_failures`.`dbt_utils_expression_is_true_stg_trips_final_fare___0`
    
      
    ) dbt_internal_test