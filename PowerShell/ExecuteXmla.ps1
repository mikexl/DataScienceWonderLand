[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.AnalysisServices")
$s=New-Object Microsoft.AnalysisServices.Server
$s.connect("your_ssas_instance")
$q=[string](gc "file_path.xmla")
$r=$s.execute($q)

$s.disconnect()