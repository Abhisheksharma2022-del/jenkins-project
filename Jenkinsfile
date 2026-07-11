pipeline {
    agent {
        label 'electronix'
    }

    stages {
        stage('Hello') {
            steps {
                echo "Hello Jenkins"
            }
        }

        stage('Hello-Second') {
            steps {
                echo "Hello Jenkins Second"
            }
        }
    }

    post {
        success {
            echo "Pipeline Pass"
            mail to: "abhi.devop26@gmail.com",
                 subject: "SUCCESS : Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
                 body: "'${env.JOB_NAME}' Build Succeeded.\nCheck Build URL: '${env.BUILD_URL}'"
        }

        failure {
            echo "Pipeline Fail"
            mail to: "abhi.devop26@gmail.com",
                 subject: "FAIL : Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
                 body: "'${env.JOB_NAME}' Build Failed.\nCheck Build URL: '${env.BUILD_URL}'"
        }
    }
}
