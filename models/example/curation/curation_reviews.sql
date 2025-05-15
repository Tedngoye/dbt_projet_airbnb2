
WITH curation_raw AS
    (
    SELECT 
        listing_id,
        date AS review_date,
       
    FROM airbnb2.raw.reviews)
SELECT 
    listing_id,
    review_date,
     count(*) AS number_reviews
FROM curation_raw
GROUP BY 1,2