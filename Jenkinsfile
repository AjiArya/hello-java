pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'java -version'
                sh 'cd /usr/src/app; java HelloWorld'
            }
        }
    }
}
