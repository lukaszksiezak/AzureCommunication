$myDocuments = Get-ChildItem $env:USERPROFILEDocuments -File
$myDocuments | ForEach-Object {$_.FullName}
ForEach-Object -InputObject $myDocuments -Process {$_.FullName}

