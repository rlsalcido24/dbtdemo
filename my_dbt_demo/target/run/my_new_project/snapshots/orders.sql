
      
      create or replace table robertodelta.orders_snapshot
    
    
    using delta
    
    
    
    
    
    as
      

    select *,
        md5(coalesce(cast(id as string ), '')
         || '|' || coalesce(cast(updated_at as string ), '')
        ) as dbt_scd_id,
        updated_at as dbt_updated_at,
        updated_at as dbt_valid_from,
        nullif(updated_at, updated_at) as dbt_valid_to
    from (
        



select * from robertodelta.orders

    ) sbq


  