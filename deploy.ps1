
$Project=$args[0]
$Build_Number=$args[1]
echo "Downloading artifact to \\WIN-VQR8SOC8MKP\App\$Project from http://ec2-54-213-106-231.us-west-2.compute.amazonaws.com:8081/nexus/content/repositories/releases/org/bar/$Build_Number/$Project.zip"
$wc = New-Object System.Net.WebClient
$wc.DownloadFile("http://ec2-54-213-106-231.us-west-2.compute.amazonaws.com:8081/nexus/content/repositories/releases/org/bar/%BUILD_NUMBER%/$Project.zip", "c:\$Project.zip");
echo "Extracting the artifact c:\$Project.zip"
7z x c:\$Project.zip -y
echo "Deleting the zip file"
rmdir -Force c:\$Project.zip
echo "Deleted the zip file c:\$Project.zip"
