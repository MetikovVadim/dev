pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                echo 'Deploying....'
		//def rootDir = pwd()
		sh 'docker stop dev_lua3 || true && docker rm dev_lua3 || true'
		//sh 'export PWD1=`pwd`'
		//echo "Current dir is=$PWD1"
		sh "docker run -d --name dev_lua3 -p 80:80 -v html:/nginx/html -v nginx:/nginx/conf metikovv/devel:latest"
            }
        }
    }
}
