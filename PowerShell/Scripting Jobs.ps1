[System.Reflection.Assembly]::LoadWithPartialName('Microsoft.SqlServer.SMO')

$Server = New-Object ('Microsoft.SqlServer.Management.Smo.Server') "cherry"

$jobs = $Server.JobServer.Jobs

# this to save the job script to file with the same name as the job
foreach($job in $jobs) {$filename = $job.Name + '.sql'; $job.Script() | out-file $filename}

# this to list all job's last run status and date sorted by name
$jobs | Select Name, LastRunOUtcome, LastRunDate | Sort Name