-- Returns all the columns in the table
SELECT * FROM death_sex_age.`bd-dec21-deaths-by-sex-and-age`; 
---------------------------------------------------------------
-- deleting the total from sex column

-- Deleting from the table 
delete from death_sex_age.`bd-dec21-deaths-by-sex-and-age`
-- Filterring out total to be deleted from the column
WHERE sex = "total";
-----------------------------------------------------------------

-- deleting the total from age column
-- Deleting from the table
delete from death_sex_age.`bd-dec21-deaths-by-sex-and-age`
-- Filterring out total to be deleted from the column
WHERE age = "total";
----------------------------------------------------------------
-- Top 5 female death count 

-- Returns selected columns with alies name ( Top 5 female death count)
select period,sex,age,count as "Top 5 female death count"
-- Returns the table with the selected columns
from death_sex_age.`bd-dec21-deaths-by-sex-and-age`
-- Filtering female from the sex column
where sex ="female"
-- Ordering  count in a descending format
order by count desc
-- Limit to the top 5 female death count
limit 5;
----------------------------------------------------------------

-- Top 5 male death count

-- Returns selected columns with alies name (Top 5 male death count )
select period,sex,age,count as "Top 5 male death count"
-- Returns the table with the selected columns
from death_sex_age.`bd-dec21-deaths-by-sex-and-age`
-- Filtering female from the sex column
where sex ="male"
-- Ordering count in a descending format
order by count desc
-- Limit to the top 5 male death count
limit 5;
--------------------------------------------------------------

-- Total death count of female

-- Returns selected columns witb an aggregate function sum() and alias name (total female death)
select sex, sum(count) as "total female death"
-- Returns the table with the selected columns
FROM death_sex_age.`bd-dec21-deaths-by-sex-and-age`
-- Filtering female from the sex column
WHERE sex ="female";
-----------------------------------------------------------------------------------------------------------

-- Total death count of male

-- Returns selected columns witb an aggregate function sum() and alias name (total male death)
select sex, sum(count) as "total male death"
-- Returns the table with the selected columns
FROM death_sex_age.`bd-dec21-deaths-by-sex-and-age`
-- Filtering male from the sex column
WHERE sex ="male";
-------------------------------------------------------------------------------------------------------------
-- The max  and min death count of female

-- Returns selected columns witb an aggregate function max() and alias name (max  female death count and min female death count)
select sex, max(count) as "max female death count", min(count) as "min female death count"
-- Returns the table with the selected columns
FROM death_sex_age.`bd-dec21-deaths-by-sex-and-age`
-- Filtering female from the sex column
where sex = "female";
------------------------------------------------------------------------------------------------------
-- The max  and min death count of male

-- Returns selected columns witb an aggregate function max() and alias name (max  male death count and min female death count)
select sex, max(count) as "max male death count", min(count) as "min male death count"
-- Returns the table with the selected columns
FROM death_sex_age.`bd-dec21-deaths-by-sex-and-age`
-- Filtering  male from the sex column
where sex = "male";
--------------------------------------------------------------------------------------------------

-- The total death count of infant 

-- Returns the selected columns  with an aggregate function sum() and alias name (total infant death count)
select age, sum(count) as "total infant death count"
-- Returns the table with the selected columns
FROM death_sex_age.`bd-dec21-deaths-by-sex-and-age`
-- Filtering infant from the age column
where age= "infant";
---------------------------------------------------------------------------------------------------

-- The max  and min death count of infant

-- Returns selected columns witb an aggregate function max() and alias name (max  infant death count and min infant death count)
select age, max(count) as "max infant death count", min(count) as "min infant death count"
-- Returns the table with the selected columns
FROM death_sex_age.`bd-dec21-deaths-by-sex-and-age`
-- Filtering female from the sex column
where age = "infant";
------------------------------------------------------------------------------------------------------










