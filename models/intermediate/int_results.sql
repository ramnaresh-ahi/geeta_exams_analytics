
{{ config(
    materialized = 'incremental',
    unique_key = 'result_id'
    )
}}

WITH results AS(
    SELECT
        r.result_id,
        e.exam_id,
        s.student_id,
        r.total_question,
        r.correct_answer,
        r.percentile::NUMERIC(10,4) as percentile,
        r.percentage,
        r.completion_time_in_minutes,
        r.completion_date
    FROM
        {{ ref('stg_students')}} s 
        JOIN
        {{ ref('stg_results')}} r USING(student_id)
        JOIN 
        {{ ref('stg_exams')}} e USING(exam_id)
    {% if is_incremental()%}
    WHERE
        completion_date > (SELECT MAX(completion_date) FROM {{this}})
    {% endif %}
    
)

SELECT
    *
FROM
    results