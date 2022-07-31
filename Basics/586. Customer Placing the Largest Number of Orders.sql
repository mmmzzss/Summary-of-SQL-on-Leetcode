select customer_number from orders
group by customer_number
order by count(*) desc limit 1;
-- 可以直接用count(*)排序

select customer_number from orders 
group by customer_number 
having count(order_number) = (select count(*) as count from orders group by customer_number order by count desc limit 1);
-- 找max值，用having count() = blabla
-- order by在select之后
