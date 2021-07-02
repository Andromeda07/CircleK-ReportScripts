select error, statusName, substring(device,4,7), count(*) as location from lift.Alarm
where statusName = "Open"
and error = "lowDiskSpace"
and device not like "%2700736%"
group by substring(device,4,7);