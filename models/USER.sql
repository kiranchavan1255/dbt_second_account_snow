{{
    config(
        materialized='table'
    )
}}
SELECT * FROM {{ source('PC_DBT_DB', 'USER') }}