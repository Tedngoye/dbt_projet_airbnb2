with tourists_per_year as (
    SELECT year, tourists
    --from airbnb2.raw.tourists_per_year
    from {{ ref ("tourists_per_year") }}
)
SELECT
    DATE(year || '-12-31') as year,
    tourists 
from tourists_per_year