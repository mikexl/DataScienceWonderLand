
/* List all IS Packages, tested on SQL 2008 R2; 2012 has the catalog, suppose to be easier */

	SELECT pkg.id
		  ,ISNULL(folder.foldername, '/') + '/' + [name] AS [FullPath]
		  ,[description]
		  ,[createdate]
		  ,CASE [packagetype]
			WHEN 0 THEN 'default'
			WHEN 1 THEN 'SQL Server Import and Export Wizard'
			WHEN 2 THEN 'DTS Designer in SQL Server 2000'
			WHEN 3 THEN 'SQL Server Replication'
			WHEN 5 THEN 'SSIS Designer'
			WHEN 6 THEN 'Maintenance Plan Designer or Wizard'
		  END AS [PackageType]
		  ,convert(varchar, [vermajor]) + '.' + convert(varchar, verminor) + '.' + replicate('0', 6-LEN(verbuild)) + convert(varchar, verbuild) AS [Build#]
		  ,CAST(CAST([packagedata] as varbinary(max)) as xml) AS DTSX
	  FROM [msdb].[dbo].[sysssispackages] pkg
	  INNER JOIN [msdb].[dbo].[sysssispackagefolders] folder ON pkg.folderid = folder.folderid
	  WHERE pkg.ownersid <> 1
 	  ORDER BY folder.foldername, pkg.name


GO


