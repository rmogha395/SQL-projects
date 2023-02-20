show databases;
use world;
show tables;
select * from sleep_efficiency;

select gender, round(avg(sleep_duration),2) from sleep_efficiency  group by gender;
#AVERGAE SLEEPING DURATION OF BOTH GENDERS

select avg(age), gender, sleep_duration from sleep_efficiency group by gender, sleep_duration 
order by sleep_duration desc;
#BASED ON SLEEP DURATION, MENS SLEEP MORE THAN FEMALES

select avg(sleep_duration), smoking_status from sleep_efficiency group by smoking_status;
#SMOKING DOES NOT EFFECT SLEEPING DURATION MUCH

select avg(deep_sleep_percentage), avg(light_sleep_percentage), smoking_status from sleep_efficiency group by smoking_status;
#NON SMOKERS ENJOY MORE SOUND SLEEP THAN SMOKERS


select round(avg(sleep_efficiency),2) AS avg_sleep, gender from sleep_efficiency group by gender;
#SLEEP EFFICIENCY IS SAME FOR BOTH GENDERS

select round(avg(sleep_duration),2) AS avg_sleep, gender, alcohol_consumption from sleep_efficiency 
group by gender, alcohol_consumption order by alcohol_consumption;
#AVG SLEEPING TIME IS ALMOST SAME FOR BOTH ALCOHOL CONSUMERS AND NON-CONSUMERS BASED ON GENDERS

select round(avg(sleep_duration),2) AS avg_sleep, gender, exercise_frequency
from sleep_efficiency group by gender,exercise_frequency
 order by exercise_frequency desc;
 #EXERCISE FREQUENCY DONOT EFFECT MUCH THE AVERAGE SLEEP TIME FOR BOTH GENDERS