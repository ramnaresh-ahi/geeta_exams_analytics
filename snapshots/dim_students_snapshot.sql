
{% snapshot dim_students_snapshot %}

{{
  config(
    target_schema='snapshots',
    unique_key='student_id',
    strategy='check',
    check_cols=['contact_no', 'email', 'city']
  )
}}

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
    {{ ref('stg_students') }}

{% endsnapshot %}