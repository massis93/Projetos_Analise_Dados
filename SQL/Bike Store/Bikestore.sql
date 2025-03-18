SELECT * FROM ORDER_ITEMS

SELECT * FROM PRODUCTS

UPDATE order_items
SET list_price = list_price/100

update products
set list_price = list_price /100

-- 1 - Qual o valor total de estoque por marca?


WITH valor as(SELECT brand_name, 
					 brands.brand_id,
		list_price * quantity as valor
FROM stocks
INNER JOIN products
ON products.product_id = stocks.product_id
INNER JOIN brands
ON brands.brand_id = products.brand_id),
total as(
select  brand_name, 
		SUM(valor) as total
from valor
group by brand_name)
select brand_name,
	   total,
	   round(total/SUM(total) over(),2)*100 as pct
from total
order by pct desc

-- 2 Qual o faturamento por marca

with tb1 as (SELECT order_id,
	  ( quantity*oi.list_price)* (100-discount)/100 as valor_compra,
	  brand_name
	   FROM ORDER_ITEMS AS oi
left JOIN products AS p
on p.product_id = oi.product_id
left join brands as b
on b.brand_id = p.brand_id),

tb2 as(
select brand_name,
	   round(SUM(valor_compra), 2) as faturamento
from tb1
group by brand_name)

select brand_name,
	   faturamento,
	   round(faturamento/sum(faturamento) over(),2)*100 as pct
from tb2
order by pct desc

-- 3 - Quantos Modelos de produtos de cada marca possui?
with qtd as (select brand_id,
		            COUNT(product_id) as qtdd
from products
group by brand_id)
SELECT brand_name, qtdd
from qtd
left JOIN brands
on brands.brand_id = qtd.brand_id
order by qtdd desc




-- 4 - Qual é o valor de estoque por Loja?

with tb1 as (SELECT s.store_id,
	   st.store_name,
	   s.product_id,
	   b.brand_name,
	   quantity * list_price as valor_estoque
FROM STOCKS AS S
left JOIN products AS P
ON S.product_id = P.product_id
left join brands b
on b.brand_id = P.brand_id
left join stores as st
on st.store_id = S.store_id)

select store_name,
	   round(sum(valor_estoque),2) as valor_total_estoque
from tb1
group by store_name
order by valor_total_estoque 

-- 5 - Qual é o Faturamento por loja

with tb1 as(SELECT o.order_id,
	   (list_price * quantity)*(100-discount)/100 as valor,
	   s.store_id,
	   store_name

FROM ORDER_ITEMS as oi
LEFT JOIN orders as o
ON o.order_id = oi.order_id
left join stores as s
on s.store_id = o.store_id),
tb2 as(
select store_name,
	   round(SUM(valor),2) as faturamento
from tb1
group by store_name)

select store_name,
	   faturamento,
	   round(faturamento/sum(faturamento) over(),2) as pct
from tb2





-- 6 - Qual o produto que mais vende de cada marca?

with tb1 as (select b.brand_name,
	   p.product_name,
	   sum(quantity) as quantidade_vendas   
from order_items as o
inner join products as p
on p.product_id = o.product_id
inner join brands as b
on p.brand_id = b.brand_id
group by brand_name, p.product_id, product_name),
tb2 as (
select brand_name,
	   product_name,
	   quantidade_vendas,
	   RANK() over(partition by brand_name order by quantidade_vendas desc) as ranking
from tb1)
select *
from tb2
where ranking = 1


-- 7 - Quais os 10 clientes que mais compraram?



with tb1 as (select order_id,
	   p.product_id,
	   quantity,
	   oi.list_price,
	   oi.discount,
	   round(quantity * oi.list_price * (100-discount)/100, 2 ) as total_com_desconto
from order_items as oi
inner join products as p
on oi.product_id = p.product_id),
tb2 as(
select order_id,
	   SUM(total_com_desconto) as valor_pedido
from tb1
group by order_id),
tb3 as (
select o.order_id,
       valor_pedido,
	   o.customer_id, 
	   first_name + ' ' + last_name as full_name
from tb2
inner join orders as o
on o.order_id = tb2.order_id
inner join customers as c
on c.customer_id = o.customer_id)

select top(10) full_name,
	   SUM(valor_pedido) as total_gasto
from tb3
group by full_name
order by total_gasto desc




-- 8 - Qual o produto de cada categoria que mais vende?

with tb1 as (select product_name,
	   category_name,
	   quantity
from order_items as oi
left join products as p
on p.product_id = oi.product_id
left join categories as c
on c.category_id = p.category_id),
tb2 as (
select product_name,
	   category_name,
	   SUM(quantity) as quantidade_vendas
from tb1
group by product_name, category_name),
tb3 as (
select category_name,
	   product_name,
	   quantidade_vendas,
	   RANK() over (partition by category_name order by quantidade_vendas desc) as ranking
from tb2)
select *
from tb3
where ranking = 1


-- 9 - Qual foi o  faturamento de cada categoria por valor monetario e percentual


with tb1 as (select category_name,
	   oi.list_price*quantity* (100-discount)/100 as valor_com_desconto
from order_items as oi
left join products as p
on p.product_id = oi.product_id
inner join categories as c
on c.category_id = p.category_id),
tb2 as(
select category_name,
	   round(SUM(valor_com_desconto),2) as total_vendido
from tb1
group by category_name)
select category_name,
	   total_vendido,
	   round(total_vendido/SUM(total_vendido) over(),2) as pct_total
from tb2
order by pct_total desc



-- 10 - Quais os 3 produto que mais vendem por loja



with tb1 as (select s.store_name,
	   p.product_name,
	   count(p.product_id) as qtd_vendida
from order_items as oi
left join products as p
on oi.product_id = p.product_id
left join orders as o
on o.order_id = oi.order_id
left join stores as s
on o.store_id = s.store_id
group by s.store_name, p.product_name),
tb2 as (
select store_name,
	   product_name,
	   qtd_vendida,
	   ROW_NUMBER() over(partition by store_name order by qtd_vendida desc) AS RANKING
from tb1)

select * from tb2
where RANKING in (1,2,3)




-- 11 - Qual as 5 cidade que mais gastaram?

with tb1 as (select o.order_id,
	   oi.product_id,
	   p.product_name,
	   oi.list_price,
	   oi.quantity,
	   city
from orders as o
left join customers as c
on c.customer_id = o.customer_id
left join order_items as oi
on oi.order_id = o.order_id
left join products as p
on p.product_id = oi.product_id),
tb2 as(
select list_price * quantity as total_vendido,
	   city
from tb1)
select top(5) city,
	   SUM(total_vendido) as faturamento_cidade
from tb2
group by city
order by faturamento_cidade desc
