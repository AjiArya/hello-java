pipeline {
  agent any
  stages {
    stage('Approval') {
      steps {
        input(message: 'Deploy to production?', id: 'Deploy', ok: 'deploymentDelay', submitter: 'kubeadmin', submitterParameter: '0, 1, 2, 3')
      }
    }

    stage('') {
      steps {
        sh 'Approved!'
      }
    }

  }
}