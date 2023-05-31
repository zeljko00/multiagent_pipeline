pipeline {
    agent any
    stages {
        stage('Test Docker') {
            agent {
                label 'springboot-docker-agent'
            }
            steps {
                sh 'docker --version'
            }
        }
        stage('Test JRE') {
            agent {
                label 'jre-agent'
            }
            steps {
                sh 'java --version'
            }
        }
        stage('Test  Maven') {
                agent {  docker { image 'maven:3.9.0-eclipse-temurin-11' }   }
                 steps {  
                     sh 'mvn --version'
                    }
          }
          stage('Test  Dockerfile') {
                agent {  dockerfile true }
                 steps {  
                     sh 'mvn --version'
                    }
          }

    }
}
