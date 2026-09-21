
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `rideshare-analytics-497407`.`dbt_test_failures`.`accepted_values_stg_trips_a7a839ae9e38d166fa682f6f4a02dba7`
    
      
    ) dbt_internal_test