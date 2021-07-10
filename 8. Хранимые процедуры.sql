-- 1) PROCEDURE
CREATE OR REPLACE VIEW titles_and_cast AS
	SELECT t.id AS t_id,
		   t.title,
		   r.id AS r_id,
		   r.role,
		   cr.id AS cr_id,
		   concat_ws(' ', cr.first_name, cr.last_name) AS name,
		   ti.release_date
	  FROM creators cr
			   INNER JOIN cast_and_crew cac ON cr.id = cac.creator_id
			   INNER JOIN titles t ON cac.title_id = t.id
			   INNER JOIN roles r ON cac.role_id = r.id
			   INNER JOIN title_info ti ON t.id = ti.title_id
	 ORDER BY
		 t.id;

DROP PROCEDURE IF EXISTS filmography;
DELIMITER //
CREATE PROCEDURE filmography(IN for_person_id INT)
BEGIN

	SELECT name, title, role, release_date
	  FROM titles_and_cast
	 WHERE cr_id = for_person_id
	 ORDER BY role, release_date DESC;
END//

DELIMITER ;

CALL filmography(21);

-- 2) PROCEDURE

DROP PROCEDURE IF EXISTS titles_and_countries;
DELIMITER //
CREATE PROCEDURE titles_and_countries (IN country VARCHAR(200))
BEGIN

	SELECT t.id, title, country 
	FROM titles t
	JOIN title_country tc ON t.id = tc.title_id
	JOIN countries c ON tc.country_id = c.id and c.country = country;
END//

DELIMITER ;

CALL titles_and_countries ('Yemen');