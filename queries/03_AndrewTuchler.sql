-- Q:What is the most recent review?
SELECT
  r.date_reviewed,
  r.reviewer_name,
  r.listing_id,
  l.name AS listing_name,
  l.neighborhood
FROM reviews r
LEFT JOIN listings l ON l.id = r.listing_id
WHERE r.date_reviewed = (SELECT MAX(date_reviewed) FROM reviews)
ORDER BY r.id DESC;
-- Verdict: Returns 67 reviews from 10/18/21, confirmed manually.