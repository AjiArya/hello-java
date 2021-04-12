pipeline {
  agent any
  stages {
    stage('Approval') {
      steps {
        input(message: 'Deploy to production?', submitter: 'kubeadmin', ok: 'Deploy')
      }
    }

    stage('error') {
      steps {
        sh 'echo "Approved!"'
      }
    }

  }
}