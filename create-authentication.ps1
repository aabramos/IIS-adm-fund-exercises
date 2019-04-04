Import-Module ServerManager

Add-WindowsFeature Web-Basic-Auth

# Disabling Anonymous Auth
Set-WebConfigurationProperty `
-filter /system.webServer/security/authentication/anonymousAuthentication `
-name enabled `
-value false `
-PSPath IIS:\ `
-Location "inside" `

# Set up Windows Authentication
Set-WebConfigurationProperty `
-filter /system.webServer/security/authentication/windowsAuthentication `
-name enabled `
-value true `
-PSPath IIS:\ `
-Location "inside" `
