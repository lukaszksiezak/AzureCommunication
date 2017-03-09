$SourceStorageAccountName = "source"
$SourceStorageAccountKey = "secret"
$SrcContainerName = "SourceName"
$SourceContext = New-AzureStorageContext -StorageAccountName $SourceStorageAccountName -StorageAccountKey $SourceStorageAccountKey

$DestStorageAccountName = "destination"
$DestStorageAccountKey = "secret"
$DestContainerName = "Destinationame"
$DestContext = New-AzureStorageContext -StorageAccountName $DestStorageAccountName -StorageAccountKey $DestStorageAccountKey

$blobs = Get-AzureStorageBlob -Container $SrcContainerName -Context $SourceContext

$blobs| Start-AzureStorageBlobCopy -DestContainer $DestContainerName -DestContext $DestContext