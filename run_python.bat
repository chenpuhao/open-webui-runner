@echo off
set "ollama_path=\Path\To\Your\ollama app.exe"
set "python_path=\Path\To\Your\Python.exe"  :: 设置为你的 Python 可执行文件路径
set "chrome_path=chrome.bat"

:: 启动 Ollama
start "" "%ollama_path%"
echo Ollama 启动完成。

:: 启动 Chrome 并隐藏命令提示符窗口
start /B "" "%chrome_path%"
echo 浏览器计时启动完成。

:: 等待 Ollama 启动完成，根据实际情况调整
timeout /t 10 /nobreak >nul

:: 运行 open-webui serve 使用本地 Python 环境 
"%python_path%" -m open_webui serve 2>&1 || goto :error

goto :eof

:error
echo 运行 open-webui serve 命令失败。请检查 open-webui 是否已安装或配置。
:keep_window_open
pause
goto :eof
