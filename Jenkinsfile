pipeline{
    agent {
        label "jenkins-agent"
    }
  stages{
    stage('Clone'){
      steps {
        git branch: 'main'
        url: 'https://github.com/crchiran/Jenkins-CI-CD-with-GitHub-Integration'
      }
    }
     stage('Build'){
      steps{
        docker build -t nodeapp:${BUILD_NUMBER}
      }
     }
     stage('Test'){
        steps{
          docker run -it nodeapp:$(BUILD_NUMBER)
      }
     }
      stage('Package'){
        steps{
          docker push mandheit/nodeapp:$(BUILD_NUMBER)
      }
     }
}
}