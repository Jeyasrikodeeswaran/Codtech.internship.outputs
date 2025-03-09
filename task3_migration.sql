-- MySQL to PostgreSQL Migration

-- Export MySQL Data (run in terminal)
-- mysqldump -u root -p --compatible=postgresql --no-create-info mydatabase > data.sql

-- PostgreSQL Import (run in terminal)
-- psql -U postgres -d newdatabase -f data.sql

-- Data Integrity Check
SELECT COUNT(*) FROM my_table; -- Compare row counts before and after migration
