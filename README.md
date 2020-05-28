To init the db 
`docker-compose run`


`docker cp ./db.sql entity_graph:/docker-entrypoint-initdb.d/dump.sql`

`docker exec -it entity_graph psql -U postgres -d postgres -f /docker-entrypoint-initdb.d/dump.sql`