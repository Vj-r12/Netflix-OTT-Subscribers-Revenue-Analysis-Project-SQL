
/**********     DATA CLEANING     **********/


SELECT * FROM NETFLIX_OTT_SUBSCRIBERS_REVENUE;


-- Extract the month and year from date column.

ALTER TABLE NETFLIX_OTT_SUBSCRIBERS_REVENUE ADD COLUMN MONTH int, ADD COLUMN YEAR int;

UPDATE NETFLIX_OTT_SUBSCRIBERS_REVENUE
SET MONTH = EXTRACT(MONTH FROM date),YEAR = EXTRACT(YEAR FROM date);

-- Extract the month from the date column and convert it into a character.

ALTER TABLE NETFLIX_OTT_SUBSCRIBERS_REVENUE ADD COLUMN MONTH_CHAR varchar;

UPDATE NETFLIX_OTT_SUBSCRIBERS_REVENUE 
SET MONTH_CHAR = TO_CHAR(date,'month');

-- Add the Column Quarter and insert the data.

ALTER TABLE NETFLIX_OTT_SUBSCRIBERS_REVENUE ADD COLUMN QUARTER varchar;

UPDATE NETFLIX_OTT_SUBSCRIBERS_REVENUE
SET QUARTER = 
             CASE
				 WHEN MONTH = 3 THEN 'Q1'
				 WHEN MONTH = 6 THEN 'Q2'
				 WHEN MONTH = 9 THEN 'Q3'
				 WHEN MONTH = 12 THEN 'Q4'
			 END;

-- Change the column name global_revenue to global_revenue_usd.

ALTER TABLE NETFLIX_OTT_SUBSCRIBERS_REVENUE RENAME COLUMN GLOBAL_REVENUE TO GLOBAL_REVENUE_USD;

-- Change the column name ucan_streaming_revenue to US_Canada_streaming_revenue.

ALTER TABLE NETFLIX_OTT_SUBSCRIBERS_REVENUE RENAME COLUMN UCAN_STREAMING_REVENUE TO US_CANADA_STREAMING_REVENUE;

-- Change the column name emea_streaming_revenue to Europe_Africa_streaming_revenue.

ALTER TABLE NETFLIX_OTT_SUBSCRIBERS_REVENUE RENAME COLUMN EMEA_STREAMING_REVENUE TO EUROPE_AFRICA_STREAMING_REVENUE;

-- Change the column name latm_streaming_revenue to latin_america_streaming_revenue.

ALTER TABLE NETFLIX_OTT_SUBSCRIBERS_REVENUE RENAME COLUMN LATM_STREAMING_REVENUE TO LATIN_AMERICA_STREAMING_REVENUE;

-- Change the column name apac_streaming_revenue to Asia_Pacific_streaming_revenue.

ALTER TABLE NETFLIX_OTT_SUBSCRIBERS_REVENUE RENAME COLUMN APAC_STREAMING_REVENUE TO ASIA_PACIFIC_STREAMING_REVENUE;

-- Change the column name ucan_members to US_canada_Members.

ALTER TABLE NETFLIX_OTT_SUBSCRIBERS_REVENUE RENAME COLUMN UCAN_MEMBERS TO US_CANADA_MEMBERS;

-- Change the column name emea_members to europe_africa_Members.

ALTER TABLE NETFLIX_OTT_SUBSCRIBERS_REVENUE RENAME COLUMN EMEA_MEMBERS TO EUROPE_AFRICA_MEMBERS;

-- Change the column name latm_members to latin_america_members.

ALTER TABLE NETFLIX_OTT_SUBSCRIBERS_REVENUE RENAME COLUMN LATM_MEMBERS TO LATIN_AMERICA_MEMBERS;

-- Change the column name apac_members to asia_pacific_members.

ALTER TABLE NETFLIX_OTT_SUBSCRIBERS_REVENUE RENAME COLUMN APAC_MEMBERS TO ASIA_PACIFIC_MEMBERS;

-- Change the column name ucan_arpu to us_canada_avg_revenue_per_user.

ALTER TABLE NETFLIX_OTT_SUBSCRIBERS_REVENUE RENAME COLUMN UCAN_ARPU TO US_CANADA_AVG_REVENUE_PER_USER;

-- Change the column name emea_arpu to europe_africa_avg_revenue_per_user.

ALTER TABLE NETFLIX_OTT_SUBSCRIBERS_REVENUE RENAME COLUMN EMEA_ARPU TO EUROPE_AFRICA_AVG_REVENUE_PER_USER;

-- Change the column name latm_arpu to latin_america_avg_revenue_per_user.

ALTER TABLE NETFLIX_OTT_SUBSCRIBERS_REVENUE RENAME COLUMN LATM_ARPU TO LATIN_AMERICA_AVG_REVENUE_PER_USER;

-- Change the column name apac_arpu to asia_pacific_avg_revenue_per_user.

ALTER TABLE NETFLIX_OTT_SUBSCRIBERS_REVENUE RENAME COLUMN APAC_ARPU TO ASIA_PACIFIC_AVG_REVENUE_PER_USER;