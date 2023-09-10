-- DROP TABLE categories, subcategories, contacts, campaigns;

CREATE TABLE categories (
	category_id VARCHAR(4) PRIMARY KEY,
	category VARCHAR(30) NOT NULL
);

CREATE TABLE subcategories (
	subcategory_id VARCHAR(7) PRIMARY KEY,
	subcategory VARCHAR(30) NOT NULL
);

CREATE TABLE contacts (
	contact_id VARCHAR(4) PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(255) NOT NULL
);

CREATE TABLE campaigns (
	cf_id VARCHAR(4) PRIMARY KEY,
	contact_id VARCHAR(4) NOT NULL,
	company_name VARCHAR(255) NOT NULL,
	description VARCHAR(255) NOT NULL,
	gaol MONEY NOT NULL,
	pledged MONEY,
	outcome VARCHAR(10),
	backers_count INT,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(4) NOT NULL,
	subcategory_id VARCHAR(7) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES categories (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategories (subcategory_id)
);
