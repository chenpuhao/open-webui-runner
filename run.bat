@echo off
set "ollama_path=C:\Users\chenp\AppData\Local\Programs\Ollama\ollama app.exe"
set "anaconda_path=D:\ProgramData\anaconda3"
set "chrome_path=chrome.bat"  

:: ���� Ollama
start "" "%ollama_path%"
echo Ollama ������ɡ�

:: ���� Chrome ������������ʾ������
start /B "" "%chrome_path%"
echo �������ʱ������ɡ�

:: �ȴ� Ollama ������ɣ�����ʵ���������
timeout /t 10 /nobreak >nul

:: ��� Anaconda �� Scripts Ŀ¼�� PATH �������������� conda �����Ҳ�����
set "path=%path%;%anaconda_path%\Scripts"

:: ���� conda ���������� open-webui serve (�Ľ�)
call "%anaconda_path%\Scripts\activate.bat" open-webui && (
    call open-webui serve 2>&1 || goto :error
)

goto :eof

:error
echo ���� open-webui serve ����ʧ�ܡ����� open-webui �Ƿ��Ѱ�װ�����á�
:keep_window_open
pause
goto :eof



