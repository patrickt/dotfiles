set PATH /usr/local/opt/mysql@5.7/bin /Users/patrickt/.npm-global/bin /Users/patrickt/.local/bin /Library/TeX/texbin /usr/local/opt/avr-gcc@7/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /usr/X11/bin /Users/patrickt/go/bin

set EDITOR /Applications/Emacs.app/Contents/MacOS/Emacs

set SAVED_CMD "echo 'No last command to run.'"

function :r
    set PREV_CMD (history | head -1)
    if test "$PREV_CMD" = ":r"
        eval "$SAVED_CMD"
    else
        eval "$PREV_CMD"
        set SAVED_CMD "$PREV_CMD"
    end
end

function loadghc
    source ~/.ghcup/env
end

alias g "git"
alias s "stack"
alias o "open"
alias c "cabal"
alias cat "bat -p"
alias ts "tree-sitter"

# status --is-interactive; and . (rbenv init -|psub)
# source "/Users/patrickt/.config/fish/private.fish"
# source ~/.cargo/env
# loadghc
# source "$HOME/.ghcup/env"

function vterm_printf;
    if [ -n "$TMUX" ]
        # tell tmux to pass the escape sequences through
        # (Source: http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/1324)
        printf "\ePtmux;\e\e]%s\007\e\\" "$argv"
    else if string match -q -- "screen*" "$TERM"
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$argv"
    else
        printf "\e]%s\e\\" "$argv"
    end
end

eval (direnv hook fish)

function vterm_prompt_end;
    vterm_printf '51;A'(whoami)'@'(hostname)':'(pwd)
end
functions -c fish_prompt vterm_old_fish_prompt

function fish_prompt --description 'Write out the prompt; do not replace this. Instead, put this at end of your file.'
    # Remove the trailing newline from the original prompt. This is done
    # using the string builtin from fish, but to make sure any escape codes
    # are correctly interpreted, use %b for printf.
    printf "%b" (string join "\n" (vterm_old_fish_prompt))
    vterm_prompt_end
end
