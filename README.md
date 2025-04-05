# An i3 Arch Linux Tokyonight theme
![ss1](https://github.com/MarkVZephyrus/dotfiles/blob/master/ss1.png?raw=true)
![ss2](https://github.com/MarkVZephyrus/dotfiles/blob/master/ss2.png?raw=true)
Here we use rofi, polybar and i3 for main ui.
## Install
GNU Stow is being used so after cloning this repo,
* Install ``` stow ``` on your machine
* Enter the dotfiles folder (to be placed in ```$HOME```) and run ```stow . --dotfiles```
* Dandy.
_**Packages:**_
```packages.md``` contains a list of all user installed packages from pacman **and yay**, using the command 
```bash
pacman -Qqe > packages.md
``` 

This list can be used to easilty reinstall all dependecies of this config along with many handy destop services like bluetooth, using
```bash
yay -S - < packages.md
```

As you can see having ```yay``` installed is a prerequisite for this.
This used to be a list reserved for only the package that contribute to a functional desktop experience. Now I have added pretty much everything I like to have like ```blender```,```spotify``` and similar stuff. I also added ```nvidia```, maybe it or some other package causes problems so dont take this list as a shotcut still do needed homework.

I have used help from the internet, I feel like I should source them, I won't. Josean Martinez was one that helped.
