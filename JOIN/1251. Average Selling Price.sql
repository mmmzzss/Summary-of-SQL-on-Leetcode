select p.product_id, round(sum(price*units)/sum(units),2) as average_price from prices p
left join unitsSold u
on p.product_id = u.product_id 
and u.purchase_date between p.start_date and p.end_date
group by p.product_id
