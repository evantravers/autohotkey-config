﻿#Requires AutoHotkey v2.0
#SingleInstance Force

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
F19 & i::FocusOrLaunch "Discord.exe", "C:\Users\Tower\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"
F19 & g::FocusOrLaunch "Obsidian.exe", "C:\Users\Tower\AppData\Local\Obsidian\Obsidian.exe"
F19 & r::FocusOrLaunch "Toggl.exe", "C:\Users\Tower\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Toggl\Toggl Track.lnk"
F19 & v::FocusOrLaunch "Figma.exe", "C:\Users\Tower\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Figma.lnk"
F19 & y::FocusOrLaunch "Morgen.exe", "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Thunderbird.lnk"
F19 & p::Run "https://chatgpt.com"
F19 & h::Run "https://devdocs.io"
F19 & ~;::toggleDarkMode()

toggleDarkMode() {
    static key := "", mode := 0
    if (key == "") {
        key := "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize"
        mode := Integer(RegRead(key, "SystemUsesLightTheme", ""))
    }
    mode := !mode
    RegWrite(mode, "REG_DWORD", key, "AppsUseLightTheme")
    RegWrite(mode, "REG_DWORD", key, "SystemUsesLightTheme")
}

