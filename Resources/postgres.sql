DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts; 
DROP TABLE IF EXISTS campaign; 

CREATE TABLE category (
    category_id varchar(10) NOT NULL, PRIMARY KEY,
    category varchar(30) NOT NULL 
);

CREATE TABLE subcategory (
    subcategory_id varchar(10) NOT NULL, PRIMARY KEY,
    subcategory_name varchar(30) NOT NULL
);

CREATE TABLE campaign (
    cf_id INT NOT NULL, PRIMARY KEY,
    contact_id NOT NULL, INT,
    company_name NOT NULL, TEXT,
    description NOT NULL, TEXT,
    goal NOT NULL, FLOAT,
    pledged NOT NULL, FLOAT,
    outcome NOT NULL, VARCHAR,
    backers_count NOT NULL, INT,
    country NOT NULL, VARCHAR(2),
    currency NOT NULL, VARCHAR(3),
    launched_date NOT NULL, VARCHAR(30),
    end_date NOT NULL, VARCHAR(30),
    category_id NOT NULL, VARCHAR(10),
    subcategory_id NOT NULL, VARCHAR(10)
);


CREATE TABLE contacts (
    contact_id INT NOT NULL, PRIMARY KEY, 
    first_name NOT NULL, VARCHAR(30),
    last_name NOT NULL, VARCHAR(30),
    email NOT NULL, VARCHAR(50)
);

-- adding foreign key in the campaign table
ALTER TABLE campaign
ADD FOREIGN KEY (category_id) REFERENCES category(category_id),
ADD FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
ADD FOREIGN KEY (contact_id) REFERENCES contacts(contact_id);
