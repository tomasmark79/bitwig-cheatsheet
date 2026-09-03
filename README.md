# Bitwig Studio Shortcuts Cheat Sheet

[![PayPal](https://img.shields.io/badge/PayPal-Donate-blue?logo=paypal)](https://paypal.me/TomasMark)

**Bitwig Studio 6**

![Bitwig Studio Shortcuts](bitwig-cheatsheet.png)

## Features

- 4K resolution (3840×2160)

## Installation (Windows)

Typst can be installed via [WinGet](https://learn.microsoft.com/en-us/windows/package-manager/winget/) (included in Windows 10/11):

```powershell
winget install --id Typst.Typst
```

After installation, `typst.exe` is available at:
```
%LOCALAPPDATA%\Microsoft\WinGet\Links\typst.exe
```

## Compilation

```bash
typst compile bitwig-cheatsheet.typ
```

## Export to PNG (4K, 72 PPI)

```bash
typst compile bitwig-cheatsheet.typ --format png --ppi 72 bitwig-cheatsheet.png
```

On Windows (PowerShell) with the full path:

```powershell
$typst = Join-Path $env:LOCALAPPDATA 'Microsoft\WinGet\Links\typst.exe'
& $typst compile bitwig-cheatsheet.typ --format png --ppi 72 bitwig-cheatsheet.png
```
