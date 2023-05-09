# My Lunarvim config
[Lunarvim](https://lunarvim.org/) is *cool* neovim bassed editor with **extra** features built in.

## [Instalation](https://www.lunarvim.org/docs/installation)
### Prerequisites
- [Neovim v0.9.0+](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- [Git](https://cli.github.com/)
- [Make](https://www.gnu.org/software/make/)
- [Pyhton](https://www.python.org/) & [pip](https://pypi.org/project/pip/)
- [Node & NPM](https://nodejs.org/)
- [Rust & Cargo](https://www.rust-lang.org/tools/install)
- [Powershell 7+](https://learn.microsoft.com/en-us/powershell/scripting/whats-new/migrating-from-windows-powershell-51-to-powershell-7?view=powershell-7.2) (Windows)
- [Lazygit](https://github.com/jesseduffield/lazygit#installation) (required for my setup)

### Installing
**Linux**
```bash
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
```

**Windows**
```powershell
pwsh -c "`$LV_BRANCH='release-1.3/neovim-0.9'; iwr https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.ps1 -UseBasicParsing | iex"
```
### Uninstall
**Linux**
```bash
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/uninstall.sh)
```

**Windows**
```powershell
Invoke-WebRequest https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/uninstall.ps1 -UseBasicParsing | Invoke-Expression
```
### Post Install
- Add lvim to path
- Install [Nerdfont](https://www.nerdfonts.com/)

### Installing the config
*work in progress*
