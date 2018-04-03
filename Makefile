deploy : Dockerfile
	docker stop dev_lua3 || true && docker rm dev_lua3 || true
	docker run -d --name dev_lua3 -p 80:80 -v $(CURDIR)/html:/nginx/html -v $(CURDIR)/nginx:/nginx/conf metikovv/devel:latest
