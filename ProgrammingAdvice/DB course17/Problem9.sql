--   Problem 9: Get all vehicles that runs with GAS

-- n for nvarchar
select VehicleDetails.*, FuelTypeName from VehicleDetails
inner join FuelTypes
on VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
where FuelTypes.FuelTypeName = N'Gas';

-- soultion 2 : but 1 is best
select * , FuelTypeName = 'Gas' from VehicleDetails
where FuelTypeID = (select top(1) FuelTypeID from FuelTypes where
FuelTypeName =   'Gas');
