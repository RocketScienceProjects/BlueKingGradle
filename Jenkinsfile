#!groovy

node('master') {
    def mvnHome = tool 'M3'
  stage 'git clone'
    checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '8c38cbe8-f4e2-4150-918a-0264a28cff73', url: 'git@github.com:RocketScienceProjects/BlueKing.git']]])

  stage 'build'
    bat 'mvn clean deploy'
  
  //Adding the below to test the release goal
  stage 'Cut_Release'
    def pom = readMavenPom file: 'pom.xml'
    def version = pom.version.replace("-SNAPSHOT", ".${currentBuild.number}")
    
    bat 'mvn -DreleaseVersion=${version} -DdevelopmentVersion=${pom.version} -DpushChanges=false -DlocalCheckout=true -DpreparationGoals=initialize release:prepare release:perform -B"

}
