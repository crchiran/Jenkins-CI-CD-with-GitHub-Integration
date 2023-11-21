//declarative pipeline

pipeline {
    agent {
        label "jenkins-agent"
    }
    stages {
        stage("Cleanup Workspace") {
            steps {
                cleanWs()
            }
        }

        stage("Checkout from SCM") {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: 'main']], userRemoteConfigs: [[credentialsId: 'github', url: 'https://github.com/crchiran/Jenkins-CI-CD-with-GitHub-Integration']]])
            }
        }

        stage('Build') {
            steps {
                docker build -t nodeapp:${BUILD_NUMBER}
            }
        }

        stage('Test') {
            steps {
                docker run -it nodeapp:$(BUILD_NUMBER)
            }
        }
    }
}