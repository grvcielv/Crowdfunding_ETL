CREATE TABLE contacts (
	contact_id int NOT NULL,
	first_name varchar (200) NOT NULL,
	last_name varchar (200) NOT NULL,
	email varchar (150) NOT NULL,
	primary key(contact_id)
);

CREATE TABLE category (
	category_id varchar (200) NOT NULL,
	category varchar (200) NOT NULL,
	primary key (category_id)
);

CREATE TABLE subcategory (
	subcategory_id varchar (200) NOT NULL,
	subcategory varchar (200) NOT NULL,
	primary key (subcategory_id)
);

CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT references contacts(contact_id),
	company_name varchar (300) NOT NULL,
	description varchar (300) NOT NULL,
	goal float NOT NULL,
	pledged float NOT NULL,
	outcome varchar (50) NOT NULL,
	backers_count int NOT NULL,
	country varchar(4) NOT NULL,
	currency VARCHAR(4),
	launch_date DATE,
	end_date DATE,
	category_id varchar (10) references category(category_id),
	subcategory_id varchar(10) references subcategory(subcategory_id)
);

select * from campaign
select* from category
select * from subcategory
select * from contacts
	
