pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                echo 'Deploying....'
		//def rootDir = pwd()
		sh 'PWD=`pwd`'
		echo "Current dir is=$PWD"
		sh 'docker stop dev_lua3 || true && docker rm dev_lua3 || true'
		//sh "docker run -d --name dev_lua3 -p 80:80 -v $(pwd)/html:/nginx/html -v $(pwd)/nginx:/nginx/conf metikovv/devel:latest"
            }
        }
    }
}
