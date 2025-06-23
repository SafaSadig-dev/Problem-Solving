
-- this will delete any row has null value in DriveTypeID we can use left join insted
create View VehicleMasterDetails as(
select ID, VehicleDetails.MakeID, Makes.Make, VehicleDetails.ModelID, ModelName, 
VehicleDetails.SubModelID, SubModels.SubModelName, VehicleDetails.BodyID, Bodies.BodyName, Vehicle_Display_Name,
year, VehicleDetails.DriveTypeID, DriveTypes.DriveTypeName, Engine, Engine_CC,
Engine_Cylinders, Engine_Liter_Display, VehicleDetails.FuelTypeID, FuelTypes.FuelTypeName,
NumDoors
from VehicleDetails  inner join Makes
on VehicleDetails.MakeID = makes.MakeID
inner join Bodies on VehicleDetails.BodyID = Bodies.BodyID
inner join SubModels on VehicleDetails.SubModelID = SubModels.SubModelID
inner join DriveTypes on DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID
inner join FuelTypes on VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
inner join makemodels on VehicleDetails.ModelID = makemodels.ModelID
);
