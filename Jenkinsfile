pipeline {
    agent {
        label 'electronix'
    }

    stages {
        stage('Hello') {
            steps {
                echo 'Hello Jenkins'
            }
        }

        stage('Hello-Second') {
            steps {
                echo 'Hello Jenkins Second'
            }
        }
    }

    post {
        success {
            echo 'Pipeline Pass'
            mail to: 'abhi.devops26@gmail.com',
                 subject: 'Jenkins Pipeline Success',
                 body: 'The Jenkins pipeline has completed successfully.'
        }

        failure {
            echo 'Pipeline Fail'
            mail to: 'abhi.devops26@gmail.com',
                 subject: 'Jenkins Pipeline Failed',
                 body: 'The Jenkins pipeline has failed. Please check the console output.'
        }
    }
}
