
WITH students AS (
    SELECT
        student_id,
        name,
        CASE 
            WHEN LOWER(gender) IN ('m', 'male') THEN 'Male'
            WHEN LOWER(gender) IN ('f', 'female') THEN 'Female'
            ELSE 'Unknown'
        END AS gender,
        age,
        contact_no,
        email,
        COALESCE(city, 'N/A') as city,
        state,
        COALESCE(preferred_language, 'N/A') as preferred_language,
        connect_with,
        registered_date
    FROM
        {{ source('raw', 'students') }}
    WHERE
        age IS NOT NULL AND age BETWEEN 13 AND 75
    
)

SELECT
    *
FROM
    students