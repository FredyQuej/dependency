pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo "Clonando el código desde la rama: ${params.BRANCH_NAME}"
                git branch: "${params.BRANCH_NAME}", url: 'https://github.com/FredyQuej/dependency.git'
            }
        }

        stage('Validate HTML') {
            steps {
                echo "Validando archivos HTML..."
                // Valida todos los archivos HTML en el proyecto
                sh 'tidy -errors -q *.html || true'
            }
        }

        stage('Validate JavaScript') {
            steps {
                echo "Validando archivos JavaScript..."
                // Valida todos los archivos JavaScript en el proyecto
                sh 'jshint **/*.js || true'
            }
        }

        stage('Deploy') {
            steps {
                echo "Desplegando en el entorno: ${params.ENVIRONMENT}"
                // Despliega los archivos al servidor correspondiente según el entorno
           
            }
        }
    }

    post {
        success {
            echo 'El pipeline se ha completado exitosamente.'
        }
        failure {
            echo 'El pipeline ha fallado.'
        }
    }
}
