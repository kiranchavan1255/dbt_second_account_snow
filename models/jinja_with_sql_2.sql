{%- set payment_methods = ['bank_transfer', 'credit_card', 'coupon', 'gift_card'] -%}

with payment_table as (
   select * from {{ source('PC_DBT_DB2', 'PAYMENT') }}
),

final_payment_table as (
   select
       orderid,
       {% for payment_method in payment_methods -%}

       sum(case when paymentmethod = '{{ payment_method }}' then amount else 0 end)
            as {{ payment_method }}_amount

       {%- if not loop.last -%}
         ,
       {% endif -%}

       {%- endfor %}
   from payment_table
   group by 1
)

select * from final_payment_table