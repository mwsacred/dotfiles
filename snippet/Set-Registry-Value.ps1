function Set-Registry-Value {
    $registryPath = $args[0]
    $Name = $args[1]
    $value = $args[2]

    IF(!(Test-Path $registryPath))
    {
        New-Item -Path $registryPath -Force | Out-Null
        New-ItemProperty -Path $registryPath -Name $name -Value $value `
        -PropertyType DWORD -Force | Out-Null
    }
    ELSE
    {
        New-ItemProperty -Path $registryPath -Name $name -Value $value `
        -PropertyType DWORD -Force | Out-Null
    }
}


Set-Registry-Value HKLM:\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds AllowBuildPreview 1
