
SELECT *
FROM {{ ref('stg_students') }}
WHERE contact_no IS NOT NULL
  AND contact_no::VARCHAR NOT SIMILAR TO '[6-9][0-9]{9}'
