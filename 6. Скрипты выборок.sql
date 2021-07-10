-- titles & title_info
SELECT t2.title, synopsis, genre, title_type, rars
FROM title_info AS t
JOIN titles AS t2 on t.id = t2.id
JOIN genres g ON t.genre_id = g.id
JOIN title_types tt ON t.title_type_id = tt.id
ORDER BY t.id;

-- titles & countries
SELECT t.id, title, country 
FROM titles t
JOIN title_country tc ON t.id = tc.title_id
JOIN countries c ON tc.country_id = c.id
ORDER BY t.id;

-- titles & countries 2
SELECT t.id, title, country 
FROM titles t
JOIN title_country tc ON t.id = tc.title_id
JOIN countries c ON tc.country_id = c.id and c.country = 'Yemen'
ORDER BY t.id;