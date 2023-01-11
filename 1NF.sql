/* Adding PK to customers table */
ALTER TABLE customers ADD COLUMN id SERIAL NOT NULL PRIMARY KEY;

/* Separating contact_person_and_role columns into individual columns */
ALTER TABLE customers RENAME COLUMN contact_person_and_role TO contact_person;
ALTER TABLE customers ADD COLUMN contact_person_role VARCHAR(20) NOT NULL;


/* Creating new customers_feedback table */
CREATE TABLE IF NOT EXISTS "customers_feedback" (
  "id" SERIAL NOT NULL PRIMARY KEY,
  "feedback" TEXT NOT NULL,
  "project_id" INTEGER REFERENCES projects(id),
  "customer_id" INTEGER REFERENCES customers(id)
);

/* Droping project_feedback related columns from customers table */
ALTER TABLE customers DROP COLUMN project1_id;
ALTER TABLE customers DROP COLUMN project1_feedback;
ALTER TABLE customers DROP COLUMN project2_id;
ALTER TABLE customers DROP COLUMN project2_feedback;