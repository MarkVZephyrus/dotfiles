set fish_greeting
starship init fish | source

function vol
  pamixer --set-volume $argv
end

function xbl
  xbacklight -set $argv
end

# Created by `pipx` on 2024-03-22 19:44:24
set PATH $PATH /home/mayank/.local/bin
