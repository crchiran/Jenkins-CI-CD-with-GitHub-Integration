// Declarative pipeline

pipeline {
    agent {
        label "jenkins-agent"
    }
    environment {
        DOCKER_IMAGE = "nodeapp:${BUILD_NUMBER}"
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
                script {
                    sh "docker build -t ${DOCKER_IMAGE} -f Dockerfile ."
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    sh "docker run -it ${DOCKER_IMAGE}"
                }
            }
        }
    }
}