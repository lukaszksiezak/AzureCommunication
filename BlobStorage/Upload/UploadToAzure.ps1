 $SubscriptionName = "secret"
 $StorageAccountName = "secret".
 $ContainerName = "BlobStorage"

 $ImageToUpload = "\ToUpload.txt"

 Add-AzureAccount
 Select-AzureSubscription -SubscriptionName $SubscriptionName –Default
 New-AzureStorageAccount –StorageAccountName $StorageAccountName -Location $Location
 Set-AzureSubscription -CurrentStorageAccountName $StorageAccountName -SubscriptionName $SubscriptionName
 New-AzureStorageContainer -Name $ContainerName -Permission Off
 Set-AzureStorageBlobContent -Container $ContainerName -File $ImageToUpload
 Get-AzureStorageBlob -Container $ContainerName