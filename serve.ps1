Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "  赣南科技学院 · 校友头像制作" -ForegroundColor Cyan
Write-Host "  正在启动本地服务器..." -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host ""

# 尝试 Python 3
try {
    $py = Get-Command python -ErrorAction Stop
    Write-Host "使用 Python 启动 HTTP 服务器" -ForegroundColor Green
    Write-Host "打开浏览器访问: http://localhost:8080" -ForegroundColor Yellow
    Start-Process "http://localhost:8080"
    & $py -m http.server 8080
    return
} catch {}

# 尝试 Node.js npx serve
try {
    $node = Get-Command npx -ErrorAction Stop
    Write-Host "使用 npx serve 启动..." -ForegroundColor Green
    Write-Host "打开浏览器访问: http://localhost:3000" -ForegroundColor Yellow
    Start-Process "http://localhost:3000"
    & $node serve .
    return
} catch {}

# 尝试 PHP
try {
    $php = Get-Command php -ErrorAction Stop
    Write-Host "使用 PHP 启动..." -ForegroundColor Green
    Write-Host "打开浏览器访问: http://localhost:8000" -ForegroundColor Yellow
    Start-Process "http://localhost:8000"
    & $php -S localhost:8000
    return
} catch {}

Write-Host "❌ 未找到 Python / Node.js / PHP" -ForegroundColor Red
Write-Host "请安装 Python 后重试: https://www.python.org/downloads/" -ForegroundColor Yellow
Read-Host "按 Enter 退出"
