//declarative pipeline

pipeline{
      agent {
        label "jenkins-agent"
    }
  stages{
        stage("Checkout from SCM"){
            steps {
                git branch: 'main', credentialsId: 'github', url: 'git@github.com:crchiran/jenkins-ci-cd-with-github-integration.git'
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
