
use ecommerce;
-- 3 
DESC users_data ;
-- 4 
select*from users_data limit 100 ;
-- 5 
select count(distinct country) country, count(distinct language) language from users_data;
-- 6 
select sum(socialNbFollowers) ,gender from users_data group by gender;
-- 7
select count(*) from users_data where hasProfilePicture='True';
select count(*) from users_data where hasAnyApp='True';
select count(*) from users_data where hasAndroidApp='True';
select count(*) from users_data where hasIosApp='True';
-- 8
select count(productsBought) ,country from users_data group by country  order by count(productsBought) desc;

-- 9
select country, count(productsSold) from users_data group by country  order by count(productsSold) asc;
-- 10
select country ,max(productsPassRate) from users_data group by country order by max(productsPassRate)  desc limit 10 ; 
-- 11
select count(*) from users_data group by language ;
-- 12 (two way) 
select  sum(productsWished) from users_data where gender='F' union select sum(socialProductsLiked) from users_data where gender = 'F';
select sum(socialProductsLiked), sum(productsWished) from users_data where gender='F';
-- 13 
select  count(productssold) from users_data where gender='M' union select count(ProductsBought) from users_data where gender = 'M';
-- 14 
select country, count(productsBought) from users_data group by country order by  count(productsBought) desc;
-- 15(two way) 
select country, count(productsSold) from users_data group by country order by  count(productssold) asc limit 10; 
select country , productsSold from users_data  where  productssold='0' limit 10 ;
-- 16  
select * from users_data order by daysSinceLastLogin limit 110  ;
-- 17
select gender ,count(daysSinceLastLogin) from users_data where  gender = 'F' and  daysSinceLastLogin>100;
-- 18
select count(*) from users_data where gender= 'F' order by country ;
-- 19
select count(*) from users_data where gender= 'M' order by country ;
-- 20
select country , avg(productsSold),avg(productsBought) from users_data where gender= 'M' order by country ;
