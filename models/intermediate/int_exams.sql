
{{ config(
    materialized = 'incremental',
    unique_key = 'exam_id'
)}}

WITH exams AS(
    SELECT
        exam_id,
        exam_name,
        exam_duration_in_minutes,
        exam_date
    FROM
        {{ ref('stg_exams')}}
    {% if is_incremental()%}
    WHERE
        exam_date > (SELECT MAX(exam_date) from {{ this }})
    {% endif %}
)

SELECT
    *
FROM
    exams