-- Q: How many reviews were placed by someone with the same name as the host of the listing?
SELECT COUNT(*) AS n_matching_reviews
FROM reviews r
JOIN listings l ON l.id = r.listing_id
WHERE r.reviewer_name IS NOT NULL
  AND l.host_name IS NOT NULL
  AND LOWER(TRIM(r.reviewer_name)) = LOWER(TRIM(l.host_name));
-- Verdict: Trust. Returns 420 matching rows.
