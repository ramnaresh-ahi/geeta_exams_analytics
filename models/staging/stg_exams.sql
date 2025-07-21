
WITH exams AS(
    SELECT
        exam_id,
        exam_name,
        CAST(SPLIT_PART(exam_duration, ' ', 1) as INTEGER) as exam_duration_in_minutes,
        exam_date 
    FROM
        {{ source('raw', 'exams')}}
)

SELECT
    *
FROM
    exams