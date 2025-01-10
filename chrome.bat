@echo off
:: 设置等待时间为25秒
set "waitTime=25"

:: 等待指定的时间，/t参数后面跟的是秒数，/nobreak防止用户按键跳过等待
timeout /t %waitTime% /nobreak >nul

:: 打开默认浏览器并访问指定的URL
start http://127.0.0.1:8080

:: 脚本结束
exit