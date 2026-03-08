pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Setup Netdata') {
            steps {
                sh 'chmod +x setup.sh'
                sh './setup.sh'
            }
        }
        stage('Test Dashboard') {
            steps {
                sh 'chmod +x test_dashboard.sh'
                sh './test_dashboard.sh'
            }
        }
        stage('Cleanup') {
            steps {
                sh 'chmod +x cleanup.sh'
                sh './cleanup.sh'
            }
        }
    }
}