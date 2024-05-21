-- phase 10
create user 'john_stones'@'localhost' identified by 'john2000johnstones';

revoke all privileges on yaghoobMarket.* from 'john_stones'@'localhost';

GRANT SELECT ON yaghoobMarket.* TO 'john_stones'@'localhost';
