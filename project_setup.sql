CREATE DATABASE IF NOT EXISTS oneThousand;

USE oneThousand;

DROP TABLE IF EXISTS test_table;

CREATE TABLE test_table(
	id int AUTO_INCREMENT PRIMARY KEY, company VARCHAR(255));

CREATE TABLE IF NOT EXISTS companies(
	id INT AUTO_INCREMENT PRIMARY KEY,
	company VARCHAR(255),
	rank INT,
	rank_change INT,
	revenue INT,
	profit INT,
	num_of_employees INT,
	sector VARCHAR(255), 
	city VARCHAR(255),
	state VARCHAR(255),
	newcomer BOOLEAN, 
	ceo_founder BOOLEAN,
	ceo_woman BOOLEAN,
	profitable BOOLEAN,
	prev_rank INT,
	ceo VARCHAR(255),
	website VARCHAR(255),
	ticker VARCHAR(10),
	market_cap VARCHAR(50)
	);



CREATE TABLE IF NOT EXISTS tickers(
	
	NAME VARCHAR(255),
	TICKER VARCHAR(5),
	MONEY_MILLIONS VARCHAR(1100),
	id INT AUTO_INCREMENT PRIMARY KEY
	)

LOAD DATA LOCAL INFILE '/home/captain/Documents/projects/online/1000/1000/Fortune_1000.csv'
INTO TABLE companies
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(company,rank,rank_change,revenue,profit,num_of_employees,sector,city,state,newcomer,ceo_founder,ceo_woman,profitable,prev_rank,ceo,website,ticker,market_cap)
;
SELECT *
FROM companies
LIMIT 5;

