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

