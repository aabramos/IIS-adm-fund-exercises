# Adding a new MIME type to a server
add-webconfigurationproperty //staticContent -Name collection -value @{fileExtension='.woff2'; mimeType='application/font-woff2'}
