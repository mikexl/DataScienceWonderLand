--
-- I'm lazy + adventurous, therefore no joins
--

use reportserver
go

select UserID
from users
where username like 'your_login';

select *
from Subscriptions
where OwnerID='E5C54268-FEE9-42B1-922F-93391B9E98F7'; -- the UserID from above

select *
from ReportSchedule
where SubscriptionID='C3563DC6-FAA7-4F1F-8D06-E0D8402416A5'; -- SubscriptionID from above

select *
from Schedule
where ScheduleID='167BB1EB-89AC-4F1C-B1F0-90D318D30334'; -- ScheduleID from above


select *
from msdb.dbo.sysjobs_view
where name like '167BB1EB-89AC-4F1C-B1F0-90D318D30334';  --- Daily Report Agent Job