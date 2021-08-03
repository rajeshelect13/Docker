node {
    def buildNumber = BUILD_NUMBER
    stage("Git Clone") {
      git url:'https://github.com/rajeshelect13/Docker.git' ,branch: 'master'
    }
   /*stage("Maven Clean Package"){
        def mavenHome = tool name: "Maven",type: "maven"
        //def mavenCMD = "${mavenHome}/bin/mvn"
        sh "${mavenHome}/bin/mvn clean package" 
    }*/
    stage("Docker Build Image"){
        // sh "docker build -t <username of dockerhub/imagename:versionnumber>"
        sh "docker build -t rajeshelect13/myfirstimage:${buildNumber} ."
    }
    stage("Dockerhublogin and Dockerimage push to dockerhub"){
       withCredentials([string(credentialsId: 'Docker_Hub_Pwd', variable: 'Docker_Hub_Pwd')]) {
       sh "docker login -u rajeshelect13 -p ${Docker_Hub_Pwd}"
        }
       sh "docker push rajeshelect13/myfirstimage:1"
    }
}
