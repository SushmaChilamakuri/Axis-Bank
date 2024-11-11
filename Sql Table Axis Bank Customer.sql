CREATE TABLE AxisBank_Customer (
   Customer_ID INT PRIMARY KEY,
   Customer_Name VARCHAR(50),
   Credit_Limit DECIMAL(10,2),
   Applicable boolean,
   CVV INT,
   Expiry_Date DATE,
   KYC_Status VARCHAR(20),
   Balance DECIMAL(10,2)
);


select * from AxisBank_Customer;


INSERT INTO AxisBank_Customer( Customer_ID,  Customer_Name, Credit_Limit , Applicable, CVV , Expiry_Date , KYC_Status, Balance) Values
(01,'Chandra',10000.00,True,123,'2024-11-20','verified',1500.00),
(02,'Devendra',200000.00,True,234,'2024-12-02','verified',100.10),
(03,'Venkat',40000.00,True,345,'2025-01-10','not verified',800.00),
(04,'Mudhitha',50000.10,True,783,'2025-11-20','verified',200.00),
(05,'Sushma',90000.00,True,453,'2025-07-01','verified',500.50),
(06,'Abhipsha',60000.00,True,753,'2025-02-24','not verified',0.00),
(07,'Vaishnavi',700000.00,True,693,'2026-04-05','verified',150.00),
(08,'Preeti',10000.00,True,258,'2025-08-25','not verified',400.50),
(09,'Kaif',90000.00,True,363,'2025-05-09','not verified',450.50),
(10,'Ajay',15000.00,True,293,'2026-12-08','not verified',700.00),
(11,'Ronak',600000.00,True,023,'2026-12-05','verified',800.00),
(12,'Slesha',300000.00,True,203,'2025-09-07','not verified',900.00),
(13,'Vijay',35500.10,True, 239,'2026-03-07','not verified',350.00),
(14,'Sonu',600000.05,True,305,'2027-10-05','verified',250.00),
(15,'Lasya',15100.01,True,103,'2026-11-30','not verified',5200.00),
(16,'Ramu',101000.05,True, 465,'2025-12-06','not verified',450.00),
(17,'Sneha',60500.10,True,003,'2028-04-09','not verified',90.00),
(18,'Suresh',45000.00,True,300,'2024-11-24','not verified',7050.00),
(19,'Guna',50000.00,True,253,'2026-08-07','verified',600.00),
(20,'Rahul',45000.10,True,396,'2025-04-30','not verified',100.00);

/*change Applicable, balance*/


SELECT * FROM AxisBank_Customer WHERE KYC_Status = 'verified';



SELECT SUM(balance) AS total_balance
FROM AxisBank_Customer
WHERE kyc_status = 'verified';


SELECT avg(balance) AS avgg
FROM AxisBank_Customer
WHERE kyc_status = 'verified';

SELECT Customer_Name, Credit_Limit
 FROM AxisBank_Customer
 WHERE Credit_limit > 45000;

SELECT Customer_Name, Credit_Limit
  FROM AxisBank_Customer
  WHERE Expiry_date > '2025-01-01' 
  AND Credit_limit > 50000;

SELECT * FROM AxisBank_Customer 
WHERE KYC_Status = 'verified';