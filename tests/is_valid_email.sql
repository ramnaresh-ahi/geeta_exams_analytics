
SELECT *
FROM {{ ref('stg_students') }}
WHERE email IS NOT NULL
  AND email NOT SIMILAR TO '%[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}%'

