/* Creating new zip_codes table */
CREATE TABLE IF NOT EXISTS "zip_codes" (
  "zip_id" VARCHAR(5) NOT NULL PRIMARY KEY,
  "city" VARCHAR(255) NOT NULL
);

/* Deleting city column from customers table */
ALTER TABLE customers DROP COLUMN city;

/* Adding foreign key to zip_codes */
ALTER TABLE customers
ADD CONSTRAINT fk_customers_zip_codes FOREIGN KEY (zip)
REFERENCES zip_codes (zip_id);