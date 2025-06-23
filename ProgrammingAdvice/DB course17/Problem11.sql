
--   Problem 11: Get Total Makes that runs with GAS


-- me and teacher soulution : 
    select count(*) as TotalMakes from(select distinct Makes.Make, FuelTypes.FuelTypeName from VehicleDetails
  inner join FuelTypes
  on VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
  inner join Makes
  on VehicleDetails.MakeID = Makes.MakeID
  where FuelTypes.FuelTypeName = N'Gas') R1

-- ai :
  select count(distinct Makes.Make) from VehicleDetails
  inner join FuelTypes
  on VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
  inner join Makes
  on VehicleDetails.MakeID = Makes.MakeID
  where FuelTypes.FuelTypeName = N'Gas'

