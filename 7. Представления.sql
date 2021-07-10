-- 1) viev titles & companies
CREATE OR REPLACE VIEW titles_and_companies AS
	SELECT t.title,
		   c.company
	  FROM titles t
			   JOIN title_company tc ON t.id = tc.title_id
			   JOIN companies c ON tc.company_id = c.id
	 ORDER BY
		 t.id;

SELECT * FROM titles_and_companies;

-- 2) viev titles & cast
CREATE OR REPLACE VIEW titles_and_cast AS
	SELECT t.title,
		   r.role,
		   concat_ws(' ', cr.first_name, cr.last_name) AS name,
		   ti.release_date
	  FROM creators cr
			   INNER JOIN cast_and_crew cac ON cr.id = cac.creator_id
			   INNER JOIN titles t ON cac.title_id = t.id
			   INNER JOIN roles r ON cac.role_id = r.id
			   INNER JOIN title_info ti ON t.id = ti.title_id
	 ORDER BY
		 t.id;
 
SELECT * FROM titles_and_cast;