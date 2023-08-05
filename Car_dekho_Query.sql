CREATE DATABASE cars;

SHOW DATABASES;

USE cars;

SHOW TABLES;

--Read_car_data
SELECT * FROM Car_dekho;

--Total cars: To_get a count_of Total Car
SELECT COUNT(*) FROM Car_dekho;

--The manager asked the employee .How many car wii be available in_2023?
SELECT COUNT(*) FROM Car_dekho WHERE year = 2023;

--The manager asked the employee .How many car_is_available_in 2022,2021,2022?
SELECT COUNT(*) FROM Car_dekho WHERE year = 2020;
SELECT COUNT(*) FROM Car_dekho WHERE year = 2021;
SELECT COUNT(*) FROM Car_dekho WHERE year = 2022;

SELECT COUNT(*) FROM Car_dekho WHERE year IN (2020,2021,2022) GROUP BY year;

--client asked me_to print total_of_all cars by_year. I don’t see_all the details 
SELECT year, count(*) FROM Car_dekho GROUP BY year;

--Client asked_to a Car dealer agent How many diesel Car will there be in_2020?
SELECT count(*) FROM Car_dekho WHERE year = 2020 AND fuel = "Diesel";

--Client asked_to a Car dealer agent How many Petrol Car will there be_in_2020?
SELECT count(*) AS NO_of_Petrol_car FROM Car_dekho WHERE year = 2020 AND fuel = "petrol";

--The manager told the employee_to give a print_All fuel cars (petrol, diesel,CNG) come_by_all_year 
SELECT year, count(*) FROM Car_dekho WHERE fuel = "petrol" GROUP BY year;
SELECT year, count(*) FROM Car_dekho WHERE fuel = "diesel" GROUP BY year;
SELECT year, count(*) FROM Car_dekho WHERE fuel = "CNG" GROUP BY year;

--Manager said there were more_than_100 cars_in a given_year , Which year_had more_than 100 cars ?
SELECT year, count(*) FROM Car_dekho GROUP BY year HAVING  count(*)>100;
SELECT year, count(*) FROM Car_dekho GROUP BY year HAVING  count(*)<50;

--The manager said_to the employee  all_car count details between_2015_and_2023; we need a complete_list .
SELECT count(*) FROM Car_dekho WHERE Year BETWEEN 2015 AND 2023;

--The manager said_to the employee give me all_car details between_2015_to_2023; we need a complete_list .
SELECT * FROM Car_dekho WHERE year BETWEEN 2015 AND 2023;

