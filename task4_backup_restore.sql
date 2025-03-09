-- MySQL Backup and Restore
-- Backup
-- mysqldump -u root -p mydatabase > backup.sql

-- Restore
-- mysql -u root -p mydatabase < backup.sql

-- PostgreSQL Backup and Restore
-- Backup
-- pg_dump -U postgres -d mydatabase -F c -f backup.dump

-- Restore
-- pg_restore -U postgres -d newdatabase backup.dump
