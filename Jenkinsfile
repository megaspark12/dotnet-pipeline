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
        
        stage("Test") {
            steps {
                dir("tests") {
                    dotnetTest()
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
