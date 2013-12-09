use reportserver
go


update configurationinfo
set value='0' -- keep all execution log indefinitely, be caution if you have large amount of reports and visitors
where name='executionlogdayskept'


-- To view the Execution Log
--SELECT
--  ExecutionLog2.InstanceName
--  ,ExecutionLog2.ReportPath
--  ,Reverse( ExecutionLog2.ReportPath) ReportPathRev
--  ,ExecutionLog2.UserName
--  ,ExecutionLog2.ExecutionId
--  ,ExecutionLog2.RequestType
--  ,ExecutionLog2.Format
--  ,ExecutionLog2.[Parameters]
--  ,ExecutionLog2.ReportAction
--  ,ExecutionLog2.TimeStart
--  ,ExecutionLog2.TimeEnd
--  ,ExecutionLog2.TimeDataRetrieval
--  ,ExecutionLog2.TimeProcessing
--  ,ExecutionLog2.TimeRendering
--  ,ExecutionLog2.Source
--  ,ExecutionLog2.Status
--  ,ExecutionLog2.ByteCount
--  ,ExecutionLog2.[RowCount]
--  ,ExecutionLog2.AdditionalInfo
--FROM
--  ExecutionLog2
--WHERE ([ReportAction] = 'Render')
