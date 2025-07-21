
WITH exams AS(
    SELECT
        exam_id,
        exam_name,
        exam_duration_in_minutes,
        exam_date
    FROM
        {{ ref('int_exams')}}      
    
)

SELECT
    *
FROM
    exams