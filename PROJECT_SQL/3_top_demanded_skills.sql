/*
Question: What are the most in-demand skills fr data analysts?
- Join job postings to inner join table similar to query 2
- Id the top 5 in-demand skills for data analysts.
- FOcus on all job postings.
WHY? Retieves the top 5 skills with the highest demand in the job market,
  - Providing insights into the most valuable skills for job seekers.
*/

SELECT 
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Analyst' AND
    job_work_from_home = True
GROUP BY
    skills
ORDER BY
     demand_count DESC
LIMIT 5 

/*
Here is the breakdown of the most demanded skills for data analysts in 2023
SQL and Excel remain fundamental, emphasizing the need for string foundation
Programing and Visualization tools like, Python, Tableau, and Power BI