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
    bat 'echo "This is what the pom have for me"'
    println ("$pom")
    def version = pom.version.replace("-SNAPSHOT", ".${currentBuild.number}")
    bat 'echo "This is what the version have for me"'
    println ("$version")
    
    //test if the parameters are being imported at the run time
    println ("${releaseVersion}")
    println ("${developmentVersion}")
    
    bat 'mvn -DreleaseVersion="${releaseVersion}" -DdevelopmentVersion="${developmentVersion}" -DpushChanges=false -DlocalCheckout=true -DpreparationGoals=initialize release:prepare release:perform -B'
    
  //stage 'publish git tag'
    //bat 'echo "This is what was pushed have for me"'
    //println ("${pom.artifactId}-${version}")
    
    //bat 'git push master ${pom.artifactId}-${version}'

    

}
