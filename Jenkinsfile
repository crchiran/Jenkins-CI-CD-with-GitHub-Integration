//declarative pipeline

pipeline{
  stages{
    stage('Clone'){
      steps {
        git branch: 'main'
        url: 'git@github.com:crchiran/jenkins-ci-cd-with-github-integration.git'
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
