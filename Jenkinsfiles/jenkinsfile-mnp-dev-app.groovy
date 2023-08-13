pipeline {
    agent {label "mnp-dev-slave"}
    stages {
        stage ("GIT Clone") {
            steps {
                checkout  scm
                echo "The code has been cloned"
            }
        }
        stage ("Deployment") {
            steps {
                sh "sudo cp /var/lib/jenkins/workspace/${JOB_NAME}/index.html /var/www/html/"
            }
        }
    }
    post {
        success {
            echo "The Dev environment BUild is Sucess"
        }
        failure {
            echo "The Dev environment BUild is Failed"
        }
    }
}
