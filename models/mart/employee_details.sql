{{ config(
  materialized = 'table',
) }}

WITH fct_reviews AS (
    SELECT * FROM {{ ref('emp') }}
)

select *
from fct_reviews