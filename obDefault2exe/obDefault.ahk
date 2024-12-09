#Requires AutoHotkey v2.0
settingDir := A_ScriptDir '/.ignore/obDefault.txt'
settings := StrSplit(FileRead(settingDir), '`n')
AppPath := settings[1]
Protocol := settings[2]
ori := A_Args[1]
name := StrSplit(ori, '\')[-1]
cdir := RegExReplace(ori, '\\' name '$')
Loop {
  a1 := StrSplit(cdir, '\')[-1]
  if (
    SubStr(a1, 2, 1) = ':' || Instr(cdir, '\.obsidian')
  ) {
    Run AppPath ' "' ori '"'
    ExitApp
  }
  if FileExist(cdir '\.obsidian') {
    Run 'obsidian://' Protocol '?vault=' a1 '&file=' StrReplace(name, '&', '%26')
    ExitApp
  }
  cdir := RegExReplace(cdir, '\\' a1 '$')
}