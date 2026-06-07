if status is-interactive
# Commands to run in interactive sessions can go here
    starship init fish | source
end

# Hermes Agent — ensure ~/.local/bin is on PATH
fish_add_path "$HOME/.local/bin"
