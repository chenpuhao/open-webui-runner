@echo off
set "ollama_path=path\to\your\ollama app.exe"
set "anaconda_path=path\to\your\anaconda3"
set "chrome_path=chrome.bat"  

:: 启动 Ollama
start "" "%ollama_path%"
echo Ollama 启动完成。

:: 启动 Chrome 并隐藏命令提示符窗口
start /B "" "%chrome_path%"
echo 浏览器计时启动完成。

:: 等待 Ollama 启动完成，根据实际情况调整
timeout /t 10 /nobreak >nul

:: 添加 Anaconda 的 Scripts 目录到 PATH 环境变量，避免 conda 命令找不到。
set "path=%path%;%anaconda_path%\Scripts"

:: 激活 conda 环境并运行 open-webui serve (改进)
call "%anaconda_path%\Scripts\activate.bat" open-webui && (
    call open-webui serve 2>&1 || goto :error
)

goto :eof

:error
echo 运行 open-webui serve 命令失败。请检查 open-webui 是否已安装或配置。
:keep_window_open
pause
goto :eof



