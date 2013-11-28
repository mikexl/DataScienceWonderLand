



	SELECT  j.name             AS 'job_name',
			s.step_id          AS 'job_step_id',
			s.step_name        AS 'job_step_name', 
			c.name             AS 'job_category',
			j.[description]    AS 'job_description'
	FROM msdb.dbo.sysjobs j
		INNER JOIN msdb.dbo.syscategories c
			ON j.category_id = c.category_id
		INNER JOIN msdb.dbo.sysjobsteps s
			ON j.job_id = s.job_id
    WHERE j.enabled = 1			




GO


