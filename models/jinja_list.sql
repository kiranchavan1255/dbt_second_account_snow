--   1]

{#

{% set first_name = 'Kiran' %}
{% set last_name ='Chavan' %}
{% set my_age ='23' %}

My Name is {{ first_name }} {{ last_name }} and  My age is {{ my_age }} Years


#}


-- 2] 

-- {
-- {%- for i in range(10) -%}

-- SELECT {{ i }} as number, {{ i }}*{{ i }} as square_num {% if not loop.last %} union all {%- endif %}

-- {% endfor -%}





-- 3] 
{#
{% set colours=['Pink','Red','Black','Blue'] %}


{%- for colour in colours %}

    SELECT '{{ colour }}' as COLORS {% if not loop.last %} union all {%- endif %}

{%-endfor -%}

#}

-- 4] 

{#

{%- for colour in colours %}

    The Colour of his shirt is {{ colour }}

{%-endfor -%}

#}


-- 5] 
