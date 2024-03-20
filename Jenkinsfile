pipeline{
    agent any
        tools{
            maven 'ApacheMaven'
        }
        stages{
            stage('Build Maven'){
                steps{
                    checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Rahul0625/practicefirstproject']])
                    bat 'mvn clean install'
                }
             }
            stage('Build docker image'){
                steps{
                    script{
                        bat 'docker build -t firstjenkinsdockerproject .'
                    }
                }
            }
            stage('Push docker image to hub'){
                steps{
                    script{
                        bat 'docker login -u rahul0625 -p Docker@12345'
                        bat 'docker tag a97af5b5b42e rahul0625/firstjenkinsdockerproject:latest'
                        bat 'docker push rahul0625/firstjenkinsdockerproject:latest'
                    }
                }
            }
         }
}
