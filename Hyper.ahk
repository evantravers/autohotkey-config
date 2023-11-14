#Requires AutoHotkey v2.0
#SingleInstance Force

F19 & r::Reload

FocusOrLaunch(Program)
{
  if (WinExist(Program)) {
    WinActivate Program
  }
  else {
    Run Program
  }
}

F19 & j::FocusOrLaunch "wslhost.exe"
F19 & k::FocusOrLaunch "Firefox"
F19 & q::FocusOrLaunch "Signal"
F19 & i::FocusOrLaunch "Discord"
