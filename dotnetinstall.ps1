
$url = "https://download.microsoft.com/download/3/5/9/35980F81-60F4-4DE3-88FC-8F962B97253B/NDP461-KB3102438-Web.exe"

$output = "C:\temp\dotnet.exe"

Invoke-WebRequest -Uri $url -OutFile $output

& "$output" /passive /norestart