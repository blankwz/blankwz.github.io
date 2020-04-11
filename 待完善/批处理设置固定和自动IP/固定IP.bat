
@echo off
cls
color 0A
Echo *******************************************************************************
Echo           正在修改IP地址和DNS服务器地址,请耐心等待…………
Echo *******************************************************************************
cmd /c netsh interface ip set address name="WLAN" source=static addr=192.168.10.193 mask=255.255.255.0 gateway=192.168.10.1 gwmetric=1
cmd /c netsh interface ip set dns name="WLAN" source=static addr=202.101.224.69
cmd /c netsh interface ip add dns name="WLAN" addr=202.101.226.69 index=2
ipconfig /all
Echo *******************************************************************************
Echo          OK！！已修改成功！请按任意键继续…………
Echo *******************************************************************************
