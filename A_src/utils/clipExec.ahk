clipExec(func, le := 'en') {
  prev := ClipboardAll()
  Loop 2 {
    Sleep(50), Send('^c')
  }
  clipEmpty() {
    Sleep(50), A_Clipboard := prev, prev := ''
  }
  if ClipWait(1) {
    if (le != 'en') {
      func(A_Clipboard), clipEmpty()
    }
    else if (RegExMatch(A_Clipboard, '[a-zA-Z\s]+', &m)) {
      func(m[0]), clipEmpty()
    }
  }
}