$AccountName = "secret"
$AccountKey = "secret"
$ContainerName = "testContainer"
$Ctx = New-AzureStorageContext -AccountName $AccountName -AccountKey $AccountKey

$blobs = Get-AzureStorageBlob -Container $ContainerName -Context $Ctx

$blobs| Remove-AzureStorageBlob