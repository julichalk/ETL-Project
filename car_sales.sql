DROP TABLE sales_income


CREATE TABLE sales_income (
	id SERIAL PRIMARY KEY,
	price_sold INT,
	zip_code VARCHAR,
	mileage INT,
	make VARCHAR,
	model VARCHAR,
	year INT
	
)

SELECT * FROM sales_income

DROP TABLE household_income

CREATE TABLE household_income(
	id SERIAL PRIMARY KEY,
	zip_code VARCHAR,
	number_of_households VARCHAR,
	percentage_of_households_Less_Than_$10000 VARCHAR,
	percentage_of_households_$10000_$14999 VARCHAR,
	percentage_of_households_$15000_$24999 VARCHAR,
	percentage_of_households_$25000_$34999 VARCHAR,
	percentage_of_households_$35000_$49999 VARCHAR,
	percentage_of_households_$50000_$74999 VARCHAR,
	percentage_of_households_$75000_$99999 VARCHAR,
	percentage_of_households_$100000_$149999 VARCHAR,
	percentage_of_households_$150000_$199999 VARCHAR,
	percentage_of_households_$200000_or_more VARCHAR,
	median_income VARCHAR,
	mean_income VARCHAR
)

SELECT * FROM household_income


--Joining Table

SELECT sales_income.price_sold, sales_income.zip_code, sales_income.mileage, sales_income.make, sales_income.model, 
	sales_income.year, household_income.zip_code, household_income.number_of_households, household_income.percentage_of_households_less_than_$10000, household_income.percentage_of_households_$10000_$14999,
	household_income.percentage_of_households_$15000_$24999, household_income.percentage_of_households_$25000_$34999, household_income.percentage_of_households_$35000_$49999, household_income.percentage_of_households_$50000_$74999,
	household_income.percentage_of_households_$75000_$99999, household_income.percentage_of_households_$100000_$149999, household_income.percentage_of_households_$150000_$199999, household_income.percentage_of_households_$200000_or_more
FROM sales_income
JOIN household_income
ON sales_income.zip_code = household_income.zip_code
