CREATE TABLE IF NOT EXISTS "projects" (
  "id" SERIAL NOT NULL PRIMARY KEY,
  "name" VARCHAR(100) NOT NULL,
  "value" NUMERIC(5,2) NOT NULL,
  "start_date" DATE NOT NULL,
  "end_date" DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS "employees" (
  "id" SERIAL NOT NULL PRIMARY KEY,
  "first_name" VARCHAR(50) NOT NULL,
  "last_name" VARCHAR(50) NOT NULL,
  "hourly_wage" NUMERIC(5,2) NOT NULL,
  "hire_date" DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS "project_employees" (
  "id" SERIAL NOT NULL PRIMARY KEY,
  "hours" NUMERIC(5,2) NOT NULL,
  "project_id" INTEGER REFERENCES projects(id),
  "employee_id" INTEGER REFERENCES employees(id)
);

CREATE TABLE IF NOT EXISTS "job_orders" (
  "id" SERIAL NOT NULL PRIMARY KEY,
  "description" TEXT NOT NULL,
  "order_date_time" DATE NOT NULL,
  "quantity" INTEGER NOT NULL,
  "price" NUMERIC(5,2) NOT NULL,
  "project_id" INTEGER REFERENCES projects(id),
  "employee_id" INTEGER REFERENCES employees(id)
);

CREATE TABLE IF NOT EXISTS "customers" (
  "name" VARCHAR(100) NOT NULL,
  "industry" VARCHAR(100) NOT NULL,
  "project1_id" INTEGER NOT NULL,
  "project1_feedback" TEXT NOT NULL,
  "project2_id" INTEGER NOT NULL,
  "project2_feedback" TEXT NOT NULL,
  "contact_person_id" INTEGER NOT NULL,
  "contact_person_and_role" VARCHAR(255) NOT NULL,
  "phone_number" VARCHAR(12) NOT NULL,
  "address" VARCHAR(255) NOT NULL,
  "city" VARCHAR(255) NOT NULL,
  "zip" VARCHAR(5) NOT NULL
);