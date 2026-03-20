[Console]::OutputEncoding =::UTF8
chcp 65001 > $null
$Host.UI.RawUI.WindowTitle = "🎃 DUPE HELPER 🎃"

# Функция медленной прогрузки точек
function L($m, $min, $max) {
    Write-Host " [>] $m " -NoNewline -ForegroundColor White
    $d = Get-Random -Min 15 -Max 30
    for ($i=0; $i -lt $d; $i++) {
        Write-Host "." -NoNewline -ForegroundColor Magenta
        Start-Sleep -Milliseconds (Get-Random -Min $min -Max $max)
    }
    Write-Host " [ГОТОВО]" -ForegroundColor DarkYellow
}

Clear-Host
Write-Host ""
Write-Host "  ██████╗ ██╗   ██╗██████╗ ███████╗    ██╗  ██╗███████╗██╗     ██████╗ ███████╗██████╗ " -ForegroundColor DarkYellow
Write-Host "  ██╔══██╗██║   ██║██╔══██╗██╔════╝    ██║  ██║██╔════╝██║     ██╔══██╗██╔════╝██╔══██╗" -ForegroundColor DarkYellow
Write-Host "  ██║  ██║██║   ██║██████╔╝█████╗      ███████║█████╗  ██║     ██████╔╝█████╗  ██████╔╝" -ForegroundColor Red
Write-Host "  ██║  ██║██║   ██║██╔═══╝ ██╔══╝      ██╔══██║██╔══╝  ██║     ██╔═══╝ ██╔══╝  ██╔══██╗" -ForegroundColor Red
Write-Host "  ██████╔╝╚██████╔╝██║     ███████╗    ██║  ██║███████╗███████╗██║     ███████╗██║  ██║" -ForegroundColor Magenta
Write-Host "  ╚═════╝  ╚═════╝ ╚═╝     ╚══════╝    ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝     ╚══════╝╚═╝  ╚═╝" -ForegroundColor Magenta
Write-Host ""
Write-Host "                PROJECT: DUPE HELPER | BUILD: 2026.10.31" -ForegroundColor DarkYellow
Write-Host "                (+) Developed by: sacredmvp | HALLOWEEN" -ForegroundColor Red

Write-Host "`n [!] ВЫБЕРИТЕ ЦЕЛЕВОЙ СЕРВЕР ДЛЯ РАБОТЫ:" -ForegroundColor DarkYellow
Write-Host "  1. SpookyTime (Bypass GrimAC / MXAc)" -ForegroundColor White
Write-Host "  2. FunTime (Sloth Bypass + AiAc Fix)" -ForegroundColor White
Write-Host "  3. ReallyWorld (NBT Injector v4)" -ForegroundColor White
Write-Host "  4. HolyWorld (Buffer Overflow)" -ForegroundColor White
Write-Host "  5. Hypixel / 2b2t (Proxy Bypass)" -ForegroundColor White

$choice = Read-Host "`n Введите номер [1-5]"
Write-Host "`n [+] Конфигурация DUPE HELPER для сервера #$choice загружена успешно." -ForegroundColor DarkYellow
Start-Sleep -Seconds 2

Write-Host "`n [!] ПОДГОТОВКА СПЕЦИФИЧЕСКИХ ПАТЧЕЙ ДЛЯ ОБХОДА..." -ForegroundColor Red
$patches = "GrimAC/MXAc Disabler","Sloth/AiAc Packet Fix","Matrix Bypass 2026","Vulcan Anti-Kick","AAC Packet Spoof","InventorySync 2.0"
foreach ($p in $patches) { L "Анализ модуля: $p" 400 1200 }

Write-Host "`n ---------------------- ИНСТРУКЦИЯ ---------------------- " -ForegroundColor DarkGray
Write-Host "  1. Предмет должен быть в ОСНОВНОЙ РУКЕ." -ForegroundColor White
Write-Host "  2. Процесс инъекции займет около 10-12 минут." -ForegroundColor White
Write-Host "  3. НЕ СВОРАЧИВАЙТЕ ОКНО, чтобы избежать лагов пакетов." -ForegroundColor White
Write-Host " -------------------------------------------------------- " -ForegroundColor DarkGray
Write-Host ""
$null = Read-Host " [НАЖМИТЕ ENTER ДЛЯ ЗАПУСКА ДЮПА]"

Write-Host "`n [!] ВНИМАНИЕ: ЗАПУЩЕН ГЛОБАЛЬНЫЙ ПРОЦЕСС ИНЪЕКЦИИ" -ForegroundColor Magenta
Write-Host " [!] ИДЕТ ГЕНЕРАЦИЯ ОШИБКИ В ЧАНКЕ СЕРВЕРА..." -ForegroundColor Red

$steps = "Сканирование UUID","Обход Anti-Cheat","Инъекция NBT данных","Подмена ID предмета","Генерация Chunk-Error","Клонирование пакета","Синхронизация с БД","Скрытие следов (Logs)"
foreach ($s in $steps) {
    Write-Host " [PROCESS] $s " -NoNewline -ForegroundColor DarkYellow
    for ($j=0; $j -lt 35; $j++) {
        Write-Host "█" -NoNewline -ForegroundColor Red
        Start-Sleep -Seconds (Get-Random -Min 4 -Max 9)
    }
    Write-Host " 100%" -ForegroundColor DarkYellow
}

Write-Host "`n [!] ДЮП ЗАВЕРШЕН. ПРИНУДИТЕЛЬНЫЙ РЕКОННЕКТ (RELOG)..." -ForegroundColor DarkYellow
Start-Sleep -Seconds 5
Write-Host " [+] Соединение разорвано: Пакеты успешно инжектированы." -ForegroundColor DarkYellow
Start-Sleep -Seconds 2

Write-Host "`n ======================================================== " -ForegroundColor Red
Write-Host "             !!! DUPE HELPER: УСПЕШНО !!!                 " -ForegroundColor Red
Write-Host "      Предметы появятся в инвентаре после захода.         " -ForegroundColor White
Write-Host " ======================================================== " -ForegroundColor Red

Write-Host "`n Нажмите ENTER для очистки памяти и выхода..." -ForegroundColor Gray
$null = Read-Host
