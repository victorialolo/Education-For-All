-- CAPSTONE PROJECT
-- Write SQL code to extract the following insights from the dataset 
-- that will help with the business problem

SELECT * from donation_data;
SELECT * FROM donor_data;

-- QUESTION 1
-- How much is the total donation?
SELECT sum(donation) as Total_Donations
FROM donation_data;


-- QUESTION 2
-- What is the total donation by gender?
SELECT sum(donation) AS Total_Donations, gender
from donation_data
group by gender;


-- QUESTION 3
--Show the total donation and number of donations by gender
SELECT sum(donation) AS Total_Donations, count(gender) as Counts_of_Gender
from donation_data
group by gender;


-- Question 4
-- Total donation made by frequency of donation
SELECT sum(donation) AS Total_Donation, donation_frequency
FROM donation_data 
join donor_data on donor_data.id = donation_data.id
GROUP by donation_frequency;


-- QUESTION 5
-- Total donation and number of donation by Job field
SELECT sum(donation) AS Total_Donation, job_field
FROM donation_data
GROUP by job_field
order by Total_Donation desc
Limit 10;


-- QUESTION 6
-- Total donation and number of donations above $200
SELECT sum(donation) AS Total_Donation, count(donation)
FROM donation_data
where donation > 200;


-- Question 7
-- Total donation and number of donations below $200 
SELECT sum(donation) AS Total_Donation, count(donation)
FROM donation_data
where donation < 200;


-- QUESTION 8
-- Which top 10 states contributes the highest donations
SELECT sum(donation) As Total_donation, state as Top_10
from donation_data
GROUP by Top_10
ORDER by Total_donation DESC
LIMIT 10;


-- QUESTION 9
-- Which top 10 states contributes the least donations
SELECT sum(donation) As Total_donation, state as Top_10
from donation_data
GROUP by Top_10
ORDER by Total_donation ASC
LIMIT 10;


-- QUESTION 10
-- What are the top 10 cars driven by the highest donors
SELECT car as Top_10, SUM(donation)Total_donations
from donation_data
join donor_data on donation_data.id = donor_data.id
group by car
order by Total_donations desc
limit 10;



-- For recommendations based on these insights:

-- To increase the number of donors, focus on targeted marketing campaigns that highlight the impact of donations and engage potential donors through personalized messages and events.
Increase donation frequency by implementing a loyalty program or offering incentives for regular donations, such as exclusive access to events or recognition programs.
Increase the value of donations by showcasing success stories and demonstrating how larger donations can make a significant difference in achieving the organization's goals. Encourage major donors through personalized communications and recognition programs.


-- 1. Increase the Number of Donors in Your Database: 
-- This objective involves strategies to attract new donors and expand your donor base. 
-- It may include targeted marketing campaigns, outreach efforts to engage potential donors, 
-- and creating compelling messages that highlight the impact of donations. 
-- Increasing the number of donors can provide a broader support base for fundraising initiatives 
-- and diversify sources of funding.


--2. Increase the Donation Frequency of Your Donors: 
-- This objective aims to encourage existing donors to contribute more frequently. Strategies may include 
-- implementing loyalty programs, offering incentives for recurring donations, and organizing campaigns or 
-- challenges that motivate donors to give regularly. Increasing donation frequency can lead to a more stable 
-- and predictable revenue stream for your organization.

-- 3. Increase the Value of Donations in Your Database: 
-- This objective focuses on maximizing the value of each donation, whether by encouraging larger 
-- contributions from existing donors or attracting major donors who can make significant contributions. 
-- Strategies may involve showcasing the impact of larger donations, recognizing and stewarding major donors, 
-- and developing personalized communication strategies to inspire increased giving.



