#Requires AutoHotkey v2.0
#SingleInstance Force

F19 & r::Reload()

FocusOrLaunch(Target, Program)
{
  if (WinExist("ahk_exe " Target)) {
    WinActivate("ahk_exe " Target)
  }
  else {
    Run(Program)
  }
}

F19 & j::FocusOrLaunch "wezterm-gui.exe", "C:\Program Files\WezTerm\wezterm-gui.exe"
F19 & k::FocusOrLaunch "firefox.exe", "C:\Program Files\Mozilla Firefox\firefox.exe"
F19 & q::FocusOrLaunch "Signal.exe", "C:\Users\Tower\AppData\Local\Programs\signal-desktop\Signal.exe"
F19 & i::FocusOrLaunch "Discord.exe", "C:\Users\Tower\AppData\Local\Discord\app-1.0.9024\Discord.exe"
F19 & g::FocusOrLaunch "Obsidian.exe", "C:\Users\Tower\AppData\Local\Obsidian\Obsidian.exe"
