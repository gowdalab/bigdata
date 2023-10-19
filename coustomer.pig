customers = LOAD 'coustomer.txt' USING PigStorage(',') as (id:int, name:chararray, age:int,
address:chararray, salary:int);
orders = LOAD 'order.txt' USING PigStorage(',') as (oid:int, date:chararray, customer_id:int,
amount:int);
join_result = JOIN customers BY id, orders BY customer_id;
Customer_Order_details_ordered = ORDER join_result BY age ASC;
Dump join_result;
Dump Customer_Order_details_ordered;
