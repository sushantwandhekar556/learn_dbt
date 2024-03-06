{% test positive_value(module,column_name) %}
select
    *
from
    {{ model }}
where
    {{ column_name }} < 1
{% endtest %}