
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `rideshare-analytics-497407`.`dbt_test_failures`.`accepted_values_mart_rider_30d_921b0d138fa95d62e60575920f8af156`
    
      
    ) dbt_internal_test