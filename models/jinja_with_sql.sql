with payments as (
   select * from {{ source('PC_DBT_DB2', 'PAYMENT') }}

),

SAMPLE_TABLE as (
   select
       ORDERID,
        sum(case when paymentmethod = 'bank_transfer' then amount else 0 end)
            as bank_transfer_amount,
        sum(case when paymentmethod = 'credit_card' then amount else 0 end)
            as gift_card_amount,
        sum(case when paymentmethod = 'coupon' then amount else 0 end)
            as coupon_amount,
        sum(case when paymentmethod = 'gift_card' then amount else 0 end)
            as gift_card_amount

   from payments
   group by ORDERID
)

SELECT * FROM SAMPLE_TABLE
