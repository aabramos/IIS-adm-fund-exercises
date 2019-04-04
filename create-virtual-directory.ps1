if(!(Test-Path 'IIS:\Sites\Default Web Site\Order')){
    New-Item 'IIS:\Sites\Default Web Site\Order' `
    -physicalPath C:\inetpub\orderapp -type VirtualDirectory
}
