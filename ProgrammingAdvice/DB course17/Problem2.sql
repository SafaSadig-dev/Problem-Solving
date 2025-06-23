
  -- Problem 2: Get all vehicles made between 1950 and 2000
select * from VehicleDetails where Year between 1950 and 2000;

-- method 2
select * from VehicleDetails where year >= 1950 and year <= 2000;

-- BETWEEN Operator: The BETWEEN operator in SQL is inclusive, meaning it includes both the start and end values.
-- So, Year BETWEEN 1950 AND 2000 is essentially a shorthand for Year >= 1950 AND Year <= 2000.
