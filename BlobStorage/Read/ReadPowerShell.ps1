# Azure subscription-specific variables.
$storageAccountName = ""
$containerName = ""

# Find the local folder where this PowerShell script is stored.
$currentLocation = Get-location
$thisfolder = Split –parent $currentLocation

# Upload files in data subfolder to Azure.
$localfolder = "$thisfolder\data"
$destfolder = "data"
$storageAccountKey = (Get-AzureStorageKey -StorageAccountName $storageAccountName).Primary
$blobContext = New-AzureStorageContext -StorageAccountName $storageAccountName -StorageAccountKey $storageAccountKey
$files = Get-ChildItem $localFolder foreach($file in $files)
{
  $fileName = "$localFolder\$file"
  $blobName = "$destfolder/$file"
  write-host "copying $fileName to $blobName"
  Set-AzureStorageBlobContent -File $filename -Container $containerName -Blob $blobName -Context $blobContext -Force
} 
write-host "All files in $localFolder uploaded to $containerName!"