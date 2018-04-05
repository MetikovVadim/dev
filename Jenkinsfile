pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                echo 'Deploying....'
		sh 'docker stop dev_lua3 || true && docker rm dev_lua3 || true'
		sh 'docker run -d --name dev_lua3 -p 80:80 -v $(CURDIR)/html:/nginx/html -v $(CURDIR)/nginx:/nginx/conf metikovv/devel:latest'
            }
        }
    }
}