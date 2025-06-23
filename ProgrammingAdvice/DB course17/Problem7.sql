
-- Problem 7: Get number of vehicles made between 1950 and 2000 per make and add total vehicles column beside it, then calculate it's percentage

-- best so:
select * , (NumberOfVehicle/ cast(total as float)) as pres from(
select Makes.Make, count(*) as NumberOfVehicle, total = (select count(*) from VehicleDetails)
from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
where year between 1950 and 2000
group by make

)R1
order by  NumberOfVehicle desc;

-- s2:
select * , cast(NumberOfVehicle as float) / totalVehicle as pres from(
select Makes.Make, count(*) as NumberOfVehicle, totalVehicle = (select count(*)from VehicleDetails) from VehicleDetails
inner join Makes on 
VehicleDetails.MakeID = Makes.MakeID
where year between 1950 and 2000
group by make
)R1
order by NumberOfVehicle desc;
