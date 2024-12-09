#Include '%A_WorkingDir%/clipExec.ahk'

playmode := 0
youdao() {
  if playmode
    clipExec(youdao_main)
}
youdao_tray(_Menu) {
  Global playmode
  _Menu.Add (playmode ? '√' : '') 'play', toggleMode
  toggleMode(*) {
    playmode := !playmode
  }
}

rdm := 'a'
youdao_main(str) {
  Global rdm
  url := 'https://dict.youdao.com/dictvoice?le=en&audio=' str
  rdm := (rdm == 'a') ? 'b' : 'a'
  temp := A_Temp '/track_' rdm '.mp3'
  Download(url, temp)
  SoundPlay temp
}