set fish_greeting
starship init fish | source

function vol
  pamixer --set-volume $argv
end

function xbl
  xbacklight -set $argv
end
