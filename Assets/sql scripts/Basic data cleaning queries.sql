SELECT * FROM dataset;


SELECT
      Years_employed,
      Age
  FROM
      dataset;
      
#IDENTIFYING UNIQUE DATA TO AVOID DUPLICATE DATA

SELECT
      ID,
      Count(*) AS duplicate_ids
FROM
     dataset
group by
       ID
HAVING
      count(*)>1;

#0R
       
SELECT distinct
           *
	FROM
        DATASET;
        
#TOTAL NUMBER OF PEOPLE ELIGIBLE FOR CREDIT CARDS

SELECT
     gender,
     target
FROM
     Dataset
Where
     target=1;
     
        
# IDENTIFYING THE NUMBER OF YOUTHS (below 35 years) THAT ARE ELIGIBLE FOR CREDIT CARDS

SELECT
     age,
     target
FROM 
    DATASET
WHERE
	age < 35 and target=1;
    
# ROUNDING OFF YEARS TO THE NEAREST INTEGER AND UPDATING THE TABLE

SELECT
      age,
      round(age) AS rounded_age
	FROM
       dataset;
       
SET SQL_SAFE_UPDATES = 0;

UPDATE 
      dataset
SET age = round (age);
       
#ROUNDING OFF YEARS EMPLOYED TO THE NEAREST INTEGER AND UPDATING THE TABLE 

SELECT
      Years_employed,
      round(Years_employed) AS rounded_Years_employed
	FROM
       dataset;
       
SET SQL_SAFE_UPDATES = 0;

UPDATE 
      dataset
SET Years_employed = round (Years_employed);
       
CREATE VIEW view_credit_card_eligibility AS
   SELECT
         ID,
         Gender,
         Own_car,
         Own_property,
         Work_phone,
         Phone,
         Email,
         Unemployed,
         Num_children,
         Num_family,
         Account_length,
         Total_income,
         Age,
         Years_employed,
         Income_type,
         Education_type,
         Family_status,
         Housing_type,
         Occupation_type,
         Target
	FROM
         dataset;
       
SELECT * FROM DATASET;


#IDENTIFYING GENDER ELIGIBLE FOR CREDIT CARDS IN RELATION TO LOW INCOMES (less than 100,000)
  
SELECT
     gender,
     total_income,
     Target
FROM 
    dataset
WHERE 
    total_income < 100000 and gender =0 and Target=1;
    
    
 #IDENTIFYING THE NUMBER OF FEMALES ELIGIBLE FOR CREDIT CARDS   
 SELECT
         gender,
         target
   FROM
         dataset
   WHERE
       gender=1 and target=1;
       
#COMPARING ELIGIBILITY BASED ON GENDER AND NUMBER OF CHILDREN ONE HAS

SELECT
     gender,
     Target,
     Num_children
FROM
    dataset
WHERE
    gender=0 and Num_children <>0 and target=0;
    
#IDENTIFYING HOW NUMBER OF FAMILY MEMBERS IS AFFECTING CREDIT CARD ELIGIBILITY FOR  MALE AND FEMALE

SELECT
      gender,
      target,
      Num_family
FROM
     dataset
WHERE
     gender=0 and Num_family<>0 and target=1;
     
#COMPARING HOW EMPLOYMENT AFFECTS CREDIT CARD ELGIBILITY FOR MALE AND FEMALE

SELECT
      gender,
      Unemployed,
      Years_employed,
      target
FROM
    dataset
WHERE
     gender=1 and unemployed=0 and Years_employed=0 and target=1; 
     
     
#IDENTIFYING HIGH INCOME EARNERS WHO ARE ELIGIBLE FOR CREDIT CARDS BASED ON THEIR INCOME TYPE, EDUCATION TYPE, FAMILY STATUS

SELECT
     Income_type,
     Education_type,
     Family_status,
     gender,
     target,
     total_income
FROM
    dataset
WHERE
    gender=0 and Total_income>100000 and Income_type ='working' and Family_status= 'married' and Education_type='higher education' and target=1;


#IDENTIFYING CREDIT CARD ELIGIBILITY BASED ON ACCOUNT LENGTH

SELECT
      Account_length,
      gender,
      target
FROM
    dataset
WHERE
     Account_length<10 AND gender=0 and Target=1;
     
#IDENTIFYING CREDIT CARD ELIGIBILITY BASED ON ACCESS TO COMMUNICATION TOOLS

SELECT
      Work_phone,
      Phone,
      Email,
      Gender,
      Target
FROM
    dataset
WHERE
Work_phone=0 and Phone=0 and Email=0 and Gender=0 and Target=0;

#IDENTIFYING HOW ASSETS INFLUENCE ELIGIBILITY FOR CREDIT CARDS

SELECT
      Gender,
      Own_car,
      Own_property,
      target
FROM
    Dataset
WHERE
     Own_car=1 and Own_property=1 and gender=0 and target=1;
     
     

     