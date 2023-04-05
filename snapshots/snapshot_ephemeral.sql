{{
    config(
        materialized='ephemeral'
    )
}}

{% snapshot STG_USER2 %}
{{
    config(
      target_database='SALESFORCE_DB',
      target_schema='DIMENSION_DBT',
      unique_key='ID',
      strategy='check',
      check_cols=["USERNAME","COMPANYNAME","CITY","PHONE"]
    )
}}
select ID,USERNAME,COMPANYNAME,PHONE,EMAIL,CITY
 from {{ source('SALESFORCE_TABLE_SOURCE', 'STG_USER') }}
{% endsnapshot %}