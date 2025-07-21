
WITH results AS(
    SELECT
        result_id,
        exam_id,
        student_id,
        total_question,
        correct_answer,
        percentile,
        percentage,
        completion_time_in_minutes,
        completion_date
    FROM
        {{ ref('int_results')}}
)

SELECT
    *
FROM
    results