clipExec(func) {
  prev := ClipboardAll()
  Loop 2 {
    Sleep(100), Send('^c')
  }
  if ClipWait(1)
    && RegExMatch(A_Clipboard, '[a-zA-Z\s]+', &m)
  {
    func(m[0]), Sleep(50)
    A_Clipboard := prev
    prev := ''
  }
}