WITH r AS (
    SELECT * FROM {{ ref('fct_reviews') }}
),

l AS (
    SELECT * FROM {{ ref('dim_listings_cleansed') }}
)

SELECT * FROM l
INNER JOIN r
USING (listing_id)
WHERE l.created_at > r.review_date