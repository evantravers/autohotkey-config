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
k::FocusOrLaunch "firefox.exe", "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Firefox.lnk"
+k::FocusOrLaunch "zen.exe", "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Zen Browser.lnk"
q::FocusOrLaunch "Signal.exe", "C:\Users\Tower\AppData\Local\Programs\signal-desktop\Signal.exe"
i::FocusOrLaunch "Discord.exe", "C:\Users\Tower\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"
!i::FocusOrLaunch "Slack.exe", "C:\Users\Tower\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Slack Technologies Inc\Slack.lnk"
g::FocusOrLaunch "Obsidian.exe", "C:\Users\Tower\AppData\Local\Obsidian\Obsidian.exe"
r::FocusOrLaunch "Toggl.exe", "C:\Users\Tower\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Toggl\Toggl Track.lnk"
v::FocusOrLaunch "Figma.exe", "C:\Users\Tower\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Figma.lnk"
e::FocusOrLaunch "Thunderbird.exe", "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Thunderbird.lnk"
y::FocusOrLaunch "Fantastical.exe", "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Fantastical.lnk"
t::Run "obsidian://open?vault=wiki&file=templates%2Ftasks%2FToday"
z::FocusOrLaunch "Zoom.exe", "C:\Users\Tower\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Zoom\Zoom Workplace.lnk"
p::Run "https://claude.ai"
+p::Run "https://www.perplexity.ai"
!p::Run "https://chatgpt.com"
h::Run "https://devdocs.io"
n::Run "obsidian://adv-uri?vault=wiki&commandid=zk-prefixer"
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

