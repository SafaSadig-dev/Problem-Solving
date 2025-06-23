

-- Problem 18: Get total vehicles per DriveTypeName Per Make and 
-- order them per make asc then per total Desc

select Makes.Make, DriveTypes.DriveTypeName , count(*) as total
from VehicleDetails
inner join Makes
on VehicleDetails.MakeID = Makes.MakeID
inner join DriveTypes
on VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID

group by make, DriveTypes.DriveTypeName

order by make , total desc
;
