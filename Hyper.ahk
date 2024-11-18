#Requires AutoHotkey v2.0
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

#HotIf GetKeyState("F19")
j::FocusOrLaunch "wezterm-gui.exe", "C:\Program Files\WezTerm\wezterm-gui.exe"
k::FocusOrLaunch "firefox.exe", "C:\Program Files\Mozilla Firefox\firefox.exe"
q::FocusOrLaunch "Signal.exe", "C:\Users\Tower\AppData\Local\Programs\signal-desktop\Signal.exe"
i::FocusOrLaunch "Discord.exe", "C:\Users\Tower\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"
g::FocusOrLaunch "Obsidian.exe", "C:\Users\Tower\AppData\Local\Obsidian\Obsidian.exe"
r::FocusOrLaunch "Toggl.exe", "C:\Users\Tower\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Toggl\Toggl Track.lnk"
v::FocusOrLaunch "Figma.exe", "C:\Users\Tower\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Figma.lnk"
e::FocusOrLaunch "Thunderbird.exe", "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Thunderbird.lnk"
y::FocusOrLaunch "Fantastical.exe", "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Fantastical.lnk"
p::Run "https://chatgpt.com"
+p::Run "https://claude.ai"
h::Run "https://devdocs.io"
~;::toggleDarkMode()
#HotIf

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

