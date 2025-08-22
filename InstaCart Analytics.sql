SELECT
  d.department,
  COUNT(*) AS total_products_ordered
FROM
  fact_order_product fop
JOIN
  dim_departments d ON fop.department_id = d.department_id
GROUP BY
  d.department;

SELECT
  a.aisle,
  COUNT(*) AS total_reordered
FROM
  fact_order_product fop
JOIN
  dim_aisles a ON fop.aisle_id = a.aisle_id
WHERE
  fop.reordered = TRUE
GROUP BY
  a.aisle
ORDER BY
  total_reordered DESC
LIMIT 5;