#Requires AutoHotkey v2.0
#SingleInstance Force

F19 & r::Reload

FocusOrLaunch(Program)
{
  if (WinExist("ahk_exe " Program)) {
    WinActivate("ahk_exe " Program)
  }
  else {
    Run("ahk_exe " Program)
    WinActivate("ahk_exe " Program)
  }
}

F19 & j::FocusOrLaunch "wezterm-gui.exe"
F19 & k::FocusOrLaunch "firefox.exe"
F19 & q::FocusOrLaunch "Signal.exe"
F19 & i::FocusOrLaunch "Discord.exe"
