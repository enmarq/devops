$env:ARM_SUBSCRIPTION_ID = "c069a76a-18ae-4e62-abdf-71c170467f26"  
$env:ARM_CLIENT_ID = "e7578814-e6be-4a1d-86b4-261e418ad0bd"
$env:ARM_CLIENT_SECRET = "078cd804-f07e-480f-8bd9-15a6a92e358a"  
$env:ARM_TENANT_ID = "ede489e8-3a7b-402d-a643-033fbf4e551b"

Get-ChildItem env: | Where-Object {$_.name -like "ARM_*"}