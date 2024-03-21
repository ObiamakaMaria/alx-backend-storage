-- RANKING DATA DERIVED FROM METAL_BANDS.SQL
-- ORDER BY FANS
SELECT DISTINCT `origin`, SUM(`fans`) as `nb_fans` FROM `metal_bands`
GROUP BY `origin` ORDER BY `nb_fans` DESC;
