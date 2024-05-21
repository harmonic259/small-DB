create database yaghoobMarket;

use yaghoobMarket;

-- phase 2
create table Company (
    license_id char(18),
    name varchar(50) not null,
    launch_date date not null,
    warehouse_province varchar(20) not null,
    warehouse_city varchar(20) not null,
    warehouse_street varchar(20) not null,
    primary key (license_id)
);

create table Brand (
    name varchar(20),
    launch_date date not null,
    company_id char(18),
    primary key (name),
    foreign key (company_id) references Company (license_id)
);

create table Product (
    barcode char(12),
    name varchar(50) not null ,
    package_weight float not null,
    brand_name varchar(20) not null,
    primary key (barcode),
    foreign key (brand_name) references Brand (name)
);


create table Category (
    name varchar(20) not null,
    product char(12) not null,
    primary key (name, product),
    foreign key (product) references Product(barcode)
);

create table Distributor (
    username varchar(20),
    email varchar(50) not null,
    province varchar(30) not null,
    city varchar(30) not null,
    street varchar(40) not null,
    start_time time not null,
    end_time time not null,
    primary key (username)
);

create table Costumer (
    n_code char(12),
    forename varchar(20) not null,
    surname varchar(20) not null,
    province varchar(30),
    city varchar(30),
    street varchar(40),
    phone_number char(10),
    primary key (n_code)
);

create table Orders(
    id char(10) not null,
    costumer_id char(12) not null,
    time timestamp not null,
    primary key (id),
    foreign key (costumer_id) references Costumer (n_code)
);

create table OrderDetail(
    id char(10) not null,
    distributor varchar(20) not null,
    product_barcode char(12) not null,
    no_items int not null,
    primary key (distributor, product_barcode, id),
    foreign key (distributor) references Distributor (username),
    foreign key (product_barcode) references Product (barcode),
    foreign key (id) references Orders (id)
);

create table Warehouse (
    distributor varchar(20) not null,
    product_barcode char(12) not null,
    count int not null,
    primary key (distributor, product_barcode),
    foreign key (distributor) references Distributor (username),
    foreign key (product_barcode) references Product (barcode)
);

