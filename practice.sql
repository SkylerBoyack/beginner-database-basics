create table person 
	(people_id serial primary key,
 	name varchar(20),
  age int, 
  height int,
  city varchar(20),
  favorite_color varchar(15) );
  
  insert into person(name, age, height, city, favorite_color) 
  values 
  ('Skyler Boyack',21, 172,'Lehi','orange'),
  ('Kyle Coles',23, 182,'Lehi','red'),
  ('Dawson Hall',21,168,'Pleasant Grove','white'),
  ('Brennden Higgens',20, 180,'ParkCity', 'blue'),
  ('Tanner Denison', 20, 178, 'Lehi', 'red');

  select height from person 
  order by height desc
  
  select height from person 
  order by height asc

  select * from person
    order by age desc

    select * from person
   where age > 20

   select * from person 
    where age = 18

    select * from person 
      where age < 20 or age > 30

      
	select * from person 
  where age !=27;

  select * from person 
    where favorite_color !='red'

select * from person 
    where favorite_color !='red' and favorite_color !='blue'
  
  select * from person
      where favorite_color ='orange' or favorite_color ='green'

      	select * from person 
    where favorite_color in ('orange','green','blue')

    select * from person 
      where favorite_color in ('yellow', 'purple')

      create table orders
      (order_id serial primary key,
      	person_id int,
       	product_name char(15),
       product_price numeric,
       quantity int);

       	insert into orders (person_id, product_name,product_price,quantity)
        values
        (1,'coke',2.99,12),
        (2,'MTD',1.99,24),
        (3,'monster', 4.50,2),
        (4,'pokemon cards',50.90,1),
        (5, 'water',0.99,36);
        
        select * from orders;

        select sum(quantity) from orders

        select sum(product_price * quantity) from orders

	    select sum(product_price * quantity) from orders where person_id = 1;

        insert into artist (name)
    values
    ('MGK'),('Black Bear'),('Lil Peep')

    select * from artist 
  order by name desc limit 10;

   select * from artist 
    order by name asc limit 5

    	select * from artist 
    where name like 'Black%'

    
		select first_name,last_name from employee
    where city= 'Calgary'
  
  	select max(birth_date) from employee

    select min(birth_date) from employee

    select * from employee where reports_to = 2

    	select count(*) from employee 
      where city = 'Lethbridge'

      select count(*) from invoice 
    where billing_country = 'USA'

    select max(total) from invoice 
    
    -- or if you wanted to know everything 
    select * from invoice 
  order by total desc limit  1

  	select min(total) from invoice

      select * from invoice
  where total > 5

  select count(*) from invoice
  where total > 5

    	select count(*) from invoice 
    where billing_state in ('CA','TX','AZ')

    	select avg(total) from invoice

        	select sum(total)from invoice