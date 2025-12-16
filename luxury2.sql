select * from luxury

SELECT
    Purchase_Quarter,
    Micro_Market,
    COUNT(Property_ID) AS Booking_Count
FROM luxury
GROUP BY Purchase_Quarter, Micro_Market
ORDER BY Purchase_Quarter, Micro_Market;



SELECT
    Developer_Name AS Builder,
    SUM(Ticket_Price_Cr) AS Total_Ticket_Sales,
    AVG(Ticket_Price_Cr) AS Avg_Ticket_Size
FROM luxury
GROUP BY Developer_Name
ORDER BY Total_Ticket_Sales;




SELECT
    Amenity_Score,
    COUNT(DISTINCT Project_Name) AS Project_Count,
    COUNT(Property_ID) * 1.0 / NULLIF(COUNT(Property_ID), 0) AS Booking_Conversion_Rate
FROM luxury
GROUP BY Amenity_Score
ORDER BY Amenity_Score;




SELECT
    Micro_Market,
    Possession_Status,
    COUNT(Property_ID) AS Booking_Count
FROM luxury
GROUP BY Micro_Market, Possession_Status
ORDER BY Micro_Market, Possession_Status;




select
    Configuration,
    count (Property_ID) as Booking_Count
from luxury
group by Configuration
order by Booking_Count;


select
    Sales_channel,
    Possession_Status,
    count(Property_ID) as Booking_Count
from luxury
group by Sales_Channel,Possession_Status
order by Sales_Channel,Possession_Status;



SELECT
    Developer_Name AS Builder,
    Purchase_Quarter AS Quarter,
    SUM(Ticket_Price_Cr) AS Total_Ticket_Value
FROM luxury
GROUP BY Developer_Name, Purchase_Quarter
ORDER BY Developer_Name, Purchase_Quarter;





SELECT
    Possession_Status,
    Buyer_Type,
    Transaction_Type,
    COUNT(Property_ID) AS Booking_Count
FROM luxury
GROUP BY Possession_Status, Buyer_Type, Transaction_Type
order by Possession_Status, Buyer_Type, Transaction_Type;



SELECT
    Micro_Market,
    COUNT(DISTINCT Project_Name) AS Project_Count
FROM luxury
GROUP BY Micro_Market
order by Micro_Market;



SELECT TOP 5
    Developer_Name AS Builder,
    SUM(Ticket_Price_Cr) AS Revenue,
    COUNT(NRI_Buyer) AS Successful_Bookings
FROM luxury
GROUP BY Developer_Name
ORDER BY Revenue DESC;





