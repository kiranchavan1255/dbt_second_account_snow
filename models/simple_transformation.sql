{{
    config(
        materialized='table'
    )
}}

WITH USER_TABLE AS (
SELECT * FROM {{ ref('first_model') }}
)

SELECT 10000+row_number() over (ORDER BY USER_ID) as USER_Key,
    *,concat(ADDRESS,' -',COMPANY_NAME) AS COMPANY_DETAILS FROM USER_TABLE