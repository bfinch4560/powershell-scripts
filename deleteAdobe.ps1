$application = Get-WmiObject -Class Win32_Product -Filter "IdentifyingNumber = '{AC76BA86-7AD7-1033-7B44-AC0F074E4100}'"
$application.Uninstall()