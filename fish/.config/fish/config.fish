if status is-interactive
# Commands to run in interactive sessions can go here
    starship init fish | source
end

# Hermes Agent — ensure ~/.local/bin is on PATH
fish_add_path "$HOME/.local/bin"

# dotfiles bare repo alias
abbr -a dotfiles git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME
