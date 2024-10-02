drop table if exists account cascade 
drop table if exists category cascade 
drop table if exists currency cascade 
drop table if exists transaction cascade 
drop table if exists transfer cascade 
drop table if exists users cascade 
create table account (balance float(24) not null, currency integer not null, enabled boolean not null, initial_account_balance float(24), initial_balance_date date, user_id integer, account_id bigint generated by default as identity, image varchar(255), name varchar(255), primary key (account_id))
create table category (type boolean not null, category_id bigint generated by default as identity, image varchar(255), name varchar(255), primary key (category_id))
create table currency (currency_id bigint generated by default as identity, image varchar(255), name varchar(255), symbol varchar(255), primary key (currency_id))
create table transaction (account_id integer, amount float(24) not null, category_id integer, date date, transaction_id bigint generated by default as identity, description varchar(255), primary key (transaction_id))
create table transfer (amount float(24) not null, date date, from_account_id integer, to_account_id integer, transfer_id bigint generated by default as identity, description varchar(255), primary key (transfer_id))
create table users (user_id bigint generated by default as identity, email varchar(255), password varchar(255), username varchar(255), primary key (user_id))
