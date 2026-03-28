# Bitwig Studio Shortcuts Cheat Sheet

**Bitwig Studio 6.0**

![Bitwig Studio Shortcuts](bitwig-cheatsheet.png)

## Features

- 4K resolution (3840×2160)

## Instalace (Windows)

Typst lze nainstalovat přes [WinGet](https://learn.microsoft.com/en-us/windows/package-manager/winget/) (součást Windows 10/11):

```powershell
winget install --id Typst.Typst
```

Po instalaci je `typst.exe` dostupný na:
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

Na Windows (PowerShell) s plnou cestou:

```powershell
$typst = Join-Path $env:LOCALAPPDATA 'Microsoft\WinGet\Links\typst.exe'
& $typst compile bitwig-cheatsheet.typ --format png --ppi 72 bitwig-cheatsheet.png
```

## Support

If you find this cheat sheet helpful, consider buying me a coffee! ☕

[paypal.me/TomasMark](https://paypal.me/TomasMark)