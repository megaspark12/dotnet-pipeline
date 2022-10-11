pipeline {
    agent any
    stages {
        stage("Build") {
            steps {
                dir("console") {
                    dotnetBuild()
                }
            }
        }
        
        stage("Run") {
            steps {
                dir("console") {
                    sh 'dotnet run'
                }
            }        
        }
    }
}
