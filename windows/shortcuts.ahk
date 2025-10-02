; Shortcuts to open applications
; Press Ctrl+Alt+C to either launch Chrome or switch to it
#SingleInstance Force

OpenWindow(r, ahk_exe_arg := "") {
    if (ahk_exe_arg = "") {
        ahk_exe_arg := r
    }

    exec := "ahk_exe " . ahk_exe_arg
    if WinExist(exec) {
        WinActivate() ;
    } else {
        Run(r)
        Sleep(500)
        if WinExist(exec) {
            WinActivate() ;
        }
    }
}

; Win+': Terminal
#$':: {
    OpenWindow("wt.exe", "WindowsTerminal.exe")
}

; Win+Enter: Terminal
#Enter:: {
    OpenWindow("wt.exe", "WindowsTerminal.exe")
}

; Win+T: Terminal
#T:: {
    OpenWindow("wt.exe", "WindowsTerminal.exe")
}

; Win+N: VSCode
#N:: {
    OpenWindow("C:\Users\Murilo\AppData\Local\Programs\Microsoft VS Code\Code.exe", "Code.exe")
}

; Win+J: Discord
#J:: {
    OpenWindow("C:\Users\Murilo\AppData\Local\Discord\Update.exe --processStart Discord.exe", "Discord.exe")
}

; Win+B: Browser
#B:: {
    OpenWindow("chorme.exe")
}

; Win+O: Obsidian
#O:: {
    OpenWindow("C:\Users\Murilo\AppData\Local\Obsidian\Obsidian.exe")
}

; Win+L: DBeaver
#K:: {
    OpenWindow("C:\Users\Murilo\AppData\Local\DBeaver\dbeaver.exe")
}

; Win+E: Explorer
#E:: {
    if WinExist("ahk_class CabinetWClass") {
        WinActivate() ;
    } else {
        Run("explorer.exe")
    }
}

; Win+W: Close window
#W:: WinClose("A")