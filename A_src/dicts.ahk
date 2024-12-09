#Include '%A_WorkingDir%/utils/clipExec.ahk'

dicts() {
  if WinExist('词根词缀字典')
    affixes()
  else
    saladict()
}

saladict() {
  if WinActive('ahk_exe vivaldi.exe') {
    Send '{Blind}{vkE8}'
    Return
  }
  if GetKeyState('LButton', 'P') {
    Send '{Blind}{vkE8}'
    if KeyWait('LButton')
      clipExec(salad_main)
  }
}
salad_main(str) {
  A_Clipboard := str
  Send '!+t'
}

affixes() {
  Sleep(100), Send('^c')
  ClipWait(1)
  WinActivate
}