@echo off

taskkill /f /im EasyAntiCheat_Setup.exe
taskkill /f /im FortniteLauncher.exe
taskkill /f /im EpicWebHelper.exe
taskkill /f /im FortniteClient-Win64-Shipping.exe
taskkill /f /im EasyAntiCheat.exe
taskkill /f /im BEService_x64.exe
taskkill /f /im EpicGamesLauncher.exe
taskkill /f /im FortniteClient-Win64-Shipping_BE.exe
taskkill /f /im FortniteClient-Win64-Shipping_EAC.exe
DevManView.exe /uninstall "PCI\VEN*" /use_wildcard
start /wait /b  C:\WindowsINF\DeviceCleanupCmd.exe * -s
C:\WindowsINF\DriveCleanup.exe
del "C:\Users\%username%\AppData\Local\Temp.*"
mkdir C:\Windows\temp
mkdir "C:\Users\%username%\AppData\Local\Temp"
set try=1
:retry
set /A try=%try%+1
C:\WindowsINF\DevManView.exe /uninstall "Realtek*" /use_wildcard
C:\WindowsINF\DevManView.exe /uninstall "WAN Miniport*" /use_wildcard
C:\WindowsINF\DevManView.exe /uninstall "Disk drive*" /use_wildcard
C:\WindowsINF\DevManView.exe /uninstall "C:\"
C:\WindowsINF\DevManView.exe /uninstall "D:\"
C:\WindowsINF\DevManView.exe /uninstall "E:\"
C:\WindowsINF\DevManView.exe /uninstall "F:\"
C:\WindowsINF\DevManView.exe /uninstall "G:\"
C:\WindowsINF\DevManView.exe /uninstall "Disk"
C:\WindowsINF\DevManView.exe /uninstall "disk"
C:\WindowsINF\DevManView.exe /uninstall "Disk&*" /use_wildcard
C:\WindowsINF\DevManView.exe /uninstall "SWD\WPDBUSENUM*" /use_wildcard
C:\WindowsINF\DevManView.exe /uninstall "USBSTOR*" /use_wildcard
C:\WindowsINF\DevManView.exe /uninstall "SCSI\Disk*" /use_wildcard
C:\WindowsINF\DevManView.exe /uninstall "STORAGE*" /use_wildcard
C:\WindowsINF\DevManView.exe /uninstall "SWD\MS*" /use_wildcard
C:\WindowsINF\DevManView.exe /uninstall "Motherboard*" /use_wildcard
C:\WindowsINF\DevManView.exe /uninstall "Volume*" /use_wildcard
C:\WindowsINF\DevManView.exe /uninstall "Microsoft*" /use_wildcard
C:\WindowsINF\DevManView.exe /uninstall "System*" /use_wildcard
C:\WindowsINF\DevManView.exe /uninstall "ACPI\*" /use_wildcard
C:\WindowsINF\DevManView.exe /uninstall "Remote*" /use_wildcard
C:\WindowsINF\DevManView.exe /uninstall "Standard*" /use_wildcard


exit