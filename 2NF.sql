/* Adding PK to customers table */
ALTER TABLE customers ADD COLUMN id SERIAL NOT NULL PRIMARY KEY;

/* Creating new contact_person table, to avoid partial dependencies */
CREATE TABLE IF NOT EXISTS "contact_persons" (
  "id" SERIAL NOT NULL PRIMARY KEY,
  "full_name" VARCHAR(255) NOT NULL,
  "role" VARCHAR(20) NOT NULL,
  "phone_number" VARCHAR(12) NOT NULL
);

/* Adding foreign key to contact_persons */
ALTER TABLE customers
ADD CONSTRAINT fk_customers_contact_persons FOREIGN KEY (contact_person_id)
REFERENCES contact_persons (id);

/* Droping contact_person related columns from customers table */
ALTER TABLE customers DROP COLUMN contact_person;
ALTER TABLE customers DROP COLUMN phone_number;
ALTER TABLE customers DROP COLUMN contact_person_role;
