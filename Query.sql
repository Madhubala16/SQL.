--4
select pack_id,speed,monthly_payment
from packages

--5
select * from customers

select customer_id,First_Name,Last_Name,main_phone_num,secondary_phone_num,pack_id
from customers

--6
SELECT First_Name,Last_Name,Join_Date,monthly_discount,monthly_discount+(20*monthly_discount)/100  'After 20% addition' ,monthly_discount-(20*monthly_discount)/100  'After 20% Reduction'
from customers

--7
select pack_id,speed,strt_date,monthly_payment,monthly_payment*12 'Yearly Payment'
from packages

--8
select Last_Name+' '+First_Name 'FULL_NAME',main_phone_num+', '+' '+secondary_phone_num 'CONTACT_DETAILS'
from customers

--9
SELECT DISTINCT City from customers

--10
select distinct StateName from customers

--11
select distinct City,StateName from customers

--12
select Last_Name+' '+StateName 'CUSTOMER_AND_STATE' from customers

--13
SELECT First_Name 'FN',Last_Name 'LN',monthly_discount 'DC',City+' '+street 'FULL_ADDRESS'
FROM Customers

--14
select distinct monthly_discount from customers

--15
select distinct pack_id from customers

--16
select First_Name,Last_Name,pack_id
from customers
where Last_Name = 'King'

--17
select * from customers

SELECT * FROM Packages 
where speed='5Mbps'

--18
select First_Name,Last_Name,pack_id,monthly_discount
from customers
where monthly_discount<30

--19
select *
from customers
where Join_Date<'2007-01-01'

--20
select Customer_id,First_Name,StateName,City,pack_id
from customers 
where pack_id in(21,28,14)--=21 or pack_id=28 or pack_id=14

--21
SELECT Customer_id,First_Name,StateName,City,pack_id
from customers
where pack_id not in(27,10,3)

--22
SELECT Last_Name,main_phone_num,monthly_discount,pack_id
from customers
where Customer_id in(703, 314 , 560)

--23
select First_Name,monthly_discount
from customers 
where First_Name like '%e'

--24
select Last_Name,pack_id
from customers
where Last_Name like '%d_' 

--25
select *
from customers
where(Last_Name like '%i%' or Last_Name like'%j%' or Last_Name like'%h%')
order by(monthly_discount)desc

--26
select First_Name,Last_Name,Join_Date,monthly_discount,pack_id
from customers
where (Last_Name not like '%a%') 
order by(pack_id)

--27
select *
from customers
where pack_id=NULL

--28
SELECT First_Name+' '+Last_Name,monthly_discount
from customers
where monthly_discount not between 20 and 30

--29
select First_Name+' '+Last_Name,main_phone_num+' '+Street,monthly_discount
from customers
where monthly_discount between 11 and 27

--30
select *
from customers
where City='NewYork'
and monthly_discount between 30 and 40
or pack_id not in(8,19,30)
and Join_Date< '2007-01-01'

--31
select Last_Name,pack_id,Birth_Date
from customers
where Join_Date between '2007-12-12' and '2010-04-17'

--32
select * from packages

select pack_id,strt_date,speed 
from packages
where strt_date < '2007-01-01'

--33
select pack_id,speed,sector_id
from packages
where sector_id= 1

--34
select pack_id,speed,sector_id 
from packages
where (speed ='5Mbps' or speed='10Mbps')

--35
select Last_Name,monthly_discount
from customers
where City='Orlando'

--36
select Last_Name,pack_id 
from customers
where pack_id = 9 or pack_id=18

--37
select First_Name,main_phone_num,secondary_phone_num
from customers
where secondary_phone_num is NULL

--38
select First_Name,monthly_discount,pack_id
from customers
where monthly_discount is NULL

--39
select Customer_id,lower(First_Name),upper(Last_Name)
from customers
where Customer_id between 80 and 150

--40a
select Last_Name,First_Name,(concat(substring(First_Name,1,1),substring(Last_Name,1,3))+'@mymail.com')'email address'
from customers

--40b
select Last_Name,First_Name,(concat(substring(First_Name,1,1),substring(Last_Name,3,3))+'@mymail.com')'email address'
from customers

--41
select Last_Name ,LEN(Last_Name) 'length'
from customers
where len(Last_Name)>9

--42a
select First_Name,Last_Name,main_phone_num,(REPLACE(main_phone_num,'515','$$$')) 'new phone number'
from customers

--42b
select First_Name,Last_Name,main_phone_num,(REPLACE(LEFT(main_phone_num,3),'515','$$$')) + SUBSTRING(main_phone_num,4,12)'new phone number'
from customers

--43a
select First_Name
from customers

--43b
select monthly_discount
from customers

