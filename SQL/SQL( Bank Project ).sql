CREATE DATABASE bank_analytics;
use bank_analytics;
CREATE TABLE LoanAccounts (
    Account_ID VARCHAR(50) NOT NULL,
    Age INT,
    BH_Name VARCHAR(100),
    Bank_Name VARCHAR(100),
    Branch_Name VARCHAR(100),
    Caste VARCHAR(50),
    Center_Id VARCHAR(50) NULL,
    City VARCHAR(100),
    Client_id VARCHAR(50),
    Client_Name VARCHAR(100),
    Close_Client VARCHAR(10),
    Closed_Date DATE NULL,
    Credif_Officer_Name VARCHAR(100),
    Dateof_Birth DATE,
    Disb_By VARCHAR(50),
    Disbursement_Date DATE,
    Disbursement_Date_Years INT,
    Gender_ID VARCHAR(10),
    Home_Ownership VARCHAR(50) NULL,
    Loan_Status VARCHAR(50),
    Loan_Transferdate DATE,
    NextMeetingDate DATE,
    Product_Code VARCHAR(50),
    Grrade VARCHAR(10) NULL,
    Sub_Grade VARCHAR(10) NULL,
    Product_Id VARCHAR(50),
    Purpose_Category VARCHAR(100),
    Region_Name VARCHAR(100),
    Religion VARCHAR(50),
    Verification_Status VARCHAR(50) NULL,
    State_Abbr VARCHAR(10),
    State_Name VARCHAR(100),
    Tranfer_Logic VARCHAR(50),
    Is_Delinquent_Loan varchar(50),
    Is_Default_Loan varchar(50),
    Age_T INT,
    Delinq_2_Yrs INT,
    Application_Type VARCHAR(50),
    Loan_Amount DECIMAL(15, 2),
    Funded_Amount DECIMAL(15, 2),
    Funded_Amount_Inv DECIMAL(15, 2),
    Term INT,
    Int_Rate DECIMAL(5, 2),
    Total_Pymnt DECIMAL(15, 2),
    Total_Pymnt_Inv DECIMAL(15, 2),
    Total_Rec_Prncp DECIMAL(15, 2),
    Total_Fees DECIMAL(15, 2),
    Total_Rrec_Int DECIMAL(15, 2),
    Total_Rec_Late_Fee DECIMAL(15, 2),
    Recoveries DECIMAL(15, 2),
    Collection_Recovery_Fee DECIMAL(15, 2)
);


select * from LoanAccounts;

set global local_infile=ON;

LOAD DATA LOCAL INFILE 'C:/Users/krushna honrao/Desktop/Project/Bank Data Analystics UPDATED.csv' INTO TABLE LoanAccounts
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;


-- All Data 
select * from LoanAccounts;


-----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 1. Total Loan Amount Funded

SELECT CONCAT(ROUND(SUM(Loan_Amount)/1000000, 2), ' M') AS Total_Loan_Amount
FROM LoanAccounts;

-----------------------------------------------------------------------------------------------------------------------------------------------

-- 2. Total Collection

SELECT CONCAT(ROUND(SUM(Total_Rec_Prncp + Total_Rrec_Int)/1000000, 2), ' M') AS Total_Collection
FROM LoanAccounts;

-----------------------------------------------------------------------------------------------------------------------------------------------

-- 3. Total Interest

SELECT CONCAT(ROUND(SUM(Total_Rrec_Int)/1000000, 2), ' M') AS Total_Interest
FROM LoanAccounts;

-----------------------------------------------------------------------------------------------------------------------------------------------

-- 4. Delinquent Client Count

SELECT COUNT(*) AS Delinquent_Clients
FROM LoanAccounts
WHERE Is_Delinquent_Loan = 'Y';

-----------------------------------------------------------------------------------------------------------------------------------------------
 
 -- 5. Religion-Wise Loan
 
 SELECT 
    Religion,
    CONCAT(ROUND(SUM(Loan_Amount) / 1000000, 2), ' M') AS Total_Loan
FROM LoanAccounts
WHERE Religion IS NOT NULL 
  AND Religion != '' 
  AND Religion NOT IN ('No Data', 'NA', 'N/A', 'Unknown')
GROUP BY Religion
HAVING SUM(Loan_Amount) > 100000;

 ---------------------------------------------------------------------------------------------------------------------------------------------

-- 6. Product Group-Wise Loan

SELECT 
    Purpose_Category AS Product_Group,
    CONCAT(ROUND(SUM(Loan_Amount) / 1000000, 2), ' M') AS Total_Loan
FROM LoanAccounts
WHERE Purpose_Category IS NOT NULL 
  AND Purpose_Category != '' 
  AND Purpose_Category NOT IN ('No Data', 'NA', 'N/A', 'Unknown')
GROUP BY Purpose_Category
HAVING SUM(Loan_Amount) > 100000;

---------------------------------------------------------------------------------------------------------------------------------------------

-- 7. Disbursement Trend (Per Month)

 SELECT 
    DATE_FORMAT(Disbursement_Date, '%b %Y') AS Month,  -- e.g., Jan 2017
    CONCAT(ROUND(SUM(Loan_Amount) / 1000000, 2), ' M') AS Total_Disbursed
