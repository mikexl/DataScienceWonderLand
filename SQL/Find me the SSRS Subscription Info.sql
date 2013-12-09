--
-- I'm lazy + adventurous, therefore no joins
--

use reportserver
go

select UserID
from users
where username like 't844523';

select *
from Subscriptions
where OwnerID='87C321CD-A0E9-4495-971F-3959478C46F6'; -- the UserID from above

select *
from ReportSchedule
where SubscriptionID='051579AB-D677-4B15-812F-2B4CD2014F24'; -- SubscriptionID from above

select *
from Schedule
where ScheduleID='13495560-641B-4839-8E5E-85EF8EA58389'; -- ScheduleID from above


select *
from msdb.dbo.sysjobs_view
where name like '13495560-641B-4839-8E5E-85EF8EA58389';  --- ScheduleID from above, that is the job name