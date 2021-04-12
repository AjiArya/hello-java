pipeline {
  agent any
  parameters {
    choice(name: 'IMAGE_NAME', choices: 'app:v1\napp:v2\napp:v3', description: 'What image do you want to deploy?')
    choice(name: 'DEPLOY_ENV', choices: 'production\ndevelopent', description: 'Where do you want to deploy?')
  }
  
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
    
    stage('Deploy') {
      steps {
        echo "Deploying ${params.IMAGE_NAME} to ${params.DEPLOY_ENV} Environment"
      }
    }
  }
}
