obVaults() {
  _Menu := Menu()
  _Menu.Add 'Vault1', Vault1
  _Menu.Add 'Vault2', Vault2
  Vault1(*) {
    Run 'obsidian://vault/Vault1'
  }
  Vault2(*) {
    Run 'obsidian://vault/Vault2'
  }
  _Menu.Show()
}
flashFill() {
  _Menu := Menu()
  _Menu.Add 'Num', Num
  Num(*) {
    SendInput '{TEXT}123456'
  }
  _Menu.Show()
}