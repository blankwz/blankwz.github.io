﻿
@echo off
cls
color 0A
Echo *******************************************************************************
Echo           正在修改IP地址和DNS服务器地址,请耐心等待…………
Echo *******************************************************************************
netsh interface ip set address name="WLAN" source=dhcp
netsh interface ip delete dns "WLAN" all
ipconfig /flushdns
ipconfig /all
Echo *******************************************************************************
Echo          OK！！已修改成功！请按任意键继续…………
Echo *******************************************************************************
Pause
