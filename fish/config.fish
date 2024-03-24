#=======
# Login
#=======

if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]
  dbus-run-session sway
end

# Disable greeting
set -g fish_greeting

#======
# Path
#======

fish_add_path ~/.cargo/bin

fish_add_path ~/.deno/bin

fish_add_path ~/go/bin

#======
# Abbr
#======

abbr --add g git

abbr --add ga git add

abbr --add gb git branch

abbr --add gc git commit

abbr --add gC git clone

abbr --add gp git push

abbr --add gP git pull

abbr --add gs git status

abbr --add gS git switch

abbr --add gt git tag

abbr --add v vim

abbr --add e exit

abbr --add eza eza --long

abbr --add c clear

#========
# zoxide
#========

zoxide init fish | source
