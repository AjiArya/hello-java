pipeline {
  agent any
  stages {
    stage('Approval') {
      steps {
        input(message: 'Deploy to production?', submitter: 'kubeadmin')
      }
    }

    stage('Approved') {
      steps {
        sh 'echo "Approved!"'
      }
    }

  }
}