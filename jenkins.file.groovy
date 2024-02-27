pipeline {
    agent {label 'slave1'}
    stages {
        stage('GIT Checkout') {
            steps{
                  git 'https://github.com/OpqTech/java-example1'
			}
        }

        stage('Build') {
            steps {
                    sh 'mvn clean install' 
            }
        }

        stage('Deploy') {
            steps {
				sh 'sudo cp /home/ubuntu/jenkins/workspace/pipelineproject/target/*.war /home/ubuntu/opt/tomcat/apache-tomcat-9.0.68/webapps'

            }
        }
		stage (tomcat) {
		  steps {
		       cd /bin/./startup.sh
		  }
		}
	}
}


