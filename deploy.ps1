

$Project=$args[0]
echo "Downloading artifact to \\WIN-VQR8SOC8MKP\App\$Project"
$wc = New-Object System.Net.WebClient
$wc.DownloadFile("http://ec2-54-213-106-231.us-west-2.compute.amazonaws.com:8081/nexus/content/repositories/releases/org/bar/%BUILD_NUMBER/$ProjectPath.zip", "\\WIN-VQR8SOC8MKP\App\$ProjectPath");
echo "Extracting the artifact \\WIN-VQR8SOC8MKP\App\$Project"
7z x \\WIN-VQR8SOC8MKP\App\$Project -y
echo "Deleting the zip file"
rmdir -Force \\WIN-VQR8SOC8MKP\App\$Project
echo "Deleted the zip file \\WIN-VQR8SOC8MKP\App\$Project.zip"
