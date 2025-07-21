
{% test column_value_is_equal(model, column_name, value) %}

SELECT *
FROM {{ model }}
WHERE {{ column_name }} != {{ value }}

{% endtest %}
