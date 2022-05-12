db:
	docker-compose -f ./mysql/docker-compose.yml up -d mysql
migrate:
	cat ./ddl/*.sql  > ./ddl/.all_files.sql
	mysql -u thrift --password=hhrifttunter -D thrifthunter -h 127.0.0.1 -P 3306 < ./ddl/.all_files.sql
