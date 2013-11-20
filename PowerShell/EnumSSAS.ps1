[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.AnalysisServices") 
$server = new-object Microsoft.AnalysisServices.Server 
$server.Connect('your_ssas_server_instance')

#enumerate the databases, connections (data sources), Dimensions, cubes (including KPIs and Measure Groups) and roles
$server.databases|%{
  "* $_" | write-host -foreground yellow;
  "  + Connections"|write; $_.datasources | %{ "    + $_"|write };
  "  + Dimensions "|write; $_.dimensions  | %{ "    + $_"|write 
                           $_.hierarchies | %{ "      ~ $_ " |write; 
                                $_.levels | %{ "        ~ $_" |write; }
                                             };
                                             };
  "  + Cubes      "|write; $_.cubes       | %{ "    + $_"|write;
                                               "      + KPI" |write;
                                  $_.kpis | %{ "        # $_" |write; }
                         $_.measuregroups | %{ "      + $_"  |write;
                              $_.measures | %{ "        # $_" |write; } 
                                             };
                                             };
  "  + Roles      "|write; $_.roles       | %{ "    + $_"|write };
  write "";
}


$server.Disconnect()
$server.dispose()