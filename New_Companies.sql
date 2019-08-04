
-- Make sure SELECT list matches order specified.
SELECT company_alias.company_code,
       company_alias.founder,
       COUNT(DISTINCT(lead_manager_alias.lead_manager_code)),
       COUNT(DISTINCT(senior_manager_alias.senior_manager_code)),
        COUNT(DISTINCT(manager_alias.manager_code)),
       COUNT(DISTINCT(employee_alias.employee_code))
FROM Company AS company_alias, 
     Lead_Manager AS lead_manager_alias, 
     Senior_Manager AS senior_manager_alias,
    Manager AS manager_alias,
     Employee AS employee_alias
-- Now join all tables on together. Each table is linked to the 'previous' table by one column, which is whatever the previous position was in the hierarchy.
-- So a lower-level employee will contain the info of its direct supervisor.
WHERE company_alias.company_code = lead_manager_alias.company_code 
AND  lead_manager_alias.lead_manager_code = senior_manager_alias.lead_manager_code 
AND senior_manager_alias.senior_manager_code = manager_alias.senior_manager_code 
AND manager_alias.manager_code = employee_alias.manager_code
-- Make sure to include column from SELECT into group by.                    
GROUP BY company_alias.company_code, company_alias.founder ORDER BY company_alias.company_code