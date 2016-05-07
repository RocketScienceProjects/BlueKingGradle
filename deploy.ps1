$Project=$args[0]
$Build_Number=$args[1]
echo "Downloading artifact"

$Webclient = New-Object System.Net.WebClient
$Nexusurl  = "http://ec2-54-213-106-231.us-west-2.compute.amazonaws.com:8081/nexus/content/repositories/releases/org/bar" + "/" + $ENV:BUILD_NUMBER + "/" + $Project
echo $Nexusurl
$Webclient.DownloadFile($Nexusurl, '\\WIN-RATABIECTJ2\App\webcontent.zip')



