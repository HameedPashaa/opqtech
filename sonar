pipeline {
    agent any
    stages {
        stage('Build stage') {
            steps {
                echo 'This is a build stage'
                sh 'sleep 5'
            }
        }
        stage('Push stage') {
            steps {
                echo 'This is push stage'
                sh 'sleep 5'
            }
        }
        stage('SonarQube Analysis') {
            steps {
                script {
                         // script {
                 //   def scannerHome = tool 'Sonar-qube1'
                   // withSonarQubeEnv('Sonar_qube') {
                        sh "mvn sonar:sonar"
                    }
                }
            }
        }
        stage('Deploy stage') {
            steps {
                echo 'This is deploy stage'
                sh 'sleep 5'
            }
        }
    }
}
