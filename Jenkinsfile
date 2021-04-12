pipeline {
  agent any
  stages {
    stage('Approval') {
      steps {
        input(message: 'Deploy to production?', id: 'Deploy', ok: 'Deploy', submitter: 'kubeadmin')
      }
    }

    stage('error') {
      steps {
        sh 'echo "Approved!"'
      }
    }

  }
}