-- phase 4
insert into Costumer values ('123456781011', 'Harry', 'Kane', 'London', 'London', '212 Baker Street', '1796268462');
insert into Orders values ('9150001243', '123456781011', '2023-6-27 16:22:30.75');
insert into OrderDetail values ('9150001243', 'MayEStaples1989', '689161646323', 2);

update Costumer
    set phone_number = '7342780080'
    where n_code = '123456781011';

delete from Costumer
where Costumer.n_code not in (select costumer_id
                              from Orders
    );
