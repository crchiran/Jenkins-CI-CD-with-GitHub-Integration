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
    stages {
        stage("Checkout from SCM") {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: 'main']], userRemoteConfigs: [[credentialsId: 'github', url: 'git@github.com:crchiran/jenkins-ci-cd-with-github-integration.git']]])
            }
        }

        stage('Build') {
            steps {
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                sh 'npm test'
            }
        }
    }
}