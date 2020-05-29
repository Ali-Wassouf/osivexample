To init the db 
`docker-compose up`

`docker cp ./db.sql entity_graph:/docker-entrypoint-initdb.d/dump.sql`

`docker exec -it entity_graph psql -U postgres -d postgres -f /docker-entrypoint-initdb.d/dump.sql`

[Resource](https://www.baeldung.com/spring-open-session-in-view)

In case you are having problems running the container on your windows machine, you need to switch to linux containers in docker.  