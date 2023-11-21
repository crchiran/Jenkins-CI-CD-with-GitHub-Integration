// Declarative pipeline

pipeline {
    agent {
        label "jenkins-agent"
    }

    environment {
        APP_NAME = "jenkins-ci-cd-with-gitHub-integration"
        RELEASE = "1.0.0"
        DOCKER_USER = "madheit"
        DOCKER_PASS = 'docker-token'
        IMAGE_NAME = "${DOCKER_USER}/${APP_NAME}"
        IMAGE_TAG = "${RELEASE}-${BUILD_NUMBER}"
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

        stage("Build & Push Docker Image") {
            steps {
                script {
                    def dockerImage

                    // Build Docker image
                    dockerImage = docker.build("${IMAGE_NAME}")

                    // Push Docker image
                    docker.withRegistry('', DOCKER_PASS) {
                        dockerImage.push("${IMAGE_TAG}")
                        dockerImage.push('latest')
                    }
                }
            }
        }
    }
}