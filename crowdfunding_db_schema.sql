-- drop tables if exist

drop table if exists contacts;
drop table if exists category;
drop table if exists subcategory;
drop table if exists campaign;

-- create contacts table and set our primary key

CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name varchar (30)  NOT NULL,
    last_name varchar (30)  NOT NULL,
    email varchar (60)  NOT NULL,
	primary key (contact_id)
);

-- create category table and set our primary key

CREATE TABLE category (
    category_id varchar (6)   NOT NULL,
    category varchar (18)  NOT NULL,
	primary key (category_id)
);

-- create subcategory table and set our primary key

CREATE TABLE subcategory (
    subcategory_id varchar (10)  NOT NULL,
    subcategory varchar (20)  NOT NULL,
	primary key (subcategory_id)
);

-- create campaign table and set our primary key and foreign keys

CREATE TABLE campaign (
    cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar (60)  NOT NULL,
    description varchar (60)  NOT NULL,
    goal float   NOT NULL,
    pledged float   NOT NULL,
    outcome varchar (12)  NOT NULL,
    backers_count int   NOT NULL,
    country varchar (6)  NOT NULL,
    currency varchar (6)  NOT NULL,
    launched_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar (6)  NOT NULL,
    subcategory_id varchar (10)  NOT NULL,
	primary key (cf_id),
	foreign key (contact_id) references contacts(contact_id),
	foreign key (category_id) references category(category_id),
	foreign key (subcategory_id) references subcategory(subcategory_id)
);

-- test each database
select * from contacts;
select * from category;
select * from subcategory;
select * from campaign;
