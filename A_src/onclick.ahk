#Include '%A_ScriptDir%/A_utils/youdao.ahk'

clickTray(wParam, lParam, msg, hwnd) {
  if (lParam = 0x202) {
    _Menu := Menu()
    trayItem(_Menu)
    _Menu.Show()
  }
}

last := 0
ondblclick() {
  Global last
  curr := A_TickCount
  if curr - last < 260 && !WinActive('ahk_exe Explorer.EXE') {
    youdao()
  }
  last := curr
}