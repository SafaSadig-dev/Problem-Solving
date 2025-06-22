--   Problem 4 : Get number vehicles made between 1950 and 2000 per make and order them by Number Of Vehicles Descending

select m.Make , count(*) as numberOfVehicles from VehicleDetails as v
inner join makes as m on v.MakeID = m.MakeID
where year between 1950 and 2000 
group by Make
order by count(*) desc;
