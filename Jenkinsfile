pipeline {
    agent any
    stages {
        stage('Cloning git') {
            steps {
                git([url:'https://github.com/Tr4hern/DataEng_Jenkins_2', branch:'release'])
        bat "git pull origin dev"
            }
        }
        stage('Building') {
            steps {
                bat "docker-compose build"
            }
        }
    }
}