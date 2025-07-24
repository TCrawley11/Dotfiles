if status is-interactive
    set -gx CRYPTOGRAPHY_OPENSSL_NO_LEGACY 1
    # Commands to run in interactive sessions can go here
end

# fastfetch on status
fastfetch

# global npm setup
export PATH="$HOME/.npm-global/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/tygo/google-cloud-sdk/path.fish.inc' ]
    . '/home/tygo/google-cloud-sdk/path.fish.inc'
end

# starship setup
starship init fish | source

fish_add_path /home/tygo/.spicetify

function fish_greeting
    echo "Hello, Tygo."
    fortune -a
end
