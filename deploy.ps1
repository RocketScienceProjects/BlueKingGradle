

$ProjectPath=$args[0]
echo "Downloading artifact to $ProjectPath"
$wc = New-Object System.Net.WebClient
$wc.DownloadFile("http://ec2-54-213-106-231.us-west-2.compute.amazonaws.com:8081/nexus/content/repositories/releases/org/source/1.0/bidservice.zip", "$ProjectPath");
echo "Extracting the artifact $ProjectPath"
7z x $ProjectPath -y
echo "Deleting the zip file"
rmdir -Force $ProjectPath
echo "Deleted the zip file $ProjectPath"