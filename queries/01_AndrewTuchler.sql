-- Q: What is the average nightly price in Lincoln Park?
SELECT
  ROUND(AVG(CAST(REPLACE(REPLACE(price, '$', ''), ',', '') AS REAL)), 2) AS avg_price,
  COUNT(*) AS n_listings
FROM listings
WHERE neighborhood = 'Lincoln Park'
  AND price IS NOT NULL
  AND price <> '';
-- Verdict: Trust. Result is 217.44 average price, out of 272 listings. Confirmed that there are 272 listings in Lincoln Park.