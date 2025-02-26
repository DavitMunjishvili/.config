set -U EDITOR nvim

if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_config prompt choose arrow

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
