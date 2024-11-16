toHiragana() {
  WinWaitActive('A')
  if (getLanguage() == 0x0411)
    toHira_main()
}
getLanguage() {
  threadID := DllCall('GetWindowThreadProcessId', 'UInt', WinActive('A'), 'UInt', 0)
  layout := DllCall('GetKeyboardLayout', 'UInt', threadID)
  return layout & 0xFFFF
}

Global seenWindows := Map()
toHira_main() {
  if WinExist('A') {
    currWinID := WinExist('A')
    if !seenWindows.Has(currWinID) {
      Sleep(100)
      Send '{Ctrl down}{CapsLock}{CapsLock}{Ctrl up}'
      seenWindows[currWinID] := !0
    }
  }
}