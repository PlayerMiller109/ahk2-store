#`::bxnMap()

bxnMap() {
  tar := 'ahk_class Qt5150QWindow'
  if WinExist(tar) {
    winState := WinGetMinMax(tar)
    if (winState = 1) {
      WinRestore(tar)
      WinMove(1640, 1334, 498, 498, tar)
    } else
      WinMaximize(tar)
  }
}