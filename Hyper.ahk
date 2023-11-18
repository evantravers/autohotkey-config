#Requires AutoHotkey v2.0
#SingleInstance Force

F19 & r::Reload

FocusOrLaunch(Program)
{
  if (WinExist("ahk_exe " Program)) {
    WinActivate("ahk_exe " Program)
  }
  else {
    Run(Program,,, &pid)
    WinWait("ahk_pid" pid)
    WinActivate("ahk_exe " Program)
  }
}

F19 & j::FocusOrLaunch "C:\Program Files\WezTerm\wezterm-gui.exe"
F19 & k::FocusOrLaunch "C:\Program Files\Mozilla Firefox\firefox.exe"
F19 & q::FocusOrLaunch "C:\Users\Tower\AppData\Local\Programs\signal-desktop\Signal.exe"
F19 & i::FocusOrLaunch "C:\Users\Tower\AppData\Local\Discord\Update.exe --processStart Discord.exe"
