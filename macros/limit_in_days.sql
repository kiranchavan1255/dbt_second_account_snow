{% macro limit_in_days(column_name,number_of_days) %}

    WHERE {{ column_name }} >= dateadd('day',-{{ number_of_days }},current_timestamp)

{% endmacro %}