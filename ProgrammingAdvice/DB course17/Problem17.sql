
-- Problem 17: Get total Makes that Mantufactures DriveTypeName=FWD

-- my solution:
SELECT         count(distinct Makes.Make) as Total
FROM            DriveTypes INNER JOIN
                         VehicleDetails ON DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID INNER JOIN
                         Makes ON VehicleDetails.MakeID = Makes.MakeID
Where DriveTypes.DriveTypeName ='FWD'


-- teacher
select count(*) MakeWithFWD
from
(
	SELECT        distinct Makes.Make, DriveTypes.DriveTypeName
	FROM            DriveTypes INNER JOIN
							 VehicleDetails ON DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID INNER JOIN
							 Makes ON VehicleDetails.MakeID = Makes.MakeID
	Where DriveTypes.DriveTypeName ='FWD'
) R1
