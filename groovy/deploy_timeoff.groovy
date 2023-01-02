pipeline {
    options
    {
        buildDiscarder(logRotator(numToKeepStr: '10'))
    }
    agent any
    stages {

         stage("Clone timeoff repo") {
            steps {
                script {
                    sh 'aws ec2 describe-security-groups'           
                }
            }
        }
    }
}
   