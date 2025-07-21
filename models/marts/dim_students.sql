
WITH dim_students AS(
    SELECT
        student_id,
        name,
        gender,
        age,
        contact_no,
        email,
        city,
        state,
        preferred_language,
        connect_with,
        registered_date
    FROM
        {{ ref('dim_students_snapshot')}}
    WHERE
        dbt_valid_to IS NULL
)

SELECT
    *
FROM
    dim_students