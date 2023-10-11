pipeline {
    agent any

    stages {
        stage('gitcheck') {
            steps {
              git 'https://github.com/sairamns/terraform-jenkins.git'
            }
        }       
        stage('terraform server') {
            environment {
                   AWS_ACCESS_KEY_ID     = credentials('aws-key-id')
                   AWS_SECRET_ACCESS_KEY = credentials('aws-access-key')
                }
            
            steps {
                script {
                    dir('terraform') {
                      sh "terraform init"
                      sh "terraform apply -auto-approve"
                     // EC2_PUBLIC_IP = sh(
                       //   script: "terraform output instance_public_ip",
                         // returnStdout: true
                       // ).trim()
                    
                   }
                }
                
               
        }
        
    }
  
}
}
