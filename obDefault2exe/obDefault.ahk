#Requires AutoHotkey v2.0
settingDir := A_ScriptDir '/.ignore/obDefault.txt'
settings := StrSplit(FileRead(settingDir), '`n')
AppPath := settings[1]
Protocol := settings[2]
ori := A_Args[1]
name := StrSplit(ori, '\')[-1]
cdir := RTrim(ori, '\' name)
Loop {
  a1 := StrSplit(cdir, '\')[-1]
  if (SubStr(a1, 2, 1) = ':') {
    Run AppPath ' "' ori '"'
    ExitApp
  }
  if FileExist(cdir '\.obsidian') {
    Run 'obsidian://' Protocol '?vault=' a1 '&file=' StrReplace(name, '&', '%26')
    ExitApp
  }
  cdir := RTrim(cdir, '\' a1)
}