pipeline {  
    agent { label 'Slave-1' }
    
    tools {
        maven 'maven'
        jdk 'jdk17'
    }

    stages {
        
        
        stage('Compile') {
            steps {
            sh "mvn compile"
            }
        }
        
        stage('Test') {
            steps {
                sh "mvn test"
            }
        }
        
        stage('Package') {
            steps {
                sh "mvn package"
            }
        }
    }
}
