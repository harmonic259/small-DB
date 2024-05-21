-- phase 6
create view distributor_distributes as
    select d.*, w.* from Warehouse w
        inner join Distributor d on d.username = w.distributor
    order by d.username;

create view customer_orders as
    select  c.*, o.id as order_id, o.costumer_id, o.time, OD.*  from Orders o inner join OrderDetail OD on o.id = OD.id
        inner join Costumer c on c.n_code = o.costumer_id
    order by c.n_code;


create view product_type_brand_company as
    select p.*, b.launch_date, b.name as brandName, c.name as company_name, c.launch_date as company_launch_date, license_id, warehouse_province, warehouse_city, warehouse_street from Product p
        inner join Brand b on b.name = p.brand_name
        inner join Company c on c.license_id = b.company_id
    order by p.name;
