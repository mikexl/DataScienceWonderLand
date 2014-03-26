imports system.data.sqltypes
imports microsoft.sqlserver.server

'
' this only good for current time conversion, not historically nor future
'           return TimeZone.CurrentTimeZone.ToLocalTime(dt.Value)
'
' to compile
'                 vbc /t:library TimeZoneConversion.SQLCLR.vb
' to deploy
'
'  #1. copy the assembly to a location that SQL server has access to
'  #2. CREATE ASSEMBLY <assembly_name>
'          FROM '<aboslute_path_to_assembly_dll_file>'
'          WITH PERMISSION_SET = SAFE;
'  #3. Create the function
'    CREATE FUNCTION dbo.UTC2Pacific (@dt DATETIME)
'         RETURNS DATETIME
'         AS EXTERNAL NAME <assembly_name>.<class_name>.UTC2Pacific
'
'

Partial Public Class UDFs

  <SqlFunction()> public shared Function UTC2Pacific(dt AS SqlDateTime) AS SqlDateTime
    try
      return IIF(DateTime.Parse(dt.Value).IsDayLightSavingTime(), DateTime.Parse(dt.Value).AddHours(-7), DateTime.Parse(dt.Value).AddHours(-8))
    catch
      return SqlDateTime.NULL
    end try
  end function


' A simple wrapper to check if a date is daylight saving

  <SqlFunction()> public shared Function IsDaylightSaving(dt AS SqlDateTime) AS SqlBoolean
    return DateTime.Parse(dt.Value).IsDayLightSavingTime()
  end function


End Class