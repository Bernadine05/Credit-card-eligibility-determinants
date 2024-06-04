# Credit-card-eligibility-determinants

## Project Overview

This data analysis project aims to provide insights into factors determining credit card eligibility for both male and female customers in a financial institution. It looks into various variables that help the customer management team at the financial institution understand factors that influence an individual's eligibility for a credit card by identifying patterns and making data-driven recommendations that enhance the team's strategies.

## Data Sources

Credit card eligibility dataset: The primary dataset used for this analysis contains detailed information about factors that determine an individual's credit card eligibility

## Tools Used

- Excel - Data cleaning
- SQL server (MySQL) - Data analysis
- Power bi - Creating a report/dashboard

## Data Cleaning and preparation

In the initial data preparation phase, I performed the following tasks:
1. Data loading
2. Data type, column count, row count, and duplicate check
3. Data cleaning and formatting

## Exploratory Data Analysis

EDA involved exploring the credit card eligibility data to answer key questions such as:

- How does access to communication affect credit card eligibility?
- How does credit card credibility differ between genders based on age and income?
- How do family dynamics impact credit card eligibility?
- Does the number of assets an individual owns affect their credit card eligibility?

# Data Analysis

Code and features I worked with

```SQL
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

#IDENTIFYING HOW THE NUMBER OF FAMILY MEMBERS IS AFFECTING CREDIT CARD ELIGIBILITY FOR  MALE AND FEMALE

SELECT
      gender,
      target,
      Num_family
FROM
     dataset
WHERE
     gender=0 and Num_family<>0 and target=1;

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

```

## Results/Findings