--43c
select monthly_discount+(19.7*monthly_discount)/100
from customers

--43d
select round((monthly_discount+(19.7*monthly_discount)/100),2)
from customers

--43e
select floor((monthly_discount+(19.7*monthly_discount)/100))
from customers

--43f
select ceiling((monthly_discount+(19.7*monthly_discount)/100))
from customers

--44
select * from customers
select First_Name,Join_Date,dateadd(dd,-10,join_date),dateadd(MM,1,Join_Date),datediff(dd,Join_Date,getdate())
from customers

--45
select First_Name,Birth_Date,datediff(yy,Birth_Date,getdate()) 'Age'
from customers
where datediff(yy,Birth_Date,getdate()) >50

--46
select *
from customers
where Birth_Date=GETDATE()

--47
select First_Name,Join_Date
from customers
where datediff(yy,Join_Date,getdate()) = 5

--48
select First_Name + ' ' + CAST(Join_Date as varchar(5)) , Last_Name+ ' ' + CAST(monthly_discount as varchar(5))
from customers

--49
select Last_Name,upper(StateName)+ ' ' +convert(varchar(5),Customer_id),cast(Join_Date as varchar(50)) +' '+ cast(Birth_Date as varchar(50))
from customers
where substring(Last_Name,1,1) in ('a','d','k')

--50a
select pack_id,First_Name,Last_Name,Birth_Date,main_phone_num,secondary_phone_num,replace(main_phone_num,'NULL','N/A'),replace(secondary_phone_num,'NULL','N/A')
from customers
where pack_id=27

--50b
select First_Name,Last_Name,Birth_Date,main_phone_num,secondary_phone_num,replace(main_phone_num,'NULL','N/A'),replace(secondary_phone_num,'NULL','N/A')
from customers
where Birth_Date between '1972-01-01' and '1972-12-31'

--51
select First_Name,Last_Name,monthly_discount,
case
when monthly_discount between 0 and 10 then 'A'
when monthly_discount between 11 and 20 then 'B'
when monthly_discount between 21 and 30 then 'C'
else 'D'
end 'Grades'
from customers

--52
select min(Last_Name) 
from customers

--53
select * from packages
select AVG(monthly_payment) 
from packages

--54
select max(Last_Name) 
from customers
 
--55
select count(*) from packages

--56
select count(*) from customers

--57
select distinct(StateName) 
from customers

--58
select distinct(speed) 
from packages

--59
select count(*) 
from customers
where fax is not null 

--60
select count(*) 
from customers
where fax is null 

--61
select min(monthly_discount)'Lowest',max(monthly_discount)'Highest',avg(monthly_discount) 'Average'
from customers

--62
select StateName, count (Customer_id)
from customers
group by (StateName)

--63
select speed,avg(monthly_payment)
from packages
group by speed

--64
select StateName,count(distinct City)
from Customers
group by StateName

select * from customers

--65
select sector_id,max(monthly_payment)
from packages
group by(sector_id)

--66a
select pack_id,avg(monthly_discount) 'Average'
from customers
group by(pack_id)

--66b
select pack_id,avg(monthly_discount) 'Average'
from customers
where pack_id in(22,13)
group by(pack_id)

--67
select speed,min(monthly_payment)'Lowest',max(monthly_payment)'Highest',avg(monthly_payment)'Average'
from packages
group by speed

--68a
select pack_id,count(Customer_id)'No of customers'
from customers
group by pack_id

--68b
select pack_id,count(Customer_id)'No of customers'
from customers
where monthly_discount>20
group by pack_id

--68c
select pack_id,count(Customer_id)'No of customers'
from customers
group by pack_id
having count(Customer_id)>100

--69
select StateName,City,count(*)
from customers
group by StateName,City

--70a
SELECT City,avg(monthly_discount)
from customers
group by City

--70b
SELECT City,avg(monthly_discount)
from customers
where monthly_discount>20
group by City

--71a
Select StateName,min(monthly_discount)
from customers
group by StateName

--71b
Select StateName,min(monthly_discount)
from customers
group by StateName
having min(monthly_discount)>10

--72
select speed,count(*)
from packages
group by speed
having count(*)>8

--73a
select * from customers
select * from packages
select c.First_Name,c.Last_Name,c.pack_id,p.speed
from customers c,packages p
where c.pack_id=p.pack_id

--73b
select c.First_Name,c.Last_Name,c.pack_id,p.speed
from customers c,packages p
where c.pack_id=p.pack_id
and
p.pack_id in(22,27)
order by(c.Last_Name)

--74a
select * from packages
select * from Sectors
select p.pack_id,p.speed,p.monthly_payment,s.sector_name
from packages p,Sectors s
where p.sector_id=s.sector_id

