downAndPlay(url, relativePath, keep := !1) {
  temp := A_Temp relativePath
  if !(keep && FileExist(temp)) {
    Download(_encode(url), temp)
  }
  SoundPlay temp, 'Wait'
}
_encode(str) {
  Doc := ComObject('htmlfile')
  Doc.write('<meta http-equiv="X-UA-Compatible" content="IE=11">')
  JS := Doc.parentWindow
  return JS.encodeURI(str)
}