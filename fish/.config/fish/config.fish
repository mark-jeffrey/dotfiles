if status is-interactive
    # Commands to run in interactive sessions can go here
end

# PATH
fish_add_path -p /usr/libexec/uutils-coreutils
fish_add_path -a /home/mark/.cargo/bin
fish_add_path -a /home/mark/.local/bin

# INIT
zoxide init fish | source

# ALIASES
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

alias r="radian"
alias notes="cd /home/mark/notes && zk edit -i"

# PROMPT
starship init fish | source
