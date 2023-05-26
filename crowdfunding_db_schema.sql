CREATE SCHEMA crowdfunding_db_schema
CREATE TABLE crowdfunding_db_schema."Campaign" (
    "cf_id" int 	Primary Key,
    "contact_id" int   NOT NULL,
    "company_name" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar   NOT NULL,
    "subcategory_id" varchar   NOT NULL
);

CREATE TABLE crowdfunding_db_schema."Contacts" (
    "contact_id" int Primary Key,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL
);

CREATE TABLE crowdfunding_db_schema."Category" (
    "category_id" varchar Primary Key,
    "category" varchar   NOT NULL
);

CREATE TABLE crowdfunding_db_schema."Subcategory" (
    "subcategory_id" varchar Primary Key,
    "subcategory" varchar   NOT NULL
);


ALTER TABLE crowdfunding_db_schema."Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES crowdfunding_db_schema."Contacts" ("contact_id");

ALTER TABLE crowdfunding_db_schema."Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES crowdfunding_db_schema."Category" ("category_id");

ALTER TABLE crowdfunding_db_schema."Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES crowdfunding_db_schema."Subcategory" ("subcategory_id");


Select *
From crowdfunding_db_schema."Campaign"

Select *
From crowdfunding_db_schema."Contacts"

Select *
From crowdfunding_db_schema."Category"

Select *
From crowdfunding_db_schema."Subcategory"



