﻿@echo //-=-=-=-=-=-=-=-=-=-=-=-=-=-=
@echo //  【固定设置】
@echo //  设置IP，子网掩码，网关
@echo //-=-=-=-=-=-=-=-=-=-=-=-=-=-=
@echo // 获取管理员权限
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
netsh interface ip set address name="WLAN" source=static addr=192.168.10.193 mask=255.255.255.0 gateway=192.168.10.1 
@echo //-=-=-=-=-=-=-=-=-=-=-=-=-=-=
@echo //  设置DNS
@echo //-=-=-=-=-=-=-=-=-=-=-=-=-=-=
netsh interface ip set dns "WLAN" static 114.114.114.114 primary
netsh interface ip add dns "WLAN" 8.8.8.8
@echo //  固定IP设置完成！
@pause