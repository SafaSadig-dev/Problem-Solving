--  Problem 8: Get Make, FuelTypeName and Number of Vehicles per FuelType per Make year between 1950 and 2000

select Makes.Make, FuelTypes.FuelTypeName, count(*) as NumberOfVehicle from
VehicleDetails
inner join Makes
on VehicleDetails.MakeID = Makes.MakeID
inner join FuelTypes
on VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
where year between 1950 and 2000
group by Make,FuelTypeName

ORDER BY Make ;
