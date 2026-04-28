@echo off
chcp 65001 >nul
echo =====================================
echo   赣南科技学院 · 校友头像制作
echo   正在启动本地服务器...
echo =====================================
echo.
where python >nul 2>nul
if %errorlevel% equ 0 (
    echo 使用 Python 启动 HTTP 服务器
    echo 打开浏览器访问: http://localhost:8080
    start http://localhost:8080
    python -m http.server 8080
    goto end
)
where npx >nul 2>nul
if %errorlevel% equ 0 (
    echo 使用 Node.js 启动...
    echo 打开浏览器访问: http://localhost:3000
    start http://localhost:3000
    npx serve .
    goto end
)
echo 未找到 Python 或 Node.js
echo 请安装 Python: https://www.python.org/downloads/
pause
:end
