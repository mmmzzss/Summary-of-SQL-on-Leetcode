select project_id, round(avg(experience_years),2) average_years
from project 
left join employee 
using (employee_id)
group by project_id
