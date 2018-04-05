pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                echo 'Deploying....'
		//def rootDir = pwd()
		sh 'docker stop dev_lua3 || true && docker rm dev_lua3 || true'
		sh 'PWD1=`pwd`'
		echo "Current dir is=$PWD1"
		sh "docker run -d --name dev_lua3 -p 80:80 -v $PWD1/html:/nginx/html -v $PWD1/nginx:/nginx/conf metikovv/devel:latest"
            }
        }
    }
}