FROM LoanAccounts
WHERE Disbursement_Date IS NOT NULL 
  AND YEAR(Disbursement_Date) > 1900  -- skips '0000-00-00' without direct comparison
GROUP BY DATE_FORMAT(Disbursement_Date, '%b %Y')
HAVING SUM(Loan_Amount) > 100000
ORDER BY MIN(Disbursement_Date);  -- ensure correct month order

---------------------------------------------------------------------------------------------------------------------------------------------

 -- 8. Grade-Wise Loan
 
 SELECT 
    Grrade,
    COUNT(*) AS Loan_Count,
    CONCAT(ROUND(SUM(Loan_Amount) / 1000000, 2), ' M') AS Total_Loan_Amount
FROM LoanAccounts
WHERE Grrade IS NOT NULL 
  AND Grrade != '' 
  AND Grrade NOT IN ('No Data', 'NA', 'Unknown')
GROUP BY Grrade
HAVING SUM(Loan_Amount) > 100000;

 ---------------------------------------------------------------------------------------------------------------------------------------------
 
 -- 9. Loan Status-Wise Loan
 
 SELECT 
    Loan_Status,
    COUNT(*) AS Loan_Count,
    CONCAT(ROUND(SUM(Loan_Amount) / 1000000, 2), ' M') AS Total_Loan_Amount
FROM LoanAccounts
WHERE Loan_Status IS NOT NULL 
  AND Loan_Status != '' 
  AND Loan_Status NOT IN ('No Data', 'NA', 'Unknown')
GROUP BY Loan_Status
HAVING SUM(Loan_Amount) > 100000;

  ---------------------------------------------------------------------------------------------------------------------------------------------

-- 10. Age Group-Wise Loan
 
 SELECT 
    CASE 
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        ELSE '46+' 
    END AS Age_Group,
    COUNT(*) AS Loan_Count,
    CONCAT(ROUND(SUM(Loan_Amount) / 1000000, 2), ' M') AS Total_Amount
FROM LoanAccounts
WHERE Age IS NOT NULL AND Age >= 18
GROUP BY Age_Group
HAVING SUM(Loan_Amount) > 100000;

 ---------------------------------------------------------------------------------------------------------------------------------------------
 
 --  11. State-Wise Loan
 
SELECT 
    State_Name,
    CONCAT(ROUND(SUM(Loan_Amount) / 1000000, 2), ' M') AS Total_Loan
FROM LoanAccounts
WHERE State_Name IS NOT NULL 
  AND State_Name != '' 
  AND State_Name NOT IN ('No Data', 'NA', 'Unknown', 'State Name')  -- Remove header too
GROUP BY State_Name
HAVING SUM(Loan_Amount) > 100000;

---------------------------------------------------------------------------------------------------------------------------------------------
 
-- 12. Total Loans

SELECT COUNT(*) AS Total_Loans FROM LoanAccounts;

---------------------------------------------------------------------------------------------------------------------------------------------

-- 13. Branch-Wise Performance

SELECT 
    Branch_Name,
    ROUND(SUM(Total_Rrec_Int), 2) AS Interest_Revenue,
    ROUND(SUM(Total_Fees), 2) AS Fee_Revenue,
    ROUND(SUM(Total_Rrec_Int + Total_Fees), 2) AS Total_Revenue
FROM LoanAccounts
GROUP BY Branch_Name;

---------------------------------------------------------------------------------------------------------------------------------------------

-- 14. Delinquent Loan Rate

SELECT 
    ROUND(100.0 * SUM(CASE WHEN Is_Delinquent_Loan = 'Y' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Delinquent_Loan_Rate
FROM LoanAccounts;

---------------------------------------------------------------------------------------------------------------------------------------------

-- 15.Loan Maturity
 
    SELECT 
    Term,
    COUNT(*) AS Loan_Count,
    CONCAT(ROUND(SUM(Loan_Amount)/1000000, 2), ' M') AS Total_Amount
FROM LoanAccounts
GROUP BY Term;

---------------------------------------------------------------------------------------------------------------------------------------------

-- 16. No Verified Loans

SELECT COUNT(*) AS No_Verified_Loans
FROM LoanAccounts
WHERE Verification_Status IS NULL 
   OR Verification_Status IN ('', 'No Data', 'NA', 'N/A', 'Unknown');
   
----------------------------------------------------------------------------------------------------------------------------------------------  

-- 17. Loan Amount by Gender:
SELECT 
    Gender_ID,
    COUNT(*) AS Loan_Count,
    CONCAT(ROUND(SUM(Loan_Amount) / 1000000, 2), ' M') AS Total_Amount
FROM LoanAccounts
GROUP BY Gender_ID;

----------------------------------------------------------------------------------------------------------------------------------------------

-- 18. Top 5 Branches by Total Revenue
SELECT 
    Branch_Name,
    CONCAT(ROUND(SUM(Total_Rrec_Int + Total_Fees) / 1000000, 2), ' M') AS Total_Revenue
FROM LoanAccounts
GROUP BY Branch_Name
HAVING SUM(Total_Rrec_Int + Total_Fees) > 0
ORDER BY SUM(Total_Rrec_Int + Total_Fees) DESC
LIMIT 5;

----------------------------------------------------------------------------------------------------------------------------------------------



