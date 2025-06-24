

-- Problem 30: Get all Vehicle_Display_Name, NumDoors and add extra column to describe number of doors by words,
-- and if door is null display 'Not Set'

-- to show cases :
-- Select distinct NumDoors from VehicleDetails
-- order by NumDoors ;

select Vehicle_Display_Name,NumDoors, 
case 
when NumDoors = 0 then 'Zero door' 
when NumDoors = 1 then 'one doors' 
when NumDoors = 2 then 'Two doors' 
when NumDoors = 3 then 'Three doors' 
when NumDoors = 4 then 'Four doors' 
when NumDoors = 5 then 'Five doors' 
when NumDoors = 6 then 'Six doors' 
when NumDoors = 8 then 'Eight doors' 
when NumDoors is null then 'Not Set'
else
'unKnown'
end as DoorDescription

from VehicleDetails
order by NumDoors;
