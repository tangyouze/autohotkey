



active_screen_index() {
    WinGetPos, ActiveX, ActiveY, ActiveWidth, ActiveHeight , A  ; "A" to get the active window's pos.
    midx := ActiveX + ActiveWidth / 2
    midy := ActiveY + ActiveHeight / 2
    ;msgbox, %midx% `t %midy%
    SysGet, MonitorCount, MonitorCount
    Loop, %MonitorCount%
    {
        ;SysGet, MonitorName, MonitorName, %A_Index%
        SysGet, Monitor, Monitor, %A_Index%
        ;msgbox %MonitorLeft% `t %MonitorRight%
        if (MonitorLeft <= midx and midx <= MonitorRight )
        {
            return %A_Index%
        }

        ;SysGet, MonitorWorkArea, MonitorWorkArea, %A_Index%
        ;msgbox, %MonitorWorkArea%
    }
}

add_width() {
    index := active_screen_index()
    SysGet, MonitorWorkArea, MonitorWorkArea, %index%
    ScreenWidth := MonitorWorkAreaRight - MonitorWorkAreaLeft


    WinGetPos, X, Y, width, height, A 
    ; if windows right move out of screen, move it left
    split12 := floor(ScreenWidth / 12)
    if ( X + width + split12 > MonitorWorkAreaRight) {
        winmove A, , X - split12, ,  width + split12
    }
    else{
        winmove A, , , , width + split12
    }

}

sub_width() {
    index := active_screen_index()
    SysGet, MonitorWorkArea, MonitorWorkArea, %index%
    ScreenWidth := MonitorWorkAreaRight - MonitorWorkAreaLeft


    WinGetPos, X, Y, width, height, A 
    ; if windows right move out of screen, move it left
    split12 := floor(ScreenWidth / 12)
    ;msgbox %X% `t %width%
    if ( X + width + split12  >= MonitorWorkAreaRight) {
        winmove A, , X + split12, ,  width - split12
    }
    else{
        winmove A, , , , width - split12
    }

}

#NumpadAdd:: add_width()
#NumpadSub:: sub_width()



