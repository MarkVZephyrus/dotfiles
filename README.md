# An i3 Arch Linux Tokyonight theme
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

This list can be used to easilty reinsatll all dependecies of this config along with many handy destop services like bluetooth, using
```bash
yay -S - < packages.md
```

As you can see having ```yay``` installed is a prerequisite for this.
Another thing to note is that to the best of my efforts the file ```packages.md``` only contains packages required for a smooth _desktop_ experience and not packages that are more specialized. Importantly, packages like ```nvidia```, ```sddm``` and ```firefox``` are not included, but ```xorg```, ```i3```, fonts and similars are.
## zsh + Starship
Starship is the most starightforward theme, fits my needs best. Highlighting and auto-complete should already work after above steps.
I used [Josean Martinez' CLI tools video](https://youtu.be/mmqDYw9C30I?si=OzvE4uISTOvqCLoq "The video") to add ```bat, fzf, zoxide``` and other tools to the shell.
## i3
Pretty starightforward, ```i3lock-color``` configured.
I dont feel the need for a compositor like ```picom```.
## ncspot
Because of experimental features only availaible by compiling the script yourself, you will have to do just that. Install ```cargo``` and the [repository](https://github.com/hrkfdn/ncspot.git).
## .xsession
This script runs *after* ```sddm``` login. I have added in it a command to set my monitor refresh rate. This may cause issues if you have a different monitor configuration.
