pipeline {
  agent { label "terraform-agent" }
  stages {
    stage ('Codechekout') {
      steps {
        checkout scm
      }
    }
    stage('Load Variables') {
      steps {
        script {
          def csvFile = readFile(file: '/var/lib/jenkins/workspace/${JOB_NAME}/Terraform/s3-new/S3_bucket_V.csv')
          def variables = csvFile.tokenize('\n').collect { line -> line.split(',') }
          variables.each { row ->
          def variableName = row[0].trim()
          def variableValue = row[1].trim()
          env."${variableName}" = variableValue
          }

        }
      }

    }
    stage('Terraform Apply') {
      steps {
        dir('/var/lib/jenkins/workspace/s3-terraform/Terraform/s3-new/') {
            sh '''
            sudo terraform init
            sudo terraform apply -var "Bucket_Name=${Bucket_Name}" -auto-approve
            '''
        }
      }
    }
    stage ('Output') {
      steps {
        echo "${Bucket_Name} has sucesfully created"
      }
    }
  }
}