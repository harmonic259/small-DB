-- phase 5
select distributor, product.*, total_items_sold from (select *, row_number()
    over (partition by distributor order by total_items_sold desc) as row_count from (
        select distributor, product_barcode, sum(no_items) as total_items_sold
        from OrderDetail
        group by distributor, product_barcode
        order by distributor, total_items_sold desc
    ) as r
) as s inner join product on product_barcode = product.barcode where row_count <= 10;

select city, product.*, total_items_sold from (select *, row_number()
    over (partition by city order by total_items_sold desc) as row_count from (
        select city, product_barcode, sum(no_items) as total_items_sold
        from OrderDetail inner join Orders inner join Costumer on costumer_id = Costumer.n_code and OrderDetail.id = Orders.id
        group by city, product_barcode
        order by city, total_items_sold desc
    ) as x
) as y inner join product on product_barcode = product.barcode where row_count <= 10;

select distributor, sum(no_items) as sell_sum from OrderDetail
group by distributor
order by sell_sum desc
limit 5;

select count(*) from (
        select o.distributor, sum(o.no_items) no_Golmohamadi from OrderDetail o
        inner join Product p on p.barcode = o.product_barcode
        where p.name = 'Cake Golmohammadi'
        group by distributor
        having no_Golmohamadi > (select x.no_Crossan from
            (select o1.distributor, sum(o1.no_items) no_Crossan from OrderDetail o1
            inner join Product p1 on p1.barcode = o1.product_barcode
            where p1.name = 'Cake Crossan' and o1.distributor = o.distributor
            group by distributor) as x
    )
) as d;

select p.name, sum(no_items) as sell_count from Orders o
    inner join OrderDetail od inner join product p on p.barcode = od.product_barcode and o.id = od.id
where p.name != 'Shir'
group by p.name
order by sell_count desc
limit 3;
