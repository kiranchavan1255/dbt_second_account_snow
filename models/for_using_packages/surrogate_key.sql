 WITH PAYMENT_TABLE AS
 (
 select * from {{ source('PC_DBT_DB2', 'PAYMENT') }}
 )

 SELECT 
    {{ dbt_utils.generate_surrogate_key(['orderid','id']) }} as surrogate_key,
    orderid,STATUS,AMOUNT,CREATED

  FROM PAYMENT_TABLE