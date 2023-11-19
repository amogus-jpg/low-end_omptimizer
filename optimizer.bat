@echo off
chcp 65001 > nul
echo Внимание! Этот скрипт удалит временные файлы. Хотите продолжить?
set /p choice=Введите Y для продолжения или N для отмены: 
if /i "%choice%"=="Y" goto Yes
if /i "%choice%"=="y" goto Yes
if /i "%choice%"=="N" goto No
if /i "%choice%"=="n" goto No

:Yes
echo Удаление временных файлов...
del /q %temp%\*.*
echo Очистка завершена!
goto end

:No
echo Очистка отменена.
goto end

:end