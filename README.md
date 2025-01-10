# open-webui-runner
说明:请先安装open-webui!!!  [点我去安装](https://docs.openwebui.com/getting-started/quick-start/)

当你想在本地使用open-webui时，你是否每次都需要打开cmd并且输入一连串的命令？这时候就需要一个bat脚本来一键执行了！

该项目旨在简化open-webui的启动流程，并非很复杂的项目，不喜勿喷，谢谢。

## 使用说明

### 使用anaconda

1. 下载chrome.bat以及run_conda.bat
2. 修改run_conda.bat中的ollama_path以及python_path为你的ollama路径以及python路径（根目录）
3. 保存并运行run_conda.bat，这将自动运行ollama以及open-webui并在15s后打开127.0.0.1:8080

### 使用python

1. 下载chrome.bat以及run_python.bat
2. 修改run_python.bat中的ollama_path以及anaconda_path为你的ollama路径以及anaconda路径
3. 保存并运行run_python.bat，这将自动运行ollama以及open-webui并在15s后打开127.0.0.1:8080
