-- find all products --
 select * from bestbuy.products;
-- find all products that cost $1400
select * from bestbuy.products where Price = 1400;
-- find all products that cost $11.99 or $13.99
 select * from bestbuy.products as p where p.Price = 11.99 or p.Price = 13.99;
 -- find all products that do NOT cost 11.99 - using NOT
 select * from bestbuy.products where Price != 11.99;
-- find  all products and sort them by price from greatest to least
 select * from bestbuy.products as p order by p.Price desc;
-- find all employees who don't have a middle initial
 select * from bestbuy.employees where MiddleInitial is null;
-- find distinct product prices
 select distinct bestbuy.products.Price from bestbuy.products;
-- find all employees whose first name starts with the letter ‘j’
 select * from bestbuy.employees where FirstName like 'j%';
-- find all Macbooks --
 select * from bestbuy.products where name = 'macbook';
-- find all products that are on sale
 select * from bestbuy.products where OnSale = 1;
-- find the average price of all products --
 select avg(bestbuy.products) from bestbuy.products;
-- find all Geek Squad employees who don't have a middle initial --
 select * from bestbuy.employees as e where e.MiddleInitial is null and e.Title = 'Geek Squad';
-- find all products from the products table whose stock level is in the range  -- of 500 to 1200. Order by Price from least to greatest. **Try this with the -- between keyword** 
select * from products where stocklevel between 500 AND 1200 order by Price ASC;
-- joins: select all the computers from the products table:
 -- using the products table and the categories table, return the product name and the category name
 select p.name as product,  c.name as category from products
 inner join categories as c on c.categoryid = p.categoryid
 where categoryid = 1;
-- joins: find all product names, product prices, and products ratings that have a rating of 5
 select p.name, p.price, p.rating from products as p
 inner join reviews as r on r.ProductID = p.ProductID
 where r.Rating = 5;
-- joins: find the employee with the most total quantity sold.  use the sum() function and group by
select e.FirstName, e.LastName, sum(s.Quantity) as total from sales as s 
inner join employees as e on e.employeesID = s.employeeID
group by e.EmployeeID
order by total desc
limit 2;
-----------------------------------------------------------------
-- joins: find the name of the department, and the name of the category for Appliances and Games
select d.Name as 'department name' from departments as d
inner join categories as c on c.DepartmentID = d.DepartmentID
where c.Name = 'appliances' or c.Name = 'games';
-- joins: find the product name, total # sold, and total price sold,
-- for Eagles: Hotel California --You may need to use SUM()
select p.Name, sum(s.quantity) as 'total sold', sum(s.quantity * s.PricePerUnit) as 'total price' from products as p
inner join sales as s on s.ProductID = p.ProductID
where p.ProductID = 97;
select * from sales where ProductID = 97;
-- joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!)
select p.Name, r.Reviewer, r.Rating, r.Comment from products  as p
inner join reviews as r on r.ProductID = p.ProductID
where p.ProductID = 857 and r.rating = 1;