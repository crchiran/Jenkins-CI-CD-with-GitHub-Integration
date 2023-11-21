//declarative pipeline

pipeline{
  stages{
        stage("Checkout from SCM"){
            steps {
                git branch: 'main', credentialsId: 'github', url: 'https://github.com/dmancloud/complete-prodcution-e2e-pipeline'
            }
        }
     stage('Build'){
      steps{
        sh 'npm install'
      }
     }
     stage('Test'){
        steps{
          sh 'npm test'
      }
     }
  }
  }
