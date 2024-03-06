WITH fullmoon_reviewa AS (
    select * from {{ ref('full_moon_reviews')}}
)

select 
    is_full_moon,
    review_sentiment,
    count(*) as review_sentiment
from 
    full_moon_reviews
group by 
    is_full_moon,
    review_sentiment
order by 
    is_full_moon,
    review_sentiment