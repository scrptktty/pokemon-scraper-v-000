CREATE TABLE IF NOT EXISTS pokemon(id INTEGER PRIMARY KEY, name TEXT, type TEXT);
-- UPDATE [table name] SET [column name] = [new value] WHERE [column name] = [value];
UPDATE pokemon SET hp = 60 WHERE 1 =1;
