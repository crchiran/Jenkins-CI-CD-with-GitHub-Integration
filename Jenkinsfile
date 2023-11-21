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
        sh ''
        docker build -t nodeapp:${BUILD_NUMBER}
      }
     }
     stage('Test'){
        steps{
          sh ''
          docker run -it nodeapp:$(BUILD_NUMBER)
      }
     }
  }
  }
