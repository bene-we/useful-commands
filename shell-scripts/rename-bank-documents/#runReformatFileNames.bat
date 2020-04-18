@ECHO off
SET ThisScriptsDirectory=%~dp0
SET PowerShellScriptPath="C:\reformatFileNames.ps1"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%PowerShellScriptPath%' '%ThisScriptsDirectory%'"