--74b
select * from customers
select c.First_Name+' '+c.Last_Name 'Customer Name',c.pack_id,p.speed,p.monthly_payment,s.sector_name
from customers c,packages p,sectors s
where p.sector_id=s.sector_id
and c.pack_id=p.pack_id

--74c
select c.First_Name+' '+c.Last_Name 'Customer Name',c.pack_id,p.speed,p.monthly_payment,s.sector_name
from customers c,packages p,sectors s
where p.sector_id=s.sector_id
and c.pack_id=p.pack_id
and s.sector_name='Business'

--75
select c.Last_Name,c.First_Name,c.Join_Date,c.pack_id,p.speed,s.sector_name
from customers c,packages p,sectors s
where p.sector_id=s.sector_id
and c.pack_id=p.pack_id
and Join_date between '2006-01-01' and '2006-12-31'

--76
select * from packages
select * from pack_grades
select p.pack_id,p.speed,p.monthly_payment,g.grade_id
from packages p,pack_grades g

--77a
select c.First_Name,c.Last_Name,p.speed,p.monthly_payment
from customers c inner join packages p
on c.pack_id=p.pack_id

--77b
select c.First_Name,c.Last_Name,p.speed,p.monthly_payment
from customers c left outer join packages p
on c.pack_id=p.pack_id

--77c
select c.First_Name,c.Last_Name,p.speed,p.monthly_payment
from customers c right outer join packages p
on c.pack_id=p.pack_id

--77d
select c.First_Name,c.Last_Name,p.speed,p.monthly_payment
from customers c full outer join packages p
on c.pack_id=p.pack_id

--78
SELECT c.last_name , c.first_name , c.pack_id
FROM customers c , customers c1
where c1.last_name = 'Taylor' AND c1.first_name = 'Amado'
AND      c1.pack_id = c.pack_id

--79
select Last_Name,First_Name,monthly_discount
from customers 
where monthly_discount<(select monthly_discount
							from customers
							where Customer_id=103)

--80
select pack_id,speed
from packages
where speed=(select speed
			from packages
			where pack_id=10)

--81
select First_Name,Last_Name,City,StateName
from customers
where StateName=(select StateName 
					from customers
					where Customer_id=170)

--82
select * from packages
select pack_id,speed,sector_id
from packages
where sector_id=(select sector_id 
					from packages
					where pack_id=10)

--83
select First_Name,Last_Name,Join_date
from customers
where Join_Date > (select Join_Date 
					from customers
					where Customer_id=540)

--84
SELECT First_Name , Last_Name , Join_Date
FROM customers
WHERE year(Join_Date) = (SELECT year( Join_Date) FROM customers WHERE customer_id = 372)
AND
month(Join_Date) = (SELECT month(Join_Date) FROM customers WHERE customer_id = 372)

--85
select c.First_Name,c.Last_Name,c.City,c.StateName,p.pack_id
from Customers c, packages p
where c.pack_id=p.pack_id
and p.speed='5Mbps'

--86
select pack_id,speed,strt_date
from packages
where strt_date=(select strt_date 
				from packages
				where pack_id=7)

--87
select * from customers
select * from sectors
select c.First_Name,c.monthly_discount,p.pack_id,c.main_phone_num,c.secondary_phone_num
from customers c,packages p,sectors s
where c.pack_id=p.pack_id
and	  p.sector_id=s.sector_id
and	  s.sector_name='Business'	

--88
select c.First_Name,c.monthly_discount,p.pack_id
from customers c,packages p
where c.pack_id=p.pack_id 
and monthly_payment > (select avg(monthly_payment)
						from packages)

--89
select First_Name,City,StateName,Birth_Date,monthly_discount
from customers
where Birth_Date=(select Birth_Date 
					from customers
					where Customer_id=179)
and  monthly_discount>(select monthly_discount
						from customers
						where Customer_id=107)

--90
select *
from packages
where speed = (select speed 
				from packages
				where pack_id=30)
and monthly_payment >(select monthly_payment
						from packages
						where pack_id=7)

--91
select pack_id,speed,monthly_payment 
from packages
where monthly_payment > (select max(monthly_payment)
							from packages
							where speed='5Mbps')

--92
select pack_id,speed,monthly_payment 
from packages
where monthly_payment > (select min(monthly_payment)
							from packages
							where speed='5Mbps')

--93
select pack_id,speed,monthly_payment 
from packages
where monthly_payment < (select min(monthly_payment)
							from packages
							where speed='5Mbps')

--94
select First_Name,monthly_discount,pack_id
from customers
where monthly_discount<(select avg(monthly_discount)
					from customers)
and pack_id = (select pack_id
				from customers 
				where First_Name='Kevin')
