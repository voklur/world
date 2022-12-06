create database if not exists `real_world`;
use real_world;
create user 'realworld'@'localhost' identified by 'here-secret';
grant all privileges on real_world.* to 'realworld'@'localhost';

