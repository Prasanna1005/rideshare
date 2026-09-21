
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `rideshare-analytics-497407`.`dbt_test_failures`.`not_null_dim_driver_scd2_driver_business_key`
    
      
    ) dbt_internal_test