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
    }
}
