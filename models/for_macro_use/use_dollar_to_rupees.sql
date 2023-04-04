WITH PAYMENT_TABLE as
(
    SELECT * FROM {{ source('PC_DBT_DB2', 'PAYMENT') }}
),

PAYMENT_WITH_MACRO_TABLE as
(
    SELECT orderid,
    amount AS DOLLAR_AMOUNT,
 -- amount is stored in cents, convert it to dollars
    {{ dollar_to_rupees('amount') }} as AMOUNT_IN_RUPEES
FROM PAYMENT_TABLE

)

SELECT * FROM PAYMENT_WITH_MACRO_TABLE