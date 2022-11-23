Function Get-EmptyDirectories($basedir) { 
    Get-ChildItem -Directory $basedir
}

$dirs = (gci $PSScriptRoot -R | ? {$_.PSIsContainer -eq $True}) | ? {$_.GetFiles().Count -eq 0}
foreach ($dir in $dirs) {
    New-Item -Path $dir.PSPath -Name ".empty" -ItemType "file"
    }