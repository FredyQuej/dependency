pipeline {
    agent any

    environment {
        DTRACK_API_KEY = credentials('odt_A1GPIYWhuRLVbL4fYBVJU9YY3Q4Yv3yX')
    }

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/FredyQuej/dependency.git', branch: 'main'
            }
        }

        stage('Build') {
            steps {
                sh './mvnw clean install'
            }
        }

        stage('Generate Dependency Report') {
            steps {
                sh './mvnw dependency-track:upload'
            }
        }

        stage('Upload Report to Dependency-Track') {
            steps {
                script {
                    sh '''
                        curl -X POST -H "Authorization: Bearer ${DTRACK_API_KEY}" \
                        -F "file=@/path/to/your/report" \
                        http://dependency-track:8084/api/v1/components
                    '''
                }
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: '**/target/*.jar', allowEmptyArchive: true
        }
    }
}

