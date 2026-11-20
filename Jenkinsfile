pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out source code from GitHub'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Installing Python dependencies'

                sh '''
                    python3 -m venv .venv
                    .venv/bin/pip install -r requirements.txt
                '''
            }
        }

        stage('Test') {
            steps {
                echo 'Running unit tests'

                sh '''
                    .venv/bin/pytest -v
                '''
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying Flask application'

                sh '''
                    mkdir -p deployment
                    cp app.py deployment/
                    cp requirements.txt deployment/

                    echo "Deployment completed successfully"
                    ls -l deployment/
                '''
            }
        }
    }

    post {
        success {
            echo 'Pipeline executed successfully!'
        }

        failure {
            echo 'Pipeline execution failed!'
        }
    }
}