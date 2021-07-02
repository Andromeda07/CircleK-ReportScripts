select error, statusName, device
from lift.Alarm
where statusName = "Open" and substr(device,1,10) not in (
select locationCode
from lift.Location
where division = "Northern Tier")
order by device;