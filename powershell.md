# Powershell Settings Light Theme
### Change syntax highlighting
`
#left other settings as they are so as to keep as much continuation between old powershell and light theme
Set-PSReadlineOption -TokenKind Command -ForegroundColor Black
Set-PSReadlineOption -TokenKind Number -ForegroundColor Magenta
Set-PSReadlineOption -TokenKind Member -ForegroundColor Magenta
`
### Change window color
`
$host.UI.RawUI.ForegroundColor = "Black"
$host.UI.RawUI.BackgroundColor = "DarkYellow"
`
### Change powershell message text colors
`
#leave first 4 to defaults
#$host.PrivateData.ErrorForegroundColor = "Red"
#$host.PrivateData.ErrorBackgroundColor = "Black" 
#$host.PrivateData.WarningForegroundColor = "Yellow"
#$host.PrivateData.WarningBackgroundColor = "Black"
$host.PrivateData.DebugForegroundColor = "Magenta"
$host.PrivateData.DebugBackgroundColor = "Black"
$host.PrivateData.VerboseForegroundColor = "Blue"
$host.PrivateData.VerboseBackgroundColor = "Gray"
$host.PrivateData.ProgressForegroundColor = "DarkCyan"
$host.PrivateData.ProgressBackgroundColor = "DarkGray"
`
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

### Change window color with UI
###### Right click on top of window, click "Properties", "Colors", change settings.
