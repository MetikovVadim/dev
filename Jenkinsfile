pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                echo 'Deploying....'
		def workspace = pwd()
		sh 'docker stop dev_lua3 || true && docker rm dev_lua3 || true'
		sh 'docker run -d --name dev_lua3 -p 80:80 -v '+workspace+'/html:/nginx/html -v '+workdir+'/nginx:/nginx/conf metikovv/devel:latest'
            }
        }
    }
}
