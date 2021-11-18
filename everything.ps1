Invoke-WebRequest -Uri 'https://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/win/11.x/11.1/en_us/FoxitPDFReader111_Setup.exe' -OutFile FoxitPDFReader111_Setup.exe
Invoke-WebRequest -Uri 'https://allworxportal.com/software/interact/Interact_Install_Enterprise.msi' -OutFile Interact_Install_Enterprise.msi
$application = Get-WmiObject -Class Win32_Product -Filter "IdentifyingNumber = '{AC76BA86-7AD7-1033-7B44-AC0F074E4100}'"
$application.Uninstall()
Rename-LocalUser -Name "Admin" -NewName "MHadmin"
set-localuser -name MHadmin -fullname "MHadmin"
$userInput = Read-Host "Please enter name of computer: "
Rename-Computer -NewName $userInput -Force