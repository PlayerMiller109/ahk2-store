#UseHook

#Include '%A_ScriptDir%/A_src/saladict.ahk'
~LWin::saladict()

#Include '%A_ScriptDir%/A_src/toHiragana.ahk'
#Include '%A_ScriptDir%/A_src/onclick.ahk'
~LButton:: {
  toHiragana()
  ondblclick()
}
OnMessage(0x404, clickTray)

#Include '%A_ScriptDir%/.ignore/menus.ahk'
#W::obVaults()
#C::flashFill()