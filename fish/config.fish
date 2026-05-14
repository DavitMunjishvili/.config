set -U EDITOR nvim

set -gx HOMEBREW_NO_AUTO_UPDATE 1

if status is-interactive
    # Commands to run in interactive sessions can go here
end
export PATH="$HOME/.local/bin:$PATH"
