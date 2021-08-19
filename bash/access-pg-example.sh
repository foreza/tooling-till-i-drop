

## example script to create a ssh tunnel to a PG instance

# Kill any process listening with port XXXX 
kill $(lsof -t -i:XXXX)

# Connect to the BH/jump box. 
ssh <user>@<host> -fnNT -L XXXX:jumpboxhost

# As an example, then open PGAdmin 
# open /Applications/pgAdmin\ 4.app 

# Or use psql to execute query in CLI. 
# NOTE: This is not the best method but works in a pinch (PGPASSWORD is a bad idea)
# Better to use a connection string
PGPASSWORD=blahPassword psql -h localhost -p XXXX -U <user> <dbname>



