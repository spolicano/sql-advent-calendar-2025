SELECT
    t.tinsel_id,
    t.color_name AS tinsel_color,
    l.light_id,
    l.color_name AS light_color,
    CONCAT(t.color_name, '-', l.color_name) AS tinsel_light_combo
FROM tinsel_colors t
CROSS JOIN light_colors l;
