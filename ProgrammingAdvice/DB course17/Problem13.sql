  --  Problem 13: Get all Makes/Count Of Vehicles
  -- that manufactures more than 20K Vehicles

    select Makes.Make , count(*) as NumberOfVehicles  from VehicleDetails
  inner join Makes
  on VehicleDetails.MakeID = Makes.MakeID
  GROUP BY Make
    having count(*) > 20000
  order by NumberOfVehicles  desc;
