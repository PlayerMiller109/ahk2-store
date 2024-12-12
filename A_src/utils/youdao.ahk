#Include '%A_WorkingDir%/clipExec.ahk'
#Include '%A_WorkingDir%/downAndPlay.ahk'

le := ''
youdao() {
  if le
    clipExec(youdao_main, le)
}
youdao_tray(_Menu) {
  Global le
  _Menu.Add '英' (le == 'en' ? '☑' : ''), setEn
  _Menu.Add '日' (le == 'ja' ? '☑' : ''), setJa
  setEn(*) {
    le := le == 'en' ? '' : 'en'
  }
  setJa(*) {
    le := le == 'ja' ? '' : 'ja'
  }
}

rdm := 'a'
youdao_main(str) {
  Global rdm
  url := 'https://dict.youdao.com/dictvoice?le=' le '&audio=' str
  rdm := (rdm == 'a') ? 'b' : 'a'
  relaPath := '/track_' rdm '.mp3'
  downAndPlay(url, relaPath)
}