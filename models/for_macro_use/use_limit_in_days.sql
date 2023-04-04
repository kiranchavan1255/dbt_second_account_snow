SELECT * FROM  {{ source('PC_DBT_DB2','PAYMENT') }}

{{ limit_in_days('_BATCHED_AT',8) }}