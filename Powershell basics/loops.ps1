$myDocuments = Get-ChildItem $env:USERPROFILEDocuments -File
$myDocuments | ForEach-Object {$_.FullName}
ForEach-Object -InputObject $myDocuments -Process {$_.FullName}

For ($i=0; $i -le 10; $i++) {
    "10 * $i = " + (10 * $i)
    }

$i=1
Do {
    $i
    $i++
    }
While ($i -le 10)

$i=1
Do {
    $i
    $i++
    }
Until ($i -gt 10)

$i=1
While ($true)
    {
    $i
    $i++
    if ($i -gt 10) {
        Break
        }
    }