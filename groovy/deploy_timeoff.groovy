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
                    withCredentials([[
                        $class: 'AmazonWebServicesCredentialsBinding',
                        credentialsId: "f3fd2446-5adb-4979-a1d1-2270597b6466",
                        accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                        secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
                    ]]) {
                        sh 'sudo aws ec2 describe-security-groups --region us-east-1'  
                    }         
                }
            }
        }
    }
}
   