{{
    config(
        materialized='table'
    )
}}

WITH SNAPSHOT_TABLE AS (
SELECT * FROM {{ ref('first_model') }}
)

SELECT 10000+row_number() over (ORDER BY ACCOUNT_ID) as Account_Key,
    *,concat(ADDRESS,' -',COMPANY_NAME) AS COMPANY_DETAILS FROM SNAPSHOT_TABLE