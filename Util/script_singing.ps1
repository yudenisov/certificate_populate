$signed_file="D:\OneDrive\Документы\.cert_data\helloworld.ps1"
$certificate_name=Get-PfxCertificate -FilePath "D:\OneDrive\Документы\.cert_data\virfilesign1.pfx"
Set-AuthenticodeSignature $signed_file $certificate_name -Force -Confirm -IncludeChain all
