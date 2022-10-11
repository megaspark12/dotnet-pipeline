pipeline {
    agent any
    stages {
        
        stage("Build") {
            steps {
                dir("console") {
                    sh 'ls'
                    echo "dotnet build"
                }
            }
        }
        
        stage("Test") {
            steps {
                dir("tests") {
                    sh 'ls'
                    echo "dotnet test"
                }
            }
        }
            
    }
}
