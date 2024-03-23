# My Linux config
Not much customisation here. The main things are i3, polybar and rofi.
GNU Stow is being used so after cloning this repo,
* Install ``` stow ``` on your machine
* Enter the dotfiles folder (to be placed in ```$HOME```) and run ```stow .```
* Dandy.
## Fonts
It is imperative that you use a Nerd font. My ```kitty``` uses JetBrainsMono Nerd Font(pacman) and my ```polybar``` uses GoMono Nerd Font(manual).
## Pywal
```kitty```, ```polybar``` and ```rofi``` use ```pywal```. Install the package ```pywal``` and run:
```bash
wal -i Path/to/bg.jpg
```
That is all.
## Fish + Starship
Install both ```fish``` and ```starship``` packages on your machine.
Not much customisation done here.
Some aliases:
* ```xbl``` for ```xbacklight```
* ```vol``` for ```pamixer``` to set volume. (I have no clue how pulseaudio, and audio in general works in linux.)

So having these two things can help.
## i3
Depends on
1. ```polybar```
2. ```rofi```
3. ```pywal```
4. ```feh```(?)

A picom config exist in this repo but picom init has been commented out of i3. I dont see much use for picom, and prefer my WM without it. Yet its there for when I change my mind. Install ```picom``` for Picom.

Some feature implementations are pending and a thorough cleanup is required.
## Kitty
Just font config and disabled keymaps(I use tmux).
## Neofetch
Standard neofetch for now. I have this here because I may change this, although I dont strongly feel any need to.
## Picom
Non-functional. Edit the ```i3/config``` file for it to be used. I dont want to though.
## Polybar
Apart from the GoMono Nerd Font, no dependency other than ```pywal```. Just have ```polybar``` installed on your machine.
## Ranger
Install ```ranger```. A dev-icons plugin and an archive plugin has been added. Links to both the plugins are in ```rc.conf``` and must be downloaded manually.
## Rofi
Install ```rofi```. No dependency yet other than ```pywal```, although it is barely configured. Requires more work.
## Tmux
Install ```tmux```. Clone tpm in ```$HOME/.tmux/plugins/```. This must be done manually.  After that go ```ctrl+<Space> I``` to install packages when in ```tmux```.
