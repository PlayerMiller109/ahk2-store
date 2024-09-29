#Include '%A_ScriptDir%/A_utils/clipExec.ahk'

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