.PHONY: default
default: deploy

deploy:
  docker run  -d --name dev_lua -p 80:80 -v "$(pwd)"/html:/nginx/html -v "$(pwd)"/nginx:/nginx/conf metikovv/devel:latest
