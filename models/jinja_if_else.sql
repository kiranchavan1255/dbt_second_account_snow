-- 1] {#
{% set VALUE = 3 %}

{% if VALUE < 4 %}
    THIS STATEMENT IS RIGHT !
{% else %}
    THIS IS A WRONG STATEMENT !
{% endif %}

-- #}


-- 2] {#

{% set VALUE = 'true' %}

{% if VALUE == 'true'  %}
    THIS STATEMENT IS RIGHT !
{% else %}
    THIS IS A WRONG STATEMENT !
{% endif %}

-- #}


