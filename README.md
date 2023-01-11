# Company DB Normalization

This project was created in educational purposes to get experience in `DB's normalization`.

## Usage

In order to create `company` database, run following command:

```
psql -U postgres -tc "SELECT 1 FROM pg_database WHERE datname = 'company'" | findstr -q 1 | psql -U postgres -c "CREATE DATABASE company"
```

In order to create tables, run following command from the project root directory:

```
psql -h db_hostname -d db_name -U db_username -f sql.sql
```

### Example

```
psql -h 127.0.0.1 -d company -U postgres -f create-tables.sql
```

Here write your hostname after `-h`, database name after `-d`, username after `-U`, file that have to be executed after `-f`.
