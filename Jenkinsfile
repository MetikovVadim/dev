pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                echo 'Deploying....'
		//def rootDir = pwd()
		sh 'docker stop dev_lua3 || true && docker rm dev_lua3 || true'
		sh 'export PWD1=`pwd`'
		echo "Current dir is=$PWD1"
		sh "PWD2=`pwd` docker run -d --name dev_lua3 -p 80:80 -v $PWD2/html:/nginx/html -v $PWD2/nginx:/nginx/conf metikovv/devel:latest"
            }
        }
    }
}
