-- phase 3
insert into Company values ('125482634572945372', 'Ab Madani Sazan', '2005-7-21', 'West Midlands', 'Birmingham', '343 Ladypool Rd');
insert into Company values ('125482634576392647', 'Chai Sazan', '2003-4-11', 'Glasgow City', 'Glasgow', '17-21 Nithsdale Rd');
insert into Company values ('125482634571328822', 'Abmiveh Sazan', '2008-5-10', 'Avon', 'Bath', 'James St W');
insert into Company values ('125482634579930234', 'Bastani Sazan', '2000-12-06', 'Shropshire', 'Shrewsbury', 'Crowmere Rd');
insert into Company values ('125482634572939327', 'Cake Sazan', '2003-8-22', 'Essex', 'Benfleet', '15 High St');
insert into Company values ('125482634547749874', 'Chips Sazan', '2009-7-03', 'Devon', 'Tavistock', 'Bedford Square');

insert into Brand values ('Vata', '2007-10-22', '125482634572945372');
insert into Brand values ('Golestan', '2005-6-07', '125482634576392647');
insert into Brand values ('Sunich', '2010-11-09', '125482634571328822');
insert into Brand values ('Sunstar', '2009-8-02', '125482634571328822');
insert into Brand values ('Panda', '2002-2-20', '125482634579930234');
insert into Brand values ('Browny', '2006-9-14', '125482634572939327');
insert into Brand values ('Kitkat', '2005-11-03', '125482634572939327');
insert into Brand values ('Chitoz', '2012-01-18', '125482634547749874');
insert into Brand values ('Cakey', '2011-02-12', '125482634547749874');



insert into Product values ('689161943655', 'Ab 1.5 litri', 2.0, 'Vata');
insert into Product values ('689161944722', 'Ab 3 litri', 3.5, 'Vata');
insert into Product values ('689161646323', 'Chai kiseyee', 1.0, 'Golestan');
insert into Product values ('689160892324', 'Chai Gilan', 1.0, 'Golestan');
insert into Product values ('689164638276', 'Ab Anbeh', 2.5, 'Sunich');
insert into Product values ('689106070871', 'Biscuit', 2.0, 'Kitkat');
insert into Product values ('689328632632', 'Bastani Aroosaki', 2.0, 'Panda');
insert into Product values ('689108725625', 'Ab Ananas', 4.0, 'Sunich');
insert into Product values ('689163215733', 'Ab Porteghal', 3.0, 'Sunstar');
insert into Product values ('689808978623', 'Chips Felfeli', 1.5, 'Chitoz');
insert into Product values ('689132523780', 'Cake Shokolati', 2.5, 'Browny');
insert into Product values ('689214513519', 'Bastani Shokolati', 2.0, 'Panda');
insert into Product values ('689132546923', 'Cake Golmohammadi', 0.5, 'Cakey');
insert into Product values ('689027544208', 'Cake Crossan', 0.5, 'Browny');

insert into Category values ('Ab', '689161943655');
insert into Category values ('Nooshidani', '689161943655');
insert into Category values ('Chai', '689161646323');
insert into Category values ('Abmiveh', '689164638276');
insert into Category values ('Bastani', '689328632632');
insert into Category values ('Yakhchali', '689214513519');
insert into Category values ('Tanagholat', '689808978623');
insert into Category values ('Shirini', '689132523780');
insert into Category values ('Gyahee', '689160892324');
insert into Category values ('Biscuit ha', '689106070871');


insert into Costumer values ('205111443711', 'Clarence', 'Bell', 'Merseyside', 'Bootle', '13 Aintree Rd', '1519221212');
insert into Costumer values ('205474863388', 'Leah', 'Phillips', 'Midlothian', 'Edinburgh', '137 Duddingston Rd W', '1316617688');
insert into Costumer values ('205284738893', 'Ben', 'Jones', 'Down', 'Newcastle', '109 Dundrum Rd', '2843722054');
insert into Costumer values ('204229948900', 'Kirsty', 'Gray', 'West Midlands', 'Birmingham', '27 Alvechurch Rd', '1214776672');
insert into Costumer values ('204747992201', 'Jake', 'Rogers', 'North Yorkshire County', 'York', '84 Gillygate', '1904655116');

insert into Distributor values ('MayEStaples1989', 'MayEStaples@armyspy.com', 'South Humberside', 'Grimsby', '	202 Little Coates Rd', '08:30:00', '21:59:59');
insert into Distributor values ('JoanJPeterson1992', 'JoanJPeterson@dayrep.com', 'Lincolnshire', 'Grantham', 'Stoke Rochford', '08:00:00', '21:59:59');
insert into Distributor values ('ShariJClark1976', 'ShariJClark@jourrapide.com', 'Greater London', 'Ilford', '36 Woodford Ave', '09:00:00', '23:59:59');
insert into Distributor values ('TammieMKraft1983', 'TammieMKraft@rhyta.com', 'West Yorkshire', 'Wakefield', 'Bankfoot St', '09:30:00', '22:59:59');

insert into Orders values ('9150001001', '205111443711', '2023-5-26 15:22:30.75');
insert into Orders values ('9150001004', '205284738893', '2023-5-27 11:14:17.50');
insert into Orders values ('9150001017', '204747992201', '2023-5-29 19:47:14.25');

insert into Warehouse values ('MayEStaples1989', '689161943655', 10);
insert into Warehouse values ('MayEStaples1989', '689161646323', 7);
insert into Warehouse values ('JoanJPeterson1992', '689160892324', 9);
insert into Warehouse values ('ShariJClark1976', '689164638276', 11);
insert into Warehouse values ('ShariJClark1976', '689214513519', 6);
insert into Warehouse values ('TammieMKraft1983', '689808978623', 9);

insert into OrderDetail values ('9150001001', 'JoanJPeterson1992', '689160892324', 2);
insert into OrderDetail values ('9150001004', 'ShariJClark1976', '689214513519', 1);
insert into OrderDetail values ('9150001004', 'TammieMKraft1983', '689132546923', 2);
insert into OrderDetail values ('9150001017', 'TammieMKraft1983', '689808978623', 1);
insert into OrderDetail values ('9150001017', 'TammieMKraft1983', '689132546923', 1);
insert into OrderDetail values ('9150001017', 'MayEStaples1989', '689132546923', 2);
insert into OrderDetail values ('9150001017', 'TammieMKraft1983', '689027544208', 1);
