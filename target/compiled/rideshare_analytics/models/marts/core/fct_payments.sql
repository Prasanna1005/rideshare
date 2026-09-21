

with src as (
    select * from `rideshare-analytics-497407`.`staging`.`stg_payments`
    
)

select
    s.payment_id,
    s.trip_id,
    s.payment_status,
    s.amount,
    s.payment_method,
    s.payment_timestamp,
    s.failure_reason,
    s.is_success, s.is_failed, s.is_refunded,
    s._loaded_at,
    CURRENT_TIMESTAMP() as _dbt_inserted_at
from src s