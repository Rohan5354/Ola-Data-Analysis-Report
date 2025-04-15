CREATE DATABASE ola;
USE ola;

-- EDA 
SELECT *
FROM bookings;


-- QUESTION 1 Retrieve all successful bookings.
CREATE VIEW Successful_Bookings AS 
SELECT *
FROM bookings
WHERE Booking_Status = 'Success';
-- we will use the view which we have created 
-- FINAL ANSWER OF QUESTION 1 is below
SELECT * FROM Successful_Bookings;


-- QUESTION 2 Find the average ride distance for each vehicle type.
CREATE VIEW Vehicle_Type_Average_Ride_Distance AS
SELECT Vehicle_Type, AVG(Ride_Distance) AS Average_Ride_Distance
FROM bookings
GROUP BY Vehicle_Type
ORDER BY Average_Ride_Distance DESC;
-- we will use the view which we have created 
-- FINAL ANSWER OF QUESTION 2 is below
SELECT * FROM Vehicle_Type_Average_Ride_Distance;


-- QUESTION 3 Get the total number of canceled rides by customers
CREATE VIEW Canceled_By_Customer AS
SELECT COUNT(*)
FROM bookings
WHERE Booking_Status = 'Canceled by customer';
-- we will use the view which we have created 
-- FINAL ANSWER OF QUESTION 3 is below
SELECT * 
FROM Canceled_By_Customer;


-- QUESTION 4 List the top 5 customers who booked the highest number of rides.
CREATE VIEW Top_5_Customers AS
SELECT Customer_ID, COUNT(Booking_ID) AS customer_total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY customer_total_rides DESC
LIMIT 5;
-- we will use the view which we have created 
-- FINAL ANSWER OF QUESTION 4 is below
SELECT * 
FROM  Top_5_Customers;

-- QUESTION 5 Get the number of rides canceled by brivers due to personal and car-related issues.
CREATE VIEW Count_Of_Personal_and_Car_Related_Issue AS
SELECT COUNT(*) 
FROM bookings
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';
-- we will use the view which we have created 
-- FINAL ANSWER OF QUESTION 5 is below
SELECT *
FROM Count_Of_Personal_and_Car_Related_Issue;

-- QUESTION 6 Find the maximum and minimum driver ratings for Prime Sedan bookings
CREATE VIEW Primesedan_Diver_Ratings_Max_And_Min AS
SELECT MAX(Driver_ratings), MIN(Driver_Ratings)
FROM bookings
WHERE Vehicle_Type = 'Prime Sedan';
-- we will use the view which we have created 
-- FINAL ANSWER OF QUESTION 6 is below
SELECT *
FROM Primesedan_Diver_Ratings_Max_And_Min;

-- QUESTION 7 Retrieve all rids where payment was made using UPI
CREATE VIEW UPI_Payment_Data AS
SELECT *
FROM bookings 
WHERE payment_Method = 'UPI';
-- we will use the view which we have created 
-- FINAL ANSWER OF QUESTION 7 is below
SELECT *
FROM UPI_Payment_Data;

-- QUESTION 8 Find the average customer rating per vehicle type
CREATE VIEW Average_Customer_Rating_Per_Vechicle_Type AS
SELECT Vehicle_Type, AVG(Customer_Rating)
FROM bookings
GROUP BY Vehicle_Type;
-- we will use the view which we have created 
-- FINAL ANSWER OF QUESTION 8 is below
SELECT *
FROM Average_Customer_Rating_Per_Vechicle_Type;

-- QUESTION 9 Calculate the total booking value of rides completed successfully.
CREATE VIEW Total_Booking_Value_Of_Successful_Rides AS
SELECT SUM(Booking_Value) 
FROM bookings
WHERE Booking_Status = 'Success';
-- we will use the view which we have created 
-- FINAL ANSWER OF QUESTION 9 is below
SELECT *
FROM Total_Booking_Value_Of_Successful_Rides;

-- QUESTION 10 List all incomplete rides along with the reason
CREATE VIEW Incomplete_Ride_Reasons AS
SELECT Incomplete_Rides, Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = 'Yes';
-- we will use the view which we have created 
-- FINAL ANSWER OF QUESTION 10 is below
SELECT *
FROM Incomplete_Ride_Reasons;



 




