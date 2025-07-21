
WITH results AS(
    SELECT
        result_id,
        exam_id,
        student_id,
        total_question,
        correct_answer,
        percentile,
        percentage,
        completion_time as completion_time_in_minutes,
        completion_date
    FROM
        {{ source('raw', 'results')}}
)

SELECT
    *
FROM
    results 