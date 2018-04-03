deploy : Dockerfile
	docker run -d --name dev_lua3 -p 80:80 -v html:/nginx/html -v nginx:/nginx/conf metikovv/devel:latest
