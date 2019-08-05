# Powershell Settings Light Theme
### Create a place to store settings for syntax highlighting
###### Check if powershell profile doc exists
`Test-Path $profile` 
###### Create powershell profile doc if above returns false
`New-Item -path $profile -type file -force`
###### Populate powershell profile with syntax highlighting preferences. Note that you need permission to run scripts for this to work.
``echo "Set-PSReadlineOption -TokenKind Command -ForegroundColor Black`nSet-PSReadlineOption -TokenKind Number -ForegroundColor Magenta`nSet-PSReadlineOption -TokenKind Member -ForegroundColor Magenta`n$host.UI.RawUI.WindowSize.Height = `"40`"`n$host.UI.RawUI.WindowSize.Width = `"145`"`nClear-Host" >> $profile``

### Syntax highlighting preferences line-by-line
`#left other settings as they are so as to keep as much continuation between old powershell and light theme`  
`Set-PSReadlineOption -TokenKind Command -ForegroundColor Black`  
`Set-PSReadlineOption -TokenKind Number -ForegroundColor Magenta`  
`Set-PSReadlineOption -TokenKind Member -ForegroundColor Magenta`  

### Change window size line-by-line
`$host.UI.RawUI.WindowSize.Height = "40"`  
`$host.UI.RawUI.WindowSize.Width = "145"`  

### Change window color
`$host.UI.RawUI.ForegroundColor = "Black"`  
`$host.UI.RawUI.BackgroundColor = "DarkYellow"`  

### Change powershell message text colors
`#leave first 4 to defaults`  
`#$host.PrivateData.ErrorForegroundColor = "Red"`  
`#$host.PrivateData.ErrorBackgroundColor = "Black"`  
`#$host.PrivateData.WarningForegroundColor = "Yellow"`  
`#$host.PrivateData.WarningBackgroundColor = "Black"`  
`$host.PrivateData.DebugForegroundColor = "Magenta"`  
`$host.PrivateData.DebugBackgroundColor = "Black"`  
`$host.PrivateData.VerboseForegroundColor = "Blue"`  
`$host.PrivateData.VerboseBackgroundColor = "Gray"`  
`$host.PrivateData.ProgressForegroundColor = "DarkCyan"`  
`$host.PrivateData.ProgressBackgroundColor = "DarkGray"`  

### Behind the scenes
###### See current syntax highlighting settings
`Get-PSReadlineOption | Select *color`
###### See current color settings
`$host.PrivateData`
###### Get list of only colors
`[System.Enum]::GetValues('ConsoleColor')`
###### See all possible foreground colors
`[System.Enum]::GetValues('ConsoleColor') | ForEach-Object { Write-Host $_ -ForegroundColor $_ }`
###### See all possible background colors
`[System.Enum]::GetValues('ConsoleColor') | ForEach-Object { Write-Host $_ -BackgroundColor $_ }`
###### See window color settings
`$host.UI.RawUI`

### Alternative: change window color with UI
###### Right click on top of window, click "Properties", "Colors", change settings.
