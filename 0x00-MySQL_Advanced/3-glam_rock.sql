-- RANKING BANDS WITH GLAMROCK
-- RANKED BY LONGEVITY
SELECT DISTINCT `band_name`,
    IFNULL(`split`, 2022) - `formed` as `lifespan`
    FROM `metal_bands` WHERE FIND_IN_SET('Glam rock', style)
    ORDER BY `lifespan` DESC;
