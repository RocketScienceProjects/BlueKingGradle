#!groovy

node('master') {

  stage 'git clone'
    checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'CloneOption', noTags: false, reference: '', shallow: true, timeout: 2]], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '8c38cbe8-f4e2-4150-918a-0264a28cff73', url: 'https://github.com/RocketScienceProjects/BlueKing.git']]])

  stage 'build'
    def mvnHome = tool 'M3'
    bat 'mvn clean deploy'

}
