pipeline {
    agent any
    
    stages {
        stage('Fetch Code') {
            steps {
                git 'github-repository'
            }
        }
        stage('Generate SBOM') {  
            steps {  
                script {
                    sh 'docker run -i --rm -v "$(pwd)":/target cyclonedx/cyclonedx-dotnet:2.5.1 /target/<ProjectFolder>/<csproj file name> -o /target/bom'
         }
             }
         }
        stage('Dependency Track Publisher') {
            steps {
                withCredentials([string(credentialsId: 'dt-key', variable: 'API_KEY')]) {
                    dependencyTrackPublisher artifact: 'bom/bom.xml', autoCreateProjects: true, projectName: '<ProjectName>', projectVersion: '1.0', dependencyTrackApiKey: API_KEY, projectId: '', synchronous: true
                }
            }
        }
    }
}        

