{% macro dollar_to_rupees(COLUMN_NAME) %}
    {{ COLUMN_NAME }} * 85
{% endmacro %}