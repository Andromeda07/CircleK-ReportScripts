select p.playercode,h.hwPlatform
FROM HeartbeatLast h
join Player p
on h.playerId = p.id
join Location l
on p.locationId = l.id
where l.posType = "verifone" and h.hwPlatform != 3;