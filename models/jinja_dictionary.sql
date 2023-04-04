
{% set flower_dict=
{
    'name': 'Rose',
    'colour': ['pink','red']
}
%}

The {{ flower_dict['name'] }} has {{ flower_dict['colour'][0] }} colour

