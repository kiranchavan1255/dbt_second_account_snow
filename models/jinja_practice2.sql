{%- for i in range(10) -%}

SELECT {{ i }} as number, {{ i }}*{{ i }} as square_num {% if not loop.last %} union all {%- endif %}

{% endfor -%}