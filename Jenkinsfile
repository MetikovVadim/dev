pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                echo 'Deploying....'
		//def rootDir = pwd()
		sh 'docker stop dev_lua3 || true && docker rm dev_lua3 || true'
		sh 'PWD=`pwd`'
		echo "Current dir is=$PWD"
		sh "docker run -d --name dev_lua3 -p 80:80 -v $PWD/html:/nginx/html -v $PWD/nginx:/nginx/conf metikovv/devel:latest"
            }
        }
    }
}
