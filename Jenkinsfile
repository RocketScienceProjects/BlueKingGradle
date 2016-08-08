#!groovy
    def mvnHome = tool 'M3'
node('master') {

  stage 'git clone'
    checkout([$class: 'GitSCM', branches: [[name: '*/dev-localnexus']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '8c38cbe8-f4e2-4150-918a-0264a28cff73', url: 'git@github.com:RocketScienceProjects/BlueKing.git']]])

  stage 'build'
    bat 'mvn clean deploy'

  //stage 'Cut_Release'

}
