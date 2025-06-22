--  Problem 5 : Get All Makes that have manufactured more than 12000 Vehicles in years 1950 to 2000
 select M.Make , count(*) as NumberOfVehicle from VehicleDetails
 as V inner join Makes as M on V.MakeID = M.MakeID
 where year between 1950 and 2000
 group by make
 having count(*) > 12000
 order by count(*) DESC;
