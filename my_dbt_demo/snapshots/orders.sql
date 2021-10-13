{% snapshot orders_snapshot %}

{{
    config(

      target_schema='robertodelta',
      unique_key='id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from robertodelta.orders

{% endsnapshot %}