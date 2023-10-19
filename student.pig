student = LOAD 'student_details.txt' USING PigStorage(',') as (id:int, firstname:chararray,
lastname:chararray, age:int, phone:chararray, city:chararray);
filter_data = FILTER student BY city == 'Bangalore';
group_data = GROUP student by age;
Dump filter_data;


Dump group_data;

